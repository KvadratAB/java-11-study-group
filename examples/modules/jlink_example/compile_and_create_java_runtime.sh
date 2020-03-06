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

echo 'Create java-runtime'
rm -rf java-runtime
jlink --add-modules java.base --output java-runtime
du -sh java-runtime/

echo 'Run JlinkApp with custom java-runtime/bin/java'
java-runtime/bin/java -p ./build --module se.kvadrat.example.jlink/se.kvadrat.example.jlink.JlinkApp

