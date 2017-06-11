#!/bin/bash -e
dpkg-query -f '${binary:Package}\n' -W > $HOME/debian/backups/deb-all-packages.txt
