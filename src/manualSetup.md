## Manual Setup

### Get initial setup file and run it 
    wget https://raw.githubusercontent.com/mmaad18/ansible_desktop/main/src/initialSetup.sh
    . initialSetup.sh

### Run ansible
This should be called from `initialSetup.sh`, but can be run manually:

    sudo ansible-pull -U https://github.com/mmaad18/ansible_desktop.git src/main.yml




    