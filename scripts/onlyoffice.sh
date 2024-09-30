#!/bin/bash

apt update -y
apt upgrade -y

cd /tmp
git clone https://github.com/cryptpad/cryptpad.git cryptpad
cd cryptpad
git checkout 2024.6.1
npm ci
npm run install:components
./install-onlyoffice.sh
cp config/config.example.js config/config.js
node server