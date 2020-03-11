#!/bin/bash
rm -r build
mkdir -p build

cd lower_module
javac $(find . -name "*.java") 

jar --create --file lower.module.jar -C . .
mv lower.module.jar ../build/

cd ../middle_module
javac -p ../build $(find . -name "*.java")

jar --create --file middle.module.jar -C . .
mv middle.module.jar ../build/

cd ../upper_module
javac -p ../build $(find . -name "*.java")

jar --create --file upper.module.jar --main-class se.kvadrat.example.upper.UpperClass -C . .
mv upper.module.jar ../build/