FROM ubuntu

RUN apt-get update
RUN apt-get -y install bash iproute2 net-tools tcpdump vim iputils-ping
RUN apt-get clean

RUN route add -net 10.0.14.0/24 gw 10.0.19.6

CMD ["bash"]
