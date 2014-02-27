prog: main.o readLine.o execCmds.o reverse.o
	gcc -o prog main.o readLine.o execCmds.o reverse.o

main.o: main.c readLine.h execCmds.h
	gcc -c main.c

reverse.o: reverse.c reverse.h
	gcc -c reverse.c

readLine.o: readLine.c readLine.h
	gcc -c readLine.c

execCmds.o: execCmds.c execCmds.h
	gcc -c execCmds.c

clean:
	rm -f *.o prog
