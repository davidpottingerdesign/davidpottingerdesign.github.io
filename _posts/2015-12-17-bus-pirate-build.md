---
layout: post
title: Bus Pirate v3.8 Build
---

So I won a raffle at dangerousprototypes.com.  This lead me building one of these:

![My Bus Pirate build (side)]({{ site.url }}/public/buspirate.png)

I think it turned out pretty good.

Here's a link to the Bus Pirate v3.8 page:
http://dangerousprototypes.com/2014/01/21/pcb-drawer-restock-bus-pirate-v3-8/

Before I got started, I found some bill of materials for the previous Bus Pirate v3.6 and changed the USB connector to micro B.  I forget if the FTDI part was on Mouser or not but for whatever reason I got it after the other parts.  Mostly common sense stuff.

I had an ICD3 at work, so I thought I could skip the bootloader firmware.  Turns out this isn't possible!  I needed the bootloader for the thing to work.  I got all worried about FTDI drivers and reflowing the parts and thinking the baud rate might not be right.  For posterity, something about the bootloader is necessary to be on there, then you go back through the USB interface to load the (in my case) BPv3-frimware-v6.1.hex file.  You can get that when searching for Bus Pirate firmware.

After that and the normal assembly stuff, the hardware test went swimmingly.

![My Bus Pirate works!]({{ site.url }}/public/buspirate_test.png)

I was playing with it a little with a random sensor from Adafruit.  I'll have to write up instructions for using it so I'll remember.
