#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

void tagRemove(char** a)
{
  int i, j, k;
  int tagStart = -1;
  int tagEnd = -1;

  int size = 0;
  int x = 0;
  while(a[x] != NULL)
    {
      size++;
      x++;
    }
  //iterates through array of lines
  for(k = 0; k < size; k++)
    {
      // iterates through each character in each line
      for(i = 0; a[k][i] != '\0'; i++)
	{
	  if(a[k][i] == '<')
	    {
	      tagStart = i;
	    }
	  if(a[k][i] == '>' && tagStart > -1)
	    {
	      tagEnd = i;
	      if(tagEnd > -1)
		{
		  // iterates through tag
		  for(j = tagStart; j<=tagEnd; j++)
		    {
		      a[k][j] = ' ';
		    }
		}
	      tagStart = -1;
	      tagEnd = -1;
	    }

	}
    }
}
		
