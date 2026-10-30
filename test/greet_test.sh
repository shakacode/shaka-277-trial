#!/bin/sh
set -eu
root=$(cd "$(dirname "$0")/.." && pwd)
fail=0
check() {
  expected=$1; shift
  actual=$("$root/bin/greet" "$@")
  if [ "$actual" = "$expected" ]; then echo "ok - greet $*"; else echo "not ok - greet $*: got '$actual'"; fail=1; fi
}
check 'Hello, world!'
check 'Hello, Ada!' Ada
exit $fail
