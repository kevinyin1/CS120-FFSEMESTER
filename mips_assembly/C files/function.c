#include <stdio.h>

void setvalues(int*  a, int*   b)
{
  *a = *a + 10;
  *b = *b + 20;
  printf("A is at %p, and contains %d\n", a, *a);
  printf("B is at %p, and contains %d\n", b, *b);
}

int main()
{
  int a = 5;
  int b = 6;

  setvalues(&a, &b);
  // Here's a starting point....  You should be able
  // to build the MIPS code
  // .data
  // a:      .word 5
  // bb:     .word 6
  //
  // ...
  // .text
  //
  // main:
  // ....
  // la $a0, a
  // la $a1, bb
  // jal setvalues
  //
  // Note that "b" is a reserved word for the assembler,
  // so we can't use "b" as a label.

  printf("A is %d and B is %d\n", a, b);
}
