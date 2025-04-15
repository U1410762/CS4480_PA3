FROM ubuntu

RUN apt-get update
RUN apt-get -y install bash iproute2 net-tools tcpdump vim iputils-ping
RUN apt-get clean

COPY OSPF_setup.sh /app/OSPF_setup.sh
RUN chmod +x OSPF_setup.sh
RUN /app/OSPF_setup.sh

COPY daemons daemons

CMD ["bash"]
