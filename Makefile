SRC=src
OBJ=obj
INC=include
BIN=bin

all: ${OBJ}/file_reading.o ${OBJ}/main.o ${OBJ}/cache.o
	g++ -std=c++11 ${OBJ}/file_reading.o ${OBJ}/main.o ${OBJ}/cache.o -o ${BIN}/cache_simulator

${OBJ}/file_reading.o: ${SRC}/file_reading.cpp
	g++ -c -g -std=c++11 -fno-stack-protector ${SRC}/file_reading.cpp -o ${OBJ}/file_reading.o

${OBJ}/main.o: ${SRC}/main.cpp
	g++ -c -g -std=c++11 ${SRC}/main.cpp -o ${OBJ}/main.o

${OBJ}/cache.o: ${SRC}/cache.cpp
	g++ -c -g -std=c++11 ${SRC}/cache.cpp -o ${OBJ}/cache.o


clean:
	rm -f ${OBJ}/* ${BIN}/*
