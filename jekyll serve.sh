#!/bin/bash
echo "Testing the site locally, this may take a moment..."
# add chruby script
source /usr/local/share/chruby/chruby.sh
chruby 2
# overwrite the url so we can look at localhost:4000
jekyll serve --baseurl ''
# keep the shell open
$SHELL
