%.o: %.c logic.h play.h
	gcc -c -o $@ $< -lSDL2 -lSDL2_ttf -lSDL2_image -lSDL2_mixer -std=c11 -Wall -pedantic

tetris: tetris.o play.o logic.o
	gcc -o tetris tetris.o play.o logic.o -lSDL2 -lSDL2_ttf -lSDL2_image -lSDL2_mixer
		rm tetris.o play.o logic.o

clean:
	rm tetris.o play.o logic.o
