#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include "readLine.h"
#include "execCmds.h"
#include "changeCase.h"
#include "reverseChar.h"
#include "encrypt.h"
#include "decrypt.h"
#include "reverse.h"
#include "sortArray.h"
#include "tagRemove.h"

// print the elements in the array, up to (but not including) the first
// NULL entry
void printLines(char** a) {
  int i;
  for (i = 0; a[i] != NULL; i++) {
    printf("%s\n", a[i]);
  }
}

// our array that tells how command-strings map to functions
commandMap map[] = {
  {"-p", printLines},
  {"-u", changeCase},
  {"-rr", reverseChar},
  {"-e", encrypt},
  {"-d", decrypt},
  {"-r", reverse},
  {"-s", sortArray},
  {"-h", tagRemove},
  {NULL, NULL},
};

// main function
int main(int argc, char* argv[]) {
  // read lines from standard input
  char** lines = readLines();

  // execute each command on the command line
  executeCommands(lines, map, argv+1);

  // exit with "success"
  return EXIT_SUCCESS;
}
