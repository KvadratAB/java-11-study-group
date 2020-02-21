/bin/rm -rf output

mkdir -p output/mlib

mkdir -p output/classes
javac -d output/classes `find first -name *.java`
jar -c -f output/mlib/first.jar -C output/classes .
/bin/rm -rf output/classes

mkdir -p output/classes
javac -d output/classes -classpath output/mlib/first.jar `find second -name *.java`
jar -c -f output/mlib/second.jar -C output/classes .
/bin/rm -rf output/classes

mkdir -p output/classes
javac -d output/classes `find third -name *.java`
jar -c -f output/mlib/third.jar -C output/classes .
/bin/rm -rf output/classes

mkdir -p output/classes
javac -d output/classes -p output/mlib/third.jar `find fourth -name *.java`
jar -c -f output/mlib/fourth.jar -C output/classes .
/bin/rm -rf output/classes

echo ''
echo 'Old jar on class path (unnamed modules)'
java -cp output/mlib/first.jar:output/mlib/second.jar \
    se.kvadrat.second.Second

echo ''
echo 'Old jar on module path (automatic modules)'
java -p output/mlib \
    -m second/se.kvadrat.second.Second

echo ''
echo 'Module jar on class path (unnamed modules)'
java -cp output/mlib/third.jar:output/mlib/fourth.jar \
    se.kvadrat.fourth.Fourth

echo ''
echo 'Module jar on module path (explicit named modules)'
java -p output/mlib \
    -m thefourth/se.kvadrat.fourth.Fourth