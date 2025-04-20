#!/bin/bash

bash ./dockersetup
sudo docker compose up -d
bash ./add_routes.sh

sudo docker exec -it cs4480_pa3-r1-1 service frr restart
sudo docker exec -it cs4480_pa3-r2-1 service frr restart
sudo docker exec -it cs4480_pa3-r3-1 service frr restart
sudo docker exec -it cs4480_pa3-r4-1 service frr restart
