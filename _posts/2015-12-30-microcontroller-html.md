---
layout: post
title: HTML on microcontrollers
---

The other project is delayed for maybe a few weeks, so I'm changing gears to work on a new one.  I tend to have a few things on my mind at once.  It's easy to change gears when reaching a stalling point.

This has led to problems with nothing getting done in the past.  I think I'll be fine as long as there aren't too many things going on at once.

## Why HTML?

The idea is to use a USB port to connect a personal computer to a microcontroller and provide a commonly available interface for whatever program is running on that device.

The rationale is that browsers are on most PCs.  If I want to plug something in to anyplace, I can expect to find some support for that.  I'm thinking of local HTML that exists in some memory on the device though, not web pages.

Hope it works!

## How could I do this?

I'm not sure yet, I haven't tried it yet.  I don't know much about HTML or user interface.  I'm learning as I go.  Here are some notes:

HTML has a special tag for user input called a "form".  This is the kind of thing you see when entering an email address or shipping address.  I bet there's more UI things that can be done, but this is a good start for me.  The [Wikipedia page](https://en.wikipedia.org/wiki/Form_%28HTML%29) on them has been informative.

Some other web people have put together a tutorial for these [here](http://www.htmlgoodies.com/tutorials/forms/article.php/3479121).

The device side should be more interesting.  A program running on a microcontroller will provide the host PC with the files it will use to view an HTML page.  I think some trickiness will be required to communicate the other way, to tell which buttons are pressed.

I could fall back on some USB trickiness by directing the PC to ask for a file which may or may not exist.  Possibly I could execute some code from within HTML to communicate more directly?  There are plenty of tutorials for doing this with a custom program (such as [this one](http://www.waitingforfriday.com/index.php/Building_a_PIC18F_USB_device).  Drivers may become an issue too if I go that route.

Would also be helpful to ask some friends, maybe the internet.
