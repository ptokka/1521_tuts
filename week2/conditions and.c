#include <stdio.h>


int main(void) {

  int x = 5;

  if ((x % 7 == 0) && (x % 11 == 0)) {
    printf("yay\n");

  } else {
    
    printf("nay\n");
  }

  return 0;

}