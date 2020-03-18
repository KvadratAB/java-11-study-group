package se.kvadrat.example.good;

import se.kvadrat.example.spi.ResturantSpi;

public class GoodFoodProvider implements ResturantSpi {
    @Override
    public String getResturantName() {
        return "GoodFoodResturant";
    }

    @Override
    public boolean isAnyGood() {
        return true;
    }
}
