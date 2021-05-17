#!/usr/bin/env bash

regist_basic_shellexpansions() {
    local c="$(pwd)/basic/shell_expansions"

    . "${c}/arithmetic_expansion/examples.sh"
    regist_basic_shellexpansions_arithmeticexpansion $1

    . "${c}/brace_expansion/examples.sh"
    regist_basic_shellexpansions_braceexpansion $1

    . "${c}/parameter_expansion/examples.sh"
    regist_basic_shellexpansions_paramexpansion $1    
}