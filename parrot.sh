#!/bin/bash

echo I am running as $(whoami) 
echo "These were just passed to me: $*"
echo This is my environment: $(printenv)
