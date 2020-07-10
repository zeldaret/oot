/*
 * File: z_en_fhg_fire.c
 * Overlay: ovl_En_Fhg_Fire
 * Description: Phantom Ganon's Lighting Attack
 */

#include "z_en_fhg_fire.h"
#include "../ovl_En_fHG/z_en_fhg.h"

#define FLAGS 0x00000030

#define THIS ((EnFhgFire*)thisx)

void EnFhgFire_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFhgFire_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFhgFire_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFhgFire_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnFhgFire_SetActionFunc(EnFhgFire* this, EnFhgFireActionFunc func);
void func_80A0F6F8(EnFhgFire* this, GlobalContext* globalCtx);
void func_80A0FA90(EnFhgFire* this, GlobalContext* globalCtx);
void func_80A0FC48(EnFhgFire* this, GlobalContext* globalCtx);
void func_80A0FD8C(EnFhgFire* this, GlobalContext* globalCtx);
void func_80A10008(EnFhgFire* this, GlobalContext* globalCtx);
void func_80A10220(EnFhgFire* this, GlobalContext* globalCtx);
void func_80A10F18(EnFhgFire* this, GlobalContext* globalCtx);

extern ColliderCylinderInit D_80A11790;
extern Vec3f D_80A117BC;
extern Vec3f D_80A117C8;
extern Vec3f D_80A117D4;

extern Gfx D_0600FAA0[];
extern Gfx D_0600FCF8[];
extern Gfx D_060105E0[];
extern Gfx D_06012160[];

/*
const ActorInit En_Fhg_Fire_InitVars = {
    0,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_FHG,
    sizeof(EnFhgFire),
    (ActorFunc)EnFhgFire_Init,
    (ActorFunc)EnFhgFire_Destroy,
    (ActorFunc)EnFhgFire_Update,
    (ActorFunc)EnFhgFire_Draw,
};
*/

void EnFhgFire_SetActionFunc(EnFhgFire* this, EnFhgFireActionFunc func) {
    this->actionFunc = func;
}

