#!/bin/zsh

BRANCH=3.3
DIR=`pwd`

if [[ -d ../foundation ]]; then
    echo '>>> Sync Foundation'

    cd ../foundation
    git checkout $BRANCH
    cd $DIR

    rm -Rf ./resources/assets/*
    rm -Rf ./resources/js/*

    cp -Rf ../foundation/resources/assets/* ./resources/assets/
    cp -Rf ../foundation/resources/js/* ./resources/js/
fi
