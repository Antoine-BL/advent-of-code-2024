#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

#include <string.h>
#include <utils.h>

#include <day2.h>

#define LINE_SIZE 256

static void parse_file() {
	FILE* file = fopen("../data/Day-2.txt", "r");
	if (!file) {
		exit(1);
	}

    char line[LINE_SIZE];
    char *pch;
    int cur_nb;
    int last_nb = -1;
    bool is_first = true;
    bool is_ascending = false;
    int score = 0;
	while (fgets(line, LINE_SIZE, file)) {
        printf("%s\n", line);
        pch = strtok(line," ");
        while (pch != NULL) {
            cur_nb = atoi(pch);
            if (last_nb != -1 && is_first) {
                is_first = false;
                is_ascending = cur_nb > last_nb;
            } 
            
            if (last_nb != -1 && is_ascending && cur_nb <= last_nb) {
                score--;
                break;
            } else if (last_nb != -1 && !is_ascending && cur_nb >= last_nb) {
                score--;
                break;
            } else if (last_nb != -1 && abs(last_nb - cur_nb) > 3) {
                score--;
                break;
            }

            last_nb = cur_nb;
            pch = strtok (NULL, " ");
        }

        score++;
        is_first = true;
        last_nb = -1;
	}

    printf("%d\n", score);

	fclose(file);
}

void Day2_1() {
    parse_file();
}

static void parse_file2() {
	FILE* file = fopen("../data/Day-2.txt", "r");
	if (!file) {
		exit(1);
	}

    char line[LINE_SIZE];
    char *pch;
    int cur_nb;
    int last_nb = -1;
    bool is_first = true;
    bool is_ascending = false;
    int score = 0;
    int nb_skips = 0;
    bool skipped = false;
	while (fgets(line, LINE_SIZE, file)) {
        printf("%s\n", line);
        pch = strtok(line," ");
        while (pch != NULL) {
            cur_nb = atoi(pch);
            if (last_nb != -1 && is_first) {
                is_first = false;
                is_ascending = cur_nb > last_nb;
            } 
            
            if (last_nb != -1 && is_ascending && cur_nb <= last_nb) {
                skipped = true;
                nb_skips++;
            } else if (last_nb != -1 && !is_ascending && cur_nb >= last_nb) {
                skipped = true;
                nb_skips++;
            } else if (last_nb != -1 && abs(last_nb - cur_nb) > 3) {
                skipped = true;
                nb_skips++;
            }
            
            if (!skipped) {
                last_nb = cur_nb;
            }

            if (nb_skips >= 2) {
                break;
            }
            pch = strtok (NULL, " ");
            skipped = false;
        }

        if (nb_skips <= 1) {
            printf("score\n");
            score++;
        }

        nb_skips = 0;
        is_first = true;
        last_nb = -1;
	}

    printf("%d\n", score);

	fclose(file);
}

void Day2_2() {
    parse_file2();
}