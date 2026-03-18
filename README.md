# laine gentoo overlay
personal overlay

## usage
using `app-eselect/eselect-repository`:
```
eselect repository add laine git https://github.com/laineu/gentoo-overlay.git
```

or manually adding to `/etc/portage/repos.conf/eselect-repo.conf`:
```
[laine]
location = /var/db/repos/laine
sync-type = git
sync-uri = https://github.com/laineu/gentoo-overlay.git
```
