#!/bin/bash

# TODO add git template

BASE_DIR="/c"
BASE_REPO="git@github.com:newur"

mkdir -p ${BASE_DIR}/libs
cd ${BASE_DIR}/libs

LIB_REPOS=( devSetup.git dosAndDonts.git )
for repo in "${LIB_REPOS[@]}"
do
    git clone ${BASE_REPO}/"$repo"
done

mkdir -p ${BASE_DIR}/verticals
cd ${BASE_DIR}/verticals

VERTICAL_REPOS=( jenkins-inherit-parameters.git command-line-scripts.git )
for repo in "${VERTICAL_REPOS[@]}"
do
    git clone ${BASE_REPO}/"$repo"
done

