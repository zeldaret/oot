#include "z_door_warp1.h"

#define FLAGS 0x00000000

#define THIS ((DoorWarp1*)thisx)

void DoorWarp1_Init(Actor* thisx, GlobalContext* globalCtx);
void DoorWarp1_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DoorWarp1_Update(Actor* thisx, GlobalContext* globalCtx);
void DoorWarp1_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80999724(DoorWarp1* this, GlobalContext* globalCtx);
void func_8099AEE4(DoorWarp1* this, GlobalContext* globalCtx); 
void func_8099B020(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999580(DoorWarp1* this, GlobalContext* globalCtx);
void func_8099A3A4(DoorWarp1* this, GlobalContext* globalCtx);
void func_809991C8(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999428(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999214(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999348(DoorWarp1* this, GlobalContext* globalCtx);
void func_809995D4(DoorWarp1* this, GlobalContext* globalCtx);
void func_809998A4(DoorWarp1* this, GlobalContext* globalCtx);
void func_809999A0(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999E64(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999A68(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999EE0(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999FE4(DoorWarp1* this, GlobalContext* globalCtx);
void func_8099A098(DoorWarp1* this, GlobalContext* globalCtx);
void func_8099A46C(DoorWarp1* this, GlobalContext* globalCtx);
void func_8099A508(DoorWarp1* this, GlobalContext* globalCtx);
void func_8099A5EC(DoorWarp1* this, GlobalContext* globalCtx);
void func_8099B014(DoorWarp1* this, GlobalContext* globalCtx);
void func_80999508(DoorWarp1* this, GlobalContext* globalCtx);

const ActorInit Door_Warp1_InitVars = {
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

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 4000, ICHAIN_STOP),
};

s16 D_8099CCA0; // TODO static when matching
static s16 D_8099CCA2;

extern Gfx D_060001A0[];
extern AnimationHeader D_06001374;
extern SkeletonHeader D_06002CA8;

// DoorWarp1_SetupAction
void func_80998780(DoorWarp1* this, DoorWarp1ActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void DoorWarp1_Init(Actor* thisx, GlobalContext* globalCtx) {
    DoorWarp1* this = THIS;
    GlobalContext* globalCtx2 = globalCtx;

    this->unk_1B8 = 0;
    this->unk_1B4 = 0.0f;
    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    if (this->actor.params != 2 && this->actor.params != -2 && this->actor.params != 4 && this->actor.params != 6) {
        Lights_PointNoGlowSetInfo(&this->unk_1C8, 
                this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 
                0, 0, 0, 0);
        this->unk_1C4 = LightContext_InsertLight(globalCtx2, &globalCtx2->lightCtx, &this->unk_1C8);
        Lights_PointNoGlowSetInfo(&this->unk_1DC, 
            this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 
            0, 0, 0, 0);
        this->unk_1D8 = LightContext_InsertLight(globalCtx2, &globalCtx2->lightCtx, &this->unk_1DC);
    }
    osSyncPrintf("\nBOSSWARP arg_data=[%d]", this->actor.params);
    func_80999508(this, globalCtx2);
}

void DoorWarp1_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    u8 i;
    DoorWarp1* this = THIS;

    LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, this->unk_1C4);
    LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, this->unk_1D8);
    for (i = 0; i < 3; i++) {
        globalCtx->envCtx.unk_8C[0][i] = globalCtx->envCtx.unk_8C[2][i] = globalCtx->envCtx.unk_8C[1][i] = 0;
    }
}

void func_8099898C(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->unk_1AC = 0;
    this->unk_1AE = -0x8C;
    this->unk_1B0 = -0x50;
    D_8099CCA0 = 0x64;
    this->unk_1BC = 1.0f;
    this->unk_1A0 = 0.0f;
    this->unk_1A4 = 0.0f;
    this->alpha = 0.0f;

    switch (this->actor.params - 4) {
        case 0:
        case 4:
        case 5:
        case 6:
            this->unk_194 = 0.23f;
            this->unk_198 = 0.6f;
            break;
        case 2:
            this->unk_194 = 0.0f;
            this->unk_198 = 0.0f;
            break;
        case 3:
            this->unk_1AC = 0x64;
            this->unk_1AE = 0x78;
            this->unk_1B0 = 0xE6;
            this->unk_194 = 0.3f;
            this->unk_198 = 0.3f;
            break;
        case 1:
        default:
            this->unk_194 = 0.3f;
            this->unk_198 = 0.3f;
            break;
    }

    this->unk_19C = 0.0f;
    this->actor.shape.unk_08 = 1.0f;
    this->unk_192 = 0;

    switch (this->actor.params - 1) {
        case 2:
        case 4:
        case 6:
        default:
            Lights_PointNoGlowSetInfo(&this->unk_1C8, 
                    this->actor.posRot.pos.x, 
                    this->actor.posRot.pos.y, 
                    this->actor.posRot.pos.z, 
                    200, 255, 255, 255);
            Lights_PointNoGlowSetInfo(&this->unk_1DC, 
                    this->actor.posRot.pos.x, 
                    this->actor.posRot.pos.y, 
                    this->actor.posRot.pos.z, 
                    200, 255, 255, 255);
        case 0:
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 9:
            break;
    }

    switch (this->actor.params) {
        case 1:
            func_80998780(this, func_80999580);
            break;
        case 6:
            if ((!(gSaveContext.entranceIndex == 0x608 || // sacred forest meadow
                gSaveContext.entranceIndex == 0x564 ||  // death mountain crater
                gSaveContext.entranceIndex == 0x60C ||  // lake hylia
                gSaveContext.entranceIndex == 0x610 ||  // desert colossus
                gSaveContext.entranceIndex == 0x580) &&  // graveyard
                gSaveContext.sceneSetupIndex < 4) || (PLAYER->actor.params & 0xF00) != 0x200) {
                Actor_Kill(&this->actor);
            }
            if (func_8002DB8C(&player->actor, &this->actor) > 100.0f) {
                Actor_Kill(&this->actor);
            }
            func_80998780(this, func_8099AEE4);
            break;
        case 7:
            func_80998780(this, func_8099B020);
            break;
        default:
            func_80998780(this, func_80999724);
            break;
    }
}

void func_80998C90(DoorWarp1* this, GlobalContext* globalCtx) {
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06002CA8, &D_06001374, 0, 0, 0);
    SkelAnime_ChangeAnimImpl(&this->skelAnime, &D_06001374, 1.0f, 1.0f, 1.0f, 2, 40.0f, 1);
    this->unk_1AC = 0;
    this->unk_1AE = -0x8C;
    this->unk_1B0 = -0x50;
    D_8099CCA0 = 0xA0;
    this->actor.shape.unk_08 = -400.0f;
    this->unk_192 = 0;
    this->unk_1BC = 1.0f;
    this->unk_194 = 0.3f;
    this->unk_198 = 0.3f;
    this->unk_1A0 = 0.0f;
    this->unk_1A4 = 0.0f;
    this->alpha = 0.0f;
    this->unk_19C = 0.0f;
    Lights_PointNoGlowSetInfo(&this->unk_1C8,
            this->actor.posRot.pos.x,
            this->actor.posRot.pos.y,
            this->actor.posRot.pos.z,
            0xC8, 0xFF, 0xFF, 0xFF);
    Lights_PointNoGlowSetInfo(&this->unk_1DC,
            this->actor.posRot.pos.x,
            this->actor.posRot.pos.y,
            this->actor.posRot.pos.z,
            0xC8, 0xFF, 0xFF, 0xFF);
    func_80998780(this, func_8099A3A4);
}

void func_80998E5C(DoorWarp1* this, GlobalContext* globalCtx) {
    s16 i;

    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06002CA8, &D_06001374, 0, 0, 0);
    SkelAnime_ChangeAnimImpl(&this->skelAnime, &D_06001374, 0, 
            SkelAnime_GetFrameCount(&D_06001374.genericHeader), 
            SkelAnime_GetFrameCount(&D_06001374.genericHeader), 2, 0.0f, 1);
    this->skelAnime.animCurrentFrame = SkelAnime_GetFrameCount(&D_06001374.genericHeader);
    this->unk_1AC = 0xA;
    this->unk_1AE = 0x78;
    this->unk_1B0 = 0xE6;
    this->unk_192 = 0;
    this->unk_194 = 0.3f;
    this->unk_198 = 0.3f;
    this->unk_1A0 = 0.0f;
    this->unk_1A4 = 0.0f;
    this->alpha = 0.0f;
    this->unk_19C = 0.0f;
    this->unk_1BC = 1.0f;
    this->actor.shape.unk_08 = 800.0f;

    for (i = 0; i < 3; i++) {
        globalCtx->envCtx.unk_8C[0][i] = globalCtx->envCtx.unk_8C[2][i] = globalCtx->envCtx.unk_8C[1][i] = -0xFF;
    }

    globalCtx->envCtx.unk_9E = -0x1F4;
    this->unk_192 = 0x1E;
    this->unk_1B8 = 0xFA0;
    func_80998780(this, func_809991C8);
}

#ifdef NON_MATCHING
// Single stack difference
void func_80998FF4(DoorWarp1* this, GlobalContext* globalCtx) {
    s32 pad;

    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06002CA8, &D_06001374, NULL, NULL, 0);
    SkelAnime_ChangeAnimImpl(&this->skelAnime, &D_06001374, 0, 
        // this arg is saved and loaded from the stack when the second GetFrameCount is called, offset off by 4
            SkelAnime_GetFrameCount(&D_06001374.genericHeader),
            SkelAnime_GetFrameCount(&D_06001374.genericHeader), 2, 0.0f, 1);
    this->skelAnime.animCurrentFrame = SkelAnime_GetFrameCount(&D_06001374.genericHeader);
    this->unk_1AE = 0x78;
    this->unk_1B0 = 0xE6;
    this->unk_192 = 0xC8;
    this->unk_1B8 = 0xFA0;
    this->actor.scale.x = 1.0f;
    this->actor.scale.y = 1.0f;
    this->actor.scale.z = 1.0f;
    this->unk_194 = 0.3f;
    this->unk_198 = 0.3f;
    this->unk_1A0 = 0.0f;
    this->unk_1A4 = 0.0f;
    this->alpha = 0.0f;
    this->unk_19C = 0.0f;
    this->unk_1BC = 1.f;
    this->actor.shape.unk_08 = 800.0f;
    if (gSaveContext.entranceIndex != 0x53) {
        this->actor.scale.x = 0.0499f;
        this->actor.scale.y = 0.077f;
        this->actor.scale.z = 0.09f;
        this->alpha = 255.0f;
    } else {
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_SHUT_BY_CRYSTAL);
    }
    func_80998780(this, func_80999428);
}
#else
void func_80998FF4(DoorWarp1* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_80998FF4.s")
#endif

void func_80999194(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    player->actor.velocity.y = 0.0f;
    player->actor.posRot.pos.x = this->actor.posRot.pos.x;
    player->actor.posRot.pos.y = this->actor.posRot.pos.y + 55.0f;
    player->actor.posRot.pos.z = this->actor.posRot.pos.z;
}

void func_809991C8(DoorWarp1* this, GlobalContext* globalCtx) {
    if (this->unk_192 != 0) {
        this->unk_192--;
    } else {
        func_80998780(this, func_80999214);
    }
    func_80999194(this, globalCtx);
}

void func_80999214(DoorWarp1* this, GlobalContext* globalCtx) {
    s32 temp_f4;
    f32 phi_f0;
    s16 phi_v1;

    Math_SmoothStepToF(&this->alpha, 255.0f, 0.2f, 5.0f, 0.1f);
    phi_f0 = (f32)(0x28 - this->unk_192) / 40.0f;
    phi_f0 = CLAMP_MIN(phi_f0, 0);

    for (phi_v1 = 0; phi_v1 < 3; phi_v1++) {
        globalCtx->envCtx.unk_8C[0][phi_v1] = globalCtx->envCtx.unk_8C[2][phi_v1] = 
            globalCtx->envCtx.unk_8C[1][phi_v1] = -255.0f * phi_f0;
    }
    globalCtx->envCtx.unk_9E = -500.0f * phi_f0;

    this->unk_192++;
    if (phi_f0 <= 0) {
        func_80998780(this, func_80999348);
    }
    this->actor.shape.rot.y += 0x320;
    func_80999194(this, globalCtx);
}

void func_80999410(DoorWarp1* this, GlobalContext* globalCtx);

void func_80999348(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    func_80999194(this, globalCtx);
    if (this->unk_192 == 0) {
        Math_SmoothStepToF(&this->alpha, 0.0f, 0.1f, 4.0f, 1.0f);
        if (this->alpha <= 150.0f) {
            player->actor.gravity = -0.1f;
        }
        if (this->alpha <= 0.0f) {
            func_80998780(this, func_80999410);
        }
    } else {
        this->unk_192--;
    }
    this->actor.shape.rot.y += 0x320;
}

void func_80999410(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    player->actor.gravity = -0.1f;
}

void func_80999428(DoorWarp1* this, GlobalContext* globalCtx) {
    if (this->unk_192 != 0) {
        this->unk_192--;
        Math_SmoothStepToF(&this->actor.scale.x, 0.0499f, 0.2f, 0.05f, 0.001f);
        Math_SmoothStepToF(&this->actor.scale.y, 0.077f, 0.2f, 0.05f, 0.001f);
        Math_SmoothStepToF(&this->actor.scale.z, 0.09f, 0.2f, 0.05f, 0.001f);
        Math_SmoothStepToF(&this->alpha, 255.0f, 0.2f, 5.0f, 0.1f);
    }
}

void func_80999508(DoorWarp1* this, GlobalContext* globalCtx) {
    switch (this->actor.params + 2) {
        case 2:
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

void func_80999580(DoorWarp1* this, GlobalContext* globalCtx) {
    if (Flags_GetTempClear(globalCtx, this->actor.room)) {
        this->unk_192 = 0xC8;
        Audio_SetBGM(0x21);
        func_80998780(this, func_809995D4);
    }
}

void func_809995D4(DoorWarp1* this, GlobalContext* globalCtx) {
    if (this->unk_192 == 0) {
        if (this->actor.xzDistFromLink < 100.0f) {
            this->actor.posRot.pos.x = -98.0f;
            this->actor.posRot.pos.y = 827.0f;
            this->actor.posRot.pos.z = -3228.0f;
        }
        Lights_PointNoGlowSetInfo(&this->unk_1C8, 
                this->actor.posRot.pos.x, 
                this->actor.posRot.pos.y, 
                this->actor.posRot.pos.z, 
                0xC8, 0xFF, 0xFF, 0xFF);
        Lights_PointNoGlowSetInfo(&this->unk_1DC, 
                this->actor.posRot.pos.x, 
                this->actor.posRot.pos.y, 
                this->actor.posRot.pos.z, 
                0xC8, 0xFF, 0xFF, 0xFF);
        func_80998780(this, func_80999724);
    }
    this->unk_192--;
}

void func_80999724(DoorWarp1* this, GlobalContext* globalCtx) {
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_WARP_HOLE - SFX_FLAG);
    Math_SmoothStepToF(&this->unk_1A0, 255.0f, 0.4f, 10.0f, 0.01f);
    Math_SmoothStepToF(&this->unk_1A4, 255.0f, 0.4f, 10.0f, 0.01f);

    if (this->actor.params != 4 && this->actor.params != 8 && this->actor.params != 9 && this->actor.params != 10) {
        if (this->unk_1AC < 0x64) {
            this->unk_1AC += 2;
        }
        if (this->unk_1AE < 0x78) {
            this->unk_1AE += 4;
        }
        if (this->unk_1B0 < 0xE6) {
            this->unk_1B0 += 4;
            return;
        }
        if (this->actor.params == 5) {
            func_80998780(this, func_80999E64);
        } else if (this->actor.params != 2 && this->actor.params != 4) {
            func_80998780(this, func_809999A0);
        } else {
            func_80998780(this, func_809998A4);
        }
        return;
    }
    if (this->unk_1AE < -0x32) {
        this->unk_1AE += 4;
    }
    if (this->unk_1B0 < 0x46) {
        this->unk_1B0 += 4;
        return;
    }
    func_80998780(this, func_809998A4);
}

void func_809998A4(DoorWarp1* this, GlobalContext* globalCtx) {
    if (this->unk_1A0 != 0.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_WARP_HOLE - SFX_FLAG);
    }
    Math_SmoothStepToF(&this->unk_1A0, 0.0f, 0.1f, 2.0f, 0.01f);
    Math_SmoothStepToF(&this->unk_1A4, 0.0f, 0.1f, 2.0f, 0.01f);
}

s32 func_80999938(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 ret = false;

    if (fabsf(this->actor.xzDistFromLink) < 60.0f) {
        if ((player->actor.posRot.pos.y - 20.0f) < this->actor.posRot.pos.y) {
            if (this->actor.posRot.pos.y < (player->actor.posRot.pos.y + 20.0f)) {
                ret = true;
            }
        }
    }
    return ret;
}

void func_809999A0(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player;

    Audio_PlayActorSound2(&this->actor, NA_SE_EV_WARP_HOLE - SFX_FLAG);
    if (func_80999938(this, globalCtx) != 0) {
        player = PLAYER;
        Audio_PlaySoundGeneral(0x2826, &player->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800800F8(globalCtx, 0x25E7, 0x3E7, &this->actor, 0);
        func_8002DF54(globalCtx, &this->actor, 10);
        player->unk_450.x = this->actor.posRot.pos.x;
        player->unk_450.z = this->actor.posRot.pos.z;
        this->unk_1B2 = 1;
        func_80998780(this, func_80999A68);
    }
}

void func_80999A68(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->unk_1B2 >= 101) {
        if (player->actor.velocity.y < 10.0f) {
            player->actor.gravity = 0.1f;
        } else {
            player->actor.gravity = 0.0f;
        }
    } else {
        this->unk_1B2++;
    }
    Math_SmoothStepToF(&this->unk_1A0, 0.0f, 0.2f, 6.0f, 0.01f);
    this->unk_192++;
    if (D_8099CCA0 < this->unk_192 && gSaveContext.nextCutsceneIndex == 0xFFEF) {
        osSyncPrintf("\n\n\nじかんがきたからおーしまい fade_direction=[%d]", globalCtx->sceneLoadFlag, 0x14);
        if (globalCtx->sceneNum == 0x12) {
            if (Flags_GetEventChkInf(0x25) == 0) {
                Flags_SetEventChkInf(0x25);
                Item_Give(globalCtx, 0x6D);
                globalCtx->nextEntranceIndex = 0x13D;
                gSaveContext.nextCutsceneIndex = 0xFFF1;
            } else {
                globalCtx->nextEntranceIndex = 0x47A;
                gSaveContext.nextCutsceneIndex = 0;
            }
        } else if (globalCtx->sceneNum == 0x11) {
            if (Flags_GetEventChkInf(7) == 0) {
                Flags_SetEventChkInf(7);
                Flags_SetEventChkInf(9);
                Item_Give(globalCtx, 0x6C);
                globalCtx->nextEntranceIndex = 0xEE;
                gSaveContext.nextCutsceneIndex = 0xFFF1U;
            } else {
                globalCtx->nextEntranceIndex = 0x457;
                gSaveContext.nextCutsceneIndex = 0;
            }
        } else if (globalCtx->sceneNum == 0x13) {
            globalCtx->nextEntranceIndex = 0x10E;
            gSaveContext.nextCutsceneIndex = 0;
        }
        osSyncPrintf("\n\n\nおわりおわり");
        globalCtx->sceneLoadFlag = 0x14;
        globalCtx->fadeTransition = 7;
        gSaveContext.nextTransition = 3;
    }
    Math_StepToF(&this->unk_194, 2.0f, 0.01f);
    Math_StepToF(&this->unk_198, 10.0f, 0.02f);
    Lights_PointNoGlowSetInfo(&this->unk_1C8, 
            (s16)player->actor.posRot.pos.x + 10.0f, 
            (s16)player->actor.posRot.pos.y + 10.0f, 
            (s16)player->actor.posRot.pos.z + 10.0f, 
            0xEB, 0xFF, 0xFF, 0xFF);
    Lights_PointNoGlowSetInfo(&this->unk_1DC, 
            (s16)player->actor.posRot.pos.x - 10.0f, 
            (s16)player->actor.posRot.pos.y - 10.0f, 
            (s16)player->actor.posRot.pos.z - 10.0f, 
            0xEB, 0xFF, 0xFF, 0xFF);
    Math_SmoothStepToF(&this->actor.shape.unk_08, 0.0f, 0.5f, 2.0f, 0.1f);
}

void func_80999E64(DoorWarp1* this, GlobalContext* globalCtx) {
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_WARP_HOLE - SFX_FLAG);
    if (this->unk_1EC != 0 && func_80999938(this, globalCtx) != 0) {
        this->unk_1EC = 2;
        func_8002DF54(globalCtx, &this->actor, 10);
        this->unk_1B2 = 1;
        func_80998780(this, func_80999EE0);
    }
}

void func_80999EE0(DoorWarp1* this, GlobalContext* globalCtx) {
    Vec3f sp34;
    Vec3f sp28;
    Player* player;

    player = PLAYER;
    if (this->unk_1EC == 3) {
        Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
        D_8099CCA2 = Gameplay_CreateSubCamera(globalCtx);
        Gameplay_ChangeCameraStatus(globalCtx, D_8099CCA2, 7);
        sp34.x = this->actor.posRot.pos.x;
        sp34.y = 49.0f;
        sp34.z = this->actor.posRot.pos.z;
        sp28.x = player->actor.posRot.pos.x;
        sp28.y = 43.0f;
        sp28.z = player->actor.posRot.pos.z;
        Gameplay_CameraSetAtEye(globalCtx, D_8099CCA2, &sp34, &sp28);
        Gameplay_CameraSetFov(globalCtx, D_8099CCA2, 90.0f);
        this->unk_1EC = 4;
        func_8010B680(globalCtx, 0x4022, NULL);
        func_80998780(this, func_80999FE4);
    }
}

void func_80999FE4(DoorWarp1* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 0) {
        Audio_PlaySoundGeneral(NA_SE_EV_LINK_WARP, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800800F8(globalCtx, 0x25E9, 0x3E7, &this->actor, 0);
        Gameplay_CopyCamera(globalCtx, -1, D_8099CCA2);
        Gameplay_ChangeCameraStatus(globalCtx, D_8099CCA2, 1);
        this->unk_1EC = 5;
        func_80998780(this, func_8099A098);
    }
}

void func_8099A098(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->unk_1B2 >= 61) {
        if (player->actor.velocity.y < 10.f) {
            player->actor.gravity = 0.02f;
        } else {
            player->actor.gravity = 0.0f;
        }
    } else {
        this->unk_1B2++;
    }
    Math_SmoothStepToF(&this->unk_1A0, 0.0f, 0.2f, 6.0f, 0.01f);
    this->unk_192++;
    if (this->unk_192 > D_8099CCA0 && gSaveContext.nextCutsceneIndex == 0xFFEF) {
        gSaveContext.eventChkInf[3] |= 0x80;
        Item_Give(globalCtx, 0x6E);
        globalCtx->nextEntranceIndex = 0x10E;
        gSaveContext.nextCutsceneIndex = 0xFFF0;
        globalCtx->sceneLoadFlag = 0x14;
        globalCtx->fadeTransition = 7;
    }
    Math_StepToF(&this->unk_194, 2.0f, 0.01f);
    Math_StepToF(&this->unk_198, 10.f, 0.02f);
    Lights_PointNoGlowSetInfo(&this->unk_1C8, 
            (s16)player->actor.posRot.pos.x + 10.0f, 
            (s16)player->actor.posRot.pos.y + 10.0f, 
            (s16)player->actor.posRot.pos.z + 10.0f, 
            0xEB, 0xFF, 0xFF, 0xFF);
    Lights_PointNoGlowSetInfo(&this->unk_1DC, 
            (s16)player->actor.posRot.pos.x - 10.0f, 
            (s16)player->actor.posRot.pos.y - 10.0f, 
            (s16)player->actor.posRot.pos.z - 10.0f, 
            0xEB, 0xFF, 0xFF, 0xFF);
    Math_SmoothStepToF(&this->actor.shape.unk_08, 0.0f, 0.5f, 2.0f, 0.1f);
}

