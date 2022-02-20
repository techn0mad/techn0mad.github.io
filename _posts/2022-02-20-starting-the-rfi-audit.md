---
layout: post
title: "Tracking the Elusive SMPS"
tags: kiwisdr snr rfi emi power electricity
---

![AC On](/assets/img/Site-2022-02-19-10.04.10.png "Waterfall with AC on")

*<center>KiwiSDR waterfall with normal AC power</center>*

![AC Off](/assets/img/Site-2022-02-19-11.35.00.png "Waterfall with AC off")

*<center>KiwiSDR waterfall with (most) AC power off</center>*

In starting the long, slow climb to the heights of the [SNR
mountain](http://rx.linkfanel.net/snr.html), one of the key activities
is identifying and mitigating "self-noise", or noise coming from
devices in your own shack/household/installation.

In my case, this is a difficult proposition, since other members of
the household enjoy their electricity and get upset when it is
removed. Nonetheless, an opportuntity arose for a quick check today,
and the results are shown above.

The results are a bit difficult to read, but a broad band of hash
around 20 MHz seems to disappear, yet some weaker ones pop up
elsewhere. I'm thinking that some image processing techniques like the
astronomers use, like "subtracting" one image from another might be
helpful here.

Some more work needs to be done to find a way allow the Kiwi to still
be present on the (somewhat extensive) household network (comprising
two routers, half a dozen switches, three WiFi access points) while
shutting most of it down.

Another technique, which should also be applied, is to use a "noise
receiver" with a portable antenna and wander around the facility
looking for hot spots. I have a new, battery-powered Icom IC-705 that
might be perfect for this purpose, I just need to figure out what kind
of strange-looking antenna might be effective for the lower portions
of HF.


