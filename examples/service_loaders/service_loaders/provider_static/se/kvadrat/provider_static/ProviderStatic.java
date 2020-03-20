package se.kvadrat.provider_static;

import se.kvadrat.service.Service;

public class ProviderStatic {
  public static Service provider() {
    return new Service() {
      @Override
      public void method() {
        System.out.println("Method in the static provider");
      }
    };
  }
}