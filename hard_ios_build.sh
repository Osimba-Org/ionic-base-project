#!/bin/zsh
echo 'setting up build for ios with removing ios electron android www folders and building from scratch'
rm -rf ios electron android www
ionic build
ionic cap add ios
ionic cap run ios --external -l