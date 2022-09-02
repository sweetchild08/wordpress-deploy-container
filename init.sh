#!/bin/bash
mkdir $1
cp ./docker-compose.yml ./$1
cd $1

sed -i.bak -e "s/{app_name}/$1/g" docker-compose.yml
sed -i -e "s/{port}/$2/g" docker-compose.yml


docker-compose up -d --build

sudo -u www-data cp ../duplicator-files/* ./src/
