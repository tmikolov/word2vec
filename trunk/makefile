CC = gcc
CFLAGS = -lm -pthread -Ofast -march=native -Wall -funroll-loops -Wno-unused-result

all: distance word2phrase word2vec

distance : distance.c
	$(CC) distance.c -o distance $(CFLAGS)
	
word2phrase : word2phrase.c
	$(CC) word2phrase.c -o word2phrase $(CFLAGS)
	
word2vec : word2vec.c
	$(CC) word2vec.c -o word2vec $(CFLAGS)

clean:
	rm -rf distance word2phrase word2vec
