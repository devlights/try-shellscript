#!/usr/bin/env bash

regist_basic() {
    declare -n m=$1
    local curdir="$(pwd)/basic"
    local regsh="examples.sh"

    . "${curdir}/helloworld/${regsh}"
    regist_basic_helloworld $1

    . "${curdir}/grep_if_judge/${regsh}"
    regist_basic_grepifjudge $1

    . "${curdir}/true_false_command/${regsh}"
    regist_basic_truefalsecommand $1

    . "${curdir}/comment/${regsh}"
    regist_basic_comment $1

    . "${curdir}/shell_expansions/${regsh}"
    regist_basic_shellexpansions $1
}
