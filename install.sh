#!/bin/sh

sudo zypper install -y python311-pipx
python3.11 -m pip install --user pipx
python3.11 -m pipx ensurepath
sudo pipx --global ensurepath
pipx install --include-deps ansible

ansible-playbook -i ansible/inventory.yaml ansible/playbook.yaml
