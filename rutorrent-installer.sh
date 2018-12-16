#!/bin/bash
# ***** BEGIN LICENSE BLOCK *****
# Version: MPL 2.0
#
# The contents of this file are subject to the Mozilla Public License Version
# 2.0 (the "License"); you may not use this file except in compliance with
# the License. You may obtain a copy of the License at
# http://www.mozilla.org/MPL/
#
# Software distributed under the License is distributed on an "AS IS" basis,
# WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
# for the specific language governing rights and limitations under the
# License.
#
# The Original Code is IRC Auto Downloader
#
# The Initial Developer of the Original Code is
# David Nilsson.
# Portions created by the Initial Developer are Copyright (C) 2010, 2011
# the Initial Developer. All Rights Reserved.
#
# Contributor(s):
# Etienne Rached
# https://github.com/etiennerached
# http://www.tech-and-dev.com/2013/04/installing-rutorrent-on-centos-and-debian.html
#
# tillmanj
# https://github.com/tillmanj
#
# 
# The original script was hosted on http://sourceforge.net/projects/autodl-irssi/files/autodl-setup/download
# However the SVNs are dead and no longer working properly
# So I decided to fix the URLs and upload it in here
#
# ***** END LICENSE BLOCK *****

# changing to the community fork of autodl-irssi (http://autodl-community.com/)
AUTODL_IRSSI_ZIP_URL="https://github.com/autodl-community/autodl-irssi/archive/master.zip"
SVN_PATH_RUTORRENT_PLUGIN="https://svn.code.sf.net/p/autodl-irssi/code/trunk/rutorrent/autodl-irssi"

WEBMIN_URL="http://www.webmin.com/download/webmin-current.tar.gz"

RUTORRENT_TRUNK_DIR="https://rutorrent.googlecode.com/svn/trunk"

# The official tarballs are tried if subversion fails.
RUTORRENT_VERSION="3.8"
RUTORRENT_CORE_NAME="rutorrent-$RUTORRENT_VERSION.tar.gz"
RUTORRENT_PLUGINS_NAME="plugins-$RUTORRENT_VERSION.tar.gz"
RUTORRENT_CORE_URL="https://dl.bintray.com/novik65/generic/$RUTORRENT_CORE_NAME"
RUTORRENT_PLUGINS_URL="http://dl.bintray.com/novik65/generic/$RUTORRENT_PLUGINS_NAME"
#RUTORRENT_CORE_URL2="http://sourceforge.net/projects/autodl-irssi/files/inst-files/$RUTORRENT_CORE_NAME/download"
#RUTORRENT_PLUGINS_URL2="http://sourceforge.net/projects/autodl-irssi/files/inst-files/$RUTORRENT_PLUGINS_NAME/download"

RUTORRENT_PLUGINS=

# These are the ruTorrent plugins that will get installed. To remove one, either
# remove the whole line or comment it (prepend a '#' to the start of the line).
# If the line starts with '#', the plugin is not installed.
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS _getdir"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS _noty"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS _task"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS autotools"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS check_port"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS chunks"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS cookies"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS cpuload"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS create"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS data"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS datadir"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS diskspace"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS edit"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS erasedata"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS extsearch"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS feeds"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS filedrop"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS geoip"
#RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS history"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS httprpc"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS ipad"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS loginmgr"
#RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS lookat"
#RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS mediainfo"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS ratio"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS retrackers"
#RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS rpc"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS rss"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS rssurlrewrite"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS rutracker_check"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS scheduler"
#RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS screenshots"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS seedingtime"
#RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS show_peers_like_wtorrent"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS source"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS theme"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS throttle"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS tracklabels"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS trafic"
RUTORRENT_PLUGINS="$RUTORRENT_PLUGINS unpack"

# For building rtorrent
LIBCURL_NAME="curl-7.39.0"
LIBCURL_URL="http://curl.haxx.se/download/$LIBCURL_NAME.tar.gz"
SIGCPP20_NAME="libsigc++-2.4.0"
SIGCPP20_URL="http://ftp.gnome.org/pub/GNOME/sources/libsigc++/2.4/$SIGCPP20_NAME.tar.gz"
XMLRPC_SVN_DIR="https://svn.code.sf.net/p/xmlrpc-c/code/stable"
LIBTORRENT_VERSION="0.13.6"
LIBTORRENT_NAME="libtorrent-$LIBTORRENT_VERSION"
LIBTORRENT_URL="http://rtorrent.net/downloads/$LIBTORRENT_NAME.tar.gz"
LIBTORRENT_URL2="https://github.com/arvidn/libtorrent/archive/$LIBTORRENT_NAME.tar.gz"
# bumped rtorrent to most recent stable
RTORRENT_VERSION="0.9.6"
RTORRENT_NAME="rtorrent-$RTORRENT_VERSION"
RTORRENT_URL="http://rtorrent.net/downloads/$RTORRENT_NAME.tar.gz"
#RTORRENT_URL2="http://sourceforge.net/projects/autodl-irssi/files/inst-files/$RTORRENT_NAME.tar.gz/download"

HTPASSWD_PY_SCRIPT_URL="http://trac.edgewall.org/export/10433/trunk/contrib/htpasswd.py"
HTPASSWD_PY_SCRIPT_URL2="http://sourceforge.net/projects/autodl-irssi/files/inst-files/htpasswd.py/download"

# bumped nginx to most recent stable
NGINX_NAME="nginx-1.10.3"
NGINX_URL="http://nginx.org/download/$NGINX_NAME.tar.gz"

LIGHTTPD_NAME="lighttpd-1.4.35"
LIGHTTPD_URL="http://download.lighttpd.net/lighttpd/releases-1.4.x/$LIGHTTPD_NAME.tar.gz"

# bumped scgi version
MOD_SCGI_VERSION="1.15"
MOD_SCGI_URL="http://python.ca/scgi/releases/scgi-$MOD_SCGI_VERSION.tar.gz"

UNRAR_VERSION="4.0.7"
UNRAR_URL="http://www.rarlab.com/rar/unrarsrc-$UNRAR_VERSION.tar.gz"

# Dirs relative to user's home directory
RTORRENT_REL_DOWNLOAD_DIR="downloads"
RTORRENT_REL_WATCH_DIR="rtorrent/watch"
RTORRENT_REL_SESSION_DIR="rtorrent/session"

REQUIRED_PERL_MODULES="Time::HiRes XML::LibXML Archive::Zip Net::SSLeay HTML::Parser Digest::SHA1 JSON"
REQUIRED_PHP_MODULES="json xml sockets"

# If set to y, add 'load perl' to .irssi/startup
IRSSI_LOAD_PERL=n
IGNORE_IRSSI=n

# Start port. When we need a new port number, this port is incremented by one.
CURRENT_PORT=23875
DEFAULT_PORT_FTP=21

DEFAULT_PORT_FTPES=990
DEFAULT_UMASK=022
RPC_PREFIX=RPC

LSB_DEFAULT_START="2 3 4 5"
LSB_DEFAULT_STOP="0 1 6"

# Setting these to anything other than 80 and 443 may not work with Apache (since the
# code assumed it would always be 80 and 443).
HTTP_PORT=80
HTTPS_PORT=443

SCGI_HOST="127.0.0.1"

INTERACTIVE=n
USE_RUTORRENT_PLUGIN=n
REINSTALL_RUTORRENT_PLUGIN=n
INSTALL_AUTODL_IRSSI=n
RUTORRENT_PASSWORD_PROTECTED=n
USERS=
RUTORRENT_BASE_PATH=
INSTALL_STARTUP_SCRIPT=n
BUILD_RTORRENT=n
INSTALL_WEB_SERVER=
INSTALL_RUTORRENT=n
INSTALL_VSFTPD=n
FTP_PORT=
USE_ENCRYPTED_FTP=n
INSTALL_WEBMIN=n
USER_TIMEZONE=

RUTORRENT_SITE_REALM="My ruTorrent web site"
AUTODL_STARTUP_DESC="Start autodl-irssi and rtorrent"
PHPCGI_STARTUP_DESC="Start php-cgi"
NGINX_STARTUP_DESC="Start nginx"
LIGHTTPD_STARTUP_DESC="Start lighttpd"

PATH="$PATH:/usr/local/bin"

# Find an echo that supports -e
echo=echo
for cmd in echo /bin/echo; do
	$cmd >/dev/null 2>&1 || continue
	if ! $cmd -e "" | grep -qE '^-e'; then
		echo=$cmd
		break
	fi
done

CSI=$($echo -e "\033[")
CEND="${CSI}0m"
CDGREEN="${CSI}32m"
CRED="${CSI}1;31m"
CGREEN="${CSI}1;32m"
CYELLOW="${CSI}1;33m"
CBLUE="${CSI}1;34m"
CMAGENTA="${CSI}1;35m"
CCYAN="${CSI}1;36m"
CQUESTION="$CMAGENTA"
CWARNING="$CRED"
CMSG="$CCYAN"

errorExit() {
	cat << EOF
$CWARNING
***ERROR***
$*
***ERROR***
$CEND
Help forum: ${CGREEN}http://sourceforge.net/apps/phpbb/autodl-irssi/$CEND
EOF
	exit 1
}

exitHelp() {
	cat << EOF

autodl-irssi and ruTorrent plugin installer

    sh $0 [options]

Options:

--rtorrent
    Will build and install rtorrent, libtorrent and xmlrpc-c from source code.

--rtorrent-noexec-patch
    Patch rtorrent to disallow remote users from executing code.

--apache
    Install Apache web server.

--nginx
    Install nginx web server.

--lighttpd
    Install lighttpd web server.

--rutorrent
    Install ruTorrent. Requires a web server, eg. --apache.

--vsftpd
    Install vsftpd.

--ftpes
    Use encrypted FTP (FTPES).

--ftp-port <port>
    FTP server port.

--webmin
    Install Webmin.

-p
--rutorrent-plugin
    Use or install the autodl-irssi ruTorrent plugin. If it's already installed,
    it will be updated (svn up), unless --reinstall-plugin option is used in
    which case it will be re-installed.

-i
--reinstall-plugin
    Re-install the autodl-irssi ruTorrent plugin if it's already installed.

-a
--install-autodl
    Install autodl-irssi.

-u user:autodlPass:webUser:webPass
--user user:autodlPass:webUser:webPass
    The $(uname -s) user, autodl-irssi password, ruTorrent user, ruTorrent password.
    You can use more than one -u option. If autodlPassword is not set, a random
    password will be used.

-w
--password-protected
    Use this option if ruTorrent is password protected. It's required if you
    want to use more than one ruTorrent user. Not needed if you install
    ruTorrent.

-r PATH
--rutorrent-base-path PATH
    Path to ruTorrent, eg. /var/www/rutorrent. Not needed if you install
    ruTorrent.

-s
--install-startup-script
    Install a startup script (service) which will start Irssi and rtorrent when
    the computer boots.

-h
--help
    Show this help text

Examples (as root user):

  sh $0 --rtorrent --apache --rutorrent --vsftpd --ftpes --webmin -p -a -s -u user1::user1:pass1 -u user2::user2:pass2

Installs rtorrent, Apache, ruTorrent, vsftpd (encrypted), Webmin the
autodl-irssi plugin, autodl-irssi, installs a service (starting Irssi and
rtorrent) for both users.

  sh $0 -p -a -u user::user:pass -r /var/www/rutorrent -s

Installs autodl-irssi + ruTorrent plugin for user 'user'. ruTorrent has not been
password protected. Also installs the startup script.

  sh $0 -p -a -u user1::user1:pass1 -u user2::user2:pass2 -w -r /var/www/rutorrent -s

Installs autodl-irssi + ruTorrent plugin for users 'user1' and 'user2'.
ruTorrent has been password protected. Also installs the startup script.

  sh $0 --rtorrent -a -u user1 -u user2 -u user3 -u user4 -s

Installs rtorrent, autodl-irssi and the startup script.

Help forum: http://sourceforge.net/apps/phpbb/autodl-irssi/
EOF
	exit 1
}

