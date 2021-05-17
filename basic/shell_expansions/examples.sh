#!/usr/bin/env bash

regist_basic_shellexpansions() {
    local c
    c="$(pwd)/basic/shell_expansions"

    # shellcheck source=/dev/null
    . "${c}/arithmetic_expansion/examples.sh"
    regist_basic_shellexpansions_arithmeticexpansion "$1"

    # shellcheck source=/dev/null
    . "${c}/brace_expansion/examples.sh"
    regist_basic_shellexpansions_braceexpansion "$1"

    # shellcheck source=/dev/null
    . "${c}/parameter_expansion/examples.sh"
    regist_basic_shellexpansions_paramexpansion "$1"    
}