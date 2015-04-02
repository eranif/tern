#!/bin/sh
OS=$1

# Windows
rm -f .gitattributes
echo "node.osx export-ignore" > .gitattributes
echo "Making ZIP for OSX..."
cat .gitattributes
git archive --worktree-attributes --format=zip --output=javascript-win.zip master

# OSX

rm -f .gitattributes
echo "node.exe export-ignore" > .gitattributes
echo "Making ZIP for OSX..."
cat .gitattributes
git archive --worktree-attributes --format=zip --output=javascript-osx.zip master


# Linux
rm -f .gitattributes

echo "Making ZIP for Linux..."
echo "node.exe export-ignore" > .gitattributes
echo "node.osx export-ignore" >> .gitattributes
cat .gitattributes

git archive --worktree-attributes --format=zip --output=javascript.zip master
