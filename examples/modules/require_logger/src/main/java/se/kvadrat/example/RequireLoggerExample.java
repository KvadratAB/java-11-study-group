package se.kvadrat.example;

import java.util.logging.Logger;

public class RequireLoggerExample {
  public static void main(String... args) {
    Logger logger = Logger.getLogger("javaLogger");
    logger.info("Logging out from required logging module"); 
  }
}


