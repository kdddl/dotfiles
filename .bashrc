#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias hx='helix'

# Environment Variables
export EDITOR=helix
export JAVA_HOME="/usr/lib/jvm/java-19-openjdk"

# power managment
alias slx='systemctl suspend'
alias shd='shutdown now'

# essentials
alias ls='ls --color=auto'
alias mv='mv -i'
alias rm='rm -i'
alias cls='clear'
alias vimp='vimpager'
alias clipboard='xclip -sel c'
alias redshift='redshift -l 36:174'

# laptop
alias brightness='doas vim /sys/class/backlight/intel_backlight/brightness'

# colour tests
alias colours8='(x=`tput op` y=`printf %76s`;for i in {0..256};do o=00$i;echo -e
${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done)'

# art stuff
alias vibe='cat ~/Art/ansi-art/brycewave.ans'
alias washere='cat ~/Art/ansi-art/domihere.ans'

# dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# silly aliases
alias math='qalc'

# aliases
alias matlab='matlab -nodesktop -nosplash'

# programming
alias gcc='gcc -Wall'
alias ssh-it='eval "$(ssh-agent -s)"'

# Other
PS1='\W \$ '

# path
export PATH=$PATH:~/.emacs.d/bin
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.cargo/bin

export QSYS_ROOTDIR="/home/kdddl/.cache/yay/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/21.1/quartus/sopc_builder/bin"

alias capslockfix="xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'"
