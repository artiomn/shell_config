#!/bin/sh

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

tar -C home -cf - . | tar -C "$HOME" -xf -
if [ $(id -u) -eq 0 ]; then
  tar -C etc -cf - . | tar -C /etc -xf -
fi
