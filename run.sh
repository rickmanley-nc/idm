cd /home/rnelson/git
git clone git@github.com:rickmanley-nc/idm.git
cd idm

ansible-playbook -i hosts --ask-become-pass deploy.yml
ansible-playbook -i hosts2 -u ansible --ask-become-pass --ask-vault-pass main.yml -k

source ~/.bashrc
exit 0

# wget -qO- https://github.com/rickmanley-nc/idm/raw/master/run.sh | bash
# virsh suspend DEMO-IdM
# virt-clone --connect qemu:///system --original DEMO-IdM --name DEMO-IdM-Clone --file /home/rnelson/Images/DEMO-IdM-Clone.qcow2
# virsh resume DEMO-IdM
