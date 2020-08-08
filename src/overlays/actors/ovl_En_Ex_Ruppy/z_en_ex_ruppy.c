#include "z_en_ex_ruppy.h"
#include "vt.h"
#define FLAGS 0x00000010

#define THIS ((EnExRuppy*)thisx)

#define DIVING_GAME ((EnDivingGame*)this->actor.attachedA)

void EnExRuppy_Init(Actor* thisx, GlobalContext* globalCtx);
void EnExRuppy_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnExRuppy_Update(Actor* thisx, GlobalContext* globalCtx);
void EnExRuppy_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A0AA3C(EnExRuppy* this, GlobalContext* globalCtx);
void func_80A0AF24(EnExRuppy* this, GlobalContext* globalCtx);
void func_80A0B070(EnExRuppy* this, GlobalContext* globalCtx);
void func_80A0B0F4(EnExRuppy* this, GlobalContext* globalCtx);
void func_80A0AB1C(EnExRuppy* this, GlobalContext* globalCtx);
void func_80A0AC88(EnExRuppy* this, GlobalContext* globalCtx);
void func_80A0AD88(EnExRuppy* this, GlobalContext* globalCtx);
void func_80A0AEE0(EnExRuppy* this, GlobalContext* globalCtx);

s16 D_80A0B320[] = {0x00000001, 0x00020013, 0x00140000, 0x00010005, 0x001401F4, 0x00320000};

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
static Vec3f sPoint1Vec = {0.0f, 0.1f, 0.0f};
static Vec3f sZeroVector = {0.0f, 0.0f, 0.0f};
s32 D_80A0B3B8[] = {0x04042140, 0x04042160, 0x04042180, 0x040421C0, 0x040421A0, 0x00000000};


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/EnExRuppy_Init.s")

