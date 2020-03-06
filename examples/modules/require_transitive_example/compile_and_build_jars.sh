#!/bin/bash
mkdir build

cd model_module
javac $(find . -name "*.java") 

jar --create --file model.module.jar -C . .

cd ../middle_module
javac -p ../model_module/model.module.jar $(find . -name "*.java") 

jar --create --file middle.module.jar --main-class se.kvadrat.example.middle.MiddleClass -C . .

cd ..
mv model_module/model.module.jar build/
mv middle_module/middle.module.jar build/
