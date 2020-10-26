#ifndef _Z_DEMO_EFFECT_H_
#define _Z_DEMO_EFFECT_H_

#include "ultra64.h"
#include "global.h"

struct DemoEffect;

typedef void (*DemoEffectFunc)(struct DemoEffect* this, GlobalContext* globalCtx);

typedef struct DemoEffect {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnimeCurve unk_14C; // TODO: generally called skelCurve
    /* 0x016C */ u8 unk_16C; // Object bank index 
    /* 0x016D */ UNK_TYPE1 pad_16D[0x03];
    /* 0x0170 */ Gfx* unk_170;
    /* 0x0174 */ Gfx* unk_174;
    union {
        struct {
    /* 0x0178 */ u8 unk_178;
    /* 0x0179 */ u8 unk_179;
    /* 0x017A */ u8 unk_17A;
    /* 0x017B */ u8 unk_17B;
    /* 0x017C */ u8 unk_17C;
    /* 0x017D */ u8 unk_17D;
    /* 0x017E */ u8 unk_17E;
    /* 0x017F */ u8 unk_17F;
    /* 0x0180 */ u8 unk_180;
    /* 0x0181 */ u8 unk_181;
    /* 0x0182 */ u8 unk_182;
    /* 0x0183 */ u8 unk_183;
        };
        struct {
            Color_RGB8 unk_color_prim;
            Color_RGB8 unk_color_env;
            Color_RGB8 unk_color_prim2;
            Color_RGB8 unk_color_env2;
        };
        struct {
            // TODO: OOT guys prefer this version. This is the real version
            u8 unk_color_array_prim[3];
            u8 unk_color_array_env[3];
            u8 unk_color_array_prim2[3];
            u8 unk_color_array_env2[3];
        };
        Color_RGB8 unk_colour_178[4];
    };
    /* 0x0184 */ u8 unk_184;
    /* 0x0185 */ u8 unk_185;
    /* 0x0186 */ u8 unk_186;
    /* 0x0187 */ u8 unk_187;
    /* 0x0188 */ s16 unk_188;
    /* 0x018A */ s16 unk_18A;
    /* 0x018C */ s16 unk_18C;
    union {
        struct {
    /* 0x018E */ s16 unk_18E;
    /* 0x0190 */ s16 unk_190;
    /* 0x0192 */ s16 unk_192;
        };
        Vec3s unk_vec3s; // TODO: This is the real version
    };
    /* 0x0194 */ DemoEffectFunc actionFunc;
    /* 0x0198 */ DemoEffectFunc drawFunc;
    /* 0x019C */ DemoEffectFunc updateFunc;
} DemoEffect; // size = 0x01A0

// TODO: OOT people are going to want all of this moved to the C file, if they don't just want it removed completely.
// These names come from the objects that correspond to this actor type.
typedef enum {
    /* 0x00 */ Demo_Effect_Crystal_Light,
    /* 0x01 */ Demo_Effect_Fire_Ball,
    /* 0x02 */ Demo_Effect_Blue_Orb, // Object is in GAMEPLAY_KEEP. Not a name from object. It's a blue orb.
    /* 0x03 */ Demo_Effect_Lgt_Shower,
    /* 0x04 */ Demo_Effect_God_Lgt_Din,
    /* 0x05 */ Demo_Effect_God_Lgt_Nayru,
    /* 0x06 */ Demo_Effect_God_Lgt_Farore,
    /* 0x07 */ Demo_Effect_Light_Ring_1,
    /* 0x08 */ Demo_Effect_Triforce_Spot,
    /* 0x09 */ Demo_Effect_Medal_Fire,
    /* 0x0A */ Demo_Effect_Medal_Water,
    /* 0x0B */ Demo_Effect_Medal_Forest,
    /* 0x0C */ Demo_Effect_Medal_Spirit,
    /* 0x0D */ Demo_Effect_Medal_Shadow,
    /* 0x0E */ Demo_Effect_Medal_Light,
    /* 0x0F */ Demo_Effect_TW_1,
    /* 0x10 */ Demo_Effect_Light_Ring_2,
    /* 0x11 */ Demo_Effect_Light_Ring_3,
    /* 0x12 */ Demo_Effect_Light_Particles,
    /* 0x13 */ Demo_Effect_Jewel_Kokiri,
    /* 0x14 */ Demo_Effect_Jewel_Goron,
    /* 0x15 */ Demo_Effect_Jewel_Zora,
    /* 0x16 */ Demo_Effect_Arrow,
    /* 0x17 */ Demo_Effect_Unknown, // Object is in GAMEPLAY_KEEP. Used in Zelda's Courtyard.
    /* 0x18 */ Demo_Effect_TW_2,
    /* 0x19 */ Demo_Effect_TW_3,
    /* 0x1A */ Demo_Effect_Max_Effect_Type
} Demo_Effect_Effect_Type;

#define GET_ACTOR_TYPE(thisx) ((thisx)->params & 0x00FF)
#define GET_LIGHT_EFFECT_COLOUR_PARAM(thisx) (((thisx)->params & 0xF000) >> 0x0C)
#define GET_LIGHT_EFFECT_SIZE_PARAM(thisx) (((thisx)->params & 0x0F00) >> 0x08)

#endif
