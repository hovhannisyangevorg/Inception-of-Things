ROOT_DIRECTORY := $(shell git rev-parse --show-toplevel)

MASTER := gehovhanS
WORKER := gehovhanSW

# TODO: Be able to connect with SSH on both machines with no password.
MASTER_VAGRANT_FILE_PATH := $(ROOT_DIRECTORY)/p1

up:
	cd $(MASTER_VAGRANT_FILE_PATH) && vagrant up

re:
	cd $(MASTER_VAGRANT_FILE_PATH) && vagrant reload

clean:
	cd $(MASTER_VAGRANT_FILE_PATH) && vagrant destroy -f $(MASTER) $(WORKER)

test:
	cd $(MASTER_VAGRANT_FILE_PATH) && vagrant halt

