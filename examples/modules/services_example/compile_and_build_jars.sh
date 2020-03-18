#!/bin/bash
rm -r build
mkdir -p build
mkdir -p tmp

echo 'Compile and build FoodConsumer'
cd FoodConsumer
javac $(find . -name "*.java") 
jar --create --file foodconsumer.jar --main-class se.kvadrat.example.food.FoodConsumer -C . .
mv foodconsumer.jar ../build/

echo 'Compile and build BadFood'
cd ../BadFood
javac -p ../build $(find . -name "*.java")
jar --create --file badfood.jar  -C . .
mv badfood.jar ../build/

echo 'Compile and build GoodFood'
cd ../GoodFood
javac -p ../build $(find . -name "*.java")
jar --create --file goodfood.jar  -C . .
mv goodfood.jar ../build/

cd ..

echo ''
echo 'Run FoodConsumer with badfood.jar and goodfood.jar on module path'
java -p build -m se.kvadrat.foodconsumer/se.kvadrat.example.food.FoodConsumer;

echo ''
echo 'Run FoodConsumer with only badfood.jar on module path'
mv build/goodfood.jar tmp/
java -p build -m se.kvadrat.foodconsumer/se.kvadrat.example.food.FoodConsumer;

echo ''
echo 'Run FoodConsumer with only goodfood.jar on module path'
mv build/badfood.jar tmp/
mv tmp/goodfood.jar build/
java -p build -m se.kvadrat.foodconsumer/se.kvadrat.example.food.FoodConsumer;

echo ''
echo 'Run FoodConsumer with nothing on module path'
mv build/goodfood.jar tmp/
java -p build/foodconsumer.jar -m se.kvadrat.foodconsumer/se.kvadrat.example.food.FoodConsumer;