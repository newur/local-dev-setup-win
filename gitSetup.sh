#!/bin/bash

read -r -p "Are you an external KN employee? [y/N] " response
response=${response,,}    # tolower
if [[ "$response" =~ ^(yes|y)$ ]]
then
    git config --global user.email "external.${USERNAME}@kuehne-nagel.com"
else
    git config --global user.email "${USERNAME}@kuehne-nagel.com"
fi

USERNAME_WITH_SPACE="${USERNAME//./ }"
USERNAME_WITH_SPACE=( $USERNAME_WITH_SPACE ) # without quotes
USERNAME_CAPITALIZED="${USERNAME_WITH_SPACE[@]^}"
git config --global user.name "${USERNAME_CAPITALIZED}"

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.cam commit -am


mkdir -p ~/.config/git/template/hooks/
git config --global init.templatedir ~/.config/git/template/