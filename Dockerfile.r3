FROM ubuntu

RUN apt-get update
RUN apt-get -y install bash iproute2 net-tools tcpdump vim iputils-ping
RUN apt-get clean

RUN sudo route add -net 10.0.14.0/24 gw 10.0.17.3
RUN sudo route add -net 10.0.14.0/24 gw 10.0.18.3

CMD ["bash"]
