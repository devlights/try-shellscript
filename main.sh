#!/usr/bin/env bash

declare -A mappings

_make_mappings() {
    mappings=(
        ["helloworld"]="basic/helloworld.sh"

        ["grep-if"]="basic/grep_if_judge/grep_if_judge.sh"
        ["true-false"]="basic/true_false_command/true_false_command.sh"
        
        ["comment_multiline"]="basic/comment/multiline_commentout.sh"

        ["parameter_expansion_use_default"]="basic/shell_expansions/parameter_expansion/use_default.sh"

        ["brace_expansion_sequence_expansion"]="basic/shell_expansions/brace_expansion/sequence_expression.sh"
        ["brace_expansion_non_sequensial_expansion"]="basic/shell_expansions/brace_expansion/non_sequensial_expression.sh"
        ["brace_expansion_use_wildcard"]="basic/shell_expansions/brace_expansion/use_wildcard.sh"
        ["brace_expansion_combination"]="basic/shell_expansions/brace_expansion/combination.sh"
    )
}

# main function
#
# REFERENCES::
#   - https://stackoverflow.com/questions/1494178/how-to-define-hash-tables-in-bash
#   - https://qiita.com/kaw/items/034bc4221c4526fe8866
#   - https://eng-entrance.com/linux-shellscript-keyboard
#   - https://eng-entrance.com/linux-shellscript-function
#   - https://qiita.com/b4b4r07/items/e56a8e3471fb45df2f59
#   - https://stackoverflow.com/questions/229551/how-to-check-if-a-string-contains-a-substring-in-bash
#   - https://qiita.com/b4b4r07/items/cb02bbfd6df58df06ea8
#   - https://www.atmarkit.co.jp/ait/articles/1905/30/news017.html
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

        # Find candidates
        declare -a candidates=()
        count=0
        for key in "${!mappings[@]}"
        do 
            if [[ "$key" == *"$name"* ]]; then
                candidates=("${candidates[@]}" "$key")
                (( count++ ))
            fi
        done

        if [ "$count" -eq 0 ]; then
            echo -e '\nNo candidates were found...Please try again.\n'
            continue;
        fi

        if [ "$count" -gt 1 ]; then
            echo -e '\nMultiple candidates were found...'
            echo '-----------------------------------'

            for ((i=0; i < ${#candidates[@]}; i++)) {
                echo "${candidates[i]}"
            }

            echo -e '-----------------------------------\n'
            continue;
        fi

        # There is only one candidate, execute it.
        target="${candidates[0]}"
        script_path="${mappings[${target}]}"

        echo ''
        echo "[INPUT ] ${name}"
        echo "[TARGET] ${target}"
        echo "[SCRIPT] ${script_path}"
        echo ''

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