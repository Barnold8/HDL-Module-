
		B main

; define your strings here
first		DEFB " men went to mow\n",0
second 		DEFB "Went to mow a meadow\n",0
men			DEFB " men, ",0
manAndDog 	DEFB " man and his dog, Spot\n",0


		ALIGN
main
; Insert your code here.
	MOV R1, #4

	MOV R0,R1 ; 4
	SWI 4 

	ADR R0, first ; men went to mov	
	SWI 3

	ADR R0, second ; Went to mow a meadow 
	SWI 3

	MOV R0, R1 ; 4
	SWI 4

	SUB R1, R1, #1 ; 4 - 1

	ADR R0, men; ; men
	SWI 3

	MOV R0,R1 ; 3
	SWI 4

	ADR R0, men ; men
	SWI 3

	SUB R1, R1, #1 ; 3 - 1

	MOV R0, R1 ;2
	SWI 4

	ADR R0, men ; men
	SWI 3

	SUB R1, R1, #1 ; 2 - 1
	
	MOV R0, R1 ;1
	SWI 4

	ADR R0, manAndDog
	SWI 3

	ADR R0, second
	SWI 3

	SWI 2



;Expected output: 

