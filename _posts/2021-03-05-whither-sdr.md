---
layout: single
title:  "Whither SDR?"
tags: hamradio sdr hpsdr
---

![GNU Radio logo](/assets/img/GNURadio.png "GNU Radio logo")

As a long-time devotee of the concept of software defined radio (SDR), I remain somewhat discouraged
at the current state-of-the-art with respect to its usage in the ham radio world.

I remember seeing a very nice [talk](http://microhams.blob.core.windows.net/content/2015/05/3-n7hq_mhdc2009.pdf)
at the [SeaPac Convention](https://www.seapac.org) some years ago, where a gentleman had eviscerated an old 
[Heath SB-104 transceiver](https://rigreference.com/rigs/2938-heathkit-sb-104) 
and installed some very up to date (for the time) SDR hardware inside it. His audience for the talk 
was a lot of older hams who had either never heard of SDR or did not know what it meant.

The meaningful part (at least to me) of his talk was where he explained that in the old days, if you 
wanted to change your radio, you had to change some hardware. You might change a tube, replace a coil,
add a crystal in order to obtain the new functionality that was desired. The revolutionary part
was that in the SDR world, you would make all of these changes in software, and the hardware portion
of the system would remain unchanged.

I am disappointed that some 20 years after SDR first became practical in the ham radio domain, the 
vast majority of the implementations in use are ones where the end-user is simply unable to make any changes 
to the software (or even view the software), mostly due to a lack of 
[open-source software licensing](https://opensource.org/osd), thereby losing the major promise of SDR.

To be sure, a significant part of the reason for this is that the required knowledge; what SDR functions
need to be implemented, how to encode these in software, and how to build and deploy this software on
to the hardware are surely specialized domains of knowledge. However, many of the major SDR implementations
in use are "black-box" and do not lend themselves to exploration or modification, either coincidentally
or deliberately.

Having said all of that, let's delve into what parts of an SDR implementation we might want to modify,
and survey the market and see which general purpose SDRs allow modifications to which portions of the system.

| Popularity<sup>1</sup> | Vendor | SDR | Software | License | Language |
| --- | --- | --- | --- | --- | --- |
| 262000 | HackRF | [HackRF One](https://greatscottgadgets.com/hackrf/one/) | [SDR#](https://airspy.com/download/) | [MS-RSL](https://referencesource.microsoft.com/license.html) | .Net |
| 90100 | KiwiSDR | [KiwiSDR](http://kiwisdr.com/) | [KiwiSDR](https://github.com/jks-prv/Beagle_SDR_GPS) | [GPL](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html) | C++ |
| 133000 | NooElec | [NESDR](https://www.nooelec.com/store/sdr/sdr-receivers/nesdr.html) | [CubicSDR](https://cubicsdr.com/) | [GPL](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html) | C++ |
| 398000 | RTL-SDR | [RTL2832U](https://www.rtl-sdr.com/) | [SDR#](https://airspy.com/download/) | [MS-RSL](https://referencesource.microsoft.com/license.html) | .Net |
| 29500 | Red Pitaya | [Red Pitaya](https://www.redpitaya.com/) | [OpenHPSDR-PowerSDR](https://github.com/TAPR/OpenHPSDR-PowerSDR/releases/tag/v3.4.9) | [GPL](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html) | C# |
| 9690 | Ettus | [USRP Bus](https://www.ettus.com/product-categories/usrp-bus-series/) | [GNU Radio](https://wiki.gnuradio.org/index.php/InstallingGR) | [GPL](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html) | C++ |
| 25000 | Ettus | [USRP Network](https://www.ettus.com/product-categories/usrp-networked-series/) | [GNU Radio](https://wiki.gnuradio.org/index.php/InstallingGR) | [GPL](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html) | C++ |
| 248000 | Microtelcom | [Perseus](http://microtelecom.it/perseus/) | [Perseus](http://microtelecom.it/perseus/software.html) | Proprietary | C++ |
| 4560 | SRL | [QS1R](https://web.archive.org/web/20150722044449/http://qs1r.wikispaces.com:80/QS1R+Specifications) | [SDRMAX V](http://www.srl-llc.com/qs1r_latest/) | Proprietary | C++ |
| 9220 | OpenHPSDR | [Mercury](https://openhpsdr.org/mercury.php) | [PowerSDR](https://github.com/TAPR/OpenHPSDR-PowerSDR/releases/tag/v3.4.9) | [GPL](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html) | C# |
| 5900 | OpenHPSDR | [Hermes](https://openhpsdr.org/hermes.php) | [PowerSDR](https://github.com/TAPR/OpenHPSDR-PowerSDR/releases/tag/v3.4.9) | [GPL](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html) | C# |
| 965000 | Hermes-Lite | [Hermes-Lite](http://www.hermeslite.com/) | [Quisk](http://james.ahlstrom.name/quisk/) | [GPL](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html) | Python |
| 18400 | FlexRadio | [Flex-1500](https://edge.flexradio.com/www/uploads/20200818185031/FLEX-1500-Datasheet.pdf) | [PowerSDR](https://www.flexradio.com/software/powersdr_v2-7-2_installer/) | [LGPL](http://kc.flexradio.com/KnowledgebaseArticle50498.aspx) | C# |
| 20900 | FlexRadio | [Flex-3000](https://edge.flexradio.com/www/uploads/20200818185030/FLEX-3000-Datasheet-1.pdf) | [PowerSDR](https://www.flexradio.com/software/powersdr_v2-7-2_installer/) | [LGPL](http://kc.flexradio.com/KnowledgebaseArticle50498.aspx) | C# |
| 19700 | FlexRadio | [Flex-5000](https://edge.flexradio.com/www/uploads/20200818185023/FLEX-5000-Datasheet.pdf) | [PowerSDR](https://www.flexradio.com/software/powersdr_v2-7-2_installer/) | [LGPL](http://kc.flexradio.com/KnowledgebaseArticle50498.aspx) | C# |
| 10900 | FlexRadio | [Flex-6600](https://edge.flexradio.com/www/uploads/20201121014319/FLEX-6600-Series_Brochure-202011.pdf) | [SmartSDR](https://www.flexradio.com/ssdr/) | Proprietary | |
| 773 | Apache Labs | [Anan 7000DLE](https://apache-labs.com/productPdf/1059_1050_7000DLE%20MKII%20Brochure%20v1.04.pdf) | [OpenHPSDR-Thetis](https://github.com/TAPR/OpenHPSDR-Thetis/releases/tag/v2.8.11) | [GPL](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html) | C# |
| 1900 | TAPR | [TangerineSDR](https://tangerinesdr.com/) | [GNU Radio](https://wiki.gnuradio.org/index.php/InstallingGR) | [GPL](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html) | C++ |
| 616 | AliExpress | RaspberrySDR | [KiwiSDR](https://github.com/jks-prv/Beagle_SDR_GPS) | [GPL](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html) | C++ |
| 708 | AliExpress | [RX666](https://www.aliexpress.com/item/4001239060377.html) | [SDR Console](https://www.sdr-radio.com/console) | Proprietary | C++ |
| 39900 | AliExpress | [RX888](https://www.aliexpress.com/item/1005001593172830.html) | [SDR Console](https://www.sdr-radio.com/console) | Proprietary | C++ |
| 5740 | Aferdi | [SDR-Net](https://afedri-sdr.com/index.php) | [HDSDR](http://www.hdsdr.de/) | Freeware | C++ |
| 2190 | WinRadio | [G33DDC](https://www.winradio.com/home/g33ddc.htm) | [G33DCC (Excalibur Pro)](https://www.winradio.com/home/download-g33ddc.htm) | Proprietary | |
| 10900 | Elad | [FDM-S2](https://eladit.shop/en-gb/Ricevitore-SDR-FDM-S2-p209053137) | [FDM-S2](http://sdr.eladit.com/download/FDM-sw2%20Software/index.php?lang=EN) | Proprietary | |
| 35500 | RFSpace | [NetSDR](http://www.rfspace.com/RFSPACE/NetSDR+.html) | [SpectraVue](http://www.rfspace.com/RFSPACE/SVDownload.html) | Proprietary | |
| 46900 | RFSpace | [SDR-IQ](http://www.rfspace.com/RFSPACE/SDR-IQ.html) | [SpectraVue](http://www.rfspace.com/RFSPACE/SVDownload.html) | Proprietary | |
| 1170 | SunSDR | [ColibriNANO](https://sunsdr.eu/product/colibrinano/) | [ExpertSDR2](https://sunsdr.eu/support/expertsdr2/) | Proprietary | |
| 44500 | SDRPlay | [RSP1A](https://www.sdrplay.com/rsp1a/) | [SDRuno](https://www.sdrplay.com/sdruno/) | Proprietary | |
| 116000 | SDRPlay | [RSPdx](https://www.sdrplay.com/rspdx/) | [SDRuno](https://www.sdrplay.com/sdruno/) | Proprietary | |
| 20300 | SDRPlay | [RSPduo](https://www.sdrplay.com/rspduo/) | [SDRuno](https://www.sdrplay.com/sdruno/) | Proprietary | |
| 23600 | Airspy | [R2](https://airspy.com/airspy-r2/) | [SDR#](https://airspy.com/download/) | [MS-RSL](https://referencesource.microsoft.com/license.html) | .Net |
| 9590 | Airspy | [HF+ Discovery](https://airspy.com/airspy-hf-discovery/) | [SDR#](https://airspy.com/download/) | [MS-RSL](https://referencesource.microsoft.com/license.html) | .Net |
| 7970 | Airspy | [HF+ Dual Port](https://airspy.com/airspy-hf-plus/) | [SDR#](https://airspy.com/download/) | [MS-RSL](https://referencesource.microsoft.com/license.html) | .Net |
| 16300 | Analog Devices | [PlutoSDR](https://www.analog.com/en/design-center/evaluation-hardware-and-software/evaluation-boards-kits/adalm-pluto.html#eb-overview) | [GNU Radio](https://wiki.gnuradio.org/index.php/InstallingGR) | [GPL](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html) | C++ |
| 8930 | Lime Microsystems | [LimeSDR](https://limemicro.com/products/boards/limesdr/) | [SoapySDR](https://github.com/pothosware/SoapySDR) | [Boost](https://www.boost.org/LICENSE_1_0.txt) | C++ | 
| 10200 | Nuand | [bladeRF](https://www.nuand.com/) | [SoapySDR](https://github.com/pothosware/SoapySDR) | [Boost](https://www.boost.org/LICENSE_1_0.txt) | C++ | 
| 16400 | Ali Express | [New Horizons](http://gridrf.com/products/detail/id/12.html) | [GNU Radio](https://wiki.gnuradio.org/index.php/InstallingGR) | [GPL](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html) | C++ |
| 1430 | AMSAT-UK | [Funcube Dongle Pro](http://www.funcubedongle.com/) | [GNU Radio](https://wiki.gnuradio.org/index.php/InstallingGR) | [GPL](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html) | C++ |
| 3520 | Othernet | [KerberosSDR](http://kerberossdr.com/) | [GNU Radio](https://wiki.gnuradio.org/index.php/InstallingGR) | [GPL](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html) | C++ |

1. Number of hits on a Google search of "SDR" "\<SDR vendor\>" "\<SDR name\>"

Looking at this data, there appear to be only three or four active open-source SDR software projects:

| Project | git Repo | Started | Contributors | Commits | Latest Release |
| --- | --- | --- | --- | --- | --- |
| GNU Radio | [https://github.com/gnuradio/gnuradio](https://github.com/gnuradio/gnuradio) | Jul 26, 2009 | 252 | 14444 | Mar 22, 2021 |
| SoapySDR | [https://github.com/pothosware/SoapySDR](https://github.com/pothosware/SoapySDR) | Sep 28, 2014 | 15 | 740 | Apr 25, 2021 |
| OpenHPSDR-Thetis | [https://github.com/TAPR/OpenHPSDR-Thetis](https://github.com/TAPR/OpenHPSDR-Thetis) | Feb 26, 2017 | 2 | 64 | Oct 20, 2020 |
| OpenHPSDR-PowerSDR | [https://github.com/TAPR/OpenHPSDR-PowerSDR](https://github.com/TAPR/OpenHPSDR-PowerSDR) | Feb 26, 2017 | 2 | 93 | Mar 20, 2018 |
| CubicSDR | [https://github.com/cjcliffe/CubicSDR](https://github.com/cjcliffe/CubicSDR) | Oct 26, 2014 | 18 | 1661 | Aug 21, 2018 |
| ghpsdr-alex | [https://github.com/alexlee188/ghpsdr3-alex](https://github.com/alexlee188/ghpsdr3-alex) | Jun 19, 2011 | 16 | 1590 | Jan 22, 2012 |
| ghpsdr | [https://github.com/g0orx/ghpsdr](https://github.com/g0orx/ghpsdr) | Jan 29, 2017 | 1 | 1 | n/a |
