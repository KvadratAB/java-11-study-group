package se.kvadrat.example.middle;

import se.kvadrat.example.model;

public class MiddleClass {
    
    private SomeModel model;

    public MiddleClass() {
        model = new SomeModel("YEAH!", "RELAXED");
    } 
    
    public SomeModel getModel() {
        return model;
    }
}