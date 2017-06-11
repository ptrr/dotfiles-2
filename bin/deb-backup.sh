#!/bin/bash -e
dpkg --get-selections > $HOME/debian/backups/deb-all-packages.txt
