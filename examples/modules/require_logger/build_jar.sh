#!/bin/bash

jar --create --file build/require-logger.jar --main-class se.kvadrat.example.RequireLoggerExample -C outDir/classes .
