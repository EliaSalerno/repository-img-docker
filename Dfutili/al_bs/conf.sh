#!/bin/bash


mkdir /home/progetto
cd /home/progetto
git init

service sshd startgit config --global user.name "EliaSalerno"
git config --global user.email "elia.salerno@issgreppi.it"
ssh-keygen
