---
layout: single
title: "Blog Fatigue"
tags: blog jekyll github ruby eleventy
---

![Eleventy logo](/assets/img/11ty.png "Eleventy logo")

I'm a bit disappointed to note that I've spent far too many 
hours in the past six months trying to come up with a new way of blogging,
to replace my existing [GitHub/Jekyll](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll) mechanism.

At work, I managed to get a blog running with 
[Eleventy](,https://www.11ty.dev/) so I assumed it would
be simple to just reuse this for my personal blog here.

After spending another 5-10 hours on that exercise this weekend,
I rolled back to my old
[Jekyll](https://jekyllrb.com/) based blog with a sense of resignation.

## Requirements

I'll repeat what I'm trying to do here:

1. **Simplicity:** One should not have to know a dozen or more tools and
framworks in a
["stack"](https://tutorials.yax.com/articles/the-yax-way/index.html)
to deploy the blog.

2. **Standalone:** The blog should be self-contained and not rely on any
third-party (dynamic) services.

3. **Static:** The blog content should be completely derived from the contents
of its git repo (with the possible exception of comments).

4. **Understandable:** It should be clear how the site is finally rendered.

5. **GitHub hosting:** Let [GitHub](https://docs.github.com/en/pages) handle
backup, availability, monitoring, etc.

6. **[Markdown](https://daringfireball.net/projects/markdown/) formatting:**
It is hard enough to write in the first place without having to worry about
some peculiar markup system.

7. **Simple management of code snippets and graphics:** This blog is primarily
a place to store my geeky, technology-based ramblings.

8. **Commenting:** The ability to allow readers to respond would make the blog
more dynamic and indicate whether the contents were proving to be of any value
to anyone.

9. **Workflow:** Where possible, follow the
[Jamstack](https://jamstack.wtf/#workflow) workflow for development and
deployment.

10. **Local Implementation:** It should be possible to run and view the site
locally.

## Commentary

After understanding that the [Jamstack](https://jamstack.org/) approach
represents the future, and spending way too many of the aforementioned
hours trying to pick a 
[static site generator](https://en.wikipedia.org/wiki/Web_template_system#Static_site_generators)
that follows that approach, I've concluded that since
[Javascript](https://www.javascript.com/) is the language of the web, and
[node.js](https://nodejs.org/en/) is the Javascript interpreter of choice,
I'm inclined to make the following observation:

If you are **not** a web developer,
then [choose a SSG](https://jamstack.org/generators/)
that does **not** use node.js, React, next.js or any other popular
Javascript development framework. A few alternatives that might fit
(along with their implementation language) are:

- [Jekyll](https://jekyllrb.com/) (Ruby)
- [Pelican](http://blog.getpelican.com/) (Python)
- [Hugo](https://gohugo.io/) (Go)
- [Zola](https://www.getzola.org/) (Rust)
- [Expose](https://github.com/Jack000/Expose) (Bash)
- [Publish](https://github.com/JohnSundell/Publish) (Swift)
- [Coleslaw](https://github.com/kingcons/coleslaw) (Lisp)

Everything that I have seen seems to imply that web developers
[inexorably add more and more bells and whistles](https://uxdesign.cc/putting-devs-before-users-how-frameworks-destroyed-web-performance-6b2c2a506aab)
until the resulting implementation is no longer simple or understandable,
at least not to those who are not also excitable professional web developers.
I also suspect that much of present-day web development suffers from 
["shiny thing" syndrome](https://betterprogramming.pub/the-problem-with-too-many-js-frameworks-11531ac8b896),
where people tend to adopt things primarily because they are new.

While I'm open to learning about web development, I have many other
responsibilities and desires, and from what I can see, learning it has
slowly become an impractical and unfeasible heavy lift that I can't afford at
the moment.
