#!/usr/bin/env bash

regist_basic_comment() {
    declare -n m=$1
    export m

    local c
    c="$(pwd)/basic/comment"

    m["comment_multiline"]="${c}/multiline_commentout.sh"
}