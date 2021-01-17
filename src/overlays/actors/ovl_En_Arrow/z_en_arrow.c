/*
 * File: z_en_arrow.c
 * Overlay: ovl_En_Arrow
 * Description: Arrow, Deku Seed, and Deku Nut Projectile
 */

#include "z_en_arrow.h"

#define FLAGS 0x00000030

#define THIS ((EnArrow*)thisx)

void EnArrow_Init(Actor* thisx, GlobalContext* globalCtx);
void EnArrow_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnArrow_Update(Actor* thisx, GlobalContext* globalCtx);
void EnArrow_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809B3BD4(EnArrow* this, GlobalContext* globalCtx);
void func_809B3FDC(EnArrow* this, GlobalContext* globalCtx);
void func_809B45E0(EnArrow* this, GlobalContext* globalCtx);
void func_809B4640(EnArrow* this, GlobalContext* globalCtx);

const ActorInit En_Arrow_InitVars = {
    ACTOR_EN_ARROW,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnArrow),
    (ActorFunc)EnArrow_Init,
    (ActorFunc)EnArrow_Destroy,
    (ActorFunc)EnArrow_Update,
    (ActorFunc)EnArrow_Draw,
};

// sQuadInit
ColliderQuadInit D_809B4D50 = {
    { COLTYPE_UNK10, 0x09, 0x00, 0x00, 0x08, COLSHAPE_QUAD },
    { 0x02, { 0x00000020, 0x00, 0x01 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x1D, 0x00, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

// sInitChain
InitChainEntry D_809B4DA0[] = {
    ICHAIN_F32(minVelocityY, 65386, ICHAIN_STOP),
};

extern SkeletonHeader D_04006010;
extern AnimationHeader D_0400436C;
extern AnimationHeader D_04004310;
extern Gfx D_04037880[];

void EnArrow_SetupAction(EnArrow* this, EnArrowActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnArrow_Init(Actor* thisx, GlobalContext* globalCtx) {
    static EffectBlureInit2 blureNormal = {
        0, 4, 0, { 0, 255, 200, 255 },   { 0, 255, 255, 255 }, { 0, 255, 200, 0 }, { 0, 255, 255, 0 }, 16,
        0, 1, 0, { 255, 255, 170, 255 }, { 0, 150, 0, 0 },
    };
    static EffectBlureInit2 blureFire = {
        0, 4, 0, { 0, 255, 200, 255 }, { 0, 255, 255, 255 }, { 0, 255, 200, 0 }, { 0, 255, 255, 0 }, 16,
        0, 1, 0, { 255, 200, 0, 255 }, { 255, 0, 0, 0 },
    };
    static EffectBlureInit2 blureIce = {
        0, 4, 0, { 0, 255, 200, 255 },   { 0, 255, 255, 255 }, { 0, 255, 200, 0 }, { 0, 255, 255, 0 }, 16,
        0, 1, 0, { 170, 255, 255, 255 }, { 0, 100, 255, 0 },
    };
    static EffectBlureInit2 blureLight = {
        0, 4, 0, { 0, 255, 200, 255 },   { 0, 255, 255, 255 }, { 0, 255, 200, 0 }, { 0, 255, 255, 0 }, 16,
        0, 1, 0, { 255, 255, 170, 255 }, { 255, 255, 0, 0 },
    };
    static u32 toucherFlags[] = {
        0x00000800, 0x00000020, 0x00000020, 0x00000800, 0x00001000,
        0x00002000, 0x00010000, 0x00004000, 0x00008000, 0x00000004,
    };
    EnArrow* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_809B4DA0);

    if (this->actor.params == -10) {
        this->unk_24B = 1;
        this->actor.params = 10;
    }

    if (this->actor.params < 10) {

        if (this->actor.params < 9) {
            SkelAnime_Init(globalCtx, &this->skelAnime, &D_04006010, &D_0400436C, NULL, NULL, 0);
        }

        if (this->actor.params < 3) {
            if (this->actor.params == 1) {
                blureNormal.elemDuration = 4;
            } else {
                blureNormal.elemDuration = 0x10;
            }

            Effect_Add(globalCtx, &this->effectIndex, EFFECT_BLURE2, 0, 0, &blureNormal);

        } else if (this->actor.params == 3) {

            Effect_Add(globalCtx, &this->effectIndex, EFFECT_BLURE2, 0, 0, &blureFire);

        } else if (this->actor.params == 4) {

            Effect_Add(globalCtx, &this->effectIndex, EFFECT_BLURE2, 0, 0, &blureIce);

        } else if (this->actor.params == 5) {

            Effect_Add(globalCtx, &this->effectIndex, EFFECT_BLURE2, 0, 0, &blureLight);
        }

        Collider_InitQuad(globalCtx, &this->collider);
        Collider_SetQuad(globalCtx, &this->collider, &this->actor, &D_809B4D50);

        if (this->actor.params < 3) {
            this->collider.body.toucherFlags = this->collider.body.toucherFlags &= ~0x18;
        }

        if (this->actor.params < 0) {
            this->collider.base.atFlags = 0x11;
        } else if (this->actor.params < 0xA) {
            this->collider.body.toucher.flags = toucherFlags[this->actor.params];
            LOG_HEX("this->at_info.cl_elem.at_btl_info.at_type", this->collider.body.toucher.flags, "../z_en_arrow.c",
                    707);
        }
    }

    EnArrow_SetupAction(this, func_809B3BD4);
}

void EnArrow_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnArrow* this = THIS;

    if (this->actor.params < 6) {
        Effect_Delete(globalCtx, this->effectIndex);
    }

    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyQuad(globalCtx, &this->collider);

    if ((this->hitActor != NULL) && (this->hitActor->update != NULL)) {
        this->hitActor->flags &= ~0x8000;
    }
}

void func_809B3BD4(EnArrow* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->actor.parent == NULL) {
        if ((this->actor.params != 0xA) && (player->unk_A73 == 0)) {
            Actor_Kill(&this->actor);
            return;
        }

        switch (this->actor.params) {
            case 9:
                func_8002F7DC(&player->actor, NA_SE_IT_SLING_SHOT);
                break;
            case 0:
            case 1:
            case 2:
                func_8002F7DC(&player->actor, NA_SE_IT_ARROW_SHOT);
                break;
            case 3:
            case 4:
            case 5:
                func_8002F7DC(&player->actor, NA_SE_IT_MAGIC_ARROW_SHOT);
                break;
        }

        EnArrow_SetupAction(this, func_809B3FDC);
        Math_Vec3f_Copy(&this->unk_210, &this->actor.posRot.pos);

        if (this->actor.params >= 9) {
            func_8002D9A4(&this->actor, 80.0f);
            this->timer = 15;
            this->actor.shape.rot.x = this->actor.shape.rot.y = this->actor.shape.rot.z = 0;
        } else {
            func_8002D9A4(&this->actor, 150.0f);
            this->timer = 12;
        }
    }
}

void func_809B3CEC(GlobalContext* globalCtx, EnArrow* this) {
    EnArrow_SetupAction(this, func_809B4640);
    Animation_PlayOnce(&this->skelAnime, &D_04004310);
    this->actor.posRot.rot.y += (s32)(24576.0f * (Rand_ZeroOne() - 0.5f)) + 0x8000;
    this->actor.velocity.y += (this->actor.speedXZ * (0.4f + (0.4f * Rand_ZeroOne())));
    this->actor.speedXZ *= (0.04f + 0.3f * Rand_ZeroOne());
    this->timer = 50;
    this->actor.gravity = -1.5f;
}

void func_809B3DD8(EnArrow* this, GlobalContext* globalCtx) {
    CollisionPoly* hitPoly;
    Vec3f posDiffLastFrame;
    Vec3f actorNextPos;
    Vec3f hitPos;
    f32 temp_f12;
    f32 scale;
    s32 bgId;

    Math_Vec3f_Diff(&this->actor.posRot.pos, &this->unk_210, &posDiffLastFrame);

    temp_f12 = ((this->actor.posRot.pos.x - this->hitActor->posRot.pos.x) * posDiffLastFrame.x) +
               ((this->actor.posRot.pos.y - this->hitActor->posRot.pos.y) * posDiffLastFrame.y) +
               ((this->actor.posRot.pos.z - this->hitActor->posRot.pos.z) * posDiffLastFrame.z);

    if (!(temp_f12 < 0.0f)) {
        scale = Math3D_Vec3fMagnitudeSq(&posDiffLastFrame);

        if (!(scale < 1.0f)) {
            scale = temp_f12 / scale;
            Math_Vec3f_Scale(&posDiffLastFrame, scale);
            Math_Vec3f_Sum(&this->hitActor->posRot.pos, &posDiffLastFrame, &actorNextPos);

            if (BgCheck_EntityLineTest1(&globalCtx->colCtx, &this->hitActor->posRot.pos, &actorNextPos, &hitPos,
                                        &hitPoly, true, true, true, true, &bgId)) {
                this->hitActor->posRot.pos.x = hitPos.x + ((actorNextPos.x <= hitPos.x) ? 1.0f : -1.0f);
                this->hitActor->posRot.pos.y = hitPos.y + ((actorNextPos.y <= hitPos.y) ? 1.0f : -1.0f);
                this->hitActor->posRot.pos.z = hitPos.z + ((actorNextPos.z <= hitPos.z) ? 1.0f : -1.0f);
            } else {
                Math_Vec3f_Copy(&this->hitActor->posRot.pos, &actorNextPos);
            }
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3FDC.s")
void func_809B3FDC(EnArrow* this, GlobalContext* globalCtx) {
    Vec3f sp94;
    u32 bgId;
    Vec3f hitPoint; // sp84
    Vec3f posCopy;
    Vec3f sp60;
    Vec3f sp54;
    Actor* hitActor;
    ColliderBody* atHit;
    s32 cond;
    u16 sfxId;

    if (DECR(this->timer) == 0) {
        Actor_Kill(this);
        return;
    }

    if (this->timer < 7.2f) {
        this->actor.gravity = -0.4f;
    }

    cond = this->actor.params != 0;

    if (cond) {
        cond = this->actor.params < 0xA;
        if (cond) {
            cond = (this->collider.base.atFlags & 2) != 0;
        }
    }

    if ((cond) || (this->hitPoly)) {
        if (this->actor.params >= 9) {
            if (cond) {
                this->actor.posRot.pos.x = (this->actor.posRot.pos.x + this->actor.pos4.x) * 0.5f;
                this->actor.posRot.pos.y = (this->actor.posRot.pos.y + this->actor.pos4.y) * 0.5f;
                this->actor.posRot.pos.z = (this->actor.posRot.pos.z + this->actor.pos4.z) * 0.5f;
            }

            // sfx is weird
            if (this->actor.params == 0xA) {
                iREG(50) = -1;
                sfxId = NA_SE_IT_SLING_REFLECT;
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_M_FIRE1, this->actor.posRot.pos.x,
                            this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);

            } else {
                sfxId = NA_SE_IT_DEKU;
            }

            EffectSsStone1_Spawn(globalCtx, &this->actor.posRot, 0);
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot, 20, sfxId);
            Actor_Kill(this);
        } else {
            EffectSsHitMark_SpawnCustomScale(globalCtx, 0, 150, &this->actor.posRot);

            // might need to do this in the if?
            atHit = this->collider.body.atHitItem;

            if ((cond != 0) && (atHit->flags != 4)) {
                hitActor = this->collider.base.at;

                if ((hitActor->update != NULL) && (!(this->collider.base.atFlags & 4)) && (hitActor->flags & 0x4000))
                {
                    this->hitActor = hitActor;
                    func_809B3DD8(this, globalCtx);
                    Math_Vec3f_Diff(&hitActor->posRot, &this->actor.posRot, &this->unk_250);
                    hitActor->flags |= 0x8000;
                    this->collider.base.atFlags &= ~2;
                    this->actor.speedXZ *= 0.5f;
                    this->actor.velocity.y *= 0.5f;
                } else {
                    this->hitFlags |= 1;
                    this->hitFlags |= 2;

                    if (atHit->bumperFlags & 2) {
                        this->actor.posRot.pos.x = atHit->bumper.unk_06.x;
                        this->actor.posRot.pos.y = atHit->bumper.unk_06.y;
                        this->actor.posRot.pos.z = atHit->bumper.unk_06.z;
                    }

                    func_809B3CEC(globalCtx, this);
                    Audio_PlayActorSound2(this, NA_SE_IT_ARROW_STICK_CRE);
                }
            } else if (this->hitPoly) {
                EnArrow_SetupAction(this, func_809B45E0);
                Animation_PlayOnce(&this->skelAnime, &D_0400436C);
                this->timer = (this->actor.params >= 0) ? 60 : 20;
                Audio_PlayActorSound2(this, NA_SE_IT_ARROW_STICK_OBJ);
                this->hitFlags |= 1;
            }
        }
    } else {
        Math_Vec3f_Copy(&this->unk_210, &this->actor.posRot.pos);
        Actor_MoveForward(&this->actor);
        this->hitPoly = BgCheck_ProjectileLineTest(&globalCtx->colCtx, &this->actor.pos4, &this->actor.posRot.pos,
                                                   &hitPoint, &this->actor.wallPoly, true, true, true, true, &bgId);
        // !! ?
        if (this->hitPoly) {
            func_8002F9EC(globalCtx, this, this->actor.wallPoly, bgId, &hitPoint);
            Math_Vec3f_Copy(&posCopy, &this->actor.posRot);
            Math_Vec3f_Copy(&this->actor.posRot, &hitPoint);
        }

        if (this->actor.params < 9) {
            this->actor.shape.rot.x = Math_Atan2S(this->actor.speedXZ, -this->actor.velocity.y);
        }
    }

    if (this->hitActor != NULL) {
        if (this->hitActor->update != NULL) {
            Math_Vec3f_Sum(&this->unk_210, &this->unk_250, &sp60);
            Math_Vec3f_Sum(&this->actor.posRot, &this->unk_250, &sp54);

            if (BgCheck_EntityLineTest1(&globalCtx->colCtx, &sp60, &sp54, &hitPoint, &sp94, 1, 1, 1, 1, &bgId) != 0)
            {
                this->hitActor->posRot.pos.x = hitPoint.x + (sp54.x <= hitPoint.x) ? 1.0f : -1.0f;
                this->hitActor->posRot.pos.y = hitPoint.y + (sp54.y <= hitPoint.y) ? 1.0f : -1.0f;
                this->hitActor->posRot.pos.z = hitPoint.z + (sp54.z <= hitPoint.z) ? 1.0f : -1.0f;
                Math_Vec3f_Diff(&this->hitActor->posRot, &this->actor.posRot, &this->unk_250);
                this->hitActor->flags &= ~0x8000;
                this->hitActor = NULL;
            } else {
                Math_Vec3f_Sum(&this->actor.posRot, &this->unk_250, &this->hitActor->posRot);
            }

            if ((this->hitPoly) && (this->hitActor != NULL)) {
                this->hitActor->flags &= ~0x8000;
                this->hitActor = NULL;
            }

        } else {
            this->hitActor = NULL;
        }
    }
}

void func_809B45E0(EnArrow* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    if (DECR(this->timer) == 0) {
        Actor_Kill(&this->actor);
    }
}

void func_809B4640(EnArrow* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    Actor_MoveForward(&this->actor);

    if (DECR(this->timer) == 0) {
        Actor_Kill(&this->actor);
    }
}

void EnArrow_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnArrow* this = THIS;
    Player* player = PLAYER;

    if ((this->unk_24B != 0) || ((this->actor.params >= 0) && (player->unk_A73 != 0)) ||
        !Player_InBlockingCsMode(globalCtx, player)) {
        this->actionFunc(this, globalCtx);
    }

    if ((this->actor.params >= 3) && (this->actor.params < 9)) {
        s16 elementalActorIds[] = { ACTOR_ARROW_FIRE, ACTOR_ARROW_ICE,  ACTOR_ARROW_LIGHT,
                                    ACTOR_ARROW_FIRE, ACTOR_ARROW_FIRE, ACTOR_ARROW_FIRE };

        if (this->actor.child == NULL) {
            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, elementalActorIds[this->actor.params - 3],
                               this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0,
                               0);
        }
    } else if (this->actor.params == 0) {
        static Vec3f velocity = { 0.0f, 0.5f, 0.0f };
        static Vec3f accel = { 0.0f, 0.5f, 0.0f };
        static Color_RGBA8 primColor = { 255, 255, 100, 255 };
        static Color_RGBA8 envColor = { 255, 50, 0, 0 };

        func_8002836C(globalCtx, &this->unk_21C, &velocity, &accel, &primColor, &envColor, 100, 0, 8);
    }
}

