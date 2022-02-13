---
layout: post
title: "What, Me Worry?"
tags: internet network computer security
---

# A Plague of Ransomware

![Alfred E. Neuman](/assets/alfred_e.jpg){:width="50%" height="50%"}

After reading and hearing more and more of what appears to be a 
[burgeoning state-sponsored malware-industrial complex](https://www.nbcnews.com/tech/security/kremlin-provides-safe-harbor-ransomware-rcna699)
growing in Russia, and seeing the following tweet from computer security guru Ralph Langner, whom I first heard of in 
Nicole Perlroth's very frightening book
["This Is How They Tell Me the World Ends: The Cyberweapons Arms Race"](https://www.barnesandnoble.com/w/this-is-how-they-tell-me-the-world-ends-nicole-perlroth/1136275598), I have to comment:

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">If you haven&#39;t already exercised emergency restores from scratch, with the drill sgt at the stop watch, don&#39;t whine about ransomware</p>&mdash; Ralph Langner (@langnergroup) <a href="https://twitter.com/langnergroup/status/1399270431991939074?ref_src=twsrc%5Etfw">May 31, 2021</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>  
## Computer Security Basics

1. Regularly Update Router Firmware
2. Setup Firewall
3. Regularly Update OS
4. Setup periodic on-site and off-site backups
5. Regularly test restores from backups

I'm fond of pointing out that I'm far more concerned about restores than backups, as anyone who has struggled and 
failed to perform a restore from a so-called backup can attest. However, when it comes to ransomware, particularly 
as currently practiced, this is definitely not sufficient.

## Computer Security (Apparently) Not-so-Basics

Unfortunately these Eastern "businessmen" are no longer content to simply encrypt your files and demand a ransom
to decrypt them. They are now exfiltrating them to the cloud and threatening to publish them if you don't pay up.
Depending on your line of business, this prospect might be anything from mildly annoying to apocalyptic. 
Based on many of the tales of woe I am hearing, it is surprising to find out how many organizations have 
not put into practice two fundamental rules of data security:

1. Encrypt data at rest
2. Encrypt data in transit

The gist of this is that if you have backups, and Ivan the terrible invades your network via a dancing cat video, 
you can restore back to your last backup (right?). If he steals your customer data and threatens to publish it,
but it is already encrypted, then you have the last laugh. It is worthless to him and not of interest to anyone who
doesn't already have the time and resources (i.e. three-letter agencies) to crack your encryption.

The ransomware saga continues, and I continue to be amazed at how many organizations don't seem to follow either
of these recommended practices. One can't help but to start imagining that "computer security" as practiced 
(and funded) at many organizations is kind of like having a nice classic painting on your wall; 
you'd really like to have one, but you don't actually want to pay for it.

