#!/bin/sh
OS=$1

# rebase
#echo "Rebasing against original git repo..."
#git fetch upstream
#git rebase upstream/master

# Windows
rm -f .gitattributes
rm -f javascript-win.zip

echo "node.osx export-ignore" > .gitattributes
echo "Making ZIP for OSX..."
cat .gitattributes
git archive --worktree-attributes --format=zip --output=javascript-win.zip master

# OSX

rm -f .gitattributes
rm -f javascript-osx.zip
echo "node.exe export-ignore" > .gitattributes
echo "Making ZIP for OSX..."
cat .gitattributes
git archive --worktree-attributes --format=zip --output=javascript-osx.zip master


# Linux
rm -f .gitattributes
rm -f javascript.zip

echo "Making ZIP for Linux..."
echo "node.exe export-ignore" > .gitattributes
echo "node.osx export-ignore" >> .gitattributes
cat .gitattributes

git archive --worktree-attributes --format=zip --output=javascript.zip master

echo "Copying ZIP files to CodeLite's tree"
cp *.zip ../WebTools/
