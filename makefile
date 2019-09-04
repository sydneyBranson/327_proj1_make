CFLAGS = -Wall
#target exe
myexe: main.o myfunc.o
	g++ $(CFLAGS) -o myexe hello.o myfunc.o
	
#rebuild if either of the files below change
main.o: main.cpp myfunc.h
	g++ $(CFLAGS) -c hello.cpp 
	
#rebuild if either of the files below change	
myfunc.o: myfunc.cpp myfunc.h
	g++ $(CFLAGS) -c myfunc.cpp 

#type 'make clean' to remove following	
clean:
	rm -f *.o myexe.exe