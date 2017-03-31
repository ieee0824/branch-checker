#!/bin/bash

GIT_BRANCH=`git branch | grep \* | cut -d ' ' -f2`


if echo "$GIT_BRANCH" | grep '/'; then
	echo "$GIT_BRANCH has '/'. This is illegal branch name." >&2
	exit 255
fi
exit 0
