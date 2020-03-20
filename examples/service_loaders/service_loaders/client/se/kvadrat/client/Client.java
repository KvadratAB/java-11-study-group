package se.kvadrat.client;

import se.kvadrat.service.Service;

import java.util.Optional;
import java.util.ServiceLoader;

/**
 * Client
 */
public class Client {

  public static void main(String[] args) {

    System.out.println("Load providers");
    var serviceLoaders = ServiceLoader.load(Service.class);
    System.out.println(serviceLoaders);

    serviceLoaders.stream().forEach(it -> {
      System.out.println(it.type().getSimpleName());
      it.get().method();
    });

    System.out.println("Done");

  }
}