parseCommandLine() {
	while [ $# -gt 0 ]; do
		local arg="$1"
		shift

		if [ "$arg" = "-p" ] || [ "$arg" = "--rutorrent-plugin" ]; then
			USE_RUTORRENT_PLUGIN=y
		elif [ "$arg" = "-i" ] || [ "$arg" = "--reinstall-plugin" ]; then
			REINSTALL_RUTORRENT_PLUGIN=y
		elif [ "$arg" = "-a" ] || [ "$arg" = "--install-autodl" ]; then
			INSTALL_AUTODL_IRSSI=y
		elif [ "$arg" = "-u" ] || [ "$arg" = "--user" ]; then
			USERS="$USERS $1"
			shift
		elif [ "$arg" = "-w" ] || [ "$arg" = "--password-protected" ]; then
			RUTORRENT_PASSWORD_PROTECTED=y
		elif [ "$arg" = "-r" ] || [ "$arg" = "--rutorrent-base-path" ]; then
			RUTORRENT_BASE_PATH="$1"
			shift
		elif [ "$arg" = "-s" ] || [ "$arg" = "--install-startup-script" ]; then
			INSTALL_STARTUP_SCRIPT=y
		elif [ "$arg" = "--rtorrent" ]; then
			BUILD_RTORRENT=y
		elif [ "$arg" = "--apache" ]; then
			INSTALL_WEB_SERVER=apache
		elif [ "$arg" = "--nginx" ]; then
			INSTALL_WEB_SERVER=nginx
		elif [ "$arg" = "--lighttpd" ]; then
			INSTALL_WEB_SERVER=lighttpd
		elif [ "$arg" = "--rutorrent" ]; then
			INSTALL_RUTORRENT=y
		elif [ "$arg" = "--vsftpd" ]; then
			INSTALL_VSFTPD=y
		elif [ "$arg" = "--ftpes" ]; then
			USE_ENCRYPTED_FTP=y
		elif [ "$arg" = "--ftp-port" ]; then
			FTP_PORT="$1"
			shift
		elif [ "$arg" = "--webmin" ]; then
			INSTALL_WEBMIN=y
		else
			exitHelp
		fi
	done
}

# Sets os and os_long to the OS type and OS name respectively
detectOs() {
	local DISTRIB_ID=
	local DISTRIB_DESCRIPTION=
	if [ -f /etc/lsb-release ]; then
		. /etc/lsb-release
	fi

	if [ -f /etc/fedora-release ]; then
		os=fedora
		os_long="$(cat /etc/fedora-release)"
	# Must be before PCLinuxOS, Mandriva, and a whole bunch of other OS tests
	elif [ -f /etc/unity-release ]; then
		os=unity
		os_long="$(cat /etc/unity-release)"
	elif [ -f /etc/pclinuxos-release ]; then
		os=pclinuxos
		os_long="$(cat /etc/pclinuxos-release)"
	elif [ "$DISTRIB_ID" = "Ubuntu" ]; then
		os=debian
		os_long="$DISTRIB_DESCRIPTION"
	elif [ "$DISTRIB_ID" = "LinuxMint" ]; then
		os=debian
		os_long="$DISTRIB_DESCRIPTION"
	# Must be before Debian
	elif [ "$DISTRIB_ID" = "Peppermint" ]; then
		os=debian
		os_long="$DISTRIB_DESCRIPTION"
	elif [ "$DISTRIB_ID" = "MEPIS" ]; then
		os=debian
		os_long="$DISTRIB_DESCRIPTION"
	elif [ -f /etc/clearos-release ]; then
		os=fedora
		os_long="$(cat /etc/clearos-release)"
	elif [ -f /etc/pardus-release ]; then
		os=pardus
		os_long="$(cat /etc/pardus-release)"
	elif [ -f /etc/chakra-release ]; then
		os=arch
		os_long="Chakra $(cat /etc/chakra-release)"
	elif [ -f /etc/frugalware-release ]; then
		os=frugalware
		os_long="$(cat /etc/frugalware-release)"
	# Must test this before Gentoo
	elif [ -f /etc/sabayon-release ]; then
		os=sabayon
		os_long="$(cat /etc/sabayon-release)"
	elif [ -f /etc/arch-release ]; then
		os=arch
		os_long="Arch Linux"
	elif [ -f /etc/gentoo-release ]; then
		os=gentoo
		os_long="$(cat /etc/gentoo-release)"
	elif [ -f /etc/SuSE-release ]; then
		os=opensuse
		os_long="$(grep SUSE /etc/SuSE-release | head -n1)"
	elif [ -f /etc/debian_version ]; then
		os=debian
		local prefix=
		if ! uname -s | grep -q GNU; then
			prefix="GNU/"
		fi
		os_long="Debian $prefix$(uname -s) $(cat /etc/debian_version)"
	# Must test for mandriva before centos since it also has /etc/redhad-release
	elif [ -f /etc/mandriva-release ]; then
		os=mandriva
		os_long="$(cat /etc/mandriva-release)"
	elif [ -f /etc/redhat-release ]; then
		os=fedora
		os_long="$(cat /etc/redhat-release)"
	elif [ -f /etc/vector-version ]; then
		os=slaptget
		os_long="VectorLinux $(cat /etc/vector-version)"
	elif [ -f /etc/slackware-version ]; then
		if isProgramInstalled slapt-get; then
			os=slaptget
			os_long="$(cat /etc/slackware-version)"
		else
			os=other
			os_long="$(cat /etc/slackware-version)"
		fi
	elif [ $(uname -s) = "FreeBSD" ]; then
		os=freebsd
		os_long=FreeBSD
	elif [ $(uname -s) = "DragonFly" ]; then
		os=dragonfly
		os_long="DragonFly BSD"
	elif [ $(uname -s) = "OpenBSD" ]; then
		os=openbsd
		os_long=OpenBSD
	elif [ $(uname -s) = "NetBSD" ]; then
		os=netbsd
		os_long=NetBSD
	else
		os=other
		os_long="$(uname -s)"
	fi

	os_long="${os_long:-$(uname -s)}"
}

# In-place editing like sed -i but more portable...
sed_i() {
	local cmd="$1"
	local file="$2"
	isProgramInstalled ed || errorExit "ed is not installed!"
	local addr=","
	echo "$cmd" | grep -qE '^/' && addr=
	ed -s "$file" > /dev/null 2>&1 << EOF
$addr$cmd
w
q
EOF
}

getFirst() {
	echo $1
}

# Returns true if $1 is one of $2..$n
arrayIsPresent() {
	local val="$1"
	shift
	for v in "$@"; do
		[ "$v" = "$val" ] && return 0
	done
	return 1
}

canGeneratePasswords() {
	[ -c /dev/urandom ]
}

generatePassword() {
	newPassword=$(cat /dev/urandom | tr -dc _A-Z-a-z-0-9 | head -c17)
}

isProgramInstalled() {
	which "$1" > /dev/null 2>&1 && return 0
	return 1
}

isPerlModuleInstalled() {
	perl -M$1 -e '' > /dev/null 2>&1 && return 0
	return 1
}

# Add $1 or $2 if it exists, to PACKAGES if program $1 isn't present
addProgram() {
	isProgramInstalled $1 || PACKAGES="$PACKAGES ${2:-$1}"
}

# Add $2 to PACKAGES if perl module $1 isn't present
addPerlModule() {
	isPerlModuleInstalled $1 || PACKAGES="$PACKAGES $2"
}

installPackages() {
	[ -z "$INSTALL" ] && return
	[ -z "$PACKAGES" ] && return
	$INSTALL $PACKAGES
	PACKAGES=
}

installPerlModule() {
	isPerlModuleInstalled $1 || $INSTALL $2
}

installProgram() {
	isProgramInstalled $1 || $INSTALL ${2:-$1}
}

installBuildTools() {
	[ "$BUILD_TOOLS_INSTALLED" = y ] && return
	PACKAGES="$BUILD_TOOLS"
	installPackages
	BUILD_TOOLS_INSTALLED=y
}

# Detects missing Perl modules and stores them in MISSING_PERL_MODULES
detectMissingPerlModules() {
	OLD_PERL_MODULES=
	MISSING_PERL_MODULES=
	for module in $REQUIRED_PERL_MODULES; do
		isPerlModuleInstalled $module || MISSING_PERL_MODULES="$MISSING_PERL_MODULES $module"
	done

	# Make sure the JSON module is new
	if isPerlModuleInstalled JSON && ! perl -MJSON -e '&decode_json("{}")' > /dev/null 2>&1; then
		echo "${CWARNING}Old JSON module is installed. Need to install from CPAN.$CEND"
		MISSING_PERL_MODULES="$MISSING_PERL_MODULES JSON"
		OLD_PERL_MODULES="$OLD_PERL_MODULES JSON"
	fi

	if echo "$MISSING_PERL_MODULES" | grep -wq JSON; then
		MISSING_PERL_MODULES="JSON::XS $MISSING_PERL_MODULES"
	fi
	if echo "$MISSING_PERL_MODULES" | grep -q 'XML::LibXML'; then
		# Sometimes the cpan script doesn't install the required dependencies
		MISSING_PERL_MODULES="XML::NamespaceSupport XML::SAX $MISSING_PERL_MODULES"
	fi
}

# Detect where cpan is installed and place the path in the CPAN variable.
# PCLinuxOS/Mandriva append the version number...
detectCpanBin() {
	for file in $(which cpan 2> /dev/null) $(ls /usr/bin/cpan-* 2> /dev/null); do
		if [ -x "$file" ]; then
			CPAN="$file"
			return
		fi
	done
	isPerlModuleInstalled CPAN && return
	errorExit "Could not find the cpan script or the CPAN Perl module. Can't install missing Perl modules."
}

isValidTzName() {
	echo "$1" | LC_ALL=C grep -qE '^[A-Z][^/ ]*(/[A-Z][^/ ]*)?$' && return 0
	return 1
}

detectTimeZone() {
	[ -n "$USER_TIMEZONE" ] && return

	local hash=
	local hasher=
	local files=
	local zoneinfoPath=/usr/share/zoneinfo
	[ -d "$zoneinfoPath" ] || return
	if hasher=md5sum; isProgramInstalled $hasher || hasher=sha1sum; isProgramInstalled $hasher; then
		hash=$($hasher /etc/localtime | awk '{print $1}')
		files="$(find $zoneinfoPath -type f -print | xargs $hasher | grep -E "^$hash\\>" | awk '{print $2}')"
	elif hasher=md5; isProgramInstalled $hasher || hasher=sha1; isProgramInstalled $hasher; then
		hash=$($hasher /etc/localtime | sed -e 's/^.* = \([a-zA-Z0-9]*\)$/\1/')
		files="$(find $zoneinfoPath -type f -print | xargs $hasher | grep -E "$hash\$" | sed -e 's/^[^ ]* (\([^)]*\)).*/\1/')"
	else
		return
	fi

	# Detect all possible timezone names
	local timezones=
	for path in $files; do
		local tz="${path#$zoneinfoPath/}"
		while true; do
			isValidTzName "$tz" && break
			local newTz="${tz#*/}"
			[ "$newTz" = "$tz" ] && tz= && break
			tz="$newTz"
		done
		isValidTzName "$tz" && timezones="$timezones $tz"
	done

	# Now find the ones PHP likes...
	local okRegions="(Africa|America|Antarctica|Arctic|Asia|Atlantic|Australia|Europe|Indian|Pacific)"
	for tz in $timezones; do
		echo "$tz" | grep -qE "^$okRegions/" && USER_TIMEZONE="$tz" && return
	done

	# Return the first one we found
	for tz in $timezones; do
		USER_TIMEZONE="$tz"
		return
	done
}

getNumCpus() {
	[ -n "$NUMCPUS" ] && return
	[ -f /proc/cpuinfo ] && NUMCPUS=$(cat /proc/cpuinfo | grep '^processor' | wc -l) && return
	isProgramInstalled sysctl && sysctl -n hw.ncpu | grep -qE '^[1-9][0-9]*$' && NUMCPUS=$(sysctl -n hw.ncpu) && return
	NUMCPUS=1
}

# Appends $value to $varName in $file, creating the var if it doesn't exist. The
# value is not appended if it already exists.
appendFileStringVar() {
	local file="$1"
	local varName="$2"
	local value="$3"

	[ -f "$file" ] || errorExit "File '$file' does not exist"

	local varLine=$(grep -E "^$varName=" "$file" | tail -n1)
	if [ -z "$varLine" ]; then
		echo "$varName=\"$value\"" >> "$file"
	else
		echo "$varLine" | grep -qE "[='\" ]$value(\"|'| |$)" && return

		local q=
		echo "$varLine" | grep -qE "^$varName='" && q="'"
		echo "$varLine" | grep -qE "^$varName=\"" && q='"'
		sed_i "s#^\\($varName=\\)$q\\(.*\\)$q#\\1\"\\2 $value\"#" "$file"
	fi
}

# Set a variable in a script file to a new value. The variable is created if it does not exist
setScriptVariable() {
	local file="$1"
	local name=$2
	local value="$3"

	[ -f "$file" ] || errorExit "File does not exist: $file"

	local newLine="$name=\"$value\""
	if grep -qE "^$name=" $file; then
		sed_i "s!^$name=.*\$!$newLine!" "$file"
	else
		echo "$newLine" >> "$file"
	fi
}

userExists() {
	id -rg "$1" > /dev/null 2>&1 && return 0
	return 1
}

setSvnOpts() {
	SVN_OPTS=
	isProgramInstalled svn || return
	# svn sometimes gives an error message 'broken pipe'. Ignore it.
	if svn help co 2>/dev/null | grep -q 'non-interactive' && svn help co 2>/dev/null | grep -q 'trust-server-cert'; then
		SVN_OPTS="--non-interactive --trust-server-cert"
	fi
}

downloadFile() {
	local filename="$1"
	shift
	for url in "$@"; do
		for i in 1 2 3 4 5; do
			wget --no-check-certificate -O "$filename" "$url" && return 0
		done
	done
	return 1
}

buildMakeProgram() {
	local url="$1"
	local name="$2"
	local builddir="$3"
	local srcdir="$4"
	local makefile="${5:-Makefile}"

	buildStart
	echo "${CMSG}Downloading $name source code...$CEND"
	cd "$BUILD_DIR"
	local filename="${url##*/}"
	downloadFile "$filename" "$url" || errorExit "Could not download $name source code."
	tar xzf "$filename"
	srcdir="${srcdir:-${filename%.tar.gz}}"
	cd "$srcdir/$builddir"
	local make=${MAKE:-make}
	echo "${CMSG}Building $name...$CEND"
	$make -f $makefile all || errorExit "Could not build $name."
	$make -f $makefile install || errorExit "Could not install $name."
	echo "${CMSG}$name is now installed$CEND"
	buildEnd
}

buildProgram() {
	local prog="$1"

	echo "${CMSG}Building $prog...$CEND"

	./configure --prefix=$PREFIX $2 || errorExit "Could not configure $prog. Try again, or try logging out and in and try again."

	getNumCpus
	local make=${MAKE:-make}
	local makeopts="-j$NUMCPUS"
	$make $makeopts || $make || errorExit "Could not build $prog"
	$make install || errorExit "Could not install $prog"

	local ldsoconf=/etc/ld.so.conf
	touch "$ldsoconf"
	grep -qE "^$PREFIX/lib$" $ldsoconf || echo "$PREFIX/lib" >> $ldsoconf
	ldconfig || errorExit "ldconfig failed"

	echo "${CMSG}$prog is now installed.$CEND"
}

downloadAndBuild() {
	local prog="$1"
	local urls="$2"
	local name="$3"
	local configOptions="$4"
	local patchUrl="$5"

	cd "$BUILD_DIR"
	echo "${CMSG}Downloading $prog source code...$CEND"
	downloadFile "$name.tar.gz" $urls || errorExit "Could not download $prog source code."
	tar xzf $name.tar.gz

	if echo "$patchUrl" | grep '^[a-z]*://'; then
		echo "${CMSG}Patching $prog...$CEND"
		PACKAGES="patch"
		installPackages
		isProgramInstalled patch || errorExit "patch is not installed!"
		downloadFile the.patch "$patchUrl" || errorExit "Could not download the patch file."
		patch -p1 -d $name < the.patch || errorExit "Could not patch $prog."
	elif [ -n "$patchUrl" ]; then
		echo "${CMSG}Patching $prog...$CEND"
		cd $name
		eval $patchUrl
		cd ..
	fi

	cd $name
	buildProgram "$prog" "$configOptions"
}

checkoutAndBuild() {
	local prog="$1"
	local url="$2"
	local configOptions="$3"
	cd "$BUILD_DIR"
	echo "${CMSG}Downloading $prog source code...$CEND"
	svn export $SVN_OPTS "$url" "$prog" || errorExit "Could not download $prog source code."
	cd "$prog"
	buildProgram "$prog" "$configOptions"
}

buildStart() {
	PREFIX=/usr/local
	OLD_PATH="$PATH"
	PATH="$PATH:$PREFIX/bin"
	PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig
	export PKG_CONFIG_PATH
	BUILD_DIR="$(echo ~)/build-tmp"

	rm -rf "$BUILD_DIR"
	mkdir "$BUILD_DIR" || errorExit "Could not create build directory."
}

buildEnd() {
	cd
	rm -rf "$BUILD_DIR"

	[ -n "$OLD_PATH" ] && PATH="$OLD_PATH"
	unset OLD_PATH
	unset PKG_CONFIG_PATH
}

buildRtorrent() {
	installBuildTools
	osHandler_$os installRtorrentBuildTools
	isProgramInstalled pkg-config || errorExit "pkg-config is not installed."

	# Minimum version is 7.15.4 but I had problems with 7.15.5 on CentOS. Set
	# it to 7.18.0 (the version Ubuntu Server 8.04 is using).
	if ! pkg-config --atleast-version=7.18.0 libcurl; then
		downloadAndBuild "libcurl" "$LIBCURL_URL" "$LIBCURL_NAME" ""
		# Prevent 'Unknown keyword 'URL' in ....' error
		sed_i 's/^URL:/#URL:/' $PREFIX/lib/pkgconfig/libcurl.pc
	fi
	if ! pkg-config --exists sigc++-2.0; then
		downloadAndBuild "sigc++-2.0" "$SIGCPP20_URL" "$SIGCPP20_NAME" ""
	fi
	checkoutAndBuild "xmlrpc-c" "$XMLRPC_SVN_DIR" "--disable-cplusplus"
	downloadAndBuild "libtorrent" "$LIBTORRENT_URL $LIBTORRENT_URL2" "$LIBTORRENT_NAME" "" patchLibtorrent
	downloadAndBuild "rtorrent" "$RTORRENT_URL $RTORRENT_URL2" "$RTORRENT_NAME" "--with-xmlrpc-c" ""
}

patchLibtorrent() {
	# For gcc 4.6.0
	ed -s "src/torrent/data/block_transfer.h" > /dev/null 2>&1 << EOF
/#define LIBTORRENT_BLOCK_TRANSFER_H
a
#include <stddef.h>
.
w
q
EOF
	ed -s "src/data/memory_chunk.cc" > /dev/null 2>&1 << EOF
/#include "config.h"
a
#include <stddef.h>
.
w
q
EOF
}

installRtorrent() {
	buildStart
	buildRtorrent
	buildEnd
}

installUnrar() {
	isProgramInstalled unrar && return
	installBuildTools
	buildMakeProgram "$UNRAR_URL" "unrar" "" "unrar" "makefile.unix"
}

installModScgi() {
	local modScgiFile="$1"
	local modulesPath="$2"
	[ -f "$modScgiFile" ] && errorExit "mod_scgi file already exists."
	[ -d "$modulesPath" ] || errorExit "Apache modules path '$modulesPath' does not exist."

	buildMakeProgram "$MOD_SCGI_URL" "mod_scgi" "apache2"
	echo "LoadModule scgi_module $modulesPath/mod_scgi.so" > $modScgiFile
}

isPortUsed() {
	local port="$1"
	netstat -an | grep tcp | grep -w LISTEN | grep -qE "[.:]$port[ 	]" && return 0
	return 1
}

isValidIpAddress() {
	# It's not 100% accurate ... ;)
	echo $1 | grep -qE '^[0-9][0-9]?[0-9]?\.[0-9][0-9]?[0-9]?\.[0-9][0-9]?[0-9]?\.[0-9][0-9]?[0-9]?$'
}

getIpAddress() {
	isValidIpAddress "$OUR_IP_ADDRESS" && return
	echo "${CMSG}Detecting your IP address...$CEND"
	isValidIpAddress "$OUR_IP_ADDRESS" || OUR_IP_ADDRESS=$(wget --no-check-certificate http://www.whatismyip.com/automation/n09230945.asp -O - -o /dev/null)
	isValidIpAddress "$OUR_IP_ADDRESS" || OUR_IP_ADDRESS=$(ifconfig -a | grep "inet addr" | head -n1 | awk -F: '{print $2}' | awk '{print $1}')
	isValidIpAddress "$OUR_IP_ADDRESS" || OUR_IP_ADDRESS="1.2.3.4"
}

getNewPortNumber() {
	while true; do
		newPortNumber=$CURRENT_PORT
		CURRENT_PORT=$(expr $CURRENT_PORT + 1)
		isValidPortNumber $newPortNumber || errorExit "Invalid port number. Change CURRENT_PORT."
		isPortUsed $newPortNumber || break
		echo "${CWARNING}Port $newPortNumber is in use, trying next port...$CEND"
	done
}

# Returns true if it's a valid ruTorrent base path
isValidRutorrentBasePath() {
	[ -n "$1" ] && [ -d "$1/conf" ]
}

isValidPassword() {
	echo "$1" | grep -qE "^ " && return 1
	echo "$1" | grep -qE " \$" && return 1
	echo "$1" | grep -qE '^$' && return 1
	echo "$1" | grep -q ':' && return 1
	echo "'$1'" | grep -q ' ' && return 1
	return 0
}

isValidPortNumber() {
	echo "$1" | grep -qiE '^[0-9]+$' || return 1
	echo "$1" | grep -qiE '[0-9][0-9][0-9][0-9][0-9][0-9]' && return 1
	[ $1 -ge 1024 ] && [ $1 -le 65535 ]
}

isValidWebUser() {
	[ -z "$1" ] && return 1
	echo "$1" | LC_ALL=C grep -qE '[A-Z:]' && return 1
	return 0
}

initUsers() {
	local users=
	for packedUser in $USERS; do
		extractPackedUser $packedUser

		if [ -z "$autodlPort" ]; then
			getNewPortNumber
			autodlPort=$newPortNumber
		fi
		if [ -z "$scgiPort" ]; then
			getNewPortNumber
			scgiPort=$newPortNumber
		fi
		if [ -z "$rtorrentPort" ]; then
			getNewPortNumber
			rtorrentPort=$newPortNumber
		fi
		if canGeneratePasswords; then
			if [ -z "$autodlPassword" ]; then
				generatePassword
				autodlPassword="$newPassword"
			fi
		fi

		users="$users $osUser:$autodlPassword:$webUser:$webPass:$autodlPort:$scgiPort:$rtorrentPort"
	done
	USERS="$users"
}

extractPackedUser() {
	local packedUser="$1"

	osUser="$(echo $packedUser | cut -d: -f1)"
	autodlPassword="$(echo $packedUser | cut -d: -f2)"
	webUser="$(echo $packedUser | cut -d: -f3)"
	webPass="$(echo $packedUser | cut -d: -f4)"
	autodlPort="$(echo $packedUser | cut -d: -f5)"
	scgiPort="$(echo $packedUser | cut -d: -f6)"
	rtorrentPort="$(echo $packedUser | cut -d: -f7)"
}

getUserGroup() {
	local user="$1"

	userExists "$user" || errorExit "The user '$user' does not exist."
	group=$(grep -w $(id -rg $user) /etc/group | cut -d: -f1)
	[ -z "$group" ] && group="$user"
}

getUserDir() {
	local user="$1"

	[ -z "$user" ] && errorExit "Invalid user (blank)."
	userDir="$(eval echo ~$user)"
	[ -d "$userDir" ] || errorExit "User $user's home directory does not exist."
}

resetOwner() {
	local user="$1"
	shift

	if [ "$ISROOT" = y ]; then
		getUserGroup "$user"
		chown -R $user:$group "$@"
	fi
}

# Updates MISSING_PHP_MODULES with all missing required PHP modules
detectMissingPhpModules() {
	MISSING_PHP_MODULES=
	local php=${WWW_PHP_CGI:-php}
	for module in $REQUIRED_PHP_MODULES; do
		$php -m 2> /dev/null | grep -wq $module || MISSING_PHP_MODULES="$MISSING_PHP_MODULES $module"
	done
}

installMissingPhpPackages() {
	PACKAGES=
	for module in $MISSING_PHP_MODULES; do
		PACKAGES="$PACKAGES php-$module"
	done
	installPackages
}

installMissingPhp5Packages() {
	PACKAGES=
	for module in $MISSING_PHP_MODULES; do
		PACKAGES="$PACKAGES php5-$module"
	done
	installPackages
}

enablePhpIniModules() {
	local phpIni="$1"
	shift
	for module in "$@"; do
		grep -qE "^extension=$module.so" "$phpIni" && continue
		sed_i "s/^; *\\(extension=$module.so.*\\)/\\1/" "$phpIni"
		grep -qE "^extension=$module.so" "$phpIni" && continue
		echo "extension=$module.so" >> "$phpIni"
	done
}

installMissingPhpModules() {
	detectMissingPhpModules
	[ -z "$MISSING_PHP_MODULES" ] && return

	osHandler_$os installPhpModules

	detectMissingPhpModules
	[ -z "$MISSING_PHP_MODULES" ] && return
	cat << EOF
$CWARNING
The following PHP modules appear to be missing:
	$MISSING_PHP_MODULES
If the autodl-irssi ruTorrent plugin isn't working, you now know why. Install
them using your package manager or enable them in your php.ini file, and
restart your web server.$CEND
EOF
}

addLogrotateConfig() {
	local serviceName="$1"
	local logFiles="$2"
	local postrotateScript="$3"

	local logrotate_d=/etc/logrotate.d
	[ -d "$logrotate_d" ] || errorExit "Missing logrotate dir: $logrotate_d"

	cat > "$logrotate_d/$serviceName" << EOF
$logFiles {
	missingok
	daily
	rotate 14
	notifempty
	compress
	delaycompress
	sharedscripts
	postrotate
		$postrotateScript
	endscript
}
EOF
	[ $? -eq 0 ] || errorExit "Could not write logrotate file $logrotate_d/$serviceName"
}

detectPhpCgi() {
	WWW_PHP_CGI=${WWW_PHP_CGI:-$(which php-cgi | head -n1)}
	[ -x "$WWW_PHP_CGI" ] || errorExit "Could not find php-cgi"
	"$WWW_PHP_CGI" -v | grep -q 'cgi-fcgi' || errorExit "$WWW_PHP_CGI does not support FastCGI"
}

# $i is the i'th user number
getUserRpcMount() {
	local i=$1
	verifyWebServerVars
	# Make sure /RPC10 accesses aren't going to /RPC1 by padding with zeros. This is
	# easier than making sure every web server handles it correctly. Eg., lighttpd's
	# scgi.server table is read in order, so if you add /RPC1 before /RPC10, then
	# /RPC10 accesses will go to /RPC1. A fix would of course be to place /RPC10
	# before /RPC1 but it's easy to forget. Now we use /RPC00001 .. /RPC99999
	echo "/$RPC_PREFIX$(printf '%05d' $i)"
}

createSelfSignedCertFile() {
	local pemfile="$1"

	if [ ! -f "$OTHER_PEM_FILE" ]; then
		echo "${CMSG}Creating the self-signed certificate.$CEND"
		rm -f "$pemfile"
		openssl req -new -newkey rsa:1024 -days 1000 -nodes -x509 -keyout "$pemfile" -out "$pemfile" -batch \
			|| errorExit "Failed to create self-signed certificate."
		OTHER_PEM_FILE="$pemfile"
		CREATED_CERT_FILE=y
	else
		rm -f "$pemfile"
		cp "$OTHER_PEM_FILE" "$pemfile" || errorExit "Failed to copy self-signed certificate."
	fi

	chmod 0600 "$pemfile"
}

detectHtpasswd() {
	[ -z "$htpasswd" ] && isProgramInstalled htpasswd && htpasswd=htpasswd
	[ -z "$htpasswd" ] && isProgramInstalled htpasswd2 && htpasswd=htpasswd2
	if [ -z "$htpasswd" ]; then
		installProgram python
		if isProgramInstalled python; then
			cd
			downloadFile "htpasswd.py" "$HTPASSWD_PY_SCRIPT_URL" "$HTPASSWD_PY_SCRIPT_URL2" \
				&& htpasswd="python $(pwd)/htpasswd.py"
		fi
	fi
	[ -z "$htpasswd" ] && errorExit "Could not find htpasswd"
}

verifyWebServerVars() {
	[ -z "$WWW_PEMFILE" ] && errorExit "You have not initialized WWW_PEMFILE"
	[ -z "$WWW_PASSWORD_FILE" ] && errorExit "You have not initialized WWW_PASSWORD_FILE"
	[ -z "$WWW_ROOT" ] && errorExit "You have not initialized WWW_ROOT"
	[ -z "$WWW_USER" ] && errorExit "You have not initialized WWW_USER"
	[ -z "$WWW_GROUP" ] && errorExit "You have not initialized WWW_GROUP"
}

initializeWwwRootVar() {
	WWW_ROOT=${WWW_ROOT:-/var/rutorrent}
}

createWebServerUserGroup() {
	verifyWebServerVars
	if ! grep -qE "^$WWW_GROUP:" /etc/group; then
		groupadd -r $WWW_GROUP 2>/dev/null || groupadd $WWW_GROUP || errorExit "Could not create web server group."
	fi
	if ! grep -qE "^$WWW_USER:" /etc/passwd; then
		local useradd="useradd -d $WWW_ROOT -g $WWW_GROUP -s /bin/sh"
		$useradd -M -r $WWW_USER 2>/dev/null || $useradd $WWW_USER || errorExit "Could not create web server user."
	fi
}

resetAuthPasswordFilePermissions() {
	[ -n "$WWW_USER" ] || errorExit "WWW_USER not initialized"
	[ -n "$WWW_GROUP" ] || errorExit "WWW_GROUP not initialized"
	chmod 0400 "$WWW_PASSWORD_FILE"*
	chown $WWW_USER:$WWW_GROUP "$WWW_PASSWORD_FILE"*
}

createAuthPasswordFile() {
	verifyWebServerVars
	: > "$WWW_PASSWORD_FILE"
	resetAuthPasswordFilePermissions
}

# Some web servers (eg. nginx) can't allow just ONE user access to a certain
# location. To fix that, create one password file per user.
createOnePasswordFilePerUser() {
	for packedUser in $USERS; do
		extractPackedUser $packedUser
		grep "^$webUser:" "$WWW_PASSWORD_FILE" > "${WWW_PASSWORD_FILE}_$webUser"
	done
	resetAuthPasswordFilePermissions
}

updatePhpTimezone() {
	if [ ! -f "$WWW_PHP_INI" ]; then
		echo "${CWARNING}Could not find php.ini file: $WWW_PHP_INI$CEND"
		return
	fi
	[ -z "$USER_TIMEZONE" ] && return

	local zws="[ 	]*"
	local newLine="date.timezone = $USER_TIMEZONE"
	if grep -qE "^${zws}date\\.timezone[ 	=]" "$WWW_PHP_INI"; then
		return
	elif grep -qE "^${zws}[;#]${zws}date\\.timezone[ 	=]" "$WWW_PHP_INI"; then
		sed_i "s!^${zws}[;#]${zws}date\\.timezone[ 	=].*\$!$newLine!" "$WWW_PHP_INI"
	else
		cat >> "$WWW_PHP_INI" << EOF
[Date]
$newLine
EOF
	fi
}

doDetectTimeZone() {
	echo "${CMSG}Detecting timezone...$CEND"
	detectTimeZone
	if [ -n "$USER_TIMEZONE" ]; then
		echo "${CMSG}Timezone: $USER_TIMEZONE$CEND"

		updatePhpTimezone
	else
		echo "${CWARNING}Could not detect timezone!$CEND"
	fi
}

webServerCommonInitialization() {
	mkdir -p $WWW_ROOT
	doDetectTimeZone
	createSelfSignedCertFile "$WWW_PEMFILE"
	createAuthPasswordFile
}

resetWebServerPermissions() {
	verifyWebServerVars
	chown -R $WWW_USER:$WWW_GROUP $WWW_ROOT || errorExit "Could not set web server as owner of $WWW_ROOT"
}

createPhpcgiSocket() {
	PHPCGI_SOCKET_DIR=/etc/phpcgi
	PHPCGI_SOCKET_FILE="$PHPCGI_SOCKET_DIR/php-cgi.socket"
	mkdir -p "$PHPCGI_SOCKET_DIR"
	chown $WWW_USER:$WWW_GROUP "$PHPCGI_SOCKET_DIR"
	chmod 0770 "$PHPCGI_SOCKET_DIR"
}

verifyApacheServerVars() {
	verifyWebServerVars
	[ -z "$APACHE_SITE_FILE" ] && errorExit "You have not initialized APACHE_SITE_FILE"
}

apacheCreateApxs2Symlink() {
	# The makefile uses apxs2, so make a symlink
	if ! isProgramInstalled apxs2; then
		local apxs=$(which apxs 2>/dev/null) && ln -s "$apxs" "${apxs}2"
	fi
}

initializeApacheVars() {
	local apacheUser="$1"
	local apacheGroup="$2"
	local apacheSitesDir="$3"

	[ -n "$apacheUser" ] || errorExit "Invalid apache user: $apacheUser"
	[ -n "$apacheGroup" ] || errorExit "Invalid apache group: $apacheGroup"
	[ -d "$apacheSitesDir" ] || errorExit "Invalid apache sites dir: $apacheSitesDir"
	[ -d "$APACHE_DIR" ] || errorExit "Invalid apache dir: $APACHE_DIR"

	APACHE_SITE_NAME=${APACHE_SITE_NAME:-rutorrent.conf}
	APACHE_SITE_FILE=$apacheSitesDir/$APACHE_SITE_NAME
	initializeWwwRootVar
	WWW_PASSWORD_FILE=$APACHE_DIR/rutorrent_passwd
	WWW_PEMFILE=$APACHE_DIR/rutorrent.pem
	WWW_USER="$apacheUser"
	WWW_GROUP="$apacheGroup"
}

apacheGetRpcLocationDirectives() {
	if [ "$INSTALL_RUTORRENT" = y ]; then
		local i=1
		for packedUser in $USERS; do
			extractPackedUser $packedUser
			local rpcMount="$(getUserRpcMount $i)"
			cat << EOF
	<Location "$rpcMount">
		AuthType Basic
		AuthName "$RUTORRENT_SITE_REALM"
		AuthUserFile "$WWW_PASSWORD_FILE"
		Require user $webUser
	</Location>
EOF
			i=$(expr $i + 1)
		done
	fi
}

apacheGetVirtualHost() {
	local port=$1
	local ssl=$2
	cat << EOF
<VirtualHost *:$port>
$(if [ "$ssl" = y ]; then
	echo "	SSLEngine On"
	echo "	SSLCertificateFile $WWW_PEMFILE"
fi)
	ServerAdmin admin@rutorrent
	ServerName localhost
	DocumentRoot $WWW_ROOT

	<Directory />
		AllowOverride None
		Order deny,allow
		Deny from all
	</Directory>
	<Location />
		AuthType Basic
		AuthName "$RUTORRENT_SITE_REALM"
		AuthUserFile "$WWW_PASSWORD_FILE"
		Require valid-user
		Order allow,deny
		Allow from all
	</Location>
	<Location ~ "^/rutorrent/(conf|share)">
		Order deny,allow
		Deny from all
	</Location>
	<Location ~ "/\\\\.svn">
		Order deny,allow
		Deny from all
	</Location>
$(apacheGetRpcLocationDirectives)
</VirtualHost>
EOF
}

apacheWriteSiteFile() {
	verifyApacheServerVars
	cat > "$APACHE_SITE_FILE" << EOF
ServerName localhost

$(apacheGetVirtualHost $HTTP_PORT n)
$(apacheGetVirtualHost $HTTPS_PORT y)
EOF

	if [ "$INSTALL_RUTORRENT" = y ]; then
		local i=1
		local lp=; isWebServerRpcModule || lp='#'
		for packedUser in $USERS; do
			extractPackedUser $packedUser
			local rpcMount="$(getUserRpcMount $i)"
			echo "${lp}SCGIMount $rpcMount $SCGI_HOST:$scgiPort" >> "$APACHE_SITE_FILE"

			i=$(expr $i + 1)
		done
	fi
}

apacheCommonInitialization() {
	local buildTools="$1"
	local modulesDir="$2"

	webServerCommonInitialization
	apacheWriteSiteFile

	if [ -n "$APACHE_SCGI_FILE" ] && [ ! -f "$APACHE_SCGI_FILE" ]; then
		installBuildTools
		PACKAGES="$buildTools"
		installPackages
		apacheCreateApxs2Symlink

		# Compiling mod_scgi will fail unless we remove this warning-as-error flag
		local configVarsFile="$APACHE_DIR/modules/build/config_vars.mk"
		[ -f "$configVarsFile" ] && sed_i 's/-Werror=format-security//g' "$configVarsFile"

		installModScgi "$APACHE_SCGI_FILE" "$modulesDir"
	fi
}

installCommonWebServerStuff_mandriva() {
	# Also add some extra tools for ruTorrent and some of its plugins
	PACKAGES="php-cli gzip curl openssl logrotate"
	installPackages
	PACKAGE="unrar"
	installPackages
	PACKAGES="php-geoip"
	installPackages
}

# Used by Mandriva, Unity Linux, and PCLinuxOS
installApache_mandriva() {
	installCommonWebServerStuff_mandriva
	PACKAGES="apache-mpm-prefork apache-mod_ssl apache-mod_php"
	installPackages

	WWW_PHP_INI=/etc/php.ini
	APACHE_DIR=/etc/httpd
	local APACHE_CONF_D=$APACHE_DIR/conf.d
	local APACHE_SITES_DIR=$APACHE_DIR/conf/vhosts.d
	APACHE_SCGI_FILE=$APACHE_CONF_D/scgi.conf
	initializeApacheVars apache apache "$APACHE_SITES_DIR"
	apacheCommonInitialization "libopenssl-devel apache-devel" $APACHE_DIR/modules

	for file in 00_default_vhosts.conf 01_default_ssl_vhost.conf; do
		[ -f "$APACHE_SITES_DIR/$file" ] && mv -f "$APACHE_SITES_DIR/$file" "$APACHE_SITES_DIR/$file-bak"
	done

	resetWebServerPermissions
	chkconfig httpd on
	service httpd restart || errorExit "Could not start $INSTALL_WEB_SERVER"
}

installCommonWebServerStuff_gentoo() {
	# Also add some extra tools for ruTorrent and some of its plugins
	PACKAGES="dev-lang/php logrotate"
	addProgram gzip app-arch/gzip
	addProgram curl net-misc/curl
	addProgram openssl dev-libs/openssl
	addProgram unrar app-arch/unrar
	installPackages

	ACCEPT_LICENSE=MaxMind
	export ACCEPT_LICENSE
	PACKAGES="dev-php5/pecl-geoip"
	installPackages
	unset ACCEPT_LICENSE
}

installApache_gentoo() {
	installCommonWebServerStuff_gentoo
	PACKAGES="www-servers/apache app-admin/apache-tools"
	installPackages
	PACKAGES="www-apache/mod_scgi"
	installPackages

	WWW_PHP_INI=$(ls /etc/php/apache2-php5*/php.ini | tail -n1)
	[ -f "$WWW_PHP_INI" ] || errorExit "Could not find Apache php.ini file"
	APACHE_DIR=/etc/apache2
	local APACHE_CONF=$APACHE_DIR/httpd.conf
	local APACHE_SITES_DIR=$APACHE_DIR/vhosts.d
	local SERVER_ROOT=$(grep -E ^ServerRoot $APACHE_CONF | head -n1 | sed -e 's!^.*[ 	][^/]*\(/[^"]*\).*!\1!')
	APACHE_SCGI_FILE="$APACHE_DIR/modules.d/scgi.conf"
	[ -d "$SERVER_ROOT" ] || errorExit "Apache server root dir does not exist: $SERVER_ROOT"
	initializeApacheVars apache apache "$APACHE_SITES_DIR"
	apacheCommonInitialization "" $SERVER_ROOT/modules

	for file in 00_default_ssl_vhost.conf 00_default_vhost.conf; do
		[ -f "$APACHE_SITES_DIR/$file" ] && mv -f "$APACHE_SITES_DIR/$file" "$APACHE_SITES_DIR/$file-bak"
	done

	appendFileStringVar /etc/conf.d/apache2 APACHE2_OPTS "-D SCGI"
	appendFileStringVar /etc/conf.d/apache2 APACHE2_OPTS "-D PHP5"
	appendFileStringVar /etc/conf.d/apache2 APACHE2_OPTS "-D SSL"
	cat >> $APACHE_SITE_FILE << EOF
Listen $HTTP_PORT
Listen $HTTPS_PORT
EOF

	resetWebServerPermissions
	rc-update add apache2 default
	osHandler_$os restart_$INSTALL_WEB_SERVER
}

nginxGetRpcMounts() {
	if [ "$INSTALL_RUTORRENT" = y ]; then
		local i=1
		local lp=; isWebServerRpcModule || lp='#'
		for packedUser in $USERS; do
			extractPackedUser $packedUser
			getUserScgiSocketPath "$osUser"
			local rpcMount="$(getUserRpcMount $i)"

			cat << EOF
$lp		location ~ ^$rpcMount\$ {
$lp			include scgi_params;
$lp			scgi_pass unix:$scgiSocketPath;
$lp			auth_basic "$RUTORRENT_SITE_REALM";
$lp			auth_basic_user_file "${WWW_PASSWORD_FILE}_$webUser";
$lp		}
EOF

			i=$(expr $i + 1)
		done
	fi
}

nginxGetServerSection() {
	local port=$1
	local ssl=$2

	cat << EOF
	server {
		listen $port;
		server_name localhost;
		auth_basic "$RUTORRENT_SITE_REALM";
		auth_basic_user_file "$WWW_PASSWORD_FILE";

$(if [ "$ssl" = y ]; then
	cat << EOF2
		ssl on;
		ssl_certificate $WWW_PEMFILE;
		ssl_certificate_key $WWW_PEMFILE;
EOF2
fi)

		location ~ ^/rutorrent/(?:share|conf) {
			deny all;
		}

		location ~ /\.ht {
			deny all;
		}

		location ~ /\.svn {
			deny all;
		}

		location / {
			root $WWW_ROOT;
			index index.php index.html index.htm;
		}

		location ~ \.php$ {
			root "$WWW_ROOT";
			fastcgi_pass unix:$PHPCGI_SOCKET_FILE;
			fastcgi_index index.php;
			fastcgi_param SCRIPT_FILENAME \$document_root\$fastcgi_script_name;
			include fastcgi_params;
		}

$(nginxGetRpcMounts)
	}
EOF
}

nginxWriteConfFile() {
	getNumCpus
	cat > $NGINX_CONF << EOF
worker_processes $NUMCPUS;
user $WWW_USER $WWW_GROUP;
events {
	worker_connections 1024;
}

http {
	include mime.types;
	default_type application/octet-stream;
	sendfile on;
	keepalive_timeout 65;

	# I have to set min length to 0 and http version to 1.0 or it won't compress
	# the XML-RPC (SCGI) responses. Those responses can be quite large if you're
	# using many torrent files.
	gzip on;
	gzip_min_length 0;
	gzip_http_version 1.0;
	gzip_types text/plain text/xml application/xml application/json text/css application/x-javascript text/javascript application/javascript;

$(nginxGetServerSection $HTTP_PORT n)
$(nginxGetServerSection $HTTPS_PORT y)
}
EOF
	[ $? -eq 0 ] || errorExit "Could not write to file $NGINX_CONF"
}

buildNginx() {
	buildStart
	PREFIX=$NGINX_DIR
	NGINX_BIN=$PREFIX/sbin/nginx
	NGINX_CONF=$PREFIX/conf/nginx.conf
	NGINX_PID_FILE=$PREFIX/nginx.pid
	NGINX_ACCESS_LOG=$PREFIX/logs/access.log
	NGINX_ERROR_LOG=$PREFIX/logs/error.log
	local configureFlags="\
				--prefix=$PREFIX \
				--sbin-path=$NGINX_BIN \
				--conf-path=$NGINX_CONF \
				--pid-path=$NGINX_PID_FILE \
				--lock-path=$PREFIX/logs/nginx.lock \
				--error-log-path=$NGINX_ERROR_LOG \
				--http-log-path=$NGINX_ACCESS_LOG \
				--user=$WWW_USER \
				--group=$WWW_GROUP \
				--with-http_ssl_module"
	export CFLAGS="$NGINX_CFLAGS"
	downloadAndBuild "nginx" "$NGINX_URL" "$NGINX_NAME" "$configureFlags" patchNginx
	unset CFLAGS
	buildEnd
}

patchNginx() {
	# Get rid of the -Werror flag for gcc 4.6.0
	sed_i "s!-Werror[a-zA-Z0-9=-]*!!" "auto/cc/gcc"
}

installNginx() {
	SCGI_USE_UNIX_DOMAIN_SOCKET=y
	CREATE_ONE_PASSWORD_FILE_PER_USER=y
	installBuildTools
	osHandler_$os preNginxInstall
	installUnrar

	NGINX_DIR=/usr/local/nginx
	initializeWwwRootVar
	WWW_PASSWORD_FILE=$NGINX_DIR/rutorrent_passwd
	WWW_PEMFILE=$NGINX_DIR/rutorrent.pem
	WWW_USER=${WWW_USER:-nginx}
	WWW_GROUP=${WWW_GROUP:-nginx}

	detectPhpCgi
	createWebServerUserGroup
	createPhpcgiSocket

	buildNginx
	webServerCommonInitialization
	nginxWriteConfFile

	addLogrotateConfig nginx \
			"$NGINX_ACCESS_LOG $NGINX_ERROR_LOG" \
			"[ -f \"$NGINX_PID_FILE\" ] && kill -USR1 \$(cat \"$NGINX_PID_FILE\") >/dev/null 2>&1; true"

	resetWebServerPermissions
	osHandler_$os installPhpCgiService
	osHandler_$os installNginxService
}

preNginxInstall_gentoo() {
	installCommonWebServerStuff_gentoo
	PACKAGES="libpcre openssl zlib php"
	installPackages
	WWW_PHP_INI=$(ls /etc/php/cgi-php5*/php.ini | tail -n1)
	[ -f "$WWW_PHP_INI" ] || errorExit "Could not find php-cgi php.ini file"
}

preLighttpdInstall_gentoo() {
	preNginxInstall_gentoo
}

lighttpdGetRpcRequire() {
	if [ "$INSTALL_RUTORRENT" = y ]; then
		local i=1
		for packedUser in $USERS; do
			extractPackedUser $packedUser
			local rpcMount="$(getUserRpcMount $i)"

			cat << EOF
	"$rpcMount" => (
		"method" => "basic",
		"realm" => "$RUTORRENT_SITE_REALM",
		"require" => "user=$webUser",
	),
EOF
			i=$(expr $i + 1)
		done
	fi
}

lighttpdGetScgiServerTable() {
	echo 'scgi.server = ('

	if [ "$INSTALL_RUTORRENT" = y ]; then
		local i=1
		local lp=; isWebServerRpcModule || lp='#'
		for packedUser in $USERS; do
			extractPackedUser $packedUser
			getUserScgiSocketPath "$osUser"
			local rpcMount="$(getUserRpcMount $i)"

			cat << EOF
$lp	"$rpcMount" => (
$lp		(
$lp			"socket" => "$scgiSocketPath",
$lp			"check-local" => "disable",
$lp			"disable-time" => 0,
$lp		),
$lp	),
EOF
			i=$(expr $i + 1)
		done
	fi

	echo ')'
}

lighttpdWriteConfFile() {
	cat > $LIGHTTPD_CONF << EOF
server.follow-symlink = "disable"
server.max-connections = 512
server.max-fds = 1024
server.max-keep-alive-idle = 15
dir-listing.activate = "disable"
server.pid-file = "$LIGHTTPD_PID_FILE"
server.errorlog = "$LIGHTTPD_ERROR_LOG"
accesslog.filename = "$LIGHTTPD_ACCESS_LOG"

$(if [ $(uname -s) = Linux ]; then
	echo 'server.event-handler = "linux-sysepoll"'
	echo 'server.network-backend = "linux-sendfile"'
fi)

server.username = "$WWW_USER"
server.groupname = "$WWW_GROUP"

server.modules = (
#	"mod_rewrite",
#	"mod_redirect",
#	"mod_alias",
	"mod_access",
	"mod_auth",
#	"mod_status",
#	"mod_simple_vhost",
#	"mod_evhost",
#	"mod_userdir",
#	"mod_secdownload",
	"mod_fastcgi",
#	"mod_proxy",
#	"mod_cgi",
	"mod_scgi",
#	"mod_ssi",
#	"mod_compress",
#	"mod_usertrack",
#	"mod_expire",
#	"mod_rrdtool",
	"mod_accesslog",
)

fastcgi.server = (
	".php" => (
		(
			"socket" => "$PHPCGI_SOCKET_FILE",
		),
	),
)

index-file.names = ( "index.php", "index.html", "index.htm" )
static-file.exclude-extensions = ( ".fcgi", ".php", ".rb", "~", ".inc" )

mimetype.assign = (
	".html"		=> "text/html",
	".htm"		=> "text/html",
	".txt"		=> "text/plain",
	".csv"		=> "text/plain",
	".ini"		=> "text/plain",
	".jpg"		=> "image/jpeg",
	".jpeg"		=> "image/jpeg",
	".gif"		=> "image/gif",
	".png"		=> "image/png",
	".bmp"		=> "image/bmp",
	".css"		=> "text/css",
	".js"		=> "application/javascript",
	".ico"		=> "image/x-icon",
	".json"		=> "application/json",
	".torrent"	=> "application/x-bittorrent",
	".pdf"		=> "application/pdf",
	".bz2"		=> "application/x-bzip2",
	".gz"		=> "application/x-gzip",
	".tar.gz"	=> "application/x-tgz",
	".tar"		=> "application/x-tar",
	".tar.bz2"	=> "application/x-bzip-compressed-tar",
	".tbz"		=> "application/x-bzip-compressed-tar",
	".tgz"		=> "application/x-tgz",
	".zip"		=> "application/zip",
	".mp3"		=> "audio/mpeg",
	".flac"		=> "audio/x-flac",
	".m3u"		=> "audio/x-mpegurl",
	".wma"		=> "audio/x-ms-wma",
	".wax"		=> "audio/x-ms-wax",
	".ogg"		=> "audio/ogg",
	".wav"		=> "audio/x-wav",
	".dtd"		=> "text/xml",
	".xml"		=> "text/xml",
	".mpeg"		=> "video/mpeg",
	".mpg"		=> "video/mpeg",
	".mp4"		=> "video/mp4",
	".wmv"		=> "video/x-ms-wmv",
	".avi"		=> "video/x-msvideo",
)

server.document-root = "$WWW_ROOT"
server.port = $HTTP_PORT

\$SERVER["socket"] == ":$HTTPS_PORT" {
	ssl.engine = "enable"
	ssl.pemfile = "$WWW_PEMFILE"
}

url.access-deny = (".htaccess")
\$HTTP["url"] =~ "^/rutorrent/(?:share|conf)" {
	url.access-deny = ("")
}
\$HTTP["url"] =~ "/\\.svn" {
	url.access-deny = ("")
}

auth.backend = "htpasswd"
auth.backend.htpasswd.userfile = "$WWW_PASSWORD_FILE"
auth.require = (
$(lighttpdGetRpcRequire)
	"/" => (
		"method" => "basic",
		"realm" => "$RUTORRENT_SITE_REALM",
		"require" => "valid-user",
	),
)

$(lighttpdGetScgiServerTable)
EOF
	[ $? -eq 0 ] || errorExit "Could not write to file $LIGHTTPD_CONF"
}

buildLighttpd() {
	buildStart
	PREFIX=$LIGHTTPD_DIR
	LIGHTTPD_BIN=$PREFIX/sbin/lighttpd
	LIGHTTPD_CONF=$PREFIX/lighttpd.conf

	# The log dir will be set to owner lighttpd since it's started as non-root.
	# Put the pid file there so it can write to it.
	LIGHTTPD_LOG_DIR=$PREFIX/logs
	LIGHTTPD_PID_FILE=$LIGHTTPD_LOG_DIR/lighttpd.pid
	LIGHTTPD_ERROR_LOG=$LIGHTTPD_LOG_DIR/error.log
	LIGHTTPD_ACCESS_LOG=$LIGHTTPD_LOG_DIR/access.log

	local configureFlags="\
				--prefix=$PREFIX \
				--with-openssl \
				--with-pcre \
				--with-zlib \
				--without-bzip2"
	downloadAndBuild "lighttpd" "$LIGHTTPD_URL" "$LIGHTTPD_NAME" "$configureFlags"
	buildEnd
}

installLighttpd() {
	SCGI_USE_UNIX_DOMAIN_SOCKET=y
	installBuildTools
	osHandler_$os preLighttpdInstall
	installUnrar

	LIGHTTPD_DIR=/usr/local/lighttpd
	initializeWwwRootVar
	WWW_PASSWORD_FILE=$LIGHTTPD_DIR/rutorrent_passwd
	WWW_PEMFILE=$LIGHTTPD_DIR/rutorrent.pem
	WWW_USER=${WWW_USER:-lighttpd}
	WWW_GROUP=${WWW_GROUP:-lighttpd}

	detectPhpCgi
	createWebServerUserGroup
	createPhpcgiSocket

	buildLighttpd
	webServerCommonInitialization
	lighttpdWriteConfFile

	addLogrotateConfig lighttpd \
			"$LIGHTTPD_ACCESS_LOG $LIGHTTPD_ERROR_LOG" \
			"[ -f \"$LIGHTTPD_PID_FILE\" ] && kill -HUP \$(cat \"$LIGHTTPD_PID_FILE\") >/dev/null 2>&1; true"

	mkdir -p "$LIGHTTPD_LOG_DIR"
	chown -R $WWW_USER:$WWW_GROUP "$LIGHTTPD_LOG_DIR"

	resetWebServerPermissions
	osHandler_$os installPhpCgiService
	osHandler_$os installLighttpdService
}

# Add $name=$value to the file, or modify an existing line if present in the file
setVsftpdValue() {
	local confFile="$1"
	local name="$2"
	local value="$3"
	local newLine="$name=$value"

	sed_i "s!^[ 	]*$name[ 	=:].*\$!$newLine!" "$confFile"
	grep -qE "^$newLine$" "$confFile" || echo "$newLine" >> "$confFile"
}

# Same as setVsftpdValue but makes sure the option exists
setVsftpdValue2() {
	local confFile="$1"
	local name="$2"
	local value="$3"

	[ -z "$VSFTPD_PATH" ] && return
	grep -q "$name" "$VSFTPD_PATH" && setVsftpdValue "$confFile" "$name" "$value"
}

updateVsftpdConf() {
	local confFile="$1"
	touch "$confFile"

	VSFTPD_PATH=$(which vsftpd 2>/dev/null)

	setVsftpdValue "$confFile" anonymous_enable NO
	setVsftpdValue "$confFile" dirlist_enable YES
	setVsftpdValue "$confFile" download_enable YES
	setVsftpdValue "$confFile" guest_enable NO
	setVsftpdValue "$confFile" listen YES
	setVsftpdValue "$confFile" listen_ipv6 NO
	setVsftpdValue "$confFile" local_enable YES
	setVsftpdValue "$confFile" local_umask $DEFAULT_UMASK
	setVsftpdValue "$confFile" max_per_ip 0
	setVsftpdValue "$confFile" pasv_enable YES
	setVsftpdValue "$confFile" port_enable YES
	setVsftpdValue "$confFile" pasv_promiscuous NO
	setVsftpdValue "$confFile" port_promiscuous NO
	setVsftpdValue "$confFile" pasv_min_port 0
	setVsftpdValue "$confFile" pasv_max_port 0
	setVsftpdValue "$confFile" write_enable YES

	if [ "$USE_ENCRYPTED_FTP" = y ]; then
		local pemfile=/etc/vsftpd.pem
		createSelfSignedCertFile "$pemfile"

		FTP_SERVER_TYPE="FTPES - Encrypted (FTP over explicit TLS/SSL)"
		FTP_PORT=${FTP_PORT:-$DEFAULT_PORT_FTPES}
		setVsftpdValue "$confFile" listen_port $FTP_PORT
		setVsftpdValue "$confFile" ssl_enable YES

		setVsftpdValue "$confFile" allow_anon_ssl NO
		setVsftpdValue "$confFile" force_local_data_ssl YES
		setVsftpdValue "$confFile" force_local_logins_ssl YES
		setVsftpdValue "$confFile" ssl_sslv2 NO
		setVsftpdValue "$confFile" ssl_sslv3 NO
		setVsftpdValue "$confFile" ssl_tlsv1 YES
		setVsftpdValue "$confFile" rsa_cert_file "$pemfile"

		setVsftpdValue2 "$confFile" implicit_ssl NO
		setVsftpdValue2 "$confFile" require_cert NO
		setVsftpdValue2 "$confFile" require_ssl_reuse NO
		setVsftpdValue2 "$confFile" ssl_request_cert YES
		setVsftpdValue2 "$confFile" strict_ssl_read_eof NO
		setVsftpdValue2 "$confFile" strict_ssl_write_shutdown NO
		setVsftpdValue2 "$confFile" validate_cert NO
	else
		FTP_SERVER_TYPE="FTP - Non-encrypted"
		FTP_PORT=${FTP_PORT:-$DEFAULT_PORT_FTP}
		setVsftpdValue "$confFile" listen_port $FTP_PORT
		setVsftpdValue "$confFile" ssl_enable NO
	fi

	# The private key is in rsa_cert_file
	sed_i 'g/rsa_private_key_file/d' "$confFile"
}

installVsftpd_chkconfig() {
	local vsftpdConf="$1"
	installProgram vsftpd
	[ -f "$vsftpdConf" ] || errorExit "Invalid vsftpd.conf file: $vsftpdConf"
	updateVsftpdConf "$vsftpdConf"
	chkconfig vsftpd on
	if ! service vsftpd restart; then
		if [ "$SELINUX_ENABLED" = y ]; then
			errorExit "Could not restart vsftpd. SELinux could be the reason."
		else
			errorExit "Could not restart vsftpd"
		fi
	fi
}

installVsftpd_gentoo() {
	installProgram net-ftp/vsftpd
	local vsftpdConf=/etc/vsftpd/vsftpd.conf
	if ! [ -f $vsftpdConf ]; then
		touch $vsftpdConf
		[ -f $vsftpdConf.example ] && cp $vsftpdConf.example $vsftpdConf
	fi
	updateVsftpdConf $vsftpdConf
	rc-update add vsftpd default
	/etc/init.d/vsftpd restart
}

installService_chkconfig1() {
	CHKCONFIG_SERVICE_NAME=$1
	CHKCONFIG_SERVICE_FILE=/etc/init.d/$CHKCONFIG_SERVICE_NAME
	CHKCONFIG_LOCK_FILE=/var/lock/subsys/$CHKCONFIG_SERVICE_NAME
}

installService_chkconfig2() {
	chmod +x "$CHKCONFIG_SERVICE_FILE" || errorExit "Could not set +x bit, file $CHKCONFIG_SERVICE_FILE."
	chkconfig --add $CHKCONFIG_SERVICE_NAME || errorExit "Could not install service $CHKCONFIG_SERVICE_FILE. Run this script as root."
	service $CHKCONFIG_SERVICE_NAME restart
}

getChkconfigScriptContents() {
	local desc="$1"
	cat << EOF
# chkconfig: 2345 85 15
# description: $desc
EOF
}

getLsbStartupScriptContents() {
	local startupName="$1"
	local desc="$2"
	cat << EOF
### BEGIN INIT INFO
# Provides:          $startupName
# Required-Start:    \$local_fs \$network \$syslog
# Required-Stop:     \$local_fs \$syslog
# Default-Start:     $LSB_DEFAULT_START
# Default-Stop:      $LSB_DEFAULT_STOP
# Short-Description: $desc
# Description:       $desc
### END INIT INFO
EOF
}

# You must define v_{startIt,stopIt,restartIt,showStatus} and isStarted funcs
getLsbStartupFooter() {
	cat << EOF
resetPath	# Some include files may have reset it
LOCKFILE=$1
updateLock() {
	[ -z "\$LOCKFILE" ] && return
	if isStarted; then
		touch \$LOCKFILE
	else
		rm -f \$LOCKFILE
	fi
}

RETVAL=0
case \$1 in
	start)
		v_startIt
		;;
	stop)
		v_stopIt
		;;
	force-reload|restart)
		v_restartIt
		;;
	try-restart)
		isStarted && v_restartIt
		;;
	status)
		v_showStatus
		;;
	*)
		echo "Usage: \$0 {start|stop|restart|try-restart|force-reload|status}"
		RETVAL=1
		;;
