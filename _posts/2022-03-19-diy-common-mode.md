---
layout: post
title: "DIY Common Mode Choke"
tags: rfi emi antenna noise
---

![Balun Designs Choke Impedance](https://cdn3.bigcommerce.com/s-4q7cv/product_images/uploaded_images/59f4efa62cbf4-1116d-choking.jpg)
*<center>Common-mode choke impedance graph</center>*

For a long time, I have been 
[advocating]({% post_url 2005-09-15-antenna-guru %})
the relatively simple practice of using common mode chokes in antenna 
feedlines to reduce or eliminate the unwanted coupling of noise sources 
in the shack to receive antennas outside, or transmit energy from outdoor 
antennas to devices in the shack.

I have been using some very good quality chokes from 
[Balun Designs](https://www.balundesigns.com) recently,
but they are designed for transmit powers up to several kilowatts, and for
some receive-only cases (like my 
[Beverage antennas](https://en.wikipedia.org/wiki/Beverage_antenna)),
this is clearly gross overkill.

![Balun Designs Common-Mode Choke](https://cdn11.bigcommerce.com/s-4q7cv/images/stencil/1280x1280/products/216/355/1116di__51885.1456841505.JPG)

The well-regarded guru Tom Rauch, W8JI has some 
[comments](https://www.w8ji.com/core_selection.htm) regarding the construction
of common-mode chokes and matching transformers for Beverage antennas, and 
I've started to construct a receive-only common-mode choke based on his advice.

I am using a binocular core with
[type 73 ferrite material](https://www.fair-rite.com/73-material-data-sheet/),
as W8JI recommends and since it seems to be getting more and more difficult 
and expensive to source specialist types of wire (i.e. Kynar insulated),
I decided to just use some wire from discarded Ethernet cables, which is 
roughly the correct size, and has the added advantage of being pre-twisted 
which is needed for a bifilar transformer like this.

![DIY Choke](/assets/img/W8JI_common_mode.jpg)

I am not certain the inverse phasing he references is needed in my case,
but the much lower cost of these transformers will allow me to put one
on every feedline, and perhaps even at the feedpoint of some of the antennas
which should greatly increase the common-mode rejection.
