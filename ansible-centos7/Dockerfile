FROM centos7systemd as builder

FROM centos:centos7
RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install PyYAML python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools git python-pip
RUN mkdir /etc/ansible/
RUN echo -e '[local]\nlocalhost' > /etc/ansible/hosts
RUN pip install ansible
COPY --from=builder /root/.ssh /root/.ssh 
RUN yum install -y sshpass
RUN echo 123 | passwd --stdin root

