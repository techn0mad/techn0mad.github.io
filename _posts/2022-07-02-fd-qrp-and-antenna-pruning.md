---
layout: post
title: "Field Day, QRP, and Antenna Pruning"
tags: qrp antenna
---

I had a great, but minimalist [Field
Day](https://www.arrl.org/field-day) this year, where I finally got to
transmit on my [Icom
IC-705](https://icomamerica.com/en/products/amateur/handheld/705/default.aspx),
operated on 6 meters for the first time, and experienced [QRP
operation](https://www.arrl.org/why-qrp) for the first time.

As part of this effort, of course I put up an HF antenna for use on
Field Day; an 80M/40M [fan
dipole](https://www.onallbands.com/ham-radio-101-what-is-a-fan-dipole-antenna/).

My friend Mike, KG7HQ, hooked up his portable antenna analyzer to it and
found it looked okay for 80M, but was way off-frequency for 40M. It
was showing a VSWR dip closer to 6.6 MHz rather than the 7.2 MHz
expected for 40M operation.

I finally got a few minutes to get my
[PocketVNA](https://pocketvna.com/) VNA running and calibrated, and I
took a closer look:

[![80-40M Fan Dipole Too Long]({{ site.url }}{{ site.baseurl }}/assets/images/2022-07-03-Fan80-40Pre.png)]({{ site.url }}{{ site.baseurl }}/assets/images/2022-07-03-Fan80-40Pre.png)

*<center>80-40M Fan Dipole With 40M Too Long</center>*

As can be seen from the above, the 40M portion of the fan dipole
definitely appears to be a bit too long. Doing some rudumentary
calculations using the classic [dipole length
formula](https://www.66pacific.com/calculators/dipole-antenna-length-calculator.aspx)
(468 divided by frequency), I determined that the 40M dipole was about
2 feet, 9 inches too long.

So today, I went out into the rain, lowered the 40M dipole legs and
shortened them by about 2 feet, 6 inches. Running another scan on the
VNA, I can see that the 40M dipole now resonates within the 40M band,
albeit still a little low:

[![80-40M Fan Dipole Better]({{ site.url }}{{ site.baseurl }}/assets/images/2022-07-03-Fan80-40Post.png)]({{ site.url }}{{ site.baseurl }}/assets/images/2022-07-03-Fan80-40Post.png)

*<center>80-40M Fan Dipole Closer to Being Tuned</center>*

It's always comforting and reassuring when there is some evidence that
theory and practice sometimes match, especially when it comes to
antennas and RF.