esac

updateLock
exit \$RETVAL
EOF
}

getCommonStartupScriptContents_autodl() {
	local USER="$1"
	local STARTUPNAME="$2"
	cat << EOF
NAME=$STARTUPNAME
USER=$USER
SESSIONNAME=autodl

resetPath() {
	PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:\$PATH"
}
resetPath

# Make sure the path is correct, and make sure we're in the home dir.
USER_INIT="umask $DEFAULT_UMASK; cd; PATH=\\\$PATH:\$PATH"

# Run user command, ignoring any messages sent to stdout (eg. 'No mail.')
runUserCmd() {
	su - \$USER -c "\$USER_INIT; \$1" >/dev/null && return 0
	return 1
}

isStarted() {
	su - \$USER -c "\$USER_INIT; screen -ls | grep -qE \\"[ 	][0-9]+\\\\.\$SESSIONNAME[ 	]\\"" >/dev/null && return 0
	return 1
}

startIt() {
	isStarted && return 0

	local START_IRSSI=n
	local START_RTORRENT=n
	which irssi > /dev/null 2>&1 && START_IRSSI=y
	which rtorrent > /dev/null 2>&1 && START_RTORRENT=y

	case \$START_IRSSI\$START_RTORRENT in
		yy)
			runUserCmd "screen -S \$SESSIONNAME -d -t rtorrent -m rtorrent"
			runUserCmd "screen -d -r \$SESSIONNAME -X screen -t irssi irssi"
			;;
		yn)
			runUserCmd "screen -S \$SESSIONNAME -d -t irssi -m irssi"
			;;
		ny)
			runUserCmd "screen -S \$SESSIONNAME -d -t rtorrent -m rtorrent"
			;;
		nn)
			;;
	esac
	return 0
}