void func_8099A3A4(DoorWarp1* this, GlobalContext* globalCtx) {
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_WARP_HOLE - SFX_FLAG);
    Math_SmoothStepToF(&this->unk_1A0, 255.0f, 0.2f, 2.0f, 0.1f);
    Math_SmoothStepToF(&this->unk_1A4, 255.0f, 0.2f, 2.0f, 0.1f);
    if (this->unk_1AC < 0xA) {
        this->unk_1AC += 2;
    }
    if (this->unk_1AE < 0x78) {
        this->unk_1AE += 4;
    }
    if (this->unk_1B0 < 0xE6) {
        this->unk_1B0 += 4;
        return;
    }
    func_80998780(this, func_8099A46C);
}

void func_8099A46C(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player;

    Audio_PlayActorSound2(&this->actor, NA_SE_EV_WARP_HOLE - SFX_FLAG);
    if (func_80999938(this, globalCtx) != 0) {
        player = PLAYER;
        func_800800F8(globalCtx, 0x25E8, 0x3E7, &this->actor, 0);
        func_8002DF54(globalCtx, &this->actor, 10);
        player->unk_450.x = this->actor.posRot.pos.x;
        player->unk_450.z = this->actor.posRot.pos.z;
        this->unk_1B2 = 0x14;
        func_80998780(this, func_8099A508);
    }
}

