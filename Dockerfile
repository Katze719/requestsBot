FROM silkeh/clang:17

RUN apt-get install wget libopus0 libssl-dev; \
    wget -O dpp.deb https://dl.dpp.dev/; \
    dpkg -i dpp.deb;