#!/bin/bash

echo "Building the app"
#g++ -o build/app repository/app/*.cpp -static -lboost_system  -lboost_thread -std=c++11
cd build
echo "Listing content of src dir:"
ls -la repository

echo "Listing content of build dir:"
ls -la build

echo "Step 1"
conan install repository/app
echo "Step 2"
cmake repository/app -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release
echo "Step 3"
cmake --build .

echo "Archiving binaries"
zip -r build/app.zip build/app