void EnFhgFire_Init(Actor* thisx, GlobalContext* globalCtx) {
    f32 tempf0;
    EnFhgFire* this = THIS;
    Player* player = PLAYER;

    f32 tempf1;
    f32 tempf2;
    f32 tempf3;

    ActorShape_Init(&thisx->shape, 0.0f, NULL, 0.0f);
    if (((thisx->params == 0x23) || (thisx->params == 0x24)) || (thisx->params == 0x32)) {
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, thisx, &D_80A11790);
    }
    this->unk_160 = 200.0f;
    Actor_SetScale(thisx, 0.0f);

    if (thisx->params == 0x01) {
        EnFhgFire_SetActionFunc(this, func_80A0F6F8);
        Audio_PlayActorSound2(thisx, NA_SE_EN_FANTOM_THUNDER);
    } else if (thisx->params >= 0x64) {
        EnFhgFire_SetActionFunc(this, func_80A0FA90);
        thisx->shape.rot = thisx->posRot.rot;
    }

    if (thisx->params == 0x23) {
        thisx->draw = NULL;
        EnFhgFire_SetActionFunc(this, func_80A0FC48);
        thisx->speedXZ = 30.0f;
        Audio_PlayActorSound2(thisx, NA_SE_EN_FANTOM_SPARK);
        return;
    }

    if (thisx->params == 0x24) {
        EnFhgFire_SetActionFunc(this, func_80A0FD8C);
        this->unk_160 = 255.0f;
        this->unk_150.x = 0x20;
        this->unk_150.y = 0x32;
        this->unk_1FE = 0x0A;

        tempf2 = thisx->posRot.rot.x;
        this->unk_18C = tempf2 / 100.0f;
        tempf1 = tempf2 * 0.13f;

        this->collider.dim.radius = tempf1;
        this->collider.dim.height = tempf1;
        this->collider.dim.yShift = 0;
        return;
    }

    if (thisx->params == 0x26) {
        osSyncPrintf("yari hikari ct 1\n"); // "light spear"
        EnFhgFire_SetActionFunc(this, func_80A10008);
        osSyncPrintf("yari hikari ct 2\n");
        this->unk_150.x = thisx->posRot.rot.x;
        this->fireMode = thisx->posRot.rot.y;
        return;
    }

    switch (thisx->params) {
        case 0x27:
        case 0x28:
        case 0x29:
            Actor_SetScale(thisx, 7.0f);
            EnFhgFire_SetActionFunc(this, func_80A10F18);
            if (thisx->params == 0x29) {
                this->unk_150.x = 0x01B8;
                thisx->scale.z = 1.0f;
            } else {
                this->unk_150.x = 0x4C;
                Audio_PlayActorSound2(thisx, NA_SE_EV_FANTOM_WARP_S);
                Audio_PlayActorSound2(thisx, NA_SE_EV_FANTOM_WARP_S2);
            }
            return;
    }

    if (thisx->params == 0x32) {
        thisx->speedXZ = (thisx->posRot.rot.x == 0) ? 8.0f : 3.0f;
        EnFhgFire_SetActionFunc(this, func_80A10220);

        this->unk_150.x = 0x46;
        this->unk_150.y = 0x02;

        tempf1 = player->actor.posRot.pos.x - thisx->posRot.pos.x;
        tempf2 = player->actor.posRot.pos.y + 30.0f - thisx->posRot.pos.y;
        tempf3 = player->actor.posRot.pos.z - thisx->posRot.pos.z;
        thisx->posRot.rot.y = Math_atan2f(tempf1, tempf3) * 10430.378f; // 65536/(2*M_PI)
        tempf0 = sqrtf(SQ(tempf1) + SQ(tempf3));
        thisx->posRot.rot.x = Math_atan2f(tempf2, tempf0) * 10430.378f; // 65536/(2*M_PI)
        this->collider.dim.radius = 40;
        this->collider.dim.height = 50;
        this->collider.dim.yShift = -25;
        this->light = Lights_Insert(globalCtx, &globalCtx->lightCtx, (void*)(&this->unk_1A0));
        Lights_InitType0PositionalLight(&this->unk_1A0, thisx->posRot.pos.x, thisx->posRot.pos.y, thisx->posRot.pos.z,
                                        0xFF, 0xFF, 0xFF, 0xFF);
    }
}

void EnFhgFire_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnFhgFire* this = THIS;

    if (((thisx->params == 0x23) || (thisx->params == 0x24)) || (thisx->params == 0x32)) {
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }

    if (thisx->params == 0x32) {
        Lights_Remove(globalCtx, &globalCtx->lightCtx, this->light);
    }
}

