#!/bin/sh

version=$(jq -r '.version' info.json)
rm autoresearch-fenhl_*.zip
git archive --prefix "autoresearch-fenhl_${version}/" -o "autoresearch-fenhl_${version}.zip" HEAD
