FROM debian:bullseye-slim

RUN apt-get -y update && apt-get install --no-install-recommends -y \
    git \
    python3 \
    python3-pip \
    python3-setuptools \
    build-essential \
    gcc-arm-none-eabi \
    gcc-avr \
    avr-libc \
    avrdude \
    dfu-programmer \
    dfu-util \
    dos2unix \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /qmk

RUN python3 -m pip install wheel \
    && python3 -m pip install qmk \
    && qmk setup -y -H /qmk/qmk_firmware

COPY docker-entrypoint.sh /
RUN dos2unix /docker-entrypoint.sh
ENTRYPOINT [ "/bin/sh", "/docker-entrypoint.sh" ]