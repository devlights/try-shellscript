#!/usr/bin/env bash

regist_basic_heredoc() {
    declare -n m=$1
    export m

    local c
    c="$(pwd)/basic/heredoc"

    m["heredoc_here_document"]="${c}/heredoc.sh"
}