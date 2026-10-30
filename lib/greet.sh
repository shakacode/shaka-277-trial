#!/bin/sh
# Prints a greeting for the given name; --shout prints it in upper case,
# and --name-first puts the name before the greeting.
greet() {
  if [ "${1:-}" = "--shout" ]; then
    shift
    greet "$@" | tr '[:lower:]' '[:upper:]'
    return
  fi
  if [ "${1:-}" = "--name-first" ]; then
    printf '%s, hello!\n' "${2:-world}"
    return
  fi
  printf 'Hello, %s!\n' "${1:-world}"
}
