#!/bin/bash

envsubst < /app/config.draft.json > /app/config.json
exec python3 src/main.py $@
