#ifndef _Z_EN_GO_H_
#define _Z_EN_GO_H_

#include "ultra64.h"
#include "global.h"

struct EnGo;

typedef void (*EnGoActionFunc)(struct EnGo*, struct GlobalContext*);
typedef u16 (*callback1_80A3ED24)(struct GlobalContext*, struct Actor*);
typedef s16 (*callback2_80A3ED24)(struct GlobalContext*, struct Actor*);


typedef struct {
    /* 0x0000 */ u8 unk_0;
    /* 0x0001 */ u8 unk_1;
    /* 0x0002 */ u8 unk_2;
    /* 0x0004 */ f32 unk_4;
    /* 0x0008 */ f32 unk_8;
    /* 0x000C */ char unk_C[0x8];
    /* 0x0014 */ Vec3f pos;
    /* 0x0020 */ Vec3f velocity;
    /* 0x002C */ Vec3f accel;

} EnGoUnkStruct; // Size 0x38

typedef struct EnGo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelanime;
    /* 0x0190 */ EnGoActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ struct_80034A14_arg1 unk_1E0; // 
    /* 0x0208 */ char unk_208[0x4];
    /* 0x020c */ s16 unk_20C;
    /* 0x020e */ s16 unk_20E;
    /* 0x0210 */ s16 unk_210;
    /* 0x0212 */ s16 unk_212;
    /* 0x0214 */ s16 unk_214;
    /* 0x0216 */ s16 unk_216;
    /* 0x0218 */ s16 unk_218;
    /* 0x021A */ s16 unk_21A;
    /* 0x021C */ s16 unk_21C;
    /* 0x021E */ s16 unk_21E;
    /* 0x0220 */ s16 unk_220[18];
    /* 0x0244 */ s16 unk_244[18];
    /* 0x0268 */ EnGoUnkStruct unk_268[20];
} EnGo; // size = 0x06C8

extern const ActorInit En_Go_InitVars;

#endif