void func_8099A508(DoorWarp1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->unk_1B2 != 0) {
        this->unk_1B2--;
        return;
    }
    Audio_PlaySoundGeneral(NA_SE_EV_LINK_WARP, &player->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    SkelAnime_ChangeAnimImpl(&this->skelAnime, &D_06001374, 1.0f, 
            SkelAnime_GetFrameCount(&D_06001374.genericHeader), 
            SkelAnime_GetFrameCount(&D_06001374.genericHeader), 2, 40.0f, 1);
    this->unk_1B2 = 0x32;
    func_80998780(this, func_8099A5EC);
}

#ifdef NON_MATCHING
// Stack only
void func_8099A5EC(DoorWarp1* this, GlobalContext* globalCtx) {
    f32 temp_f0_2;
    u32 phi_v0;
    f32 phi_f0;
    s16 phi_v1;

    Player* player = PLAYER;
    
    if (this->unk_1B2 != 0) {
        this->unk_1B2--;
    }
    if (this->unk_1B2 < 0x1F) {
        phi_v0 = (gSaveContext.linkAge == 0) ? 35 : 45;
        if ((player->actor.posRot.pos.y - this->actor.posRot.pos.y) <= phi_v0) {
            player->actor.gravity = 0.0139999995f;
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
        Math_SmoothStepToF(&player->actor.posRot.pos.x, this->actor.posRot.pos.x, 0.5f, 0.1f, 0.01f);
        Math_SmoothStepToF(&player->actor.posRot.pos.z, this->actor.posRot.pos.z, 0.5f, 0.1f, 0.01f);
    }
    this->unk_192++;
    if (this->unk_192 > D_8099CCA0 && gSaveContext.nextCutsceneIndex == 0xFFEF) {
        if (globalCtx->sceneNum == 0x14) {
            if (!(gSaveContext.eventChkInf[4] & 0x100)) {
                gSaveContext.eventChkInf[4] |= 0x100;
                Item_Give(globalCtx, ITEM_MEDALLION_FOREST);
                globalCtx->nextEntranceIndex = 0x6B;
                gSaveContext.nextCutsceneIndex = 0;
                gSaveContext.chamberCutsceneNum = CHAMBER_CS_FOREST;
            } else {
                if (gSaveContext.linkAge != 0) {
                    globalCtx->nextEntranceIndex = 0x600;
                } else {
                    globalCtx->nextEntranceIndex = 0x608;
                }
                gSaveContext.nextCutsceneIndex = 0;
            }
        } else if (globalCtx->sceneNum == 0x15) {
            if (!(gSaveContext.eventChkInf[4] & 0x200)) {
                gSaveContext.eventChkInf[4] |= 0x200;
                Item_Give(globalCtx, ITEM_MEDALLION_FIRE);
                globalCtx->nextEntranceIndex = 0xDB;
                gSaveContext.nextCutsceneIndex = 0xFFF3U;
            } else {
                if (gSaveContext.linkAge != 0) {
                    globalCtx->nextEntranceIndex = 0x4F6;
                } else {
                    globalCtx->nextEntranceIndex = 0x564;
                }
            gSaveContext.nextCutsceneIndex = 0;
            }
        } else if (globalCtx->sceneNum == 0x16) {
            if (!(gSaveContext.eventChkInf[4] & 0x400)) {
                gSaveContext.eventChkInf[4] |= 0x400;
                Item_Give(globalCtx, ITEM_MEDALLION_WATER);
                globalCtx->nextEntranceIndex = 0x6B;
                gSaveContext.nextCutsceneIndex = 0;
                gSaveContext.chamberCutsceneNum = ITEM_MEDALLION_WATER;
            } else {
                if (gSaveContext.linkAge != 0) {
                    globalCtx->nextEntranceIndex = 0x604;
                } else {
                    globalCtx->nextEntranceIndex = 0x60C;
                }
                gSaveContext.nextCutsceneIndex = 0;
            }
        } else if (globalCtx->sceneNum == 0x17) {
            if (!CHECK_QUEST_ITEM(QUEST_MEDALLION_SPIRIT)) {
                Item_Give(globalCtx, ITEM_MEDALLION_SPIRIT);
                globalCtx->nextEntranceIndex = 0x6B;
                gSaveContext.nextCutsceneIndex = 0;
                gSaveContext.chamberCutsceneNum = CHAMBER_CS_SPIRIT;
            } else {
                if (gSaveContext.linkAge != 0) {
                    globalCtx->nextEntranceIndex = 0x1F1;
                } else {
                    globalCtx->nextEntranceIndex = 0x610;
                }
                gSaveContext.nextCutsceneIndex = 0;
            }
        } else if (globalCtx->sceneNum == 0x18) {
            if (!CHECK_QUEST_ITEM(QUEST_MEDALLION_SHADOW)) {
                Item_Give(globalCtx, ITEM_MEDALLION_SHADOW);
                globalCtx->nextEntranceIndex = 0x6B;
                gSaveContext.nextCutsceneIndex = 0;
                gSaveContext.chamberCutsceneNum = CHAMBER_CS_SHADOW;
            } else {
                if (gSaveContext.linkAge != 0) {
                    globalCtx->nextEntranceIndex = 0x568;
                } else {
                    globalCtx->nextEntranceIndex = 0x580;
                }
                gSaveContext.nextCutsceneIndex = 0;
            }
        }
        globalCtx->sceneLoadFlag = 0x14;
        globalCtx->fadeTransition = 3;
        gSaveContext.nextTransition = 7;
    }
    if (this->unk_192 >= 0x8D) {
        globalCtx->envCtx.unk_E1 = 1;
        phi_f0 = (f32)(this->unk_192 - 0x8C) / 20.0f;
        if (phi_f0 > 1.0f) {
            phi_f0 = 1.0f;
        }
        globalCtx->envCtx.unk_E2[0] = 0xA0;
        globalCtx->envCtx.unk_E2[1] = 0xA0;
        globalCtx->envCtx.unk_E2[2] = 0xA0;
        globalCtx->envCtx.unk_E2[3] = (u32)(255.0f * phi_f0);
        osSyncPrintf("\nparcent=[%f]", phi_f0);
    }
    Lights_PointNoGlowSetInfo(&this->unk_1C8, 
                (s16)player->actor.posRot.pos.x + 10.0f, 
                (s16)player->actor.posRot.pos.y + 10.0f, 
                (s16)player->actor.posRot.pos.z + 10.0f, 
                0xEB, 0xFF, 0xFF, 0xFF);
    Lights_PointNoGlowSetInfo(&this->unk_1DC, 
                (s16)player->actor.posRot.pos.x - 10.0f, 
                (s16)player->actor.posRot.pos.y - 10.0f, 
                (s16)player->actor.posRot.pos.z - 10.0f, 
                0xEB, 0xFF, 0xFF, 0xFF);
    Math_SmoothStepToF(&this->actor.shape.unk_08, 800.0f, 0.5f, 15.0f, 0.1f);
    this->actor.shape.rot.y += 0x320;
    Math_SmoothStepToF(&this->unk_1BC, 1.13f, 0.2f, 0.1f, 0.01f);
    Math_StepToF(&this->unk_194, 2.0f, 0.003f);
    Math_StepToF(&this->unk_198, 10.0f, 0.006f);
    Math_SmoothStepToF(&this->unk_1A0, 0.0f, 0.2f, 3.0f, 0.01f);
    Math_SmoothStepToF(&this->unk_1A4, 0.0f, 0.2f, 2.0f, 0.01f);
    Math_SmoothStepToF(&this->alpha, 255.0f, 0.1f, 1.0f, 0.01f);

    temp_f0_2 = 1.0f - (f32)(D_8099CCA0 - this->unk_192) / (D_8099CCA0 - (D_8099CCA0 - 100));
    if (temp_f0_2 > 0.0f) {

        for (phi_v1 = 0; phi_v1 < 3; phi_v1++) {
            globalCtx->envCtx.unk_8C[0][phi_v1] = 
                globalCtx->envCtx.unk_8C[2][phi_v1] = 
                    globalCtx->envCtx.unk_8C[1][phi_v1] = -255.0f * temp_f0_2;
        }

        globalCtx->envCtx.unk_9E = -500.0f * temp_f0_2;
        if (globalCtx->envCtx.unk_9E < -0x12C) {
            globalCtx->roomCtx.curRoom.segment = NULL;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099A5EC.s")
#endif

void func_8099AEE4(DoorWarp1* this, GlobalContext* globalCtx) {
    f32 phi_f0;

    this->unk_192++;
    this->unk_194 = 5.0f;

    phi_f0 = 1.0f;
    if (this->unk_192 < 20) {
        phi_f0 = this->unk_192 / 20.f;
    } else if (this->unk_192 >= 60) {
        phi_f0 = 1.0f - ((this->unk_192 - 60.0f) / 20.f);
    }
    this->unk_1A4 = 255.0f * phi_f0;

    this->unk_1A0 = 0.0f;
    if (this->unk_192 >= 80.0f) {
        this->unk_1A4 = 0.0f;
        func_80998780(this, func_8099B014);
    }
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_WARP_HOLE - SFX_FLAG);
}

void func_8099B014(DoorWarp1* this, GlobalContext* globalCtx) {

}

void func_8099B020(DoorWarp1* this, GlobalContext* globalCtx) {
    Math_SmoothStepToF(&this->unk_1A0, 128.0f, 0.2f, 2.0f, 0.1f);
    Math_SmoothStepToF(&this->unk_1A4, 128.0f, 0.2f, 2.0f, 0.1f);
    if (this->unk_1A0 >= 128.0f) {
        Math_StepToF(&this->unk_194, 2.0f, 0.01f);
        Math_StepToF(&this->unk_198, 10.0f, 0.02f);
    }
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_WARP_HOLE - SFX_FLAG);
}

void DoorWarp1_Update(Actor* thisx, GlobalContext* globalCtx) {
    DoorWarp1* this = THIS;

    this->actionFunc(this, globalCtx);
    if (this->actor.params != 3) {
        Actor_SetScale(&this->actor, this->unk_1AC / 100.0f);
    }
}

void func_8099B140(DoorWarp1* this, GlobalContext* globalCtx) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_door_warp1.c", 2078);

    func_80093D84(globalCtx->state.gfxCtx);
    gDPSetPrimColor(POLY_XLU_DISP++, 0xFF, 0xFF, 200, 255, 255, (u8)this->alpha);
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 100, 255, (u8)this->alpha);
    POLY_XLU_DISP = SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, 
                                        NULL, NULL, &this->actor, POLY_XLU_DISP);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_door_warp1.c", 2098);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

