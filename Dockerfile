FROM cloudfoundry/cflinuxfs3

COPY . /usr/src/hello
WORKDIR /usr/src/hello

RUN g++ -Wall -o hello hello.cpp

CMD ["./hello"]
