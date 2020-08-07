#include "z_en_ex_ruppy.h"
#include "vt.h"
#define FLAGS 0x00000010

#define THIS ((EnExRuppy*)thisx)

void EnExRuppy_Init(Actor* thisx, GlobalContext* globalCtx);
void EnExRuppy_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnExRuppy_Update(Actor* thisx, GlobalContext* globalCtx);
void EnExRuppy_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A0AA3C(EnExRuppy* this, GlobalContext* globalCtx);
void func_80A0AF24(EnExRuppy* this, GlobalContext* globalCtx);
void func_80A0B070(EnExRuppy* this, GlobalContext* globalCtx);
void func_80A0B0F4(EnExRuppy* this, GlobalContext* globalCtx);

s32 D_80A0B320[] = {0x00000001, 0x00020013, 0x00140000, 0x00010005, 0x001401F4, 0x00320000};

const ActorInit En_Ex_Ruppy_InitVars = {
    ACTOR_EN_EX_RUPPY,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnExRuppy),
    (ActorFunc)EnExRuppy_Init,
    (ActorFunc)EnExRuppy_Destroy,
    (ActorFunc)EnExRuppy_Update,
    (ActorFunc)EnExRuppy_Draw,
};


s32 D_80A0B358[] = {0x00000000, 0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000, 0x00000000};
s32 D_80A0B370[] = {0x00000000, 0x3C23D70A, 0x00000000};
s32 D_80A0B37C[] = {0x00000000, 0x00000000, 0x00000000};
s32 D_80A0B388[] = {0x00000000, 0x3DCCCCCD, 0x00000000};
s32 D_80A0B394[] = {0x00000000, 0x00000000, 0x00000000};
s32 D_80A0B3A0[] = {0x00000000, 0x3DCCCCCD, 0x00000000};
s32 D_80A0B3AC[] = {0x00000000, 0x00000000, 0x00000000};
s32 D_80A0B3B8[] = {0x04042140, 0x04042160, 0x04042180, 0x040421C0, 0x040421A0, 0x00000000};


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/EnExRuppy_Init.s")
#ifdef NON_MATCHING
//Regalloc
void EnExRuppy_Init(Actor* thisx, GlobalContext *globalCtx) {
    EnExRuppy* this = THIS;
    EnDivingGame* divingGame;
    s16 temp_v0;
    f32 phi_f12;
    f32 temp;
    this->unk_152 = this->actor.params;
                    //Index 
    osSyncPrintf(VT_FGCOL(GREEN)"☆☆☆☆☆ インデックス ☆☆☆☆☆ %x"VT_RST, this->unk_152);
    ActorShape_Init(&this->actor.shape, 0.0f, (void *) &ActorShadow_DrawFunc_Circle, 25.0f);

    switch (this->unk_152){
        //Zora Diving game
    case 0:
        this->unk_160 = 0.01f;
        Actor_SetScale(&this->actor, this->unk_160);
        this->actor.room = -1;
        this->actor.gravity = 0.0f;
        //If you havnt won the diving game before you will get 5 blue ruppees.
        if ((gSaveContext.eventChkInf[3] & 0x100) == 0) {
            this->value =  5;
            this->unk_150 = 1;
        } else {
            divingGame = (EnDivingGame*)this->actor.attachedA;
            phi_f12 = 200.99f;
            if ((divingGame != NULL) && (divingGame->actor.update != NULL)) {
               temp = divingGame->unk_2AA * 10.0f;
               phi_f12 = 200.99f + temp;
            }
            temp_v0 = (s16)Math_Rand_ZeroFloat(phi_f12);
            if ((temp_v0 >= 0) && (temp_v0 < 40)) {
                this->value =  1;
                this->unk_150 =  0;
            } else if ((temp_v0 >= 40) && (temp_v0 < 170)) {
                this->value =  5;
                this->unk_150 =  1;
            } else if ((temp_v0 >= 170) && (temp_v0 < 190)) {
                this->value =  20;
                this->unk_150 =  2;
            } else if ((temp_v0 >= 190) && (temp_v0 < 200)) {
                this->value =  50;
                this->unk_150 =  4;
            } else {
                this->unk_160 = 0.02f;
                Actor_SetScale(&this->actor, this->unk_160);
                this->value =  500;
                this->unk_150 =  3;
                divingGame = (EnDivingGame*)this->actor.attachedA;
                if ((this->actor.attachedA != NULL) && ((&divingGame->actor)->update != 0)) {
                    divingGame->unk_2AA = 0;
                }
            }
        }
        temp_v0 = this->actor.posRot.rot.z;
        this->actor.posRot.rot.z = 0;
        this->unk_156 = 30;
        if(!this->actor.attachedA){}
        this->actor.shape.unk_10 = 7.0f;
        this->actor.shape.unk_08 = 700.0f;
        this->unk_15A = temp_v0;
        this->actor.flags &= ~1;
        this->actionFunc = func_80A0AA3C;
        break;
    case 1:
    case 2:
        if (this->unk_152 == 1) {
            Actor_SetScale(thisx, 0.1f);
            this->unk_150 =  4;
        } else {
            Actor_SetScale(thisx, 0.02f);
            this->unk_150 = (((s16) Math_Rand_ZeroFloat(3.99f)) & 0xFFFFu) + 1;
        }
        this->actor.gravity = -3.0f;
        //Wow Coin
        osSyncPrintf("\x1b[32m☆☆☆☆☆ わーなーコイン ☆☆☆☆☆ \n\x1b[m");
        this->actor.shape.unk_10 = 6.0f;
        this->actor.shape.unk_08 = 700.0f;
 
        this->actor.flags &= ~1;
        this->actionFunc = func_80A0AF24;
        
        break;
    case 3:
        Actor_SetScale(thisx, 0.02f);
        this->unk_150 = 0;
        switch ((s16)Math_Rand_ZeroFloat(30.99f)) {
            case 0:
                this->unk_150 = 2;
                break;
            case 10:
            case 20:
                this->unk_150 = 1;
                break;
            case 30:
                break;
        }
        this->actor.gravity = -3.0f;
        //Normal rupee
         osSyncPrintf( "\x1b[32m☆☆☆☆☆ ノーマルルピー ☆☆☆☆☆ \n\x1b[m");
        this->actor.shape.unk_10 = 6.0f;
        this->actor.shape.unk_08 = 700.0f;
        this->actor.flags &= ~1;
        this->actionFunc = func_80A0B070;
        
        break;
    case 4:
        this->actor.gravity = -3.0f;
        this->actor.flags &= ~1;
        Actor_SetScale(thisx, 0.01f);
        this->actor.shape.unk_10 = 6.0f;
        this->actor.shape.unk_08 = -700.0f;
        this->actionFunc = func_80A0B0F4;
        break;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/EnExRuppy_Init.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/EnExRuppy_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0A820.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0AA3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0AB1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0AC88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0AD88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0AEE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0AF24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0B070.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0B0F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/EnExRuppy_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/EnExRuppy_Draw.s")
