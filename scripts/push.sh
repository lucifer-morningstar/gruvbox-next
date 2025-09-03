#!/usr/bin/env bash
COMMENT=$1
git add -A
git commit -a -m "${COMMENT:-unset}"
git push -u origin main
