#!/bin/sh
export HISTFILE=/dev/null

HOST=example.org
PORT=22
USER=root

read -p "Enter knock code: " seq

ports=''
for i in $seq; do
    ports="$ports ${i}000"
done


knock $HOST $ports
ssh -p $PORT $USER@$HOST