#!/usr/bin/env bash

regist_basic_shellexpansions_paramexpansion() {
    declare -n m=$1
    export m

    local c
    c="$(pwd)/basic/shell_expansions/parameter_expansion"

    m["parameter_expansion_use_default"]="${c}/use_default.sh"
}