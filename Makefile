main: main.o indent.o
	g++ -o main main.o indent.o

tests: tests.o unindent.o indent.o
	g++ -o tests tests.o unindent.o indent.o

unindent.o: unindent.cpp unindent.h

indent.o: indent.cpp indent.h

main.o: main.cpp unindent.h

tests.o: tests.cpp doctest.h unindent.h

clean:
	rm -f main.o unindent.o indent.o tests.o
