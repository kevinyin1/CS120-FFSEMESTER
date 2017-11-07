#include <stdio.h>

int setvalues(int a, int b)
{
  a = a + 10;
  b = b + 20;
  printf("A is %d, B is %d\n", a, b);
  return a;
}

int main()
{
  int a = 5;
  int b = 6;

  setvalues(a, b);
  // In MIPS, we're doing something like this:
  // .data
  // a: .word 5
  // bb: .word 6
  // .text
  // main:
  //    lw $a0, a
  //    lw $a1, bb
  //    jal setvalues
  //
  //
  // ** IMPORTANT **
  // Look at what the simulator does when we have the
  // "lw $a0, a".  There's more going on here than you would think
  // from just looking at the assembly code.
  //
  // Why, in fact, this might make a really good exam question.
  // Something like
  //   "lw $a0, a" is not a single MIPS instruction.  It in fact
  //   breaks down into two separate instructions.  What are those
  //   instructions?  How does it work.
  //
  // And if you've read this far in the code, take a look at what happens
  // with "bb."  MIPS has a base-and-offset memory access technique, where
  // they use a register, and can add a number to it (out of an instruction),
  // getting something out of memory.....  Look carefully at what happens with
  // bb, and if it has not occurred yet, you should have a moment where you
  // go "ooooohhhhhhhh, I get it now!"
  //
  // Again, we can't use "b" as a label -- it conflicts with the assembly
  // language, so we use "bb" instead.
  //

  printf("A is %d and B is %d\n", a, b);
}