void func_809B4800(EnArrow* this, GlobalContext* globalCtx) {
    static Vec3f D_809B4E88 = { 0.0f, 400.0f, 1500.0f };
    static Vec3f D_809B4E94 = { 0.0f, -400.0f, 1500.0f };
    static Vec3f D_809B4EA0 = { 0.0f, 0.0f, -300.0f };
    Vec3f sp44;
    Vec3f sp38;
    s32 addBlureVertex;

    Matrix_MultVec3f(&D_809B4EA0, &this->unk_21C);

    if (func_809B3FDC == this->actionFunc) {
        Matrix_MultVec3f(&D_809B4E88, &sp44);
        Matrix_MultVec3f(&D_809B4E94, &sp38);

        if (this->actor.params < 0xA) {
            addBlureVertex = this->actor.params < 6;

            if (this->hitActor == NULL) {
                addBlureVertex &= func_80090480(globalCtx, &this->collider, &this->weaponInfo, &sp44, &sp38);
            } else {
                if (addBlureVertex) {
                    if ((sp44.x == this->weaponInfo.tip.x) && (sp44.y == this->weaponInfo.tip.y) &&
                        (sp44.z == this->weaponInfo.tip.z) && (sp38.x == this->weaponInfo.base.x) &&
                        (sp38.y == this->weaponInfo.base.y) && (sp38.z == this->weaponInfo.base.z)) {
                        addBlureVertex = false;
                    }
                }
            }

            if (addBlureVertex) {
                EffectBlure_AddVertex(Effect_GetByIndex(this->effectIndex), &sp44, &sp38);
            }
        }
    }
}

