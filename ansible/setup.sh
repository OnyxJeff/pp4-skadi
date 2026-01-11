#!/bin/bash
set -a
source ../netbox.env
set +a

envsubst < inventory/netbox.yml.template > inventory/netbox.yml
ansible-inventory -i inventory/netbox.yml --graph