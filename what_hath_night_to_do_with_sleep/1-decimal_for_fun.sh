#!/bin/bash
time=$(echo $1+$2*.1 | bc)
sleep $time


