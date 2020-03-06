#!/bin/bash
mkdir -p build

cd lower_module
javac $(find . -name "*.java") 

jar --create --file lower.module.jar -C . .

cd ../middle_module
javac -p ../lower_module/lower.module.jar $(find . -name "*.java")

jar --create --file middle.module.jar -C . .

cd ../upper_module
javac -p ../middle_module/middle.module.jar $(find . -name "*.java")

jar --create --file upper.module.jar --main-class se.kvadrat.example.upper.UpperClass -C . .

cd ..
mv lower_module/lower.module.jar build/
mv middle_module/middle.module.jar build/
mv upper_module/upper.module.jar build/


