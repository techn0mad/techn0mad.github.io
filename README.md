# Techn0mad Blog

The latest incarnation of this blog, originally created on Wordpress, then
Jekyll, and now moving to Eleventy

## Directory Structure

```
.
├── 404.html
├── CNAME
├── FILES.txt
├── LICENSE
├── NOTES.md
├── README.md
├── TODO.md
├── _data
│   └── site.json
├── _includes
│   ├── blogpost.njk
│   ├── disqus.html
│   ├── footer.njk
│   ├── github.njk
│   ├── head.njk
│   ├── header.njk
│   ├── homepage.njk
│   └── posts.njk
├── about.md
├── assets
│   └── img
├── drafts
│   └── drafts.json
├── favicon.ico
├── index.md
├── package-lock.json
├── package.json
├── posts
│   └── posts.json
└── tags.md
```

## Installing Eleventy (on Mac)

```
$ brew install npm
$ npm init -y
$ npm install --save-dev @11ty/eleventy
```

## Running Eleventy locally

```
$ npx @11ty/eleventy --serve
```
