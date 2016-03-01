#!/bin/bash

command=$1
string="$2"

echo $string > /tmp/4-stdout_and_stderr & $command 2>> /tmp/4-stdout_and_stderr

cat /tmp/4-stdout_and_stderr
