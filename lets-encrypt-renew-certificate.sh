#!/bin/bash

## Renew certificato 
docker run --rm --name certbot -v "/etc/letsencrypt:/etc/letsencrypt" -p 80:80 certbot/certbot renew

## Restart listners
docker exec emqx-server emqx ctl listeners restart ssl:default
docker exec emqx-server emqx ctl listeners restart wss:default
