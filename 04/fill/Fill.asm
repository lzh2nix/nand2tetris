// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.
//Adds 1 + 2 + ....+100
// Initial
(LOOPK)
	@SCREEN
	D=A
	@addr
	M=D

	@i
	M=0
	@j
	M=0
	// M  = base + 32 * i + j/16
(LOOPI)
	@j
	M=0
(LOOPJ)
	// write 0/1 to address
	@addr
	D=M
	@j
	D=D+M
	A=D
	M  = -1

	// incr j
	@j
	M=M+1
	D=M
	@32
	D = A - D
	@LOOPJ
	D;JGT


	@32
	D=A
	@addr
	M=D+M

	// incr i
	@i
	M=M+1
	D=M
	@256
	D = A - D
	@LOOPI
	D;JGT


	@LOOPK
	0;JMP
(END)
	@END
	0;JMP
