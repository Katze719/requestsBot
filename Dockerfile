FROM silkeh/clang:17

RUN apt-get install wget libopus0 libssl-dev cmake; \
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