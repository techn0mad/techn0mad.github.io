---
title: "Disrupting AI's Air Supply (and Improving Cybersecurity)"
tags: oligarchy bigtech democracy cybercrime ai
---

{:refdef: style="text-align: center;"}
![HAL 9000 Console]({{ site.url }}{{ site.baseurl }}/assets/images/HAL9000.png)
{: refdef}


For many years, I've lamented the state of Internet security. One
aspect of this is that I've frequently wondered why people feel
compelled to enter accurate real-world data about themselves into the
cyber-world (i.e. the Internet), thus making the data found there more
and more valuable to cybercriminals and oligarchs.

Now, we are facing a looming threat from AI at a much larger scale,
but based on the same information that we freely share on the
Internet. The only reason AI is looming in all of our lives is that we
have collectively and graciously provided it (sometimes accidentally)
with a huge corpus of relatively good data to work with (often at very
little or no cost). There was a time when the rallying cry on the
Internet was: _Information wants to be free_. The current day version
reads more like _Capital wants information to be free_.

I would never suggest that people should provide false data about
themselves to the authorities (i.e. organizations that you are legally
bound to tell the truth to) such as the tax department, the courts,
etc. But for everyone one else, especially the oligarchs and
the cybercriminals, why on earth would you feel compelled to give them
real, useful data to work with?

<!---
I suspect a lot of this also has to do with the open source movement:
It is a huge endeavour that has provided enormous amounts of value,
and which has become a key resource for the oligarch's AI information
miners, and countless other members of the tech community. The horse
may have already left the barn, but it begs the question: Could the
open source movement still function if the distribution model became a
"pull" (i.e. based on a request from some person) based model rather
than the existing "push" based model where everything is just dropped
at some public location on the Internet?  This way, if a person asked
for the source code for some critical open-source project, access
could be granted, whereas for some AI agent (or any of the other
rogue's gallery of bots, scanners, scrapers that are roaming
cyberspace), access could be denied.  To be sure, said person could
then just turn around and feed the information into a hungry AI, but
at least the speed of the process would be greatly slowed.
--->

I don't want to come across as being violently anti-AI here. AI has
been here for some time, but in much smaller and more specialized
areas (e.g. reading X-rays and spotting breast cancer better than
humans) where it has frequently proven to be invaluable.  What I am
violently against is the intent of the current push to use general
purpose AI to replace the livelihoods of huge numbers of humans and to
put the resultant savings into the pockets of a few oligarchs. I can
only imagine that this will just accelerate the arrival of the point
at which the pitchforks and torches come out.

I have two humble suggestions:

1. At a personal level, take steps to _poison the well_ with regard to
   your personal information, unless you are legally bound to provide
   accurate real-world data (i.e. renewing your driver's license or
   filing your tax return). Use a bogus date of birth. Use an old or
   fictional physical address. Interchange your first and middle
   names. Just imagine if a cybercriminal searched the Internet for
   your information. If they came up with one name, one date of birth,
   one address; bingo, they have you! If they came up with a dozen
   values for each, how could they tell which were real?

2. At a government/regulatory level, we should pass laws and
   regulations that state that anyone operating AI should be able to
   demonstrate at any time that they had legal access to the data used
   to train said AI.

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
