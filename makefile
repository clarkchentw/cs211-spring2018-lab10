lab10: lab10.o Point2d.o
	g++ -o lab10 lab10.o Point2d.o

all: lab10 Point2dTest

Point2dTest: Point2d.o Point2dTest.cpp
	g++ -o Point2dTest Point2d.o Point2dTest.cpp

lab10.o: lab10.cpp Point2d.h
	g++ -c lab10.cpp

Point2d.o: Point2d.cpp Point2d.h
	g++ -c Point2d.cpp

clean:
	rm lab10.o Point2d.o lab10 Point2dTest
