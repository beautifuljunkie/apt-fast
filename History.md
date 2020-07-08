
n.n.n / 2019-04-08
==================

  * make install of bash completion work
  * further changes that were forgotten
  * ammended file locations/names
  * filename changes
  * changed install location
  * changed quick install link and removed anything ubuntu
  * Made it more in tune for KALI LINUX
  * Set theme jekyll-theme-midnight
  * Update README.md
  * update debinstall
  * Kali-compliant
  * Fix clean command on clean system. Closes #147 (untested)
  * Fix bash completion. Closes #145
  * Fix return value for clean command
  * Don't pipe downloader command through sed. Closes #140
  * Cleanup of download list during trap.
  * Fix aria checksum support with non-English locale. Closes #139
  * Update README (proxy)
  * Fix source option. Closes #138
  * Support http(s) and ftp proxies. Closes #115
  * Show download size and files with download and source option too.
  * Fix hash checksums correctly resolve to aria2 naming.
  * Fix logical issue causing crash with missing DLLIST permissions
  * Disable apt command line usage warning. Closes #137
  * Fix Readme
  * Update copyright, release apt-fast 1.9
  * Don't run APTMGR with --download-only/-d. Closes #136
  * Don't overwrite option variable with different type.
  * Update documentation about MIRRORS
  * Fix default options DOWNLOADBEFORE, VERBOSE_OUTPUT
  * Consistently use msg() for output.
  * Support all Debian repository checksum algorithms.
  * Fix useless use of numfmt padding before formatting.
  * Remove "Working..." after download file is generated.
  * Download size and formatted package listing. Closes #84 and closes #134
  * Update manpages (update download cmd).
  * Update manpages.
  * quick-install.sh improvements, closes #112
  * Sanitise code with shellcheck. Closes #101
  * Use getopts (shell builtin) to parse options. Closes #133
  * Remove space before default options.
  * Downloader file handling. Closes LP #1576587
  * Case statements instead of elifs. Closes #50
  * install to /usr/local hierarchy (Closes #108) (#124)
  * Add file existance test and test if DLLIST is empty.
  * Directly abort if package manager can't get uri list.
  * Set default value 5 for _MAXNUM as fallback in wrapper.
  * Update DOWNLOADBEFORE in README with default value.
  * Add all config file options to README
  * Run "apt-get update" before "apt-get install" (#118)
  * Refactor apt-fast syntax to prevent potential issues (#119)
  * Add "Table of Contents" for README.md (#121)
  * README.md syntax highlight (#116)
  * Ignore local aria2 configuration file. Closes #126
  * Fix completions (#122)
  * apt improvements (#125)
  * Improve quick-install.sh (#130)
  * Reactivate official apt-fast PPA.
  * Merge pull request #107 from lordloh/patch-1
  * Merge pull request #106 from fusion809/patch-1
  * Merge pull request #103 from agultiga/patch-1
  * Changed the default DLDIR for the download manager
  * Adding quick-install script
  * Create quick-install.sh
  * xxxdebthttp:// error \t don't translate into Tab
  * Merge pull request #97 from varhub/fix/pkg-version-must-be-decoded
  * Merge pull request #96 from varhub/revert-91/print-uris-requires-filtering
  * md5 patch: package version must be decoded to use it
  * get_uris(): recover grep filtering
  * Merge pull request #94 from PeterDaveHello/patch-1
  * Update Makefile
  * Merge pull request #93 from PeterDaveHello/make
  * Merge pull request #74 from techgaun/master
  * Merge pull request #71 from dawez/master
  * add Makefile to help install
  * Merge pull request #92 from varhub/hotfix/correct-way-to-solve-non-md5-uris
  * fix get_uris() bug introduced at #91
  * Merge pull request #91 from varhub/hotfix/workaround-for-non-md5-uris
  * rewrite get_uris() to overcome SHA256 issue
  * Merge pull request #76 from alanhoff/master
  * Typo in my name and also link it to my GitHub account
  * Added various aria2c args as config - maximum number of connection per server - split connection - split size - piece selection algorithm
  * Merge pull request #72 from sammcj/patch-1
  * Merge pull request #73 from sammcj/patch-2
  * Correct typo with aria2c usage
  * Clarify documentation wording and correct typos
  * Fixing _comp_dpkg_installed_packages problem #51
  * Merge pull request #70 from nthykier/patch-2
  * Quote "$@" to preserve original quoting
  * Merge pull request #69 from foxx/patch-1
  * typo
  * Added summary of commands for easy copy/paste
  * Merge pull request #67 from PeterDaveHello/patch-1
  * Update README.md
  * Merge pull request #64 from PeterDaveHello/enhance_aria2c_parallel
  * Merge pull request #63 from PeterDaveHello/patch-1
  * add -s parameter for aria2c to enhance parallel
  * add --min-split-size=1M parameter for aria2c to enhance parallel
  * add -x parameter for aria2c in apt-fast.conf (forgot in 95f79b1)
  * Update README.md
  * Merge pull request #62 from PeterDaveHello/patch-1
  * Update ppa info, refer to #58
  * Merge pull request #61 from PeterDaveHello/patch-1
  * add -x parameter for aria2c to speed up downloading
  * Merge pull request #52 from shlomif/master
  * Remove trailing space.
  * Correct a typo.
  * Update README: New contributor maclarke
  * Merge pull request #46 from maclarke/flock
  * Remove dependency on lockfile-progs
  * Merge pull request #45 from maclarke/test-CONFFILE
  * Only load the config file if it exists
  * Merge pull request #43 from sarigalin/patch-1
  * Update README.md
  * Fix spelling errors if MAXNUM is not set. Closes: #42
  * Merge pull request #41 from Lasall/multiple-mirrors
  * Only grep http(s)|(s)ftp links. Only these are supported by aria2.
  * Check if Dir::Cache::archives::apt-fast-partial is already set.
  * Build APT paths completely with apt-config.
  * Fix grepping for URI.
  * Check checksums.
  * Small fixes.
  * Merge branch 'master' of github.com:ilikenwf/apt-fast
  * Support downloading from multiple mirrors for one archive.
  * m: update README over webinterface
  * Update README (copyright holders visible with parsed markdown); m
  * Proper default / config file / environment variables handling.
  * Tweek README over webinterface.
  * Update README.
  * Add zsh completion. Closes #40
  * Only name minor version (and not patch version) in manpage(s).
  * Add new option APT_FAST_TIMEOUT. Closes lp:1045765
  * Fix installation issue (package manager forked to background).
  * Merge pull request #39 from Lasall/f40daa62b3a5f096290a9d68308c49366f828ab3
  * Merge pull request #38 from Lasall/envvars-37
  * Add me to copyright disclaimer.
  * Export environment variables from non-root in root context.
  * Merge pull request #35 from Lasall/changelogcmd
  * Fix typo.
  * New command supported: changelog. Update bash completion.
  * Merge pull request #34 from Lasall/33_readmefix
  * Fix manpage names in README. Closes #33
  * Merge pull request #32 from Lasall/lasall
  * Fix description mistake in manpage.
  * Merge pull request #31 from Lasall/lasall
  * New option: source; Lockfile handling with lockfile-progs; Minor changes.
  * Merge pull request #30 from Lasall/downloadcmd
  * Support new command: "download" . Update manpage.
  * Merge pull request #29 from Lasall/manpages
  * Add man pages. Update README.
  * Merge pull request #28 from doherty/master
  * Typo fix (previously accidentally a whole word)
  * Merge pull request #26 from Lasall/assume-yes
  * If "assume yes" switch is enabled also enable $DOWNLODBEFORE.
  * Merge pull request #25 from Lasall/24-m-impr
  * buld-dep option, check color support, 'basic' support of regular expressions
  * Merge pull request #23 from Lasall/22-option-passing
  * Fix (un)kown option checking. Closes #22
  * Merge pull request #21 from Lasall/18-unknown-options
  * Only check for known options. Let package manager decide the rest.
  * Simple check if option is known. Should close #18.
  * Merge pull request #20 from Lasall/15-m
  * Check _APTMGR and add setting to skip download confirmation.
  * Merge pull request #19 from Lasall/ilikenwf-imp
  * Add update option, change default download behavior, some minor changes.
  * Merge pull request #12 from Burnfaker/patch-11
  * Merge pull request #14 from Burnfaker/patch-12
  * Moved any variables to the conf file
  * Moved variables from MAIN Script User can change any variables self
  * I have  rewritten the script one more time. First, there will be a first query and then the download if the user agrees. The variables have been moved into the config. Notes and Queries are now color coded.
  * Merge pull request #9 from Burnfaker/patch-9
  * Reduced Lockfile downtime befor remove from 10 sec. to 2 sec.
  * Update README
  * Merge pull request #7 from Burnfaker/patch-7
  * a little bugfix by line 1
  * Merge pull request #6 from Burnfaker/patch-1
  * fixed line 21
  * fix readme
  * Add lockfile fixes and external config file, thanks to @Burnfaker
  * Update README
  * add full-upgrade support for aptitude
  * version bump v1.5
  * that should be if the directory exists or not...whoops!
  * add choice of apt manager...note we always use apt-get for outputting the list - aptitude doesn't do this ...thanks @omega8cc for the idea
  * make more reliable in the case of stopped downloads - thanks @eklavya
  * make the {} brackets prettier
  * fix a line break
  * add better lock handling and downloader execution - thanks to Luca Marchetti for the patch!
  * version bump
  * Merge branch 'master' of https://github.com/cartoonist/apt-fast into cartoonist-master
  * logic fix
  * readability fix
  * add other options...
  * whoops, forgot to readd...
  * remove the .sh extension and set +x by default
  * fixed control flows
  * add choice of downloader, lock file use... NOT TESTED! I need testers :)
  * add the autocomplete file and mention it in readme
  * move the first autocomplete to it's own tag
  * add the autocompletion file
  * cleanup readme
  * initial commit with readme and current apt-fast version
