ROOT_DIRECTORY := $(shell git rev-parse --show-toplevel)

MASTER := gehovhanS
WORKER := gehovhanSW

# TODO: Be able to connect with SSH on both machines with no password, and ignore Makefile when evaluating you.
MASTER_VAGRANT_FILE_PATH := $(ROOT_DIRECTORY)/p1

aup:
	@$(MAKE) --no-print-directory -C $(ROOT_DIRECTORY)/p2/apps/ do

# TODO: Add Dependence (aup)
up:
	cd $(MASTER_VAGRANT_FILE_PATH) && vagrant up

re:
	cd $(MASTER_VAGRANT_FILE_PATH) && vagrant reload

clean:
	cd $(MASTER_VAGRANT_FILE_PATH) && vagrant destroy -f $(MASTER) $(WORKER)

.PHONY: aup up re clean