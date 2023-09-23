---
title: "New High Performance SDR"
tags: sdr hamradio
---

![RFNM Motherboard](https://rfnm.io/s/render23/wide/2000/top-iMX-bg.jpg)

*The new RFNM SDR Motherboard*

RFNM Srl, based in Italy, is building a new high-performance SDR that
looks similar to Lime or HackRF, but with much higher spec components
and performance.

> Introducing a new platform required a well-defined set of objectives:
>
> - Available: 10-years manufacturing commitment.
> - Inexpensive: 10x cheaper than current alternatives.
> - Modular: End user can innovate on the hardware that matters via the RFNM Interfaces, by abstracting away unneeded complexity (power, clocking, ADC/DAC, host interfaces).
> - Upgradable: Future RFNM motherboards (faster compute or interfaces) will need to preserve full compatibility (software, daughterboards).
> - Open: Schematics and code, when not under NDAs, are released to the user.

This project has an ambitious goal to build and sell a [SDR
motherboard](https://rfnm.io/docs/hardware/motherboard#what-is-included-in-the-motherboard)
and daughterboards ["Granita"](https://rfnm.io/docs/hardware/granita)
and ["Lime"](https://rfnm.io/docs/hardware/lime) that togther provide
a huge bang for the buck.

I was frustrated a bit, however, at how tight-lipped NXP is regarding
their ["Layerscape Access LA9310 Programmable Baseband
Processor"](https://www.nxp.com/products/processors-and-microcontrollers/arm-processors/layerscape-processors/layerscape-access-la9310-programmable-baseband-processor:LA9310),
despite some digging around on their website, I could not find any RF
performance data (i.e. noise figure, ENoB, etc.) for this chipset.

The concern that I would have with this design as applied to amateur
radio is that the hardware seems very focused on commercial digital
(i.e. 5G, LTE, etc.) and so might not be very capable in weak signal
work.
