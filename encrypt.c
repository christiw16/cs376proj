#include "encrypt.h"

// print the elements in the array, up to (but not including) the first
// NULL entry
void encrypt(char** a) {
  int i;
  int j;
  for (i = 0; a[i] != NULL; i++) {
    for(j =0; a[i][j] != '\0'; j++){
      if(a[i][j]>=33 && a[i][j]<=125){
      a[i][j]++;
    }
    else if(a[i][j]==126){
      a[i][j]=33;
    }
    }
  }
}
