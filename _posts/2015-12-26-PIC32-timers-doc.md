---
layout: post
title: PIC32 Timer Doc
---

I usually work with the smaller 8 bit PICs.  These might stick around in some way but it looks like the bigger processors are getting cheap enough to use more often, like the 5$ Raspberry Pi.  Might as well dig into them.  I'll start with some 32 bit PIC projects maybe.

First I need a timer to handle a button input and to turn on some voltage supplies.  That's a good start for this one.

## Complaining

The PIC32 Harmony stuff has some timer settings with lots of options, but I don't see how to do all of it here.  The new Configurator tool for 8 bit PICs allowed me to set it to 1mS more easily.  I can still calculate this based on the hardware datasheet of course.  It looks like I have to go that route.

There's a big picture of the harmony tools on the [Microchip Wiki](http://microchip.wikidot.com/harmony:drv-tmr).  Don't see the super easy way to set it up I was looking for.  Documentation inside the code is detailed when looking at an individual function but the big picture level is lacking.

I like Harmony for some things, particularly keeping track of what pins the peripherals go on, but these timers aren't there yet.

## The Manual Solution

The internal FRC is 8MHz and I can use PLLs and dividers to change that.  There's another divider for all peripheral clocks.  The timer hardware comes with nice period registers to avoid resetting the timer register every expiry.  The math works like this:

<div class="message">
interrupt flag period (seconds?) = PRx register * divider / peripheral frequency (Hz?)
</div>

To use a polled interrupt, I had to enable the interrupt source for the timer, too.  The flag for it was in the IFS0 register.  Interrupts were set up nicely through Harmony though.
