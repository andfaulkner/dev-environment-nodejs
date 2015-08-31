#sh

#ENVIRONMENT VARIABLES
#ANDROID_HOME="/home/andfaulkner/Android/Sdk"


#################################################################################
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ SYSTEM UTILITIES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#################################################################################
alias grep='grep --colour=auto'
alias ll='ls -al'
alias ls='ls --color=auto'
alias gt="gnome-terminal"

#find process running on a given port
alias pidofport="sudo netstat -nlp | grep" #port number here


#add new alias to bashrc
function newalias { 
    echo "" >> ~/.bashrc
    echo "" >> ~/.bashrc
    echo 'alias' ${1}='"'${2}'"' >> ~/.bashrc
  $(echo 'alias' ${1}'='${2})
}

#rename a file
function replace {
  rename $(echo 's/'$1'/'$2'/') $(echo $1)*
}

#return directory contents going from least to most recent
alias llt='ll -t -r'
alias lsa="ls -all"

alias ..="cd .."
alias ...="cd ..; cd .."
alias ....="cd ..; cd ..; cd .."
alias .....="cd ..; cd ..; cd ..; cd .."
alias ......='cd ..; cd ..; cd ..; cd ..; cd ..'
alias .......='cd ..; cd ..; cd ..; cd ..; cd ..; cd ..'

#make a file accessible to everyone
alias mkshared="sudo chmod -R a+rwxXst"

#get size of a file, or total size of a directory + all subdirectories
alias fsize='du -chs'

#=== FUNCTION ==================================================================
#	 NAME: 	newp
# DESCRIPTION: 	launch a program in a new process detached from the terminal,
#		& avoid piping error messages from the program to the terminal
#===============================================================================
function newp {
  ($1 &> /dev/null &);
}


#=== FUNCTION ==================================================================
#	 NAME: 	bu
# DESCRIPTION: 	create backup file
#=============================================================================
function bu() { 
  HOUR=`date +%k`
  TIME=$HOUR:`date +%M`:`date +%S`
  cp ./ $@.backup--date-20`date +%y`-`date +%m`-`date +%d`--$TIME;
}


#=== FUNCTION ==================================================================
#	 NAME: 	bkdir
# DESCRIPTION: 	backs up a directory
#===============================================================================
function bkdir {
  HOUR=`date +%k`
  TIME=$HOUR:`date +%M`:`date +%S`
  NEWDIR=$1.backup--date-20`date +%y`-`date +%m`-`date +%d`--$TIME
  mkdir $NEWDIR
  cp -R $1 $NEWDIR
}


#=== FUNCTION ==================================================================
#	 NAME: 	nuke
# DESCRIPTION: 	super-force kill process
#===============================================================================
function nuke { 
  killall $1
  killall -15 $1
  killall -9 $1
}
#################################################################################



################################################################################
#~~~~~~~~~~~~~~~~~~~~~ FAST NAVIGATION TO COMMON LOCATIONS ~~~~~~~~~~~~~~~~~~~~~
################################################################################
#alias testbed='cd /home/andfaulkner/Projects/testbed/express-testbed-2'
#alias windrive="cd /media/andfaulkner/7490994390990D2C"
#alias photos="cd /media/andfaulkner/7490994390990D2C/Users/andrew/Desktop/Photos"
#alias proj="cd /home/andfaulkner/Projects"
#alias nodetetris="cd /home/andfaulkner/Projects/cordova/nodeTetris"
#alias learnnode="cd /home/andfaulkner/Projects/cordova/learnnode"
#alias cmsmo="cd /home/andfaulkner/Projects/cordova/CMSMobile"
#alias cljproj="cd /home/andfaulkner/Projects/Clojurescript"
#alias nodemodules="cd /usr/local/lib/node_modules"
#alias nodemodulesg="cd /usr/lib/node_modules"
#alias bins="cd /usr/local/bin"
#alias cdredis="cd /home/andfaulkner/bin/redis-3.0.3"

alias snippets="cd ~/.config/sublime-text-3/Packages/User/snippets"
#################################################################################


################################################################################
#~~~~~~~~~~~~~~~~~~~~~~~~ INFO FILES & ENVIRONMENT SETUP ~~~~~~~~~~~~~~~~~~~~~~~
################################################################################
alias cheatsheet='gnome-terminal --title=BASH_TIPS -x vim ~/bash-tips.txt'

### !!! CHECK THIS ONE !!! ### FIXME 
#open bashrc to modify command line aliases & function
alias bashrc="gnome-terminal --title=~.BASHRC --geometry 110x50-0-0 -x vim ~/.bashrc"

alias vimrc="gnome-terminal --title=~.VIMRC --geometry 110x50-0-0 -x vim ~/.vimrc"

### !!! CHECK THIS ONE !!! ### FIXME 
#alias bashrc2="gedit /home/andfaulkner/.bashrc"
#*************************************************************************#


################################################################################
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ SERVER ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
################################################################################
#alias redis="cd /home/andfaulkner/bin/redis-3.0.3/src; ./redis-server --port" #give port number FIXME
#alias rediscli="/home/andfaulkner/bin/redis-3.0.3/src/redis-cli -p" #give port number FIXME

alias pingpost="curl --data 'param1=value1&param2=value2'"

#################################################################################



#################################################################################
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ NODE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#################################################################################
#find version of globally installed package
alias npmpv="npm list -g | grep"

