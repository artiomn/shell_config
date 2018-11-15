#
# Aliases.
#


# Common aliases.

# Colours for some commands.
if [ -f /usr/bin/grc ]; then
   alias ping="grc --colour=auto ping"
   alias traceroute="grc --colour=auto traceroute"
   #alias make="grc --colour=auto make"
   # Doesn't work correctly with Linux kernel 'make menuconfig' command.
   #alias make="colormake"
   alias gcc="colorgcc"
   alias diff="grc --colour=auto diff"
   #alias cvs="grc --colour=auto cvs"
   alias netstat="grc --colour=auto netstat"
   alias last="grc last"
   #alias cat="grc cat"
   alias tail="grc tail"
   alias head="grc head"
fi

# Need to use locale settings.
alias cal="ncal"
alias ls="ls --color -h"

# Removed files list in NTFS, FAT, UFS1/2, FFS, Ext2 и Ext3
# (sleuthkit package, icat tool need to recovery)
alias fls="fls -rd"

alias ll="ls -al"

# Show only hidden.
alias lh="ls -a -I '[!.]*'"
alias lsd="ls -ald"
alias df="df -hT"
alias du="du -h"
alias free="free -h"
alias mkdir="mkdir -p"
#alias du="ncdu"
alias lock="vlock -a"
alias lwatch="lwatch -i -"
alias glinks="links2 -g"
#alias dmesg="dmesg|lwatch"
#alias virtualbox="sudo -u vmachines /usr/bin/virtualbox"
alias slay="killall"
alias top="htop"
alias m="pager"
# Remove files after shredding.
alias shred="shred -u"
# Continue after disconnection.
alias wget="wget -c"
# More power terminal reset.
alias reset='echo -e "\033c" ; stty sane; setterm -reset; command reset; clear'
# Show file name and percent.
alias less="less -M"

# nrg2iso. Гы.
#alias nrg2iso="dd bs=1k if=$1 of=$2 skip=300"

pidtop() { command top -p $(pidof "$@" | tr ' ' ','); }

#if [ -x `which curl` ]; then
#   alias curl="curl -K - `cat /etc/curl.rc ~/.curlrc 2>/dev/null`"
#fi

function lcd() { cd "$1" && ls; }

man_web()
{
   command lynx "http://bama.ua.edu/cgi-bin/man-cgi?$*" ;
}

alias pwgen='echo $( tr -dc A-Za-z0-9_ < /dev/urandom | head -c8 )'
alias tree='find . -type d | sed -e "s/[^-][^\/]*\//  |/g;s/|\([^ ]\)/|-\1/"'

if [ `id -u` -eq "0" ]; then
# Root aliases
   if [ -r /etc/default/firewall ]; then
      . /etc/default/firewall
   	alias firewallcfg="fwbuilder -o \"$FW_PATH/$FW_SCRIPT\" -f \"$FW_PATH/$FW_LIB\" && service rc.firewall restart"
   	alias rm="rm -vi"
   	alias mv="mv -vi"
   	alias cp="cp -vi"
   	alias update-grub="update-grub && chmod 400 /boot/grub/grub.cfg"
   fi
   return;
fi

# Non root aliases

umount()
{
   fusermount -qu "$1" || pumount "$1" || /bin/umount "$1"
}

alias halt="systemctl halt"
alias hibernate="systemctl hibernate"
alias reboot="systemctl reboot"
alias shutdown="systemctl poweroff"
alias suspend="systemctl suspend"
#alias pm-hibernate="sudo /usr/sbin/pm-hibernate"
#alias pm-suspend="/usr/sbin/pm-suspend"
##alias pm-powersave="/usr/sbin/pm-powersave"
#alias pm-suspend-hybrid="/usr/sbin/pm-suspend-hybrid"
alias firestarter="sudo /usr/sbin/firestarter"
