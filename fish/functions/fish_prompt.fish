function fish_prompt
	set_color brblack
	echo -n "["(date "+%H:%M")"] "
    set_color blue
    echo -n "$USER"
	if [ $PWD != $HOME ]
		set_color brblack
		echo -n ':'
		set_color yellow
		echo -n (basename $PWD)
    else
        echo -n '~'
	end
	set_color green
	printf '%s ' (__fish_git_prompt)
	set_color red
	echo -n '| '
	set_color normal
end
