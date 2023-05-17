# Ansible

## Inventory
- list of the various nodes that you would like to manage with Ansible

- ` ansible -m command -a "git config --global --list" centos`
- ` ansible -m command -a "git config --global --list" ubuntu`
- ` ansible -m command -a "git config --global --list" ubuntu11`


## Connecting
- `ansible-doc -t connection docker` - docker documentation
- `docker container ps -a`

## inside container
- `docker container exec -it ansible_container_test1 bash` open bask prompt in container
