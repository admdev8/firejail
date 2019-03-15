# Firejail profile for seahorse-tool
# Description: PGP encryption and signing
# This file is overwritten after every install/update
# Persistent local customizations
include seahorse-tool.local
# Persistent global definitions
# added by included profile
#include globals.local

# dconf
noblacklist ${HOME}/.config/dconf

include disable-exec.inc
include disable-xdg.inc
include whitelist-var-common.inc

apparmor
ipc-namespace

disable-mnt
private-tmp

memory-deny-write-execute

# Redirect
include gpg.profile
