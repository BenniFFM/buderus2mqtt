#!/bin/bash
if [ ! -d /docker/km200mqtt/ ]; then
  mkdir -p /docker/km200mqtt
fi
if [ ! -f /docker/km200mqtt/km200.env ]; then
  cp ./km200.env /docker/km200mqtt/km200.env
fi
if [ ! -f /docker/km200/data/config.yml ]; then
  cp ./config.yml /docker/km200/data/config.yml
fi
docker run -d --name KM200_to_MQTT --env-file /docker/km200/km200.env -v /docker/km200mqtt/data:/data --restart always km200mqtt
