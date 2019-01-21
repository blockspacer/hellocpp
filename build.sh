#!/bin/bash

echo "Building the app"
#g++ -o build/app repository/app/*.cpp -static -lboost_system  -lboost_thread -std=c++11

mkdir ./dist

cd ./dist
echo "Content of current dir:"
ls -la .

echo "Step 1"
conan install ../app
echo "Step 2"
cmake ../app -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release
echo "Step 3"
cmake --build .

cd ..
echo "Content of app dir:"
ls -la app
echo "Archiving binaries"
zip -r build/app.zip app/app
