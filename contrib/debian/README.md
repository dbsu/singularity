
Debian
====================
This directory contains files used to package singularityd/singularity-qt
for Debian-based Linux systems. If you compile singularityd/singularity-qt yourself, there are some useful files here.

## singularity: URI support ##


singularity-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install singularity-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your singularity-qt binary to `/usr/bin`
and the `../../share/pixmaps/singularity128.png` to `/usr/share/pixmaps`

singularity-qt.protocol (KDE)

