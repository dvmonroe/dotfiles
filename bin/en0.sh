#!/bin/zsh

NEW_ADDR="$(openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//')"
# echo "${NEW_ADDR}"
sudo ifconfig en0 ether "${NEW_ADDR}"
