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

These apply to `pacaur` as well, such as:

```
pacaur -S - < file-with-packages.txt
```

## Practical case

I had to reinstall Arch and wanted to get all my packages. However the `all.txt` includes programs from the AUR, which means that `pacman` will throw an error. So either install `pacaur` first, or proceed with only the `native.txt` packages.
