#ifndef _Z64EFFECT_H_
#define _Z64EFFECT_H_
#include <color.h>

// gz has trail related structs but they seem to be different in dbg
typedef struct {
    /* 0x0000 */ char        unk_00[0x184];
    /* 0x0184 */ Color_RGBA8 p1Start;
    /* 0x0188 */ Color_RGBA8 p2Start;
    /* 0x018C */ Color_RGBA8 p1End;
    /* 0x0190 */ Color_RGBA8 p2End;
    /* 0x0194 */ u32         unk_194; // these are proably bytes
    /* 0x0198 */ u32         unk_198;
    /* 0x019C */ u32         unk_19C;
    /* 0x01A0 */
} TrailEffect; // size = unk

#endif
