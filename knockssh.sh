#!/bin/sh
export HISTFILE=/dev/null

HOST=example.org
PORT=22
USER=root

read -sp "Enter knock code: " seq
echo 

knock $HOST $seq
ssh -p $PORT $USER@$HOST