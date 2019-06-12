FROM debian:stretch-slim

RUN apt-get -y update && apt-get install --no-install-recommends -y \
    git \
    avr-libc \
    avrdude \
    binutils-arm-none-eabi \
    binutils-avr \
    build-essential \
    dfu-programmer \
    dfu-util \
    gcc \
    gcc-avr \
    git \
    libnewlib-arm-none-eabi \
    software-properties-common \
    unzip \
    wget \
    zip \
    dos2unix \
    && rm -rf /var/lib/apt/lists/*

RUN wget -q https://developer.arm.com/-/media/Files/downloads/gnu-rm/6-2017q2/gcc-arm-none-eabi-6-2017-q2-update-linux.tar.bz2 -O - | \
    tar xj --strip-components=1 -C /

WORKDIR /qmk
RUN git clone --recurse-submodules https://github.com/qmk/qmk_firmware.git

WORKDIR /qmk/qmk_firmware
COPY quefrency/eric/* /qmk/qmk_firmware/keyboards/keebio/quefrency/keymaps/eric/
COPY docker-entrypoint.sh /
RUN dos2unix /docker-entrypoint.sh
ENTRYPOINT [ "/bin/sh", "/docker-entrypoint.sh" ]