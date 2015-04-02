#!/bin/sh
OS=$1

# Windows
rm -f .gitattributes
echo "node.osx export-ignore" > .gitattributes
git archive --format=zip --output=javascript-win.zip master
exit

# OSX
rm -f .gitattributes
echo "node.exe export-ignore" > .gitattributes
git archive --format=zip --output=javascript-osx.zip master


# Linux
rm -f .gitattributes
echo "node.exe export-ignore" > .gitattributes
echo "node.osx export-ignore" >> .gitattributes
git archive --format=zip --output=javascript-linux.zip master
