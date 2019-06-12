

```
cd c:\projects\QMK
docker build -t me/qmk .
docker run -it --rm -v ${PWD}:/code --name makeqmk me/qmk
#firmware will be put in c:\projects\QMK\quefrency\firmware
```




Links:
  - https://docs.keeb.io/quefrency-build-guide/#assemble-case
  - https://docs.keeb.io/flashing-firmware/
  - https://docs.qmk.fm/#/newbs_building_firmware
  - https://github.com/qmk/qmk_firmware
  - https://docs.qmk.fm/#/keycodes
