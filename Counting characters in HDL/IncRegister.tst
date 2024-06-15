load IncRegister.hdl,
output-file IncRegister.out,
compare-to IncRegister.cmp,
output-list reset%B3.1.3 inc%B1.1.1 value%D1.5.1;

set reset 1,
set inc 0,
tick, output, tock, output;
tick, output, tock, output;

set reset 0,
tick, output, tock, output;

tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;

set inc 1,
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;

set inc 0,
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;

set inc 1,
tick, output, tock, output;
set inc 0,
tick, output, tock, output;

set reset 1,
tick, output, tock, output;
tick, output, tock, output;

set inc 1,
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;
tick, output, tock, output;

set reset 0,
tick, output, tock, output;
tick, output, tock, output;

set inc 0,
tick, output, tock, output;
tick, output, tock, output;