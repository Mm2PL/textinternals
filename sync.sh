#!/usr/bin/env bash

git submodule update
TAGNAME=$(git -C text tag | tail -n 1)
git -C text checkout "$TAGNAME"  # check out latest tag
cp -vr text/internal/* ./
git add .
git commit -m "Update to $TAGNAME"
git tag "$TAGNAME"
