package se.kvadrat.example.middle;

import se.kvadrat.example.lower.LowerClass;

public class MiddleClass {
    
    private LowerClass lower;

    public MiddleClass() {
        lower = new LowerClass("YEAH!", "RELAXED");
    } 
    
    public LowerClass getLower() {
        return lower;
    }
}