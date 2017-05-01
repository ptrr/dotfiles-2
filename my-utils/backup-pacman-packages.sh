#!/bin/bash
sudo pacman -Qq > $HOME/backups/pacman/all.txt &
sudo pacman -Qnq > $HOME/backups/pacman/native.txt &
sudo pacman -Qmq > $HOME/backups/pacman/foreign.txt &
sudo pacman -Qqe > $HOME/backups/pacman/explicit.txt &
sudo pacman -Qqd > $HOME/backups/pacman/deps.txt &
sudo pacman -Qqg > $HOME/backups/pacman/groups.txt
