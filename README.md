# basic-lr-parser
This Flex-Bison program implements a basic LR parser.

To compile the files,

1) download and install flex and bison
	(sudo apt-get install flex/bison in ubuntu)
2) enter "bison -l -d yourbisonfile.y" in terminal to compile bison file
3) enter "flex yourflexfile.l" in terminal to compile flex file
4) to compile the c files enter "gcc (your bison file name here).tab.c lex.yy.c -o outputfilename" 
5) "./outputfilename" to execute the file
