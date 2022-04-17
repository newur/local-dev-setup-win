#!/bin/bash

email=$(git config --get user.email)
ssh-keygen -o -t rsa -C "$email"
cat ~/.ssh/id_rsa.pub | clip

echo ""
echo "Copied your public SSH key into your clipboard"
echo ""
echo "Paste the key at: https://github.com/settings/ssh/new"