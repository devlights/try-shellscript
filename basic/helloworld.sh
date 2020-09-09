#!/bin/sh

# HelloWorld -- Hello World サンプルです.
_exec() {
    # 最もシンプルな形
    echo 'Hello World!'

    # printf を利用することもできる
    h='Hello'
    w='World'
    printf "%s %s!\n" ${h} ${w}
}

_exec
