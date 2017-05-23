FROM python

RUN mkdir -p /opt/miniircd
WORKDIR /opt/miniircd

RUN apt-get install git

RUN git clone https://github.com/jrosdahl/miniircd.git

EXPOSE 6667

CMD ["miniircd/miniircd", "--setuid", "root"]