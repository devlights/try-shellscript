#!/usr/bin/env bash

# true-false-command -- true, false コマンドのサンプルです.
_exec() {
    # true  コマンドは、実行すると終了ステータス($?)を常に 0(真) で返す
    #   true コマンドは : と同じ
    #   true コマンドは (exit 0) と同じ
    # false コマンドは、実行すると終了ステータス($?)を常に 1(偽) で返す
    #   false コマンドは (exit 1) と同じ
    true
    printf "[true ] %d\n" "$?"

    false
    printf "[false] %d\n" "$?"

    if true
    then
        echo 'trueコマンドでifすると常に真'
    fi

    if false
    then
        echo 'ここは決して実行されない'
    fi

    # if true と同じ
    if (exit 0)
    then
        echo 'trueコマンドと同じ'
    fi

    # if false と同じ
    if (exit 1)
    then
        echo 'ここは決して実行されない'
    fi
}

_exec
