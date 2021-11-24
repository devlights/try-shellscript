#!/usr/bin/env bash

# 
# スクリプトの実行ユーザが root ユーザかどうかをチェックするサンプルです.
#
# REFERENCES:
#   - https://github.com/microsoft/vscode-dev-containers/blob/19adbac72304efc3f7b09970a3bac3c5a68a4c27/containers/javascript-node/.devcontainer/library-scripts/common-debian.sh#L24
#
_exec() {
    # root ユーザのユーザIDは常に0なのを利用してチェックする
    if [ "$(id -u)" -ne 0 ]; then
        echo -e "non-root user"
        exit 1
    fi

    echo -e "root user"
}

_exec