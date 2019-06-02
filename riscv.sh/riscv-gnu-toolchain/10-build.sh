mkdir /opt/riscv32
mkdir /opt/riscv64

cd riscv-gnu-toolchain
mkdir build32
mkdir build64

# 32-bit newlib
cd build32
../configure --prefix=/opt/riscv32 --with-arch=rv32gc --with-abi=ilp32d
make -j4
cd ..

# 64-bit newlib
cd build64
./configure --prefix=/opt/riscv
make -j5
cd ..
