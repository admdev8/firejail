# Firejail profile for gnome_games-common
# This file is overwritten after every install/update
# Persistent local customizations
include gnome_games-common.local
# Persistent global definitions
# added by caller profile
#include globals.local

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-common.inc
include whitelist-runuser-common.inc
include whitelist-usr-share-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
machine-id
net none
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none
tracelog

disable-mnt
private-cache
private-dev
private-etc dconf,fonts,gconf,gtk-2.0,gtk-3.0,machine-id,pango,X11
private-tmp
