# Usage examples:
# 	make deps
#		make check											# dry run on this machine
# 	make apply TAGS=shell						# run only the "shell" layer
#		make check INVENTORY=inventory/test
INVENTORY ?= inventory/local
PLAYBOOK	?= playbooks/site.yml
TAGS			?=
# Empty inside the dev container (passwordless sudo): BECOME_FLAGS=
BECOME_FLAGS ?= --ask-become-pass
ANSIBLE			  = ansible-playbook -i $(INVENTORY) $(PLAYBOOK) $(if $(TAGS),--tags $(TAGS),)

.PHONY: deps lint syntax list check apply

deps:
	ansible-galaxy collection install -r requirements.yml -p collections

lint:
	yamllint .
	ansible-lint

syntax:
	$(ANSIBLE) --syntax-check

list:
	$(ANSIBLE) --list-hosts --list-tasks

check:
	$(ANSIBLE) --check --diff $(BECOME_FLAGS)

apply:
	$(ANSIBLE) $(BECOME_FLAGS)
