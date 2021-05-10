#!/usr/bin/env bash

regist_basic_helloworld() {
    declare -n m=$1
    local c="$(pwd)/basic/helloworld"

    m["helloworld"]="${c}/helloworld.sh"
}