### !!! CHECK THIS ONE !!! ### FIXME 
alias nodelist="ls /usr/local/lib/node_modules/; echo '-------------------------------------'; echo 'global node modules location:'; echo '/usr/local/lib/node_modules/'; echo '-------------------------------------';"

alias node='node --es_staging --harmony --harmony_proxies --stack_trace_limit=1000'

alias gulp='node `which gulp`'
#################################################################################



#################################################################################
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ TEXT PROCESSING  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#################################################################################
function appendtext {
    (cat $2 ; echo '$1') > .TEMP_1234561_123456_123456.txt; rm $2; mv .TEMP_1234561_123456_123456.txt $2
}

#conglomerates 2 separate variables into a single string 
function testexpand {
  $(echo ${1}${2})
}
#################################################################################



#################################################################################
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GIT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#################################################################################
alias gaa="git add --all"
alias gca="git commit --all -m"
alias gpo="git push origin"


#PROGRAMS
### FIXME
#alias sublime="/home/andfaulkner/bin/sublime_text_3/sublime_text"


################################################################################
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ PROGRAMS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
################################################################################
### !!! CHECK THIS ONE !!! ### FIXME
alias eclipse="newp '/home/andfaulkner/bin/eclipse/eclipse'"
alias chrome="newp google-chrome"
#alias android-studio="newp 'bash /home/andfaulkner/bin/android-studio/bin/studio.sh'"


# !!! CHECK THIS ONE !!! ### FIXME
function gimpr {
  (gimp $1 &> /dev/null &)
}

#CORDOVA / MOBILE
#alias crun="cordova run"
#alias creinstall="cordova platform remove android --save; cordova platform add android --save; cordova build"
#################################################################################



####################################################################################
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ SEARCHING ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~$
####################################################################################
alias regexes="gnome-terminal --title=~REGEXES --geometry 110x50-0-0 -x vim ~/regexes_helpful.txt"

#count number of results a search returns
alias countf='find . | wc -l'


#=== FUNCTION ==================================================================
#	 NAME: 	searchfn
# DESCRIPTION: 	Search that matches all files in the current directory or its	      
#		subdirectories with the given text anywhere in their file name
#===============================================================================
function searchfn {
  find . -regex ".*$1[^\/]*$" 2>/dev/null
#  find . -regex ".*$1[\w\d_\s]*$" 2>/dev/null
#  find . -regex ".*$1[\w\d]*$" 2>/dev/null
}


#=== FUNCTION ==================================================================
#	 NAME: 	searchhist
# DESCRIPTION: 	search history for the given string.
#===============================================================================
function searchhist {
  history | grep "$1"
}


#=== FUNCTION ================================================================
#	 NAME:  findtype
# DESCRIPTION:  find all files with a given extension containing a pattern
#		To return an exact extension:   findtype -a pattern
#=============================================================================
function findtype {
   #if 2 parameters have been passed into this 
   if [ ! -z "$2" ]
   then
      if [ "$1" = "-a" ]
      then
         find . -name "*.$2"
         find . -name "*.$2"|wc -l
      fi
   else
      find . -name "*\.$1*"
      find . -name "*\.$1*"|wc -l
   fi
}
#=============================================================================


#=== FUNCTION ================================================================
# NAME: grep_ex1_inc2 		
# DESCRIPTION:  displays lines containing $2 that do not contain $1
#=============================================================================
function grepx1i2 { 
	grep --colour=auto -v $1 --line-buffered | grep --colour=auto --line-buffered $2
}
#################################################################################



#=== FUNCTION ==================================================================
#	 NAME:  google
# DESCRIPTION:  Search google for given parameter: e.g. google "om nom nom"
# 		To use literal strings in a search, use single quotes on the 
#		outside & double quotes inside: e.g. google '"om nom nom"'
# 		All regular google keywords work e.g. google '"om nom" OR omnom"'
#
# PARAMETER 1:  the string you're searching, between quotes.
#===============================================================================
function google {
  firefox "http://www.google.com/search?q=$1"
}


#=== FUNCTION ==================================================================
#	 NAME:  startenv
# DESCRIPTION:  launch all Search google for given parameter: e.g. google "om nom nom"
# 		To use literal strings in a search, use single quotes on the 
#		outside & double quotes inside: e.g. google '"om nom nom"'
# 		All regular google keywords work e.g. google '"om nom" OR omnom"'
#
# PARAMETER 1:  the string you're searching, between quotes.
#===============================================================================
#FIXME FIXME FIXME FIXME FIXME FIXME FIXME
function startenv {
    nuke gulp #kill instances of gulp
    nuke node #kill instances of node   
    testbed #open project
    sublime  #open IDE
    gt --title=REDIS -x /home/andfaulkner/bin/redis-3.0.3/src/redis-server --port 9999 #launch redis
    gt --title=GULP -e "gulp" #open gulp in project
    (google-chrome https://soundcloud.com/stream &> /dev/null &) #open chome, open music
    echo "wait 5 seconds for redis to finish launching"
    sleep 5
    gt --title=SERVER -x gulp server #launch server
    echo "wait 5 seconds for server to finish launching"
    sleep 5
	redis-cli -p 9999
    (google-chrome http://localhost:3001 &> /dev/null &) # open google chrome, point to server 
}
#FIXME FIXME FIXME FIXME FIXME FIXME FIXME FIXME FIXME FIXME
#===============================================================================


#PATH=.:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:${PATH}

export PATH

#FIXME?
export NODE_PATH=/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript:/usr/local/lib/node_modules

