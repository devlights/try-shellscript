#!/usr/bin/env bash

# Arithmetic Expansion -- Bash における 算術展開 のサンプルです (expr).
#
# 算術展開について
#   - expr を使う
#     - 算術展開では無いが、同じカテゴリーみたいなものなのでここに含めている
#   - let を使う
#     - 算術展開では無いが、同じカテゴリーみたいなものなのでここに含めている
#   - declare -i を使う
#     - 算術展開では無いが、同じカテゴリーみたいなものなのでここに含めている
#   - $(( 計算式 )) を使う
#     - (( ))　の中はダブルクォートで囲まれている状態となる. なので変数なども展開される.
#
# REFERENCES:
#   - https://www.gnu.org/software/bash/manual/html_node/Arithmetic-Expansion.html
#   - https://tldp.org/LDP/abs/html/arithexp.html
#   - https://www.shell-tips.com/bash/math-arithmetic-calculation/
_exec() {
    # 作業用ディレクトリ作成
    basedirpath=/tmp/try-shellscript/arithmetic_expansion/use_expr
    rm -rf "${basedirpath}"
    mkdir -p "${basedirpath}"

    ## expr を用いて計算
    #
    # shellcheck disable=SC2003
    i=$(expr 1 + 1)
    printf "i = %d\n" "${i}"

    # 乗算する場合のみ注意が必要. * はそのままでは展開されるのでエスケープする.
    # shellcheck disable=SC2086,SC2003
    i2=$(expr $i \* $i)
    printf "i2 = %d\n" "${i2}"
}

_exec
