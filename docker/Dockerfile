FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    git make automake libbz2-dev libssl-dev doxygen graphviz libgmp3-dev autotools-dev libicu-dev python2.7 python2.7-dev python3 python3-dev autoconf libtool \
             curl zlib1g-dev sudo ruby libusb-1.0-0-dev libcurl4-gnutls-dev pkg-config clang llvm-7-dev \
 && rm -rf /var/lib/apt/lists/*

COPY eosio-build-entrypoint.sh /entrypoint.sh

WORKDIR /src

ENTRYPOINT ["/entrypoint.sh"]
