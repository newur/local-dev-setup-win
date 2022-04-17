#!/bin/bash

email=$(git config --get user.email)
ssh-keygen -o -t rsa -C "$email"
cat ~/.ssh/id_rsa.pub | clip

GREEN='\033[0;32m'
NO_COLOR='\033[0m'

echo ""
echo "Copied your public SSH key into your clipboard"
echo ""
echo -e "Paste the key at: ${GREEN}https://github.com/settings/ssh/new"${NO_COLOR}