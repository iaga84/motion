FROM python:3.9

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y cron python3-dev libssl-dev openssl libacl1-dev libacl1 build-essential gdebi-core && \
    pip install -U pip setuptools wheel && \
    wget https://github.com/Motion-Project/motion/releases/download/release-4.3.2/buster_motion_4.3.2-1_amd64.deb &&\
    gdebi --non-interactive buster_motion_4.3.2-1_amd64.deb

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
