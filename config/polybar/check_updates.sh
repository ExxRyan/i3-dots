#!/bin/sh

aur_updates=$( yay -Qua 2> /dev/null | wc -l )
pacman_updates=$( checkupdates 2> /dev/null | wc -l )

updates_arch=$((aur_updates + pacman_updates))
echo %{F#C6AAE8}   Arch: $updates_arch %{F-}
