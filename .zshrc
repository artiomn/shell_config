#
# Artiom N. Zsh local config file (~/.zshrc).
#

# See also:
#    https://github.com/robbyrussell/oh-my-zsh/
#    http://pastie.org/1073336
#

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# Good themes: gentoo, agnoster, duellj.

ZSH_THEME="gentoo"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/

# colorize - adds `ccat` command - `cat` with a programming languages syntax-highlighting.
# compleat - Bash-completion.
# copydir - copy part of directory into the clipboard.
# copyfile - copy file content into the clipboard.
# debian - aliases to apt-*, dpkg and aptitude. Useful: apt-history, kerndeb.
# docker - Docker autocompletion.
# docker-compose - docker-compose autocompletion and shortcuts.
# encode64 - aliases to base64: e64, d64.
# gem - Ruby gem installer autocompletion.
# git - Git aliases.
# git-extras - Extra Git autocompletion.
# git-flow - Adds git-flow commands.
# gitignore - enables you the use of https://www.gitignore.io/ from the command line. Adds `gi` command.
# git-remote-branch - adds `grb` command, provides convenient way to create remote branch.
# history - adds `h` and `hsi` aliases.
# history-substring-search - searh substring in the shell history.
# jsontools - adds commands to pretty-print JSON and encode/decode URLs.
# jump - Easily jump around the file system by manually adding marks.
# kate - alias to kate (and Kate is started silently from console).
# last-working-dir - keeps track of the last used working directory and automatically jumps into it
# man - `Esc` + man command shows manual for the previously typed command.
# mosh - simply map SSH autocompletion to mosh. No overhead.
# nmap - adds Nmap aliases.
# pip - Python pip autocompletion.
# pj - project jump: allows you to define several folders where you store your projects,
#   so that you can jump there directly by just using the name of the project directory.
# pyenv - loads pyenv into the current shell and provides prompt info.
# pylint - adds autocompletion for Pylint and alias `pylint-quick`.
# python - pyclean, pyfind, pygrep.
# rand-quote - random quote from http://www.quotationspage.com (function `quote`).
# rsync - adds several aliases for Rsync: rsync-copy, rsync-move, rsync-update, rsync-synchronize.
# scd - adds `scd` command to smart change directory.
# systemd - add aliases with sudo for the system.d commands (start, stop, restart, etc.).
# thefuck - corrects your previous console command by pressing `Esc`+`Esc`.
# themes - add functions `theme` and `lstheme` for loading and listing
#    oh-my-zsh themes.
# torrent - magnet link to torrent file converter (function `magnet_to_torrent`).
# ubuntu - adds several useful aliases.
# urltools - `urldecode` and `urlencode` functions.
# vim-interaction - adds a function called `callvim` and several aliases.
# virtualenv - displays information of the created virtual container and allows background theming.
# web-search - search from the terminal. Aliases: bing, google, yahoo,
#    ddg (for Duckduckgo), wiki, news, youtube, map, image, ducky.

# `debian` plugin is useless.

plugins=(colorize compleat colored-man copydir copyfile docker docker-compose \
         encode64 gem git git-extras git-flow git-remote-branch history \
         history-substring-search jsontools jump kate last-working-dir \
         man mosh nmap pip pj pyenv pylint python rand-quote rsync scd systemd \
         themes torrent ubuntu urltools viminteraction virtualenv web-search)
#
# Interesting plugins.
#

# ack - autocompletion plugin for the `ack`, grep replacement.
# battery - display battery information.
# catimg - display image in the text console (without framebuffer).
# cp - create `cpv` function, based on `rsync` command.
# common-aliases - not very useful, but sometimes convenient aliases.
# dircycle - cycling through directory stack.
# dirpersist - persistent directory stack.
# dirhistory - adds keyboard shortcuts for navigating directory history and hierarchy.
# docker-machine - autocompletion for the `docker-machine` command.
# emoji - conveniently working with Unicode emoji in Zsh.
# emoji-clock - clock (not convenient, because clock is on the right of command prompt and if I want to copy previous line, clock adds spacebars). :-)
# extract - extract archives, but I use my own function.
# fastfile - adds the ability to on the fly generate and access file shortcuts.
# fbterm - framebuffer terminal. Buggy on NVIDIA.
# fzf - fuzzy auto-completion and key bindings.
# git-auto-fetch - fetches all changes from all remotes while you are working in git-initialized directory.
# git-flow-avh - adds completion for the git-flow AVH Edition (https://github.com/petervanderdoes/gitflow-avh).
# gitfast - fast Git autocompletion.
# github.
# git-prompt - informative git prompt for zsh.
# gnu-utils - use GNU utilities for replace built-in functions.
# go/golang - Google Go language compiler autocompletion.
# magic-center - binds commands on the `Enter` key.
# mix-fast caches the output for later usage and significantly speeds it up (needs `mix`).
# nyan - animated terminal nyan cat.
# pass - password manager.
# per-directory-history - history unique for each directory.
# perl - aliases for Perl.
# pj - simple project manager.
# postgres - aliases for starting/restarting Postgres SQL.
# rails. rails3, rails4 - aliases for Ruby On Rails.
# redis-cli - Redis database client completion.
# rsync - aliases for rsync (rsync-copy, rsync-move, rsync-update, rsync-synchronize).
# ruby - aliases: rfind, rgem.
# safe-paste - safe paste text to the X-terminal.
# scala - autocompletion for Scala compiler.
# screen - plugin for GNU Screen.
# singlechar - adds single char shortcuts (and combinations) for some commands.
# sprunge - command line Pastebin (function `sprunge`).
# ssh-agent - wrapper for the SSH autentification agent.
# sublime - set paths for Sublime text editor on MacOS X and add alias `stt` on all systems.
# svn  - functions for Subversion (like svn_get_branch_name).
# systemadmin - adds useful aliases for system administrators.
# taskwarrior - console task manager.
# transfer - file sharing from command line.
# vi-mode - enable handy Vim mode in the terminal.
# vundle - bundle manager for Vim.
# wd - (*warp directory*) lets you jump to custom directories in zsh, without using `cd`.
# z - tracks most used directories.
# zsh-navigation-tools - several Zsh navigation utilities.
# yum - Aliases for Yum commands. For RH-based.


