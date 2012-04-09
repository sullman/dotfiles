export PYTHONPATH="/Users/sullman/projects/satchmo/satchmo/apps:${PYTHONPATH}"

# Java properties
export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export PATH="$JAVA_HOME/bin:$PATH"

# Maven properties
export M2_HOME=/usr/local/apache-maven/apache-maven-3.0.3
export M2=$M2_HOME/bin
export PATH="$M2:$PATH"

# git
export PATH="/usr/local/git/bin:$PATH"

# Narwhal
export NARWHAL_ENGINE=jsc
export PATH="/usr/local/narwhal/bin:$PATH"
export CAPP_BUILD="/private/tmp/Build"

alias log='vim -R ~/Library/Logs/Plex\ Media\ Server.log'

# Roku
export ROKU_DEV_TARGET=10.0.1.22
