#!/bin/bash

echo $(whoami)
su - travis
# echo $(whoami)

cd /home/travis/builds

# git clone --depth=50 --branch=master https://guanw:9eb4e6ad2e23b20df6e4dd1885cf4aa3c09e83be@github.com/clicktherapeutics/ct152-mobile.git clicktherapeutics/ct152-mobile

# cd clicktherapeutics/ct152-mobile

nvm install node
nvm install -g npm@latest
npm ci
npx jest --ci