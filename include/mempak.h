#ifndef MEMPAK_H
#define MEMPAK_H

#include "ultra64.h"

s32 Mempak_Init(s32 controllerNo);
s32 Mempak_GetFreeBytes(s32 controllerNo);
s32 Mempak_FindFiles(s32 controllerNo, char start, char end);
s32 Mempak_Write(s32 controllerNo, char letter, void* buffer, s32 offset, s32 size);
s32 Mempak_Read(s32 controllerNo, char letter, void* buffer, s32 offset, s32 size);
s32 Mempak_CreateFile(s32 controllerNo, char* letter, s32 size);
s32 Mempak_DeleteFile(s32 controllerNo, char letter);
s32 Mempak_GetFileSize(s32 controllerNo, char letter);

// Converts a file letter to its numerical index
#define MEMPAK_LETTER_TO_IDX(c) ((c) - 'A')

// Converts a numerical index to a file letter
#define MEMPAK_IDX_TO_LETTER(i) ((i) + 'A')

#endif
