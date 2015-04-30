# cs335 duckhunt
# to compile your project, type make and press enter
# g++ duckhunt.cpp -Wall -o duckhunt -lX11 -lGL -lGLU -lm

CFLAGS = -I ./include
LIB = ./libggfonts.so
LFLAGS = $(LIB) -lrt -lX11 -lGLU -lGL -pthread -lm #-lXrandr

all: duckhunt

duckhunt: duckhunt.cpp ppm.cpp
	g++ $(CFLAGS) duckhunt.cpp ppm.cpp -Wall -Wextra $(LFLAGS) -o duckhunt 

clean:
	rm -f duckhunt
	rm -f *.o

