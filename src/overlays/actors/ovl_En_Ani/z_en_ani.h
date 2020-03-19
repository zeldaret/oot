#ifndef _Z_EN_ANI_H_
#define _Z_EN_ANI_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x4C];
    /* 0x0198 */ SkelAnime skelAnime;
    /* 0x01D8 */ char unk_19C[0xD0];
    /* 0x02A8 */ u16  unk_2A8;
    /* 0x02AA */ u16  unk_2AA;
    /* 0x02AC */ char unk_2AC[0x4];
    /* 0x02B0 */ ActorFunc actionFunc;
} EnAni; // size = 0x02B4

extern const ActorInit En_Ani_InitVars;

void func_809B0370(EnAni* this, ActorFunc actionFunc);
void EnAni_Init(EnAni* this, GlobalContext* globalCtx);
void EnAni_Destroy(EnAni* this, GlobalContext* globalCtx);
s32 func_809B04B4(EnAni* this, GlobalContext* globalCtx, u16 arg2);
void func_809B04F0(EnAni* this, GlobalContext* globalCtx);
void func_809B0524(EnAni* this, GlobalContext* globalCtx);
void func_809B0558(EnAni* this, GlobalContext* globalCtx);
void func_809B05F0(EnAni* this, GlobalContext* globalCtx);
void func_809B064C(EnAni* this, GlobalContext* globalCtx);
void func_809B07F8(EnAni* this, GlobalContext* globalCtx);
void func_809B0988(EnAni* this, GlobalContext* globalCtx);



void EnAni_Update(EnAni* this, GlobalContext* globalCtx);
void EnAni_Draw(EnAni* this, GlobalContext* globalCtx);


#endif
