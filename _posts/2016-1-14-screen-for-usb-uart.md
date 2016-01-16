---
layout: post
title: GNU Screen for USB Serial
---

I frequently connect microcontrollers to computers.  There may be a smarter way to do this, but for now, the easiest way seems to be some kind of serial interface with some conversion to USB.  The Bus Pirate does this too, or you can get modules or chips to take in UART serial and connect to your USB port.

For the software on the computer side, if it's a Windows machine I tend to use putty.  On this new Linux computer I've had success with Screen.  It's one of those GNU free software projects.  [Here is a link to their quick reference.](http://aperiodic.net/screen/quick_reference)

## Typical Use

It works through my usual shell, some GNOME Terminal on Cinnamon.

I can type "screen /dev/ttyUSB0 115200" (for the Bus Pirate) and it changes the terminal to their input.  I've read in a couple places that it could open in a separate window.  For now this works.  The control mechanism is either "ctrl + a" followed by characters or an escape key.  A couple important commands are detach "d" and help "?".

I also have a .screenrc file set up mostly to help with automatic data logging operations.

{% highlight bash %}
deflog on
shelltitle UART Log
logfile $HOME/screenlogs/uart.txt
logstamp off
{% endhighlight %}

## Quirks

The output is raw, so it's possible that some text editors will complain about unreadable characters.  Newlines are a little annoying because the terminal needs carriage return and line feed, but the log may not process these correctly.  I need to figure it out a little better for the logs.
