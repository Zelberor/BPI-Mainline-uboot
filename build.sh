#!/bin/bash

echo Building u-boot...
./build_uboot.sh
echo Building dtb files...
./build_dtbs.sh
./cp_dtbs.sh
echo Done
