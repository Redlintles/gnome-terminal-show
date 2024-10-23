#!/bin/bash

# Certifique-se de que não há sessão anterior chamada "splitter"
tmux kill-session -t splitter 2>/dev/null

# Inicie uma nova sessão de forma anexa (ou seja, para ver progressivamente)
tmux new-session -d -s splitter

# Anexar à sessão e executar os comandos progressivamente com 'sleep' entre eles
tmux attach-session -t splitter \; \
  send-keys "echo 'Please'" C-m \; \
  run-shell "sleep 1" \; \
  split-window -v \; \
  send-keys "echo 'Like And'" C-m \; \
  run-shell "sleep 1" \; \
  split-window -h \; \
  send-keys "echo 'Subscribe'" C-m \; \
  run-shell "sleep 1" \; \
  split-window -v \; \
  send-keys "echo 'Thanks!'" C-m
