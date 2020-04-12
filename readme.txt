To compile:
% import CRY variables
. muonSetup.sh
cd build/
% delete everything inside build directory
rm *
cmake ..
make
./exampleb4a

To start sim:

cd /sim/build
./exampleb4a
