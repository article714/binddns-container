#!/bin/bash

apt-get update
apt-get upgrade -yq

export LANG=en_US.utf8

# Install needed python-dev packages
LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -qy --no-install-recommends bind9 bind9utils bind9-dyndb-ldap dnsutils

#--
# Cleaning
apt-get -yq clean
apt-get -yq autoremove
rm -rf /var/lib/apt/lists/*
