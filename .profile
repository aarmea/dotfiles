# iTunes rsync
alias rsync-itunes-from-server='rsync -avz -e ssh subsonic@home.albertarmea.com:~/music/iTunes ~/Music'
alias rsync-itunes-to-server='while ! rsync -av ~/Music/iTunes/ -e ssh subsonic@home.albertarmea.com:~/music/iTunes; do echo "Something went wrong, restarting rsync"; done'

# Inline bc
alias calc='bc <<<'

# Lock from command line
alias lock='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

# MacPorts KDE4 dbus
alias dbus='launchctl load -w /Library/LaunchAgents/org.freedesktop.dbus-session.plist'

# acpi with pmset
alias acpi='pmset -g ps'

# List TODOs in a directory, from http://www.reddit.com/r/programming/comments/1eypwa/programmer_interrupted_thoughts_and_science_on/ca5444d
# If we have The Silver Searcher, use that instead.
if command -v ag >/dev/null 2>&1; then
  alias todos="ag TODO"
else
  alias todos="fgrep -r -n -I 'TODO' *"
fi

##
# Your previous /Users/aarmea/.bash_profile file was backed up as /Users/aarmea/.bash_profile.macports-saved_2012-08-09_at_12:30:30
##

# Git stuff
if [ -f /opt/local/share/git-core/git-prompt.sh ]; then
  . /opt/local/share/git-core/git-prompt.sh
fi
#PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;33m\]\W\[\033[00m\] \[\033[01;36m\]$(git symbolic-ref HEAD 2> /dev/null | awk -F / "{print \$NF}")\[\033[00m\]\$ '
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;33m\]\W\[\033[00m\]\[\033[01;36m\]$(__git_ps1)\[\033[00m\]\$ '

# Anthony's shellref, from https://github.com/anthonyde/shellref
ref.pl() {
  ~/src/shellref/src/ref.pl "$@"
}
source ~/src/shellref/src/shellref.sh
alias gitref="__shellref git"

# Usable cmake
alias cmakefiles='cmake -G "Unix Makefiles"'

# Usable qmake
alias qmakefiles='qmake -spec macx-g++'

# `find` alias to quickly find files
alias ff='find . -name'

# Local binaries and scripts
export PATH="$HOME/bin:$PATH"

# Android SDK
export PATH="$PATH:/Applications/adt-bundle-mac-x86_64/sdk/platform-tools"

# Pebble SDK
export PATH="~/arm-cs-tools/bin:$PATH"

# Node.js modules
export PATH="$PATH:/opt/local/lib/node_modules"

# SALSA stuff, http://wcl.cs.rpi.edu/salsa/
export SWPATH=~/Apps/
export SALSAPATH=$SWPATH/Salsa
export SALSAVER=1.1.5
export SALSAOPTS 
# SALSA 1.x aliases
alias salsac='java -cp $SALSAPATH/salsa$SALSAVER.jar:. salsac.SalsaCompiler *.salsa; javac -classpath $SALSAPATH/salsa$SALSAVER.jar:. *.java'
alias salsa='java -cp $SALSAPATH/salsa$SALSAVER.jar:. $SALSAOPTS'
alias wwcns='java -cp $SALSAPATH/salsa$SALSAVER.jar:. wwc.naming.WWCNamingServer'
alias wwctheater='java -cp $SALSAPATH/salsa$SALSAVER.jar:. $SALSAOPTS wwc.messaging.Theater'

# MacPorts Installer addition on 2013-03-23_at_23:42:20: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

