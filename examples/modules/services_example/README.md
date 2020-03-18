# Example with services in modules

This examples demonstrates how java modules is used to implement an service-provider pattern. 

Build and run with `compile_and_build_jars.sh`

The **FoodConsumer** module both exports an service provider interface and uses the service provider interface (ResturantSpi)

The **BadFood** module requires the FoodConsumer module and provides an implementation for the ResturantSpi (BadFoodProvider).

The **GoodFood** module requires the FoodConsumer module and provides an implementation for the ResturantSpi (GoodFoodProvider).

The script runs the FoodConsumer with different modules on the module path to demonstrate what happens...
