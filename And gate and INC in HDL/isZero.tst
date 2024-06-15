load isZero.hdl,
output-file isZero.out,
compare-to isZero.cmp,
output-list in%B1.8.1 zero%B3.1.3;

set in %B00000000,
eval,
output;

set in %B00000001,
eval,
output;

set in %B00000010,
eval,
output;

set in %B00000100,
eval,
output;

set in %B00001000,
eval,
output;

set in %B00010000,
eval,
output;

set in %B00100000,
eval,
output;

set in %B01000000,
eval,
output;

set in %B10000000,
eval,
output;

set in %B11111111,
eval,
output;