void func_8099B33C(DoorWarp1* this, GlobalContext* globalCtx) {
    s32 pad[2];
    Vec3f eye;

    eye.x = -(Math_SinS((globalCtx->state.frames * 200)) * 120.0f) * 80.0f;
    eye.y =  (Math_CosS((globalCtx->state.frames * 200)) * 120.0f) * 80.0f;
    eye.z =  (Math_CosS((globalCtx->state.frames * 200)) * 120.0f) * 80.0f;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_door_warp1.c", 2122);

    func_80093D84(globalCtx->state.gfxCtx);
    func_8002EB44(&this->actor.posRot.pos, &eye, &eye, globalCtx->state.gfxCtx);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, (u8)this->alpha);
    gDPSetEnvColor(POLY_XLU_DISP++, 150, 0, 100, (u8)this->alpha);
    POLY_XLU_DISP = SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, 
                                        NULL, NULL, &this->actor, POLY_XLU_DISP);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_door_warp1.c", 2152);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

#ifdef NON_MATCHING
// Regalloc, small reorderings near the end of the first switch
void func_8099B5EC(DoorWarp1* this, GlobalContext* globalCtx) {
    s32 pad;
    u32 pad1;
    u32 spEC;
    f32 spE8;
    f32 spE4;
    f32 temp_f12;
    f32 temp_f0;

    spEC = globalCtx->state.frames * 10;
    spE8 = (this->unk_194 >= 1.0f) ? 0.0f : 1.0f - this->unk_194;
    spE4 = (this->unk_198 >= 1.0f) ? 0.0f : 1.0f - this->unk_198;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_door_warp1.c", 2173);

    temp_f0 = 1.0f - (2.0f - this->unk_194) / 1.7f;
    if (this->actor.params != 4 && this->actor.params != 6 && this->actor.params != 8 &&
        this->actor.params != 9 && this->actor.params != 10) {
        this->unk_19C += (s16)(temp_f0 * 15.0f);
    }
    if (this->actor.params == 6) {
        this->unk_19C -= (s16)(temp_f0 + temp_f0);
    }
    func_80093D84(globalCtx->state.gfxCtx);
    switch (this->actor.params) {
        case 4:
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255, 255, 255, this->unk_1A4);
            gDPSetEnvColor(POLY_XLU_DISP++, 200, 255, 0, 255);
            break;
        case 8:
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255, 255, 255, this->unk_1A4);
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 150, 0, 255);
            break;
        case 9:
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255, 255, 255, this->unk_1A4);
            gDPSetEnvColor(POLY_XLU_DISP++, 0, 200, 0, 255);
            break;
        case 10:
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255, 255, 255, this->unk_1A4);
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 50, 0, 255);
            break;
        default:
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255 * temp_f0, 255, 255, this->unk_1A4);
            gDPSetEnvColor(POLY_XLU_DISP++, 0, 255 * temp_f0, 255, 255);
            break;
    }
    gDPSetColorDither(POLY_XLU_DISP++, G_CD_DISABLE);
    gDPSetColorDither(POLY_XLU_DISP++, G_AD_NOTPATTERN | G_CD_MAGICSQ);

    Matrix_Translate(this->actor.posRot.pos.x, this->actor.posRot.pos.y + 1.0f, this->actor.posRot.pos.z, MTXMODE_NEW);
    gSPSegment(POLY_XLU_DISP++, 0x0A, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_door_warp1.c", 2247));
    Matrix_Push();

    gSPSegment(POLY_XLU_DISP++, 0x08, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 
            spEC & 0xFF, -((s16)(this->unk_19C + this->unk_19C) & 511), 0x100, 0x100, 1, 
            spEC & 0xFF, -((s16)(this->unk_19C + this->unk_19C) & 511), 0x100, 0x100));

    Matrix_Translate(0.0f, this->unk_194 * 230.0f, 0.0f, MTXMODE_APPLY);
    temp_f12 = (((f32) this->unk_1AE * spE8) / 100.0f) + 1.0f;
    Matrix_Scale(temp_f12, 1.0f, temp_f12, MTXMODE_APPLY);
    gSPSegment(POLY_XLU_DISP++, 0x09, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_door_warp1.c", 2267));
    gSPDisplayList(POLY_XLU_DISP++, D_060001A0);
    Matrix_Pull();

    if (this->unk_1A0 > 0.0f) {
        switch (this->actor.params) {
            case 4:
                gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255, 255, 255, this->unk_1A4);
                gDPSetEnvColor(POLY_XLU_DISP++, 200, 255, 0, 255);
                break;
            case 8:
                gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255, 255, 255, this->unk_1A4);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 150, 0, 255);
                break;
            case 9:
                gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255, 255, 255, this->unk_1A4);
                gDPSetEnvColor(POLY_XLU_DISP++, 0, 200, 0, 255);
                break;
            case 10:
                gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255, 255, 255, this->unk_1A4);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 50, 0, 255);
                break;
            default:
                gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, 255 * temp_f0, 255, 255, this->unk_1A0);
                gDPSetEnvColor(POLY_XLU_DISP++, 0, 255 * temp_f0, 255, 255);
                break;
        }
        spEC *= 2;

        gSPSegment(POLY_XLU_DISP++, 0x08, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 
                spEC & 0xFF, -((s16)this->unk_19C & 511), 0x100, 0x100, 1, 
                spEC & 0xFF, -((s16)this->unk_19C & 511), 0x100, 0x100));

        Matrix_Translate(0.0f, this->unk_198 * 60.0f, 0.0f, MTXMODE_APPLY);
        temp_f12 = (((f32) this->unk_1B0 * spE4) / 100.0f) + 1.0f;
        Matrix_Scale(temp_f12, 1.0f, temp_f12, MTXMODE_APPLY);
        gSPSegment(POLY_XLU_DISP++, 0x09, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_door_warp1.c", 2336));
        gSPDisplayList(POLY_XLU_DISP++, D_060001A0);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_door_warp1.c", 2340);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Door_Warp1/func_8099B5EC.s")
#endif

void DoorWarp1_Draw(Actor* thisx, GlobalContext* globalCtx) {
    DoorWarp1* this = THIS;

    switch (this->actor.params + 2) {
        case 1:
            func_8099B140(this, globalCtx);
            func_8099B5EC(this, globalCtx);
            break;
        case 2:
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
