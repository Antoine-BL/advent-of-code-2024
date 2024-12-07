#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

#include <string.h>
#include <utils.h>
#include <ctype.h>

#include <day3.h>

#define PATTERN_LEN 8

void Day3_1() {
    FILE* file = fopen("../data/Day-3.txt", "r");
	if (!file) {
		exit(1);
	}

    const char* pattern = "mul(x,x)";

    bool reset_matching = false;
    int sum = 0;
    int pattern_idx = 0;
    
    char operand_buf[256];
    int operand_idx = 0;

    int operand1 = -1;
    int operand2 = -1;
    
    char letter = fgetc(file);
    if (!letter) {
        exit(1);
    }
	for (;letter != -1; letter = fgetc(file)) {
        if (pattern[pattern_idx] == 'x') {
            //Operands can be multiple chars
            if (isdigit(letter)) {
                //Add digit to operand
                operand_buf[operand_idx] = letter;
                operand_idx++;
            //We need to have at least 1 digit in the operand.
            } else if (operand_idx != 0 && letter == pattern[pattern_idx + 1]) {
                //Parse operand and move "cursor" past current character
                pattern_idx += 2;

                //Null terminator avoids clearing the buffer
                operand_buf[operand_idx] = '\0';
                if (operand1 == -1) {
                    operand1 = atoi(operand_buf);
                } else {
                    operand2 = atoi(operand_buf);
                }

                //Reset operand parsing
                operand_idx = 0;
            } else {
                reset_matching = true;
            }
        } else if (letter == pattern[pattern_idx]) {
            //Easy case, move cursor forward
            pattern_idx++;
        } else {
            reset_matching = true;
        }

        if (reset_matching) {
            operand_idx = 0;
            pattern_idx = 0;
            operand1 = -1;
            operand2 = -1;
            if (letter == pattern[pattern_idx]) {
                pattern_idx++;
            }

            reset_matching = false;
        }

        //check if we reached the end of the pattern
        if (pattern_idx == PATTERN_LEN) {
            sum += operand1 * operand2;

            //Reset pattern matching
            operand_idx = 0;
            pattern_idx = 0;
            operand1 = -1;
            operand2 = -1;
        }
    }

    printf("%d\n", sum);
}

void Day3_2() {
    FILE* file = fopen("../data/Day-3.txt", "r");
	if (!file) {
		exit(1);
	}

    const char* pattern = "mul(x,x)";

    bool reset_matching = false;
    int sum = 0;
    int pattern_idx = 0;
    
    char operand_buf[256];
    int operand_idx = 0;

    int operand1 = -1;
    int operand2 = -1;
    
    char letter = fgetc(file);
    if (!letter) {
        exit(1);
    }
	for (;letter != -1; letter = fgetc(file)) {
        if (pattern[pattern_idx] == 'x') {
            //Operands can be multiple chars
            if (isdigit(letter)) {
                //Add digit to operand
                operand_buf[operand_idx] = letter;
                operand_idx++;
            //We need to have at least 1 digit in the operand.
            } else if (operand_idx != 0 && letter == pattern[pattern_idx + 1]) {
                //Parse operand and move "cursor" past current character
                pattern_idx += 2;

                //Null terminator avoids clearing the buffer
                operand_buf[operand_idx] = '\0';
                if (operand1 == -1) {
                    operand1 = atoi(operand_buf);
                } else {
                    operand2 = atoi(operand_buf);
                }

                //Reset operand parsing
                operand_idx = 0;
            } else {
                reset_matching = true;
            }
        } else if (letter == pattern[pattern_idx]) {
            //Easy case, move cursor forward
            pattern_idx++;
        } else {
            reset_matching = true;
        }

        if (reset_matching) {
            operand_idx = 0;
            pattern_idx = 0;
            operand1 = -1;
            operand2 = -1;
            if (letter == pattern[pattern_idx]) {
                pattern_idx++;
            }

            reset_matching = false;
        }

        //check if we reached the end of the pattern
        if (pattern_idx == PATTERN_LEN) {
            sum += operand1 * operand2;

            //Reset pattern matching
            operand_idx = 0;
            pattern_idx = 0;
            operand1 = -1;
            operand2 = -1;
        }
    }

    printf("%d\n", sum);
}

static 