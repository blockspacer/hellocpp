#!/bin/bash

echo "Building the app"
#g++ -o build/app repository/app/*.cpp -static -lboost_system  -lboost_thread -std=c++11
cd build
conan install repository/app
cmake repository/app -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release
cmake --build .

echo "Archiving binaries"
zip -r build/app.zip build/app
