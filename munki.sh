#!/usr/bin/env bash

set -ex

export ROOTPASS="rootpass"

export HOSTNAME="0.0.0.0:3000"

yum install -y git libxml2-devel libxslt-devel sqlite-devel ImageMagick ImageMagick-devel

curl --silent --location https://rpm.nodesource.com/setup_8.x | bash -

yum install -y nodejs 

cd /usr/share && git clone https://github.com/phaus/munkiserver.git

cd /usr/share/munkiserver

source /etc/profile.d/rvm.sh

rvm use 2.2.2 --default

bundle install

gem install sqlite3-ruby 

#cp config/database.yml.example config/database.yml

rake db:migrate RAILS_ENV=development

rake bootstrap:all RAILS_ENV=development

# rake assets:development

# rails s -e development

