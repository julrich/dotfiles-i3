#!/bin/bash
# see: https://gist.github.com/kuznero/f4e983c708cd2bdcadc97be695baacf8
sudo apt-get install \
  cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev \
  libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev \
  libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen \
  xcb-proto libxcb-xrm-dev libasound2-dev libmpdclient-dev \
  libiw-dev libcurl4-openssl-dev libpulse-dev \
  libxcb-composite0-dev xcb libxcb-ewmh2

cd /tmp

# clone the repository
git clone https://github.com/jaagr/polybar.git
cd polybar
git tag # see what version do you need
git checkout 3.4.1

# compile & install
./build.sh
