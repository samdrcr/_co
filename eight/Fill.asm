// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

@n
M=0
@R0
D=M
@1
M=D

(MainLoop)
@1
D=M
@Exit
D;JEQ

@R1
D=M
@n
M=M+D

@1
M=M-1

@MainLoop
0;JMP

(Exit)
@n
D=M
@R2
M=D

(End)
0;JMP

