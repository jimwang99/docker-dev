apt-get update
apt-get install -y vim tmux zsh wget python python3 gcc g++ make git

ssh-keygen -t rsa -b 4096 -C "phdbreak99@gmail.com" -f /root/.ssh/github -P ""
eval `ssh-agent -s`
ssh-add /root/.ssh/github
echo "=== add the following key to github SSH keys ==="
cat /root/.ssh/github.pub
echo "======"

cd ~
git clone git@github.com:phdbreak99/config.git
cd config
make init
make all
cd ~

vim -c "PluginInstall"
