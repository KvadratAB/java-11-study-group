# Example with require logger

This examples displays a moduled that requires the logger module provided by Java SE.

Build with `compile_logger_module.sh`
Build jar with `build_jar.sh`
Run with `run_logger_module.sh`

In `module-info.java` can you see the `require java.logger` statement which enables the use of things exported by the `java.logger` module in our applicaton. And in the main class can you see the import of the logger.