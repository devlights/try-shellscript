#!/usr/bin/env bash

# Brace Expansion -- ブレース展開の non sequensial expressions のサンプルです.
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
    basedirpath=/tmp/try-shellscript/brace_expansion/non_sequensial_expression
    rm -rf "${basedirpath}"
    mkdir -p "${basedirpath}"

    # 非シーケンシャルな指定も可能
    # (注意） 要素の指定時にスペースを開けてはいけない
    #            {1, 3, 5, 7}
    #        上記のようにするとエラーとなる.
    echo '>> mkdir -p "${basedirpath}"/{1,3,5,7}'
    mkdir -p "${basedirpath}"/{1,3,5,7}

    ls -l "${basedirpath}"
    echo '----------------------------'
}

_exec
