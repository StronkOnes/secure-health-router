#!/usr/bin/env bash
echo "Starting local infra via docker-compose"
(cd infra && docker-compose up -d --build)
echo "Starting backend (dev)"
(cd backend && npm run start:dev > backend.log 2>&1) &
echo "Starting ml"
(cd ml && source venv/bin/activate && uvicorn src.main:app -reload -port 8000) &
echo "Done. Expo: cd mobile && npm start"
