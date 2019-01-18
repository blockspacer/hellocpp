FROM frolvlad/alpine-gxx

COPY . /usr/src/hello
WORKDIR /usr/src/hello

RUN g++ -Wall -o hello ./app/hello.cpp

CMD ["./hello"]
