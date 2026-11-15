#!/usr/bin/env bash
set -euo pipefail

BASE_URL="${NIMO_BASE_URL:-https://nimoai-gules.vercel.app/v1}"
API_KEY="${NIMO_API_KEY:?Set NIMO_API_KEY terlebih dahulu}"
MODEL="${NIMO_MODEL:-gpt-4o-mini}"

curl -sS "${BASE_URL}/chat/completions" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ${API_KEY}" \
  -d "{
    \"model\": \"${MODEL}\",
    \"messages\": [
      { \"role\": \"user\", \"content\": \"Halo! Jelaskan singkat apa itu REST API.\" }
    ]
  }"