stopIt() {
	isStarted || return 0

	runUserCmd "screen -d -r \$SESSIONNAME -p irssi -X stuff \\"/quit
/quit
\\""
	runUserCmd "screen -d -r \$SESSIONNAME -p rtorrent -X xon"

	for i in 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4; do
		isStarted || break
		sleep 1
	done

	# If it's still not stopped, kill the whole screen session
	if isStarted; then
		echo -n "Couldn't stop it. Killing screen session..."
		runUserCmd "screen -d -r \$SESSIONNAME -p rtorrent -X xon"
		sleep 2
		runUserCmd "screen -d -r \$SESSIONNAME -X quit"
		echo "Done."
	fi

	return 0
}

v_restartIt() {
	v_stopIt
	v_startIt
}

v_showStatus() {
	if isStarted; then
		echo "\$NAME is running."
	else
		echo "\$NAME is stopped."
	fi
}
EOF
}

getChkconfigScriptContents_autodl() {
	getChkconfigScriptContents "$AUTODL_STARTUP_DESC"
}

# LSB style script, also supports chkconfig
# $1 = user name
# $2 = service name
getLsbStartupHeader_autodl() {
	local USER="$1"
	local STARTUPNAME="$2"
	cat << EOF
$(getChkconfigScriptContents_autodl)
$(getLsbStartupScriptContents "$STARTUPNAME" "$AUTODL_STARTUP_DESC")

$(getCommonStartupScriptContents_autodl "$USER" "$STARTUPNAME")
EOF
}

installService_mandriva() {
	local serviceName="$1"
	local headerCommand="$2"
	installService_chkconfig1 $serviceName
	cat > "$CHKCONFIG_SERVICE_FILE" << EOF
#!/bin/bash
$(eval $headerCommand)

. /etc/rc.d/init.d/functions

v_startIt() {
	gprintf "Starting %s:" "\$NAME"
	startIt && success "startup" || failure "startup"
	echo
}

v_stopIt() {
	gprintf "Stopping %s:" "\$NAME"
	stopIt && success "stop" || failure "stop"
	echo
}

$(getLsbStartupFooter "$CHKCONFIG_LOCK_FILE")
EOF
	[ $? -eq 0 ] || errorExit "Could not write to file $CHKCONFIG_SERVICE_FILE. Run this script as root."
	installService_chkconfig2
}

installService_mandriva_autodl() {
	local user=$1
	installService_mandriva autodl_$user "getLsbStartupHeader_autodl \"$user\" \"\$CHKCONFIG_SERVICE_NAME\""
}

installService_mandriva_phpcgi() {
	installService_mandriva phpcgi getLsbStartupHeader_phpcgi
}

installService_mandriva_nginx() {
	installService_mandriva nginx getLsbStartupHeader_nginx
}

installService_mandriva_lighttpd() {
	installService_mandriva lighttpd getLsbStartupHeader_lighttpd
}

installService_gentoo() {
	local scriptName="$1"
	local desc="$2"
	local headerCommand="$3"
	local serviceFile="/etc/init.d/$scriptName"

	cat > "$serviceFile" << EOF
#!/sbin/runscript

name=$scriptName
description="$desc"

depend() {
	need localmount
	need net
}

$(eval $headerCommand)

start() {
	ebegin "Starting \$name"
	startIt
	eend \$?
}

stop() {
	ebegin "Stopping \$name"
	stopIt
	eend \$?
}

status() {
	if isStarted; then
		einfo "status: started"
		return 0
	else
		einfo "status: stopped"
		return 1
	fi
}
EOF
	[ $? -eq 0 ] || errorExit "Could not write to file $serviceFile. Run this script as root."
	chmod +x "$serviceFile"
	rc-update add $scriptName default || errorExit "Could not add service $scriptName"
	$serviceFile restart
}

installService_gentoo_autodl() {
	local user="$1"
	installService_gentoo autodl_$user "$AUTODL_STARTUP_DESC" "getCommonStartupScriptContents_autodl \"$user\" \"\$scriptName\""
}

installService_gentoo_phpcgi() {
	installService_gentoo phpcgi "$PHPCGI_STARTUP_DESC" "getCommonStartupScriptContents_phpcgi \"$WWW_USER\" \"$WWW_PHP_CGI\""
}

installService_gentoo_nginx() {
	installService_gentoo nginx "$NGINX_STARTUP_DESC" "getCommonStartupScriptContents_nginx \"$NGINX_BIN\""
}

installService_gentoo_lighttpd() {
	installService_gentoo lighttpd "$LIGHTTPD_STARTUP_DESC" "getCommonStartupScriptContents_lighttpd \"$LIGHTTPD_BIN\""
}

installService_bsd_autodl() {
	local user="$1"
	local scriptName="$2"
	local file="$3"

	cat > "$file" << EOF
#!/bin/sh
# PROVIDE: autodl_$user
# REQUIRE: FILESYSTEMS NETWORKING
# KEYWORD: shutdown

. /etc/rc.subr

name=$scriptName
desc="$AUTODL_STARTUP_DESC"
start_cmd=v_startIt
stop_cmd=v_stopIt
restart_cmd=v_restartIt
reload_cmd=v_restartIt
status_cmd=v_showStatus
extra_commands="status"

v_startIt() {
	echo -n "Starting \$NAME"
	startIt && echo "." || echo ". ERROR."
}

v_stopIt() {
	echo -n "Stopping \$NAME..."
	stopIt && echo "done." || echo "ERROR."
}

$(getCommonStartupScriptContents_autodl "$user" "$scriptName")

load_rc_config \$name
run_rc_command "\$1"
EOF
	[ $? -eq 0 ] || errorExit "Could not write to file $file. Run this script as root."
	chmod +x "$file"
}

getCommonStartupScriptContents_simpleService() {
	local USER="$1"
	local BINPATH="$2"
	local START_CMD="$3"
	local PID_FILE="$4"
	cat << EOF
USER=$USER
BINPATH="$BINPATH"
NAME=\${BINPATH##*/}
PID_FILE="$PID_FILE"

resetPath() {
	PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:\$PATH"
}
resetPath

getPids() {
	if [ -n "\$PID_FILE" ]; then
		pids=
		[ -f "\$PID_FILE" ] || return
		local the_pids="\$(cat "\$PID_FILE" 2>/dev/null)"
		for pid in \$the_pids; do
			PS_FORMAT= LINES= COLUMNS= ps ax | grep -qE "^[ 	]*\$pid[ 	]" && pids="\$pids \$pid"
		done
		[ -z "\$pids" ] && rm -f "\$PID_FILE"
	else
		# ps uses the COLUMNS variable... Make sure it's off so we get the full path.
		pids=\$(PS_FORMAT= LINES= COLUMNS= ps aux | grep -v grep | grep \$BINPATH | awk '{print \$2}')
	fi
}

isStarted() {
	getPids
	[ -n "\$pids" ] && return 0
	return 1
}

startIt() {
	isStarted && return 0

	if [ \$USER = root ]; then
		$START_CMD
	else
		su - \$USER "-c $START_CMD"
	fi
	[ -n "\$PID_FILE" ] && sleep 2	# Allow it some time to create the pid file
	if ! isStarted; then
		for i in 1 2 3 4 5; do
			sleep 1
			isStarted && break
		done
		isStarted || return 1
	fi

	return 0
}

stopIt() {
	isStarted || return 0

	kill \$pids 2>/dev/null

	for i in 0 1 2 3 4 5 6 7 8 9; do
		isStarted || break
		sleep 1
	done

	isStarted && kill -KILL \$pids 2>/dev/null

	return 0
}

v_startIt() {
	startIt
}

v_stopIt() {
	stopIt
}

v_restartIt() {
	v_stopIt
	v_startIt
}

v_showStatus() {
	if isStarted; then
		echo "\$NAME is running."
	else
		echo "\$NAME is stopped."
	fi
}
EOF
}

getCommonStartupScriptContents_phpcgi() {
	[ -n "$PHPCGI_SOCKET_FILE" ] || errorExit "PHPCGI_SOCKET_FILE is not initialized"
	getCommonStartupScriptContents_simpleService "$1" "$2" \
		"PHP_FCGI_CHILDREN=5 PHP_FCGI_MAX_REQUESTS=125 \$BINPATH -q -b \"$PHPCGI_SOCKET_FILE\" &"
}

getLsbStartupHeader_phpcgi() {
	getChkconfigScriptContents "$PHPCGI_STARTUP_DESC"
	getLsbStartupScriptContents phpcgi "$PHPCGI_STARTUP_DESC"

	getCommonStartupScriptContents_phpcgi "$WWW_USER" "$WWW_PHP_CGI"
}

getCommonStartupScriptContents_nginx() {
	getCommonStartupScriptContents_simpleService "root" "$1" "\$BINPATH" "$NGINX_PID_FILE"
}

getLsbStartupHeader_nginx() {
	getChkconfigScriptContents "$NGINX_STARTUP_DESC"
	getLsbStartupScriptContents nginx "$NGINX_STARTUP_DESC"

	getCommonStartupScriptContents_nginx "$NGINX_BIN"
}

getCommonStartupScriptContents_lighttpd() {
	getCommonStartupScriptContents_simpleService "root" "$1" "\$BINPATH -f $LIGHTTPD_CONF 2>/dev/null" "$LIGHTTPD_PID_FILE"
}

getLsbStartupHeader_lighttpd() {
	getChkconfigScriptContents "$LIGHTTPD_STARTUP_DESC"
	getLsbStartupScriptContents lighttpd "$LIGHTTPD_STARTUP_DESC"

	getCommonStartupScriptContents_lighttpd "$LIGHTTPD_BIN"
}

addLsbHeaderToStartupScript() {
	local scriptPath="$1"
	local provides="${2:-$scriptPath}"
	local desc="${3:-$provides}"
	[ -x "$scriptPath" ] || return
	grep -qE '^### BEGIN INIT INFO' "$scriptPath" && return
	ed -s "$scriptPath" > /dev/null 2>&1 << EOF
1a
$(getLsbStartupScriptContents "$provides" "$desc")
.
w
q
EOF
}

installMissingPerlModules() {
	detectMissingPerlModules
	[ -z "$MISSING_PERL_MODULES" ] && return
	cat << EOF
$CWARNING
The following Perl modules are still missing:
	$MISSING_PERL_MODULES
I'll try to use the cpan script to install them.$CEND
EOF

	# Some Perl modules will fail to build unless Test::More is installed
	MISSING_PERL_MODULES="Test::More $MISSING_PERL_MODULES"

	echo "${CMSG}Installing cpan and required build tools...$CEND"
	installBuildTools
	osHandler_$os installCpanTools
	detectCpanBin
	if [ -n "$CPAN" ]; then
		$CPAN $MISSING_PERL_MODULES
	else
		local mods=
		for mod in $MISSING_PERL_MODULES; do
			[ -n "$mods" ] && mods="$mods,"
			mods="$mods \"$mod\""
		done
		perl -MCPAN -e "CPAN::Shell->install($mods)"
	fi

	detectMissingPerlModules
	[ -z "$MISSING_PERL_MODULES" ] && return
	errorExit "CPAN somehow failed to install the missing Perl modules. Missing: $MISSING_PERL_MODULES"
}

osHandler_debian() {
	case $1 in
		init)
			INSTALL="apt-get -y install"
			FEATURES="service rtorrent apache nginx lighttpd vsftpd webmin"
			BUILD_TOOLS="build-essential make file pkg-config libtool m4"
			;;
		init2)
			apt-get update
			installProgram ed

			# Make sure Debian 6 doesn't fail when adding new services. We need ed for this
			# so run it after installing ed...
			addLsbHeaderToStartupScript /etc/init.d/webmin "webmin" "webmin"
			;;
		installTools)
			PACKAGES=
			addProgram svn subversion
			addProgram wget
			addProgram unzip
			addProgram screen
			installPackages
			# Make sure subversion won't complain about invalid certs
			$INSTALL ca-certificates
			;;
		installAutodlTools)
			PACKAGES=
			addProgram perl
			addProgram irssi
			addPerlModule Archive::Zip libarchive-zip-perl
			addPerlModule HTML::Parser libhtml-parser-perl
			addPerlModule Digest::SHA1 libdigest-sha1-perl
			installPackages

			installPerlModule Net::SSLeay libnet-ssleay-perl
			installPerlModule XML::LibXML libxml-libxml-perl
			installPerlModule JSON::XS libjson-xs-perl
			installPerlModule JSON libjson-perl
			;;
		installCpanTools)
			# Need to remove the old JSON or cpan may fail to build the modules
			if echo "$OLD_PERL_MODULES" | grep -qE '(^| )JSON( |$)'; then
				apt-get -y remove libjson-perl
			fi

			PACKAGES=
			if echo "$MISSING_PERL_MODULES" | grep -q 'XML::LibXML'; then
				PACKAGES="$PACKAGES libxml2 libxml2-dev zlib1g zlib1g-dev"
			fi
			if echo "$MISSING_PERL_MODULES" | grep -q 'Net::SSLeay'; then
				# There's no libssl package
				PACKAGES="$PACKAGES openssl libssl-dev zlib1g zlib1g-dev"
			fi
			installPackages
			;;
		installRtorrentBuildTools)
			PACKAGES="libsigc++-2.0-dev libssl-dev libncurses-dev"
			if apt-cache search libcurl4-openssl-dev 2> /dev/null | grep -q 'libcurl4-openssl-dev'; then
				PACKAGES="$PACKAGES libcurl4-openssl-dev"
			else
				PACKAGES="$PACKAGES libcurl3-openssl-dev"
			fi
			installPackages
			;;
		installPhpModules)
			installMissingPhp5Packages
			;;
		_installService)
			local serviceName="$2"
			local headerCommand="$3"
			local serviceFile=/etc/init.d/$serviceName
			local lockFile=
			cat > "$serviceFile" << EOF
#!/bin/sh
$(eval $headerCommand)

. /lib/lsb/init-functions

v_startIt() {
	log_begin_msg "Starting \$NAME..."
	startIt
	log_end_msg \$?
}

v_stopIt() {
	log_begin_msg "Stopping \$NAME..."
	stopIt
	log_end_msg \$?
}

$(getLsbStartupFooter "$lockFile")
EOF
			[ $? -eq 0 ] || errorExit "Could not write to file $serviceFile. Run this script as root."
			chmod +x "$serviceFile" || errorExit "Could not set +x bit, file $serviceFile."
			update-rc.d $serviceName defaults || errorExit "Could not install service $serviceFile. Run this script as root."
			invoke-rc.d $serviceName restart
			;;
		installAutodlService)
			local user=$2
			osHandler_$os _installService autodl_$user "getLsbStartupHeader_autodl \"$user\" \"\$serviceName\""
			;;
		_installCommonWebServerStuff)
			# Also add some extra tools for ruTorrent and some of its plugins
			PACKAGES="php5-cli gzip curl openssl logrotate"
			installPackages
			# Ubuntu 8 doesn't have php5-geoip
			PACKAGES="php5-geoip"
			installPackages
			PACKAGES="unrar"
			installPackages
			;;
		installApache)
			osHandler_$os _installCommonWebServerStuff
			PACKAGES="apache2-mpm-prefork libapache2-mod-php5 php5 "
			installPackages
			PACKAGES="libapache2-mod-scgi"; installPackages

			WWW_PHP_INI=/etc/php5/apache2/php.ini
			APACHE_DIR=/etc/apache2
			APACHE_SITE_NAME=rutorrent
			APACHE_SCGI_FILE=$APACHE_DIR/mods-available/scgi.load
			initializeApacheVars www-data www-data "$APACHE_DIR/sites-available"
			apacheCommonInitialization "apache2-prefork-dev" /usr/lib/apache2/modules

			a2enmod ssl || errorExit "Could not enable mod_ssl"
			a2enmod scgi || errorExit "Could not enable mod_scgi"
			# Ubuntu Server 6 doesn't come with this module
			a2enmod auth_basic
			a2dissite default
			a2dissite default-ssl
			a2ensite $APACHE_SITE_NAME || errorExit "Could not enable site"
			if ! grep -qE "^[ 	]*Listen.*[: 	]$HTTPS_PORT\\>" "$APACHE_DIR/ports.conf"; then
				echo "Listen $HTTPS_PORT" >> "$APACHE_DIR/ports.conf"
			fi
			resetWebServerPermissions
			invoke-rc.d apache2 restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		restart_apache)
			invoke-rc.d apache2 restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		installVsftpd)
			installProgram vsftpd
			updateVsftpdConf /etc/vsftpd.conf
			invoke-rc.d vsftpd restart || errorExit "Could not restart vsftpd"
			;;
		preNginxInstall)
			WWW_PHP_INI=/etc/php5/cgi/php.ini
			osHandler_$os _installCommonWebServerStuff
			PACKAGES="libpcre3-dev libssl-dev zlib1g-dev php5-cgi"
			installPackages

			# Make sure it builds on Debian GNU/kFreeBSD 6.0.
			if [ "$(uname -s)" != Linux ]; then
				NGINX_CFLAGS="-D_GNU_SOURCE -D_FILE_OFFSET_BITS=64"
			fi
			;;
		installPhpCgiService)
			osHandler_$os _installService phpcgi getLsbStartupHeader_phpcgi
			;;
		installNginxService)
			osHandler_$os _installService nginx getLsbStartupHeader_nginx
			;;
		restart_nginx)
			invoke-rc.d phpcgi restart || errorExit "Could not start php-cgi"
			invoke-rc.d nginx restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		preLighttpdInstall)
			WWW_PHP_INI=/etc/php5/cgi/php.ini
			osHandler_$os _installCommonWebServerStuff
			PACKAGES="libpcre3-dev libssl-dev zlib1g-dev php5-cgi"
			installPackages
			;;
		installLighttpdService)
			osHandler_$os _installService lighttpd getLsbStartupHeader_lighttpd
			;;
		restart_lighttpd)
			invoke-rc.d phpcgi restart || errorExit "Could not start php-cgi"
			invoke-rc.d lighttpd restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		postWebminInstall)
			addLsbHeaderToStartupScript /etc/init.d/webmin "webmin" "webmin"
			;;
		*)
			;;
	esac
}

osHandler_fedora() {
	case $1 in
		init)
			INSTALL="yum -y install"
			FEATURES="service rtorrent apache nginx lighttpd vsftpd webmin"
			BUILD_TOOLS="gcc gcc-c++ make kernel-headers pkgconfig file libtool m4"
			;;
		init2)
			installProgram which
			installProgram ed
			;;
		installTools)
			PACKAGES=
			addProgram svn subversion
			addProgram wget
			addProgram unzip
			addProgram screen
			installPackages
			;;
		installAutodlTools)
			if grep -q "release 4[. ]" /etc/redhat-release; then
				IRSSI_LOAD_PERL=y
			fi
			PACKAGES=
			addProgram perl
			addProgram irssi
			addPerlModule Time::HiRes perl-Time-HiRes
			addPerlModule Archive::Zip perl-Archive-Zip
			addPerlModule Net::SSLeay perl-Net-SSLeay
			addPerlModule HTML::Parser perl-HTML-Parser
			addPerlModule XML::LibXML perl-XML-LibXML
			addPerlModule Digest::SHA1 perl-Digest-SHA1
			addPerlModule JSON::XS perl-JSON-XS
			addPerlModule JSON perl-JSON
			installPackages
			;;
		installCpanTools)
			# Need to remove the old JSON or cpan may fail to build the modules
			if echo "$OLD_PERL_MODULES" | grep -qE '(^| )JSON( |$)'; then
				yum -y remove perl-JSON
			fi

			# CentOS doesn't have 'perl-CPAN'. It's in the 'perl' package though.
			PACKAGES="perl-CPAN"
			if echo "$MISSING_PERL_MODULES" | grep -q 'XML::LibXML'; then
				PACKAGES="$PACKAGES libxml2 libxml2-devel zlib zlib-devel"
			fi
			if echo "$MISSING_PERL_MODULES" | grep -q 'Net::SSLeay'; then
				PACKAGES="$PACKAGES openssl openssl-devel zlib zlib-devel"
			fi
			installPackages
			;;
		installRtorrentBuildTools)
			# CentOS 5: curl-devel, no libsigc++20
			# Fedora 14: libcurl-devel
			PACKAGES="libsigc++20-devel ncurses-devel openssl-devel libcurl-devel curl-devel"
			installPackages
			;;
		installPhpModules)
			;;
		_installService)
			local serviceName="$2"
			local headerCommand="$3"
			installService_chkconfig1 $serviceName
			cat > "$CHKCONFIG_SERVICE_FILE" << EOF
#!/bin/bash
$(eval $headerCommand)

. /etc/rc.d/init.d/functions

v_startIt() {
	echo -n "Starting \$NAME: "
	startIt && success || failure
	echo
}

v_stopIt() {
	echo -n "Stopping \$NAME: "
	stopIt && success || failure
	echo
}

