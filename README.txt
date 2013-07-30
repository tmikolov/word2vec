
We provide an implementation of the Continuous Bag-of-Words (CBOW) and the Skip-gram model (SG).

Given a text corpus, the word2vec program learns a vector for every word using the Continuous
Bag-of-Words or the Skip-Gram model.  The user needs to specify the following:
 - desired vector dimensionality
 - the size of the context window for either the Skip-Gram or the Continuous Bag-of-Words model
 - Whether hierarchical sampling is used
 - Whether negative sampling is used, and if so, how many negative samples should be used
 - A threshold for downsampling frequent words 
 - Number of threads to use
 - Whether to save the vectors in a text format or a binary format


Thus the programs require a very modest number of parameter.  In particular,  learning rates
need not be selected. 

The file demo-word.sh downloads a small (100MB) text corpus, and trains a 200-dimensional CBOW model
with a window of size 5, negative sampling with 5 negative samples, a downsampling of 1e-3, 12 threads, and binary files.

./word2vec -train text8 -output vectors.bin -cbow 1 -size 200 -window 5 -negative 5 -hs 0 -sample 1e-3 -threads 12 -binary 1


Then, to evaluate the fidelity of our vectors, we can run the command, which will run   
a battery of tests on the vectors to determine their fidelity.  The tests evaluate
the vectors' ability to perform linear analogies. 

./distance vectors.bin