#ifdef NON_MATCHING
//Regalloc
void EnExRuppy_Init(Actor* thisx, GlobalContext *globalCtx) {
    EnExRuppy* this = THIS;
   // EnDivingGame* divingGame;
    s16 temp_v0;
    f32 phi_f12;
    f32 temp;
    this->unk_152 = this->actor.params;
                    //Index 
    osSyncPrintf(VT_FGCOL(GREEN)"☆☆☆☆☆ インデックス ☆☆☆☆☆ %x"VT_RST, this->unk_152);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 25.0f);

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
           // divingGame = (EnDivingGame*)this->actor.attachedA;
            phi_f12 = 200.99f;
            if ((DIVING_GAME != NULL) && (DIVING_GAME->actor.update != NULL)) {
              // temp = ((EnDivingGame*)this->actor.attachedA)->unk_2AA * 10.0f;
               phi_f12 = 200.99f + DIVING_GAME->unk_2AA * 10.0f;
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
             //   divingGame = (EnDivingGame*)this->actor.attachedA;
                if ((DIVING_GAME != NULL) && (DIVING_GAME->actor.update != NULL)) {
                    (DIVING_GAME->unk_2AA = 0);
                }
            }
        }
        temp_v0 = this->actor.posRot.rot.z;
        this->actor.posRot.rot.z = 0;
        this->unk_156 = 30;
      //  if(!this->actor.attachedA){}
        this->actor.shape.unk_10 = 7.0f;
        this->actor.shape.unk_08 = 700.0f;
        this->unk_15A = temp_v0;
        this->actor.flags &= ~1;
        this->actionFunc = func_80A0AA3C;
        break;
    case 1:
    case 2: //Giant pink ruppe that explodes when you touch it
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


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0AA3C.s")
void func_80A0AA3C(EnExRuppy *this, GlobalContext *globalCtx) {
    this->actor.shape.rot.y = (this->actor.shape.rot.y + 1960);
    Math_SmoothScaleMaxF(&this->actor.gravity, -2.0f, 0.3f, 1.0f);
    func_80A0A820(this, globalCtx, 2, 0);
    func_80078884(NA_SE_EV_RAINBOW_SHOWER - SFX_FLAG);
    if (((DIVING_GAME != NULL) && (DIVING_GAME->actor.update != NULL)) && (((DIVING_GAME->unk_296 == 0) || (this->actor.bgCheckFlags & 0x20)) || (this->unk_156 == 0))) {
        this->unk_154 = 1;
        this->actor.speedXZ = 0.0f;
        this->actor.velocity.z = 0.0f;
        this->actor.velocity.y = 0.0f;
        this->actor.velocity.x = 0.0f;
        this->actor.gravity = 0.0f;
        func_80078914(&this->actor.projectedPos, NA_SE_EV_BOMB_DROP_WATER);
        this->actionFunc = func_80A0AB1C;
    } 
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0AB1C.s")
void func_80A0AB1C(EnExRuppy *this, GlobalContext *globalCtx) {
    s32 pad;
    f32 temp_f2;
    if (((DIVING_GAME != NULL) && (DIVING_GAME->actor.update != NULL)) && ((DIVING_GAME->unk_2A2 == 2))) {
         this->unk_154 = 0;
         this->actor.posRot.pos.x = ((Math_Rand_ZeroOne() - 0.5f) * 300.0f) + -260.0f;
         this->actor.posRot.pos.y = ((Math_Rand_ZeroOne() - 0.5f) * 200.0f) + 370.0f;
         temp_f2 =  this->unk_15A * -50.0f;
         if (!(gSaveContext.eventChkInf[3] & 0x100)) {
             temp_f2 += -500.0f;
             this->actor.posRot.pos.z = ((Math_Rand_ZeroOne() - 0.5f) * 80.0f) + temp_f2;
         } else {
             temp_f2 += -300.0f;
             this->actor.posRot.pos.z = ((Math_Rand_ZeroOne() - 0.5f) * 60.0f) + temp_f2;
         }
         //this->actor.posRot.pos.z = *temp;
         this->actionFunc = func_80A0AC88;
         this->actor.gravity = -1.0f;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0AC88.s")
void func_80A0AC88(EnExRuppy *this, GlobalContext *globalCtx) {
    //f32 sp34;
    s32 pad;
    Vec3f tempPos;

    if ((this->actor.bgCheckFlags & 0x20) && (15.0f < this->actor.waterY)) {
        tempPos = this->actor.posRot.pos;
        tempPos.y += this->actor.waterY;
        this->actor.velocity.y = -1.0f;
        this->actor.gravity = -0.2f;
        func_8002949C(globalCtx, &tempPos, 0, 0, 0, 800);
        func_80078914(&this->actor.projectedPos, NA_SE_EV_BOMB_DROP_WATER);
        this->actionFunc = func_80A0AD88;
    }
    if ((DIVING_GAME != 0) && (DIVING_GAME->actor.update != 0) && (DIVING_GAME->unk_29C == 0)) {
        this->unk_156 = 20;
        this->actionFunc = func_80A0AEE0;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0AD88.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0AEE0.s")
void func_80A0AEE0(EnExRuppy *this, GlobalContext *globalCtx) {
    this->unk_154 = this->unk_154 + 1;
    this->unk_154 = this->unk_154 & 1;
    if (this->unk_156 == 0) {
        Actor_Kill(&this->actor);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0AF24.s")
void func_80A0AF24(EnExRuppy *this, GlobalContext *globalCtx) { //Blow up big ruppe
    f32 phi_f0;
    Vec3f tempPoint1Vec;
    Vec3f tempZeroVector;
    s16 tempExplosionScale;
    s16 tempExplosionScaleStep;

    tempPoint1Vec = sPoint1Vec;
    tempZeroVector = sZeroVector;

    phi_f0 = 50.0f;
    if (this->unk_152 == 2) {
        phi_f0 = 30.0f;
    }
    if (this->actor.xyzDistFromLinkSq < SQ(phi_f0)) {
        if (this->actor.attachedA != 0) {
            if (this->actor.attachedA->update != 0) {
                DIVING_GAME->transitionDrawTable[15].z = (u16)1;
            }
        } else {
            //That idiot! error
            osSyncPrintf("\x1b[32m☆☆☆☆☆ そ、そんなばかな！エラー！！！！！ ☆☆☆☆☆ \n\x1b[m");
        }
        //Stupid!
        osSyncPrintf("\x1b[32m☆☆☆☆☆ バカめ！ ☆☆☆☆☆ \n\x1b[m");
        tempExplosionScale = 100;
        tempExplosionScaleStep = 30;
        if (this->unk_152 == 2) {
            tempExplosionScale = 20;
            tempExplosionScaleStep = 6;
        }
        EffectSsBomb2_SpawnLayered(globalCtx, &this->actor.posRot, &tempZeroVector, &tempPoint1Vec, tempExplosionScale, tempExplosionScaleStep);
        func_8002F71C(globalCtx, &this->actor, 2.0f, this->actor.yawTowardsLink, 0.0f);
        Audio_PlayActorSound2(&this->actor, NA_SE_IT_BOMB_EXPLOSION);
        Actor_Kill(&this->actor);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0B070.s")
void func_80A0B070(EnExRuppy *this, GlobalContext *globalCtx) {
    f32 temp = 30.0f;
    if (this->actor.xyzDistFromLinkSq < SQ(temp)) {
        func_80078884(NA_SE_SY_GET_RUPY);
        Item_DropCollectible(globalCtx, &this->actor.posRot, (D_80A0B320[this->unk_150] | 0x8000));
        Actor_Kill(&this->actor);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/func_80A0B0F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/EnExRuppy_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ex_Ruppy/EnExRuppy_Draw.s")
