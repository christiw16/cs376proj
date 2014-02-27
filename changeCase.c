#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include "changeCase.h"

void changeCase(char** a) {
  int i = 0;
  int j = 0;

  for(i = 0; a[i] != NULL; i++) {
    for(j = 0; (a[i][j]) != NULL; j++){
      if((a[i][j]) >=97 && (a[i][j]) <= 122){
	a[i][j] = ((a[i][j])-32);
    }
  }
  }
}
