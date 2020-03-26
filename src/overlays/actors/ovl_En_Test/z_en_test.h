#ifndef _Z_EN_TEST_H_
#define _Z_EN_TEST_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x7DC];
} EnTest; // size = 0x0928

extern const ActorInit En_Test_InitVars;

#endif
