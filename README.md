# idm


# Requirements #
- Configure laptop with appropriate `httpd`, `libvirtd`, and `create-libvirt-network` roles from the following repo: https://github.com/rickmanley-nc/laptop-configure
- Create an Activation Key (from https://access.redhat.com/management/activation_keys) and add at least 1 RHEL subscription to it. Call the Activation Key "ak-server"
- Update `group_vars/all` with your desired variables
- Execute the following All-in-one command:
  - `wget -qO- https://github.com/rickmanley-nc/idm/raw/master/run.sh | bash`
  - Broken out into Deploy and Install/Configure:
   - `ansible-playbook -i hosts --ask-become-pass deploy.yml`
   - `ansible-playbook -i hosts2 -u ansible --ask-become-pass --ask-vault-pass main.yml -k`
