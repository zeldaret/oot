#ifndef _Z_EN_POH_H_
#define _Z_EN_POH_H_

#include <ultra64.h>
#include <global.h>

struct EnPoh;

typedef void (*EnPohActionFunc)(struct EnPoh*, struct GlobalContext*);

typedef struct {
    /* 0x0000 */ u8 unk_0; // r
    /* 0x0001 */ u8 unk_1; // g
    /* 0x0002 */ u8 unk_2; // b
    /* 0x0003 */ u8 unk_3;
    /* 0x0004 */ u8 unk_4;
    /* 0x0005 */ u8 unk_5;
    /* 0x0006 */ u8 unk_6;
    /* 0x0006 */ u8 unk_7;
    /* 0x0008 */ s8 unk_8;
    /* 0x000C */ AnimationHeader* unk_C;
    /* 0x0010 */ AnimationHeader* unk_10;
    /* 0x0014 */ u32 unk_14;
    /* 0x0018 */ AnimationHeader* unk_18;
    /* 0x001C */ Gfx* unk_1C;
    /* 0x0020 */ Gfx* unk_20;
    /* 0x0024 */ Gfx* unk_24;
} UnkEnPohStruct; // size = 0x28

typedef struct EnPoh {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnPohActionFunc actionFunc;
    /* 0x0194 */ u8 unk_194;
    /* 0x0195 */ u8 unk_195;
    /* 0x0196 */ s8 objectIdx;
    /* 0x0197 */ u8 unk_197;
    /* 0x0198 */ s16 unk_198;
    /* 0x019A */ s16 unk_19A;
    /* 0x019C */ s16 unk_19C;
    /* 0x019E */ Vec3s limbDrawTbl; // array, size currently unknown
    /* 0x01A4 */ char unk_1A0[0x078];
    /* 0x021C */ Vec3s unk_21C; // array, size currently unknown
    /* 0x0222 */ char unk_222[0x078];
    /* 0x029A */ u8 unk_29A;
    /* 0x029B */ u8 unk_29B;
    /* 0x029C */ u8 unk_29C;
    /* 0x029D */ u8 unk_29D;
    /* 0x029E */ u8 unk_29E;
    /* 0x029F */ u8 unk_29F;
    /* 0x02A0 */ u8 unk_2A0;
    /* 0x02A1 */ u8 unk_2A1;
    /* 0x02A2 */ char unk_2A2[0x002];
    /* 0x02A4 */ UnkEnPohStruct* unk_2A4;
    /* 0x02A8 */ z_Light* light;
    /* 0x02AC */ LightInfoPositional lightInfo;
    /* 0x02BC */ ColliderCylinder colliderCyl;
    /* 0x0308 */ ColliderJntSph colliderSph;
    /* 0x0328 */ ColliderJntSphItem colliderSphItem;
    /* 0x0368 */ MtxF unk_368;
} EnPoh; // size = 0x03A8

extern const ActorInit En_Poh_InitVars;

#endif
