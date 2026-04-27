#!/bin/bash

# Change to the directory where the script is located
cd "$(dirname "$0")"

# Force Java 8 for this session
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH="$JAVA_HOME/bin:$PATH"

# Run the Download.jar
java -cp Download.jar download.Download
