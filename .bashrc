# Monkeying with path variables
export CASSANDRA_HOME=~/cassandra
export PATH=$CASSANDRA_HOME:$PATH
export PATH=$CASSANDRA_HOME/bin:$PATH
export HADOOP_INSTALL=~/hadoop
export PATH=$HADOOP_INSTALL/bin:$HADOOP_INSTALL/sbin:$PATH
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export EDITOR=vim

# Aliases
alias ls='ls -G'
alias e='cd /Users/pauljacksonrodgers/engine3'
alias h='cd ~'
alias bc='cd /Volumes/BoxCryptor'
alias mo='mongod --fork'
alias my='mysql.server start'
alias c='~/cassandra/bin/cassandra'

# Sets up git completion
. /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh

# Kicks of tmuxinator for easy session configuration
source ~/.bin/tmuxinator.bash
