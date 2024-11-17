---
title: "Test Post"
tags: blog markdown code
---

# Test Post

## List

- Red
- Green
- Blue

## Numbered List

1. First
2. Second
3. Third

## Code

```c
#include <stdio.h>

void main(int argc, char **argv)
{
  printf("Hello, world!\n");
}
```

## Links

Search using [Google](https://www.google.com)

## Tables

| Column A | Column B |
| --- | --- |
| Hot and Sour Soup | General Tso's Chicken |
| Potstickers | Szechuan Beef |

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
