/*
 * File: z_en_tr.c
 * Overlay: ovl_En_Tr
 * Description: Koume and Kotake
 */

#include "z_en_tr.h"

#define FLAGS 0x00000010

#define THIS ((EnTr*)thisx)

typedef enum {
    /* 0 */ TR_KOUME,
    /* 1 */ TR_KOTAKE
} TwinrovaType;

void EnTr_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTr_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTr_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTr_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B22F1C(EnTr* this, GlobalContext* globalCtx);
void func_80B234D4(EnTr* this, GlobalContext* globalCtx);
void func_80B23820(EnTr* this, GlobalContext* globalCtx);
void func_80B23A88(EnTr* this, GlobalContext* globalCtx);

void func_80B24230(EnTr* this, GlobalContext* globalCtx, s32 actionIndex);
void func_80B24038(EnTr* this, GlobalContext* globalCtx, s32 actionIndex);
void func_80B242B4(EnTr* this, GlobalContext* globalCtx, s32 actionIndex);

const ActorInit En_Tr_InitVars = {
    ACTOR_EN_TR,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_TR,
    sizeof(EnTr),
    (ActorFunc)EnTr_Init,
    (ActorFunc)EnTr_Destroy,
    (ActorFunc)EnTr_Update,
    (ActorFunc)EnTr_Draw,
};

// The first elements of these animation arrays are for Koume, the second for Kotake

static AnimationHeader* unused[] = {
    0x06003FC8,
    0x06001CDC,
};

static AnimationHeader* D_80B24368[] = {
    0x06002BC4, // Turn to look over right shoulder
    0x06000BFC, // Turn to look over right shoulder
};

static AnimationHeader* D_80B24370[] = {
    0x060035CC, // Looking over left shoulder
    0x060013CC, // Looking over right shoulder
};

static AnimationHeader* D_80B24378[] = {
    0x060049C8, // Floating on broom
    0x060049C8, // Floating on broom
};

static AnimationHeader* D_80B24380[] = {
    0x06012E1C, // Casting magic
    0x06012E1C, // Casting magic
};

static f32 D_80B24388[] = { 0.0f, 20.0f, -30.0f, 20.0f, -20.0f, -20.0f, 30.0f };

static f32 D_80B243A4[] = { 0.0f, 30.0f, 0.0f, -30.0f, 30.0f, -30.0f, 0.0f };

// Has to be 1-dimensional to match
static Color_RGBA8 D_80B243C0[4] = {
    { 255, 200, 0, 255 },
    { 255, 0, 0, 255 },
    { 255, 255, 255, 255 },
    { 0, 0, 255, 255 },
};

static u64* sEyeTextures[] = {
    0x060086D8, // Open
    0x060094D8, // Half
    0x060098D8, // Closed
};

extern AnimationHeader D_060013CC; // Looking over right shoulder
extern AnimationHeader D_06001CDC; // Standing, broom in left hand
extern AnimationHeader D_060035CC; // Looking over left shoulder
extern AnimationHeader D_06003FC8; // Standing, broom over right shoulder
extern AnimationHeader D_060049C8; // Floating on broom
extern FlexSkeletonHeader D_0600C530;
extern FlexSkeletonHeader D_06011688;

void EnTr_SetupAction(EnTr* this, EnTrActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnTr_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnTr* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    EnTr_SetupAction(this, func_80B22F1C);
    this->unk_2D4 = 0; // Set and not used
    this->actor.child = NULL;
    Actor_SetScale(&this->actor, 0.01f);

    switch (this->actor.params) {
        case TR_KOUME:
            SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06011688, &D_06003FC8, this->jointTable,
                               this->morphTable, 27);
            Animation_PlayOnce(&this->skelAnime, &D_06003FC8);
            this->animation = NULL;
            EnTr_SetupAction(this, func_80B23A88);
            this->actionIndex = 3;
            break;

        case TR_KOTAKE:
            SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600C530, &D_06001CDC, this->jointTable,
                               this->morphTable, 27);
            Animation_PlayOnce(&this->skelAnime, &D_06001CDC);
            this->animation = NULL;
            EnTr_SetupAction(this, func_80B23A88);
            this->actionIndex = 2;
            break;

        default:
            __assert("0", "../z_en_tr.c", 277);
            break;
    }
}

