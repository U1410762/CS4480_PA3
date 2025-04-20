#!/bin/bash

# Host A to gateway
docker exec -it cs4480_pa3-ha-1 route add -net 10.0.19.0/24 gw 10.0.14.4

# Host B to gateway
docker exec -it cs4480_pa3-hb-1 route add -net 10.0.14.0/24 gw 10.0.19.4