#!/bin/sh
# Prints a greeting for the given name.
greet() {
  printf 'Hello, %s!\n' "${1:-world}"
}
