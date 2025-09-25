# n8n on Back4App (Containers)

## Быстрый старт
1) Задайте переменные окружения в панели Back4App (см. ниже).
2) Нажмите Deploy в Back4App. По завершении появится URL приложения.

## Переменные окружения (минимум)
- N8N_ENCRYPTION_KEY=<случайная_строка>
- N8N_HOST=<ваш_домен_на_b4a>
- N8N_PROTOCOL=https
- WEBHOOK_URL=https://<ваш_домен_на_b4a>

# Если используете PostgreSQL:
- DB_TYPE=postgresdb
- DB_POSTGRESDB_HOST=...
- DB_POSTGRESDB_PORT=5432
- DB_POSTGRESDB_DATABASE=...
- DB_POSTGRESDB_USER=...
- DB_POSTGRESDB_PASSWORD=...
- DB_POSTGRESDB_SCHEMA=public
- DB_POSTGRESDB_SSL=true (если требуется у вашего провайдера)

Порт `PORT` платформа проставляет сама; entrypoint.sh пробрасывает его в `N8N_PORT`.
