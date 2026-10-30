#!/bin/sh
# Prints a greeting for the given name; --shout prints it in upper case.
greet() {
  if [ "${1:-}" = "--shout" ]; then
    shift
    greet "$@" | tr '[:lower:]' '[:upper:]'
    return
  fi
  printf 'Hello, %s!\n' "${1:-world}"
}
