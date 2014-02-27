prog: main.o readLine.o execCmds.o changeCase.o reverseChar.o
	gcc -o prog main.o readLine.o execCmds.o changeCase.o reverseChar.o

main.o: main.c readLine.h execCmds.h
	gcc -c main.c

readLine.o: readLine.c readLine.h
	gcc -c readLine.c

execCmds.o: execCmds.c execCmds.h
	gcc -c execCmds.c

changeCase.o: changeCase.c changeCase.h
	gcc -c changeCase.c

reverseChar.o: reverseChar.c reverseChar.h
	gcc -c reverseChar.c

clean:
	rm -f *.o prog
