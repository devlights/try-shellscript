#!/usr/bin/env bash

regist_basic_shellexpansions_braceexpansion() {
    declare -n m=$1
    export m

    local c
    c="$(pwd)/basic/shell_expansions/brace_expansion"

    m["brace_expansion_sequence_expansion"]="${c}/sequence_expression.sh"
    m["brace_expansion_non_sequensial_expansion"]="${c}/non_sequensial_expression.sh"
    m["brace_expansion_use_wildcard"]="${c}/use_wildcard.sh"
    m["brace_expansion_combination"]="${c}/combination.sh"
}