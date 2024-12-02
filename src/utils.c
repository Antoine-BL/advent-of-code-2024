#include <stdlib.h>
#include <stdio.h>

#define BUF_SIZE 65536

int countlines(FILE* file) {
    char buf[BUF_SIZE];
    int counter = 0;
    int i = 0;

    for (;;) {
        size_t res = fread(buf, 1, BUF_SIZE, file);
        if (ferror(file)) return -1;

        for (i = 0; i < res; i++) {
            if (buf[i] == '\n')
                counter++;
        }

        if (feof(file)) {
            break;
        }
    }

	rewind(file);

    return counter;
}