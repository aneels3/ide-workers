#!/usr/bin/env bash

if [ -z "$DEFAULT_TIMEOUT" ]; then
  export DEFAULT_TIMEOUT=5
fi

timeout $DEFAULT_TIMEOUT bash -c "python source.py < run.stdin 2> run.stderr 1> run.stdout || true" || echo "TLE: Execution exceeded the maximum timelimit." > tle.stderr