source $ZSH/oh-my-zsh.sh

# Autocompletion.
# Enabled in oh-my-zsh.
# autoload -Uz compinit && compinit

# Enabling user-names completion, disabled in oh-my-zsh.
zstyle -d ':completion:*' users

# Somebody crazy bound oh-my-zsh Alt+L to the `ls` call. Removed.
bindkey -r '\el'
bindkey '\el' down-case-word

# Setting in oh-my-zsh.
# Share history between shells.
#setopt share_history
setopt no_share_history

# Ignore duplicity commands in history.
#setopt hist_ignore_all_dups

# Don't save in history commands, beginning with space.
#setopt hist_ignore_space

# Don't save command «history» or «fc» in history.
setopt hist_no_store

# Bash-like '='
setopt no_equals

# В «1 2 3» и «a b c d» соответственно
setopt braceccl

# Файлы с цифрами сортировать числовым методом, а не лексическим
setopt numeric_glob_sort

# Save execution time of the command in the history.
setopt extended_history

# Disable autocorrect.
unsetopt correct_all

# For Debian and Ubuntu plugins.
compdef -d ag ag_

for cmd in ar ag; do
    if [[ $(whence -w "$cmd"|cut -f2 -d' ') == "alias" ]]; then
        unalias "$cmd"
    fi
done


# Global aliases.
alias -g NE='2 > /dev/null'
alias -g NO='1 > /dev/null'

# Customize to your needs...
export PATH="$PATH:${HOME}/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/opt/bin"

# Need for PJ plugin.

if [[ -d ~/projects/CURRENT ]]; then
    export PROJECT_PATHS=( $(ls -1d ~/projects/CURRENT/*) )
elif [[ -d ~/projects ]]; then
    export PROJECT_PATHS=( $(ls -1d ~/projects/*) )
else
    export PROJECT_PATHS=( $(ls -1d ~/*) )
fi

# Often-used path.
cdpath=( ${HOME}/Docs ${HOME}/Downloads ${HOME}/Desktop ${HOME}/projects )

#if [ "$color_prompt" = yes ]; then
#   PS1=$'%{\e[01;32m%}%n@%m%{\e[00m%}:%{\e[01;34m%}%~%{\e[00m%}$ '
#   PS1=$'%{$fg_bold[green]%}%n@%m%{$reset_colors%}:%{$fg_bold[blue]%}%~%{$reset_color%}$ '
#else
#    PS1='%n@%m:%~$ '
#fi

# Right-hand prompt.
#RPROMPT='%{$fg[red]%} ⏎ $? %{$reset_color%} '$RPROMPT
get_rp()
{
   if [[ $1 == 0 ]]; then
      rp="%{$fg[green]%}"
   else
      rp="%{$fg[red]%}"
   fi

#   rp=$rp"$(emoji-clock) %{$reset_color%}"

#   echo -n "$rp"
}

RPROMPT='$(get_rp $?) '$RPROMPT

# Error-correction prompt.
#SPROMPT="	$fg[red]%R →$reset_color $fg[green]%r?$reset_color (Yes, No, Abort, Edit) "

# Vim key bindings (-e for Emacs). Enabled in plugin.
#bindkey -v

# Console calculator.
#autoload zcalc

# Autocomplete for kill\killall
#compdef pkill=kill
#compdef pkill=killall
#zstyle ':completion:*:*:kill:*' menu yes select
#zstyle ':completion:*:processes' command 'ps -au$USER'
zstyle ':completion:*:processes-names' command 'ps -e -o comm='
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;32'

# Enable automatic rehash of commands (need after installing packages).
_force_rehash()
{
  (( CURRENT == 1 )) && rehash
  return 1   # Because we didn't really complete anything
}
zstyle ':completion:*' completer _oldlist _expand _force_rehash _complete

# Like Bash.
#zstyle ':completion:::*:default' menu no select

case $TERM in
  xterm* | rxvt*)
    # precmd вызывается непосредственно перед выводом prompt
    precmd() {
      print -Pn "\e]0;zsh\a"
    }

    # preexec called before command execution.
    # $1 — command name and parameters.
    # sed is used to split command and parameter.
    preexec() {
      print -Pn "\e]0;`echo $1 | sed -r 's/^([^[:space:]]+).*/\1/'`\a"
    }
  ;
esac

# This is trash, brokes filenames auto-completion:
# zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# Removed:
zstyle ':completion:*' matcher-list '' ''

if which apparix > /dev/null; then
    alias to    'cd `(apparix -favour rOl \!* || echo -n .)` && pwd'
    alias bm   'apparix --add-mark \!*'
    alias portal 'apparix --add-portal \!*'
fi

