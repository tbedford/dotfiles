# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

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
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# MySQL alias
#alias mysql='/usr/local/mysql/bin/mysql'

# Classpath
# export CLASSPATH=/Users/tbedford/mysql-connector-java-5.1.24/mysql-connector-java-5.1.24-bin.jar:$CLASSPATH

export EDITOR=emacs

# Maven
#export M2_HOME=/Users/tbedford/apache-maven-3.2.5
#export PATH=$M2_HOME/bin:$PATH
#export MAVEN_OPTS="-Xms1024m -Xmx4096m -XX:PermSize=1024m"


# JDK 1.8
#export JRE_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home

# Coloured man pages

man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
        LESS_TERMCAP_md=$'\E[01;38;5;74m' \
        LESS_TERMCAP_me=$'\E[0m' \
        LESS_TERMCAP_se=$'\E[0m' \
        LESS_TERMCAP_so=$'\E[38;5;246m' \
        LESS_TERMCAP_ue=$'\E[0m' \
        LESS_TERMCAP_us=$'\E[04;38;5;146m' \
        man "$@"
    }

#####
