#ifndef _Z_DEMO_EFFECT_H_
#define _Z_DEMO_EFFECT_H_

#include "ultra64.h"
#include "global.h"

struct DemoEffect;

typedef void (*DemoEffectFunc)(struct DemoEffect* this, GlobalContext* globalCtx);

typedef struct DemoEffect {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnimeCurve skelCurve;
    /* 0x016C */ u8 initObjectBankIndex;
    /* 0x0170 */ Gfx* jewelDisplayList;
    /* 0x0174 */ Gfx* jewelHolderDisplayList;
    /* 0x178 */ u8 primXluColor[3];
    /* 0x17B */ u8 envXluColor[3];
    /* 0x17E */ u8 primOpaColor[3];
    /* 0x181 */ u8 envOpaColor[3];
    /* 0x0184 */ u8 unk_184; // ????
    /* 0x0185 */ u8 unk_185; // ????
    /* 0x0186 */ u8 unk_186; // getitem related. func_800694A0
    /* 0x0188 */ s16 unk_188; // Some kind of frame count??
    /* 0x018A */ s16 unk_18A; // Some kind of bitfield flags
    /* 0x018C */ s16 csActionId;
    /* 0x018E */ Vec3s unk_vec3s; // Not really sure yet what this is. It's really only used in func_80973CFC
    /* 0x0194 */ DemoEffectFunc initUpdateFunc;
    /* 0x0198 */ DemoEffectFunc initDrawFunc;
    /* 0x019C */ DemoEffectFunc updateFunc;
} DemoEffect; // size = 0x01A0

// These names come from the objects that correspond to this actor type.
typedef enum {
    /* 0x00 */ Demo_Effect_Crystal_Light,
    /* 0x01 */ Demo_Effect_Fire_Ball,
    /* 0x02 */ Demo_Effect_Blue_Orb, // Object is in GAMEPLAY_KEEP. Not a name from object. It's a blue orb.
    /* 0x03 */ Demo_Effect_Lgt_Shower,
    /* 0x04 */ Demo_Effect_God_Lgt_Din,
    /* 0x05 */ Demo_Effect_God_Lgt_Nayru,
    /* 0x06 */ Demo_Effect_God_Lgt_Farore,
    /* 0x07 */ Demo_Effect_Light_Ring_Expanding,
    /* 0x08 */ Demo_Effect_Triforce_Spot,
    /* 0x09 */ Demo_Effect_Medal_Fire,
    /* 0x0A */ Demo_Effect_Medal_Water,
    /* 0x0B */ Demo_Effect_Medal_Forest,
    /* 0x0C */ Demo_Effect_Medal_Spirit,
    /* 0x0D */ Demo_Effect_Medal_Shadow,
    /* 0x0E */ Demo_Effect_Medal_Light,
    /* 0x0F */ Demo_Effect_Timewarp_Mastersword,
    /* 0x10 */ Demo_Effect_Light_Ring_Shrinking,
    /* 0x11 */ Demo_Effect_Light_Ring_Triforce,
    /* 0x12 */ Demo_Effect_Light_Effect,
    /* 0x13 */ Demo_Effect_Jewel_Kokiri,
    /* 0x14 */ Demo_Effect_Jewel_Goron,
    /* 0x15 */ Demo_Effect_Jewel_Zora,
    /* 0x16 */ Demo_Effect_Dust, // Object is jewel, but this is really the dust in the ToT light arrow cutscene.
    /* 0x17 */ Demo_Effect_LightArrow,
    /* 0x18 */ Demo_Effect_Timewarp_Timeblock_Large,
    /* 0x19 */ Demo_Effect_Timewarp_Timeblock_Small,
    /* 0x1A */ Demo_Effect_Max_Effect_Type
} Demo_Effect_Effect_Type;

#define GET_EFFECT_TYPE(thisx) ((thisx)->params & 0x00FF)
#define GET_LIGHT_EFFECT_COLOR_PARAM(thisx) (((thisx)->params & 0xF000) >> 0x0C)
#define GET_LIGHT_EFFECT_SIZE_PARAM(thisx) (((thisx)->params & 0x0F00) >> 0x08)

#endif
