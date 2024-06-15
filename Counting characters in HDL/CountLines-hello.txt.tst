load CountLines.hdl,
output-file CountLines-hello.txt.out,
compare-to CountLines-hello.txt.cmp,
output-list reset%B1.1.1 count%B1.1.1 char%D1.3.1 lineCount%D1.5.1;

set reset 1,
tick, output, tock, output;
set reset 0,
set count 1,
set char 72, tick, output, tock, output;
set char 101, tick, output, tock, output;
set char 108, tick, output, tock, output;
set char 108, tick, output, tock, output;
set char 111, tick, output, tock, output;
set char 32, tick, output, tock, output;
set char 87, tick, output, tock, output;
set char 111, tick, output, tock, output;
set char 114, tick, output, tock, output;
set char 108, tick, output, tock, output;
set char 100, tick, output, tock, output;
set char 10, tick, output, tock, output;
set char 71, tick, output, tock, output;
set char 111, tick, output, tock, output;
set char 111, tick, output, tock, output;
set char 100, tick, output, tock, output;
set char 98, tick, output, tock, output;
set char 121, tick, output, tock, output;
set char 101, tick, output, tock, output;
set char 32, tick, output, tock, output;
set char 85, tick, output, tock, output;
set char 110, tick, output, tock, output;
set char 105, tick, output, tock, output;
set char 118, tick, output, tock, output;
set char 101, tick, output, tock, output;
set char 114, tick, output, tock, output;
set char 115, tick, output, tock, output;
set char 101, tick, output, tock, output;
set char 33, tick, output, tock, output;
set char 10, tick, output, tock, output;
set char 10, tick, output, tock, output;

set reset 0,
set count 0,
tick, output, tock, output;

