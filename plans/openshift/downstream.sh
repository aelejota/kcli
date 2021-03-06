yum -y install atomic-openshift-clients docker atomic-openshift
sed -i "s@# INSECURE_REGISTRY=.*@INSECURE_REGISTRY='--insecure-registry 172.30.0.0/16'@" /etc/sysconfig/docker
systemctl enable docker
systemctl enable rhel-push-plugin
systemctl start rhel-push-plugin
systemctl start docker --ignore-dependencies
oc cluster up --image=registry.access.redhat.com/openshift3/ose --metrics
oadm policy add-cluster-role-to-user cluster-admin admin --config=/var/lib/origin/openshift.local.config/master/admin.kubeconfig
