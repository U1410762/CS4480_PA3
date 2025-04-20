#!/bin/bash

sudo docker exec -i cs4480_pa3-r2-1 vtysh << EOF
configure terminal
interface eth0
 ip ospf cost 5
interface eth1
 ip ospf cost 5
end
write memory
EOF

sudo docker exec -i cs4480_pa3-r4-1 vtysh << EOF
configure terminal
interface eth0
 ip ospf cost 10
interface eth1
 ip ospf cost 10
end
write memory
EOF