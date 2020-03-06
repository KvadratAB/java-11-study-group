#!/bin/bash
cd module1
javac $(find . -name "*.java") 

jar --create --file module1.jar -C . .

cd ../module2
javac -p ../module1/module1.jar $(find . -name "*.java") 

jar --create --file module2.jar --main-class se.kvadrat.example.module2.Module2 -C . .

cd ..
mv module1/module1.jar build/
mv module2/module2.jar build/
