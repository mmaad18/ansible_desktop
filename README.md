# Ansible Desktop 

## Setup a development environment on a fresh Ubuntu 22.04 install.

**WIP:** *Crossplane installation doesn't work yet*

### What it installs (in order)

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
- intellij
- clion
- rust
- linux-tools
- 

### Get initial setup file and run it
    wget https://raw.githubusercontent.com/mmaad18/ansible_desktop/initialSetup.sh
    . initialSetup.sh

### Run ansible
This should be called from `initialSetup.sh`, but can be run manually if it fails:

    sudo ansible-pull -U https://github.com/mmaad18/ansible_desktop.git full.yml

### Error messages

**Delete all lists in `/etc/apt/sources.list.d/`**

    Failed to update apt cache: unknown reason