void func_80A0F6F8(EnFhgFire* this, GlobalContext* globalCtx) {
    Camera* camera;
    char pad0[0x02];
    Vec3f randVec; // 0x70
    Vec3f tmpVec;  // 0x7C
    s16 i;
    s16 randY;
    s16* tmp;

    tmp = &this->unk_156;
    camera = Gameplay_GetCamera(globalCtx, 0);

    switch (this->fireMode) {
        case 0x00:
            this->fireMode = 0x0A;
            this->unk_150.x = 0x07;
            break;

        case 0x0A:
            this->actor.shape.rot.y = func_8005A948(camera) + ((*tmp & 0xFF) << 0x0F);
            Math_SmoothScaleMaxF(&this->scale, 1.0f, 1.0f, 0.2f);

            if (this->unk_150.x == 0) {
                this->fireMode = 0x0B;
                this->actor.shape.rot.z += 0x8000;
                this->unk_150.x = 0x25;
                this->actor.posRot.pos.y -= 200.0f;

                Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FHG_FIRE,
                                    this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 500,
                                    0, 0, 0x24);

                tmpVec = D_80A117BC;

                for (i = 0; i <= (0x23 - 1); i++) {
                    randVec.x = Math_Rand_CenteredFloat(30.f);
                    randVec.y = Math_Rand_ZeroFloat(5.0f) + 3.0f;
                    randVec.z = Math_Rand_CenteredFloat(30.f);
                    tmpVec.y = -0.2f;
                    EffectSsFhgFlash_Spawn(globalCtx, &this->actor.posRot.pos, &randVec, &tmpVec,
                                           ((s32)((s16)(Math_Rand_ZeroOne() * 100.0f))) + 240, 0);
                }

                func_80033E88(&this->actor, globalCtx, 4, (u16)0xA);
            }

            break;

        case 0x0B:
            this->actor.shape.rot.y = func_8005A948(camera) + ((*tmp & 0xFF) << 0x0F);

            Math_SmoothScaleMaxF(&this->scale, 0.0f, 1.0f, 0.2f);
            if (this->unk_150.x == 0x1E) {
                randY = (Math_Rand_ZeroOne() < 0.5f) ? 0x1000 : 0;

                for (i = 0; i < 8; i++) {
                    if (1) {
                        do {
                        } while (0);
                        Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FHG_FIRE,
                                            this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                                            this->actor.posRot.pos.z, 0, (i * 8192) + randY, 0x4000, i + 0x64);
                    }
                }

                for (i = 0; i < 8; i++) {
                    Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FHG_FIRE,
                                        this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0,
                                        (i * 8192) + randY, 0, 0x23);
                }
            }

            if (this->unk_150.x == 0) {
                Actor_Kill(&this->actor);
            }
    }

    Actor_SetScale(&this->actor, this->scale);
}

void func_80A0FA90(EnFhgFire* this, GlobalContext* globalCtx) {
    f32 temp_f6;

    osSyncPrintf("FF MOVE 1\n");
    this->actor.shape.rot.x += ((s16)(Math_Rand_ZeroOne() * 4000.0f) + 0x4000);

    switch (this->fireMode) {
        case 0:
            this->fireMode = 1;
            this->unk_150.x = ((s16)(Math_Rand_ZeroOne() * 7.0f)) + 0x07;
        case 1:
            Math_SmoothScaleMaxF(&this->scale, 1.7f, 1.0f, 0.34f);

            if (this->unk_150.x == 0) {
                this->fireMode = 0x02;
                this->unk_150.x = 0x0A;
                this->actor.posRot.pos.z += Math_Sins(this->actor.shape.rot.y) * -200.0f * this->scale;
                temp_f6 = Math_Coss(this->actor.shape.rot.y) * 200.0f;
                this->actor.posRot.pos.x += temp_f6 * this->scale;
                this->actor.shape.rot.y += 0x8000;
            }
            break;
        case 2:
            Math_SmoothDownscaleMaxF(&this->scale, 1.0f, 0.34f);
            if (this->unk_150.x == 0) {
                Actor_Kill(&this->actor);
            }
            break;
    }

    Actor_SetScale(&this->actor, this->scale);
    if (1.0f < this->actor.scale.x) {
        this->actor.scale.x = 1.0f;
    }

    osSyncPrintf("FF MOVE 2\n");
}

void func_80A0FC48(EnFhgFire* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Vec3f pos; // SP30

    if ((this->collider.base.atFlags & 2) != 0) {
        this->collider.base.atFlags = this->collider.base.atFlags & 0xFFFD;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_HIT_THUNDER);
    }

    if (Math_Rand_ZeroOne() < 0.5f) {
        pos = this->actor.posRot.pos;
        pos.y -= 20.0f;
        EffectSsFhgFlash_Spawn2(globalCtx, &this->actor, &pos, 0xC8, 0);
    }

    Actor_MoveForward(&this->actor);
    Collider_CylinderUpdate(&this->actor, &this->collider);
    if (player->invincibilityTimer == 0) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }

    func_8002E4B4(globalCtx, &this->actor, 50.0f, 50.0f, 100.0f, 1);
    if ((this->actor.bgCheckFlags & 8) != 0) {
        Actor_Kill(&this->actor);
    }
}

