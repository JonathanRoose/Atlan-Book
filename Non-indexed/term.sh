#!/usr/bin/bash

strvar="\'$1\'"

echo $strvar
lua -e "sent = $1" parse.lua

