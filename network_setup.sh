#!/bin/bash

bash ./dockersetup
sudo docker compose up -d
bash ./add_routes.sh