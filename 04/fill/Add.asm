// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

//Adds 1 + 2 + ....+100

// Initial i and sum 
	@i
	M=1
	@sum
	M=0

(LOOP)
	@i
	D=M
	@100
	D = A - D
	@END
	D;JEQ
	@i
	D = M
	@sum
	M = M + D
	@i
	M = M + 1
	@LOOP
	0;JMP

(END)
	@END
	0;JMP
