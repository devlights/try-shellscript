#!/usr/bin/env bash

regist_basic_shellexpansions_arithmeticexpansion() {
    declare -n m=$1
    export m

    local c
    c="$(pwd)/basic/shell_expansions/arithmetic_expansion"

    m["arithmetic_expansion_use_expr"]="${c}/use_expr.sh"
    m["arithmetic_expansion_use_let"]="${c}/use_let.sh"
    m["arithmetic_expansion_use_declare"]="${c}/use_declare.sh"
    m["arithmetic_expansion_use_expansion"]="${c}/use_expansion.sh"
}