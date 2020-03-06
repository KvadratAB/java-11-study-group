package se.kvadrat.example.model;

public class SomeModel {
    private String ohYeah;
    private String state;

    public SomeModel(final String ohYeah, final String state) {
        this.ohYeah = ohYeah;
        this.state = state;
    }

    public String getOhYeah() {
        return ohYeah;
    }

    public String getState() {
        return state;
    }

    public void doStuff() {
        System.out.println(ohYeah + " - " + state);
    }
}