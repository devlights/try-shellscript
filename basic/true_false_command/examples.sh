#!/usr/bin/env bash

regist_basic_truefalsecommand() {
    declare -n m=$1
    export m
    
    local c
    c="$(pwd)/basic/true_false_command"

    m["true-false"]="${c}/true_false_command.sh"
}