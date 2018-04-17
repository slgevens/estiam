#!/bin/bash

# curl 'http://faceboo' -so - | grep -o '<title>.*</title>' | sed -n 's,.*<title>\(.*\)</title>,\1,p'
# curl 'http://goparium.com/' -so - | grep -o '<title>.*</title>' | sed -n 's,.*<title>\(.*\)</title>,\1,p'
curl -sL $1 -so - | grep -o '<title>.*</title>' | sed -n 's,.*<title>\(.*\)</title>,\1,p'
date
