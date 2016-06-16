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
    rm -Rf ./resources/views/packages/orchestra/foundation/*

    cp -Rf ../foundation/resources/assets/* ./resources/assets/
    cp -Rf ../foundation/resources/js/* ./resources/js/
    cp -Rf ../foundation/resources/views/* ./resources/views/packages/orchestra/foundation/
fi

if [[ -d ../story ]]; then
    echo '>>> Sync Foundation'

    cd ../story
    git checkout $BRANCH
    cd $DIR

    rm -Rf ./resources/views/packages/orchestra/story/*

    cp -Rf ../story/resources/views/* ./resources/views/packages/orchestra/story/
fi
