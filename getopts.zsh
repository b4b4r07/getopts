#!/bin/zsh

getopts() {
    printf -- "%s\n" $argv | sed -E '
    s/^-([A-Za-z]+)/- \1 /
    s/^--([A-Za-z0-9_-]+)(!?)=?(.*)/-- \1 \3 \2 /' \
        | awk -f "$PWD/getopts.awk"
}
