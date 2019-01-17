#!/bin/bash

echo "Compiling"
g++ -o build/hello hello-repository/app/hello.cpp -static

echo "Archiving binaries"
zip -r build/hello.zip build/hello hello-repository/Procfile