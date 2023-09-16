---
layout: post
title: "The (RFI) Plot Thickens"
tags: snr rfi emi power electricity
---

![SMPS Hash on 40M]({{ site.url }}{{ site.baseurl }}/assets/images/IC705-40M-hash.jpg)

*<center>40M SMPS hash on IC-705</center>*

Despite having read for years about the benefit of common mode chokes, and
how the lack of them can lead to all sorts of EMI/RFI issues, I've
never seen a "textbook" demonstration of their effect until today.

I was idly tuning around on my IC-705, and I noticed some of the
typical, wide, wandering SMPS noise bands on the spectrum. In a fit of
experimentation, first I disconnected the DC changing cable, and the
SMPS noise disappeared when the radio was running on battery alone.

![40M on Battery]({{ site.url }}{{ site.baseurl }}/assets/images/IC705-40M-battery.jpg)

*<center>40M on IC-705 with battery</center>*

I grabbed a [Fair-Rite type
75](https://www.fair-rite.com/wp-content/uploads/2016/02/75-Flyer-FINAL3.pdf)
snap-on ferrite ring, and ran a few turns of the DC charging cable for
the IC-705 through it.

![DC Common-mode Choke]({{ site.url }}{{ site.baseurl }}/assets/images/DCChokeIC705.jpg)

*<center>Ad-hoc DC common-mode choke</center>*

Lo and behold, the SMPS hash virtually disappeared, despite this being
a quick, ad-hoc choke built using the wrong type of ferrite (type 75
is for LF, MF; this should probably be type 31 or 73).

![DC choke on 40M]({{ site.url }}{{ site.baseurl }}/assets/images/IC705-40M-DC-choke.jpg)

*<center>40M on IC-705 with DC choke</center>*

I did a bit more tinkering to try and find out where the noise is
coming from: The DC charging cable for the IC-705 goes to an Anderson
Powerpole distribution panel that is connected to my very old, linear
DC power supply, and an IC-7300 and an IC-9700. To my surprise, the
source of the noise seems to be the IC-9700, regardless of whether the
IC-9700 is powered on or off.

I find this surprising: The IC-7300 and IC-9700 are not inexpensive
(i.e. "cheap") radios, and I would think that Icom would have taken
care to ensure that they did not create interference for themselves or
other nearby radios. However, in their defense, I also realize that
none of these devices are [properly bonded to each
other](https://www.nonstopsystems.com/radio/pdf-radio/equipment-bonding-noise-reduction.pdf)
as they should be.
