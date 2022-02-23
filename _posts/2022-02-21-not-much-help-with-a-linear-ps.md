---
layout: post
title: "A Linear Power Supply Didn't Help Much"
tags: kiwisdr snr rfi emi power electricity
---

![Linear PS Spectrum](/assets/img/Site-2022-02-21-13.15.10-HughesLinear.png "Linear PS Spectrum")

*<center>KiwiSDR waterfall with linear power supply</center>*

After considerable fiddling, I finally got a linear 5 volt, 3 amp
power supply hooked up to the KiwiSDR. Based on the
[advice](http://kiwisdr.com/quickstart/index.html#id-noise) provided
by the KiwiSDR people, I has been expecting a big difference between
the [switch mode power supplies
(SMPS)](https://en.wikipedia.org/wiki/Switched-mode_power_supply) that
I have been using with the Kiwi up until now.

I'm disappointed that the experiment did not seem to make much
difference. The waterfall above was from the KiwiSDR with a linear
power supply. The waterfall below is from the KiwiSDR with a switch
mode power supply.

![Generic SMPS Spectrum](/assets/img/Site-2022-02-21-11.30.09-NoName2.png "Generic SMPS Spectrum")

*<center>KiwiSDR waterfall with Generic switch mode power supply</center>*

![Generic SMPS](/assets/img/NoName2PS.jpg "Generic SMPS")

*<center>Generic switch mode power supply</center>
