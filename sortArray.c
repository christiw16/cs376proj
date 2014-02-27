#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void sortArray(char** a)
{
  int i, j;
  int size = 0;
  int x = 0;
  while(a[x] != NULL)
    {
      size++;
      x++;
    }

  
  for(i = 0; i < size; i++)
    {
      for(j = 0; j < size-1; j++)
	{
	  if(strcmp(a[j], a[j+1]) > 0)
	    {
	      
	      char* temp = a[j+1];
	      a[j+1] = a[j];
	      a[j] = temp;
	    }
	}
    }
}//sortArray
