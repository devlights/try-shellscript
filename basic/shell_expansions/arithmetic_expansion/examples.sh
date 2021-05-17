#!/usr/bin/env bash

regist_basic_shellexpansions_arithmeticexpansion() {
    declare -n m=$1
    export m

    local c
    c="$(pwd)/basic/shell_expansions/arithmetic_expansion"

    m["arithmetic_expansion_expr"]="${c}/use_expr.sh"
}