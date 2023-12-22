FROM ubuntu:latest

RUN apt-get update; \
    apt-get install clang llvm wget libopus0 libsodium23 libssl-dev cmake; \
    wget -O dpp.deb https://dl.dpp.dev/; \
    dpkg -i dpp.deb;


COPY . /app/
WORKDIR /app

RUN mkdir build; \
    cd build; \
    cmake ..; \
    cmake --build .;

WORKDIR /app/build

CMD [ "./requestsBot" ]