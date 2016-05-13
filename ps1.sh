#!/bin/bash
# ------------------------------------------------------------------
# [Author] Title
#          Description
# ------------------------------------------------------------------

case "$TERM" in
    xterm-color|*-256color|screen) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi


if [ "$color_prompt" = yes ]; then
        #Color Variables                
        YELLOW="\[\033[1;33m\]"
        LIGHTGREY="\[\033[0;37m\]"
        BLUE="\[\033[0;34m\]"
        LIGHTBLUE="\[\033[1;34m\]"
        DEFAULTC="\[\033[0m\]"

        PS1="$DEFAULTC[$LIGHTBLUE\t$DEFAULTC] $LIGHTGREY\u$DEAFULTC@$LIGHTGREY\h$DEFAULTC \w\$"
else
        PS1="[\t]\u@\h \w\$"
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

