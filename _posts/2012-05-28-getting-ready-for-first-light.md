---
author: gadallah
comments: true
date: 2012-05-28 02:08:39+00:00
layout: post
published: true
slug: getting-ready-for-first-light
title: Getting ready for "First Light"
wordpress_id: 638
categories:
- Ham Radio
- HPSDR
- SDR
tags:
- hamradio sdr
---

When a telescope is commissioned, the first time light from the stars enters the instrument is called "first light". While ham radios aren't telescopes, I'm getting quite excited at the notion of connecting an antenna to my HPSDR setup for the first time this long weekend.

Inexplicably, I've been sitting on the HPSDR hardware for well over a year now, and I finally got around to finishing the power supply (LPU) to run the whole thing. I've been trying to contain myself and take things one step at a time. I've gotten to the point where the LPU and Atlas are checking out okay. I'm glad I checked carefully; I found two resistors swapped on the LPU. I was quite impressed that I was able to remove and swap these 0603 SMT parts with nothing more than a pair of reading glasses to assist.

![LPU/Atlas bus check]({{ "/assets/img_20120527_083513.jpg" | absolute_url }})

After a few hours of struggling with dueling DHCP servers, reading and re-reading the manuals, consulting the HPSDR mailing list archives, learning about board position and JTAG programming, and flashing the boards with the appropriate versions of their respective FPGA firmwares, I am at the point where the system runs well, for about 5 seconds. According to the LPU errata this is a problem with the SMT fuses on the LPU, so presumably I am only one hardware mod away from first light.

![Mercury and Excalibur]({{ "/assets/img_20120527_084252.jpg" | absolute_url }})
