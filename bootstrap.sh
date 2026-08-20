#!/bin/sh
set -eu

if ! command -v xoldot >/dev/null 2>&1; then
  echo "xoldot is not installed or not on PATH" >&2
  exit 1
fi

exec xoldot apply
