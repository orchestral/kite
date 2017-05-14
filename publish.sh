#!/bin/zsh

BRANCH=3.4
DIR=`pwd`

sh chmod.sh

if [[ -d ./resources/assets/sass ]]; then
    rm -rf resources/assets/sass
fi

if [[ -d ../foundation ]]; then
    echo '>>> Sync Foundation'

    cd ../foundation
    git checkout $BRANCH
    cd $DIR

    rm -Rf ../foundation/resources/assets/*
    rm -Rf ../foundation/resources/js/*
    rm -Rf ../foundation/resources/views/*
    cp -Rf ./resources/assets/* ../foundation/resources/assets/
    cp -Rf ./resources/js/* ../foundation/resources/js/
    cp -Rf ./resources/views/packages/orchestra/foundation/* ../foundation/resources/views/
    cp -Rf ./.bowerrc ../foundation/.bowerrc
    cp -Rf ./bower.json ../foundation/bower.json
    cp -Rf ./gulpfile.js ../foundation/gulpfile.js
    cp -Rf ./gulpfile.vendor.js ../foundation/gulpfile.vendor.js

    if [[ -d ../foundation/node_modules ]]; then
        cd ../foundation
        rm -rf resources/assets/sass
        bower update
        npm run-script vendor
        chmod 644 resources/assets/vendor/vendor.css
        chmod 644 resources/assets/vendor/vendor.js
        npm run-script build
        cd $DIR
    fi
fi


if [[ -d ../installer ]]; then
    echo '>>> Sync Installer'

    cd ../installer
    git checkout $BRANCH
    cd $DIR

    rm -Rf ../installer/resources/views/*
    cp -Rf ./resources/views/packages/orchestra/installer/* ../installer/resources/views/
fi

if [[ -d ../control ]]; then
    echo '>>> Sync Control'

    cd ../control
    git checkout $BRANCH
    cd $DIR

    rm -Rf ../control/resources/views/*
    cp -Rf ./resources/views/packages/orchestra/control/* ../control/resources/views/
fi

# if [[ -d ../story ]]; then
#     echo '>>> Sync Story'

#     cd ../story
#     git checkout $BRANCH
#     cd $DIR

#     rm -Rf ../story/resources/views/*
#     cp -Rf ./resources/views/packages/orchestra/story/* ../story/resources/views/
# fi

# if [[ -d ../studio ]]; then
#     echo '>>> Sync Studio'

#     cd ../studio
#     git checkout $BRANCH
#     cd $DIR

#     cp -Rf ./.bowerrc ../studio/stubs/.bowerrc
#     cp -Rf ./bower.json ../studio/stubs/bower.json
#     cp -Rf ./gulpfile.js ../studio/stubs/gulpfile.js
# fi
