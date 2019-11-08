#!/bin/bash

director_name='micro-bosh'
inception_os_user_name='ubuntu'
paasta_bosh_workspace="/home/${inception_os_user_name}/workspace/paasta-5.0/deployment"
paasta_bosh_iaas='openstack'
paasta_bosh_password="$(bosh int ${paasta_bosh_workspace}/bosh-deployment/${paasta_bosh_iaas}/creds.yml --path /admin_password)"

bosh -e ${director_name} -n -d paasta-monitoring deploy paasta-monitoring.yml  \
	-o use-public-network-openstack.yml \
	-v inception_os_user_name=${inception_os_user_name} \
	-v mariadb_ip='10.1.161.100' \
	-v mariadb_port='3306' \
	-v mariadb_username='root' \
	-v mariadb_password='password' \
	-v influxdb_ip='10.1.161.101' \
	-v bosh_url='10.1.1.6' \
	-v bosh_password=${paasta_bosh_password} \
	-v director_name='micro-bosh' \
	-v resource_url='resource_url' \
	-v paasta_deploy_name='paasta' \
	-v paasta_cell_prefix='cell' \
	-v paasta_username='admin' \
	-v paasta_password='admin' \
	-v smtp_url=smtp.naver.com \
	-v smtp_port=587 \
	-v mail_sender=kinskykin@naver.com \
	-v mail_password=qwe8622! \
	-v mail_enable=true \
	-v mail_tls_enable=true \
	-v redis_ip='10.1.121.101' \
	-v redis_password='password' \
	-v utc_time_gap='9' \
	-v private_network_name='default' \
	-v public_network_name='vip' \
	-v monit_public_ip='101.55.50.211' \
	-v system_domain='101.55.50.199.xip.io' \
	-v system_type=PaaS,CaaS,SaaS \
	-v prometheus_ip=35.188.183.252 \
        -v kubernetes_ip=211.251.238.234 \
        -v pinpoint_ip=101.55.50.216 \
	-v pinpoint_was_ip=10.1.81.123 \
        -v cassbroker_ip=101.55.50.213 \
        -v kubernetes_token=eyJhbGciOiJSUzI1NiIsImtpZCI6IiJ9.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJrdWJlLXN5c3RlbSIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VjcmV0Lm5hbWUiOiJhZG1pbi11c2VyLXRva2VuLWR6ZjhoIiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZXJ2aWNlLWFjY291bnQubmFtZSI6ImFkbWluLXVzZXIiLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlcnZpY2UtYWNjb3VudC51aWQiOiJiOGQ5ZTQ4NC1lNGFmLTExZTktYjg5My0wYTBhMjVhZmNiNTAiLCJzdWIiOiJzeXN0ZW06c2VydmljZWFjY291bnQ6a3ViZS1zeXN0ZW06YWRtaW4tdXNlciJ9.VJVQaf_PNvEaEbwYwiUGYU6BG9E9oS2S9GAVILYOuryF1ELcT1FS2p1fuol5pfoNupgG_rX5jo43udQn1dpq3d3DcCuznmPFq9g2QK7VqgX0wasLNN5Q9Fr7JmQdVQ2f3AMplL1RmWleXXnHTCNbT3pMXo93YeVPRgFH6pYH5eTL7t-lqk2MunRKqPtYmj7OftxqxBBmaTeI3Q3wS-TZ-ytNOi2e7GYvUMgAnjzCJ0CPHe1WBSwyRDWlTG6HIcVUco0_f2nEzgl4JDrQof8U0tM2O2akUKUWKJ8rpuiXwKx2eroD9n6VaU5-JVz61FfFZQx72hHrpKYuRPI-ov5Qrg
