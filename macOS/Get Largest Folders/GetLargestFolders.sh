#!/bin/zsh

du -I Library -I .Trash -h $HOME | sort -hr | head -n10