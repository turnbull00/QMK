#!/bin/sh
set -x

echo $PWD
qmk compile -kb keebio/quefrency -km eric
cp /qmk/qmk_firmware/keebio_quefrency_rev1_eric.hex /firmware/