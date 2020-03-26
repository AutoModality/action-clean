#!/bin/bash

set -e # fail on error

function clean {
  WORKDIR=$1
  echo "Cleaning $WORKDIR"
  cd "$WORKDIR"
  rm -rf ..?* .[!.]* *  # Credits https://unix.stackexchange.com/a/77313
}

clean "$(pwd)"
clean "/__w"
clean "/__e"
clean "/__w/_temp"
clean "/__w/_actions"
clean "/__w/_tool"
clean "/github/home"
clean "/github/workflow"
