// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// I * J = I + I + I + ... + I
	@R2
	M=0
(LOOPJ)
	// write 0/1 to address
	@R1
	D=M
	@R2
	D=D|M
	@END
	D;JEQ

	@R2
	D=M
	@R0
	D=D+M
	@R2
	M=D

	// drecr R1
	@R1
	M=M-1
	D=M
	@LOOPJ
	D;JGT

(END)
	@END
	0;JMP