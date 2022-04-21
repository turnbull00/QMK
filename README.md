

```
docker build -t me/qmk .
docker run -it --rm -v ${PWD}/quefrency/firmware:/firmware -v ${PWD}/quefrency/eric:/qmk/qmk_firmware/keyboards/keebio/quefrency/keymaps/eric me/qmk
#firmware will be put in c:\projects\QMK\quefrency\firmware
```




Links:
  - https://docs.keeb.io/quefrency-build-guide/#assemble-case
  - https://docs.keeb.io/flashing-firmware/
  - https://docs.qmk.fm/#/newbs_building_firmware
  - https://github.com/qmk/qmk_firmware
  - https://docs.qmk.fm/#/keycodes
