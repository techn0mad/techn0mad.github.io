---
title: "A Swing and a Miss"
---

After a long hiatus, I wanted to look into hosting a 
[Wiki](https://web.archive.org/web/20020430181259/http://c2.com/cgi/wiki?WikiDesignPrinciples). 
I ended up looking at some pages like [this](https://en.wikipedia.org/wiki/List_of_wiki_software).

I wanted to meet the following requirements:

- Data stored in the cloud, under version control (git)
- Handles [Markdown formatting](https://daringfireball.net/projects/markdown/), as well as code 

I came across [TiddlyWiki](https://tiddlywiki.com/), which is an amazing invention for the following reasons:

- The wiki is written in [Javascript](https://www.javascript.com/), and since almost all modern web browsers are effectively just [Javascript VMs](https://softwareengineeringdaily.com/2018/10/03/javascript-and-the-inner-workings-of-your-browser/) these days, there is no need for any intermediate processing or interpretation
- The wiki is a [Quine](https://en.wikipedia.org/wiki/Quine_(computing)), which is an obscure computer science concept, whereby running a piece of code produces its own code as output
- Therefore, deploying the wiki is as simple as loading the (single) Javascript file into a browser

I was able to get it running hosted on [GitHub Pages](https://pages.github.com/), but I found a few obstacles:

- There is no practical security available. The Wiki can be marked as read-only for everyone, or open for everyone.
- As the Wiki grows, so does the Javascript file that contains it. This results in managing a large git blob, that gets slower and slower as more commits are made to it.
- It does not really support Markdown formatted posts directly, and the Markdown plugin did not seem to be entirely compliant
