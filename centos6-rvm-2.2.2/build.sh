#!/usr/bin/env bash

set -ex

yum update -y 

curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -

curl -sSL https://get.rvm.io | bash -s stable

source /etc/profile.d/rvm.sh

rvm install 2.2.2
rvm use 2.2.2 --default
gem install --no-ri --no-rdoc bundler
