#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

#include <string.h>
#include <utils.h>
#include <day1.h>
#define LINE_SIZE 256

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

void parse_file1(int** left_out, int** right_out, int* file_size) {
	FILE* file = fopen("../data/Day-1-1.txt", "r");
	if (!file) {
		exit(1);
	}

	*file_size = countlines(file);
	int *left, *right;
	*left_out = (int*)malloc(sizeof(int) * (*file_size));
	*right_out = (int*)malloc(sizeof(int) * (*file_size));
	left = *left_out;
	right = *right_out;

	bool has_more = true;
	int index = 0;
	char line[LINE_SIZE];
	while (fgets(line, LINE_SIZE, file)) {
		left[index] = atoi(line);
		right[index] =  atoi(&line[7]);
		index++;
	}

	fclose(file);
}

void sort(int* arr, int c) {
	int a, b, tmp;
	for (int i = 0; i < c; i++) {
		a = arr[i];
		int j = i - 1;

		while (j >= 0 && arr[j] >  a) {
			arr[j + 1] = arr[j];
			j = j - 1;
		}
		arr[j + 1] = a;
	}
}

void Day1_1(void) {
	int length;
	int *left, *right;
	parse_file1(&left, &right, &length);

	sort(left, length);
	sort(right, length);

	int sum = 0;
	for (int i = 0; i < length; i++) {
		sum += abs(left[i] - right[i]);
	}

	printf("%d\n", sum);

	free(left);
	free(right);
}

void Day1_2(void) {
	int length;
	int *left, *right;
	parse_file1(&left, &right, &length);

	sort(left, length);
	sort(right, length);

	int sum = 0;
	for (int i = 0; i < length; i++) {
		int searching = left[i];

		int n_occurrences = 0;
		for (int j = 0; j < length; j++) {
			if (left[i] == right[j]) {
				n_occurrences++;
			}
		}
		sum += n_occurrences * searching;
	}

	printf("%d\n", sum);

	free(left);
	free(right);
}