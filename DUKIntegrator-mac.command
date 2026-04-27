#!/bin/bash

# Change to the directory where the script is located
cd "$(dirname "$0")"

# Force Java 8 for this session
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH="$JAVA_HOME/bin:$PATH"

echo "Using Java version:"
java -version

# Run the DUKIntegrator.jar
# The app often overwrites its config, so we rely on the PATH to keep it on Java 8
java -jar DUKIntegrator.jar -d "$@"
