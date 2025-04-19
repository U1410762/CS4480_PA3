FROM ubuntu

RUN apt-get update
RUN apt-get -y install bash iproute2 net-tools tcpdump vim iputils-ping
RUN apt-get clean

RUN mkdir app
COPY OSPF_setup.sh /app/OSPF_setup.sh
RUN chmod +x /app/OSPF_setup.sh
RUN bash /app/OSPF_setup.sh
COPY daemons /etc/frr/daemons

RUN service frr restart

CMD ["bash"]