---
date: "2012-05-28"
title: Mercury First Light
---

At long last (2 years?) I finally got my HPSDR Mercury SDR receiver running. After making a final mod to the LPU power supply, the configuration is now running nicely.

![Mercury on 75M, May 2012]({{ "/assets/mercury0012.png" }})

I find the spectrum/panadapter width a bit cramped in the ghpsdr software compared to the QS1R/SDRMAX combination. I've tried setting it to 192 kHz wide, but I think my decrepit old CPU can't handle it. Running at 96 kHz, the CPU usage is about 94%.

Now we are off to characterize the Excalibur TCXO stability and figure out how to implement multiple receivers using the same receiver card.
