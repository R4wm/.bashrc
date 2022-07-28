alias clipit="xclip -sel clip"
function frown(){
    echo '( ͡ಠ ʖ̯ ͡ಠ )' | clipit
}


function concerned(){
    echo '(´･_･`)' | clipit
}

function meh(){
    echo '¯\(°_o)/¯' | clipit
}

function happy(){
    echo '☜(⌒▽⌒)☞' | clipit 
}

alias rm_tilde='echo -e "begone:\n" && ls | grep "~" && find . -iname "*~" -exec rm {} \;'

function rm_all_container(){
    for i in $(docker container ls -a | awk '{print $1}' | grep -v CONTAINER); do docker container rm -f $i; done   
}
