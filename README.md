# Ansible Desktop 

## Setup a development environment on a fresh Ubuntu 22.04 install.

**WIP:** *Crossplane and Rust installation doesn't work yet.*

## Begins by removing bloatware

**Games:**
- aisleriot
- gnome-mahjongg
- gnome-mines
- gnome-sudoku

**Office:**
- libreoffice-core
- libreoffice-common
- libreoffice-help-en-us
- libreoffice-l10n-en-gb

**Media:**
- cheese
- rhythmbox
- totem
- shotwell

**Messaging:**
- empathy
- thunderbird

**Accessories:**
- gnome-calendar
- gnome-contacts
- gnome-maps
- gnome-weather
- remmina
- simple-scan
- transmission-gtk

**Additional services and tools:**
- popularity-contest
- zeitgeist-core
- zeitgeist-datahub
- usb-creator-gtk

**It will then turn off the following services used for logging:**

- whoopsie
- apport

## What it installs (in order)

- git
- curl
- ansible
- helm
- java 17
- docker
- kubernetes
- ~~crossplane~~
- vagrant
- kafka
- cassandra
- postgresql
- intellij
- clion
- ~~rust~~
- linux-tools
- vulkan 

### Get initial setup file and run it
    wget https://raw.githubusercontent.com/mmaad18/ansible_desktop/initialSetup.sh
    . initialSetup.sh

### Run ansible
This should be called from `initialSetup.sh`, but can be run manually if it fails:

    sudo ansible-pull -U https://github.com/mmaad18/ansible_desktop.git full.yml

### Error messages

**Delete all lists in `/etc/apt/sources.list.d/`**

    Failed to update apt cache: unknown reason