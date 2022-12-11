#!/bin/bash

set -e

dtbs_paths=./linux-5.1.1/output/dtbs/arch/arm/boot/dts

boards=( 'bpi-m1' 'bpi-m1p' 'bpi-m2' 'bpi-m2b' 'bpi-m2m' 'bpi-m2p' 'bpi-m2u' 'bpi-m2z' 'bpi-m3' 'bpi-p2z' 'bpi-r1' )
dtbs=( 'sun7i-a20-bananapi.dtb' 'sun7i-a20-bananapi-m1-plus.dtb' 'sun6i-a31s-sinovoip-bpi-m2.dtb' 'sun8i-v40-bananapi-m2-berry.dtb' 'sun8i-r16-bananapi-m2m.dtb' 'sun8i-h3-bananapi-m2-plus.dtb' 'sun8i-r40-bananapi-m2-ultra.dtb' 'sun8i-h2-plus-bananapi-m2-zero.dtb' 'sun8i-a83t-bananapi-m3.dtb' 'sun8i-h2-plus-bananapi-m2-zero.dtb' 'sun7i-a20-lamobo-r1.dtb' )

for i in "${!boards[@]}"; do
	board=${boards[i]}
	dtb_path=${dtbs_paths}/${dtbs[i]}
	out_path=./output/${board}/
	mkdir -p ${out_path}
	cp ${dtb_path} ${out_path}
done
