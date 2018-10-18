FROM centos

ARG password
COPY openshift.service inventory.ini playbook.yaml setup.sh ./

RUN yum -y install http://resources.ovirt.org/pub/yum-repo/ovirt-release42.rpm \
 && yum -y install centos-release-openshift-origin39 \
 && yum -y install git ansible ovirt-ansible-roles python-ovirt-engine-sdk4 openssh-clients pyOpenSSL python-cryptography python-lxml file python-ipaddress openshift-ansible \
 && sed -i "s/changeme/$password/" inventory.ini

ENTRYPOINT ./setup.sh