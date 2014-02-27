prog: main.o readLine.o execCmds.o encrypt.o decrypt.o sortArray.o tagRemove.o reverse.o changeCase.o reverseChar.o
	gcc -o prog main.o readLine.o execCmds.o encrypt.o decrypt.o reverse.o sortArray.o tagRemove.o changeCase.o reverseChar.o

main.o: main.c readLine.h execCmds.h sortArray.h tagRemove.h encrypt.h decrypt.h reverse.h changeCase.h reverseChar.h
	gcc -c main.c

reverse.o: reverse.c reverse.h
	gcc -c reverse.c

readLine.o: readLine.c readLine.h
	gcc -c readLine.c

encrypt.o: encrypt.c encrypt.h
	gcc -c encrypt.c

decrypt.o: decrypt.c decrypt.h
	gcc -c decrypt.c

sortArray.o: sortArray.c sortArray.h
	gcc -c sortArray.c

tagRemove.o: tagRemove.c tagRemove.h 
	gcc -c tagRemove.c

execCmds.o: execCmds.c execCmds.h
	gcc -c execCmds.c

changeCase.o: changeCase.c changeCase.h
	gcc -c changeCase.c

reverseChar.o: reverseChar.c reverseChar.h
	gcc -c reverseChar.c

sortArray.o:	sortArray.c sortArray.h
	gcc -c sortArray.c

tagRemove.o:	tagRemove.c tagRemove.h
	gcc -c tagRemove.c

clean:
	rm -f *.o prog
