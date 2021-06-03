#!/usr/bin/env bash

set -e
# Add dependencies required for demo
ROOT_DIR=$(git rev-parse --show-toplevel)
cd "$ROOT_DIR" || exit 1

kubectl apply -f demos/catalog-vendor/task
