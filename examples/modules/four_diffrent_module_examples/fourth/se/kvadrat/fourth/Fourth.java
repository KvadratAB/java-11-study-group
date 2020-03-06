package se.kvadrat.fourth;

import se.kvadrat.third.Third;

public class Fourth {
    public String getInfo() {
        return "fourth " + getClass().getModule();
    }

    public static void main(String[] args) {
        System.out.println(new Third().getInfo());
        System.out.println(new Fourth().getInfo());
    }
}