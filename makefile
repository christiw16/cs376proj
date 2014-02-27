prog: main.o readLine.o execCmds.o sortArray.o tagRemove.o
	gcc -o prog main.o readLine.o execCmds.o sortArray.o tagRemove.o

main.o: main.c readLine.h execCmds.h sortArray.h tagRemove.h
	gcc -c main.c

readLine.o: readLine.c readLine.h
	gcc -c readLine.c

execCmds.o: execCmds.c execCmds.h
	gcc -c execCmds.c

sortArray.o:	sortArray.c sortArray.h
	gcc -c sortArray.c

tagRemove.o:	tagRemove.c tagRemove.h
	gcc -c tagRemove.c
clean:
	rm -f *.o prog
