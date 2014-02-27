#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include "reverseChar.h"

void reverseChar(char** a) {
  int i = 0;
  int j = 0;
  int k;
  char temp;
  
  k = strlen(a[i])-1;
  for(i = 0; a[i] != NULL; i++) {
    for(j = 0; j < strlen(a[i])/2; j++){
      temp = a[i][j];
      a[i][j] = a[i][k];
      a[i][k] = temp;
      k--;
    }
  }
}
