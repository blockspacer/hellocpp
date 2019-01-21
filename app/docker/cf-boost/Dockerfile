# Contains the dependencies needed to build the application
FROM cloudfoundry/cflinuxfs3

RUN apt-get update
RUN apt-get install libboost-all-dev -y
RUN apt-get install libboost-thread-dev -y
RUN apt-get install python-pip -y
RUN pip install conan