void func_80A0FD8C(EnFhgFire* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 pad;

    globalCtx->envCtx.unk_E1 = 0x01;
    this->actor.shape.rot.y += 0x1000;

    if (this->unk_150.y == 0x31) {
        globalCtx->envCtx.unk_BF = 1;
        globalCtx->envCtx.unk_D6 = 0xFF;
    }
    if (this->unk_150.y == 0x1F) {
        globalCtx->envCtx.unk_BF = 0x00;
        globalCtx->envCtx.unk_D6 = 0x14;
    }
    if (this->unk_150.y >= 0x30) {
        globalCtx->envCtx.unk_E2[2] = 0xFF;
        globalCtx->envCtx.unk_E2[1] = 0xFF;
        globalCtx->envCtx.unk_E2[0] = 0xFF;

        if (((this->unk_150.x & 0xFF) % 2) != 0) {
            globalCtx->envCtx.unk_E2[3] = 0x46;
        } else {
            globalCtx->envCtx.unk_E2[3] = 0x00;
        }
    } else {
        globalCtx->envCtx.unk_E2[3] = 0x00;
    }

    if (this->unk_150.x < 0x15) {
        Math_SmoothDownscaleMaxF(&this->unk_160, 1.0f, 45.0f);
        Math_SmoothDownscaleMaxF(&this->scale, 1.0f, 0.5f);
    } else {
        Math_SmoothScaleMaxF(&this->scale, this->unk_18C, 0.5f, 3.0f);
    }

    Actor_SetScale(&this->actor, this->scale);
    if (3.0f < this->unk_18C) {
        Collider_CylinderUpdate(&this->actor, &this->collider);
        if (player->invincibilityTimer == 0) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, (Collider*)&this->collider);
        }
    }

    if (this->unk_150.x == 0) {
        Actor_Kill(&this->actor);
        globalCtx->envCtx.unk_E1 = 0;
    }
    if (this->unk_1FE != 0) {
        this->unk_1FE--;
        this->unk_1FC = 1;
        Math_SmoothScaleMaxF(&this->unk_200, 40.0f, 0.3f, 10.0f);
    } else {
        Math_SmoothDownscaleMaxF(&this->unk_200, 1.0f, 5.0f);
        if (this->unk_200 == 0.0f) {
            this->unk_1FC = 0;
        }
    }

    // Related to scene draw config 30, only used in BossGanon_Update and
    // loaded in z_kankyo
    D_8015FCF0 = this->unk_1FC;
    D_8015FCF8 = this->actor.posRot.pos;
    D_8015FD06 = this->unk_200;
    D_8015FD08 = 10.0f;
    D_8015FD0C = 0;
}

