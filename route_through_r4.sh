#!/bin/bash

sudo docker exec -i cs4480_pa3-r4-1 vtysh << EOF
configure terminal
interface eth0
 ip ospf cost 1
interface eth1
 ip ospf cost 1
end
clear ip ospf process
write memory
EOF