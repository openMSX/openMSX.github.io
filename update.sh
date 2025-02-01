#!/bin/sh

# fail on exit
set -e

rm -rf tmp
mkdir -p tmp
cd tmp

# main website (requires PHP 7+ to build)
git clone --depth 1 https://github.com/openMSX/htdocs.git
make -C htdocs

# openMSX documentation
git clone --depth 1 https://github.com/openMSX/openMSX.git

# catapult documentation
git clone --depth 1 https://github.com/openMSX/wxcatapult.git
