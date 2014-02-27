#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include "reverse.h"

void reverse(char** line) {
   int i;
   char** reversed;
   int end; 
   for (i = 0; line[i] != NULL; i++){
     end = i;
   }


 for (i = end; i>=0; i--){
      printf("%s\n", line[i], i);
  }
}
