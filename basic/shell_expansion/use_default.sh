#!/usr/bin/env bash

# Shell Expansion -- Parameter Expansion のサンプルです.
#
# デフォルト値の展開について
#   - ${parameter:-xxx}
#   - ${parameter:=xxx}
#
# REFERENCES:
#   - https://qiita.com/t_nakayama0714/items/80b4c94de43643f4be51
_exec() {
    i=100

    #
    # ${parameter:-xxx}
    #
    # parameterが unset or null の場合に、xxxをデフォルト値とする.
    # 代入は行われない.
    #
    printf "i=%d\ti2=%d\n" ${i:-999} ${i2:-999}
    printf "i=%d\ti2=%d\n" ${i} ${i2}

    #
    # ${parameter:=xxx}
    #
    # parameterが unset or null の場合に、xxxをデフォルト値とする.
    # 代入が行われる.
    #
    printf "i=%d\ti2=%d\n" ${i:=999} ${i2:=999}
    printf "i=%d\ti2=%d\n" ${i} ${i2}
}

_exec
