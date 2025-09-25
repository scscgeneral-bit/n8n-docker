#!/usr/bin/env bash
set -e

# Пробрасываем порт, который даёт Back4App, во внутренний порт n8n
export N8N_PORT="${PORT:-${N8N_PORT:-5678}}"

# Если задан домен — соберём WEBHOOK_URL (удобно для вебхуков)
if [ -n "${N8N_HOST:-}" ] && [ -z "${WEBHOOK_URL:-}" ]; then
  export WEBHOOK_URL="${N8N_PROTOCOL:-https}://${N8N_HOST}"
fi

# n8n за обратным прокси: рекомендуют указать число прокси-хопов
export N8N_PROXY_HOPS="${N8N_PROXY_HOPS:-1}"

# Старт
exec n8n start
