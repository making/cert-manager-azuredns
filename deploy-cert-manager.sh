#!/bin/bash
set -euo pipefail

kapp deploy -a cert-manager --diff-changes \
  -f <(ytt --ignore-unknown-comments \
    -f vendor \
    -f config \
    -f values.yml \
    $@)