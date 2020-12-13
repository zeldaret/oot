#ifndef _Z_EN_GO2_H_
#define _Z_EN_GO2_H_

#include "ultra64.h"
#include "global.h"

struct EnGo2;

typedef void (*EnGo2ActionFunc)(struct EnGo2*, GlobalContext*);

// Same as EnGo, import once git branches merged
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

typedef struct EnGo2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnGo2ActionFunc actionFunc;
    /* 0x0194 */ struct_80034A14_arg1 unk_194;  
    /* 0x01BC */ ColliderCylinder collider;
    /* 0x0208 */ Path* path;
    /* 0x020C */ u8 unk_20C;
    /* 0x020D */ u8 unk_20D;
    /* 0x020E */ u8 reverse;
    /* 0x020F */ u8 unk_20F;
    /* 0x0210 */ s8 waypoint;
    /* 0x0211 */ u8 unk_211;
    /* 0x0212 */ u8 unk_212;
    /* 0x0213 */ u8 unk_213;
    /* 0x0214 */ char unk_214[0x2];
    /* 0x0216 */ u8 unk_216;
    /* 0x0218 */ char unk_218[0x9];
    /* 0x0220 */ f32 unk_220;
    /* 0x0224 */ char unk_224[0x2];
    /* 0x0226 */ s16 unk_226[18];
    /* 0x024A */ s16 unk_24A[18];
    /* 0x026E */ u16 unk_26E;
    /* 0x0270 */ EnGoUnkStruct unk_270[10];
    /* 0x04A0 */ Vec3f eye;
    /* 0x04AC */ Vec3f at;
    /* 0x04B8 */ char unk_4B8[0xD8];
    /* 0x0590 */ s16 unk_590;
    /* 0x0592 */ s16 unk_592;
    /* 0x0594 */ s32 getItemID;
    /* 0x0598 */ char unk_598[0x2];
    /* 0x059A */ s16 camID;
    /* 0x059C */ s16 unk_59C;
    /* 0x059E */ char unk_59E[0x2];
} EnGo2; // size = 0x05A0

extern const ActorInit En_Go2_InitVars;

#endif