void EnTr_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void func_80B22E6C(EnTr* this, GlobalContext* globalCtx) {
    if (this->timer == 11) {
        if ((this->actor.params != TR_KOUME) || (gSaveContext.sceneSetupIndex == 6)) {
            Audio_PlaySoundGeneral(NA_SE_EN_TWINROBA_SHOOT_VOICE, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
        }
    }

    if (this->timer > 0) {
        this->timer--;
    } else if (this->actor.child != NULL) {
        this->actor.child = NULL;
    }
    func_8002F974(&this->actor, NA_SE_EN_TWINROBA_FLY_DEMO - SFX_FLAG);
}

void func_80B22F1C(EnTr* this, GlobalContext* globalCtx) {
}

void func_80B22F28(EnTr* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state != 0) {
        if (globalCtx->csCtx.npcActions[this->actionIndex] != NULL) {
            switch (globalCtx->csCtx.npcActions[this->actionIndex]->action) {

                case 4:
                    Actor_SetScale(&this->actor, 0.01f);
                    EnTr_SetupAction(this, func_80B234D4);
                    this->timer = 24;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DEAD2);
                    break;

                case 6:
                    Animation_Change(&this->skelAnime, D_80B24380[this->actor.params], 1.0f, 0.0f,
                                     Animation_GetLastFrame(D_80B24380[this->actor.params]), ANIMMODE_ONCE, -5.0f);
                    EnTr_SetupAction(this, func_80B22E6C);
                    this->animation = D_80B24378[this->actor.params];
                    this->timer = 39;
                    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_6K,
                                       this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0,
                                       0, 0, this->actor.params + 9);
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_MASIC1);
                    break;

                default:
                    func_80B24038(this, globalCtx, this->actionIndex);
                    func_80B24230(this, globalCtx, this->actionIndex);
                    break;
            }
            func_8002F974(&this->actor, NA_SE_EN_TWINROBA_FLY_DEMO - SFX_FLAG);
        }
    }
}

void func_80B230D8(EnTr* this, GlobalContext* globalCtx) {
    Vec3f originalPos;
    s16 actionIndex;

    originalPos = this->actor.posRot.pos;
    if (globalCtx->csCtx.state != 0) {
        actionIndex = this->actionIndex;

        if (globalCtx->csCtx.npcActions[actionIndex] != NULL) {
            if (globalCtx->csCtx.npcActions[actionIndex]->action == 8) {
                func_80B24038(this, globalCtx, actionIndex);
                this->actor.posRot.rot.y = Math_Atan2S(this->actor.velocity.z, this->actor.velocity.x);
                Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.posRot.rot.y, 10, 0x400, 0x100);
                this->actor.posRot.rot.y = this->actor.shape.rot.y;
            } else {
                func_80B242B4(this, globalCtx, actionIndex);
                this->actor.posRot.pos.x += Math_SinS(this->timer) * 150.0f;
                this->actor.posRot.pos.y += -100.0f;
                this->actor.posRot.pos.z += Math_CosS(this->timer) * 150.0f;

                this->actor.shape.rot.y = (s16)(this->timer) + 0x4000;
                this->timer += 0x400;

                this->actor.velocity.x = this->actor.posRot.pos.x - originalPos.x;
                this->actor.velocity.y = this->actor.posRot.pos.y - originalPos.y;
                this->actor.velocity.z = this->actor.posRot.pos.z - originalPos.z;
            }

            if (globalCtx->csCtx.frames < 670) {
                func_8002F974(&this->actor, NA_SE_EN_TWINROBA_FLY_DEMO - SFX_FLAG);
            }
        }
    }
}

void func_80B23254(EnTr* this, GlobalContext* globalCtx, s32 arg2, f32 arg3, f32 arg4) {
    Vec3f sp7C;
    Vec3f sp70;
    Vec3f sp64;
    Vec3f sp58;
    Color_RGBA8* sp54;
    Color_RGBA8* sp50;
    Vec3f sp44;
    s16 temp_s0;
    s16 sp40;
    f32 sp3C;

    sp44 = ACTIVE_CAM->eye;
    temp_s0 = Math_Vec3f_Yaw(&sp44, &this->actor.posRot.pos);
    sp40 = -Math_Vec3f_Pitch(&sp44, &this->actor.posRot.pos);
    sp64.z = 0.0f;
    sp64.x = 0.0f;
    sp3C = Math_SinS(temp_s0);
    sp70.x = Math_CosS(sp40) * (arg3 * sp3C);
    sp70.y = Math_SinS(sp40) * arg3;
    sp3C = Math_CosS(temp_s0);
    sp70.z = Math_CosS(sp40) * (arg3 * sp3C);
    sp64.y = 0.5f;

    sp54 = &D_80B243C0[2 * this->actor.params];
    sp50 = &D_80B243C0[2 * this->actor.params + 1];

    sp58 = this->actor.posRot.pos;
    sp58.x -= sp70.x * 10.0f;
    sp58.y -= sp70.y * 10.0f;
    sp58.z -= sp70.z * 10.0f;

    sp7C.x = sp58.x + ((D_80B24388[arg2] * arg4) * Math_CosS(temp_s0));
    sp7C.y = sp58.y + (D_80B243A4[arg2] * arg4);
    sp7C.z = sp58.z - ((D_80B24388[arg2] * arg4) * Math_SinS(temp_s0));
    func_8002829C(globalCtx, &sp7C, &sp70, &sp64, sp54, sp50, (s32)(800.0f * arg4), (s32)(80.0f * arg4));
}

