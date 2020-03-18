module se.kvadrat.badfood {
    requires se.kvadrat.foodconsumer;

    provides se.kvadrat.example.spi.ResturantSpi
            with se.kvadrat.example.bad.BadFoodProvider;
}