nproc=$(cat /proc/cpuinfo | grep processor | wc -l )
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
export KBUILD_OUTPUT=output/dtbs
mkdir -p $KBUILD_OUTPUT

make bpi_defconfig
make -j$nproc dtbs
