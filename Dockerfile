FROM ubuntu:19.10
LABEL maintainer="Eric Jacob (@erjac77)"

# Update APT cache and install Ansible
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-add-repository -y -u ppa:ansible/ansible
RUN apt-get install -y ansible
RUN apt-get clean

# Copy Docker systemctl replacement script
# to execute systemctl commands without systemd
COPY files/docker/systemctl.py /usr/bin/systemctl
RUN chmod +x /usr/bin/systemctl

# Create Ansible inventory file
RUN mkdir -p /etc/ansible
RUN echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

CMD ["/usr/bin/systemctl"]
