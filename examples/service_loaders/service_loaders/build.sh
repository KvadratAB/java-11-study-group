#!/bin/bash
rm -r build
mkdir -p build

echo "Build service"
cd service
javac $(find . -name "*.java") 

jar --create --file service-module.jar -C . .
mv service-module.jar ../build/

echo "Build provider"
cd ../provider
javac -p ../build $(find . -name "*.java")

jar --create --file provider-module.jar -C . .
mv provider-module.jar ../build/

echo "Build static provider"
cd ../provider_static
javac -p ../build $(find . -name "*.java")

jar --create --file provider-static-module.jar -C . .
mv provider-static-module.jar ../build/

echo "Build client"
cd ../client
javac -p ../build/service-module.jar $(find . -name "*.java")

jar --create --file client-module.jar --main-class se.kvadrat.client.Client -C . .
mv client-module.jar ../build/
