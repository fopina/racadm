FROM fedora:38

RUN curl -O https://linux.dell.com/repo/hardware/latest/os_dependent/RHEL8_64/srvadmin/srvadmin-idracadm7-10.3.0.0-5081.el8.x86_64.rpm \
 && curl -O https://linux.dell.com/repo/hardware/latest/os_dependent/RHEL8_64/srvadmin/srvadmin-hapi-10.3.0.0-5081.el8.x86_64.rpm \
 && yum -y -q install srvadmin-hapi-10.3.0.0-5081.el8.x86_64.rpm srvadmin-idracadm7-10.3.0.0-5081.el8.x86_64.rpm \
 && yum -y -q install openssl-devel \
 && rm srvadmin-hapi-10.3.0.0-5081.el8.x86_64.rpm srvadmin-idracadm7-10.3.0.0-5081.el8.x86_64.rpm \
 && yum -y -q clean all

ENTRYPOINT ["/opt/dell/srvadmin/bin/idracadm7"]
