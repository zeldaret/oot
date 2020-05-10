#include "z_door_warp1.h"

#define FLAGS 0x00000000

#define THIS ((DoorWarp1*)thisx)

void DoorWarp1_Init(Actor* thisx, GlobalContext* globalCtx);
void DoorWarp1_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DoorWarp1_Update(Actor* thisx, GlobalContext* globalCtx);
void DoorWarp1_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80998780(DoorWarp1* this, DoorWarp1ActionFunc func);

void func_809991C8(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999214(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999348(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999410(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999428(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999508(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999580(DoorWarp1* this, GlobalContext* globalCtx);
void func_809995D4(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999724(DoorWarp1* this, GlobalContext* globalCtx);
void func_809999A0(DoorWarp1* this, GlobalContext* globalCtx);
void func_809998A4(DoorWarp1* this, GlobalContext* globalCtx);
 s32 func_80999938(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999A68(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999E64(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999EE0(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999FE4(DoorWarp1* this, GlobalContext* globalCtx);
void func_8099A098(DoorWarp1* this, GlobalContext* globalCtx);
void func_8099A3A4(DoorWarp1* this, GlobalContext* globalCtx);
void func_8099A46C(DoorWarp1* this, GlobalContext* globalCtx);
void func_8099A508(DoorWarp1* this, GlobalContext* globalCtx);
void func_8099A5EC(DoorWarp1* this, GlobalContext* globalCtx);
void func_8099AEE4(DoorWarp1* this, GlobalContext* globalCtx);
void func_8099B014(DoorWarp1* this, GlobalContext* globalCtx);
void func_8099B020(DoorWarp1* this, GlobalContext* globalCtx);
void func_8099B5EC(DoorWarp1* this, GlobalContext* globalCtx);


const ActorInit Door_Warp1_InitVars =
{
    ACTOR_DOOR_WARP1,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_WARP1,
    sizeof(DoorWarp1),
    (ActorFunc)DoorWarp1_Init,
    (ActorFunc)DoorWarp1_Destroy,
    (ActorFunc)DoorWarp1_Update,
    (ActorFunc)DoorWarp1_Draw,
};

InitChainEntry D_8099C5A0[] =
{
    ICHAIN_VEC3F_DIV1000(scale, 0x3E8, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F4, 0xFA0, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F8, 0x320, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 0xFA0, ICHAIN_STOP),
};

s16 D_8099CCA0;
s16 D_8099CCA2;

extern Gfx* D_060001A0;
extern AnimationHeader D_06001374;
extern SkeletonHeader D_06002CA8;

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80998780.s")
void func_80998780(DoorWarp1* this, DoorWarp1ActionFunc func) {
    this->actionFunc = func;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/DoorWarp1_Init.s")
void DoorWarp1_Init(Actor* thisx, GlobalContext* globalCtx) {
    DoorWarp1* this = THIS;
    GlobalContext* localGlobal = globalCtx;

    this->unk_1B8 = 0;
    this->unk_1B4 = 0.0f;
    Actor_ProcessInitChain(&this->actor, D_8099C5A0);
    ActorShape_Init(&this->actor.shape, 0, NULL, 0);
    if (this->actor.params != 2 && this->actor.params != -2 && this->actor.params != 4 && this->actor.params != 6) {

        Lights_InitType0PositionalLight(&this->unk_1C8, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
        this->unk_1C4 = Lights_Insert(localGlobal, &localGlobal->lightCtx, &this->unk_1C8);

        Lights_InitType0PositionalLight(&this->unk_1DC, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
        this->unk_1D8 = Lights_Insert(localGlobal, &localGlobal->lightCtx, &this->unk_1DC);
    }
    osSyncPrintf("\nBOSSWARP arg_data=[%d]", this->actor.params);
    func_80999508(this, localGlobal);
}

#ifdef NON_MATCHING
// Regalloc
void DoorWarp1_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    DoorWarp1* this;
    LightingContext* lightCtx;
    u8 i;

    this = THIS;
    lightCtx = &globalCtx->lightCtx;
    Lights_Remove(globalCtx, lightCtx, this->unk_1C4);
    Lights_Remove(globalCtx, lightCtx, this->unk_1D8);
    for (i=0;i<3;i+=1) {
        globalCtx->envCtx.unk_8C[i+0] = globalCtx->envCtx.unk_8C[i+6] = globalCtx->envCtx.unk_8C[i+3] = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/DoorWarp1_Destroy.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099898C.s")
/*void func_8099898C(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player;

    player = PLAYER;

    this->unk_1AC = 0;
    this->unk_1AE = -0x8C;
    this->unk_1B0 = -0x50;
    D_8099CCA0 = 0x64;
    this->unk_1BC = 1.0f;
    this->unk_1A0 = 0.0f;
    this->unk_1A4 = 0.0f;
    this->unk_1A8 = 0.0f;
    switch (this->actor.params + 0xFFFC) {
        case 0:
        case 4:
        case 5:
        case 6:
            this->unk_194 = 0.230000004172f;
            this->unk_198 = 0.230000004172f;
            break;
        case 2:
            this->unk_194 = 0.0f;
            this->unk_198 = 0.0f;
            break;
        case 3:
            this->unk_1AC = 0x64;
            this->unk_1AE = 0x78;
            this->unk_1B0 = 0xE6;
            this->unk_194 = 0.300000011921f;
            this->unk_198 = 0.300000011921f;
            break;
        case 1:
            this->unk_194 = 0.300000011921f;
            this->unk_198 = 0.300000011921f;
            break;
    }
    this->unk_19C = 0.0f;
    this->actor.shape.unk_08 = 1.0f;
    this->unk_192 = 0;
    switch (this->actor.params + 0xFFFF) {
        case 2:
        case 4:
        case 6:
            Lights_InitType0PositionalLight(&this->unk_1C8, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0xC8, 0xFF, 0xFF, 0xFF);
            Lights_InitType0PositionalLight(&this->unk_1DC, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0xC8, 0xFF, 0xFF, 0xFF);
            break;
        case 0:
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 9:
            if (this->actor.params == 1) {
                func_80998780(this, func_80999580);
                return;
            }
            break;
    }
    if (this->actor.params == 6) {
        switch (gSaveContext.entrance_index) {
            case 0x0608:
            case 0x0564:
            case 0x060C:
            case 0x0610:
            case 0x0850:
                if ((player->actor.params & 0xF00) != 0x200) {
                    Actor_Kill(&this->actor);
                }
                break;
            default:
                if (gSaveContext.scene_setup_index >= 4) {
                    if ((player->actor.params & 0xF00) != 0x200) {
                        Actor_Kill(&this->actor);
                    }
                } else {
                    Actor_Kill(&this->actor);
                }
                break;
        }
    } else if (this->actor.params == 7) {
        func_80998780(this, func_8099B020);
    } else {
        func_80998780(this, func_80999724);
    }
}*/

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80998C90.s")
void func_80998C90(DoorWarp1* this, GlobalContext* globalCtx) {
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06002CA8, &D_06001374, NULL, NULL, 0);
    SkelAnime_ChangeAnimImpl(&this->skelAnime, &D_06001374, 1.0f, 1.0f, 1.0f, 2, 40.0f, 1);
    this->unk_1AC = 0;
    this->unk_1AE = -0x8C;
    this->unk_1B0 = -0x50;
    D_8099CCA0 = 0xA0;
    this->actor.shape.unk_08 = -400.0f;
    this->unk_192 = 0;
    this->unk_1BC = 1.0f;
    this->unk_194 = 0.300000011921f;
    this->unk_198 = 0.300000011921f;
    this->unk_1A0 = 0.0f;
    this->unk_1A4 = 0.0f;
    this->unk_1A8 = 0.0f;
    this->unk_19C = 0.0f;
    Lights_InitType0PositionalLight(&this->unk_1C8, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0xC8, 0xFF, 0xFF, 0xFF);
    Lights_InitType0PositionalLight(&this->unk_1DC, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0xC8, 0xFF, 0xFF, 0xFF);
    func_80998780(this, func_8099A3A4);
}

#ifdef NON_MATCHING
// Stack only
void func_80998E5C(DoorWarp1* this, GlobalContext* globalCtx) {
    s16 i;
    SkelAnime* skelAnime;

    skelAnime = &this->skelAnime;
    SkelAnime_Init(globalCtx, skelAnime, &D_06002CA8, &D_06001374, NULL, NULL, 0);
    SkelAnime_ChangeAnimImpl(skelAnime, &D_06001374, 0, SkelAnime_GetFrameCount(&D_06001374), SkelAnime_GetFrameCount(&D_06001374), 2, 0.0f, 1);
    this->skelAnime.animCurrentFrame = SkelAnime_GetFrameCount(&D_06001374);
    this->unk_1AC = (u16)0xA;
    this->unk_1AE = (u16)0x78;
    this->unk_1B0 = (u16)0xE6;
    this->unk_192 = (u16)0;
    this->unk_194 = 0.300000011921f;
    this->unk_198 = 0.300000011921f;
    this->unk_1A0 = 0.0f;
    this->unk_1A4 = 0.0f;
    this->unk_1A8 = 0.0f;
    this->unk_19C = 0.0f;
    this->unk_1BC = 1.0f;
    this->actor.shape.unk_08 = 800.0f;

    for (i=0;i<3;i+=1)
    {
        globalCtx->envCtx.unk_8C[i+0] =  globalCtx->envCtx.unk_8C[i+6] = globalCtx->envCtx.unk_8C[i+3] = -0xFF;
    }
    globalCtx->envCtx.unk_9E = -0x1F4;

    this->unk_192 = (u16)0x1E;
    this->unk_1B8 = (u16)0xFA0;
    func_80998780(this, func_809991C8);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80998E5C.s")
#endif

#ifdef NON_MATCHING
// Regalloc, stack, not inefficient use of 1.0f
void func_80998FF4(DoorWarp1* this, GlobalContext* globalCtx) {
    SkelAnime* sp34;
    s32 pad;
    s32 pad1;

    sp34 = &this->skelAnime;
    SkelAnime_Init(globalCtx, sp34, &D_06002CA8, &D_06001374, 0, 0, 0);
    SkelAnime_ChangeAnimImpl(sp34, &D_06001374, 0, SkelAnime_GetFrameCount(&D_06001374), SkelAnime_GetFrameCount(&D_06001374), 2, 0.0f, 1);
    this->skelAnime.animCurrentFrame = SkelAnime_GetFrameCount(&D_06001374);
    this->unk_1AE = (u16)0x78;
    this->unk_1B0 = (u16)0xE6;
    this->unk_192 = (u16)0xC8;
    this->unk_1B8 = (u16)0xFA0;
    this->actor.scale.x = 1.0f;
    this->actor.scale.y = 1.0f;
    this->actor.scale.z = 1.0f;
    this->unk_194 = 0.300000011921f;
    this->unk_198 = 0.300000011921f;
    this->unk_1A0 = 0.0f;
    this->unk_1A4 = 0.0f;
    this->unk_1A8 = 0.0f;
    this->unk_19C = 0.0f;
    this->unk_1BC = 1.0f;
    this->actor.shape.unk_08 = 800.0f;
    if (gSaveContext.entranceIndex != 0x0053) {
        this->actor.scale.x = 0.0498999990523f;
        this->actor.scale.y = 0.0769999995828f;
        this->actor.scale.z = 0.0900000035763f;
        this->unk_1A8 = 255.0f;
    } else {
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_SHUT_BY_CRYSTAL);
    }
    func_80998780(this, func_80999428);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80998FF4.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999194.s")
void func_80999194(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    player->actor.velocity.y = 0.0f;
    player->actor.posRot.pos.x = this->actor.posRot.pos.x;
    player->actor.posRot.pos.y = this->actor.posRot.pos.y + 55.0f;
    player->actor.posRot.pos.z = this->actor.posRot.pos.z;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_809991C8.s")
void func_809991C8(DoorWarp1* this, GlobalContext* globalCtx) {
    if (this->unk_192 != 0) {
        this->unk_192 -= 1;
    } else {
        func_80998780(this, func_80999214);
    }
    func_80999194(this, globalCtx);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999214.s")
void func_80999214(DoorWarp1* this, GlobalContext* globalCtx) {
    f32 temp_f0;
    s32 temp_f4;
    s32 temp_v1;
    void *temp_v0;
    f32 phi_f0;
    s32 phi_v1;
    s16 i;

    Math_SmoothScaleMaxMinF(&this->unk_1A8, 255.0f, 0.20000000298f, 5.0f, 0.10000000149f);
    phi_f0 = (f32) (0x28 - this->unk_192) / 40.0f;
    if (phi_f0 < 0.0f) {
        phi_f0 = 0.0f;
    }

    temp_f4 = (s32) (-255.0f * phi_f0);
    for (i = 0; i < 3; i++)
    {
        globalCtx->envCtx.unk_8C[i+0] = globalCtx->envCtx.unk_8C[i+6] = globalCtx->envCtx.unk_8C[i+3] = temp_f4;
    }
    globalCtx->envCtx.unk_9E = (s16) (-500.0f * phi_f0); //problems here

    this->unk_192 += 1;
    if (phi_f0 <= 0.0f) {
        func_80998780(this, func_80999348);
    }
    this->actor.shape.rot.y += 0x320;
    func_80999194(this, globalCtx);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999348.s")
void func_80999348(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player;

    player = PLAYER;
    func_80999194(this, globalCtx);
    if (this->unk_192 == 0) {
        Math_SmoothScaleMaxMinF(&this->unk_1A8, 0, 0.10000000149f, 4.0f, 1.0f);
        if (this->unk_1A8 <= 150.0f) {
            player->actor.gravity = -0.10000000149f;
        }
        if (this->unk_1A8 <= 0.0f) {
            func_80998780(this, func_80999410);
        }
    } else {
        this->unk_192 -= 1;
    }
    this->actor.shape.rot.y += 0x320;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999410.s")
void func_80999410(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    player->actor.gravity = -0.10000000149f;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999428.s")
void func_80999428(DoorWarp1* this, GlobalContext* globalCtx) {
    if (this->unk_192 != 0) {
        this->unk_192 -= 1;
        Math_SmoothScaleMaxMinF(&this->actor.scale.x, 0.0498999990523f, 0.20000000298f, 0.0500000007451f, 0.0010000000475f);
        Math_SmoothScaleMaxMinF(&this->actor.scale.y, 0.0769999995828f, 0.20000000298f, 0.0500000007451f, 0.0010000000475f);
        Math_SmoothScaleMaxMinF(&this->actor.scale.z, 0.0900000035763f, 0.20000000298f, 0.0500000007451f, 0.0010000000475f);
        Math_SmoothScaleMaxMinF(&this->unk_1A8, 255.0f, 0.20000000298f, 5.0f, 0.10000000149f);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999508.s")
void func_80999508(DoorWarp1* this, GlobalContext* globalCtx) {
    switch (this->actor.params + 2) {
        case 2: //won't be a jump table if default
        case 3:
        case 4:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
            func_8099898C(this, globalCtx);
            break;
        case 1:
            func_80998C90(this, globalCtx);
            break;
        case 0:
            func_80998E5C(this, globalCtx);
            break;
        case 5:
            func_80998FF4(this, globalCtx);
            break;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999580.s")
void func_80999580(DoorWarp1* this, GlobalContext* globalCtx) {
    if (Flags_GetTempClear(globalCtx, this->actor.room) != 0) {
        this->unk_192 = 200;
        Audio_SetBGM(0x21);
        func_80998780(this, &func_809995D4);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_809995D4.s")
void func_809995D4(DoorWarp1* this, GlobalContext* globalCtx) {
    u16 phi_v0;
    u16 phi_return;

    if (this->unk_192 == 0) {
        if (this->actor.xzDistanceFromLink < 100.0f) {
            this->actor.posRot.pos.x = -98.0f;
            this->actor.posRot.pos.y = 827.0f;
            this->actor.posRot.pos.z = -3228.0;
        }
        Lights_InitType0PositionalLight(&this->unk_1C8, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0xC8, 0xFF, 0xFF, 0xFF);
        Lights_InitType0PositionalLight(&this->unk_1DC, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0xC8, 0xFF, 0xFF, 0xFF);
        func_80998780(this, func_80999724);
    }
    this->unk_192 -= 1;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999724.s")
void func_80999724(DoorWarp1* this, GlobalContext* globalCtx) {
    Audio_PlayActorSound2(&this->actor, 0x2025);
    Math_SmoothScaleMaxMinF(&this->unk_1A0, 255.0f, 0.40000000596f, 10.0f, 0.00999999977648f);
    Math_SmoothScaleMaxMinF(&this->unk_1A4, 255.0f, 0.40000000596f, 10.0f, 0.00999999977648f);
    if (4 != this->actor.params && this->actor.params != 8 && this->actor.params != 9 && this->actor.params != 0xA) {
        if (this->unk_1AC < 0x64) {
            this->unk_1AC += 2;
        }
        if (this->unk_1AE < 0x78) {
            this->unk_1AE += 4;
        }
        if (this->unk_1B0 < 0xE6) {
            this->unk_1B0 += 4;
        } else {
            if (this->actor.params == 5) {
                func_80998780(this, func_80999E64);
            } else if (this->actor.params != 2 && 4 != this->actor.params) {
                func_80998780(this, func_809999A0);
            } else {
                func_80998780(this, func_809998A4);
            }
        }
    } else {
        if (this->unk_1AE < -0x32) {
            this->unk_1AE += 4;
        }
        if (this->unk_1B0 < 0x46) {
            this->unk_1B0 += 4;
        } else {
            func_80998780(this, func_809998A4);
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_809998A4.s")
void func_809998A4(DoorWarp1* this, GlobalContext* globalCtx) {
    if (this->unk_1A0 != 0.0f) {
        Audio_PlayActorSound2(&this->actor, 0x2025);
    }
    Math_SmoothScaleMaxMinF(&this->unk_1A0, 0, 0.10000000149f, 2.0f, 0.00999999977648f);
    Math_SmoothScaleMaxMinF(&this->unk_1A4, 0, 0.10000000149f, 2.0f, 0.00999999977648f);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999938.s")
s32 func_80999938(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player;
    s32 phi_v1;

    player = PLAYER;
    phi_v1 = 0;
    if (fabsf(this->actor.xzDistanceFromLink) < 60.0f && 
        (player->actor.posRot.pos.y - 20.0f) < this->actor.posRot.pos.y &&
        this->actor.posRot.pos.y < (player->actor.posRot.pos.y + 20.0f)) {
        phi_v1 = 1;
    }
    return phi_v1;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_809999A0.s")
void func_809999A0(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player;

    Audio_PlayActorSound2(&this->actor, 0x2025);
    if (func_80999938(this, globalCtx) != 0) {
        player = PLAYER;
        Audio_PlaySoundGeneral(0x2826, &player->actor.unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800800F8(globalCtx, 0x25E7, 0x3E7, &this->actor, 0);
        func_8002DF54(globalCtx, &this->actor, 10);
        player->unk_450.x = this->actor.posRot.pos.x;
        player->unk_450.z = this->actor.posRot.pos.z;
        this->unk_1B2 = (u16)1;
        func_80998780(this, func_80999A68);
    }
}

#ifdef NON_MATCHING
void func_80999A68(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player;

    player = PLAYER;
    if (this->unk_1B2 >= 0x65) {
        if (player->actor.velocity.y < 10.0f) {
            player->actor.gravity = 0.10000000149f;
        } else {
            player->actor.gravity = 0.0f;
        }
    } else {
        this->unk_1B2 += 1;
    }
    Math_SmoothScaleMaxMinF(&this->unk_1A0, 0, 0.20000000298f, 6.0f, 0.00999999977648f);
    this->unk_192 += 1;
    if (D_8099CCA0 < (this->unk_192 & 0xFFFF)) {
        //u16 temp;
        //temp = gSaveContext.nextCutsceneIndex;
        if (gSaveContext.nextCutsceneIndex == 0xFFEF) {
            // It's time for me
            osSyncPrintf("\n\n\nじかんがきたからおーしまい fade_direction=[%d]", globalCtx->sceneLoadFlag, 0x14);
            if (globalCtx->sceneNum == 0x12) {
                if (Flags_GetEventChkInf(37) == 0) {
                    Flags_SetEventChkInf(37);
                    Item_Give(globalCtx, 0x6D);
                    globalCtx->nextEntranceIndex = 0x013D;
                    gSaveContext.nextCutsceneIndex = 0xFFF1;
                } else {
                    globalCtx->nextEntranceIndex = 0x047A;
                    gSaveContext.nextCutsceneIndex = 0;
                }
            } else {
                if (globalCtx->sceneNum == 0x11) {
                    if (Flags_GetEventChkInf(7) == 0) {
                        Flags_SetEventChkInf(7);
                        Flags_SetEventChkInf(9);
                        Item_Give(globalCtx, 0x6C);
                        globalCtx->nextEntranceIndex = 0x00EE;
                        gSaveContext.nextCutsceneIndex = 0xFFF1;
                    } else {
                        globalCtx->nextEntranceIndex = 0x0457;
                        gSaveContext.nextCutsceneIndex = 0;
                    }
                } else {
                    if (globalCtx->sceneNum == 0x13) {
                        globalCtx->nextEntranceIndex = 0x010E;
                        gSaveContext.nextCutsceneIndex = 0;
                    }
                }
            }
            // End
            osSyncPrintf("\n\n\nおわりおわり");
            globalCtx->sceneLoadFlag = 0x14;
            globalCtx->fadeTransition = 7;
            gSaveContext.nextTransition = 3;
        }
    }
    Math_ApproxF(&this->unk_194, 2.0f, 0.00999999977648f);
    Math_ApproxF(&this->unk_198, 10.0f, 0.019999999553f);
    //Lights_InitType0PositionalLight(&this->unk_1C8, (s16)(player->actor.posRot.pos.x + 10.0f), (s16)(player->actor.posRot.pos.y + 10.0f), (s16)(player->actor.posRot.pos.z + 10.0f), 0xEB, 0xFF, 0xFF, 0xFF);
    //Lights_InitType0PositionalLight(&this->unk_1DC, (s16)(player->actor.posRot.pos.x - 10.0f), (s16)(player->actor.posRot.pos.y - 10.0f), (s16)(player->actor.posRot.pos.z - 10.0f), 0xEB, 0xFF, 0xFF, 0xFF);
    Lights_InitType0PositionalLight(&this->unk_1C8, (s32) ((f32) ((s32) ((s32) player->actor.posRot.pos.x << 0x10) >> 0x10) + 10.0f), (s32) ((f32) ((s32) ((s32) player->actor.posRot.pos.y << 0x10) >> 0x10) + 10.0f), (s32) ((f32) ((s32) ((s32) player->actor.posRot.pos.z << 0x10) >> 0x10) + 10.0f), 0xEB, 0xFF, 0xFF, 0xFF);
    Lights_InitType0PositionalLight(&this->unk_1DC, (s32) ((f32) ((s32) ((s32) player->actor.posRot.pos.x << 0x10) >> 0x10) - 10.0f), (s32) ((f32) ((s32) ((s32) player->actor.posRot.pos.y << 0x10) >> 0x10) - 10.0f), (s32) ((f32) ((s32) ((s32) player->actor.posRot.pos.z << 0x10) >> 0x10) - 10.0f), 0xEB, 0xFF, 0xFF, 0xFF);
    Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, 0.0f, 0.5f, 2.0f, 0.10000000149f);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999A68.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999E64.s")
void func_80999E64(DoorWarp1* this, GlobalContext* globalCtx) {
    Audio_PlayActorSound2(&this->actor, 0x2025);
    if (this->unk_1EC != 0 && func_80999938(this, globalCtx) != 0) {
        this->unk_1EC = 2;
        func_8002DF54(globalCtx, &this->actor, 10);
        this->unk_1B2 = (u16)1;
        func_80998780(this, func_80999EE0);
    }
}

#ifdef NON_MATCHING
// Single regalloc
void func_80999EE0(DoorWarp1* this, GlobalContext* globalCtx) {
    Vec3f vec1;
    Vec3f vec2;
    Player* player;

    player = PLAYER;
    if (this->unk_1EC == 3) {
        Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
        D_8099CCA2 = Gameplay_CreateSubCamera(globalCtx);
        Gameplay_ChangeCameraStatus(globalCtx, D_8099CCA2, 7);
        vec1.x = this->actor.posRot.pos.x;
        vec1.y = 49.0f;
        vec1.z = this->actor.posRot.pos.z;
        vec2.x = player->actor.posRot.pos.x;
        vec2.y = 43.0f;
        vec2.z = player->actor.posRot.pos.z;
        func_800C04D8(globalCtx, D_8099CCA2, &vec1, &vec2);
        func_800C0704(globalCtx, D_8099CCA2, 90.0f);
        this->unk_1EC = 4;
        func_8010B680(globalCtx, 0x4022, 0);
        func_80998780(this, func_80999FE4);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999EE0.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80999FE4.s")
void func_80999FE4(DoorWarp1* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 0) {
        Audio_PlaySoundGeneral(0x2826, &this->actor.unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800800F8(globalCtx, 0x25E9, 0x3E7, &this->actor, 0);
        func_800C078C(globalCtx, -1, D_8099CCA2);
        Gameplay_ChangeCameraStatus(globalCtx, D_8099CCA2, 1);
        this->unk_1EC = 5;
        func_80998780(this, func_8099A098);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099A098.s")
/* void func_8099A098(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player;

    player = PLAYER;
    if (this->unk_1B2 >= 0x3D) {
        player->actor.gravity = (player->actor.velocity.y < 10.0f) ? 0.019999999553f : 0.0f;
    } else {
        this->unk_1B2 += 1;
    }
    Math_SmoothScaleMaxMinF(&this->unk_1A0, 0.0f, 0.20000000298f, 6.0f, 0.00999999977648f);
    this->unk_192 += 1;
    if (D_8099CCA0 < (this->unk_192 & 0xFFFF) && gSaveContext.nextCutsceneIndex == 0xFFEF) {
        gSaveContext.eventChkInf[3] |= 0x80;
        Item_Give(globalCtx, 0x6E);
        globalCtx->nextEntranceIndex = 0x010E;
        gSaveContext.nextCutsceneIndex = 0xFFF0;
        globalCtx->sceneLoadFlag = 0x14;
        globalCtx->fadeTransition = 7;
    }
    Math_ApproxF(&this->unk_194, 2.0f, 0.00999999977648f);
    Math_ApproxF(&this->unk_198, 10.0f, 0.019999999553f);
    Lights_InitType0PositionalLight(&this->unk_1C8, (s16)player->actor.posRot.pos.x + 10.0f, (s16)player->actor.posRot.pos.y + 10.0f, (s16)player->actor.posRot.pos.z + 10.0f, 0xEB, 0xFF, 0xFF, 0xFF);
    Lights_InitType0PositionalLight(&this->unk_1DC, (s16)player->actor.posRot.pos.x - 10.0f, (s16)player->actor.posRot.pos.y - 10.0f, (s16)player->actor.posRot.pos.z - 10.0f, 0xEB, 0xFF, 0xFF, 0xFF);
    Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, 0, 0.5f, 2.0f, 0.10000000149f);
} */

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099A3A4.s")
void func_8099A3A4(DoorWarp1* this, GlobalContext* globalCtx) {
    Audio_PlayActorSound2(&this->actor, 0x2025);
    Math_SmoothScaleMaxMinF(&this->unk_1A0, 255.0f, 0.20000000298f, 2.0f, 0.10000000149f);
    Math_SmoothScaleMaxMinF(&this->unk_1A4, 255.0f, 0.20000000298f, 2.0f, 0.10000000149f);
    if (this->unk_1AC < 10) {
        this->unk_1AC += 2;
    }
    if (this->unk_1AE < 120) {
        this->unk_1AE += 4;
    }
    if (this->unk_1B0 < 230) {
        this->unk_1B0 += 4;
        return;
    }
    func_80998780(this, func_8099A46C);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099A46C.s")
void func_8099A46C(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player;

    Audio_PlayActorSound2(&this->actor, 0x2025);
    if (func_80999938(this, globalCtx) != 0) {
        player = PLAYER;
        func_800800F8(globalCtx, 9704, 999, &this->actor, 0);
        func_8002DF54(globalCtx, &this->actor, 10);
        player->unk_450.x = this->actor.posRot.pos.x;
        player->unk_450.z = this->actor.posRot.pos.z;
        this->unk_1B2 = (u16)20;
        func_80998780(this, &func_8099A508);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099A508.s")
void func_8099A508(DoorWarp1* this, GlobalContext* globalCtx) {
    UNK_PTR animation;
    s16 pad;
    s16 frames;
    Player* player;

    animation = &D_06001374;
    player = PLAYER;
    if (this->unk_1B2 != 0) {
        this->unk_1B2 -= (s16)1;
    } else {
        Audio_PlaySoundGeneral(NA_SE_EV_LINK_WARP, &player->actor.unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        //function starting on the same line matches, doesn't match otherwise.
        frames = (s16) SkelAnime_GetFrameCount(animation); SkelAnime_ChangeAnimImpl(&this->skelAnime, 
                animation, 1.0f, (f32) frames, (f32) SkelAnime_GetFrameCount(animation), 2, 40.0f, 1);
        this->unk_1B2 = (u16)0x32;
        func_80998780(this, &func_8099A5EC);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099A5EC.s")
/*void func_8099A5EC(DoorWarp1* this, GlobalContext* globalCtx) {
    s32 i;
    void *sp34;
    f32 temp_f0;
    f32 temp_f0_2;
    s32 temp_f10;
    s32 temp_v1_7;
    u16 temp_t7;
    u16 temp_v0;
    void *temp_a1;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *temp_v1_6;
    u32 phi_v0;
    void *phi_v1;
    u16 phi_v0_2;
    f32 phi_f0;
    void *phi_t0;
    s32 phi_v1_2;

    Player* player;

    player = PLAYER;
    if (this->unk_1B2 != 0) {
        this->unk_1B2 += 0xFFFF;
    }
    if (this->unk_1B2 < 0x1F) {
        if (gSaveContext.link_age == 0) {
            phi_v0 = 35;
        } else {
            phi_v0 = 45;
        }
        if ((player->actor.posRot.pos.y - this->actor.posRot.pos.y) <= (f32) (u32) phi_v0) {
            player->actor.gravity = 0.0139999995008f;
        } else {
            player->actor.gravity = 0.0f;
            player->actor.velocity.y = 0.0f;
        }
        if (this->unk_1B2 <= 0) {
            if (this->unk_1B8 < 0xFA0) {
                this->unk_1B8 += 0x28;
            }
            player->actor.posRot.rot.y -= this->unk_1B8;
            player->actor.shape.rot.y -= this->unk_1B8;
        }
        Math_SmoothScaleMaxMinF(&player->actor.posRot.pos.x, this->actor.posRot.pos.x, 0.5f, 0.10000000149f, 0.00999999977648f);
        Math_SmoothScaleMaxMinF(&player->actor.posRot.pos.z, this->actor.posRot.pos.z, 0.5f, 0.10000000149f, 0.00999999977648f);
    }
    this->unk_192 += 1;
    phi_v0_2 = this->unk_192 & 0xFFFF;
    if (D_8099CCA0 < phi_v0_2) {
        if (gSaveContext.next_cutscene_index == 0xFFEF) {
            if (globalCtx->sceneNum == 0x14) {
                if ((gSaveContext.event_chk_inf[4] & 0x100) == 0) {
                    gSaveContext.event_chk_inf[4] |= 0x100;
                    Item_Give(globalCtx, 0x66);
                    globalCtx->nextEntranceIndex = (u16)0x6B;
                    gSaveContext.next_cutscene_index = (u16)0;
                    gSaveContext.chamber_cutscene_num = (u8)0;
                } else {
                    if (gSaveContext.link_age != 0) {
                        globalCtx->nextEntranceIndex = (u16)0x600;
                    } else {
                        globalCtx->nextEntranceIndex = (u16)0x608;
                    }
                    gSaveContext.next_cutscene_index = (u16)0U;
                }
            } else {
                if (globalCtx->sceneNum == 0x15) {
                    if ((gSaveContext.event_chk_inf[4] & 0x200) == 0) {
                        gSaveContext.event_chk_inf[4] |= 0x200;
                        Item_Give(globalCtx, 0x67);
                        globalCtx->nextEntranceIndex = (u16)0xDB;
                        gSaveContext.next_cutscene_index = (u16)0xFFF3;
                    } else {
                        if (gSaveContext.link_age != 0) {
                            globalCtx->nextEntranceIndex = (u16)0x4F6;
                        } else {
                            globalCtx->nextEntranceIndex = (u16)0x564;
                        }
                        gSaveContext.next_cutscene_index = (u16)0U;
                    }
                } else {
                    if (globalCtx->sceneNum == 0x16) {
                        if ((gSaveContext.event_chk_inf[4] & 0x400) == 0) {
                            gSaveContext.event_chk_inf[4] |= 0x400;
                            Item_Give(globalCtx, 0x68);
                            temp_v1_4 = 0x80160000 + 0xE660;
                            globalCtx->nextEntranceIndex = (u16)0x6B;
                            gSaveContext.next_cutscene_index = (u16)0;
                            gSaveContext.chamber_cutscene_num = (u8)2;
                        } else {
                            if (gSaveContext.link_age != 0) {
                                globalCtx->nextEntranceIndex = (u16)0x604;
                            } else {
                                globalCtx->nextEntranceIndex = (u16)0x60C;
                            }
                            gSaveContext.next_cutscene_index = (u16)0U;
                        }
                    } else {
                        if (globalCtx->sceneNum == 0x17) {
                            if ((*(void *)0x8012712C & globalCtx->sceneNum) == 0) {
                                Item_Give(globalCtx, 0x69);
                                globalCtx->nextEntranceIndex = (u16)0x6B;
                                gSaveContext.next_cutscene_index = (u16)0;
                                gSaveContext.chamber_cutscene_num = (u8)3;
                            } else {
                                if (gSaveContext.link_age != 0) {
                                    globalCtx->nextEntranceIndex = (u16)0x1F1;
                                } else {
                                    globalCtx->nextEntranceIndex = (u16)0x610;
                                }
                                gSaveContext.next_cutscene_index = (u16)0U;
                            }
                        } else {
                            if (gSaveContext.link_age == 0x18) {
                                if ((*(void *)0x80127130 & globalCtx->sceneNum) == 0) {
                                    Item_Give(globalCtx, 0x6A);
                                    globalCtx->nextEntranceIndex = (u16)0x6B;
                                    gSaveContext.next_cutscene_index = (u16)0;
                                    gSaveContext.chamber_cutscene_num = (u8)4;
                                } else {
                                    if (gSaveContext.link_age != 0) {
                                        globalCtx->nextEntranceIndex = (u16)0x568;
                                    } else {
                                        globalCtx->nextEntranceIndex = (u16)0x580;
                                    }
                                    gSaveContext.next_cutscene_index = (u16)0U;
                                }
                            }
                        }
                    }
                }
            }
            globalCtx->sceneLoadFlag = (u8)0x14;
            globalCtx->fadeOutTransition = (u8)3;
            gSaveContext.transition_type = (u8)7;
            phi_v0_2 = this->unk_192;
        }
    }
    if (phi_v0_2 >= 0x8D) {
        globalCtx->unk_10B05 = (u8)1;
        phi_f0 = (f32) (this->unk_192 + 0xFF74) / 20.0f;
        if (1.0f < phi_f0) {
            phi_f0 = 1.0f;
        }
        globalCtx->unk_10B06[0] = (u8)0xA0;
        globalCtx->unk_10B06[1] = (u8)0xA0;
        globalCtx->unk_10B06[2] = (u8)0xA0;
        globalCtx->unk_10B06[3] = (u32) (255.0f * phi_f0);
        osSyncPrintf("\nparcent=[%f]", phi_f0);
    }
    Lights_InitType0PositionalLight(&this->unk_1C8, 
                (s32) ((s32) ((f32) ((s32) ((s32) player->actor.posRot.pos.x << 0x10) >> 0x10) + 10.0f) << 0x10) >> 0x10, 
                (s32) ((s32) ((f32) ((s32) ((s32) player->actor.posRot.pos.y << 0x10) >> 0x10) + 10.0f) << 0x10) >> 0x10, 
                (s32) ((s32) ((f32) ((s32) ((s32) player->actor.posRot.pos.z << 0x10) >> 0x10) + 10.0f) << 0x10) >> 0x10, 
                0xEB, 0xFF, 0xFF, 0xFF);
    Lights_InitType0PositionalLight(&this->unk_1DC, 
                (s32) ((s32) ((f32) ((s32) ((s32) player->actor.posRot.pos.x << 0x10) >> 0x10) - 10.0f) << 0x10) >> 0x10, 
                (s32) ((s32) ((f32) ((s32) ((s32) player->actor.posRot.pos.y << 0x10) >> 0x10) - 10.0f) << 0x10) >> 0x10, 
                (s32) ((s32) ((f32) ((s32) ((s32) player->actor.posRot.pos.z << 0x10) >> 0x10) - 10.0f) << 0x10) >> 0x10, 
                0xEB, 0xFF, 0xFF, 0xFF);
    Math_SmoothScaleMaxMinF(&this->actor.shape.unk_08, 800.0f, 0.5f, 15.0f, 0.10000000149f);
    this->actor.shape.rot.y += 0x320;
    Math_SmoothScaleMaxMinF(&this->unk_1BC, 1.12999999523f, 0.20000000298f, 0.10000000149f, 0.00999999977648f);
    Math_ApproxF(&this->unk_194, 2.0f, 0.00300000002608f);
    Math_ApproxF(&this->unk_198, 10.0f, 0.00600000005215f);
    Math_SmoothScaleMaxMinF(&this->unk_1A0, 0, 0.20000000298f, 3.0f, 0.00999999977648f);
    Math_SmoothScaleMaxMinF(&this->unk_1A4, 0, 0.20000000298f, 2.0f, 0.00999999977648f);
    Math_SmoothScaleMaxMinF(&this->unk_1A8, 255.0f, 0.10000000149f, 1.0f, 0.00999999977648f);

    temp_f0_2 = 1.0f - ((f32) (D_8099CCA0 - this->unk_192) / (f32) ((D_8099CCA0 * 0) + 0x64));
    if (0.0f < temp_f0_2) {
        temp_f10 = (s32) (-255.0f * temp_f0_2);
        for (i=0;i<3;i++)
        {
            globalCtx->unk_10AB0[i+3] = temp_f10;
            globalCtx->unk_10AB0[i+6] = temp_f10;
            globalCtx->unk_10AB0[i+0] = temp_f10;
        }
        globalCtx->unk_10AB0[9] = (s32) (-500.0f * temp_f0_2);

        if (globalCtx->unk_10AB0[9] < 0xFED4) {
            globalCtx->roomCtx.curRoom.segment = NULL;
        }
    }
}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099AEE4.s")
/*void func_8099AEE4(DoorWarp1* this, GlobalContext* globalCtx) {
    f32 temp_f4;
    f32 temp_f8;
    f32 temp_f8_2;
    s32 temp_at;
    s32 temp_v0;
    u16 temp_t7;
    f32 phi_f0;

    temp_t7 = this->unk_192 + 1;
    temp_v0 = temp_t7 & 0xFFFF;
    this->unk_192 = temp_t7;
    this->unk_194 = 5.0f;
    if (temp_v0 < 0x14) {
        temp_f8 = (f32) temp_v0;
        if (temp_v0 < 0) {
            temp_f8 += 4294967296.0f;
        }
        phi_f0 = temp_f8 / 20.0f;
    } else {
        phi_f0 = 1.0f;
        if (temp_v0 >= 0x3C) {
            temp_f8 = (f32) temp_v0;
            if (temp_v0 < 0) {
                temp_f8 += 4294967296.0f;
            }
            phi_f0 = 1.0f - ((temp_f8 - 60.0f) / 20.0f);
        }
    }
    this->unk_1A0 = 0.0f;
    temp_f8 = (f32) temp_v0;
    this->unk_1A4 = (f32) (255.0f * phi_f0);
    if (temp_v0 < 0) {
        temp_f8 += 4294967296.0f;
    }
    if (80.0f <= temp_f8) {
        this->unk_1A4 = 0.0f;
        func_80998780(this, func_8099B014);
    }
    Audio_PlayActorSound2(&this->actor, 0x2025);
}*/

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099B014.s")
void func_8099B014(DoorWarp1* this, GlobalContext* globalCtx) {
    // Empty
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099B020.s")
void func_8099B020(DoorWarp1* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxMinF(&this->unk_1A0, 128.0f, 0.20000000298f, 2.0f, 0.10000000149f);
    Math_SmoothScaleMaxMinF(&this->unk_1A4, 128.0f, 0.20000000298f, 2.0f, 0.10000000149f);
    if (128.0f <= this->unk_1A0) {
        Math_ApproxF(&this->unk_194, 2.0f, 0.00999999977648f);
        Math_ApproxF(&this->unk_198, 10.0f, 0.019999999553f);
    }
    Audio_PlayActorSound2(&this->actor, 0x2025);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/DoorWarp1_Update.s")
void DoorWarp1_Update(Actor* thisx, GlobalContext* globalCtx) {
    DoorWarp1* this = THIS;
    this->actionFunc(this, globalCtx);
    if (this->actor.params != 3) {
        Actor_SetScale(this, (f32) this->unk_1AC / 100.0f);
    }
}

#ifdef NON_MATCHING
// Regalloc, stack
void func_8099B140(DoorWarp1* this, GlobalContext* globalCtx) {
    Gfx* dispRefs[3];
    GraphicsContext* gfxCtx;

    gfxCtx = globalCtx->state.gfxCtx;
    func_800C6AC4(dispRefs, globalCtx->state.gfxCtx, "../z_door_warp1.c", 0x81E);

    func_80093D84(globalCtx->state.gfxCtx);

    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0xFF, 0xFF, 0xC8, 0xFF, 0xFF, this->unk_1A8);
    gDPSetEnvColor(gfxCtx->polyXlu.p++, 0x00, 0x64, 0xFF, this->unk_1A8);

    gfxCtx->polyXlu.p = SkelAnime_Draw2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, NULL, NULL, &this->actor, gfxCtx->polyXlu.p);

    func_800C6B54(dispRefs, globalCtx->state.gfxCtx, "../z_door_warp1.c", 0x832);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099B140.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099B33C.s")
// Multiplication won't generate multu
/* void func_8099B33C(DoorWarp1* this, GlobalContext* globalCtx) {
    Vec3f eye;
    Gfx* dispRefs[4];
    GraphicsContext* gfxCtx;

    gfxCtx = globalCtx->state.gfxCtx;
    eye.x = -(Math_Sins(globalCtx->state.frames * 200) * 120.0f) * 80.0f;
    eye.y =  (Math_Coss(globalCtx->state.frames * 200) * 120.0f) * 80.0f;
    eye.z =  (Math_Coss(globalCtx->state.frames * 200) * 120.0f) * 80.0f;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_door_warp1.c", 2122);
    func_80093D84(globalCtx->state.gfxCtx);
    func_8002EB44(&this->actor.posRot.pos, &eye, &eye, globalCtx->state.gfxCtx);

    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0xFF, 0xFF, 0xFF, this->unk_1A8);
    gDPSetEnvColor(gfxCtx->polyXlu.p++, 0x96, 0x00, 0x64, this->unk_1A8);

    gfxCtx->polyXlu.p = SkelAnime_Draw2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, NULL, NULL, &this->actor, gfxCtx->polyXlu.p);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_door_warp1.c", 2152);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
} */

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099B5EC.s")
/* void func_8099B5EC(DoorWarp1* this, GlobalContext* globalCtx) {
    s32 spEC;
    f32 spE8;
    f32 spE4;
    f32 spDC;
    GraphicsContext* gfxCtx;
    Gfx* gfxArr[4];
    void *sp94;
    void *sp90;
    void *sp8C;
    void *sp5C;
    void *sp58;
    s32 sp40;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f12_2;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_f10;
    u32 temp_a0;
    u32 temp_a0_3;
    s32 phi_t3;

    spEC = (s32) (globalCtx->state.frames * 10);
    if (1.0f <= this->unk_194) {
        spE8 = 0.0f;
    } else {
        spE8 = (f32) (1.0f - this->unk_194);
    }
    if (1.0f <= this->unk_198) {
        spE4 = 0.0f;
    } else {
        spE4 = (f32) (1.0f - this->unk_198);
    }
    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(gfxArr, gfxCtx, "../z_door_warp1.c", 0x87D);
    temp_f0 = 1.0f - (2.0f - this->unk_194) / 1.70000004768f;
    if (this->actor.params != 4 && this->actor.params != 6 && this->actor.params != 8 &&
        this->actor.params != 9 && this->actor.params != 0xA) {
        this->unk_19C += temp_f0 * 15.0f;
    }
    if (this->actor.params == 6) {
        this->unk_19C -= (temp_f0 + temp_f0);
    }
    spDC = temp_f0;
    func_80093D84(gfxCtx);
    switch (this->actor.params) {
        case 4: // yellow warp
            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, qu08(0.5), 0xFF, 0xFF, 0xFF, this->unk_1A4);
            gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xC8, 0xFF, 0x00, 0xFF);
            break;
        case 8: // orange/tan warp
            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, qu08(0.5), 0xFF, 0xFF, 0xFF, this->unk_1A4);
            gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xFF, 0x96, 0x00, 0xFF);
            break;
        case 9: // green warp
            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, qu08(0.5), 0xFF, 0xFF, 0xFF, this->unk_1A4);
            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0x00, 0xC8, 0x00, 0xFF);
            break;
        case 10: // red warp
            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, qu08(0.5), 0xFF, 0xFF, 0xFF, this->unk_1A4);
            gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xFF, 0x32, 0x00, 0xFF);
            break;
        default: // blue warp & others
            temp_a0 = (u32) (255.0f * spDC) & 0xFF;
            temp_f10 = (s32) this->unk_1A4;
            if ((ERROR(cfc1) & 0x78) != 0) {
                if ((ERROR(cfc1) & 0x78) == 0) {
                    phi_t3 = (s32) (this->unk_1A4 - 2147483648.0f) | 0x80000000;
                } else {
    loop_26:
                    phi_t3 = -1;
                }
            } else {
                phi_t3 = temp_f10;
                if (temp_f10 < 0) {
                    goto loop_26;
                }
            }
            
            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, qu08(0.5), temp_a0, 0xFF, 0xFF, phi_t3);
            gDPSetEnvColor(gfxCtx->polyXlu.p++, 0x00, temp_a0, 0xFF, 0xFF);
            break;
    }
    gDPSetColorDither(gfxCtx->polyXlu.p++, G_CD_DISABLE);
    gDPSetColorDither(gfxCtx->polyXlu.p++, G_CD_MAGICSQ);

    Matrix_Translate(this->actor.posRot.pos.x, this->actor.posRot.pos.y + 1.0f, this->actor.posRot.pos.z, 0);

    gSPSegment(gfxCtx->polyXlu.p++, 0x0A, Matrix_NewMtx(gfxCtx, "../z_door_warp1.c", 0x8C7));

    Matrix_Push();

    temp_a2 = spEC & 0xFF;
    temp_a3 = 0 - (this->unk_19C + this->unk_19C) & 0x1FF;
    gSPSegment(gfxCtx->polyXlu.p++, 0x08, Draw_TwoTexScroll(gfxCtx, 0, temp_a2, temp_a3, 0x100, 0x100, 1, temp_a2, temp_a3, 0x100, 0x100));

    Matrix_Translate(0, this->unk_194 * 230.0f, 0, 1);
    temp_f12 = (((f32) this->unk_1AE * spE8) / 100.0f) + 1.0f;
    Matrix_Scale(temp_f12, 1.0f, temp_f12, 1);
    
    gSPSegment(gfxCtx->polyXlu.p++, 0x09, Matrix_NewMtx(gfxCtx, "../z_door_warp1.c", 0x8DB));

    temp_a0_2 = D_060001A0;
    gSPDisplayList(gfxCtx->polyXlu.p++, temp_a0_2);

    sp40 = temp_a0_2;
    Matrix_Pull(temp_a0_2);
    if (0.0f < this->unk_1A0) {
        switch (this->actor.params) {
            case 4: // yellow warp
                gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, qu08(0.5), 0xFF, 0xFF, 0xFF, this->unk_1A4);
                gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xC8, 0xFF, 0x00, 0xFF);
                break;
            case 8: // orange/tan warp
                gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, qu08(0.5), 0xFF, 0xFF, 0xFF, this->unk_1A4);
                gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xFF, 0x96, 0x00, 0xFF);
                break;
            case 9: // green warp
                gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, qu08(0.5), 0x00, 0x00, 0xFF, this->unk_1A4);
                gDPSetEnvColor(gfxCtx->polyXlu.p++, 0x00, 0xC8, 0x00, 0xFF);
                break;
            case 10: // red warp
                gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, qu08(0.5), 0xFF, 0xFF, 0xFF, this->unk_1A4);
                gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xFF, 0x32, 0x00, 0xFF);
                break;
            default: // blue warp & others
                temp_a0_3 = (u32) (255.0f * spDC) & 0xFF;
                gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, qu08(0.5f), temp_a0_3, 0xFF, 0xFF, this->unk_1A0);
                gDPSetEnvColor(gfxCtx->polyXlu.p++, 0x00, temp_a0_3, 0xFF, 0xFF);
                break;
        }
        spEC *= 2;
        temp_a2_2 = spEC & 0xFF;
        temp_a3_2 = 0 - ((s32)this->unk_19C & 0x1FF);
        gSPSegment(gfxCtx->polyXlu.p++, 0x08, Draw_TwoTexScroll(gfxCtx, 0, temp_a2_2, temp_a3_2, 0x100, 0x100, 1, temp_a2_2, temp_a3_2, 0x100, 0x100));

        Matrix_Translate(0, this->unk_198 * 60.0f, 0, 1);
        temp_f12_2 = (((f32) this->unk_1B0 * spE4) / 100.0f) + 1.0f;
        Matrix_Scale(temp_f12_2, 1.0f, temp_f12_2, 1);

        gSPSegment(gfxCtx->polyXlu.p++, 0x09, Matrix_NewMtx(gfxCtx, "../z_door_warp1.c", 0x920));
        gSPDisplayList(gfxCtx->polyXlu.p++, sp40);
    }
    Graph_CloseDisps(gfxArr, gfxCtx, "../z_door_warp1.c", 2340);
} */

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/DoorWarp1_Draw.s")
void DoorWarp1_Draw(Actor* thisx, GlobalContext* globalCtx) {
    DoorWarp1* this = THIS;
    switch (this->actor.params + 2) {
        case 1:
            func_8099B140(this, globalCtx);
            func_8099B5EC(this, globalCtx);
            break;
        case 2: //won't be a jump table if default
        case 3:
        case 4:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
            func_8099B5EC(this, globalCtx);
            break;
        case 0:
            func_8099B140(this, globalCtx);
            break;
        case 5:
            func_8099B33C(this, globalCtx);
            break;
    }
}
