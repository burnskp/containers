#!/bin/bash
set -euo pipefail
cd /workspace/"$1"
shift
aider -c /home/ubuntu/.aider/aider.conf.yml "$@"
