#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

date > $GITHUB_WORKSPACE/date.txt
