#!/bin/bash

javac -d outDir --module-source-path "./*/src/main/java/" $(find require_logger -name "*.java")