#!/bin/bash
file=$1

cat $file | awk '{print $1, $9}'
