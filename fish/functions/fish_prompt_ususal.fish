function fish_prompt
  

  #echo -e ""

	and set retc red

    or set retc red
    tty | string match -q -r tty
    and set tty tty
    or set tty pts

    set_color $retc
    if [ $tty = tty ]
        echo -n .-
    else
        echo -n '┬─'
    end
    set_color -o green
    echo -n " "
    if test "$USER" = root -o "$USER" = toor
        set_color -o red
    else
        set_color -o yellow
    end
    set_color -o white
    echo -n @
   
    set_color -o white
    
    echo -n (prompt_hostname)
    set_color -o yellow
    #echo -n :(prompt_pwd)
    echo -n :(pwd|sed "s=$HOME=~=")
    set_color -o green
    set_color normal
    echo
    set_color normal
    for job in (jobs)
        set_color $retc
        if [ $tty = tty ]
            echo -n '; '
        else
            echo -n '│ '
        end
        set_color brown
        echo $job
    end
    set_color normal
    set_color $retc
    if [ $tty = tty ]
        echo -n "'->"
    else
        echo -n '╰─>'
    end
    set_color -o red
    echo -n '$ '
    set_color normal
end
