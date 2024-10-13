# Ansible Kali Linux Build

## Summary

This is my ansible playbook for a fast setup of new Kali Linux VMs.
- Install `APT` tools, GitHub `repos` (`/opt`), Pipx
- Setup `terminator` as console
- Install and setup `neovim`
- set`NOPASSWD` for current user in `sudoers`
- Install `vscode` + Extensions: `Python`, `PHP`

---

## Installation

- Install ansible with apt
```shell
sudo apt install ansible
```

- Download Repo
```shell
git clone https://github.com/AdrianoTotaro/Ansible-kali-build
cd ./Ansible-kali-build
```

- Install the dependency
```shell
ansible-galaxy install -r requirements.yml
```

- Finally, run ansible-playbook with your ansible vault
```shell
# get sudo token (valid for 15mins)
sudo whoami
# execute ansible-playbook
ansible-playbook main.yml 
```
_might take some time, let it run_

---