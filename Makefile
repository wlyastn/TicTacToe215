# Makefile variables
CC=g++
CFLAGS=--std=c++11
EXE=tictactoe

# Targets
all: main.o board.o
	$(CC) $(CFLAGS) -o $(EXE) obj/*.o

main.o: obj src/main.cpp inc/main.hpp
	$(CC) $(CFLAGS) -c src/main.cpp -o obj/main.o

board.o: obj src/board.cpp inc/board.hpp
	$(CC) $(CFLAGS) -c src/board.cpp -o obj/board.o

obj:
	mkdir -p obj

clean:
	rm -rf $(EXE) obj

