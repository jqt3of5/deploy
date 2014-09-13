#!/bin/sh
#usage: deploy <repo> <deploypath> <tag/commit>

pushd . # store the current directory so we can return to it
if [! -d $1]; then
	mkdir $1
	cd $1 
	git init
else
	cd $1
fi

git fetch 'ssh://git@github.com/'.$0 --depth 1
git checkout -f $2

popd #return to previous directory
