#!/usr/bin/env bash
set -euo pipefail

# Required env vars
: "${USERNAME:?USERNAME is required}"
: "${PASSWORD:?PASSWORD is required}"

# Optional positional arg for the action verb (Hello / Goodbye)
ACTION="${1:-Hello}"

echo "${ACTION}, ${USERNAME}!"

# Never echo the password itself. Just prove we received one.
# GitHub Actions will mask it in logs anyway, but treating it carefully
# in the script is a habit worth keeping.
echo "Authenticated with a password of length: ${#PASSWORD}"
