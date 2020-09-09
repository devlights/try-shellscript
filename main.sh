#!/usr/bin/env bash

declare -A mappings

_make_mappings() {
    mappings=(
        ["helloworld"]="basic/helloworld.sh"
        ["shellexpansion_use_default"]="basic/shellexpansion/use_default.sh"
    )
}

# main function
#
# REFERENCES::
#   - https://stackoverflow.com/questions/1494178/how-to-define-hash-tables-in-bash
#   - https://qiita.com/kaw/items/034bc4221c4526fe8866
#   - https://eng-entrance.com/linux-shellscript-keyboard
#   - https://eng-entrance.com/linux-shellscript-function
_main() {
    onetime=false
    while getopts o option
    do
        case "$option" in
            o)
                onetime=true;;
            \?)
                echo "Usage: $0 [-o]" 1>&2
                exit 1;;
        esac
    done

    while :
    do
        echo -n 'ENTER EXAMPLE NAME: '
        read -r name

        case "$name" in
            quit)
                break;;
            list)
                for key in "${!mappings[@]}"
                do 
                    echo "$key"; 
                done

                continue;;
            help)
                echo 'list -- show example names'
                echo 'quit -- quit application'
                continue;;
        esac

        script_path="${mappings[${name}]}"

        echo "[INPUT ] ${name}"
        echo "[SCRIPT] ${script_path}"

        echo "===== START [${script_path}] ====="
        (
            $(command -v env) bash "${script_path}"
        )
        echo "===== END   [${script_path}] ====="

        if [ "$onetime" ]
        then
            break
        fi
    done

    echo ''
    echo 'DONE'
}

_make_mappings
_main
