#!/bin/bash

echo "Compiling"
g++ -o build/hello hello-repository/app/hello.cpp -static
cp hello-repository/Procfile build/

echo "Archiving binaries"
zip -r hello.zip build/hello build/Procfile