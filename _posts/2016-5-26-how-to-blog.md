---
layout: post
title: How to blog on GitHub
---

### I told myself to make this post three months ago

Jekyll sets me up with a _posts folder for the posts.  I just write out new posts in markdown format in that folder to start and save them with the date in `2016-5-26-` format.

### Useful formatting stuff for posts
Posts should start with layout and title in this format:

    ---
    layout: post
    title: How to blog on GitHub
    ---
    
Images are like:

`![text]({{ site.url }}/public/image.png)`

Or use a URL for something already hosted on the internet.

Probably more of it could be found here:

https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet

(urls are linked automatically)

### Look at it
I made a script for this already back in Linux Shell Scripting 1.  And in that post more than three months ago, I said I should make this post.

### And then put it on GitHub
This is the easy part, if I can remember the commands!

Start off with a `git add .`

Then proceed to `git commit -m "message"`

And then a `git push origin master`

And at this point I give my github username and password.
Piece of cake!
