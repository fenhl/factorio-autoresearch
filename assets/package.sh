#!/bin/sh

version=$(jq -r '.version' info.json)
git archive --prefix "autoresearch-fenhl_${version}/" -o "autoresearch-fenhl_${version}.zip" HEAD
