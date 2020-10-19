#!/bin/bash
set -euxo pipefail

# If you have already installed cert-manager

ytt -f config/letsencrypt-cluster-issuer.yml -f config/azuredns-config.yml -f values.yml $@ | kubectl apply -f-
