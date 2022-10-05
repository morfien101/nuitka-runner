#!/usr/bin/env bash

NAME="morfien101/nuitka"

for target in 'py3.9' 'py3.10'; do
  cmd="docker build --target $target -t '${NAME}:${target}' ."
  echo $cmd
  eval $cmd
done
