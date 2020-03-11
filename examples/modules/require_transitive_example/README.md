# Module example with transitive dependency

In this example three modules are compiled. 
Lower module has no dependency 
Middle module has a transitive dependency to Lower module
Upper module has a dependency to to Middle module

If you run `compile_and_build_jars.sh` all will be compiled and the created jar files will be moved to the build directory
*Note* that both the lower and middle module will have to be present on the module path when the UpperClass is compiled.

If you then run `run_jars.sh` the code will execute.
*Note* that all three jar files will have to be present on the module path for the program to execute.