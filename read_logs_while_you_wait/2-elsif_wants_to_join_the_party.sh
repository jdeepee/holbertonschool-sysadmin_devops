#!/bin/bash
filename="$1"
a=0
b=0
while read -r line
do
      if [[ "$line" =~ "HEAD" ]]
      then
      a=$((a + 1))
      elif [[ "$line" =~ "GET" ]]
      then
      b=$((b + 1))
      fi
done < "$filename"
echo "$a"
echo "$b"
