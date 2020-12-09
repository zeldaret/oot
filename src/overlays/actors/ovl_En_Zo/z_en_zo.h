#ifndef _Z_EN_ZO_H_
#define _Z_EN_ZO_H_

#include "ultra64.h"
#include "global.h"

struct EnZo;

typedef struct {
    /* 0x00 */ u8    state;
    /* 0x04 */ f32   scale;
    /* 0x10 */ f32   targetScale;
    /* 0x10 */ u8    unk_0C;
    /* 0x10 */ u8    unk_0D;
    /* 0x10 */ u8    unk_0E;
    /* 0x10 */ u8    alpha;
    /* 0x10 */ f32   unk_10;
    /* 0x14 */ Vec3f pos;
    /* 0x20 */ Vec3f vel;
    /* 0x2C */ Vec3f unk_2C;
} EnZoBubble; // size = 0x38

typedef struct EnZo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ void (*callback)(struct EnZo *this, GlobalContext *globalCtx);
    /* 0x0194 */ struct_80034A14_arg1 unk_194;
    /* 0x01BC */ ColliderCylinder collider;
    /* 0x0208 */ u8 unk_208;
    /* 0x0209 */ char unk_209;
    /* 0x020A */ Vec3s limbDrawTbl;
    /* 0x0210 */ char unk_210[0x72];
    /* 0x0282 */ Vec3s unk_282;
    /* 0x0288 */ char unk_288[0x74];
    /* 0x02FC */ EnZoBubble bubbles[0xf];
    /* 0x0644 */ f32 unk_644;
    /* 0x0648 */ f32 unk_648;
    /* 0x064C */ s16 unk_64C;
    /* 0x064E */ s16 unk_64E;
    /* 0x0650 */ s16 unk_650;
    /* 0x0652 */ s16 unk_652;
    /* 0x0654 */ s16 unk_654;
    /* 0x0656 */ s16 unk_656[20];
    /* 0x067E */ s16 unk_67E[20];
    /* 0x06A6 */ s16 unk_6A6;
} EnZo; // size = 0x06A8

extern const ActorInit En_Zo_InitVars;

#endif
