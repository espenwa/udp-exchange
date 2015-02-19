#!/bin/bash
docker run \
 -d \
 --name rabbitmq-udp \
 -p 5672:5672 \
 -p 15672:15672 \
 -p 5673:5673/udp \
 marcelmaatkamp/rabbitmq-udp-exchange
