#!/usr/bin/env bash
set -euo pipefail

# Convenience wrapper to apply this smoke config.
# The configuration already forces a change on every run via timestamp(),
# so this simply runs apply non-interactively.

terraform init
terraform apply -auto-approve