#!/bin/sh
# IRREVOCULL v0.0.0
# Irreversible Judgment Utility
# Judgment only. No execution. No mitigation. No appeal.

set -eu

# Read stdin (stream-safe)
INPUT="$(cat || true)"

# Rule 0 — Silence is failure
[ -z "$INPUT" ] && { echo "INVALID"; exit 2; }

# Normalize once
TEXT="$(printf "%s" "$INPUT")"

# Rule 1 — Incompleteness is terminal
printf "%s" "$TEXT" | grep -Eiq \
  '(^|[^a-z])(todo|tbd|fixme|wip|partial|incomplete|later|edge case|skipped|hack)([^a-z]|$)' \
  && { echo "FAIL"; exit 1; }

# Rule 2 — Uncertainty voids judgment
printf "%s" "$TEXT" | grep -Eiq \
  '(^|[^a-z])(maybe|might|could|should|approx|guess|try|attempt|assume|probably)([^a-z]|$)' \
  && { echo "INVALID"; exit 2; }

# Rule 3 — Hedging via questions is misalignment
printf "%s" "$TEXT" | grep -Eq '\?$' \
  && { echo "INVALID"; exit 2; }

# Rule 4 — Over-explanation signals lack of conviction
LINES="$(printf "%s" "$TEXT" | wc -l | tr -d ' ')"
[ "$LINES" -gt 300 ] && { echo "INVALID"; exit 2; }

# Rule 5 — Excessive qualification density
WORDS="$(printf "%s" "$TEXT" | wc -w | tr -d ' ')"
QUALS="$(printf "%s" "$TEXT" | grep -Eio \
  '(however|but|although|generally|typically|in most cases)' | wc -l | tr -d ' ')"
[ "$WORDS" -gt 0 ] && [ "$QUALS" -gt $((WORDS / 100)) ] && { echo "INVALID"; exit 2; }

# Final — Judgment stands
echo "PASS"
exit 0
