---
layout: post
title: "Another New Blog?"
tags: blog jamstack javascript
---


Here we are in another new year with not enough blogging going on, and
I am somewhat dismayed to find that the platform that this blog is
based on ([Jekyll](https://jekyllrb.com/)) is now apparently in
[trouble](https://www.theregister.com/2021/09/14/future_of_jekyll_project_engine/).
The primary developer and maintainer passed away and people are now
wondering how active the ecosystem will remain going forward.

I did some quick research to find out that in the bubbling, boiling
churn that is web development technology, some interesting new players
have emerged, one called [next.js](https://nextjs.org/) in particular.
It is interesting in that it is based on
[Javascript](https://www.javascript.com/), which seems to be _the_
programming language for the web these days. But, enough about the
details for now. The focus of this post is to capture some basic
requirements for a new blog implementation

## Requirements

- Simplicity: One should not have to know a dozen or more tools and
  framworks in a
  ["stack"](https://tutorials.yax.com/articles/the-yax-way/index.html)
  to deploy the blog.
- Standalone: The blog should be self-contained and not rely on any
  third-party (dynamic) services.
- Static: The blog content should be completely derived from the
  contents of it's git repo (with the possible exception of comments).
- Understandable: It should be clear how the site is finally rendered.
- GitHub hosting: Let GitHub handle backup, availability, monitoring,
  etc.
- Markdown formatting: It's hard enough to write in the first place
  without having to worry about some peculiar markup system.
- Simple management of code snippets and graphics: This blog is
  primarily a place to store my technology-based ramblings.
- Commenting: The ability to allow readers to respond would make the
  blog more dynamic and indicate whether the contents were proving to
  be of any value to anyone.
- Workflow: Where possible, follow the
  [Jamstack](https://jamstack.wtf/#workflow) workflow for development
  and deployment.

