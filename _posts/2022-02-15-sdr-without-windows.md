---
layout: single
title: "SDR Without Windows?"
tags: sdr windows linux bsd opensource
---

![Meditating Gnu]({{ site.url }}{{ site.baseurl }}/assets/images/meditate-gnu.jpg "Meditating Gnu")

As a person who is a bit of a fanatic about software defined radio
(SDR), and a professional software engineer and open source software
afficionado, one of the first things I check out in a new SDR is what
systems the software runs on. Several notable SDRs at least
superficially only seem to support Windows. I own an FDM-S2 and a HF+
Discovery and as a result I do not get to use them much as I only boot
up my Windows computer a few times a year, usually under duress.

- [Microtelecom Perseus](https://www.microtelecom.it/en)
- [Elad FDM-S2](https://www.eladit.shop/en-gb/Ricevitore-SDR-FDM-S2-p209053137) et al
- [AirSpy HF+ Discovery](https://airspy.com/airspy-hf-discovery/)

I occasionally wonder what the state of support for this SDR hardware
is like on other platforms like Linux, MacOS, or FreeBSD.  This is a
brief summary of what kinds of non-Windows software supports these
SDRs.

## Microtelcom Perseus

- [Linrad](http://www.sm5bsz.com/linuxdsp/linrad.htm), by SM5BSZ, Leif Åsbrink
- Alexandru Csete, OZ9AEC [GQRX](http://gqrx.dk/) SDR receiver
- [SDR Angel](https://www.sdrangel.org/) by Edouard, F4EXB
- [GNU Radio](https://www.gnuradio.org/), by the [gr-microtelecom](https://github.com/IW0HDV/gr-microtelecom) module

## Elad FDM-S2

- Alexandru Csete, OZ9AEC [GQRX](http://gqrx.dk/) SDR receiver
- [GNU Radio](https://www.gnuradio.org/), via the [Elad FDM-S2 Sampler](https://www.eladit.com/en/download?path=sdr%2FFDM-S2%20Sampler%2FLinux) modules
- [HDSDR](http://www.hdsdr.de/)

## AirSpy HF+ Discovery

- [Linrad from Leif Asbrink, SM5BSZ](http://www.sm5bsz.com/linuxdsp/linrad.htm)
- Alexandru Csete, OZ9AEC [GQRX](http://gqrx.dk/) SDR receiver
- [GNU Radio](https://www.gnuradio.org/)
- [SDR Angel](https://www.sdrangel.org/) by Edouard, F4EXB
- [Soapy SDR](https://github.com/pothosware/SoapyAirspyHF/wiki)

| **SDR** | [GQRX](http://gqrx.dk/) | [GNU Radio](https://www.gnuradio.org/) | [Soapy SDR](https://github.com/pothosware/SoapySDR) | [Linrad](http://www.sm5bsz.com/linuxdsp/linrad.htm) | [SDR Angel](https://www.sdrangel.org/) | [Cubic SDR](https://cubicsdr.com/) | [OpenWebRx](https://www.openwebrx.de/) |
| --- | ---- | --------- | --------- | ----- | ------ | ------ | ------ |
| Perseus | Y | Y | N | Y | Y | N | Y |
| Elad FDM-S2 | Y | Y | N | N | N | N | N |
| AirSpy HF+ Discovery | Y | Y | Y | Y | Y | N | Y |

| **Software** | Version | Last Release | Contributors | Linux | MacOS | BSD | Notes |
| ------------ | ------- | ------------ | ------------ | ----- | ----- | --- | ----- |
| [GQRX](http://gqrx.dk/) | 2.15.8 | 2022/01/25 | 80 | Y | Y | ? | GNU Radio and Qt-based |
| [GNU Radio](https://www.gnuradio.org/) | 3.10.1.1 | 2022/02/01 | 286 | Y | Y | Y | |
| [Soapy SDR](https://github.com/pothosware/SoapySDR) | 0.8.1 | 2021/07/25 | 19 | Y | Y | Y | GNU Radio-based |
| [Linrad](http://www.sm5bsz.com/linuxdsp/linrad.htm) | 05.01 | 2021/05/03 | 2 | Y | N | Y | |
| [SDR Angel](https://www.sdrangel.org/) | 6.19.0 | 2022/02/07 | 38 | Y | N | N | Qt-based |
| [Cubic SDR](https://cubicsdr.com/) | 0.2.7 | 2022/02/05 | 21 | Y | Y | N | Soapy SDR-based |
| [OpenWebRx](https://www.openwebrx.de/) | 1.1.0 | 2021/08/03 | 1 | Y | N | N | Some HW is Soapy SDR-based |
| [SDR++](https://github.com/AlexandreRouma/SDRPlusPlus) | 1.0.4 | 2021/10/17 | 33 | Y | Y | Y | Some HW is Soapy SDR-based |

Based on a casual inspection of much of this software, it appears that
one of the least "heavy" solutions might be
[OpenWebRx](https://www.openwebrx.de/), as it offloads much of the
graphics and audio processing to the end-user's web browser. However,
it does not support the Elad or the Perseus. I am pleased to see that
it is now generally available, after being locked up and operating
only at the [original development
site](http://websdr.ewi.utwente.nl:8901/).

Notwithstanding that, the [Soapy
SDR](https://github.com/pothosware/SoapySDR) software seems to be the
"Rosetta Stone" of much of this software, mediating interfaces and
protocols between dozens of types of SDR hardware and [GNU
Radio](https://www.gnuradio.org/) the does the heavy lifting.
