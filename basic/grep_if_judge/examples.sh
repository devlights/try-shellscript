#!/usr/bin/env bash

regist_basic_grepifjudge() {
    declare -n m=$1
    export m

    local c
    c="$(pwd)/basic/grep_if_judge"

    m["grep-if"]="${c}/grep_if_judge.sh"
}