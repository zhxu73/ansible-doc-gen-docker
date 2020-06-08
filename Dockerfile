FROM ubuntu:20.04

RUN apt-get update -qq && \
	apt-get install -qq -y python3 python3-pip git && \
	ln -s /usr/bin/python3 /usr/bin/python

RUN git clone https://github.com/ansible/ansible.git && \
	cd ansible/ && \
	git checkout stable-2.9 && \
	pip3 install -r requirements.txt && \
	pip3 install -r docs/docsite/requirements.txt && \
	cd .. && rm -r ansible

