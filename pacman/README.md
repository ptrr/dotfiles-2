# Pacman packages

**You should be careful with package management. I do not recommend you try the following, especially not with any of the files included in this directory.**

A neat command I have found to quickly install a list of packages from a file is

```shell
cat file-with-package-names.txt | sudo pacman -S -
```

Alternatively

```shell
sudo pacman -S - < file-with-package-list.txt
```
