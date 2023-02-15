
sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y

sudo apt install git -y
sudo apt install curl -y
sudo apt install ansible -y

git clone https://github.com/mmaad18/ansible_desktop.git
cd ansible_desktop || exit

sudo ansible-pull -U https://github.com/mmaad18/ansible_desktop.git full.yml

