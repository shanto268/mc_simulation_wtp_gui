>To compile and run interactively:
% import CRY variables
. muonSetup.sh
cd build/
% delete everything inside build directory
rm *
% compile source code
cmake ..
% make executable
make
% execute the program
./exampleb4a

>To start sim:
cd /sim/build
./exampleb4a

>To run batch job:
% import CRY variables
. muonSetup.sh
% run the following shell script
. run_batch.sh
