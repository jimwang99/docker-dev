apt-get install -y make autoconf g++ flex bison wget
cd /tmp
wget https://www.veripool.org/ftp/verilator-4.014.tgz
tar xf verilator*.tgz
cd verilator*
./configure
make # this step will take sometime
make test
make install
