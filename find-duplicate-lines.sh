#!/bin/bash

type sort >/dev/null 2>&1 || { echo >&2 "The sort command is required, but it is not installed. Aborting."; exit 1; }
type uniq >/dev/null 2>&1 || { echo >&2 "The uniq command is required, but it is not installed. Aborting."; exit 2; }

sort $1 | uniq -d
