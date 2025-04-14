#!/bin/bash

# Host A
docker exec -it cs4480_pa3-ha-1 route add -net 10.0.19.0/24 gw 10.0.14.4

# Host B
docker exec -it cs4480_pa3-hb-1 route add -net 10.0.14.0/24 gw 10.0.19.4

# R1
docker exec -it cs4480_pa3-r1-1 route add -net 10.0.19.0/24 gw 10.0.16.3
docker exec -it cs4480_pa3-r1-1 route add -net 10.0.19.0/24 gw 10.0.15.3

# R2
docker exec -it cs4480_pa3-r2-1 route add -net 10.0.14.0/24 gw 10.0.15.4
docker exec -it cs4480_pa3-r2-1 route add -net 10.0.19.0/24 gw 10.0.18.4

# R3
docker exec -it cs4480_pa3-r3-1 route add -net 10.0.14.0/24 gw 10.0.17.3
docker exec -it cs4480_pa3-r3-1 route add -net 10.0.14.0/24 gw 10.0.18.3

# R4
docker exec -it cs4480_pa3-r4-1 route add -net 10.0.14.0/24 gw 10.0.16.4
docker exec -it cs4480_pa3-r4-1 route add -net 10.0.19.0/24 gw 10.0.17.4
