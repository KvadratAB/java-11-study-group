package se.kvadrat.example.bad;

import se.kvadrat.example.spi.ResturantSpi;

public class BadFoodProvider implements ResturantSpi {


    @Override
    public String getResturantName() {
        return "BadFoodResturant";
    }

    @Override
    public boolean isAnyGood() {
        return false;
    }
}