void EnArrow_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnArrow* this = THIS;
    u8 sp6F;
    f32 scale;

    if (this->actor.params < 9) {
        func_80093D18(globalCtx->state.gfxCtx);
        SkelAnime_DrawLod(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, NULL, NULL, this,
                          (this->actor.projectedPos.z < MREG(95)) ? 0 : 1);
    } else if (this->actor.speedXZ != 0.0f) {
        sp6F = (Math_CosS(this->timer * 5000) * 127.5f) + 127.5f;

        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_arrow.c", 1346);

        func_80093C14(globalCtx->state.gfxCtx);

        if (this->actor.params == 9) {
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 255);
            gDPSetEnvColor(POLY_XLU_DISP++, 0, 255, 255, sp6F);
            scale = 50.0f;
        } else {
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 12, 0, 0, 255);
            gDPSetEnvColor(POLY_XLU_DISP++, 250, 250, 0, sp6F);
            scale = 150.0f;
        }

        Matrix_Push();
        Matrix_Mult(&globalCtx->mf_11DA0, MTXMODE_APPLY);
        // redundant check because this is contained in an if block for non-zero speed
        Matrix_RotateZ((this->actor.speedXZ == 0.0f) ? 0.0f
                                                     : ((globalCtx->gameplayFrames & 0xFF) * 4000) * (M_PI / 32768),
                       MTXMODE_APPLY);
        Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_arrow.c", 1374),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_04037880);
        Matrix_Pull();
        Matrix_RotateY(this->actor.posRot.rot.y * (M_PI / 32768), MTXMODE_APPLY);

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_arrow.c", 1381);
    }

    func_809B4800(this, globalCtx);
}
