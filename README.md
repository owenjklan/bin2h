# bin2h
Binary file to C header file conversion utility

bin2h is a simple utility I created a while ago that allows embedding binary data files
directly into C header files.

The utility creates a header file that includes the binary contents of the file to encode,
as a char * constant, with all bytes escaped via \x. For convenience, an int that specifies the
length of the imported data is also created.
