---
title: "The Game is Afoot"
tags: blog sdr kiwisdr rf antennas emi rfi
---


# Half the Problem

Many times with EMI/RFI problems, being able to locate and or reproduce
the problem constitutes much of the problem itself.

Not having been paying enough attention over the past many months, in the
spring I noticed that things were much noisier than they used to be, for
example, on 20 M.

I am finally getting some time to look into this in detail, using my KiwiSDR
and newly erected Wellbrook ALA100LN loop antenna. The great spectrum display
in the KiwiSDR really helps to zoom in on the problem areas.

## The Big Picture

## Zooming In

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
