#!/bin/bash
rm -rf build
mkdir -p build

echo 'Compile source'
cd jlink_module
javac $(find . -name "*.java") 

echo 'Create jar file'
jar --create --file jlink.module.jar -C . .
mv jlink.module.jar ../build/
cd ..

echo 'List jar ependencies'
jdeps --list-deps build/jlink.module.jar

echo 'Create java-runtime and executable jlink-app'
rm -rf java-runtime
jlink -p ./build --add-modules java.base,se.kvadrat.example.jlink --output java-runtime --launcher jlink-app=se.kvadrat.example.jlink/se.kvadrat.example.jlink.JlinkApp

echo 'Run executable jlink-app'
./java-runtime/bin/jlink-app

