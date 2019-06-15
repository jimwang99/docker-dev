# filename: ~/docker/dev/riscv.sh/riscv-gnu-toolchain/10-build-compiler-rv32gc-newlib.sh 
mkdir -p /opt/riscv/rv32gc

cd riscv-gnu-toolchain
mkdir build-rv32gc-newlib
cd build-rv32gc-newlib

../configure --prefix=/opt/riscv/rv32gc --with-arch=rv32gc --with-abi=ilp32d
    # --with-arch=rv32gc defines target architecture is rv32gc (32-bit IMACFD extentions support)
        # option example: rv64imac (64-bit IMAC extenstions support)
    # --with-abi=ilp32d defines target ABI (applicaiton binary interface)
        # "d" means hard-float
        # option example: ilp64 (64-bit soft float)

# compile & install
make newlib -j4

# run DejaGnu test suite
make report-newlib