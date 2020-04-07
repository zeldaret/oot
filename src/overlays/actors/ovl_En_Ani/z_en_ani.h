#ifndef _Z_EN_ANI_H_
#define _Z_EN_ANI_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinderMain collider;
    /* 0x0198 */ SkelAnime skelAnime;
    /* 0x01DC */ u8 unk_1DC;
    /* 0x01DD */ char unk_1DD[0x5F];
    /* 0x023C */ u16 unk_23C;
    /* 0x023E */ char unk_23E[0x5E];
    /* 0x029C */ Vec3s unk_29C;
    /* 0x02A2 */ Vec3s unk_2A2;
    /* 0x02A8 */ u16 unk_2A8;
    /* 0x02AA */ u16 unk_2AA;
    /* 0x02AC */ s16 unk_2AC;
    /* 0x02AE */ s16 unk_2AE;
    /* 0x02B0 */ ActorFunc actionFunc;
} EnAni; // size = 0x02B4

#endif
