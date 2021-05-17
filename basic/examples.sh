#!/usr/bin/env bash

regist_basic() {
    declare -n m=$1
    export m

    local curdir
    local regsh
    curdir="$(pwd)/basic"
    regsh="examples.sh"

    # shellcheck source=/dev/null
    . "${curdir}/helloworld/${regsh}"
    regist_basic_helloworld "$1"

    # shellcheck source=/dev/null
    . "${curdir}/grep_if_judge/${regsh}"
    regist_basic_grepifjudge "$1"

    # shellcheck source=/dev/null
    . "${curdir}/true_false_command/${regsh}"
    regist_basic_truefalsecommand "$1"

    # shellcheck source=/dev/null
    . "${curdir}/comment/${regsh}"
    regist_basic_comment "$1"

    # shellcheck source=/dev/null
    . "${curdir}/shell_expansions/${regsh}"
    regist_basic_shellexpansions "$1"
}
