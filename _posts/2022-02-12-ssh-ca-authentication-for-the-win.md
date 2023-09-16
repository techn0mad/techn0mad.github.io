---
layout: post
title: "Password-less SSH with a Certificate Authority and OpenSSH"
tags: openssh tls certificates security authentication authorization
---

![OpenSSH logo]({{ site.url }}{{ site.baseurl }}/assets/images/openssh.gif "OpenSSH logo")

An advantage of key-based access to servers with SSH is to allow
password-less SSH logins. However, these kinds of arrangements have
been very difficult to manage at any realistic scale, because in order
for each of _N_ SSH clients, to access _M_ SSH servers, each of the
servers had to have an SSH public key from each of the SSH clients
installed, yielding an order _N * M_ key management problem. In
typical scenarios, this could probably start out at something like
10,000 client-host key combinations. Clearly, this is not practical or
manageable.

A little-known capability of the [OpenSSH](https://www.openssh.com/)
server in common use is that it can be configured to allow SSH server
and clients to trust each other via the use of server and client SSH
host keys that are signed by a mutually trusted [certificate authority
(CA)](https://en.wikipedia.org/wiki/Certificate_authority).  Once this
trust is established, no keys or passwords need to be exchanged
between clients and servers, and password-less logins are enabled.

[Hashicorp Vault](https://www.vaultproject.io) provides several
methods to manage SSH keys, and one of the simplest and most direct is
the [SSH CA (certification authority)
mode](https://www.vaultproject.io/docs/secrets/ssh/signed-ssh-certificates.html):

> A sshd server may be
> [configured](http://cvsweb.openbsd.org/cgi-bin/cvsweb/~checkout~/src/usr.bin/ssh/PROTOCOL.certkeys?rev=1.15)
> to allow authentication via certified keys, by extending the existing
> `~/.ssh/authorized_keys` mechanism to allow specification of
> certification authority keys in addition to raw user keys. The SSH
> client will support automatic verification of acceptance of certified
> host keys, by adding a similar ability to specify CA keys in
> `~/.ssh/known_hosts`.

In this mode, Vault is
[configured](https://www.vaultproject.io/docs/secrets/ssh/signed-ssh-certificates)
to act as a [certificate authority
(CA)](https://en.wikipedia.org/wiki/Certificate_authority) able to
issue certificates that can then be used to do the following:

- Provide CA certificates to associate SSH servers and clients with the CA
- Authenticate known SSH servers
- Authenticate known SSH public keys

One significant advantage of this approach is the transitive trust it
provides: This allows a SSH server to be trusted by a SSH client,
without having to directly provide any information about the SSH
server to the SSH client. Since an SSH server has its SSH host key
signed by the CA (Vault), a SSH client that can access the CA can
use the signature to validate the authenticity of the SSH server.

Since a SSH client also has its SSH public key similarly signed by the
CA, a SSH server can similarly validate the authenticity of a SSH
client at connection time without having to receive any additional
information about the SSH client, because it can determine that it's
own SSH host key and the client's SSH public key are both valid and
signed by the same CA.

![SSH CA Authentication]({{ site.url }}{{ site.baseurl }}/assets/images/vault-ssh-ca.png "SSH Certificate Based Authentication")

#### Provisioning Operations

See numbered captions in the headings below

#### Runtime Operations

Upon starting a session with a SSH server, the SSH client will:

- a.) Receive the SSH server host key
- b.) Check to see if the server host key matches the entry in its
  `~/.ssh/known_hosts` file
- c.) Present its signed SSH client key to the server

The server will then:

- d.) Check to see if the presented SSH client key has been signed by
  the client CA

## Prerequisites

In order to interact with the Vault server (at
https://vault.mydomain.org:8200 for this example) from both the SSH
host and the SSH client machines, you need to either use the Vault CLI,
or Curl.

### Vault Installation

Vault is simple to install, it comes as a single ZIP file that unpacks
into a standalone executable (named "vault") that can be placed
somewhere in your `$PATH` (`/usr/local/bin` is recommended).

Note that you need to pick the correct version for your platform:

| Package | Platform |
| ------- | -------- |
| `vault_*_darwin_amd64.zip` | Mac OS X 64-bit |
| `vault_*_linux_amd64.zip` | Linux x86_64 64-bit |
| `vault_*_linux_arm.zip` | Linux ARM 32-bit |
| `vault_*_linux_arm64.zip` | Linux ARM 64-bit |
| `vault_*_openbsd_amd64.zip` | OpenBSD 64-bit |
| `vault_*_windows_amd64.zip` | Windows 8 and later |

### curl and jq

[curl](https://curl.se/) is installed by default on most systems, or
can be installed using the native package manager (i.e. apt-get, yum,
etc.).

[jq](https://stedolan.github.io/jq/) is a helper utility for managing
JSON output from curl, it can also usually be installed using the
native package manager, but it can also be obtained from its home
page.

### Authentication and Authorization

In order to interact with the Vault server, you need to identify
yourself to it using your credentials. All of the interactions below
presume that you have already authenticated and authorized yourself
with the Vault server as follows:

#### Using Vault CLI

```
$ export VAULT_ADDR="https://vault.mydomain.org:8200"
$ export VAULT_TLS_SERVER_NAME="vault.mydomain.org"
$ vault login -method=userpass username=<username> # Token will be in ~/.vault-token
Password (will be hidden):
$ export VAULT_TOKEN=$(cat ~/.vault-token)`
```

#### Using Curl

```
$ export VAULT_ADDR="https://vault.mydomain.org:8200"
$ export VAULT_TLS_SERVER_NAME="vault.mydomain.org"
$ curl $VAULT_ADDR/v1/auth/userpass/login/<username> \
> -d '{ "password": "<password>" }' | \
> jq '.auth.client_token' | \
> sed 's/\"//g'` > ~/.vault-token
$ export VAULT_TOKEN=$(cat ~/.vault-token)`
```

## Vault Endpoint Configuration

Per Hashicorp's recommendations, we implement two SSH secrets engine
endpoints in Vault, one at the path `HOST_CA_PATH` for configuring SSH
servers, and one at the path `CLIENT_CA_PATH` for configuring SSH
clients. These endpoints are configured by a Vault administrator as
follows, after authentication as described in "Authentication and
Authorization" above has occurred:

#### Client CA Endpoint

```
@vault:$ vault secrets enable -path=${CLIENT_CA_PATH} ssh
@vault:$ vault write ${CLIENT_CA_PATH}/config/ca generate_signing_key=true
@vault:$ vault write ${CLIENT_CA_PATH}/roles/clientrole - << "EoH"
{
  "allow_user_certificates": true,
  "allowed_users": "*",
  "default_extensions": [
    {
      "permit-pty": ""
    }
  ],
  "key_type": "ca",
  "default_user": "admin",
  "ttl": "30m0s"
}
EoH
```

#### Server CA Endpoint

```
@vault:$ vault secrets enable -path=${HOST_CA_PATH} ssh
@vault:$ vault write ${HOST_CA_PATH}/config/ca generate_signing_key=true
@vault:$ vault secrets tune -max-lease-ttl=87600h ${HOST_CA_PATH}
@vault:$ vault write ${HOST_CA_PATH}/roles/hostrole \
> key_type=ca \
> ttl=87600h \
> allow_host_certificates=true \
> allowed_domains="mydomain.org,myotherdomain.io" \
> allow_subdomains=true
```

Note that the primary security in this configuration is provided by
configuring appropriate access policies for the SSH host and client CA
endpoints using Vault policy settings:

- Administrators policy (able to configure SSH servers and SSH clients)
- Read/Write access to client endpoint public key (`${CLIENT_CA_PATH}`)
- Read/Write access to host endpoint signer (`${HOST_CA_PATH}`)
- Developers policy (able to configure SSH clients)
- Read access to host endpoint public key (`${HOST_CA_PATH}`)
- Write access to client endpoint signer (`${CLIENT_CA_PATH}`)

Configuration of SSH hosts and clients for certificate based
authorization is accomplished by reading and writing to various
endpoints on these Vault paths.

## SSH Server Configuration

### Steps

Read `${CLIENT_CA_PATH}/config/ca:public_key` to obtain SSH client
certificate public key

Write to `${HOST_CA_PATH}/sign/hostrole:signed_key` to sign SSH server
host key with host certificate

The steps below assume that authentication as described in
"Authentication and Authorization" above has occurred, and a valid
token is stored in the `VAULT_TOKEN` environment variable.

### Configure the Client CA Certificate (3)

Each SSH server needs a copy of the client CA certificate from Vault,
so that they can validate client public SSH keys that are signed with
that certificate:

#### Using Vault CLI

```
@server:$ vault read -field=public_key ${CLIENT_CA_PATH}/config/ca > \
> /etc/ssh/trusted-user-ca-keys.pem
@server:$ echo "TrustedUserCAKeys /etc/ssh/trusted-user-ca-keys.pem" >> \
> /etc/ssh/sshd_config
```

#### Using Curl

```
@server:$ curl -s -X GET -H  "X-Vault-Token:${VAULT_TOKEN}" \
> ${VAULT_ADDR}/v1/${CLIENT_CA_PATH}/config/ca | jq '.data.public_key' | \
> sed 's/\"//g' > /etc/ssh/trusted-user-ca-keys.pem
@server:$ echo "TrustedUserCAKeys /etc/ssh/trusted-user-ca-keys.pem" >> \
> /etc/ssh/sshd_config
```

### Sign the SSH Server Host Key (4)

The SSH server host key for each SSH server also needs to be signed
with the Vault host CA certificate:

#### Using Vault CLI

```
@server:$ cat /etc/ssh/ssh_host_rsa_key.pub | \
> vault write \
> -field=signed_key ${HOST_CA_PATH}/sign/hostrole \
> public_key=- cert_type=host > /etc/ssh/ssh_host_rsa_key-cert.pub
@server:$ chmod 0640 /etc/ssh/ssh_host_rsa_key-cert.pub
@server:$ echo "HostKey /etc/ssh/ssh_host_rsa_key" >> /etc/ssh/sshd_config
@server:$ echo "HostCertificate /etc/ssh/ssh_host_rsa_key-cert.pub" >> \
> /etc/ssh/sshd_config
@server:# service ssh restart
```

#### Using Curl

```
@server:$ echo "{ \"public_key\": \"$(cat /etc/ssh/ssh_host_rsa_key.pub)\", \
> "cert_type": "host" }" > /tmp/ca_opts.json
@server:$ curl -s \
> --header "X-Vault-Token:${VAULT_TOKEN}" --request POST \
> --data @/tmp/ca_opts.json > ${VAULT_ADDR}/v1/${HOST_CA_PATH}/sign/hostrole | \
> jq '.data.signed_key' | \
> sed 's/\"//g' > /etc/ssh/ssh_host_rsa_key-cert.pub
@server:$ chmod 0640 /etc/ssh/ssh_host_rsa_key-cert.pub
@server:$ echo "HostKey /etc/ssh/ssh_host_rsa_key" >> /etc/ssh/sshd_config
@server:$ echo "HostCertificate /etc/ssh/ssh_host_rsa_key-cert.pub" >> \
> /etc/ssh/sshd_config
@server:$ rm -f /tmp/ca_opts.json
@server:# service ssh restart
```

## SSH Client Configuration

### Steps

Read from `${HOST_CA_PATH}/config/ca:public_key` to obtain SSH server
certificate public key

Write to `${CLIENT_CA_PATH}/sign/clientrole:signed_key` to sign SSH
client key with client certificate

The steps below assume that authentication as described in
"Authentication and Authorization" above has occurred, and a valid
token is stored in the `VAULT_TOKEN` environment variable.

### Configure the Server CA Certificate (5)

Each SSH client needs a copy of the server CA certificate from Vault,
so that they can validate server public SSH keys that are signed with
that certificate:

```
@client:$ export VAULT_TOKEN=$(cat ~/.vault-token)`
@client:$ VALID_DOMAINS="*,mydomain.org,myotherdomain.io"
@client:$ SSH_CA_KEY=$(vault read -field=public_key ${HOST_CA_PATH}/config/ca)
@client:$ echo "@cert-authority ${VALID_DOMAINS} ${SSH_CA_KEY}" >> \
> ~/.ssh/known_hosts
```

### Sign the SSH Client Key (6)

The SSH client key for each SSH client also needs to be signed
with the Vault client CA certificate:

```
@client:$ VALID_PRINCIPALS="admin,myusername"
@client:$ cat ~/.ssh/id_rsa.pub | vault write -field=signed_key \
> ${CLIENT_CA_PATH}/sign/clientrole  valid_principals=${VALID_PRINCIPALS} \
> public_key=- > ~/.ssh/id_rsa-cert.pub
```
