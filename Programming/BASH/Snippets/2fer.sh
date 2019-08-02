#!/bin/bash
if [ ! -z $1 ]; then
    name=$1
else
    name="you"
fi
echo "One for ${name}, one for me."