package se.kvadrat.example.food;

import se.kvadrat.example.spi.ResturantSpi;

import java.util.Optional;
import java.util.ServiceLoader;

public class FoodConsumer {

    public static void main(String[] args) {
        final Optional<ServiceLoader.Provider<ResturantSpi>> badResturant = getBadResturant();
        final Optional<ServiceLoader.Provider<ResturantSpi>> goodResturant = getGoodResturant();

        if (badResturant.isPresent()) {
            System.out.println("Bad resturant = " + badResturant.get().get().getResturantName());
        } else {
            System.out.println("No Bad resturant present");
        }

        if (goodResturant.isPresent()) {
            System.out.println("Good resturant = " + goodResturant.get().get().getResturantName());
        } else {
            System.out.println("No Good resturant present");
        }
    }

    private static Optional<ServiceLoader.Provider<ResturantSpi>> getGoodResturant() {
        final ServiceLoader<ResturantSpi> resturants = ServiceLoader.load(ResturantSpi.class);
        return resturants.stream()
                .filter(sp -> sp.get().isAnyGood())
                .findFirst();
    }

    private static Optional<ServiceLoader.Provider<ResturantSpi>> getBadResturant() {
        final ServiceLoader<ResturantSpi> resturants = ServiceLoader.load(ResturantSpi.class);
        return resturants.stream()
                .filter(sp -> !sp.get().isAnyGood())
                .findFirst();
    }
}