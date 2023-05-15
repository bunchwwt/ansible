# ansible

Make file executable
chmod +x my-git-config.sh 


- `ansible-doc --type connection --list` help you learn on the fly about capabilities of Ansible, looking at connection plugin here

- `ansible` then hit `tab`, see all the packages, ansible used alone is adhoc command , to run one off scenarios, that aren't permanent, used for testing

`ansible -m copy -a "src=master.gitconfig dest=~/.gitconfig" localhost`

Check if any differences - it will tell you if it will make any changes if you ran the cmd
- `--check` does not make changes
`ansible -m copy -a "src=master.gitconfig dest=~/.gitconfig" --check localhost`

know if changes will be made AND what changes will be made
`ansible -m copy -a "src=master.gitconfig dest=~/.gitconfig" --check --diff localhost`


Combining calls 
- ansible adhoc is not designed to run multiple calls... This is were ansible-playbook comes in
`ansible -m copy -a "src=master.gitconfig dest=~/.gitconfig" localhost`
`ansible -m homebrew -a "name=bat state=latest" localhost`
`ansible -m homebrew -a "name=jq state=latest" localhost`

ansible-playbook
