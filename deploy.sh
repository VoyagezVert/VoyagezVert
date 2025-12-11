#!/bin/bash

# Génération du certificat SSL auto-signé
openssl req -x509 -newkey rsa:4096 \
  -keyout traefik/certs/selfsigned.key \
  -out traefik/certs/selfsigned.crt \
  -days 365 -nodes \
  -subj "/CN=voyagezvert.local"

# Déploiement du backend
bash vv_backend/deploy.sh