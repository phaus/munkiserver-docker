#!/usr/bin/env bash

set -ex

rvm use 2.2.2 --default

cd /usr/share/munkiserver

rails s -e development