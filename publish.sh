BRANCH=3.3;

cd ../foundation
git checkout $BRANCH;

cd ../installer
git checkout $BRANCH;

cd ../control
git checkout $BRANCH;

cd ../kite

# if [[ -d ../kite ]]; then
    # foundation
    rm -Rf ../foundation/resources/assets/*
    rm -Rf ../foundation/resources/js/*
    rm -Rf ../foundation/resources/views/*
    cp -Rf ./resources/assets/* ../foundation/resources/assets/
    cp -Rf ./resources/js/* ../foundation/resources/js/
    cp -Rf ./resources/views/packages/orchestra/foundation/* ../foundation/resources/views/
    cp -Rf ./bower.json ../foundation/bower.json
    cp -Rf ./gulpfile.js ../foundation/gulpfile.js

    # installer
    rm -Rf ../installer/resources/views/*
    cp -Rf ./resources/views/packages/orchestra/installer/* ../installer/resources/views/

    # control
    rm -Rf ../control/resources/views/*
    cp -Rf ./resources/views/packages/orchestra/control/* ../control/resources/views/
# fi
