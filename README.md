# mqtt-km200

## Config

config.yml example

```
km200:
  key: <KEY>
  host: <km200 hostname or ip >
mqtt:
  server: <mqtt connection>
  topic: km200/
measurements:
  - url: '/system/sensors/temperatures/chimney'
  - url: '/system/sensors/temperatures/outdoor_t1'
  - url: '/system/sensors/temperatures/supply_t1_setpoint'
  - url: '/heatSources/actualSupplyTemperature'
  - url: '/heatingCircuits/hc1/temperatureLevels/day'
  - url: '/heatingCircuits/hc1/temperatureLevels/night'
  - url: '/heatingCircuits/hc1/roomtemperature'
  - url: '/heatingCircuits/hc1/temperatureRoomSetpoint'
  - url: '/dhwCircuits/dhw1/actualTemp'
  - url: '/dhwCircuits/dhw1/setTemperature'
  - url: '/system/appliance/workingTime/centralHeating'
  - url: '/system/appliance/workingTime/secondBurner'
  - url: '/system/appliance/workingTime/totalSystem'
  - url: '/dhwCircuits/dhw1/workingTime'
  - url: '/system/appliance/numberOfStarts'
  - url: '/system/appliance/fanSpeed'
  - url: '/system/appliance/flameCurrent'
  - url: '/system/appliance/actualPower'
  - url: '/system/appliance/powerSetpoint'
  - url: '/dhwCircuits/dhw1/waterFlow'
```


## Scan KM200 

./scan.js

## Key

Generated with https://ssl-account.com/km200.andreashahn.info/

## Docker

    docker build -t km200 .

    docker run --env km200config=/data/config.yml  -v /Volumes/data/smarthome:/data -it km200 
