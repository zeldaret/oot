/**
 * Getopt-compatible printing of formatted help.
 */
/* Copyright (C) 2021 Elliptic Ellipsis */
/* SPDX-License-Identifier: AGPL-3.0-only */
#include "help.h"

#include <assert.h>
#include <getopt.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

#include "macros.h"

/* Values of the variables used by Help_PrintHelp. Defaults are taken from common terminal programs like grep */
size_t helpTextWidth = 80;
size_t helpDtIndent = 2;
size_t helpDdIndent = 25;

/**
 * Prints a paragraph, word wrapped to helpTextWidth, with a hanging indent. initialColumn is used to determine how wide
 * the first line should be, while indentFirstLine should be true if there is no previous text on the line (an ordinary
 * paragraph), and false if there is (e.g. as a description list description)
 */
void Help_PrintFlowAndIndent(const char* string, size_t initialColumn, size_t textWidth, size_t hangingIndent,
                             bool indentFirstLine) {
    size_t column = initialColumn;
    size_t index = 0;
    size_t inLength = strlen(string);
    size_t lookAhead;
    bool shouldBreak;

    assert(initialColumn < textWidth);
    assert(hangingIndent < textWidth);

    if (indentFirstLine) {
        printf("%*s", (int)initialColumn, "");
    }

    for (; index <= inLength; index++) {
        shouldBreak = 0;

        if (column == textWidth) {
            printf("%c\n%*s", string[index], (int)hangingIndent, "");
            column = hangingIndent;
            continue;
        }

        column++;

        switch (string[index]) {
            case '\0':
                return;

            case ' ':
                if (column == hangingIndent) {
                    continue;
                }

                for (lookAhead = 0; lookAhead <= textWidth - column; lookAhead++) {
                    // printf("%c\n", src[index + lookAhead]);
                    if (string[index + lookAhead + 1] == ' ' || string[index + lookAhead + 1] == '\0') {
                        putchar(' ');
                        shouldBreak = 1;
                        break;
                    }
                }
                if (shouldBreak) { /* Damn shared keywords. */
                    break;
                }
            case '\n':
                printf("\n%*s", (int)hangingIndent, "");
                column = hangingIndent;
                break;

            default:
                putchar(string[index]);
                break;
        }
    }
}

/**
 * Prints help in the form
 * ```
 * prologue (word wrapped)
 *
 * Positional arguments
 * arg1            Description (word
 *                 wrapped)
 * arg2            Description (word
 *                 wrapped)
 *
 * Options
 * -a --long-name=ARG Description (word
 *                 wrapped)
 *
 * epilogue (word wrapped)
 * ```
 * where the positional arguments are described using the posArgInfo array, and options are fed using the OptInfo array,
 * which should both be null-terminated. posArgCount/optCount is the actual number of positional arguments/options: it
 * is used to guarantee no garbage is printed even if the user has not null-terminated the array. (optCount is required
 * for constructing the getopt option array anyway.)
 */
void Help_PrintHelp(const char* prologue, size_t posArgCount, const PosArgInfo* posArgInfo, size_t optCount,
                    const OptInfo* optInfo, const char* epilogue) {
    size_t i;
    size_t dtLength;
    int padding;

    Help_PrintFlowAndIndent(prologue, 0, helpTextWidth, 0, false);

    if (posArgCount != 0) {
        printf("\nPositional Argument\n");
        for (i = 0; i < posArgCount; i++) {
            if (posArgInfo[i].helpArg == 0) {
                break;
            }

            dtLength = helpDtIndent + strlen(posArgInfo[i].helpArg);

            padding = helpDdIndent - dtLength - 2;
            printf("%*s%s%*s  ", (int)helpDtIndent, "", posArgInfo[i].helpArg, CLAMP_MIN(padding, 0), "");

            Help_PrintFlowAndIndent(posArgInfo[i].helpMsg, CLAMP_MIN(dtLength + 2, helpDdIndent), helpTextWidth,
                                    helpDdIndent, false);
            printf("\n");
        }
    }

    if (optCount != 0) {
        printf("\nOptions\n");

        for (i = 0; i < optCount; i++) {
            if (optInfo[i].longOpt.val == 0) {
                break;
            }

            dtLength = helpDtIndent + 6 + strlen(optInfo[i].longOpt.name);

            if (optInfo[i].helpArg == NULL) {
                padding = helpDdIndent - dtLength - 2;
                printf("%*s-%c, --%s%*s  ", (int)helpDtIndent, "", optInfo[i].longOpt.val, optInfo[i].longOpt.name,
                       CLAMP_MIN(padding, 0), "");
            } else {
                dtLength += 1 + strlen(optInfo[i].helpArg);
                padding = helpDdIndent - dtLength - 2;
                printf("%*s-%c, --%s=%s%*s  ", (int)helpDtIndent, "", optInfo[i].longOpt.val, optInfo[i].longOpt.name,
                       optInfo[i].helpArg, CLAMP_MIN(padding, 0), "");
            }
            Help_PrintFlowAndIndent(optInfo[i].helpMsg, CLAMP_MIN(dtLength + 2, helpDdIndent), helpTextWidth,
                                    helpDdIndent, false);
            printf("\n");
        }
    }

    printf("\n");
    Help_PrintFlowAndIndent(epilogue, 0, helpTextWidth, 0, false);
    printf("\n");
}
