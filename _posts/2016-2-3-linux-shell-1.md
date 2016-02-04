---
layout: post
title: Linux Shell Scripting 1
---

### Some things about living on a Linux laptop

Since the screen post, I've renged and put putty on this machine.  It has a Linux version and I'm familiar with its GUI.  Plus it looks presentable, IMHO.

But for this post, shell scripts are useful!  I've used them for a number of things, including this blog.  I can click on the jekyll serve script to preview changes that I make in blog posts.  I had one in the last post about screen.  It takes a little bit to load, but faster than typing commands myself in a terminal.

{% highlight bash %}
#!/bin/bash
echo "Testing the site locally, this may take a moment..."
# add chruby script
source /usr/local/share/chruby/chruby.sh
chruby 2
# overwrite the url so we can look at localhost:4000
jekyll serve --baseurl ''
# keep the shell open
$SHELL
{% endhighlight %}

Although now that I look at this, I'm surprised the "source" part doesn't actually change the directory.

Jekyll prefers to use a newer version of Ruby than the Linux Mint distributions currently offer, hence chruby lets me use a self-installed version.  That was a bit annoying to do but it works OK now.  Probably I should go for Ubuntu packages instead of this workaround but I don't use Ruby for all that much yet.  This script handles the chruby part (which is itself a script, from what I read), and then serves the "test" site locally.  I like leaving the shell open afterward to maybe push the site changes to github.

Sometime I should write out the github push and clone commands.

Shell scripts also work great for adding programs to the Cinnamon main menu.  Right click on it to open its adjustment GUI and go from there.  There's another GUI for the menu programs themselves, which work with shell scripts if they're working, more on that later.  It handles the "desktop" files needed for things to show up there.  You can add icons in the start menu, too.  Can get some free icons intended for games from [this site](http://game-icons.net/) for that purpose.

I don't have the script above in the main menu, but if I did, I'd probably want to add something to change directories to the blog folder.

### Bug for the day

When using gedit or maybe even nano, you can reach a state where a Windows newline character is on your lines instead of a Linux character.  Bash of course hates this.  I had "/bin/bash^M unrecognized" errors and fixed them by saving a gedit *.sh file as a Unix/Linux line ending instead of a Windows one.  Wouldn't have thought of that, google saves me all the time.

I actually have seen this the other way too, with screen datalogging functions producing output that isn't very readable on Windows machines at work.  In that case I think it was carriage return and line feed or something.  Maybe worth investigating later.
