
PLAYBOOK=provisioning.yml

depending-roles:
	sudo ansible-galaxy install -r requirements.yml

ANSIBLE_PROVISION=sudo ansible-playbook ${PLAYBOOK} -vvv -i hosts
provision: depending-roles
	${ANSIBLE_PROVISION}

provision-links: depending-roles
	${ANSIBLE_PROVISION} --tags "links"

check: depending-roles
	${ANSIBLE_PROVISION} --check
