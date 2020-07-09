#!/bin/bash
set -e

apt_kali_installation() {
  if ! dpkg-query --show aria2 html-xml-utils netselect wget>/dev/null 2>&1; then
    sudo apt-get update
    sudo apt-get install -y aria2 html-xml-utils netselect wget
  fi 
}


  apt_kali_installation

