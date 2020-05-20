#ifndef _Z_EN_HINTNUTS_H_
#define _Z_EN_HINTNUTS_H_

#include <ultra64.h>
#include <global.h>

struct EnHintnuts;

typedef void (*EnHintnutsActionFunc)(struct EnHintnuts*, GlobalContext*);

typedef struct EnHintnuts {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnHintnutsActionFunc actionFunc;
    /* 0x0194 */ s16 unk_194;
    /* 0x0196 */ s16 unk_196;
    /* 0x0198 */ u16 unk_198;   // textId
    /* 0x019A */ Vec3s unk_19A; // actor draw table, presumably beginning of array
    /* 0x01A0 */ char unk_1A0[0x36];
    /* 0x01D6 */ Vec3s unk_1D6;
    /* 0x01DC */ char unk_1DC[0x38];
    /* 0x0214 */ ColliderCylinder collider;
} EnHintnuts; // size = 0x0260

extern const ActorInit En_Hintnuts_InitVars;

#endif