void func_80B234D4(EnTr* this, GlobalContext* globalCtx) {
    s32 temp_hi;

    if (this->timer >= 17) {
        this->actor.shape.rot.y = (this->actor.shape.rot.y - (this->timer * 0x28F)) + 0x3D68;
    } else {
        if (this->timer >= 5) {
            Actor_SetScale(&this->actor, this->actor.scale.x * 0.9f);
            this->actor.shape.rot.y = (this->actor.shape.rot.y - (this->timer * 0x28F)) + 0x3D68;
        } else if (this->timer > 0) {
            temp_hi = (this->timer * 2) % 7;
            func_80B23254(this, globalCtx, temp_hi, 5.0f, 0.2f);
            func_80B23254(this, globalCtx, (temp_hi + 1) % 7, 5.0f, 0.2f);
            Actor_SetScale(&this->actor, this->actor.scale.x * 0.9f);
            this->actor.shape.rot.y = (this->actor.shape.rot.y - (this->timer * 0x28F)) + 0x3D68;
        } else {
            EnTr_SetupAction(this, func_80B23820);
            this->actor.draw = NULL;
        }
    }

    if (this->timer == 4) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_DOWN);
    }

    if (this->timer > 0) {
        this->timer--;
    }
}

void func_80B23690(EnTr* this, GlobalContext* globalCtx) {
    s32 temp_hi;

    if (this->timer >= 31) {
        temp_hi = (this->timer * 2) % 7;

        func_80B23254(this, globalCtx, temp_hi, 5.0f, 1.0f);
        func_80B23254(this, globalCtx, (temp_hi + 1) % 7, 5.0f, 1.0f);
    } else if (this->timer == 30) {
        this->actor.draw = EnTr_Draw;
        this->actor.shape.rot.y += this->timer * 0x1A6;
    } else if (this->timer > 0) {
        this->actor.shape.rot.y += this->timer * 0x1A6;
        Actor_SetScale(&this->actor, (this->actor.scale.x * 0.8f) + 0.002f);
    } else {
        EnTr_SetupAction(this, func_80B22F28);
        Actor_SetScale(&this->actor, 0.01f);
    }

    if (this->timer > 0) {
        this->timer--;
    }
    func_8002F974(&this->actor, NA_SE_EN_TWINROBA_FLY_DEMO - SFX_FLAG);
}

void func_80B23820(EnTr* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.state != 0) {
        if ((globalCtx->csCtx.npcActions[this->actionIndex] != NULL) &&
            ((globalCtx->csCtx.npcActions[this->actionIndex]->action == 3) ||
             (globalCtx->csCtx.npcActions[this->actionIndex]->action == 5))) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_TRANSFORM);
            this->timer = 34;
            func_80B242B4(this, globalCtx, this->actionIndex);
            EnTr_SetupAction(this, func_80B23690);
            Animation_PlayLoop(&this->skelAnime, &D_060049C8);
            this->animation = NULL;
            Actor_SetScale(&this->actor, 0.003f);
        }
    }
}

void func_80B238E0(EnTr* this, GlobalContext* globalCtx) {
    f32 lastFrame = Animation_GetLastFrame(D_80B24378[this->actor.params]);

    if (globalCtx->csCtx.state != 0) {
        if ((globalCtx->csCtx.npcActions[this->actionIndex] != NULL) &&
            (globalCtx->csCtx.npcActions[this->actionIndex]->action == 3)) {
            Animation_Change(&this->skelAnime, D_80B24378[this->actor.params], 1.0f, 0.0f, lastFrame, ANIMMODE_LOOP,
                             -10.0f);
            this->animation = NULL;
            EnTr_SetupAction(this, func_80B22F28);
        }
    }
}

