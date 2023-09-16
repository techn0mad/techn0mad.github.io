---
layout: post
title: "A Tale of Two Power Supplies"
tags: kiwisdr snr rfi emi power electricity
---

![Generic PS Spectrum]({{ site.url }}{{ site.baseurl }}/assets/images/Site-2022-02-20-14.24.52-NoNamePS.png "Generic PS Spectrum")

*<center>KiwiSDR waterfall with generic SMPS</center>*

![Generic PS]({{ site.url }}{{ site.baseurl }}/assets/images/NoNamePS.jpg "Generic PS")

*<center>Generic SMPS</center>*

I'm a bit startled at how difficult it is to find old-fashioned,
linear power supplies these days. While I have acquired a couple of 5
volt, 3 amp units specifically for use with the KiwiSDR, I still have
some work to do to get the needed wiring and plumbing done.

In the meantime, while pawing through my junk box, I came across a
[switch mode power supply
(SMPS)](https://en.wikipedia.org/wiki/Switched-mode_power_supply) that
I recall was the one that came from [Seeed
Studio](https://www.seeedstudio.com/) with my KiwiSDR.

As an experiment, I swapped out the generic SMPS I'd been using with
the KiwiSDR for the original SMPS provided with it.

![Kiwi PS Spectrum]({{ site.url }}{{ site.baseurl }}/assets/images/Site-2022-02-20-14.55.56-KiwiPS.png "PS provided with KiwiSDR Spectrum")

*<center>KiwiSDR waterfall with Kiwi-provided PS</center>*

![Kiwi PS]({{ site.url }}{{ site.baseurl }}/assets/images/KiwiOrigPS.jpg "PS provided with KiwiSDR")

*<center>Kiwi-provided SMPS</center>

I was kind of startled at the difference: The original SMPS is much
better below 10 MHz, and especially in the area between MW and 7 MHz,
but it is a lot worse in the 15 - 30 MHz range.

I'm anxious to get the linear 5 volt supply hooked up to see what kind
of difference it will make. As per the advice at the KiwiSDR site,
getting a quiet power supply seems to be a key factor in reducing
"self-noise".


