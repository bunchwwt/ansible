# old way example.. again? This guy likes to talk


# ensure gitconf is based on master.config
ansible -m copy -a "src=master.gitconfig dest=~/.gitconfig" localhost

#install bat
ansible -m homebrew -a "name=bat state=latest" localhost


# install jq
ansible -m homebrew -a "name=jq state=latest" localhost