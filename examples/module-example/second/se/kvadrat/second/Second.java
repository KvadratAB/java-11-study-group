package se.kvadrat.second;

import se.kvadrat.first.First;

public class Second {
    public String getInfo() {
        return "second " + getClass().getModule();
    }

    public static void main(String[] args) {
        System.out.println(new Second().getInfo());
        System.out.println(new First().getInfo());
    }
}