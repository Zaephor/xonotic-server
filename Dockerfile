FROM phusion/baseimage:latest

RUN \
  apt-get install zip unzip wget && \
  wget --quiet -O /opt/xonotic.zip http://dl.xonotic.org/xonotic-0.8.0.zip && \
  unzip /opt/xonotic.zip && \
  rm /opt/xonotic.zip && \
  cp /opt/Xonotic/server/server_linux.sh /opt/Xonotic/server_linux.sh && \
  cp /opt/Xonotic/server/server.cfg /opt/Xonotic/data/server.cfg

VOLUME ["/opt/Xonotic/data"]

WORKDIR /opt/Xonotic

CMD ["/opt/Xonotic/server_linux.sh"]

EXPOSE 26000
