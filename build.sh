#!/bin/bash

set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd "${SCRIPT_DIR}"

echo Building u-boot...
./build_uboot.sh
echo Building dtb files...
./build_dtbs.sh
./cp_dtbs.sh
echo Done
