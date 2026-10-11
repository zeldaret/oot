/**
 * @file rsp2elf.s
 *
 * This file converts binaries output from armips into a suitable elf file to be linked into the project.
 * It requires the following preprocessor definitions to be provided when assembled:
 *  UC_NAME          : The microcode name, used to generate symbol names for text and data
 *  UC_TEXT_SECTION  : The program section to place the microcode text into, usually .text
 *  UC_DATA_SECTION  : The program section to place the microcode data into, usually .rodata
 *  UC_TEXT_BIN_PATH : The path to the microcode text binary
 *  UC_DATA_BIN_PATH : The path to the microcode data binary
 */

/* Preprocessor macros */

#define GLUE(a,b) a##b
#define SYM_NAME(a,b) GLUE(a,b)

#define STR(x) #x
#define BIN_PATH(x) STR(x)

/* Microcode text */

.section UC_TEXT_SECTION

.global SYM_NAME(UC_NAME,TextStart)
SYM_NAME(UC_NAME,TextStart):

	.incbin BIN_PATH(UC_TEXT_BIN_PATH)

.global SYM_NAME(UC_NAME,TextEnd)
SYM_NAME(UC_NAME,TextEnd):

.size SYM_NAME(UC_NAME,TextStart), SYM_NAME(UC_NAME,TextEnd) - SYM_NAME(UC_NAME,TextStart)

/* Microcode data */

.section UC_DATA_SECTION

.global SYM_NAME(UC_NAME,DataStart)
SYM_NAME(UC_NAME,DataStart):

	.incbin BIN_PATH(UC_DATA_BIN_PATH)

.global SYM_NAME(UC_NAME,DataEnd)
SYM_NAME(UC_NAME,DataEnd):

.size SYM_NAME(UC_NAME,DataStart), SYM_NAME(UC_NAME,DataEnd) - SYM_NAME(UC_NAME,DataStart)
