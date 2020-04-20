# Makefiles and C Assignment
# Alec Slater
driver.o:       driver.c headers.h
        clang -c   -o driver.o driver.c

file1.o:        file1.c headers.h
        clang -c   -o file1.o file1.c

file2.o:        file2.c headers.h
        clang -c   -o file2.o file2.c

all:    driver.o file1.o file2.o headers.h
        clang -o makefileAssignment driver.o file1.o file2.o

makefileAssignment:     all

clean:
        rm -rf *.o
