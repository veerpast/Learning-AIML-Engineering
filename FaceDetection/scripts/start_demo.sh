#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR"

if [[ ! -x ".venv/bin/uvicorn" ]]; then
  echo "Missing .venv. Run: make setup-full"
  exit 1
fi

API_PID=""
WEB_PID=""
cleanup() {
  [[ -n "$API_PID" ]] && kill "$API_PID" 2>/dev/null || true
  [[ -n "$WEB_PID" ]] && kill "$WEB_PID" 2>/dev/null || true
}
trap cleanup EXIT INT TERM

if curl -fsS --max-time 1 http://127.0.0.1:8000/api/health >/dev/null 2>&1; then
  echo "Reusing healthy API on http://127.0.0.1:8000"
else
  PYTHONPATH=backend .venv/bin/uvicorn app.main:app --host 127.0.0.1 --port 8000 &
  API_PID=$!
  echo "Started API on http://127.0.0.1:8000"
fi

if curl -fsS --max-time 1 http://127.0.0.1:5173/ >/dev/null 2>&1; then
  echo "Reusing frontend on http://127.0.0.1:5173"
else
  (cd frontend && npm run dev -- --host 127.0.0.1) &
  WEB_PID=$!
  echo "Started frontend on http://127.0.0.1:5173"
fi

echo "Open http://127.0.0.1:5173"
echo "Press Ctrl-C to stop both services."
wait
