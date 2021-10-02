#!/bin/bash
if [ ! -d /docker/km200mqtt/data ]; then
  mkdir -p /docker/km200mqtt/data
fi
if [ ! -f /docker/km200mqtt/km200.env ]; then
  cp ./km200.env /docker/km200mqtt/km200.env
fi
if [ ! -f /docker/km200mqtt/data/config.yml ]; then
  cp ./config.yml /docker/km200mqtt/data/config.yml
fi

docker run -d --name KM200_to_MQTT --env-file /docker/km200mqtt/km200.env -v /docker/km200mqtt/data:/data --restart unless-stopped my/km200mqtt
