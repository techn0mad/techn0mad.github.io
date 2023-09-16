---
layout: post
title: "Another Sad Story of Common Mode"
tags: blog sdr kiwisdr rf antennas emi rfi
---

I have been running a [KiwiSDR](http://kiwisdr.com/) for a number of years 
since I arrived on Orcas Island.  When it was first set up with a nice 
[Beverage antenna](https://en.wikipedia.org/wiki/Beverage_antenna)
running East-West (thanks Teresia and Kyle!) many people commented on how 
useful it was and how well they could hear things on it.

The years have gone by, and for various reasons, the antenna no longer 
qualifies as a Beverage, just a random wire, and it seemed like the 
SDR wasn't working too well anymore. Doing a quick check seemed to indicate
that it only seemed to be receiving on the lower bands and MW/LW.

One of the fascinating things about the KiwiSDR is that it seems to be 
half test equipment and half radio. The 
[built-in SNR measurement capability](http://rx.linkfanel.net/snr.html)
seems to be taylor-made to drive people crazy trying to 
improve their "scores" and move up the list (although I'd tend to 
remove any sites that do _not_ filter out the MW band, because
all of those nation-wide advertising emissions just drive up the "S" in
"SNR").

Since I'm planning to do a more "permanent" installation of a new
Beverage antenna this fall, and I also have a brand new, never
installed [Wellbrook active loop
antenna](https://www.wellbrook.uk.com/loopantennas/pdf/ALA100LN-M.pdf),
on this past weekend I decided it was time to bring in the feedline
and see what shape it was in.

## DC Checks

Basic continuity tests showed that things were in order. Shield resistance
of the ~400 feet of [RG-6 equivalent](https://en.wikipedia.org/wiki/RG-6)
was ~0.1 ohm. Center conductor to center conductor was ~1.3 ohms.

## RF Ingress

This is where we use the receiver to check the cable. The waterfall display
for the KiwiSDR is amazingly useful for this. We set the "span" to 0-4 MHz 
and then check if we see anything. Considering we have a feedline connected 
to nothing, we shouldn't see anything. Reality looks a bit different:

| Condition | Result |
| --------- | ------ |
| No input | ![No input]({{ site.url }}{{ site.baseurl }}/assets/images/common_mode_2_2021-07-12.png "No input") |
| Open feedline | ![Open feedline]({{ site.url }}{{ site.baseurl }}/assets/images/common_mode_1_2021-07-12.png "Open feedline") |
| Terminated feedline | ![Terminated feedline]({{ site.url }}{{ site.baseurl }}/assets/images/common_mode_4_2021-07-12.png "Terminated feedline") |
| Open feedline, common mode choke | ![Open feedline, common mode choke]({{ site.url }}{{ site.baseurl }}/assets/images/common_mode_6_2021-07-12.png "Open feedline, common mode choke") |
| Terminated feedline, common mode choke | ![Terminated feedline, common mode choke]({{ site.url }}{{ site.baseurl }}/assets/images/common_mode_7_2021-07-12.png "Terminated feedline, common mode choke") |

## Discussion

As usual, this probably boils down to 
[common mode noise](https://groups.google.com/g/rec.radio.shortwave/c/O4NvXCQT748/m/OrJkJ7aL3hwJ)
getting introduced into the system. As the feedline is also very long, and 
our ground here on "the rock" is very poor, it's acting as an antenna too.

When all cables are removed ("No input" above), we don't see any signals,
so that rules out ingress via power, Ethernet, or GPS Antenna lines.

The biggest difference seems to come from adding the 
[common mode choke](https://cdn3.bigcommerce.com/s-4q7cv/product_images/uploaded_images/59f4efa62cbf4-1116d-choking.jpg),
which increases the impedance along the shield of the coax to non-differential (i.e. 
common mode) signals. This greatly reduces the endless amounts of EMI/RFI "cruft"
from stuff in the shack getting out anywhere near the antenna end of the feedline.
Even so, a few of the local MW broadcasters and a lot of LW "hash" can still be
seen. Really serious persons would introduce a second common mode choke at the antenna end 
of the feedline and perhaps add a separate ground connection there too.

The next test will involve replacing the ~400 foot feedline with one that is 
no more than ~200 feet long, as this is the limit for powering the Wellbrook
loop via the coax. Also, it would probably be good to get some serious 
[bonding and grounding](http://audiosystemsgroup.com/GroundingAndAudio.pdf)
going on in the shack too.
