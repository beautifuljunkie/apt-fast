<!---
apt-kali v1.9.1
Use this just like aptitude or apt-get for kalier package downloading
this version has pretty much the same apt-kali features just that its 
designed for KALI-LINUX

You may distribute this file under the terms of the GNU General
Public License as published by the Free Software Foundation; either
version 3 of the License, or (at your option) any later version.
-->

apt-kali 1.9.1
============
apt-kali is a shellscript wrapper for apt-get and aptitude that can drastically improve apt download times by downloading packages in parallel, with multiple connections per package.

## Table of Contents

- [Installation](#installation)
  - [Ubuntu PPA](#ubuntu-ppa)
  - [Quick Install](#quick-install)
  - [Manual](#manual)
  - [Autocompletion](#autocompletion)
    - [Bash](#bash)
    - [Zsh](#zsh)
  - [Man page installation](#man-page-installation)
- [Configuration](#configuration)
  - [Package manager](#package-manager)
  - [Confirmation dialog](#confirmation-dialog)
  - [Maximum connections](#maximum-connections)
  - [Maximum connections per server](#maximum-connections-per-server)
  - [Maximum connections per file](#maximum-connections-per-file)
  - [File split size](#file-split-size)
  - [Piece selection algorithm](#piece-selection-algorithm)
  - [Downloadmanager file](#downloadmanager-file)
  - [Downloadmanager command](#downloadmanager-command)
    - [Proxy](#proxy)
  - [Download folder](#download-folder)
  - [APT archives cache](#apt-archives-cache)
  - [Source list location](#source-list-location)
  - [Verbose output](#verbose-output)
  - [Colors](#colors)
- [License](#license)
- [Special thanks](#special-thanks)

Installation
------------

### Quick Install ###
You can quickly install `apt-kali` by running:

```bash
/bin/bash -c "$(curl -sL https://git.io/fjtUP)"
```

### Manual ###
A manual install can be performed as such:

```sh
cp apt-kali /usr/local/sbin/
chmod +x /usr/local/sbin/apt-kali
cp apt-kali.conf /etc
```

You need to have installed:
[aria2c](http://aria2.sourceforge.net/) 
[wget](https://ftp.gnu.org/gnu/wget/)
[html-xml-utils](https://www.w3.org/Tools/HTML-XML-utils/)
[netselect](http://github.com/apenwarr/netselect)

```sh
apt-get install aria2 wget html-xml-utils netselect
```

Then simply run apt-kali instead of apt-get or aptitude.


### Autocompletion ###
#### Bash ####

```sh
cp completions/bash/apt-kali /etc/bash_completion.d/
chown root:root /etc/bash_completion.d/apt-kali
. /etc/bash_completion
```

#### Zsh ####

```sh
cp completions/zsh/_apt-kali /usr/share/zsh/functions/Completion/Debian/
chown root:root /usr/share/zsh/functions/Completion/Debian/_apt-kali
source /usr/share/zsh/functions/Completion/Debian/_apt-kali
```

### Man page installation ###

```sh
mkdir -p /usr/local/share/man/man8/
cp ./man/apt-kali.8 /usr/local/share/man/man8
gzip -f9 /usr/local/share/man/man8/apt-kali.8
mkdir -p /usr/local/share/man/man5/
cp ./man/apt-kali.conf.5 /usr/local/share/man/man5
gzip -f9 /usr/local/share/man/man5/apt-kali.conf.5
```

Configuration
-------------
The apt-kali configuration file is located at: `/etc/apt-kali.conf`


### Package manager ###
```sh
_APTMGR=apt
```
Change package manager used for installation. Supported are apt-get, aptitude, apt.


### Confirmation dialog ###
```sh
DOWNLOADBEFORE=true
```
To suppress apt-kali confirmation dialog and download packages directly set this to any value. To ask for confirmation, leave empty. This options doesn't affect package manager confirmation.


### Maximum connections ###
```sh
_MAXNUM=5
```
Set to maximum number of connections aria2c uses.


### Maximum connections per server ###
```sh
_MAXCONPERSRV=10
```
Set to maximum number of connections per server aria2c uses.


### Maximum connections per file ###
```sh
_SPLITCON=8
```
Set to maximum number of connections per file aria2c uses.


### File split size ###
```sh
_MINSPLITSZ=1M
```
Set to size of each split piece. Possible values: 1M-1024M


### Piece selection algorithm ###
```sh
_PIECEALGO=default
```
Set to piece selection algorithm to use. Possible values: default, inorder, geom


### Downloadmanager file ###
```sh
DLLIST='/tmp/apt-kali.list'
```
Location of aria2c input file, used to download the packages with options and checksums.


### Downloadmanager command ###
```sh
_DOWNLOADER='aria2c --no-conf -c -j ${_MAXNUM} -x ${_MAXCONPERSRV} -s ${_SPLITCON} -i ${DLLIST} --min-split-size=${_MINSPLITSZ} --stream-piece-selector=${_PIECEALGO} --connect-timeout=600 --timeout=600 -m0'
```
Change the download manager or add additional options to aria2c.

#### Proxy ####
apt-kali uses APT's proxy settings (`Acquire::http::proxy`, `Acquire::https::proxy`, `Acquire::ftp::proxy`) and if those are not available, the environment settings (`http_proxy`, `https_proxy`, `ftp_proxy`). Refer to APT's or the system's documentation.


### Download folder ###
```sh
DLDIR='/var/cache/apt/archives/apt-kali'
```
Directory where apt-kali downloads the packages.


### APT archives cache ###
```sh
APTCACHE='/var/cache/apt/archives'
```
Directory where apt-get and aptitude download packages.

### Source list location ###
```sh
SOURCELIST='/etc/apt/sources.list'
```
When you use the 'update-source' arg this is where it will add the kaliest kali repo. Source repo will be unlocked by default
***!!! ANY OTHER KALI REPOS IN SOURCE LIST WILL BE REPLACED !!!***


### Verbose output ###
```sh
VERBOSE_OUTPUT=y
```
Show aria2 download file instead of package listing before download confirmation. Unset to show package listing.


### Colors ###
```sh
cGreen='\e[0;32m'
cRed='\e[0;31m'
cBlue='\e[0;34m'
endColor='\e[0m' 
```
Terminal colors used for dialogs. Refer to [ANSI Escape sequences](http://ascii-table.com/ansi-escape-sequences.php) for a list of possible values. Disabled when not using terminal.


License
-------
Consider apt-kali and all of its derivatives licensed under the GNU GPLv3+.

Copyright: 2008-2012 Matt Parnell, http://www.mattparnell.com

Improvements, maintenance, revisions - 2012, 2017-2018 Dominique Lasserre


Special thanks
--------------
 * Matt Parnell, http://www.mattparnell.com - Copyright: 2008-2012 
 * Dominique Lasserre - Improvements, maintenance, revisions - 2012, 2017-2018
 * Travis/travisn000 - support for complex apt-get commands
 * [Alan Hoffmeister](https://github.com/alanhoff) - aria2c support
 * Abhishek Sharma - aria2c with proxy support
 * Luca Marchetti - improvements on the locking system and downloader execution
 * Richard Klien - Autocompletion, Download Size Checking (made for on ubuntu, untested on other distros)
 * Patrick Kramer Ruiz - suggestions
 * Sergio Silva - test to see if axel is installed, root detection/sudo autorun, lock file check/creation
 * Waldemar {BOB}{Burnfaker} Wetzel - lockfile improvements, separate config file
 * maclarke - locking improvements
