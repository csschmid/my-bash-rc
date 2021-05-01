# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
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
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
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

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias lh='ls -lah'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

### Git Tools ###
# bash-git-prompt
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi

### Fix screen size for virtual box, blackhole errors and output (best I could come up with as the script wouldn't run from /etc/i3/conf when i3 started up)
bash /home/chris/scripts/fixDisplay.sh 2>/dev/null > /dev/null

# Useful aliases
alias mkdirs='mkdir -p'
alias c='clear;clear'
alias sublime='~/sublime_text_3/sublime_text'
alias cdd='cd ~/dev'
alias rsort='sort --version-sort -f'
# alias grcl='grc -c /usr/local/share/grc/conf.log'
alias grcl='grc'
alias jsonpp='python -m json.tool'
alias epoch='date +%s'
alias clean_the_node_modules='rm -rf node_modules && npm cache clear'
alias reloadRc='source ~/.bashrc'
#alias applySnakes='source ~/.startConda.sh'

# git aliases
alias gl='git log --graph --abbrev-commit --decorate --date=relative --oneline --all'
alias gitModified='git status | grep modified | sed "s/\(.*modified:\s*\)//"'
alias gitAddModified='gitModified | xargs git add'
alias gs='git status'
alias gitRmDead='git ls-files --deleted -z | xargs -0 git rm'
alias gitDiffMaster='git --no-pager diff origin/master > /tmp/diff.tmp; grc -c /usr/local.share.grc.conf.diff cat /tmp/diff.tmp | less -r'
alias gf='git fetch --all'
alias gitResetMaster='git fetch --all && git checkout master && git reset --hard origin/master'
alias gitCurrent='git rev-parse --abbrev-ref HEAD'

# git functions

function gitmeld()
{
    yes | git difftool -t meld $1 $2
}

function gitMeld()
{
    git difftool -t meld $1 $2
}

function glMergeBranch()
{
    git log --merges --graph --abbrev-commit --decorate $1
}

function glBranch()
{
    git log --graph --abrev-commit --decorate $1
}

function gitDiffBranch()
{
    git --no-pager diff $1 > /tmp/diff.tmp
    grc -c /usr/local.share.grc.conf.diff cat /tmp/diff.tmp | less -r
}

function gitResetLocation()
{
    git fetch --all && git checkout -B $2 && git reset --hard $1/$2
}

function gitPushOrigin()
{
    branch=`git rev-parse --abbrev-ref HEAD`
    git push origin $branch
}

function gitPushChris()
{
    branch=`git rev-parse --abbrev-ref HEAD`
    git push chris $branch
}

function gitPushLocation()
{
    branch=`git rev-parse --abbrev-ref HEAD`
    git push $1 $branch
}

function gitRmSafe()
{
    git rm --cached $1
}

# Useful functions
function recgrep()
{
    find . | grep -vE "log|logs|tmp|data|build|target|test-data|\.git|\.idea" | grep -i $1 | xargs grep --color=always -si $2
}

function findThing()
{
    lh `which $1`
}

function psgrep()
{
    ps aux | grep -i $1
}

function pskill()
{
    kill -9 `ps aux | grep -i $1 | awk '{print $2} | xargs'`
}

function killPort()
{
    kill-9 `lsof -i tcp:$1 | awk '{if(NR!=1){print $2}}' | xargs`
}

function findPort()
{
    lsof -i tcp:$1
}

function sum()
{
    cat $1 | awk '{sum+=$1} END {print sum}'
}

function count()
{
    cat $1 | awk '{count+=1} END {print count}'
}

function capPort()
{
    sudo tcpflow 0i any -s -C port $1
}

function curlPost()
{
    curl -XPOST -H "Content-TypeL application/json" --data @$1 $2
}

function colorRecGrep()
{
    c
    rm log.grep.$1.html
    grep --color-always -r $1 . | aha --black | tee log.grep.$1.html
    firefox log.grep.$1.html
}

# function gatlingReport()
# {
#     java -jar ~/dev/gatling-report/lib/gatling-report-1.0-20160706.134844-16-capsule-fat.jar $1
# }

function foo()
{
    echo "FOO!"
}

