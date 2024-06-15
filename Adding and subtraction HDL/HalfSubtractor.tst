// This file is adapted from part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.

load HalfSubtractor.hdl,
output-file HalfSubtractor.out,
compare-to HalfSubtractor.cmp,
output-list  x%B3.1.3 y%B3.1.3  d%B3.1.3 bout%B3.1.3 ;

set x %B0,
set y %B0,
eval,
output;

set x %B0,
set y %B1,
eval,
output;

set x %B1,
set y %B0,
eval,
output;

set x %B1,
set y %B1,
eval,
output;


