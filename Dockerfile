FROM ubuntu:trusty
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive
COPY entrypoint.sh /entrypoint.sh
RUN apt-get update && apt-get -y dist-upgrade && \
	apt-get -y install git authbind python-pip python-dev libpq-dev unzip && \
	useradd -d /home/wordpot -s /bin/bash -m -U wordpot && \
	cd /opt && \
	git clone https://github.com/threatstream/wordpot && \
	cd wordpot && \
	pip install -r requirements.txt && \
	chown -R wordpot:wordpot /opt/wordpot && \
	touch /etc/authbind/byport/80 && \
	chown wordpot /etc/authbind/byport/80 && \
	chmod 500 /etc/authbind/byport/80 && \
	chmod +x /entrypoint.sh
EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
