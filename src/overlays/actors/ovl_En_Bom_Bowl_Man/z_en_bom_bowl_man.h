#ifndef Z_EN_BOM_BOWL_MAN_H
#define Z_EN_BOM_BOWL_MAN_H

#include "ultra64.h"
#include "actor.h"

struct EnBomBowlMan;

typedef void (*EnBomBowlManActionFunc)(struct EnBomBowlMan*, struct PlayState*);

typedef struct EnBomBowlMan {
    /* 0x000 */ Actor actor;
    /* 0x14C */ SkelAnime unk14C;
    /* 0x190 */ Vec3s unk190;
    /* 0x196 */ char pad196[0x3C]; /* maybe part of unk190[0xB]? */
    /* 0x1D2 */ Vec3s unk1D2;
    /* 0x1D8 */ char pad1D8[0x3C]; /* maybe part of unk1D2[0xB]? */
    /* 0x214 */ EnBomBowlManActionFunc actionFunc;
    /* 0x218 */ Vec3s unk218;
    /* 0x21E */ char pad21E[6];
    /* 0x224 */ Vec3s unk224;
    /* 0x22A */ s16 unk22A;
    /* 0x22C */ s16 unk22C;
    /* 0x22E */ s16 unk22E;
    /* 0x230 */ s16 unk230;
    /* 0x232 */ s16 unk232;
    /* 0x234 */ s16 unk234;
    /* 0x236 */ s16 unk236;
    /* 0x238 */ s16 unk238;
    /* 0x23A */ s16 unk23A;
    /* 0x23C */ s16 unk23C;
    /* 0x23E */ s16 unk23E_arr[2];
    /* 0x242 */ s16 unk242;
    /* 0x244 */ s16 unk244;
    /* 0x246 */ char pad246[2];
    /* 0x248 */ Vec3f unk248;
    /* 0x254 */ f32 unk254_curAnimFraceCount;
    /* 0x258 */ u8 unk_258;
    /* 0x259 */ char pad259[3]; /* maybe part of unk_258[4]? */
    /* 0x25C */ struct EnBomBowlPit* unk25C;
    /* 0x260 */ struct EnExItem* unk260;
} EnBomBowlMan; // size = 0x0264

#endif
