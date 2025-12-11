```bash
bash deploy.sh
docker compose --env-file .env.prod -f prod.docker-compose.yml up -d --build
```