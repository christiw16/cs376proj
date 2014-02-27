prog: main.o readLine.o execCmds.o encrypt.o decrypt.o sortArray.o tagRemove.o
	gcc -o prog main.o readLine.o execCmds.o encrypt.o decrypt.o

main.o: main.c readLine.h execCmds.h
	gcc -c main.c

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

clean:
	rm -f *.o prog