$(getLsbStartupFooter "$CHKCONFIG_LOCK_FILE")
EOF
			[ $? -eq 0 ] || errorExit "Could not write to file $CHKCONFIG_SERVICE_FILE. Run this script as root."
			installService_chkconfig2
			;;
		installAutodlService)
			local user=$2
			osHandler_$os _installService autodl_$user "getLsbStartupHeader_autodl \"$user\" \"\$CHKCONFIG_SERVICE_NAME\""
			;;
		_installCommonWebServerStuff)
			PACKAGE="php-cli gzip curl openssl unrar logrotate"
			installPackages
			# CentOS 4: will get an error about a php v4 dependency, so can't put it in above PACKAGE var
			PACKAGES="php-pecl-geoip"
			installPackages
			;;
		installApache)
			osHandler_$os _installCommonWebServerStuff
			# Also add some extra tools for ruTorrent and some of its plugins
			PACKAGES="httpd httpd-tools mod_ssl mod_scgi php"
			installPackages

			WWW_PHP_INI=/etc/php.ini
			APACHE_DIR=/etc/httpd
			local APACHE_CONF_D=$APACHE_DIR/conf.d
			APACHE_SCGI_FILE=$APACHE_CONF_D/scgi.conf
			initializeApacheVars apache apache "$APACHE_CONF_D"
			apacheCommonInitialization "httpd-devel" $APACHE_DIR/modules

			[ -f "$APACHE_CONF_D/welcome.conf" ] && mv -f "$APACHE_CONF_D/welcome.conf" "$APACHE_CONF_D/welcome.conf-bak"
			# Remove an Apache warning by commenting out the default SSL VirtualHost
			sed_i '/^<VirtualHost _default_:443>/,/^<\/VirtualHost>/s/^/#/' $APACHE_CONF_D/ssl.conf

			resetWebServerPermissions
			chkconfig httpd on
			service httpd restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		restart_apache)
			service httpd restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		installVsftpd)
			installVsftpd_chkconfig /etc/vsftpd/vsftpd.conf
			;;
		preNginxInstall)
			WWW_PHP_INI=/etc/php.ini
			osHandler_$os _installCommonWebServerStuff
			PACKAGES="pcre-devel openssl-devel zlib-devel php-cgi"
			installPackages
			;;
		installPhpCgiService)
			osHandler_$os _installService phpcgi getLsbStartupHeader_phpcgi
			;;
		installNginxService)
			osHandler_$os _installService nginx getLsbStartupHeader_nginx
			;;
		restart_nginx)
			service phpcgi restart || errorExit "Could not start php-cgi"
			service nginx restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		preLighttpdInstall)
			WWW_PHP_INI=/etc/php.ini
			osHandler_$os _installCommonWebServerStuff
			PACKAGES="pcre-devel openssl-devel zlib-devel php-cgi"
			installPackages
			;;
		installLighttpdService)
			osHandler_$os _installService lighttpd getLsbStartupHeader_lighttpd
			;;
		restart_lighttpd)
			service phpcgi restart || errorExit "Could not start php-cgi"
			service lighttpd restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		*)
			;;
	esac
}

osHandler_pclinuxos() {
	case $1 in
		init)
			INSTALL="apt-get -y install"
			FEATURES="service rtorrent apache nginx lighttpd vsftpd webmin"
			BUILD_TOOLS="gcc gcc-c++ make pkgconfig file libtool m4"
			;;
		init2)
			apt-get update
			installProgram ed
			;;
		installTools)
			PACKAGES=
			addProgram svn subversion
			addProgram wget
			addProgram unzip
			addProgram screen
			installPackages
			;;
		installAutodlTools)
			IRSSI_LOAD_PERL=y
			PACKAGES=
			addProgram perl
			addProgram irssi
			rpm -q --quiet irssi-perl || PACKAGES="$PACKAGES irssi-perl"
			addPerlModule Archive::Zip perl-Archive-Zip
			addPerlModule HTML::Parser perl-HTML-Parser
			addPerlModule Digest::SHA1 perl-Digest-SHA1
			installPackages

			installPerlModule Net::SSLeay perl-Net-SSLeay
			installPerlModule XML::LibXML perl-XML-LibXML
			installPerlModule JSON::XS perl-JSON-XS
			installPerlModule JSON perl-JSON
			;;
		installCpanTools)
			# Need to remove the old JSON or cpan may fail to build the modules
			if echo "$OLD_PERL_MODULES" | grep -qE '(^| )JSON( |$)'; then
				apt-get -y remove perl-JSON
			fi

			PACKAGES="perl-CPAN perl-devel"
			if echo "$MISSING_PERL_MODULES" | grep -q 'XML::LibXML'; then
				PACKAGES="$PACKAGES libxml2 libxml2-devel zlib1 zlib1-devel"
			fi
			if echo "$MISSING_PERL_MODULES" | grep -q 'Net::SSLeay'; then
				PACKAGES="$PACKAGES openssl libopenssl-devel zlib1 zlib1-devel"
			fi
			installPackages
			;;
		installRtorrentBuildTools)
			PACKAGES="libsigc++2.0-devel libopenssl-devel libncurses-devel libcurl-devel"
			installPackages
			;;
		installPhpModules)
			installMissingPhpPackages
			;;
		installAutodlService)
			installService_mandriva_autodl $2
			;;
		installApache)
			installApache_mandriva
			;;
		restart_apache)
			service httpd restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		installVsftpd)
			installVsftpd_chkconfig /etc/vsftpd/vsftpd.conf
			;;
		preNginxInstall)
			WWW_PHP_INI=/etc/php-cgi-fcgi.ini
			installCommonWebServerStuff_mandriva
			PACKAGES="pcre-devel libopenssl-devel zlib1-devel php-cgi"
			installPackages
			;;
		installPhpCgiService)
			installService_mandriva_phpcgi
			;;
		installNginxService)
			installService_mandriva_nginx
			;;
		restart_nginx)
			service phpcgi restart || errorExit "Could not start php-cgi"
			service nginx restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		preLighttpdInstall)
			WWW_PHP_INI=/etc/php-cgi-fcgi.ini
			installCommonWebServerStuff_mandriva
			PACKAGES="pcre-devel libopenssl-devel zlib1-devel php-cgi"
			installPackages
			;;
		installLighttpdService)
			installService_mandriva_lighttpd
			;;
		restart_lighttpd)
			service phpcgi restart || errorExit "Could not start php-cgi"
			service lighttpd restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		*)
			;;
	esac
}

archAddService() {
	local serviceName="$1"
	local rcFile=/etc/rc.conf
	if ! grep -qE '^DAEMONS=' $rcFile; then
		echo "DAEMONS=($serviceName)" >> $rcFile
	elif ! grep -E '^DAEMONS=' $rcFile | grep -qE "[ 	(]$serviceName[ 	)]"; then
		sed_i "s/^\\(DAEMONS=(.*\\))/\\1 $serviceName)/" $rcFile
	fi
}

osHandler_arch() {
	case $1 in
		init)
			INSTALL="pacman -Sq --noconfirm --needed"
			FEATURES="service rtorrent apache nginx lighttpd vsftpd webmin"
			BUILD_TOOLS="gcc make pkg-config file libtool m4"
			WWW_PHP_INI=/etc/php/php.ini
			;;
		init2)
			pacman -Sy
			# If you don't do this, eg. svn may fail because of old libraries.
			# Do it twice in case pacman is updated.
			pacman -Su --noconfirm
			pacman -Su --noconfirm
			installProgram ed
			;;
		installTools)
			PACKAGES=
			addProgram svn subversion
			addProgram wget
			addProgram unzip
			addProgram screen
			installPackages
			;;
		installAutodlTools)
			PACKAGES=
			addProgram perl
			addProgram irssi
			addPerlModule HTML::Parser perl-html-parser
			addPerlModule Digest::SHA1 perl-digest-sha1
			installPackages

			installPerlModule Archive::Zip perl-archive-zip
			installPerlModule Net::SSLeay perl-net-ssleay
			installPerlModule XML::LibXML perl-xml-libxml
			installPerlModule JSON::XS perl-json-xs
			installPerlModule JSON perl-json
			;;
		installCpanTools)
			PACKAGES=
			if echo "$MISSING_PERL_MODULES" | grep -q 'XML::LibXML'; then
				PACKAGES="$PACKAGES libxml2 zlib"
			fi
			if echo "$MISSING_PERL_MODULES" | grep -q 'Net::SSLeay'; then
				PACKAGES="$PACKAGES openssl zlib"
			fi
			installPackages
			;;
		installRtorrentBuildTools)
			PACKAGES="libsigc++ openssl ncurses curl"
			installPackages
			;;
		installPhpModules)
			enablePhpIniModules "$WWW_PHP_INI" $MISSING_PHP_MODULES
			;;
		_installService)
			local serviceName="$2"
			local headerCommand="$3"
			local serviceFile=/etc/rc.d/$serviceName
			local lockFile=/var/run/daemons/$serviceName
			cat > "$serviceFile" << EOF
#!/bin/sh
$(eval $headerCommand)

. /etc/rc.conf
. /etc/rc.d/functions

v_startIt() {
	stat_busy "Starting \$NAME: "
	startIt && stat_done || stat_fail
}

v_stopIt() {
	stat_busy "Stopping \$NAME: "
	stopIt && stat_done || stat_fail
}

$(getLsbStartupFooter "$lockFile")
EOF
			[ $? -eq 0 ] || errorExit "Could not write to file $serviceFile. Run this script as root."
			chmod +x "$serviceFile" || errorExit "Could not set +x bit, file $serviceFile."
			archAddService "$serviceName"
			$serviceFile restart
			;;
		installAutodlService)
			local user="$2"
			osHandler_$os _installService autodl_$user "getLsbStartupHeader_autodl \"$user\" \"\$serviceName\""
			;;
		_installCommonWebServerStuff)
			# Also add some extra tools for ruTorrent and some of its plugins
			PACKAGES="php gzip curl openssl logrotate"
			installPackages
			PACKAGE="unrar"
			installPackages
			PACKAGES="php-geoip"
			installPackages
			;;
		_initializePhpIni)
			local geoipFile=/etc/php/conf.d/geoip.ini
			[ -f "$geoipFile" ] && enablePhpIniModules "$geoipFile" geoip
			sed_i "s/^\\(open_basedir.*\\)/;\\1/" "$WWW_PHP_INI"
			;;
		installApache)
			osHandler_$os _installCommonWebServerStuff
			PACKAGES="apache php-apache"
			installPackages

			APACHE_DIR=/etc/httpd
			local APACHE_CONF=$APACHE_DIR/conf/httpd.conf
			local APACHE_CONF_D=$APACHE_DIR/conf/extra

			APACHE_SCGI_FILE=$APACHE_CONF_D/scgi.conf
			initializeApacheVars http http "$APACHE_CONF_D"
			apacheCommonInitialization "" $APACHE_DIR/modules

			# Remove an Apache warning by commenting out the default SSL VirtualHost
			sed_i '/^<VirtualHost _default_:443>/,/^<\/VirtualHost>/s/^/#/' $APACHE_CONF_D/httpd-ssl.conf
			sed_i 's!^\(Include conf/extra/httpd-vhosts.conf.*\)!#\1!' $APACHE_CONF

			cat > $APACHE_CONF_D/php5_module.conf << EOF
LoadModule php5_module modules/libphp5.so
DirectoryIndex index.php index.html
AddHandler application/x-httpd-php .php
AddHandler application/x-httpd-php-source .phps
EOF
			local loadFiles="php5_module.conf scgi.conf httpd-ssl.conf $APACHE_SITE_NAME"
			for file in $loadFiles; do
				sed_i "g!^Include conf/extra/$file!d" "$APACHE_CONF"
			done
			for file in $loadFiles; do
				echo "Include conf/extra/$file" >> "$APACHE_CONF"
			done
			osHandler_$os _initializePhpIni

			resetWebServerPermissions
			archAddService httpd
			/etc/rc.d/httpd restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		restart_apache)
			/etc/rc.d/httpd restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		installVsftpd)
			installProgram vsftpd
			updateVsftpdConf /etc/vsftpd.conf
			archAddService vsftpd
			/etc/rc.d/vsftpd restart || errorExit "Could not start vsftpd"
			;;
		preWebminInstall)
			sed_i 's!^init_dir=.*!init_dir=/etc/rc.d!' init/config-generic-linux
			;;
		postWebminInstall)
			[ -x /etc/rc.d/webmin ] && archAddService webmin
			;;
		preNginxInstall)
			osHandler_$os _installCommonWebServerStuff
			PACKAGES="pcre openssl zlib php-cgi"
			installPackages
			osHandler_$os _initializePhpIni
			;;
		installPhpCgiService)
			osHandler_$os _installService phpcgi getLsbStartupHeader_phpcgi
			;;
		installNginxService)
			osHandler_$os _installService nginx getLsbStartupHeader_nginx
			;;
		restart_nginx)
			/etc/rc.d/phpcgi restart || errorExit "Could not start php-cgi"
			/etc/rc.d/nginx restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		preLighttpdInstall)
			osHandler_$os _installCommonWebServerStuff
			PACKAGES="pcre openssl zlib php-cgi"
			installPackages
			osHandler_$os _initializePhpIni
			;;
		installLighttpdService)
			osHandler_$os _installService lighttpd getLsbStartupHeader_lighttpd
			;;
		restart_lighttpd)
			/etc/rc.d/phpcgi restart || errorExit "Could not start php-cgi"
			/etc/rc.d/lighttpd restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		*)
			;;
	esac
}

osHandler_freebsd() {
	case $1 in
		init)
			INSTALL="pkg_add -r"
			FEATURES="service rtorrent webmin"
			MAKE=gmake
			# gcc, g++, make are always installed
			BUILD_TOOLS="pkg-config gmake file libtool"
			;;
		init2)
			;;
		installTools)
			PACKAGES=
			addProgram svn subversion
			addProgram wget
			addProgram unzip
			addProgram screen
			installPackages
			;;
		installAutodlTools)
			PACKAGES=
			addProgram perl
			addProgram irssi
			addPerlModule Archive::Zip p5-Archive-Zip
			addPerlModule Net::SSLeay p5-Net-SSLeay
			addPerlModule HTML::Parser p5-HTML-Parser
			addPerlModule XML::LibXML p5-XML-LibXML
			addPerlModule Digest::SHA1 p5-Digest-SHA1
			addPerlModule JSON::XS p5-JSON-XS
			addPerlModule JSON p5-JSON
			installPackages
			;;
		installCpanTools)
			PACKAGES=
			if echo "$MISSING_PERL_MODULES" | grep -q 'XML::LibXML'; then
				# zlib is already installed, seems like there's no zlib package.
				PACKAGES="$PACKAGES libxml2"
			fi
			if echo "$MISSING_PERL_MODULES" | grep -q 'Net::SSLeay'; then
				# zlib is already installed, seems like there's no zlib package.
				PACKAGES="$PACKAGES openssl"
			fi
			installPackages
			;;
		installRtorrentBuildTools)
			PACKAGES="libsigc++20 openssl ncurses curl"
			installPackages
			;;
		installPhpModules)
			installMissingPhp5Packages
			;;
		installAutodlService)
			local user=$2
			local scriptName=autodl_$user
			local file=/etc/rc.d/$scriptName
			installService_bsd_autodl "$user" "$scriptName" "$file"
			setScriptVariable /etc/rc.conf ${scriptName}_enable YES
			$file restart
			;;
		*)
			;;
	esac
}

osHandler_openbsd() {
	case $1 in
		init)
			INSTALL="pkg_add -r"
			FEATURES="webmin"
			BUILD_TOOLS="libtool"
			;;
		init2)
			;;
		installTools)
			PACKAGES=
			addProgram svn subversion--
			addProgram wget
			addProgram unzip
			addProgram screen screen--
			installPackages
			;;
		installAutodlTools)
			PACKAGES=
			addProgram perl
			addProgram irssi irssi--
			addPerlModule Archive::Zip p5-Archive-Zip
			addPerlModule Net::SSLeay p5-Net-SSLeay
			addPerlModule HTML::Parser p5-HTML-Parser
			addPerlModule XML::LibXML p5-XML-LibXML
			addPerlModule Digest::SHA1 p5-Digest-SHA1
			addPerlModule JSON::XS p5-JSON-XS
			addPerlModule JSON p5-JSON
			installPackages
			;;
		installCpanTools)
			PACKAGES=
			if echo "$MISSING_PERL_MODULES" | grep -q 'XML::LibXML'; then
				# zlib is already installed, seems like there's no zlib package.
				# libxml is v2
				PACKAGES="$PACKAGES libxml"
			fi
			if echo "$MISSING_PERL_MODULES" | grep -q 'Net::SSLeay'; then
				# zlib is already installed, seems like there's no zlib package.
				PACKAGES="$PACKAGES openssl"
			fi
			installPackages
			;;
		installRtorrentBuildTools)
			;;
		installPhpModules)
			installMissingPhp5Packages
			;;
		installAutodlService)
			;;
		*)
			;;
	esac
}

osHandler_netbsd() {
	case $1 in
		init)
			INSTALL="pkg_add"
			FEATURES="service webmin"
			MAKE=gmake
			BUILD_TOOLS="gmake pkg-config file libtool"
			;;
		init2)
			;;
		installTools)
			PACKAGES=
			# Need expat for subversion! It's not auto installed.
			addProgram svn expat
			addProgram svn subversion-base
			addProgram wget
			addProgram unzip
			addProgram screen
			installPackages
			;;
		installAutodlTools)
			echo "The pre-built Irssi binary does not have Perl support so you must build it yourself!"
			IGNORE_IRSSI=y
			PACKAGES=
			addProgram perl
			addPerlModule Archive::Zip p5-Archive-Zip
			addPerlModule Net::SSLeay p5-Net-SSLeay
			addPerlModule HTML::Parser p5-HTML-Parser
			addPerlModule XML::LibXML p5-XML-LibXML
			addPerlModule Digest::SHA1 p5-Digest-SHA1
			addPerlModule JSON::XS p5-JSON-XS
			addPerlModule JSON p5-JSON
			installPackages
			;;
		installCpanTools)
			PACKAGES=
			if echo "$MISSING_PERL_MODULES" | grep -q 'XML::LibXML'; then
				PACKAGES="$PACKAGES libxml2 zlib"
			fi
			if echo "$MISSING_PERL_MODULES" | grep -q 'Net::SSLeay'; then
				PACKAGES="$PACKAGES openssl zlib"
			fi
			installPackages
			;;
		installRtorrentBuildTools)
			PACKAGES="libsigc++ openssl ncurses curl"
			installPackages
			;;
		installPhpModules)
			installMissingPhp5Packages
			;;
		installAutodlService)
			local user=$2
			local scriptName=autodl_$user
			local file=/etc/rc.d/$scriptName
			installService_bsd_autodl "$user" "$scriptName" "$file"
			setScriptVariable /etc/rc.conf ${scriptName} YES
			$file restart
			;;
		*)
			;;
	esac
}

osHandler_dragonfly() {
	osHandler_netbsd "$@"
}

osHandler_opensuse() {
	case $1 in
		init)
			INSTALL="zypper -n install"
			FEATURES="service rtorrent apache nginx lighttpd vsftpd webmin"
			BUILD_TOOLS="gcc gcc-c++ make pkg-config file libtool m4"

			# Fix for 11.4 (and possibly future versions)
			if ! echo "$os_long" | grep -qE ' 11\.[0-3]'; then
				LSB_DEFAULT_START="3 5"
				LSB_DEFAULT_STOP="0 1 2 4 6"
			fi
			;;
		init2)
			zypper refresh
			installProgram ed
			;;
		installTools)
			PACKAGES=
			addProgram svn subversion
			addProgram wget
			addProgram unzip
			addProgram screen
			installPackages
			;;
		installAutodlTools)
			PACKAGES=
			addProgram perl perl-base
			addProgram irssi
			addPerlModule Archive::Zip perl-Archive-Zip
			addPerlModule HTML::Parser perl-HTML-Parser
			addPerlModule Digest::SHA1 perl-Digest-SHA1
			installPackages

			installPerlModule Net::SSLeay perl-Net-SSLeay
			installPerlModule XML::LibXML perl-XML-LibXML
			installPerlModule JSON::XS perl-JSON-XS
			installPerlModule JSON perl-JSON
			;;
		installCpanTools)
			PACKAGES=
			if echo "$MISSING_PERL_MODULES" | grep -q 'XML::LibXML'; then
				PACKAGES="$PACKAGES libxml2 libxml2-devel zlib zlib-devel"
			fi
			if echo "$MISSING_PERL_MODULES" | grep -q 'Net::SSLeay'; then
				PACKAGES="$PACKAGES openssl libopenssl-devel zlib zlib-devel"
			fi
			installPackages
			;;
		installRtorrentBuildTools)
			PACKAGES="libsigc++2-devel ncurses-devel libopenssl-devel libcurl-devel"
			installPackages
			;;
		installPhpModules)
			installMissingPhp5Packages
			;;
		_installService)
			local serviceName="$2"
			local headerCommand="$3"
			installService_chkconfig1 $serviceName
			cat > "$CHKCONFIG_SERVICE_FILE" << EOF
#!/bin/bash
$(eval $headerCommand)

. /etc/rc.status
rc_reset

v_startIt() {
	echo -n "Starting \$NAME"
	startIt
	rc_status -v
}

v_stopIt() {
	echo -n "Stopping \$NAME"
	stopIt
	rc_status -v
}

$(getLsbStartupFooter "$CHKCONFIG_LOCK_FILE")
EOF
			[ $? -eq 0 ] || errorExit "Could not write to file $CHKCONFIG_SERVICE_FILE. Run this script as root."
			installService_chkconfig2
			;;
		installAutodlService)
			local user=$2
			osHandler_$os _installService autodl_$user "getLsbStartupHeader_autodl \"$user\" \"\$CHKCONFIG_SERVICE_NAME\""
			;;
		_installCommonWebServerStuff)
			# Also add some extra tools for ruTorrent and some of its plugins
			PACKAGES="php5 gzip curl openssl logrotate"
			installPackages
			PACKAGES="unrar"
			installPackages
			;;
		installApache)
			osHandler_$os _installCommonWebServerStuff
			PACKAGES="apache2-prefork apache2-mod_scgi apache2-mod_php5"
			installPackages

			WWW_PHP_INI=/etc/php5/apache2/php.ini
			APACHE_DIR=/etc/apache2
			local APACHE_CONF_D=$APACHE_DIR/conf.d
			initializeApacheVars wwwrun www "$APACHE_CONF_D"
			apacheCommonInitialization "apache2-devel" $APACHE_DIR/modules
			appendFileStringVar /etc/sysconfig/apache2 APACHE_SERVER_FLAGS SSL
			a2enmod php5 || errorExit "Could not enable mod_php5"
			a2enmod scgi || errorExit "Could not enable mod_scgi"

			resetWebServerPermissions
			chkconfig apache2 on
			service apache2 restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		restart_apache)
			service apache2 restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		installVsftpd)
			installVsftpd_chkconfig /etc/vsftpd.conf
			;;
		preNginxInstall)
			WWW_PHP_INI=/etc/php5/fastcgi/php.ini
			osHandler_$os _installCommonWebServerStuff
			PACKAGES="pcre-devel libopenssl-devel zlib-devel php5-fastcgi"
			installPackages
			;;
		installPhpCgiService)
			osHandler_$os _installService phpcgi getLsbStartupHeader_phpcgi
			;;
		installNginxService)
			osHandler_$os _installService nginx getLsbStartupHeader_nginx
			;;
		restart_nginx)
			service phpcgi restart || errorExit "Could not start php-cgi"
			service nginx restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		preLighttpdInstall)
			WWW_PHP_INI=/etc/php5/fastcgi/php.ini
			osHandler_$os _installCommonWebServerStuff
			PACKAGES="pcre-devel libopenssl-devel zlib-devel php5-fastcgi"
			installPackages
			;;
		installLighttpdService)
			osHandler_$os _installService lighttpd getLsbStartupHeader_lighttpd
			;;
		restart_lighttpd)
			service phpcgi restart || errorExit "Could not start php-cgi"
			service lighttpd restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		*)
			;;
	esac
}