void func_80A10008(EnFhgFire* this, GlobalContext* globalCtx) {
    EnfHG* horse;
    s16 i;
    Vec3f sp6C;
    Vec3f tmp;
    Vec3f sp54;

    osSyncPrintf("yari hikari 1\n");
    horse = (EnfHG*)this->actor.attachedA;
    if ((this->unk_156 % 2) != 0) {
        Actor_SetScale(&this->actor, 6.0f);
    } else {
        Actor_SetScale(&this->actor, 5.25f);
    }

    this->actor.posRot.pos = horse->unk_200;
    this->actor.shape.rot.z += ((s16)(Math_Rand_ZeroOne() * 20000.0f)) + 0x4000;

    osSyncPrintf("yari hikari 2\n");
    if (this->fireMode == 0) {
        tmp = D_80A117C8;
        sp54 = D_80A117D4;
        osSyncPrintf("FLASH !!\n");

        for (i = 0; i < 2; i++) {
            sp6C.x = Math_Rand_CenteredFloat(20.0f) + this->actor.posRot.pos.x;
            sp6C.y = Math_Rand_CenteredFloat(20.0f) + this->actor.posRot.pos.y;
            sp6C.z = Math_Rand_CenteredFloat(20.0f) + this->actor.posRot.pos.z;
            sp54.y = -0.08f;

            EffectSsFhgFlash_Spawn(globalCtx, &sp6C, &tmp, &sp54, (((s16)(Math_Rand_ZeroOne() * 80.0f))) + 150, 0);
        }
    }

    if (this->unk_150.x == 0) {
        Actor_Kill(&this->actor);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/func_80A10220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/func_80A10F18.s")

void EnFhgFire_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnFhgFire* this = THIS;

    this->unk_156++;

    DECR(this->unk_150.x);
    DECR(this->unk_150.y);

    this->actionFunc(this, globalCtx);
}

// Unsolved regalloc
#ifdef NON_MATCHING
void EnFhgFire_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnFhgFire* this = THIS;
    char pad[0x04];
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[3];

    Graph_OpenDisps(dispRefs, gfxCtx, "../z_en_fhg_fire.c", 0x6BB);
    if (thisx->params == 0x24) {
        func_80093D84(globalCtx->state.gfxCtx);
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0xFF, 0xFF, 0xFF, (s32)this->unk_160 & 0xFF);
        gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xA5, 0xFF, 0x4B, 0x00);
        gDPPipeSync(gfxCtx->polyXlu.p++);
        gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_fhg_fire.c", 0x6D1),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_0600FCF8));
    } else {
        if ((thisx->params == 0x26) || (thisx->params == 0x32)) {
            osSyncPrintf("yari hikari draw 1\n");
            func_800D1FD4(&globalCtx->mf_11DA0);
            func_80093D84(globalCtx->state.gfxCtx);

            gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0xFF, 0xFF, 0xFF, (s32)this->unk_160 & 0xFF);

            if (this->fireMode > 0) {
                gDPSetEnvColor(gfxCtx->polyXlu.p++, 0x00, 0xFF, 0xFF, 0x00);
            } else {
                gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xA5, 0xFF, 0x4B, 0x00);
            }

            gDPPipeSync(gfxCtx->polyXlu.p++);

            Matrix_RotateZ(((f32)thisx->shape.rot.z / 32768.0f) * M_PI, 1);
            gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_fhg_fire.c", 0x709),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(gfxCtx->polyXlu.p++, D_06012160);
        } else {
            if (((thisx->params == 0x27) || (thisx->params == 0x28)) || (thisx->params == 0x29)) {
                func_80093D84(globalCtx->state.gfxCtx);
                gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0, 0, 0,
                                ((u32)this->unk_188 & 0xFF)); // sic u32
                gDPSetEnvColor(gfxCtx->polyXlu.p++, 0x5A, 0x32, 0x5F, (s32)(this->unk_188 * 0.5f));
                gDPPipeSync(gfxCtx->polyXlu.p++);
                gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_fhg_fire.c", 0x729),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

                // clang-format off
                gSPSegment(
                    gfxCtx->polyXlu.p++,
                    0x08,
                    Gfx_TwoTexScroll(
                        globalCtx->state.gfxCtx,
                        0, (s16) this->unk_174, (s16) this->unk_178, 0x40, 0x40,
                        1, (s16) this->unk_17C, (s16) this->unk_180, 0x40, 0x40
                    )
                );
                // clang-format on

                gSPDisplayList(gfxCtx->polyXlu.p++, D_0600FAA0);
            } else {
                osSyncPrintf("FF DRAW 1\n");
                Matrix_Translate(0.0f, -100.0f, 0.0f, 1);
                func_80093D84(globalCtx->state.gfxCtx);

                gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0xFF, 0xFF, 0xFF, (s32)this->unk_160 & 0xFF);
                gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xFF, 0x1E, 0x00, 0xFF);
                gDPPipeSync(gfxCtx->polyXlu.p++);
                gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_fhg_fire.c", 0x764),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(gfxCtx->polyXlu.p++, D_060105E0);
                osSyncPrintf("FF DRAW 2\n");
            }
        }
    }

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_fhg_fire.c", 0x76C);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fhg_Fire/EnFhgFire_Draw.s")
#endif
