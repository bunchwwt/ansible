# Ansible Fundamentals

- `vim /etc/ansible/hosts` - good to visit when authoring inventory using INI format

## run ansible inventory
- `cd 02/`
- `ansible-inventory -i inventory --list` - give json formatted output of inventory file


- `ansible satabases --limit db01 -m ping` - run in the inventory directory

- `ansible-config dump --only-changed`

- `ansible all -m ping`
- `ansible-doc -l | grep grou | less`

#install web server
- `ansible webservers -m package -a "name=httpd state=present"`


# check syntax
- `ansible-playbook --syntax-check webserver.yml`
- `ansible-playbook -C webserver.yml` - dry run, lets you know what would have changed

# encrypted
- `ansible-playbook --ask-vault-pass example.yml`
- `ansible-vault encrypt secret`
- `ansible-vault dencrypt secret`
- `ansible-vault rekey secret` - new password