void func_80B239A8(EnTr* this, GlobalContext* globalCtx) {
    f32 lastFrame = Animation_GetLastFrame(D_80B24368[this->actor.params]);

    if (globalCtx->csCtx.state != 0) {
        if ((globalCtx->csCtx.npcActions[this->actionIndex] != NULL) &&
            (globalCtx->csCtx.npcActions[this->actionIndex]->action == 2)) {
            Animation_Change(&this->skelAnime, D_80B24368[this->actor.params], 1.0f, 0.0f, lastFrame, ANIMMODE_ONCE,
                             -4.0f);
            this->animation = D_80B24370[this->actor.params];
            EnTr_SetupAction(this, func_80B238E0);
        }
    }
}

void func_80B23A88(EnTr* this, GlobalContext* globalCtx) {
    u32 frames = globalCtx->gameplayFrames;

    if (globalCtx->csCtx.state != 0) {
        if (globalCtx->csCtx.npcActions[this->actionIndex] != NULL) {
            switch (globalCtx->csCtx.npcActions[this->actionIndex]->action) {
                case 1:
                    func_80B242B4(this, globalCtx, this->actionIndex);
                    EnTr_SetupAction(this, func_80B239A8);
                    break;

                case 3:
                    func_80B242B4(this, globalCtx, this->actionIndex);
                    EnTr_SetupAction(this, func_80B22F28);
                    Animation_PlayLoop(&this->skelAnime, &D_060049C8);
                    this->animation = NULL;
                    break;

                case 4:
                    EnTr_SetupAction(this, func_80B23820);
                    this->actor.draw = NULL;
                    break;

                case 7:
                    EnTr_SetupAction(this, func_80B230D8);
                    Animation_PlayLoop(&this->skelAnime, &D_060049C8);
                    this->animation = NULL;
                    this->timer = ((this->actor.params != TR_KOUME) ? ((u8)frames << 10) + 0x8000 : (u8)frames << 10);
                    break;
            }
        }
    }
}

void EnTr_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnTr* this = THIS;

    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 5);
    this->actionFunc(this, globalCtx);

    if (SkelAnime_Update(&this->skelAnime) != 0) {
        if (this->animation != NULL) {
            if ((this->animation == &D_060035CC) || (this->animation == &D_060013CC)) {
                if (this->actor.params != TR_KOUME) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_LAUGH2);
                } else {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_LAUGH);
                }
                Animation_PlayLoop(&this->skelAnime, this->animation);
            } else if (this->animation == &D_060049C8) {
                EnTr_SetupAction(this, func_80B22F28);
                Animation_Change(&this->skelAnime, &D_060049C8, 1.0f, 0.0f, Animation_GetLastFrame(&D_060049C8),
                                 ANIMMODE_LOOP, -5.0f);
            } else {
                Animation_PlayLoop(&this->skelAnime, this->animation);
            }
            this->animation = NULL;
        } else {
            this->skelAnime.curFrame = 0.0f;
        }
    }
    Actor_SetHeight(&this->actor, 0.0f);

    if (DECR(this->blinkTimer) == 0) {
        this->blinkTimer = Rand_S16Offset(60, 60);
    }
    this->eyeIndex = this->blinkTimer;
    if (this->eyeIndex >= 3) {
        this->eyeIndex = 0;
    }
}

s32 EnTr_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    Vec3f src = { 2300.0f, 0.0f, -600.0f };
    Vec3f dest = { 0.0f, 0.0f, 0.0f };
    EnTr* this = THIS;
    Actor* child = this->actor.child;

    if ((child != NULL) && (limbIndex == 19)) {
        Matrix_MultVec3f(&src, &dest);
        dest.x -= (10.0f * Math_SinS(Camera_GetCamDirYaw(globalCtx->cameraPtrs[globalCtx->activeCamera])));
        dest.z -= (10.0f * Math_CosS(Camera_GetCamDirYaw(globalCtx->cameraPtrs[globalCtx->activeCamera])));
        child->posRot.pos = dest;
    }
    return 0;
}

void EnTr_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnTr* this = THIS;

    if (1) {}

    if ((globalCtx->csCtx.state == 0) || (globalCtx->csCtx.npcActions[this->actionIndex] == 0)) {
        this->actor.shape.shadowDrawFunc = NULL;
        return;
    }

    this->actor.shape.shadowDrawFunc = ActorShadow_DrawFunc_Circle;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_tr.c", 840);
    func_800943C8(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeIndex]));
    func_8002EBCC(&this->actor, globalCtx, 0);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnTr_OverrideLimbDraw, NULL, this);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_tr.c", 854);
}

