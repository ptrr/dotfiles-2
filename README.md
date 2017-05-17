# Configurations for GNU/Linux

These are some of the configuration files I use for my favourite programs on a GNU/Linux machine. The repo also includes some files related to my current setup, such as the package list for pacman (Arch Linux).

## Use case (work in progress)

I have used this repo to rebuild my setup on a clean Arch install. It all starts with cloning:

```shell
git clone https://github.com/protesilaos/dotfiles.git
```

Then I run the script to build pacaur:

```shell
bash dotfiles/my-utils/pacaur-build.sh
```

Once that is in place, I select the packages I need to install right away. Otherwise I download the full list:

```shell
# Only for native packages
sudo pacman -S - < dotfiles/pacman/native.txt

# AUR packages
pacaur -S - < dotfiles/pacman/foreign.txt
```

The rest of the programs (such as mutt) are configured post-install, whenever they are needed.