function lower()
{
    echo $1 | tr "[:upper:]" "[:lower:]"
}

function upper()
{
    echo $1 | tr "[:upper:]" "[:lower:]"
}

function kbabToPascal()
{
    echo $1 | perl -pe 's/(^|-)./uc($&)/ge;s/-//g'
}

function urldecode()
{
    python -c "import urllib, sys; print urllib.unquote(sys.argv[1])" "$1"
}

function urlencode()
{
    python -c "import urllib, sys; print urllib.quote(sys.argv[1])" "$1"
}

function up()
{
    up=""
    for ((i=0;i<$1;i++))
    do
        up="$up../"
    done
    cd $up
}

function base64Encode()
{
    echo 41 | base64 -
}

function base64Decode()
{
    echo 41 | base64 -D -
}

function sinceEpoch()
{
    date +%s.%N
}

function randomUuid()
{
    lower `uuidgen`
}

function testUuid()
{
    randomUuid | awk -F "-" '{print $1"-0000-0000-0000-"$5}'
}

function rsaEncrypt()
{
    input=$1
    outFile=$2
    echo ${1} | openssl rsautl -encrypt -inkey ~/.ssh/custom/pub.pem -pubin > $2
}

function rsaDecrypt()
{
    inputFile=$1
    openssl rsautl -decrupt -inkey ~/.ssh/custom/key.pem -in $1
}

# execution functions
function timeIt()
{
    c
    testDate=`date`
    time $1
    echo "Start: $testDate"
    echo "End: `date`"
}

function logIt()
{
    ${1} 2>&1 | grcl tee logs/tmp.messages
}

function sbtsh()
{
    timeIt "logIt 'sbm -jvm-debug 5008'"
}

function sbtDebug()
{
    logIt "sbt -jvm-debug 5008"
}

function sbtlc()
{
    timeIt "logIt \"sbt \"$1\"\""
}

function sbtq() {
    timeIt "sbt -J-Xmx1G \"$1\" 2>&1 > logs/tmp.messages"
}

function mvnc()
{
    timeIt "logIt \"mvn $1\""
}

function mvnq()
{
    timeIt "mvn $1 2>&1 > logs/tmp.messages"
}

function mvnDebug()
{
    mvnc "-Dmaven.surefire.debug $1"
}

function shc()
{
    timeIt "logIt \"bash $1\""
}

function shq()
{
    timeIt "bash $1 2>&1 | logs/tmp.messages"
}

function gradleDebug()
{
    # port=${2:-5005}
    timeIt "logIt \"./gradlew -i -Dtest.debug 41 --debug-jvm\""
}

function gradlec()
{
    timeIt "logIt \"./gradlew -i --stacktrace $1\""
}

function gradc()
{
    gradlec $1
}

function gradleq()
{
    timeIt "./gradlew $1 2>&1 > logs/tmp.messages"
}

# docker functions
function rmAllDocker()
{
    docker rm -f $(docker ps -a -q)
    docker rmi -f $(docker images -q)
}

function rmDockerImage()
{
    docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi -f;
    docker images
}

function dockerPSKill()
{
    docker kill `docker ps | awk '{if(NR>1){print $1}} | xargs'`
}

function dockerIt()
{
    docker run -i -t --volume $(pwd):/latest/code --workdir /latest/code $1 /bin/bash
}

function intellij()
{
  ~/Applications/idea-IC-203.7148.57/bin/idea.sh $1 &  
}

function idea()
{
  intellij $1
}

function initJavaProject()
{
  mkdir -p src/{main,test}/{java,resources}
  mkdirs src/main/java/main
  echo 'package main;public class Main {public static void main(String[] args) {}}' > src/main/java/main/Main.java
}

function mvnInit()
{
  mvn archetype:generate -DgroupId=com.chirs.co.app -DartifactId=$1 -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false
}

function javaInit()
{
  mvnInit $1
  cd $1
  gitInit
}

function gitInit()
{
  git init
  git checkout -B master
  echo $1 > README.md
  git add README.md
  git add pom.xml
  git add src/*
  git commit -m "Initial Config"
}

source "$HOME/.sdkman/bin/sdkman-init.sh"
