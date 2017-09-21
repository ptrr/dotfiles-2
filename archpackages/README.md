# System restore

Use the relevant file with the package list. NOTE that it is necessary to first build `pacaur` for adding the *foreign* items.

```shell
# Download packages from main repos
sudo pacman -S - < dotfiles/archpackages/native.txt

# Install AUR packages
pacaur -S - < dotfiles/archpackages/foreign.txt
```
