#!/usr/bin/env bash

set -e
cd "$(dirname "$0")"/../

#clone streamvix repo
git clone https://github.com/qwertyuiop8899/streamvix.git

cd streamvix
git checkout $1
cd ..

mv streamvix/* .