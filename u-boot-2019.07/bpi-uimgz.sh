#!/bin/bash
U=u-boot-2019.07-with-spl

BOARD=$1
if [ -z $BOARD ] ; then
  echo "usage: $0 BOARD"
  exit 1
fi

echo ${BOARD}
#
OUTPUTPATH=../output/${BOARD}
mkdir -p ${OUTPUTPATH}
UBOOTBIN_OUT=${OUTPUTPATH}/${U}-${BOARD}.bin

UBOOTMTKBIN=out/${BOARD}/u-boot-mtk.bin
UBOOTSPLBIN=out/${BOARD}/u-boot-sunxi-with-spl.bin
if [ -f ${UBOOTMTKBIN} ] ; then
  UBOOTBIN=out/${BOARD}/u-boot.bin
  #SPLBIN=preloader_iotg7623Np1_emmc_pad.bin
  #SPLBIN=BPI-R2-preloader-DDR1600-20190722-2k_pad_318KB.img
  SPLBIN=BPI-R2-preloader-DDR1600-20191024-2k_pad_318KB.img
  cat ${SPLBIN} ${UBOOTBIN} > ${UBOOTBIN_OUT}
elif [ -f ${UBOOTSPLBIN} ] ; then
  cp -a ${UBOOTSPLBIN} ${UBOOTBIN_OUT}
else
  UBOOTBIN=out/${BOARD}/u-boot.itb
  SPLBIN=out/${BOARD}/spl/sunxi-spl.bin
  cat ${SPLBIN} ${UBOOTBIN} > ${UBOOTBIN_OUT}
fi
# rm -f ${UBOOTBIN_OUT}.gz
# gzip ${UBOOTBIN_OUT}
