#!/bin/sh

# fail on exit
set -e

rm -rf tmp
mkdir -p tmp
cd tmp

# main website (requires PHP 7+ to build)
git clone --depth 1 https://github.com/openMSX/htdocs.git
make -C htdocs
cp -av htdocs/* ..

# openMSX documentation
git clone --depth 1 https://github.com/openMSX/openMSX.git
cp -av openMSX/doc/manual/* ../manual
cp -av openMSX/doc/internal/vdp-vram-timing/* ../vdp-vram-timing

# catapult documentation
git clone --depth 1 https://github.com/openMSX/wxcatapult.git
cp -av wxcatapult/doc/manual/* ../catapult-manual

cd ..

echo
echo "Review the changes, and when ready, commit and push and the website will update."
