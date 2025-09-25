# Официальный образ n8n
FROM n8nio/n8n:latest

ENV NODE_ENV=production

# На b4a контейнер должен слушать порт из переменной PORT.
# Этот скрипт пробросит PORT -> N8N_PORT во время запуска.
USER root
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
USER node

# Для b4a важно, чтобы в Dockerfile был EXPOSE любого TCP-порта
EXPOSE 5678

# Запуск
CMD ["/entrypoint.sh"]
