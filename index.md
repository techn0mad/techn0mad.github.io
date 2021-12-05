---
layout: layout.liquid
pageTitle: Techn0mad
---

Hi Mom!

{% for post in collections.posts %}
## [{{ post.data.pageTitle }}]({{ post.url }})
*{{ post.date | date: "%Y-%m-%d" }}*

{% endfor %}
