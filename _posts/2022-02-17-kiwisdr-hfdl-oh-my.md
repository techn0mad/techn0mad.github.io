---
layout: single
title: "HFDL on KiwiSDR"
tags: sdr kiwisdr aviation hfdl
---

![KiwiSDR HFDL](/assets/img/KiwiHFDL.png "KiwiSDR HFDL")

I used to spend a lot more time than I have recently listening to
["utility" stations](https://en.wikipedia.org/wiki/Utility_station) on
shortwave, meaning stations that are neither broadcasters nor amateur
radio operators. This leaves marine, aviation, military, and many
other government and commercial organizations.

As I am a bit of a airplane nut, I am naturally taken to the aviation
services. I remember listening to "Cambridge Bay" and "Arctic Radio"
on my cherished [Heathkit
GR-78](https://www.rigpix.com/heathkit/gr78.htm) in northern Alberta
in the late 70's.

Later on, I heard about
[HFDL](https://en.wikipedia.org/wiki/High_Frequency_Data_Link), which
was going to eventually replace voice SSB for HF aviation
traffic. This development worried me, since I started wondering how
much equipment would be needed to listen to it, considering a very
simple SSB receiver was all that was needed to listen to the
voice/[SELCAL](https://en.wikipedia.org/wiki/SELCAL) traffic on the
old HF aviation channels.

After that, I heard that [Charles Brain,
G4GUO](http://www.chbrain.dircon.co.uk/), had written an HFDL decoder
for Windows called "PC-HFDL". I was moved to purchase a license for it
from him, despite my dislike of Windows overall. It worked well
enough, but I never used it much, again because of Windows. I had
thought it might be interesting to write an HFDL decoder on a different
OS, but the specifications had to be purchased for several hundred
dollars, and I never got _that_ motivated.

![KiwiSDR](http://www.bonito.net/newsroom/wp-content/uploads/2017/03/kiwi-im-gehause-300x200.jpg "KiwiSDR")

Fast forward again a few years, and my friend [Steve Stroh,
N8GNJ](https://www.n8gnj.org/), pointed me at a [Kickstarter
campaign](https://www.kickstarter.com/projects/1575992013/kiwisdr-beaglebone-software-defined-radio-sdr-with)
for something called the [KiwiSDR](http://kiwisdr.com/). I put some
money down on one, the first time I had participated in a Kickstarter
project. Some time later, when I received my KiwiSDR, I was quite
pleased with it, but I really didn't spend much time with it.

Work and life got busy again, and I went several years without paying
much attention to the KiwiSDR. Finally, I moved way out of town, to a
place that is relatively RF quiet, and I setup the KiwiSDR and I was
amazed to see how many features had been added to it. It was
demonstrating a great feature of SDRs; namely that functions and
features can be added just by add/changing the software.

Much to my surprise, I noticed that it had an HFDL extension. I saw
this several weeks ago, but tonight I tried it and I was delighted
both at how well it works, and also that the HFDL implementation is a
[portable open-source project](https://github.com/szpajder/dumphfdl)
of its own.

```
[2022-02-18 07:31:17 UTC] [6559.0 kHz] [4.2 Hz] [-14.4/-34.7 dBFS] [20.3 dB] [300 bps] [S]
Downlink LPDU:
 Src AC: 98
 Dst GS: San Francisco, California
 Type: Unnumbered data
 Performance data:
  Version: 10
  Flight ID: FX5813
  Lat: 59.1147978
  Lon: -173.9300421
  Time: 07:31:12
  Flight leg: 71
  GS ID: San Francisco, California
  Frequency: 5508.0
  Frequency search count:
   This leg: 0
   Prev leg: 10
  HFDL disabled duration:
   This leg: 116 sec
   Prev leg: 6008 sec
  MPDUs received             : 300 bps:  75   600 bps:   8   1200 bps:   0   1800 bps:   0
  MPDUs received with errors : 300 bps:   1   600 bps:   1   1200 bps:   0   1800 bps:   0
  MPDUs transmitted          : 300 bps:  12   600 bps:   0   1200 bps:   0   1800 bps:   0
  MPDUs delivered            : 300 bps:  10   600 bps:   0   1200 bps:   0   1800 bps:   0
  SPDUs received: 134
  SPDUs missed: 8
  Last frequency change cause: 7 (No change)
```
