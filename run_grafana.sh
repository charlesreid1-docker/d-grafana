#!/bin/bash

docker run \
    --rm \
    -i \
    -p 10.6.0.2:3000:3000 \
    -v ${PWD}/grafana-data:/var/lib/grafana \
    -e "GF_SERVER_ROOT_URL=http://10.6.0.2"  \
    -e "GF_INSTALL_PLUGINS=grafana-clock-panel,grafana-piechart-panel,grafana-simple-json-datasource 1.2.3" \
    grafana/grafana:latest

