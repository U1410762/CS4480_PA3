#!/bin/bash

bash ./dockersetup
sudo bash
docker compose up -d
bash ./add_routes.sh