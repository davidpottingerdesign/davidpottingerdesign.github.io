---
layout: post
title: Repurpose Post
---

I'm modifying my "electronics projects blog" to be just a day to day journal.  Static sites are awesome and this amount has been up for more than a year for free so why not?  I could possibly still blog about electronics projects although I've been busy with school lately.

### What to expect now
I'm typing out thoughts, experiences, and things I want to study.  I am a bit involved in the local San Diego Church of Christ and I don't expect that to ever go away, so there are also religious Christian ideas up here.

### How to manage it
Jekyll sets me up with a _posts folder for the posts.  I just write out new posts in markdown format in that folder to start and save them with the date in `yyyy-mm-dd-` format.

### The downside
I've lost my Linux setup for checking out posts with Jekyll before I push them onto github.  It shouldn't be much of an issue since I'm not changing the CSS or html or much of anything anymore.  I'm just adding posts.

### Useful formatting Markdown for posts
Posts should start with layout and title in this format:

    ---
    layout: post
    title: How to blog on GitHub
    ---
    
Tips found here: [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

That was just `[text](url.com)`

Adding a "!" in front makes an image.

Can upload with `{ {site.url} }/public/image.jpg` without the spaces.

See?  `{{site.url}}`

### Look at it
I made a script for this already back in "Linux Shell Scripting 1".  And once that goes through, I can ctrl+c out and use the shell to put the post on GitHub.

### And then put it on GitHub
This is the easy part, if I can remember the commands!

Start off with a `git add .`

Then proceed to `git commit -m "message"`

And then a `git push origin master`

And at this point I give my github username and password.

### But these days
I cheat on Windows and just use SourceTree instead of command lines.