osHandler_mandriva() {
	case $1 in
		init)
			INSTALL="urpmi --force"
			FEATURES="service rtorrent apache nginx lighttpd vsftpd webmin"
			BUILD_TOOLS="gcc gcc-c++ make pkgconfig file libtool m4"
			;;
		init2)
			urpmi.update -a
			installProgram ed
			;;
		installTools)
			PACKAGES=
			addProgram svn subversion
			addProgram wget
			addProgram unzip
			addProgram screen
			installPackages
			;;
		installAutodlTools)
			IRSSI_LOAD_PERL=y
			PACKAGES=
			addProgram perl
			addProgram irssi
			rpm -q --quiet irssi-perl || PACKAGES="$PACKAGES irssi-perl"
			addPerlModule Archive::Zip perl-Archive-Zip
			addPerlModule HTML::Parser perl-HTML-Parser
			addPerlModule Digest::SHA1 perl-Digest-SHA1
			installPackages

			installPerlModule Net::SSLeay perl-Net-SSLeay
			installPerlModule XML::LibXML perl-XML-LibXML
			installPerlModule JSON::XS perl-JSON-XS
			installPerlModule JSON perl-JSON
			;;
		installCpanTools)
			# Need to remove the old JSON or cpan may fail to build the modules
			if echo "$OLD_PERL_MODULES" | grep -qE '(^| )JSON( |$)'; then
				urpme perl-JSON
			fi

			PACKAGES="perl-CPAN perl-devel"
			if echo "$MISSING_PERL_MODULES" | grep -q 'XML::LibXML'; then
				PACKAGES="$PACKAGES libxml2 libxml2-devel zlib1 zlib1-devel"
			fi
			if echo "$MISSING_PERL_MODULES" | grep -q 'Net::SSLeay'; then
				PACKAGES="$PACKAGES openssl libopenssl-devel zlib1 zlib1-devel"
			fi
			installPackages
			;;
		installRtorrentBuildTools)
			PACKAGES="zlib1-devel libstdc++-devel libsigc++2.0-devel libncurses-devel libopenssl-devel libcurl-devel"
			installPackages
			;;
		installPhpModules)
			installMissingPhpPackages
			;;
		installAutodlService)
			installService_mandriva_autodl $2
			;;
		installApache)
			installApache_mandriva
			;;
		restart_apache)
			service httpd restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		installVsftpd)
			installVsftpd_chkconfig /etc/vsftpd/vsftpd.conf
			;;
		preNginxInstall)
			WWW_PHP_INI=/etc/php-cgi-fcgi.ini
			installCommonWebServerStuff_mandriva
			PACKAGES="pcre-devel libopenssl-devel zlib1-devel php-cgi"
			installPackages
			;;
		installPhpCgiService)
			installService_mandriva_phpcgi
			;;
		installNginxService)
			installService_mandriva_nginx
			;;
		restart_nginx)
			service phpcgi restart || errorExit "Could not start php-cgi"
			service nginx restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		preLighttpdInstall)
			WWW_PHP_INI=/etc/php-cgi-fcgi.ini
			installCommonWebServerStuff_mandriva
			PACKAGES="pcre-devel libopenssl-devel zlib1-devel php-cgi"
			installPackages
			;;
		installLighttpdService)
			installService_mandriva_lighttpd
			;;
		restart_lighttpd)
			service phpcgi restart || errorExit "Could not start php-cgi"
			service lighttpd restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		*)
			;;
	esac
}

osHandler_pardus() {
	case $1 in
		init)
			INSTALL="pisi -y it"
			FEATURES="service rtorrent apache vsftpd"
			IS_OLD=n; echo $os_long | grep -qE '200[0-9]' && IS_OLD=y
			BUILD_TOOLS="kernel-headers gcc make pkgconfig file libtool m4"
			[ "$IS_OLD" = n ] && BUILD_TOOLS="$BUILD_TOOLS glibc-devel"
			;;
		init2)
			pisi -y ur
			installProgram ed
			;;
		installTools)
			PACKAGES=
			addProgram svn subversion
			addProgram wget
			addProgram unzip
			addProgram screen
			installPackages
			;;
		installAutodlTools)
			PACKAGES=
			addProgram perl
			addProgram irssi
			addPerlModule Archive::Zip perl-Archive-Zip
			addPerlModule HTML::Parser perl-HTML-Parser
			addPerlModule Digest::SHA1 perl-Digest-SHA1
			installPackages

			installPerlModule Net::SSLeay perl-Net-SSLeay
			installPerlModule XML::LibXML perl-XML-LibXML
			installPerlModule JSON::XS perl-JSON-XS
			installPerlModule JSON perl-JSON
			;;
		installCpanTools)
			PACKAGES=
			if echo "$MISSING_PERL_MODULES" | grep -q 'XML::LibXML'; then
				PACKAGES="$PACKAGES libxml2 zlib"
				[ "$IS_OLD" = n ] && PACKAGES="$PACKAGES libxml2-devel zlib-devel"
			fi
			if echo "$MISSING_PERL_MODULES" | grep -q 'Net::SSLeay'; then
				PACKAGES="$PACKAGES openssl zlib"
				[ "$IS_OLD" = n ] && PACKAGES="$PACKAGES openssl-devel zlib-devel"
			fi
			installPackages
			;;
		installRtorrentBuildTools)
			PACKAGES="libsigc++ ncurses openssl curl"
			installPackages
			if [ "$IS_OLD" = n ]; then
				$INSTALL ncurses-devel

				# Pardus Corp 2 doesn't have these packages
				$INSTALL openssl-devel
				$INSTALL libsigc++-devel
				$INSTALL curl-devel
			fi
			;;
		installPhpModules)
			;;
		installAutodlService)
			local user="$2"
			local scriptName="autodl_$user"
			local serviceFile=$scriptName.py
			cd
			cat > $serviceFile << EOF
import os, time
from comar.service import *

serviceType = 'server'
serviceDesc = _({'en': '$AUTODL_STARTUP_DESC'})

sessionName = 'autodl'
user = '$user'
path = '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'

# Make sure the path is correct, and make sure we're in the home dir.
userInit='umask $DEFAULT_UMASK; cd; PATH=\\\$PATH:' + path

os.environ['PATH'] = path

def runUserCmd(cmd):
	cmd = 'su - ' + user + ' -c "' + userInit + '; ' + cmd + '"'
	return os.system(cmd)

def isStarted():
	if runUserCmd('screen -ls | grep -qE \\\\"[ 	][0-9]+\\\\.' + sessionName + '[ 	]\\\\"') == 0:
		return True
	return False

@synchronized
def start():
	if isStarted() == True:
		return

	startIrssi = 'n'
	startRtorrent = 'n'
	if os.system('which irssi') == 0:
		startIrssi = 'y'
	if os.system('which rtorrent') == 0:
		startRtorrent = 'y'

	if (startIrssi == 'y' and startRtorrent == 'y'):
		runUserCmd("screen -S " + sessionName + " -d -t rtorrent -m rtorrent")
		runUserCmd("screen -d -r " + sessionName + " -X screen -t irssi irssi")
	elif (startIrssi == 'y' and startRtorrent == 'n'):
		runUserCmd("screen -S " + sessionName + " -d -t irssi -m irssi")
	elif (startIrssi == 'n' and startRtorrent == 'y'):
		runUserCmd("screen -S " + sessionName + " -d -t rtorrent -m rtorrent")
	else:
		pass

@synchronized
def stop():
	if isStarted() == False:
		return

	runUserCmd("screen -d -r " + sessionName + " -p irssi -X stuff \\\\\\"/quit\\n/quit\\n\\\\\\"")
	runUserCmd("screen -d -r " + sessionName + " -p rtorrent -X xon")

	for i in range(15):
		if not isStarted():
			break
		time.sleep(1)

	# If it's still not stopped, kill the whole screen session
	if isStarted():
		runUserCmd("screen -d -r " + sessionName + " -p rtorrent -X xon")
		time.sleep(2)
		runUserCmd("screen -d -r " + sessionName + " -X quit")

def status():
	return isStarted()
EOF
			python << EOF
import sys
import comar
import dbus

try:
	link = comar.Link(socket='/var/run/dbus/system_bus_socket')
	link.register('$scriptName', 'System.Service', '$(pwd)/$serviceFile')
except Exception, e:
	print "Exception:\n", sys.exc_info()
	sys.exit(1)

sys.exit(0)
EOF
			[ $? -eq 0 ] || errorExit "Could not install startup file"
			rm -f $serviceFile
			service $scriptName on
			service $scriptName restart
			;;
		installApache)
			# Also add some extra tools for ruTorrent and some of its plugins
			PACKAGES="apache mod_php php-cli gzip curl openssl"
			installPackages
			PACKAGES="unrar"
			installPackages

			WWW_PHP_INI=
			for ini in /etc/php/apache2/php.ini /etc/php/php.ini; do
				if [ -f "$ini" ]; then
					WWW_PHP_INI="$ini"
					break
				fi
			done
			[ -f "$WWW_PHP_INI" ] || errorExit "Could not find Apache php.ini"

			APACHE_DIR=/etc/apache2
			local APACHE_CONF=$APACHE_DIR/httpd.conf
			local APACHE_SITES_DIR=$APACHE_DIR/vhosts.d
			APACHE_SCGI_FILE="$APACHE_DIR/modules.d/scgi.conf"
			initializeApacheVars apache apache "$APACHE_SITES_DIR"
			apacheCommonInitialization "" /usr/lib/apache2/modules

			for file in 00_default_vhost.conf; do
				[ -f "$APACHE_SITES_DIR/$file" ] && mv -f "$APACHE_SITES_DIR/$file" "$APACHE_SITES_DIR/$file-bak"
			done

			if ! grep -qE '^[ 	]*LoadModule.*mod_ssl\.' $APACHE_CONF; then
				echo "LoadModule ssl_module modules/mod_ssl.so" >> $APACHE_CONF
				echo "Listen $HTTPS_PORT" >> $APACHE_CONF
			fi

			resetWebServerPermissions
			service apache on
			osHandler_$os restart_$INSTALL_WEB_SERVER
			;;
		restart_apache)
			service apache stop
			sleep 5
			service apache start
			;;
		installVsftpd)
			installProgram vsftpd
			updateVsftpdConf /etc/vsftpd/vsftpd.conf
			service vsftpd on
			service vsftpd stop
			sleep 5
			service vsftpd start
			;;
		*)
			;;
	esac
}

osHandler_frugalware() {
	local APACHE_PHP_INI=/etc/php.ini
	case $1 in
		init)
			INSTALL="pacman -S --noconfirm"
			FEATURES="service rtorrent apache nginx lighttpd vsftpd webmin"
			BUILD_TOOLS="gcc gcc-g++ make kernel-headers pkgconfig file libtool m4"
			;;
		init2)
			# If we don't update all, there may be some library problems. Also sometimes
			# pacman is updated, so run the update twice.
			pacman -Sy
			pacman -Su --noconfirm
			pacman -Su --noconfirm
			;;
		installTools)
			PACKAGES=
			addProgram svn subversion
			addProgram wget
			addProgram unzip
			addProgram screen
			installPackages
			;;
		installAutodlTools)
			PACKAGES=
			addProgram perl
			addProgram irssi
			addPerlModule Archive::Zip perl-archive-zip
			addPerlModule HTML::Parser perl-html-parser
			addPerlModule Digest::SHA1 perl-digest-sha1
			installPackages

			installPerlModule Net::SSLeay perl-net-ssleay
			installPerlModule XML::LibXML perl-xml-libxml
			# 'common::sense' isn't installed automatically, so force it. There's no
			# perl-common-sense package, so use CPAN
			REQUIRED_PERL_MODULES="common::sense $REQUIRED_PERL_MODULES"
			installPerlModule JSON::XS perl-json-xs
			installPerlModule JSON perl-json
			;;
		installCpanTools)
			PACKAGES=
			if echo "$MISSING_PERL_MODULES" | grep -q 'XML::LibXML'; then
				PACKAGES="$PACKAGES libxml2 zlib"
			fi
			if echo "$MISSING_PERL_MODULES" | grep -q 'Net::SSLeay'; then
				PACKAGES="$PACKAGES openssl zlib"
			fi
			installPackages
			;;
		installRtorrentBuildTools)
			PACKAGES="libsigc++2 openssl ncurses curl"
			installPackages
			;;
		installPhpModules)
			enablePhpIniModules "$APACHE_PHP_INI" $MISSING_PHP_MODULES
			;;
		_installService)
			local serviceName="$2"
			local desc="$3"
			local headerCommand="$4"
			local serviceFile="/etc/rc.d/rc.$serviceName"
			cat > "$serviceFile" << EOF
#!/bin/bash
$(getChkconfigScriptContents "$desc")

. /lib/initscripts/functions

$(eval $headerCommand)

actions=(restart start stop status)
daemon="$serviceName"

rc_start() {
	start_msg
	startIt
	ok \$?
}

rc_stop() {
	stop_msg
	stopIt
	ok \$?
}

rc_restart() {
	rc_stop
	rc_start
}

rc_status() {
	status_msg
	if isStarted; then
		ok 997
		exit 0
	else
		ok 998
		exit 1
	fi
}

rc_exec \$1
EOF
			[ $? -eq 0 ] || errorExit "Could not write to file $serviceFile. Run this script as root."
			chmod +x "$serviceFile"
			service $serviceName add || errorExit "Could not add service $serviceName"
			service $serviceName restart
			;;
		installAutodlService)
			local user="$2"
			osHandler_$os _installService autodl_$user "$AUTODL_STARTUP_DESC" "getCommonStartupScriptContents_autodl \"$user\" \"\$serviceName\""
			;;
		_installCommonWebServerStuff)
			# Also add some extra tools for ruTorrent and some of its plugins
			PACKAGES="php gzip curl openssl logrotate"
			installPackages
			PACKAGES="unrar"
			installPackages
			;;
		installApache)
			osHandler_$os _installCommonWebServerStuff
			PACKAGES="apache"
			installPackages

			WWW_PHP_INI=$APACHE_PHP_INI
			APACHE_DIR=/etc/httpd/conf
			local APACHE_CONF=$APACHE_DIR/httpd.conf
			APACHE_SCGI_FILE="$APACHE_DIR/modules.d/scgi.conf"
			initializeApacheVars www www "$APACHE_DIR/modules.d"
			apacheCommonInitialization "" /usr/lib/apache

			# Remove an Apache warning by commenting out the default SSL VirtualHost
			sed_i '/^<VirtualHost _default_:443>/,/^<\/VirtualHost>/s/^/#/' $APACHE_DIR/ssl.conf
			if ! grep -qE '^[ 	]*Include .*/ssl.conf' $APACHE_CONF; then
				echo "Include $APACHE_DIR/ssl.conf" >> $APACHE_CONF
			fi

			createWebServerUserGroup

			sed_i 'g/^[ 	]*User[ 	]/d' $APACHE_CONF
			sed_i 'g/^[ 	]*Group[ 	]/d' $APACHE_CONF
			echo "User $WWW_USER" >> $APACHE_CONF
			echo "Group $WWW_GROUP" >> $APACHE_CONF

			resetWebServerPermissions
			service httpd add
			osHandler_$os restart_$INSTALL_WEB_SERVER
			;;
		restart_apache)
			# restart won't work if it's not started
			service httpd stop
			sleep 5		# Important! 'start' may fail otherwise ("SKIPPING")
			service httpd start || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		installVsftpd)
			installProgram vsftpd
			updateVsftpdConf /etc/vsftpd.conf
			service vsftpd add
			service vsftpd stop
			sleep 5
			service vsftpd start
			;;
		preWebminInstall)
			sed_i 's!^init_dir=.*!init_dir=/etc/rc.d!' init/config-generic-linux
			sed_i 's!^boot_levels=.*!boot_levels=2 3 4 5!' init/config-generic-linux
			;;
		postWebminInstall)
			if [ -x /etc/rc.d/webmin ]; then
				cat << EOF - /etc/rc.d/webmin > /etc/rc.d/rc.webmin
#!/bin/sh
# chkconfig: 2345 85 15
# description: webmin
EOF
				chmod +x /etc/rc.d/rc.webmin
				rm -f /etc/rc.d/webmin
				service webmin add
			fi
			;;
		preNginxInstall)
			WWW_PHP_INI=/etc/php.ini
			osHandler_$os _installCommonWebServerStuff
			PACKAGES="pcre openssl zlib php-cgi"
			installPackages
			;;
		installPhpCgiService)
			osHandler_$os _installService phpcgi "$PHPCGI_STARTUP_DESC" "getCommonStartupScriptContents_phpcgi \"$WWW_USER\" \"$WWW_PHP_CGI\""
			;;
		installNginxService)
			osHandler_$os _installService nginx "$NGINX_STARTUP_DESC" "getCommonStartupScriptContents_nginx \"$NGINX_BIN\""
			;;
		restart_nginx)
			service phpcgi restart || errorExit "Could not start php-cgi"
			service nginx restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		preLighttpdInstall)
			WWW_PHP_INI=/etc/php.ini
			osHandler_$os _installCommonWebServerStuff
			PACKAGES="pcre openssl zlib php-cgi"
			installPackages
			;;
		installLighttpdService)
			osHandler_$os _installService lighttpd "$LIGHTTPD_STARTUP_DESC" "getCommonStartupScriptContents_lighttpd \"$LIGHTTPD_BIN\""
			;;
		restart_lighttpd)
			service phpcgi restart || errorExit "Could not start php-cgi"
			service lighttpd restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		*)
			;;
	esac
}

osHandler_unity() {
	case $1 in
		init)
			INSTALL="smart install -y"
			FEATURES="service rtorrent apache nginx lighttpd vsftpd webmin"
			BUILD_TOOLS="gcc gcc-c++ make pkgconfig file libtool m4"
			;;
		init2)
			smart update
			installProgram ed
			;;
		installTools)
			PACKAGES=
			addProgram svn subversion
			addProgram wget
			addProgram unzip
			addProgram screen
			installPackages
			;;
		installAutodlTools)
			IRSSI_LOAD_PERL=y
			PACKAGES=
			addProgram perl
			addProgram irssi
			rpm -q --quiet irssi-perl || PACKAGES="$PACKAGES irssi-perl"
			addPerlModule Archive::Zip perl-Archive-Zip
			addPerlModule HTML::Parser perl-HTML-Parser
			addPerlModule Digest::SHA1 perl-Digest-SHA1
			installPackages

			installPerlModule Net::SSLeay perl-Net-SSLeay
			installPerlModule XML::LibXML perl-XML-LibXML
			# It doesn't install the dependency 'common::sense' so force install it
			installPerlModule JSON::XS "perl-common-sense perl-JSON-XS"
			installPerlModule JSON perl-JSON
			;;
		installCpanTools)
			PACKAGES="perl-devel"
			if echo "$MISSING_PERL_MODULES" | grep -q 'XML::LibXML'; then
				PACKAGES="$PACKAGES libxml2 libxml2-devel zlib1 zlib1-devel"
			fi
			if echo "$MISSING_PERL_MODULES" | grep -q 'Net::SSLeay'; then
				PACKAGES="$PACKAGES openssl libopenssl-devel zlib1 zlib1-devel"
			fi
			installPackages
			;;
		installRtorrentBuildTools)
			PACKAGES="libsigc++2.0-devel openssl libncurses-devel libcurl-devel"
			installPackages
			;;
		installPhpModules)
			installMissingPhpPackages
			;;
		installAutodlService)
			installService_mandriva_autodl $2
			;;
		installApache)
			installApache_mandriva
			;;
		restart_apache)
			service httpd restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		installVsftpd)
			installVsftpd_chkconfig /etc/vsftpd/vsftpd.conf
			;;
		preNginxInstall)
			WWW_PHP_INI=/etc/php-cgi-fcgi.ini
			installCommonWebServerStuff_mandriva
			PACKAGES="pcre-devel libopenssl-devel zlib1-devel php-cgi"
			installPackages
			;;
		installPhpCgiService)
			installService_mandriva_phpcgi
			;;
		installNginxService)
			installService_mandriva_nginx
			;;
		restart_nginx)
			service phpcgi restart || errorExit "Could not start php-cgi"
			service nginx restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		preLighttpdInstall)
			WWW_PHP_INI=/etc/php-cgi-fcgi.ini
			installCommonWebServerStuff_mandriva
			PACKAGES="pcre-devel libopenssl-devel zlib1-devel php-cgi"
			installPackages
			;;
		installLighttpdService)
			installService_mandriva_lighttpd
			;;
		restart_lighttpd)
			service phpcgi restart || errorExit "Could not start php-cgi"
			service lighttpd restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		*)
			;;
	esac
}

osHandler_sabayon() {
	BUILD_TOOLS="sys-kernel/linux-headers dev-util/pkgconfig file libtool m4"
	isProgramInstalled gcc || BUILD_TOOLS="sys-devel/gcc $BUILD_TOOLS"
	isProgramInstalled make || BUILD_TOOLS="sys-devel/make $BUILD_TOOLS"

	case $1 in
		init)
			INSTALL="equo install"
			FEATURES="service rtorrent apache nginx lighttpd vsftpd webmin"
			;;
		init2)
			equo update
			;;
		installTools)
			PACKAGES=
			addProgram svn subversion
			addProgram wget
			addProgram unzip
			addProgram screen
			installPackages
			;;
		installAutodlTools)
			PACKAGES=
			addProgram perl
			addProgram irssi
			addPerlModule Archive::Zip dev-perl/Archive-Zip
			addPerlModule Net::SSLeay dev-perl/Net-SSLeay
			addPerlModule HTML::Parser dev-perl/HTML-Parser
			# XML::LibXML needs XML::SAX and XML::NamespaceSupport but they're not auto
			# installed as dependencies.
			addPerlModule XML::SAX dev-perl/XML-SAX
			addPerlModule XML::NamespaceSupport dev-perl/XML-NamespaceSupport
			addPerlModule XML::LibXML dev-perl/XML-LibXML
			addPerlModule Digest::SHA1 dev-perl/Digest-SHA1
			addPerlModule JSON::XS dev-perl/JSON-XS
			addPerlModule JSON dev-perl/JSON
			installPackages
			;;
		installCpanTools)
			PACKAGES=
			if echo "$MISSING_PERL_MODULES" | grep -q 'XML::LibXML'; then
				PACKAGES="$PACKAGES dev-libs/libxml2 sys-libs/zlib"
			fi
			if echo "$MISSING_PERL_MODULES" | grep -q 'Net::SSLeay'; then
				PACKAGES="$PACKAGES dev-libs/openssl sys-libs/zlib"
			fi
			installPackages
			;;
		installRtorrentBuildTools)
			PACKAGES="dev-libs/libsigc++-2* dev-libs/openssl sys-libs/ncurses net-misc/curl"
			installPackages
			;;
		installPhpModules)
			;;
		installAutodlService)
			installService_gentoo_autodl "$2"
			rc-update --update
			;;
		installApache)
			installApache_gentoo
			rc-update --update
			;;
		restart_apache)
			/etc/init.d/apache2 restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		installVsftpd)
			installVsftpd_gentoo
			rc-update --update
			;;
		preNginxInstall)
			preNginxInstall_gentoo
			;;
		installPhpCgiService)
			installService_gentoo_phpcgi
			rc-update --update
			;;
		installNginxService)
			installService_gentoo_nginx
			rc-update --update
			;;
		restart_nginx)
			/etc/init.d/phpcgi restart || errorExit "Could not start php-cgi"
			/etc/init.d/nginx restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		preLighttpdInstall)
			preLighttpdInstall_gentoo
			;;
		installLighttpdService)
			installService_gentoo_lighttpd
			rc-update --update
			;;
		restart_lighttpd)
			/etc/init.d/phpcgi restart || errorExit "Could not start php-cgi"
			/etc/init.d/lighttpd restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		*)
			;;
	esac
}

