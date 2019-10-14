if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/sg/.sdkman"
[[ -s "/Users/sg/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/sg/.sdkman/bin/sdkman-init.sh"
