// This file is adapted from part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.

load Sub4.hdl,
output-file Sub4.out,
compare-to Sub4.cmp,
output-list  a%B1.4.1 b%B1.4.1 out%B1.4.1 bout%B3.1.3;


// Bit tests, should all be zero
set a %B0000,
set b %B0000,
eval,
output;

set a %B0001,
set b %B0001,
eval,
output;

set a %B0010,
set b %B0010,
eval,
output;

set a %B0100,
set b %B0100,
eval,
output;

set a %B1000,
set b %B1000,
eval,
output;

// Inverted Bit tests, should all be zero
set a %B1111,
set b %B1111,
eval,
output;

set a %B1110,
set b %B1110,
eval,
output;

set a %B1101,
set b %B1101,
eval,
output;

set a %B1011,
set b %B1011,
eval,
output;

set a %B0111,
set b %B0111,
eval,
output;

// Sub one 
set a %B0000,
set b %B0001,
eval,
output;

set a %B0010,
set b %B0001,
eval,
output;

set a %B0100,
set b %B0001,
eval,
output;

set a %B1000,
set b %B0001,
eval,
output;

// Inverted sub one
set a %B1111,
set b %B0001,
eval,
output;

set a %B1110,
set b %B0001,
eval,
output;

set a %B1101,
set b %B0001,
eval,
output;

set a %B1011,
set b %B0001,
eval,
output;

set a %B0111,
set b %B0001,
eval,
output;

// Sub two

set a %B0000,
set b %B0010,
eval,
output;

set a %B0001,
set b %B0010,
eval,
output;

set a %B0100,
set b %B0010,
eval,
output;

set a %B1000,
set b %B0010,
eval,
output;

// Sub four

set a %B0000,
set b %B0100,
eval,
output;

set a %B0001,
set b %B0100,
eval,
output;

set a %B0010,
set b %B0100,
eval,
output;

set a %B1000,
set b %B0100,
eval,
output;

// Sub Eight

set a %B0000,
set b %B1000,
eval,
output;

set a %B0001,
set b %B1000,
eval,
output;

set a %B0010,
set b %B1000,
eval,
output;

set a %B0100,
set b %B1000,
eval,
output;

// And the old Add test for good measure
set a %B0000,
set b %B1111,
eval,
output;

set a %B1111,
set b %B1111,
eval,
output;

set a %B1010,
set b %B0101,
eval,
output;

set a %B0110,
set b %B0011,
eval,
output;

set a %B0110,
set b %B1110,
eval,
output;

set a %B1000,
set b %B0111,
eval,
output;

set a %B1000,
set b %B1000,
eval,
output;

