#!/bin/bash
set -e

apt_kali_installation() {
  if ! dpkg-query --show aria2 html-xml-utils netselect wget>/dev/null 2>&1; then
    sudo apt-get update
    sudo apt-get install -y aria2 html-xml-utils netselect wget
  fi

  wget https://raw.githubusercontent.com/beautifuljunkie/apt-kali/master/apt-kali -O /usr/local/sbin/apt-kali
  chmod +x /usr/local/sbin/apt-kali
  if ! [[ -f /etc/apt-kali.conf ]]; then
    wget https://raw.githubusercontent.com/beautifuljunkie/apt-kali/master/apt-kali.conf -O /etc/apt-kali.conf
  fi
}


if [[ "$EUID" -eq 0 ]]; then
  apt_kali_installation
else
  type sudo >/dev/null 2>&1 || { echo "sudo not installed, change into root context" >&2; exit 1; }

  DECL="$(declare -f apt_kali_installation)"
  sudo bash -c "$DECL; apt_kali_installation"
fi
