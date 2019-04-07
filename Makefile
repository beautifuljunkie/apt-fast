.PHONY: install uninstall reinstall

install: apt-kali completions/bash/apt-kali
	sh scripts/debinstall
	cp apt-kali /usr/local/bin/
	cp apt-kali.conf /etc/
	mkdir -p /etc/bash_completion.d/
	mkdir -p /usr/share/zsh/functions/Completion/Debian/
	cp completions/bash/apt-kali /etc/bash_completion.d/
	cp completions/zsh/_apt-kali /usr/share/zsh/functions/Completion/Debian/
	chown root:root /etc/bash_completion.d/apt-kali
	chown root:root /usr/share/zsh/functions/Completion/Debian/_apt-kali
	. /usr/share/zsh/functions/Completion/Debian/_apt-kali
	. /etc/bash_completion
	mkdir -p /usr/local/share/man/man8/
	mkdir -p /usr/local/share/man/man5/
	cp man/apt-kali.8 /usr/local/share/man/man8/
	cp man/apt-kali.conf.5 /usr/local/share/man/man5/
	gzip -f9 /usr/local/share/man/man8/apt-kali.8
	gzip -f9 /usr/local/share/man/man5/apt-kali.conf.5
	chmod +x /usr/local/bin/apt-kali
	

uninstall: /usr/local/sbin/apt-kali
	rm -rf /usr/local/bin/apt-kali /etc/apt-kali.conf \
	/usr/local/share/man/man5/apt-kali.conf.5.gz /usr/local/share/man/man8/apt-kali.8.gz \
	/usr/share/zsh/functions/Completion/Debian/_apt-kali /etc/bash_completion.d/apt-kali
	@echo "REMOVED"

/usr/local/bin/apt-kali:
	@echo "Not installed" 1>&2
	@exit 1

reinstall: uninstall install