f32 func_80B23FDC(GlobalContext* globalCtx, s32 actionIndex) {
    f32 phi_f2;

    phi_f2 = func_8006F93C(globalCtx->csCtx.npcActions[actionIndex]->endFrame,
                           globalCtx->csCtx.npcActions[actionIndex]->startFrame, globalCtx->csCtx.frames);
    phi_f2 = CLAMP_MAX(phi_f2, 1.0f);
    return phi_f2;
}

#ifdef NON_MATCHING
// Major ordering issues, not making the three 0.1fs separate rodata, etc.
void func_80B24038(EnTr* this, GlobalContext* globalCtx, s32 actionIndex) {
    Vec3f startPos;
    Vec3f endPos;
    Vec3f goalVel;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2_2;
    f32 phi_f12;

    startPos.x = globalCtx->csCtx.npcActions[actionIndex]->startPos.x;
    startPos.y = globalCtx->csCtx.npcActions[actionIndex]->startPos.y;
    startPos.z = globalCtx->csCtx.npcActions[actionIndex]->startPos.z;

    endPos.x = globalCtx->csCtx.npcActions[actionIndex]->endPos.x;
    endPos.y = globalCtx->csCtx.npcActions[actionIndex]->endPos.y;
    endPos.z = globalCtx->csCtx.npcActions[actionIndex]->endPos.z;

    temp_f0 = func_80B23FDC(globalCtx, actionIndex);

    goalVel.x = ((((endPos.x - startPos.x) * temp_f0) + startPos.x) - this->actor.posRot.pos.x) * 0.1f;
    goalVel.y = ((((endPos.y - startPos.y) * temp_f0) + startPos.y) - this->actor.posRot.pos.y) * 0.1f;
    goalVel.z = ((((endPos.z - startPos.z) * temp_f0) + startPos.z) - this->actor.posRot.pos.z) * 0.1f;

    temp_f0_2 = sqrtf(SQ(goalVel.x) + SQ(goalVel.y) + SQ(goalVel.z));
    phi_f12 = CLAMP(temp_f0_2, 0.0f, 20.0f);

    if ((temp_f0_2 != phi_f12) && (temp_f0_2 != 0.0f)) {
        temp_f2_2 = phi_f12 / temp_f0_2;

        goalVel.x *= temp_f2_2;
        goalVel.y *= temp_f2_2;
        goalVel.z *= temp_f2_2;
    }

    Math_StepToF(&this->actor.velocity.x, goalVel.x, 1.0f);
    Math_StepToF(&this->actor.velocity.y, goalVel.y, 1.0f);
    Math_StepToF(&this->actor.velocity.z, goalVel.z, 1.0f);
    func_8002D7EC(&this->actor);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tr/func_80B24038.s")
#endif

void func_80B24230(EnTr* this, GlobalContext* globalCtx, s32 actionIndex) {
    s16 temp_a3;
    // s32 temp_v1;
    s32 phi_v1;
    s32 phi_v0;

    temp_a3 = globalCtx->csCtx.npcActions[actionIndex]->rot.y;
    phi_v1 = this->actor.posRot.rot.y - temp_a3;

    if (phi_v1 < 0) {
        phi_v1 = 0 - phi_v1;
        phi_v0 = 1;
    } else {
        phi_v0 = -1;
    }

    if (phi_v1 >= 0x8000) {
        phi_v0 = 0 - phi_v0;
        phi_v1 = 0x10000 - phi_v1;
    }

    phi_v1 *= 0.1f;

    this->actor.posRot.rot.y += phi_v1 * phi_v0;
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
}

void func_80B242B4(EnTr* this, GlobalContext* globalCtx, s32 actionIndex) {
    Vec3f startPos;

    startPos.x = globalCtx->csCtx.npcActions[actionIndex]->startPos.x;
    startPos.y = globalCtx->csCtx.npcActions[actionIndex]->startPos.y;
    startPos.z = globalCtx->csCtx.npcActions[actionIndex]->startPos.z;
    this->actor.posRot.pos = startPos;
    this->actor.posRot.rot.y = this->actor.shape.rot.y = globalCtx->csCtx.npcActions[actionIndex]->rot.y;
}
