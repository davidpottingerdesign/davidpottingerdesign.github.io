---
layout: post
title: How to blog on GitHub
---

### I told myself to make this post three months ago

Jekyll sets me up with a _posts folder for the posts.  I just write out new posts in markdown format in that folder to start and save them with the date in `2016-5-26-` format.

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

Piece of cake!  Works for me.  Wouldn't script this though, too much input.
