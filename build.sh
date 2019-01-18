#!/bin/bash

echo "Compiling"
g++ -o build/app repository/app/*.cpp -static -lboost_system  -lboost_thread -std=c++11

echo "Archiving binaries"
zip -r build/app.zip build/app