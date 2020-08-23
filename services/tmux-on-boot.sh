#!/bin/bash

session="example"

tmux start-server

tmux new-session -d -s $session

tmux send-keys "cd ~/" C-m
tmux send-keys "echo hahaha" C-m

