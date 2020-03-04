# Two modules with dependencies

Module1 exports a package which is used by module2.

Compile and build jars with `compile_and_build_jars-sh` make sure that the folder build exists.

Run with `java -p build -m se.kvadrat.example.module2/se.kvadrat.example.module2.Module2`
