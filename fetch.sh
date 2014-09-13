#!/bin/sh
#usage: deploy <repourl> <deploypath> <tag/commit>

pushd . # store the current directory so we can return to it
if [! -d $1]; then
	mkdir $1
	cd $1 
	git init
else
	cd $1
fi

git fetch $0 --depth 1
git checkout -f $2

popd #return to previous directory
