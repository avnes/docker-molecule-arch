FROM archlinux:latest

RUN pacman -Sy --needed --noconfirm python python-yaml python-paramiko \
  python-jinja python-crypto python-passlib python-netaddr ansible \
  sudo which tar gzip curl \
  && useradd ansible-test-user \
  && mkdir /home/ansible-test-user \
  && chown ansible-test-user:ansible-test-user /home/ansible-test-user
