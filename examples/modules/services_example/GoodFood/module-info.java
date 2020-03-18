module se.kvadrat.goodfood {
    requires se.kvadrat.foodconsumer;

    provides se.kvadrat.example.spi.ResturantSpi
            with se.kvadrat.example.good.GoodFoodProvider;
}