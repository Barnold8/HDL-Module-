load ShiftL8.hdl,
output-file ShiftL8.out,
compare-to ShiftL8.cmp,
output-list time%S1.4.1 in%B1.8.1 load%B2.1.2 out%B1.16.1;

set in 0,
set load 0,
tick,
output;

tock,
output;

set in 0,
set load 1,
tick,
output;

tock,
output;

set in 123,
set load 0,
tick,
output;

tock,
output;

tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 

set in 111,
set load 0,
tick,
output;

tock,
output;

tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 

set in 123,
set load 1,
tick,
output;

tock,
output;

set in 123,
set load 1,
tick,
output;

tock,
output;

tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 


set in 123,
set load 0,
tick,
output;

tock,
output;

tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 

set in 145,
set load 1,
tick,
output;

tock,
output;

set in 0,
set load 0,
tick,
output;

tock,
output;

set in 0,
set load 1,
tick,
output;

tock,
output;

set in %B00000001,
set load 0,
tick,
output;

tock,
output;

set load 1,
tick,
output;

tock,
output;

set load 0,
tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 

set in %B00000010,
set load 0,
tick,
output;

tock,
output;

set load 1,
tick,
output;

tock,
output;

set load 0,
tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 

set in %B00000100,
set load 0,
tick,
output;

tock,
output;

set load 1,
tick,
output;

tock,
output;

set load 0,
tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 

set in %B00001000,
set load 0,
tick,
output;

tock,
output;

set load 1,
tick,
output;

tock,
output;


set load 0,
tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 

set in %B00010000,
set load 0,
tick,
output;

tock,
output;

set load 1,
tick,
output;

tock,
output;

set load 0,
tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 

set in %B00100000,
set load 0,
tick,
output;

tock,
output;

set load 1,
tick,
output;

tock,
output;

set load 0,
tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 

set in %B01000000,
set load 0,
tick,
output;

tock,
output;

set load 1,
tick,
output;

tock,
output;

set load 0,
tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 

set in %B10000000,
set load 0,
tick,
output;

tock,
output;

set load 1,
tick,
output;

tock,
output;

set load 0,
tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 

set in %B11111110,
set load 0,
tick,
output;

tock,
output;

set load 1,
tick,
output;

tock,
output;

set load 0,
tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 

set in %B11111101,
set load 0,
tick,
output;

tock,
output;

set load 1,
tick,
output;

tock,
output;

set load 0,
tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 

set in %B11111011,
set load 0,
tick,
output;

tock,
output;

set load 1,
tick,
output;

tock,
output;


set load 0,
tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 

set in %B11110111,
set load 0,
tick,
output;

tock,
output;

set load 1,
tick,
output;

tock,
output;

set load 0,
tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 

set in %B11101111,
set load 0,
tick,
output;

tock,
output;

set load 1,
tick,
output;

tock,
output;

set load 0,
tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 

set in %B11011111,
set load 0,
tick,
output;

tock,
output;

set load 1,
tick,
output;

tock,
output;

set load 0,
tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 

set in %B10111111,
set load 0,
tick,
output;

tock,
output;

set load 1,
tick,
output;

tock,
output;

set load 0,
tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 

set in %B01111111,
set load 0,
tick,
output;

tock,
output;

set load 1,
tick,
output;

tock,
output;

set load 0,
tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; tick,output; tock,output; 
