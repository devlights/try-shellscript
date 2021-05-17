#!/usr/bin/env bash

regist_basic_helloworld() {
    declare -n m=$1
    export m

    local c
    c="$(pwd)/basic/helloworld"

    m["helloworld"]="${c}/helloworld.sh"
}