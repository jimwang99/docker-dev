# filename: ~/docker/dev/riscv.sh/riscv-gnu-toolchain/10-build-compiler-rv64gc-newlib.sh 
mkdir -p /opt/riscv/rv64gc

cd riscv-gnu-toolchain
mkdir build-rv64gc-newlib
cd build-rv64gc-newlib

../configure --prefix=/opt/riscv/rv64gc

# compile & install
make newlib -j4

# run DejaGnu test suite
make report-newlib