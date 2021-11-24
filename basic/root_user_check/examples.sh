#!/usr/bin/env bash

regist_basic_rootusercheck() {
    declare -n m=$1
    export m

    local c
    c="$(pwd)/basic/root_user_check"

    m["root_user_check"]="${c}/root_user_check.sh"
}