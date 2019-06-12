#!/bin/sh
set -x

echo $PWD
make keebio/quefrency:eric
cp /qmk/qmk_firmware/keebio_quefrency_rev1_eric.hex /code/quefrency/firmware/