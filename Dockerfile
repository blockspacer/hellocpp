FROM python:2.7

COPY . /usr/src
RUN pip install cmake
RUN pip install conan
RUN mkdir -p /usr/src/build

WORKDIR /usr/src/build 

RUN ls -la /usr/src
RUN conan install /usr/src/app
RUN cmake /usr/src/app -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release
RUN cmake --build .
RUN cp /usr/src/app/index.html /usr/src/build/bin/

ENTRYPOINT ["./bin/app", "0.0.0.0", "80", "./bin/"]
