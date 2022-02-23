---
layout: post
title: "Effect of Common Mode Chokes"
tags: kiwisdr snr rfi emi power electricity
---

![No Common-mode Choke](/assets/img/Site-2022-02-22-15.56.29-CMChoke.png "No Common-mode Choke")
*<center>KiwiSDR waterfall with no common-mode choke</center>*

![Common-mode Choke](/assets/img/Site-2022-02-22-15.59.12-NoChoke.png "Common-mode Choke")
*<center>KiwiSDR waterfall with common-mode choke</center>*

Common wisdom is that [common-mode
chokes](https://en.wikipedia.org/wiki/Choke_(electronics)#Common-mode_choke)
on antenna coax cables are an effective way to prevent 
[common-mode noise](https://en.wikipedia.org/wiki/Common-mode_signal) from
inside the shack from propagating on the coax shield and coupling to
the active element(s) of the antenna the coax cable is connected to.

In the KiwiSDR waterfall views above, it should be possible to view
this effect. In particular, the 2-4 MHz area is much worse without the
common-mode choke.
