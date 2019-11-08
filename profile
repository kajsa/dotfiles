#############################################################
# Generic configuration that applies to all shells
#############################################################

###################
# Set textmate as our default command line editor
export EDITOR='vim'

###################
# Load paths and environment variables
source ~/.shellvars
source ~/.shellpaths
source ~/.shellaliases
source ~/.shellactivities

# Load environment variables specific to this machine, if present
[[ -e ~/.localvars ]] && source ~/.localvars


# Setting PATH for Python 3.7
# The original version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
