---
title: "Steps Towards Self-hosting"
tags: internet privacy
---

![Self-Hosting]({{ site.url }}{{ site.baseurl }}/assets/images/HomeLab.jpeg "Home Lab (not mine)")

It's been a while since I posted here; it's been a very busy year.

However, I had been writing about a theme of
["self-hosting"](https://selfhosted-survey-2024.deployn.de/), 
providing computer and Internet services for yourself, rather than
relying on the ["FAANG"](https://en.wikipedia.org/wiki/Big_Tech)
to do it for you.

This blog has been an example of dependence on the FAANG, being
hosted on [GitHub Pages](https://pages.github.com/) (which belongs
to Microsoft). While I have no complaints about the service that
they provided, I felt a certain unease about using it for several
reasons, including the following:

- I was relying on services and functions that could change at any
  time, with or without notice, and without consideration of what 
  inconvenince any such change might impose on users such as myself
  (but of course I could ask for my money back).
- By placing my data on other's computers, it is obvious that there
  are privacy implications. For a blog such as this, these seem 
  negligible, since the point of a blog is to publish after all.
  But for other applications, these concerns are quite real, and 
  while they can be mitigated by using techniques such as end-to-end
  encryption, its implementation is often non-trivial and risky.
- By making use of such a platform, I am implicitly endorsing or 
  promoting it, when this is not my intent, particularly when I 
  frequently object to technical methods and approaches used by it.
- As the FAANG companies become larger and larger and wealthier,
  their executives become more and more powerful and politically
  influential, in areas that have nothing to do with their core
  business. I have no objection to anyone engaging in politics; 
  I only object to involuntarily funding such activities.

After several weeks of tinkering in the margins, I have finally 
gotten something stood up that moves this blog considerably closer
to being self-hosted. While the "source code" for the blog
remains in a git repo hosted on GitHub, the creation and hosting
of the web site is now performed on my own hardware, on my own
network at home.

Of course such an implementation is less reliable and resilient
than something in the public cloud, but for my purposes, it is 
more than dependable enough for my purposes and audience.

Another valuable result of going through this exercise is to push
back against the public cloud marketing juggernaut, that constantly
argues that there is no choice to go to the cloud. Critics of this
frequently [point out](https://world.hey.com/dhh/why-we-re-leaving-the-cloud-654b47e0)
that before the advent of the public cloud,
people built their systems, networks, and services using their
own hardware and open-source software; the very same tools that
were used to implement the earliest versions of the public cloud.
It seems odd then to receive suggestions that it is no longer
possible to do the very things that everyone used to do.

___

{% if page.comments %}
<div id="disqus_thread"></div>
<script>
    /**
     *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION
     *  BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
     *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT:
     *  https://disqus.com/admin/universalcode/#configuration-variables
     */
    /*
    var disqus_config = function () {
        // Replace PAGE_URL with your page's canonical URL variable
        this.page.url = {{ post.id | absolute_url | xml_escape }};
        // Replace PAGE_IDENTIFIER with your page's unique identifier variable
        this.page.identifier = {{ post.id }};
    };
    */
    (function() {  // DON'T EDIT BELOW THIS LINE
        var d = document, s = d.createElement('script');

        s.src = 'https://techn0mad.disqus.com/embed.js';

        s.setAttribute('data-timestamp', +new Date());
        (d.head || d.body).appendChild(s);
    })();
</script>

<noscript>
Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a>
</noscript>
{% endif %}

