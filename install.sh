#!/bin/sh

tar -C home -cf - . | tar -C "$HOME" -xf -
if [ $(id -u) -eq 0 ]; then
  tar -C etc -cf - . | tar -C /etc -xf -
fi
