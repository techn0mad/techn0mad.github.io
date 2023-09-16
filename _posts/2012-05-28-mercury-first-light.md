---
author: gadallah
comments: true
date: 2012-05-28 05:06:52+00:00
layout: post
published: true
slug: mercury-first-light
title: Mercury First Light
wordpress_id: 688
tags: hamradio hpsdr sdr ghpsdr
---

![Mercury on 75M]({{ "{{ site.url }}{{ site.baseurl }}/assets/mercury0012.png)

At long last (2 years?) I finally got my HPSDR Mercury SDR receiver
running. After making a final mod to the LPU power supply, the
configuration is now running nicely.

I find the spectrum/panadapter width a bit cramped in the ghpsdr
software compared to the QS1R/SDRMAX combination. I've tried setting
it to 192 kHz wide, but I think my decrepit old CPU can't handle
it. Running at 96 kHz, the CPU usage is about 94%.

Now we are off to characterize the Excalibur TCXO stability and figure
out how to implement multiple receivers using the same receiver card.