osHandler_gentoo() {
	case $1 in
		init)
			INSTALL="emerge --update"
			FEATURES="service rtorrent apache nginx lighttpd vsftpd webmin"
			BUILD_TOOLS="sys-kernel/linux-headers"
			;;
		init2)
			emerge --sync
			installProgram ed sys-apps/ed

			# Do this AFTER installing ed since we require ed...
			for useFlag in perl ssl auth_basic xmlrpc gd xml sockets json apache2 zlib cli cgi; do
				appendFileStringVar /etc/make.conf USE $useFlag
			done
			;;
		installTools)
			PACKAGES=
			addProgram svn subversion
			addProgram wget
			addProgram unzip
			addProgram screen
			installPackages
			;;
		installAutodlTools)
			PACKAGES=
			addProgram perl
			addProgram irssi
			addPerlModule Archive::Zip dev-perl/Archive-Zip
			addPerlModule Net::SSLeay dev-perl/Net-SSLeay
			addPerlModule HTML::Parser dev-perl/HTML-Parser
			addPerlModule XML::LibXML dev-perl/XML-LibXML
			addPerlModule Digest::SHA1 dev-perl/Digest-SHA1
			addPerlModule JSON dev-perl/JSON
			installPackages

			echo "Trying to install JSON::XS but it's probably masked. Ignore the error."
			installPerlModule JSON::XS dev-perl/JSON-XS
			;;
		installCpanTools)
			PACKAGES=
			if echo "$MISSING_PERL_MODULES" | grep -q 'XML::LibXML'; then
				PACKAGES="$PACKAGES dev-libs/libxml2 sys-libs/zlib"
			fi
			if echo "$MISSING_PERL_MODULES" | grep -q 'Net::SSLeay'; then
				PACKAGES="$PACKAGES dev-libs/openssl sys-libs/zlib"
			fi
			installPackages
			;;
		installRtorrentBuildTools)
			emerge rtorrent
			;;
		installPhpModules)
			;;
		installAutodlService)
			installService_gentoo_autodl "$2"
			;;
		installApache)
			installApache_gentoo
			;;
		restart_apache)
			/etc/init.d/apache2 restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		installVsftpd)
			installVsftpd_gentoo
			;;
		preNginxInstall)
			preNginxInstall_gentoo
			;;
		installPhpCgiService)
			installService_gentoo_phpcgi
			;;
		installNginxService)
			installService_gentoo_nginx
			;;
		restart_nginx)
			/etc/init.d/phpcgi restart || errorExit "Could not start php-cgi"
			/etc/init.d/nginx restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		preLighttpdInstall)
			preLighttpdInstall_gentoo
			;;
		installLighttpdService)
			installService_gentoo_lighttpd
			;;
		restart_lighttpd)
			/etc/init.d/phpcgi restart || errorExit "Could not start php-cgi"
			/etc/init.d/lighttpd restart || errorExit "Could not start $INSTALL_WEB_SERVER"
			;;
		*)
			;;
	esac
}

# Slackware-based Linux distros with the slapt-get tool, eg. Vector Linux, Salix OS
osHandler_slaptget() {
	case $1 in
		init)
			INSTALL="slapt-get -y --install"
			FEATURES="rtorrent webmin"
			BUILD_TOOLS="gcc gcc-g++ make kernel-headers pkg-config file libtool"
			;;
		init2)
			slapt-get --update
			installProgram ed
			;;
		installTools)
			PACKAGES=
			addProgram svn subversion
			addProgram wget
			addProgram unzip
			addProgram screen
			installPackages
			;;
		installAutodlTools)
			PACKAGES=
			addProgram perl
			addProgram irssi
			installPackages
			;;
		installCpanTools)
			PACKAGES=
			if echo "$MISSING_PERL_MODULES" | grep -q 'XML::LibXML'; then
				PACKAGES="$PACKAGES libxml2 zlib"
			fi
			if echo "$MISSING_PERL_MODULES" | grep -q 'Net::SSLeay'; then
				PACKAGES="$PACKAGES openssl zlib"
			fi
			installPackages
			;;
		installRtorrentBuildTools)
			;;
		installPhpModules)
			;;
		installAutodlService)
			;;
		*)
			;;
	esac
}

osHandler_other() {
	case $1 in
		init)
			INSTALL=""
			FEATURES=""
			;;
		init2)
			;;
		installTools)
			;;
		installAutodlTools)
			;;
		installCpanTools)
			;;
		installRtorrentBuildTools)
			;;
		installPhpModules)
			;;
		installAutodlService)
			;;
		*)
			;;
	esac
}

isWebServerRpcModule() {
	! arrayIsPresent rpc $RUTORRENT_PLUGINS && ! arrayIsPresent httprpc $RUTORRENT_PLUGINS && return 0
	return 1
}

canInstallService() {
	return $(arrayIsPresent service $FEATURES)
}

canInstallRtorrent() {
	return $(arrayIsPresent rtorrent $FEATURES)
}

canInstallApache() {
	return $(arrayIsPresent apache $FEATURES)
}

canInstallNginx() {
	return $(arrayIsPresent nginx $FEATURES)
}

canInstallLighttpd() {
	return $(arrayIsPresent lighttpd $FEATURES)
}

canInstallVsftpd() {
	return $(arrayIsPresent vsftpd $FEATURES)
}

canInstallWebmin() {
	return $(arrayIsPresent webmin $FEATURES)
}

getRequiredPrograms() {
	REQUIRED_PROGRAMS="which svn wget unzip ed sed grep tar expr ps awk kill printf"

	if [ "$INSTALL_AUTODL_IRSSI" = y ]; then
		REQUIRED_PROGRAMS="$REQUIRED_PROGRAMS perl"

		# NetBSD and DragonFly BSD don't compile Irssi with Perl support by default
		[ "$IGNORE_IRSSI" != y ] && REQUIRED_PROGRAMS="$REQUIRED_PROGRAMS irssi"
	fi
}

verifyInstalledPrograms() {
	getRequiredPrograms

	local MISSING_PROGRAMS=
	for prog in $REQUIRED_PROGRAMS; do
		local name=$prog
		[ "$prog" = svn ] && name=subversion
		isProgramInstalled "$prog" || MISSING_PROGRAMS="$MISSING_PROGRAMS $name"
	done
	[ -n "$MISSING_PROGRAMS" ] && errorExit "Can't continue. The following programs are not installed: $MISSING_PROGRAMS"
}

initPluginDirVar() {
	AUTODL_IRSSI_PLUGIN_DIR="$RUTORRENT_BASE_PATH/plugins/autodl-irssi"
}

getRtorrentDirs() {
	local user="$1"
	getUserDir "$user"
	RTORRENT_DOWNLOAD_DIR="$userDir/$RTORRENT_REL_DOWNLOAD_DIR"
	RTORRENT_WATCH_DIR="$userDir/$RTORRENT_REL_WATCH_DIR"
	RTORRENT_SESSION_DIR="$userDir/$RTORRENT_REL_SESSION_DIR"
}

getUserScgiSocketPath() {
	local user="$1"
	getRtorrentDirs "$user"
	scgiSocketPath="$RTORRENT_SESSION_DIR/rpc.socket"
}

waitenter() {
	local msg="${1-Press ENTER to continue...}"
	echo -n "$CCYAN$msg$CEND"
	read dummy
}

askQuestion() {
	local question="$1"
	local default="$2"

	if [ -z "$default" ]; then
		echo -n "$CQUESTION$question$CEND "
		read answer
	else
		echo -n "$CQUESTION$question$CEND [$CGREEN$default$CEND] "
		read answer
	fi
	if [ -z "$answer" ]; then
		answer="$default"
	fi
}

# Asks the user a question, and sets answer to y or n depending on the user's answer
askYesNo() {
	local question="$1"
	local default="$2"

	while true; do
		askQuestion "$question" "$default"
		if echo "$answer" | grep -qiE '^y(es)?$'; then
			answer=y
			return 1
		elif echo "$answer" | grep -qiE '^no?$'; then
			answer=n
			return 0
		fi
	done
}

askOsUser() {
	local stopIfEmpty=${1:-n}
	local user=
	while true; do
		askQuestion "Enter name of user:" ""
		user="$answer"
		[ -z "$user" ] && [ "$stopIfEmpty" = y ] && break
		userExists "$user" && break

		echo "${CWARNING}User $user does not exist.$CEND"
		askYesNo "Do you want to create user $user?" "No"
		[ "$answer" = n ] && continue

		echo "${CMSG}Creating user $user.$CEND"
		if ! useradd -m -s /bin/sh "$user"; then
			echo "${CWARNING}Could not create user $user.$CEND"
			continue
		fi
		echo "${CMSG}Enter the user's password:$CEND"
		if ! passwd "$user"; then
			echo "${CWARNING}Failed to set password.$CEND"
			continue
		fi
		userExists "$user" && break
	done
	answer="$user"
}

# Adds another user to USERS
addUser() {
	local osUser="$1"
	local webUser="$2"
	local autodlPassword=
	local webpass=

	if [ "$INSTALL_RUTORRENT" = y ] || [ "$USE_RUTORRENT_PLUGIN" = y ]; then
		if ! canGeneratePasswords; then
			cat << EOF
$CQUESTION
The password makes sure only you can change your autodl-irssi settings. This is
NOT your login password. Use any password, but each user should use a unique
password. The password is used by the PHP code to access autodl-irssi settings.
You don't need to remember this password.  It can't contain any spaces or a
colon ':'.$CEND
EOF
			while true; do
				askQuestion "Enter the autodl-irssi password (this is not your login password):" ""
				autodlPassword="$answer"
				isValidPassword "$autodlPassword" && break
				echo "${CWARNING}Invalid password. Try again.$CEND"
			done
		fi

		if [ "$RUTORRENT_PASSWORD_PROTECTED" = y ]; then
			while true; do
				askQuestion "Enter your ruTorrent password:" ""
				webpass="$answer"
				isValidPassword "$webpass" && break
				echo "${CWARNING}Invalid password. Try again.$CEND"
			done
		fi

		USERS="$USERS $osUser:$autodlPassword:$webUser:$webpass"
	else
		USERS="$USERS $osUser"
	fi
}

installUser() {
	local userPluginDir="$1"
	local osUser="$2"
	local webUser="${3:-$osUser}"
	local port="$4"
	local autodlPassword="$5"

	getUserGroup "$osUser"
	getUserDir "$osUser"

	cat << EOF

========================= ${CGREEN}Installing autodl-irssi$CEND =========================
Use the ruTorrent plugin: $CGREEN$USE_RUTORRENT_PLUGIN$CEND
OS user: $CGREEN$osUser$CEND
EOF
	if [ "$USE_RUTORRENT_PLUGIN" = y ]; then
		[ "$RUTORRENT_PASSWORD_PROTECTED" = y ] && echo "ruTorrent user: $CGREEN$webUser$CEND"
		echo "port: $CGREEN$port$CEND"
		echo "password: $CGREEN$autodlPassword$CEND"
	fi
	cat << EOF
group: $CGREEN$group$CEND
home: $CGREEN$userDir$CEND

EOF
	if [ "$USE_RUTORRENT_PLUGIN" = y ]; then
		isValidPortNumber "$port" || errorExit "Invalid port number: $port"
		isValidPassword "$autodlPassword" || errorExit "Invalid password: $autodlPassword"
		isValidWebUser "$webUser" || errorExit "Invalid web user: $webUser"
	fi

	mkdir -p "$userDir/.irssi/scripts/autorun"
	cd "$userDir/.irssi/scripts" || errorExit "Could not CD into user dir. Run the script as root."
	echo "${CMSG}Downloading autodl-irssi.zip...$CEND"
	if ! downloadFile autodl-irssi.zip "$AUTODL_IRSSI_ZIP_URL"; then
		errorExit "Could not download autodl-irssi zip file"
	fi
	echo "${CMSG}Unpacking autodl-irssi...$CEND"
	unzip -o autodl-irssi.zip > /dev/null || errorExit "Could not unpack autodl-irssi zip file"
	rm -f autodl-irssi.zip
	cp autodl-irssi-master/autodl-irssi.pl autorun/ || errorExit "Could not copy autodl-irssi.pl to Irssi autorun dir."
	mkdir -p "$userDir/.autodl"
	touch "$userDir/.autodl/autodl.cfg"
	if ! [ -s "$userDir/.autodl/autodl.cfg" ]; then
		[ "$INSTALL_RUTORRENT" = y ] && cat > "$userDir/.autodl/autodl.cfg" << EOF
[options]
upload-type = rtorrent
EOF
	fi

	if [ "$USE_RUTORRENT_PLUGIN" = y ]; then
		if [ ! -d "$AUTODL_IRSSI_PLUGIN_DIR" ]; then
			errorExit "The autodl-irssi ruTorrent plugin has not been installed. Install it."
		fi

		cat > "$userDir/.autodl/autodl2.cfg" << EOF
[options]
gui-server-port = $port
gui-server-password = $autodlPassword
EOF

		rm -f "$AUTODL_IRSSI_PLUGIN_DIR/conf.php"
		mkdir -p "$userPluginDir"
		cat > "$userPluginDir/conf.php" << EOF
<?php
\$autodlPort = $port;
\$autodlPassword = "$autodlPassword";
?>
EOF
		[ $? -eq 0 ] || errorExit "Could not write to $userPluginDir/conf.php. Run this script as root."
		# Only set perms to 0400 if the code knows the owner (web server owner) and will reset it
		[ "$ISROOT" = y ] && [ "$INSTALL_RUTORRENT" = y ] && chmod 0400 "$userPluginDir/conf.php"
	else
		# Don't use the autodl-irssi ruTorrent plugin
		: > "$userDir/.autodl/autodl2.cfg"
	fi

	# The Perl module isn't loaded by default
	if [ "$IRSSI_LOAD_PERL" = y ]; then
		if [ ! -f "$userDir/.irssi/startup" ] || ! grep -q 'load perl' "$userDir/.irssi/startup"; then
			echo "load perl" >> "$userDir/.irssi/startup"
		fi
	fi

	# Make sure we redownload the tracker files since the ones in the zip file are possibly
	# old versions.
	local autodlStateFile="$userDir/.autodl/AutodlState.xml"
	[ -f "$autodlStateFile" ] && sed_i 'g/<trackers-version>/d' "$autodlStateFile"

	resetOwner "$osUser" "$userDir/.autodl" "$userDir/.irssi"
	chmod 0700 "$userDir/.autodl" "$userDir/.irssi"
}

getRutorrentUserConfDir() {
	userConfDir="$RUTORRENT_BASE_PATH/conf/users/$webUser"
}

getRutorrentUserShareDir() {
	userShareDir="$RUTORRENT_BASE_PATH/share/users/$webUser"
}

resetRutorrentUserPermissions() {
	for packedUser in $USERS; do
		extractPackedUser $packedUser
		getRutorrentUserConfDir
		getRutorrentUserShareDir
		# Make sure only the web server and the user itself can access its share/conf dirs
		chown $osUser:$WWW_GROUP "$userShareDir" "$userConfDir"
		chmod 0770 "$userShareDir" "$userConfDir"
	done
}

############################################################################
#
# This is where we start
#
############################################################################

SELINUX_ENABLED=n
isProgramInstalled selinuxenabled && selinuxenabled && SELINUX_ENABLED=y
echo "SELinux enabled: $SELINUX_ENABLED"

ISROOT=n
[ $(id -u) -eq 0 ] && ISROOT=y
echo "Is root user: $ISROOT"

