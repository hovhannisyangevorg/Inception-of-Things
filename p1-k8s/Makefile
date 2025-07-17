ROOT_DIRECTORY := $(shell git rev-parse --show-toplevel)

MASTER := gehovhanS
WORKER := gehovhanSW

atest:
	#export ANSIBLE_CONFIG=/mnt/c/Users/gev99/WebstormProjects/Inception-of-Things/p1-k8s/ansible.cfg
	ansible-playbook -i inventory/hosts.ini playbooks/connection-test/ping_test.yml

config-ssh:
	mkdir -p ~/.ssh_castom
	cp /mnt/c/Users/gev99/WebstormProjects/Inception-of-Things/p1-k8s/.vagrant/machines/gehovhanS/vmware_desktop/private_key ~/.ssh_castom/gehovhanS_key
	cp /mnt/c/Users/gev99/WebstormProjects/Inception-of-Things/p1-k8s/.vagrant/machines/gehovhanSW/vmware_desktop/private_key ~/.ssh_castom/gehovhanSW_key
	chmod 600 ~/.ssh_castom/gehovhanS_key ~/.ssh_castom/gehovhanSW_key
	ls -l ~/.ssh_castom/gehovhanS_key ~/.ssh_castom/gehovhanSW_key

# TODO: Be able to connect with SSH on both machines with no password, and ignore Makefile when evaluating you.
MASTER_VAGRANT_FILE_PATH := $(ROOT_DIRECTORY)/p1

up:
	cd $(MASTER_VAGRANT_FILE_PATH) && vagrant up

re:
	cd $(MASTER_VAGRANT_FILE_PATH) && vagrant reload

clean:
	cd $(MASTER_VAGRANT_FILE_PATH) && vagrant destroy -f $(MASTER) $(WORKER)

test:
	cd $(MASTER_VAGRANT_FILE_PATH) && vagrant halt

