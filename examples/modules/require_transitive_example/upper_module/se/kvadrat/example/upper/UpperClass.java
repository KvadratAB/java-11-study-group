package se.kvadrat.example.upper;

import se.kvadrat.example.lower.LowerClass;
import se.kvadrat.example.middle.MiddleClass;

public class UpperClass {
    
    public static void main(String[] args) {
        new MiddleClass().getModel().doStuff();
    }
}