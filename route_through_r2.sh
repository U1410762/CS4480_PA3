#!/bin/bash

sudo docker exec -it cs4480_pa3-r2-1 vtysh && interface eth0 && ip ospf cost 5 && interface eth1 && ip ospf cost 5 && exit

sudo docker exec -it cs4480_pa3-r4-1 vtysh && interface eth0 && ip ospf cost 10 && interface eth1 && ip ospf cost 10 && exit