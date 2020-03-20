# Simple example with three modules

Module 1 defines the interface, that package is exported in module info.

Module 2 uses an interace defined in module 1.

Module 3 provides an implementation for the interface. 


Build with `./build.sh``
Run with `java -p build -m se.kvadrat.client_module/se.kvadrat.client.Client`