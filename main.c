#include <stdlib.h>
#include <stdio.h>

#include <day1.h>

const int IMPLEMENTED_SOLUTIONS = 2;

int main(int argc, char ** argv) {
	if (argc != 3) {
		printf("Expected 2 arguments: <Day#> <Part#>\n");
		return 1;
	}

	int day_nb = atoi(argv[1]);
	int part_nb = atoi(argv[2]);

	if (day_nb < 1 || day_nb > 25 || part_nb < 1 || part_nb > 2) {
		printf("Day needs to be between 1 and 25 (inclusive). ");
		printf("Part needs to be 1 or 2. \n");
		return 1;
	}

	int index = (day_nb - 1) * 2 + (part_nb - 1);
	if (index >= IMPLEMENTED_SOLUTIONS) {
		printf("Solution for this day/part not implemented yet");
		return -1;
	}

	void (*solutions[])() = { 
		Day1_1,
		Day1_2,
	};
	
	solutions[index]();

	return 0;
}
