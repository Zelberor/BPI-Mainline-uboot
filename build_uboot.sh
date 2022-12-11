#!/bin/bash

set -e

cd u-boot-2019.07
./bpi-r2.sh
./bpi-p2z.sh
./bpi-m2z.sh
./bpi-m2m.sh
./bpi-m2b.sh
./bpi-m2u.sh
./bpi-m2p.sh
./bpi-m3.sh
./bpi-m2.sh
./bpi-r1.sh
./bpi-m1p.sh
./bpi-m1.sh
