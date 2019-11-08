#!/bin/bash

director_name='micro-bosh'
inception_os_user_name='ubuntu'

bosh -e ${director_name} -n -d logsearch deploy logsearch-deployment.yml \
	-v inception_os_user_name=${inception_os_user_name} \
	-v router_ip=10.1.121.100 \
	-v system_domain=101.55.50.199.xip.io
