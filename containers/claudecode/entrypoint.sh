#!/bin/bash
set -euo pipefail
cd /workspace/"$1"
shift
claude "$@"
