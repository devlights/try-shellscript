#!/usr/bin/env bash

# Brace Expansion -- ブレース展開の sequence expressions のサンプルです.
#
# ブレース展開について
#   - Prefix{Range}Postfix
#     - Prefix と Postfix は省略可能
#   - {1..10}とすると 1 から 10 のシーケンスが生成される
#   - {1,3,5,7}のように書くこともできる
#   - {Range} の中でも、通常のワイルドカードが利用できる
#
# REFERENCES:
#   - https://www.putorius.net/bash-brace-expansion.html
#   - https://www.gnu.org/software/bash/manual/html_node/Brace-Expansion.html
_exec() {
    # 作業用ディレクトリ作成
    basedirpath=/tmp/try-shellscript/brace_expansion/sequence_expression
    rm -rf "${basedirpath}"
    mkdir -p "${basedirpath}"

    # 普通にディレクトリを連続して作成すると以下のようになる
    echo '>> mkdir ${basedirpath}/1 to 3'
    mkdir "${basedirpath}/1"
    mkdir "${basedirpath}/2"
    mkdir "${basedirpath}/3"

    ls -l "${basedirpath}"
    echo '----------------------------'

    # ブレース展開を利用すると以下のように書ける
    echo '>> mkdir -p "${basedirpath}"/{5..9}'
    mkdir -p "${basedirpath}"/{5..9}
    ls -l "${basedirpath}"
    echo '----------------------------'

    # Prefix{Range}Postfix のパターン
    echo '>> touch "${basedirpath}"/testdata-{1..9}.log'
    rm -rf "${basedirpath}"/{1..9}
    touch "${basedirpath}"/testdata-{1..9}.log

    ls -l "${basedirpath}"
    echo '----------------------------'
}

_exec
