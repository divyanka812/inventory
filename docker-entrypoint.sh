#!/bin/sh
set -e

VENV_PATH="/app1/.venv"

if [ ! -d "$VENV_PATH" ]; then
  echo "Creating virtualenv in container..."
  python -m venv "$VENV_PATH"
  "$VENV_PATH/bin/pip" install --upgrade pip
  "$VENV_PATH/bin/pip" install -r /app1/requirements.txt
fi

"$VENV_PATH/bin/python" -m flask db upgrade

exec "$VENV_PATH/bin/gunicorn" --bind 0.0.0.0:80 "app:create_app()"
