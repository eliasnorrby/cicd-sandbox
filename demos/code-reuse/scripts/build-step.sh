#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
. "${DIR}/library.sh" || { echo "Could not source library.sh"; exit 1; }

echo "I'm running from $DIR"

_echo "Using a method from library.sh"
