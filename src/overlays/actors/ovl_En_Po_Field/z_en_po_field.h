#ifndef _Z_EN_PO_FIELD_H_
#define _Z_EN_PO_FIELD_H_

#include <ultra64.h>
#include <global.h>

struct EnPoField;

typedef void (*EnPoFieldActionFunc)(struct EnPoField*, struct GlobalContext*);

typedef struct {
    /* 0x0000 */ u8 unk_0;
    /* 0x0001 */ u8 unk_1;
    /* 0x0002 */ u8 unk_2;
    /* 0x0003 */ u8 unk_3;
    /* 0x0004 */ u8 unk_4;
    /* 0x0005 */ u8 unk_5;
    /* 0x0006 */ u8 unk_6;
    /* 0x0007 */ u8 unk_7;
    /* 0x0008 */ u8 unk_8;
    /* 0x0009 */ s8 unk_9;
    /* 0x000A */ char unk_A[0x001];
    /* 0x000C */ UNK_PTR unk_C;
} EnPoFieldInfo; // size = 0x10

typedef struct EnPoField {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnPoFieldActionFunc actionFunc;
    /* 0x0194 */ u8 unk_194;
    /* 0x0195 */ u8 unk_195;
    /* 0x0196 */ s16 unk_196;
    /* 0x0198 */ s16 unk_198;
    /* 0x019A */ s16 unk_19A;
    /* 0x019C */ Vec3s unk_19C;
    /* 0x01A2 */ char unk_1A2[0x036];
    /* 0x01D8 */ Vec3s unk_1D8;
    /* 0x01DE */ char unk_1DE[0x036];
    /* 0x0214 */ u8 unk_214;
    /* 0x0215 */ u8 unk_215;
    /* 0x0216 */ u8 unk_216;
    /* 0x0217 */ u8 unk_217;
    /* 0x0214 */ u8 unk_218;
    /* 0x0215 */ u8 unk_219;
    /* 0x0216 */ u8 unk_21A;
    /* 0x0217 */ u8 unk_21B;
    /* 0x021C */ f32 unk_21C;
    /* 0x0220 */ f32 unk_220;
    /* 0x0224 */ Vec3f unk_224;
    /* 0x0230 */ z_Light* light;
    /* 0x0234 */ LightInfoPositional lightInfo;
    /* 0x0244 */ ColliderCylinder collider;
    /* 0x0290 */ ColliderCylinder collider2;
} EnPoField; // size = 0x02DC

extern const ActorInit En_Po_Field_InitVars;

#endif
