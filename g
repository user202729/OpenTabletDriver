#!/bin/bash
grep  --color=auto -r --exclude "*.dll" --exclude-dir "obj" --exclude-dir "bin" "$@" --exclude tags
