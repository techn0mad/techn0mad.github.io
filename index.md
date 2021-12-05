---
layout: base.liquid
pageTitle: Techn0mad
---

{% for post in collections.posts reversed %}
### [{{ post.data.pageTitle }}]({{ post.url }})
*{{ post.date | date: "%Y-%m-%d" }}*

{% endfor %}
