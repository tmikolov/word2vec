
make clean
make
wget http://mattmahoney.net/dc/text8.zip -O text8.gz
gzip -d text8.gz -f
time ./word2phrase -train text8 -output text8-phrase -threshold 200 -debug 2
time ./word2vec -train text8-phrase -output vectors-phrase.bin -cbow 1 -size 200 -window 5 -negative 5 -hs 0 -sample 1e-3 -threads 12 -binary 1
./distance vectors-phrase.bin
