prog: main.o readLine.o execCmds.o encrypt.o decrypt.o
	gcc -o prog main.o readLine.o execCmds.o encrypt.o decrypt.o

main.o: main.c readLine.h execCmds.h
	gcc -c main.c

readLine.o: readLine.c readLine.h
	gcc -c readLine.c

encrypt.o: encrypt.c encrypt.h
	gcc -c encrypt.c

decrypt.o: decrypt.c decrypt.h
	gcc -c decrypt.c

execCmds.o: execCmds.c execCmds.h
	gcc -c execCmds.c

clean:
	rm -f *.o prog
