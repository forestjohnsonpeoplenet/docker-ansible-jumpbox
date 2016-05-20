
FROM ubuntu:14.04
MAINTAINER Forest Johnson <fjohnson@peoplenetonline.com>

RUN apt-get update && \
    apt-get install software-properties-common -y  && \
    apt-add-repository ppa:ansible/ansible -y  && \
    apt-get update  && \
    apt-get install ansible -y  && \
    apt-get install git -y

CMD ["sleep", "infinity"]