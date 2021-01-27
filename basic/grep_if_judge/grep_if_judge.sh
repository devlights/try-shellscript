#!/usr/bin/env bash

# grep-if-judge -- grep コマンドを実行した後にヒットした行があるかを判定するサンプルです.
#
# REFERENCES:
#   - https://it-ojisan.tokyo/grep-if/
_exec() {
    # grep を実行して、ヒットした場合は $? に 0 が設定される
    # ヒットしなかった場合は $? に 1 が設定される
    #
    # 補足) シェルスクリプトにおいて 0 は 真 として扱われる
    #       逆に 1 は 偽 として扱われる
    echo 'hoge' | grep 'hehe' > /dev/null 2>&1
    if [ $? -eq 1 ]
    then
        echo "[No HIT] echo 'hoge' | grep 'hehe'"
    fi

    echo 'hoge' | grep 'hoge' > /dev/null 2>&1
    if [ "$?" -eq 0 ]
    then
        echo "[HIT   ] echo 'hoge' | grep 'hoge'"
    fi
}

_exec
