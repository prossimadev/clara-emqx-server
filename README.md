# Setup

Modificare indirizzo mqtt.clara.help / stage-mqtt.clara.help in tutti i file.

Creare il certificato letsencrypt con lo script dedicato.

Installare il cron per il rinnovo del certificato:

## LetsEncrypt renew
0 3 * * * /home/ubuntu/emqx-server/lets-encrypt-renew-certificate.sh >> /var/log/letsencrypt-renew.log 2>&1

Avviare docker: docker compose up -d

