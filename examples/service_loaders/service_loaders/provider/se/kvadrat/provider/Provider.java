package se.kvadrat.provider;

import se.kvadrat.service.Service;
/**
 * Provider
 */
public class Provider implements Service {

  @Override
  public void method() {
    System.out.println("Method in the provider");
  }

  
}