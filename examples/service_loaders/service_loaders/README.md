# Simple example with three modules

Service defines the interface, that package is exported in module info.

Client uses an interace defined in module 1.

Provider provides an implementation for the interface. 
Provider Static provides a static method that returns an instance of the interface. 


Build with `./build.sh``
Run with `java -p build -m se.kvadrat.client_module/se.kvadrat.client.Client`