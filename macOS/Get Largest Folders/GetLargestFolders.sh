#!/bin/sh

du -I Library -I .Trash -h $HOME | sort -hr | head -n10