if [ $# -gt 0 ]; then
	parseCommandLine "$@"
	INTERACTIVE=n
else
	INTERACTIVE=y
fi

detectOs
cat << EOF
Detected OS: $CGREEN$os_long$CEND
Type: $CGREEN$os$CEND

Type sh $0 --help for all command line options.
EOF

osHandler_$os init

if [ "$INTERACTIVE" = y ]; then
	if [ "$ISROOT" = n ]; then
		cat << EOF
$CRED
You're not the root user! This install script may fail if you're not the root
user. To start it as the root user do one of the following:

Ubuntu and Ubuntu clones:
	${CGREEN}sudo sh $0$CRED

Any other OS:
	${CGREEN}su
	sh $0$CRED
$CEND
EOF
		waitenter "Press Ctrl+C to exit or ENTER to continue..."
	fi

	cat << EOF
$CMSG
Press ENTER to use the default answer in [brackets].$CEND
EOF

	webServers=
	canInstallApache	&& webServers="$webServers apache"
	canInstallNginx		&& webServers="$webServers nginx"
	canInstallLighttpd	&& webServers="$webServers lighttpd"
	if [ -n "$webServers" ]; then
		cat << EOF
$CQUESTION
If you want to install ruTorrent you must install a web server, eg. Apache.
If you've already installed another web server, you must first uninstall it or
disable it. List of supported web servers:$CEND
EOF
		canInstallApache	&& echo "  ${CGREEN}apache$CEND   ${CQUESTION}Apache web server$CEND"
		canInstallNginx		&& echo "  ${CGREEN}nginx$CEND    ${CQUESTION}nginx web server (lightweight)$CEND"
		canInstallLighttpd	&& echo "  ${CGREEN}lighttpd$CEND ${CQUESTION}lighttpd web server (lightweight)$CEND"
							   echo "  ${CGREEN}none$CEND     ${CQUESTION}Don't install a web server$CEND"
		while true; do
			INSTALL_WEB_SERVER=
			echo "${CQUESTION}Select one of:$CGREEN$webServers none$CEND"
			askQuestion "Enter name of web server" "$(getFirst $webServers)"
			[ "$answer" = none ] && break
			INSTALL_WEB_SERVER="$answer"
			arrayIsPresent $INSTALL_WEB_SERVER $webServers && break
		done
		if [ -n "$INSTALL_WEB_SERVER" ]; then
			askYesNo "Do you want to install ruTorrent?" "Yes"
			INSTALL_RUTORRENT="$answer"
		else
			INSTALL_RUTORRENT=n
		fi
	fi

	if canInstallRtorrent; then
		cat << EOF
$CQUESTION
ruTorrent requires a working rtorrent built with XML-RPC support.$CEND
EOF
		askYesNo "Do you want to build rtorrent?" "Yes"
		BUILD_RTORRENT="$answer"
	fi

	askYesNo "Do you want to install the autodl-irssi ruTorrent plugin?" "Yes"
	USE_RUTORRENT_PLUGIN="$answer"

	if [ "$INSTALL_RUTORRENT" = y ]; then
		REINSTALL_RUTORRENT_PLUGIN=n
		RUTORRENT_PASSWORD_PROTECTED=y
	elif [ "$USE_RUTORRENT_PLUGIN" = y ]; then
		echo ""
		while true; do
			echo "${CQUESTION}The ruTorrent www base path is where you installed ruTorrent.$CEND"
			askQuestion "What is the ruTorrent www base path, eg. /var/www/rutorrent:" ""
			RUTORRENT_BASE_PATH="$answer"
			isValidRutorrentBasePath "$RUTORRENT_BASE_PATH" && break

			echo "$CWARNING$RUTORRENT_BASE_PATH is not the ruTorrent base path.$CEND"
		done

		initPluginDirVar
		if [ -d "$AUTODL_IRSSI_PLUGIN_DIR" ]; then
			echo ""
			askYesNo "The autodl-irssi ruTorrent plugin seems to be installed. Do you want to re-install it?" "No"
			REINSTALL_RUTORRENT_PLUGIN="$answer"
		else
			REINSTALL_RUTORRENT_PLUGIN=n
		fi

		cat << EOF
$CQUESTION
To use more than one ruTorrent user, you must password protect ruTorrent.$CEND
EOF
		askYesNo "Is ruTorrent password protected?" "No"
		RUTORRENT_PASSWORD_PROTECTED="$answer"
	else
		RUTORRENT_PASSWORD_PROTECTED=n
	fi

	if [ "$USE_RUTORRENT_PLUGIN" = y ]; then
		INSTALL_AUTODL_IRSSI=y
	else
		askYesNo "Do you want to install autodl-irssi?" "Yes"
		INSTALL_AUTODL_IRSSI="$answer"
	fi

	if canInstallService && ([ "$INSTALL_AUTODL_IRSSI" = y ] || [ "$INSTALL_RUTORRENT" = y ]); then
		cat << EOF
$CQUESTION
If you want to automatically start Irssi and rtorrent when the computer boots,
install the startup script.$CEND
EOF
		askYesNo "Do you want to install the startup script?" "Yes"
		INSTALL_STARTUP_SCRIPT="$answer"
	fi

	askUser=n
	if [ "$USE_RUTORRENT_PLUGIN" = y ] || [ "$INSTALL_AUTODL_IRSSI" = y ] || \
		[ "$INSTALL_STARTUP_SCRIPT" = y ] || [ "$INSTALL_RUTORRENT" = y ]; then
		askUser=y
	fi
	if [ "$askUser" = y ]; then
		if [ "$RUTORRENT_PASSWORD_PROTECTED" = n ]; then
				cat << EOF
$CQUESTION
This is the user running rtorrent and/or Irssi.$CEND
${CWARNING}Don't use the root user. Use a normal user!$CEND
EOF
				askOsUser
				addUser "$answer" ""
		else
			while true; do
				cat << EOF
$CQUESTION
===================== USER =====================
This is the user running rtorrent and/or Irssi.
${CWARNING}Don't use the root user. Use a normal user!$CEND
${CCYAN}Press ENTER to stop adding users.$CEND
EOF
				askOsUser y
				osUser="$answer"
				[ -z "$osUser" ] && break

				while true; do
					cat << EOF
$CQUESTION
The ruTorrent user is the name you use to log in to ruTorrent.$CEND
EOF
					askQuestion "Enter ruTorrent user:" "$osUser"
					webUser="$answer"
					isValidWebUser "$webUser" && break
					echo "${CWARNING}Invalid web user name '$webUser'. Use only lower case letters."
				done

				addUser "$osUser" "$webUser"
			done
		fi
	fi

	if canInstallVsftpd; then
		cat << EOF
$CQUESTION
vsftpd is a very secure FTP daemon.$CEND
EOF
		askYesNo "Do you want to install vsftpd?" "Yes"
		INSTALL_VSFTPD="$answer"

		if [ "$INSTALL_VSFTPD" = y ]; then
			askYesNo "Do you want to use encrypted FTP (FTPES)" "Yes"
			USE_ENCRYPTED_FTP="$answer"

			port=$DEFAULT_PORT_FTP
			[ "$USE_ENCRYPTED_FTP" = y ] && port=$DEFAULT_PORT_FTPES
			askQuestion "Enter FTP port number" "$port"
			FTP_PORT="$answer"
		fi
	fi

	if canInstallWebmin; then
		cat << EOF
$CQUESTION
Webmin is a web-based administration tool for your OS.$CEND
EOF
		askYesNo "Do you want to install Webmin?" "Yes"
		INSTALL_WEBMIN="$answer"
	fi
fi

cmdline="sh $0"
[ "$USE_RUTORRENT_PLUGIN" = y ] && cmdline="$cmdline -p"
[ "$REINSTALL_RUTORRENT_PLUGIN" = y ] && cmdline="$cmdline -i"
[ "$INSTALL_AUTODL_IRSSI" = y ] && cmdline="$cmdline -a"
for user in $USERS; do cmdline="$cmdline -u $user"; done
[ "$RUTORRENT_PASSWORD_PROTECTED" = y ] && cmdline="$cmdline -w"
[ -n "$RUTORRENT_BASE_PATH" ] && cmdline="$cmdline -r '$RUTORRENT_BASE_PATH'"
[ "$INSTALL_STARTUP_SCRIPT" = y ] && cmdline="$cmdline -s"
if [ -z "$INSTALL_WEB_SERVER" ]; then
	:
elif [ "$INSTALL_WEB_SERVER" = apache ]; then
	cmdline="$cmdline --apache"
elif [ "$INSTALL_WEB_SERVER" = nginx ]; then
	cmdline="$cmdline --nginx"
elif [ "$INSTALL_WEB_SERVER" = lighttpd ]; then
	cmdline="$cmdline --lighttpd"
else
	errorExit "Invalid web server: $INSTALL_WEB_SERVER"
fi
[ "$BUILD_RTORRENT" = y ] && cmdline="$cmdline --rtorrent"
[ "$INSTALL_RUTORRENT" = y ] && cmdline="$cmdline --rutorrent"
[ "$INSTALL_VSFTPD" = y ] && cmdline="$cmdline --vsftpd"
[ -n "$FTP_PORT" ] && cmdline="$cmdline --ftp-port $FTP_PORT"
[ "$USE_ENCRYPTED_FTP" = y ] && cmdline="$cmdline --ftpes"
[ "$INSTALL_WEBMIN" = y ] && cmdline="$cmdline --webmin"

cat << EOF

You can execute this command as the root user (Ubuntu: use ${CRED}sudo$CEND):
  $CGREEN$cmdline$CEND

Use the autodl-irssi ruTorrent plugin: $USE_RUTORRENT_PLUGIN
Re-install the autodl-irssi ruTorrent plugin: $REINSTALL_RUTORRENT_PLUGIN
Install autodl-irssi: $INSTALL_AUTODL_IRSSI
Users: $USERS
ruTorrent is password protected: $RUTORRENT_PASSWORD_PROTECTED
ruTorrent base path: $RUTORRENT_BASE_PATH
Install startup script: $INSTALL_STARTUP_SCRIPT
Install web server: $INSTALL_WEB_SERVER
Build rtorrent: $BUILD_RTORRENT
Install ruTorrent: $INSTALL_RUTORRENT
Install vsftpd: $INSTALL_VSFTPD
FTP port: $FTP_PORT
Use FTPES: $USE_ENCRYPTED_FTP
Install Webmin: $INSTALL_WEBMIN
EOF

if [ -n "$INSTALL_WEB_SERVER" ]; then
	for port in $HTTP_PORT $HTTPS_PORT; do
		isPortUsed $port || continue
		cat << EOF
$CWARNING
Port $port is in use. If it's not used by $INSTALL_WEB_SERVER, you may need to disable or
uninstall that other web server before continuing.$CEND
EOF
	done
fi

if [ "$INTERACTIVE" = y ]; then
	echo ""
	waitenter "Press Ctrl+C to cancel or ENTER to install."
fi

osHandler_$os init2
initUsers
initPluginDirVar

[ -n "$INSTALL_WEB_SERVER" ] || [ "$INSTALL_RUTORRENT" = y ] && RUTORRENT_PASSWORD_PROTECTED=y
[ "$INSTALL_RUTORRENT" = y ] && [ -z "$INSTALL_WEB_SERVER" ] && errorExit "You must install a web server if you want to install ruTorrent, eg. use --apache --rutorrent"
[ "$INSTALL_RUTORRENT" = y ] && REINSTALL_RUTORRENT_PLUGIN=n

[ "$BUILD_RTORRENT" = y ] && ! canInstallRtorrent && errorExit "Can't build rtorrent."
[ "$INSTALL_STARTUP_SCRIPT" = y ] && ! canInstallService && errorExit "Can't install startup script."
[ "$INSTALL_VSFTPD" = y ] && ! canInstallVsftpd && errorExit "Can't install vsftpd."
[ "$INSTALL_WEBMIN" = y ] && ! canInstallWebmin && errorExit "Can't install webmin."

if [ -z "$INSTALL_WEB_SERVER" ]; then
	:
elif [ "$INSTALL_WEB_SERVER" = apache ]; then
	canInstallApache || errorExit "Can't install Apache."
elif [ "$INSTALL_WEB_SERVER" = nginx ]; then
	canInstallNginx || errorExit "Can't install nginx."
elif [ "$INSTALL_WEB_SERVER" = lighttpd ]; then
	canInstallLighttpd || errorExit "Can't install lighttpd."
else
	errorExit "Invalid web server: $INSTALL_WEB_SERVER"
fi

[ -n "$FTP_PORT" ] && [ "$FTP_PORT" -lt 1 -o "$FTP_PORT" -gt 65535 ] && errorExit "Invalid FTP port: $FTP_PORT"

if [ "$USE_RUTORRENT_PLUGIN" = y ]; then
	if [ -z "$INSTALL_WEB_SERVER" ] && ! isValidRutorrentBasePath "$RUTORRENT_BASE_PATH"; then
		errorExit "$RUTORRENT_BASE_PATH is not a valid ruTorrent base path."
	fi
fi

if [ "$INSTALL_AUTODL_IRSSI" = y ]; then
	cat << EOF
${CMSG}Installing required tools and Perl modules...
Some Perl modules may not be present, but will be installed from CPAN.$CEND
EOF
else
	echo "${CMSG}Installing required tools...$CEND"
fi
osHandler_$os installTools
setSvnOpts
[ "$INSTALL_AUTODL_IRSSI" = y ] && osHandler_$os installAutodlTools

verifyInstalledPrograms

[ "$INSTALL_AUTODL_IRSSI" = y ] && installMissingPerlModules

cat << EOF
$CMSG
All required programs and Perl modules are now installed. Ignore any errors you
saw.$CEND
EOF

INSTALLED_RTORRENT=n
if [ "$BUILD_RTORRENT" = y ]; then
	cat << EOF
$CMSG
Building rtorrent and dependencies...$CEND
EOF
	installRtorrent
	INSTALLED_RTORRENT=y
fi

if [ -z "$INSTALL_WEB_SERVER" ]; then
	:
elif [ "$INSTALL_WEB_SERVER" = apache ]; then
	echo ""
	echo "${CMSG}Installing Apache$CEND"
	osHandler_$os installApache
	installUnrar
elif [ "$INSTALL_WEB_SERVER" = nginx ]; then
	echo ""
	echo "${CMSG}Installing nginx$CEND"
	installNginx
elif [ "$INSTALL_WEB_SERVER" = lighttpd ]; then
	echo ""
	echo "${CMSG}Installing lighttpd$CEND"
	installLighttpd
else
	errorExit "Invalid web server: $INSTALL_WEB_SERVER"
fi

if [ "$USE_RUTORRENT_PLUGIN" = y ]; then
	if isProgramInstalled php; then
		installMissingPhpModules
	else
		cat << EOF
$CWARNING
Could not find the php executable. PHP is not installed or the PHP CLI version
is not installed.  The autodl-irssi ruTorrent plugin requires the following PHP
modules:
	$CGREEN$REQUIRED_PHP_MODULES$CWARNING
They're normally installed and enabled by default. If not you will need to
install them (if needed) and then enable each one in php.ini, eg.
extension=MODULE.so and then restart your web server.$CEND
EOF
	fi
fi

if [ "$INSTALL_RUTORRENT" = y ]; then
	isProgramInstalled php || errorExit "php is not installed!"
	verifyWebServerVars
	echo ""
	echo "${CMSG}Installing ruTorrent$CEND"
	[ -d "$WWW_ROOT" ] || errorExit "Invalid web root: '$WWW_ROOT' (does not exist)"
	RUTORRENT_DIRNAME=rutorrent

	[ -f "$WWW_ROOT/index.html" ] || cat > "$WWW_ROOT/index.html" << EOF
<html><head><title>Root page</title></head><body>
<a href="$RUTORRENT_DIRNAME/">ruTorrent</a>
</body></html>
EOF

	cd "$WWW_ROOT"
	rm -rf "$RUTORRENT_DIRNAME"
	tmpName=rutorrent-tmp
	rm -rf $tmpName
	if ! svn co $SVN_OPTS "$RUTORRENT_TRUNK_DIR" $tmpName >/dev/null; then
		# Subversion failed. Try the official tar balls
		mkdir -p $tmpName
		cd $tmpName
		downloadFile "$RUTORRENT_CORE_NAME" "$RUTORRENT_CORE_URL" "$RUTORRENT_CORE_URL2" || errorExit "Could not download ruTorrent."
		downloadFile "$RUTORRENT_PLUGINS_NAME" "$RUTORRENT_PLUGINS_URL" "$RUTORRENT_PLUGINS_URL2" || errorExit "Could not download ruTorrent plugins."
		for name in "$RUTORRENT_CORE_NAME" "$RUTORRENT_PLUGINS_NAME"; do
			tar xzf "$name" || errorExit "Could not unpack $name"
			rm -f "$name"
		done
		cd ..
	fi
	cd $tmpName
	RUTORRENT_BASE_PATH="$WWW_ROOT/$RUTORRENT_DIRNAME"
	initPluginDirVar
	mv rutorrent/ "$RUTORRENT_BASE_PATH"
	mkdir -p "$RUTORRENT_BASE_PATH/plugins"
	for plugin in $RUTORRENT_PLUGINS; do
		if [ -d "plugins/$plugin/" ]; then
			echo "${CMSG}Installing ruTorrent plugin: $plugin$CEND..."
			mv plugins/$plugin/ "$RUTORRENT_BASE_PATH/plugins/" || errorExit "Could not install plugin '$plugin'."
		else
			echo "${CWARNING}Can't install missing plugin $plugin!$CEND"
		fi
	done
	cd ..
	rm -rf $tmpName
	cp "$RUTORRENT_BASE_PATH/favicon.ico" "$WWW_ROOT"

	i=1
	touch "$WWW_PASSWORD_FILE"
	resetAuthPasswordFilePermissions
	detectHtpasswd
	for packedUser in $USERS; do
		extractPackedUser $packedUser
		getRutorrentUserConfDir
		getRutorrentUserShareDir
		getUserScgiSocketPath "$osUser"
		getRtorrentDirs "$osUser"

		# Create user's ruTorrent config.php
		rpcMount="$(getUserRpcMount $i)"
		mkdir -p "$userConfDir"

		rutConfigFile="$userConfDir/config.php"
		if [ "$SCGI_USE_UNIX_DOMAIN_SOCKET" = y ]; then
			cat > "$rutConfigFile" << EOF
<?php
\$scgi_port = 0;
\$scgi_host = "unix://$scgiSocketPath";
\$XMLRPCMountPoint = "$rpcMount";
?>
EOF
			exitCode=$?
		else
			cat > "$rutConfigFile" << EOF
<?php
\$scgi_port = $scgiPort;
\$scgi_host = "$SCGI_HOST";
\$XMLRPCMountPoint = "$rpcMount";
?>
EOF
			exitCode=$?
		fi
		[ $exitCode -eq 0 ] || errorExit "Could not write to file $rutConfigFile"

		# Create user's directory to prevent certain errors the first time ruTorrent is started
		mkdir -p "$userShareDir/settings"
		mkdir -p "$userShareDir/torrents"
		chmod 0777  "$userShareDir/settings" "$userShareDir/torrents"

		# Setup rtorrent
		mkdir -p "$RTORRENT_DOWNLOAD_DIR"
		mkdir -p "$RTORRENT_WATCH_DIR"
		mkdir -p "$RTORRENT_SESSION_DIR"
		rtorrentRc="$userDir/.rtorrent.rc"
		[ -f "$rtorrentRc" ] && mv -f "$rtorrentRc" "$rtorrentRc-backup"
		cat > "$rtorrentRc" << EOF
$(if [ "$SCGI_USE_UNIX_DOMAIN_SOCKET" = y ]; then
	cat << EOF2
execute = {sh,-c,rm -f $scgiSocketPath}
scgi_local = $scgiSocketPath
execute = {sh,-c,chmod 0666 $scgiSocketPath}
EOF2
else
	echo "scgi_port = $SCGI_HOST:$scgiPort"
fi)
encoding_list = UTF-8
system.umask.set = $DEFAULT_UMASK
port_range = $rtorrentPort-$rtorrentPort
port_random = no
check_hash = no
directory = $RTORRENT_DOWNLOAD_DIR
session = $RTORRENT_SESSION_DIR
encryption = allow_incoming, try_outgoing, enable_retry
schedule = watch_directory,1,1,"load_start=$RTORRENT_WATCH_DIR/*.torrent"
#schedule = untied_directory,5,5,"stop_untied=$RTORRENT_WATCH_DIR/*.torrent"
trackers.enable = 1
#min_peers = 40
#max_peers = 100
#min_peers_seed = 10
#max_peers_seed = 50
#max_uploads = 15
#download_rate = 0
#upload_rate = 0
use_udp_trackers = yes
dht = auto
dht_port = 6881
peer_exchange = yes
#hash_read_ahead = 10
#hash_interval = 100
#hash_max_tries = 10
EOF
		PHP_BIN_PATH=$(which php 2> /dev/null)
		COMMENT=
		[ -x "$PHP_BIN_PATH" ] || COMMENT="#" PHP_BIN_PATH=/path/to/php
		cat >> "$rtorrentRc" << EOF
${COMMENT}execute = {sh,-c,$PHP_BIN_PATH $RUTORRENT_BASE_PATH/php/initplugins.php $webUser &}
EOF

		# Add user to web server's password file
		sed_i "g/^$webUser:/d" "$WWW_PASSWORD_FILE"
		$htpasswd -b "$WWW_PASSWORD_FILE" "$webUser" "$webPass" || errorExit "Could not add user to password file"
		resetAuthPasswordFilePermissions

		resetOwner "$osUser" "$rtorrentRc" "$userDir" "$RTORRENT_DOWNLOAD_DIR" "$RTORRENT_WATCH_DIR" "$RTORRENT_SESSION_DIR"

		# Required so some ruTorrent plugins work, eg. _getdir
		chmod 0755 "$userDir"

		# Protect some dirs and files, giving only the user and the web server
		# access. We need to do this since we set perms to 0755 above, or if
		# the perms already were 0755 to begin with.
		if [ -n "$WWW_GROUP" ]; then
			chmod 0600 "$rtorrentRc"
			for dir in $RTORRENT_REL_DOWNLOAD_DIR $RTORRENT_REL_WATCH_DIR $RTORRENT_REL_SESSION_DIR; do
				chown $osUser:$WWW_GROUP "$userDir/$dir"
				chmod 0770 "$userDir/$dir"
			done
		fi

		i=$(expr $i + 1)
	done

	[ "$CREATE_ONE_PASSWORD_FILE_PER_USER" = y ] && createOnePasswordFilePerUser
fi

if [ "$USE_RUTORRENT_PLUGIN" = y ]; then
	[ -z "$RUTORRENT_BASE_PATH" ] && errorExit "Invalid ruTorrent base path."

	[ "$REINSTALL_RUTORRENT_PLUGIN" = y ] && rm -rf "$AUTODL_IRSSI_PLUGIN_DIR"
	mkdir -p "$RUTORRENT_BASE_PATH/plugins"
	cd "$RUTORRENT_BASE_PATH/plugins"

	if [ -d "$AUTODL_IRSSI_PLUGIN_DIR" ]; then
		echo "${CMSG}The autodl-irssi ruTorrent plugin dir already exists. Updating it...$CEND"
		cd "$AUTODL_IRSSI_PLUGIN_DIR"
		if ! svn up $SVN_OPTS > /dev/null; then
			errorExit "Could not update the autodl-irssi ruTorrent plugin. Run the script as root."
		fi
	else
		echo "${CMSG}Downloading the autodl-irssi ruTorrent plugin...$CEND"
		if ! svn co $SVN_OPTS "$SVN_PATH_RUTORRENT_PLUGIN" autodl-irssi > /dev/null; then
			errorExit "Could not check out the autodl-irssi ruTorrent plugin"
		fi
	fi
fi

if [ "$INSTALL_AUTODL_IRSSI" = y ]; then
	if [ "$RUTORRENT_PASSWORD_PROTECTED" = y ]; then
		for packedUser in $USERS; do
			extractPackedUser $packedUser
			installUser "$RUTORRENT_BASE_PATH/conf/users/$webUser/plugins/autodl-irssi" "$osUser" "$webUser" "$autodlPort" "$autodlPassword"
		done
	else
		for packedUser in $USERS; do
			extractPackedUser $packedUser
			installUser "$AUTODL_IRSSI_PLUGIN_DIR" "$osUser" "$webUser" "$autodlPort" "$autodlPassword"
			[ "$USE_RUTORRENT_PLUGIN" = y ] && break
		done
	fi
fi

if [ "$INSTALL_RUTORRENT" = y ]; then
	verifyWebServerVars
	resetWebServerPermissions
	resetRutorrentUserPermissions
	# Restart it just in case we enabled/installed PHP modules.
	osHandler_$os restart_$INSTALL_WEB_SERVER
fi

if [ "$INSTALL_VSFTPD" = y ]; then
	echo "${CMSG}Installing vsftpd...$CEND"
	osHandler_$os installVsftpd
fi

if [ "$INSTALL_WEBMIN" = y ]; then
	cd
	rm -rf webmin-*/ webmin*.tar.gz
	if ! downloadFile webmin.tar.gz "$WEBMIN_URL"; then
		errorExit "Could not download Webmin."
	fi
	tar xzf webmin.tar.gz
	rm -f webmin.tar.gz
	cd webmin-*/ || errorExit "Could not CD to webmin dir"
	osHandler_$os preWebminInstall
	[ -x "setup.sh" ] || errorExit "Missing Webmin setup.sh file or not executable."
	cat << EOF
$CMSG
Starting Webmin installer. Use another port than 10000, enable SSL, start webmin
at boot, and use a strong admin password.$CEND
$CWARNING
When it asks you if it should use SSL and whether it should start at boot,
type y.$CEND
EOF
	./setup.sh /usr/local/webmin
	osHandler_$os postWebminInstall
	cd
	rm -rf webmin-*/
fi

if [ "$INSTALL_RUTORRENT" = y ]; then
	# Some plugins will fail unless they can write to the /tmp directory
	# We MUST do this AFTER installing Webmin since it will reset the perms!
	chmod 1777 /tmp
fi

if [ "$INSTALL_STARTUP_SCRIPT" = y ]; then
	for packedUser in $USERS; do
		extractPackedUser $packedUser
		echo "${CMSG}Installing service for user $osUser.$CEND"
		osHandler_$os installAutodlService $osUser
	done
fi

echo ""
echo "${CGREEN}================================= DONE =================================$CEND"
[ "$INSTALLED_RTORRENT" = y ] && echo "${CDGREEN}[+]$CEND ${CGREEN}Built and installed rtorrent with XML-RPC support$CEND"
[ -n "$INSTALL_WEB_SERVER" ] && echo "${CDGREEN}[+]$CEND ${CGREEN}Installed and configured web server ($INSTALL_WEB_SERVER)$CEND"
[ "$INSTALL_VSFTPD" = y ] && echo "${CDGREEN}[+]$CEND ${CGREEN}Installed and configured FTP server (vsftpd)$CEND"
[ "$INSTALL_RUTORRENT" = y ] && echo "${CDGREEN}[+]$CEND ${CGREEN}Installed ruTorrent$CEND"
[ "$USE_RUTORRENT_PLUGIN" = y ] && echo "${CDGREEN}[+]$CEND ${CGREEN}Installed/updated the autodl-irssi ruTorrent plugin$CEND"
[ "$INSTALL_AUTODL_IRSSI" = y ] && echo "${CDGREEN}[+]$CEND ${CGREEN}Installed autodl-irssi$CEND"
[ "$INSTALL_STARTUP_SCRIPT" = y ] && echo "${CDGREEN}[+]$CEND ${CGREEN}Installed and started Irssi and rtorrent service$CEND"
[ "$INSTALL_WEBMIN" = y ] && echo "${CDGREEN}[+]$CEND ${CGREEN}Installed Webmin$CEND"

if [ "$INSTALL_RUTORRENT" = y ]; then
	getIpAddress
	cat << EOF

${CMSG}ruTorrent URLs.$CEND ${CWARNING}Verify that the IP address below is correct!$CEND
	${CMAGENTA}http://$OUR_IP_ADDRESS/$RUTORRENT_DIRNAME/$CEND
	${CMAGENTA}https://$OUR_IP_ADDRESS/$RUTORRENT_DIRNAME/$CEND
EOF
fi

if [ "$INSTALL_RUTORRENT" = y ]; then
		cat << EOF

${CMSG}rtorrent directories$CEND:
EOF
	for packedUser in $USERS; do
		extractPackedUser $packedUser
		getRtorrentDirs "$osUser"
	cat << EOF
${CMSG}User $CGREEN$osUser$CEND:
	${CGREEN}Downloads$CEND    : $CMAGENTA$RTORRENT_DOWNLOAD_DIR$CEND
	${CGREEN}Watch dir$CEND    : $CMAGENTA$RTORRENT_WATCH_DIR$CEND
	${CGREEN}Session dir$CEND  : $CMAGENTA$RTORRENT_SESSION_DIR$CEND
	${CGREEN}rtorrent port$CEND: $CMAGENTA$rtorrentPort$CEND
EOF
	done
fi

if [ -n "$INSTALL_WEB_SERVER" ]; then
	cat << EOF

${CMSG}Web server info$CEND:
	${CGREEN}Web server root$CEND: ${CMAGENTA}$WWW_ROOT$CEND
	${CGREEN}ruTorrent dir$CEND  : ${CMAGENTA}$RUTORRENT_BASE_PATH$CEND
EOF
fi

if [ "$INSTALL_VSFTPD" = y ]; then
	getIpAddress
	cat << EOF
$CMSG
To log in to the FTP server, use your $(uname -s) login name and password. I
guessed the IP address below. Make sure it's correct.$CEND
	${CGREEN}FTP IP address$CEND: ${CMAGENTA}$OUR_IP_ADDRESS$CEND
	${CGREEN}FTP port$CEND: ${CMAGENTA}$FTP_PORT$CEND
	${CGREEN}FTP server type$CEND: $CMAGENTA$FTP_SERVER_TYPE$CEND
EOF
fi

if [ -n "$RUTORRENT_BASE_PATH" ] && [ "$INSTALL_AUTODL_IRSSI" = y ]; then
	RTORRENT_VERSION=$(sed -n -e "s/^[ 	]*version:[^\"']*['\"]\\([0-9]\.[0-9]\\)['\"].*/\\1/p" $RUTORRENT_BASE_PATH/js/webui.js)
	major=$(echo $RTORRENT_VERSION | cut -d. -f1)
	minor=$(echo $RTORRENT_VERSION | cut -d. -f2)
	if [ $major -lt 3 ] || [ $minor -lt 2 ]; then
		cat << EOF
$CWARNING
You're using an old version of ruTorrent. I detected version $RTORRENT_VERSION.
You need at least version 3.2 for the autodl-irssi plugin to work correctly.$CEND
EOF
	fi
fi

if [ "$INSTALL_WEBMIN" = y ]; then
	getIpAddress

	WEBMIN_PORT=
	WEBMIN_SSL=
	WEBMIN_NAME=
	WEBMIN_CONFIG=/etc/webmin/miniserv.conf
	WEBMIN_USERS=/etc/webmin/miniserv.users
	if [ -f $WEBMIN_CONFIG ]; then
		WEBMIN_PORT=$(grep '^port=' $WEBMIN_CONFIG | tail -n1 | sed -e 's/^port=\([0-9]*\).*/\1/')
		WEBMIN_SSL=$(grep '^ssl=' $WEBMIN_CONFIG | tail -n1 | sed -e 's/^ssl=\([0-9]*\).*/\1/')
		WEBMIN_NAME=$(head -n1 $WEBMIN_USERS | cut -d: -f1)
	fi
	WEBMIN_PORT=${WEBMIN_PORT:-UNKNOWN}
	WEBMIN_NAME=${WEBMIN_NAME:-UNKNOWN}

	cat << EOF
$CMSG
Webmin was installed. Port is $WEBMIN_PORT and the user is $WEBMIN_NAME.
${CRED}Verify the IP address below.$CEND
EOF
	if [ -z "$WEBMIN_SSL" ]; then
		echo "	${CMAGENTA}http://$OUR_IP_ADDRESS:$WEBMIN_PORT/$CEND"
		echo "${CMSG}or:$CEND"
		echo "	${CMAGENTA}https://$OUR_IP_ADDRESS:$WEBMIN_PORT/$CEND"
	elif [ "$WEBMIN_SSL" = 0 ]; then
		echo "	${CMAGENTA}http://$OUR_IP_ADDRESS:$WEBMIN_PORT/$CEND"
	else
		echo "	${CMAGENTA}https://$OUR_IP_ADDRESS:$WEBMIN_PORT/$CEND"
	fi
fi

if [ -n "$INSTALL_WEB_SERVER" ] || [ "$INSTALL_VSFTPD" = y ] || \
	[ "$INSTALL_RUTORRENT" = y ] || [ "$USE_RUTORRENT_PLUGIN" = y ]; then
	if [ "$SELINUX_ENABLED" = y ]; then
		cat << EOF
$CWARNING
SELinux is enabled. It could cause some problems with the web server, vsftpd or
ruTorrent.
EOF
	fi
fi

if [ "$CREATED_CERT_FILE" = y ]; then
	cat << EOF
$CWARNING
A self-signed certificate was created. Your browser or FTP client will most
likely warn you about a non-trusted certificate.$CEND
EOF
fi

if [ "$USE_RUTORRENT_PLUGIN" = y ]; then
	if isProgramInstalled php; then
		detectMissingPhpModules
		if [ -n "$MISSING_PHP_MODULES" ]; then
			cat << EOF
$CWARNING
The following PHP modules seem to be missing. It's possible that the
autodl-irssi ruTorrent plugin won't work. Missing PHP modules:
	$MISSING_PHP_MODULES$CEND
EOF
		fi
	else
		cat << EOF
$CWARNING
Could not find the php executable. Make sure the following PHP modules are
enabled or the autodl-irssi ruTorrent plugin won't work:
	$REQUIRED_PHP_MODULES$CEND
EOF
	fi
fi
