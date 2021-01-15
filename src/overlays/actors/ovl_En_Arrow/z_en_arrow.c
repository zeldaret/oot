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
extern UNK_TYPE D_04037880;

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

    Actor_ProcessInitChain(this, D_809B4DA0);

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
        Collider_SetQuad(globalCtx, &this->collider, this, &D_809B4D50);

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
            Actor_Kill(this);
            return;
        }

        switch (this->actor.params) {
            case 9:
                func_8002F7DC(player, NA_SE_IT_SLING_SHOT);
                break;
            case 0:
            case 1:
            case 2:
                func_8002F7DC(player, NA_SE_IT_ARROW_SHOT);
                break;
            case 3:
            case 4:
            case 5:
                func_8002F7DC(player, NA_SE_IT_MAGIC_ARROW_SHOT);
                break;
        }

        EnArrow_SetupAction(this, func_809B3FDC);
        Math_Vec3f_Copy(&this->unk_210, &this->actor.posRot.pos);

        if (this->actor.params >= 9) {
            func_8002D9A4(this, 80.0f);
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

void func_809B3DD8(EnArrow* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3DD8.s")
// void func_809B3DD8(EnArrow* this, GlobalContext* globalCtx) {
//     ? sp74;
//     f32 sp68;
//     f32 sp5C;
//     f32 sp50;
//     f32 sp4C;
//     ? sp44;
//     Actor* temp_v0;
//     f32 temp_f0;
//     f32 temp_f12;
//     f32 phi_f0;
//     f32 phi_f0_2;
//     f32 phi_f0_3;

//     Math_Vec3f_Diff(&this->actor.posRot, &this->unk_210, &sp68);
//     temp_v0 = this->hitActor;
//     temp_f12 = ((this->actor.posRot.pos.x - temp_v0->posRot.pos.x) * sp68) +
//                ((this->actor.posRot.pos.y - temp_v0->posRot.pos.y) * sp6C) +
//                ((this->actor.posRot.pos.z - temp_v0->posRot.pos.z) * sp70);
//     if (!(temp_f12 < 0.0f)) {
//         sp4C = temp_f12;
//         temp_f0 = Math3D_Vec3fMagnitudeSq(&sp68);
//         if (!(temp_f0 < 1.0f)) {
//             Math_Vec3f_Scale(&sp68, temp_f12 / temp_f0);
//             Math_Vec3f_Sum(&this->hitActor->posRot, &sp68, &sp5C);
//             if (BgCheck_EntityLineTest1(&globalCtx->colCtx, &this->hitActor->posRot, &sp5C, &sp50, &sp74, 1, 1, 1, 1,
//                                         &sp44) != 0) {
//                 if (sp5C <= sp50) {
//                     phi_f0 = 1.0f;
//                 } else {
//                     phi_f0 = -1.0f;
//                 }
//                 this->hitActor->posRot.pos.x = phi_f0 + sp50;
//                 if (sp60 <= sp54) {
//                     phi_f0_2 = 1.0f;
//                 } else {
//                     phi_f0_2 = -1.0f;
//                 }
//                 this->hitActor->posRot.pos.y = phi_f0_2 + sp54;
//                 if (sp64 <= sp58) {
//                     phi_f0_3 = 1.0f;
//                 } else {
//                     phi_f0_3 = -1.0f;
//                 }
//                 this->hitActor->posRot.pos.z = phi_f0_3 + sp58;
//                 return;
//             }
//             Math_Vec3f_Copy(&this->hitActor->posRot, &sp5C);
//         }
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3FDC.s")

// void func_809B3FDC(EnArrow* this, GlobalContext* globalCtx) {
//     Vec3f sp94;
//     u32 bgId;
//     Vec3f hitPoint; // sp84
//     Vec3f posCopy;
//     Vec3f sp60;
//     Vec3f sp54;
//     Actor* hitActor;
//     ColliderBody* atHit;
//     s32 cond;
//     u16 sfxId;

//     if (DECR(this->timer) == 0) {
//         Actor_Kill(this);
//         return;
//     }

//     if (this->timer < 7.2f) {
//         this->actor.gravity = -0.4f;
//     }

//     cond = this->actor.params != 0;

//     if (cond) {
//         cond = this->actor.params < 0xA;
//         if (cond) {
//             cond = (this->collider.base.atFlags & 2) != 0;
//         }
//     }

//     if ((cond) || (this->hitPoly)) {
//         if (this->actor.params >= 9) {
//             if (cond) {
//                 this->actor.posRot.pos.x = (this->actor.posRot.pos.x + this->actor.pos4.x) * 0.5f;
//                 this->actor.posRot.pos.y = (this->actor.posRot.pos.y + this->actor.pos4.y) * 0.5f;
//                 this->actor.posRot.pos.z = (this->actor.posRot.pos.z + this->actor.pos4.z) * 0.5f;
//             }

//             // sfx is weird
//             if (this->actor.params == 0xA) {
//                 iREG(50) = -1;
//                 sfxId = NA_SE_IT_SLING_REFLECT;
//                 Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_M_FIRE1, this->actor.posRot.pos.x,
//                             this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);

//             } else {
//                 sfxId = NA_SE_IT_DEKU;
//             }

//             EffectSsStone1_Spawn(globalCtx, &this->actor.posRot, 0);
//             Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot, 20, sfxId);
//             Actor_Kill(this);
//         } else {
//             EffectSsHitMark_SpawnCustomScale(globalCtx, 0, 150, &this->actor.posRot);

//             // might need to do this in the if?
//             atHit = this->collider.body.atHitItem;

//             if ((cond != 0) && (atHit->flags != 4)) {
//                 hitActor = this->collider.base.at;

//                 if ((hitActor->update != NULL) && (!(this->collider.base.atFlags & 4)) && (hitActor->flags & 0x4000))
//                 {
//                     this->hitActor = hitActor;
//                     func_809B3DD8(this, globalCtx);
//                     Math_Vec3f_Diff(&hitActor->posRot, &this->actor.posRot, &this->unk_250);
//                     hitActor->flags |= 0x8000;
//                     this->collider.base.atFlags &= ~2;
//                     this->actor.speedXZ *= 0.5f;
//                     this->actor.velocity.y *= 0.5f;
//                 } else {
//                     this->hitFlags |= 1;
//                     this->hitFlags |= 2;

//                     if (atHit->bumperFlags & 2) {
//                         this->actor.posRot.pos.x = atHit->bumper.unk_06.x;
//                         this->actor.posRot.pos.y = atHit->bumper.unk_06.y;
//                         this->actor.posRot.pos.z = atHit->bumper.unk_06.z;
//                     }

//                     func_809B3CEC(globalCtx, this);
//                     Audio_PlayActorSound2(this, NA_SE_IT_ARROW_STICK_CRE);
//                 }
//             } else if (this->hitPoly) {
//                 EnArrow_SetupAction(this, func_809B45E0);
//                 Animation_PlayOnce(&this->skelAnime, &D_0400436C);
//                 this->timer = (this->actor.params >= 0) ? 60 : 20;
//                 Audio_PlayActorSound2(this, NA_SE_IT_ARROW_STICK_OBJ);
//                 this->hitFlags |= 1;
//             }
//         }
//     } else {
//         Math_Vec3f_Copy(&this->unk_210, &this->actor.posRot);
//         Actor_MoveForward(&this->actor);
//         this->hitPoly = BgCheck_ProjectileLineTest(&globalCtx->colCtx, &this->actor.pos4, &this->actor.posRot.pos,
//                                                    &hitPoint, &this->actor.wallPoly, true, true, true, true, &bgId);
//         // !! ?
//         if (this->hitPoly) {
//             func_8002F9EC(globalCtx, this, this->actor.wallPoly, bgId, &hitPoint);
//             Math_Vec3f_Copy(&posCopy, &this->actor.posRot);
//             Math_Vec3f_Copy(&this->actor.posRot, &hitPoint);
//         }

//         if (this->actor.params < 9) {
//             this->actor.shape.rot.x = Math_Atan2S(this->actor.speedXZ, -this->actor.velocity.y);
//         }
//     }

//     if (this->hitActor != NULL) {
//         if (this->hitActor->update != NULL) {
//             Math_Vec3f_Sum(&this->unk_210, &this->unk_250, &sp60);
//             Math_Vec3f_Sum(&this->actor.posRot, &this->unk_250, &sp54);

//             if (BgCheck_EntityLineTest1(&globalCtx->colCtx, &sp60, &sp54, &hitPoint, &sp94, 1, 1, 1, 1, &bgId) != 0)
//             {
//                 this->hitActor->posRot.pos.x = hitPoint.x + (sp54.x <= hitPoint.x) ? 1.0f : -1.0f;
//                 this->hitActor->posRot.pos.y = hitPoint.y + (sp54.y <= hitPoint.y) ? 1.0f : -1.0f;
//                 this->hitActor->posRot.pos.z = hitPoint.z + (sp54.z <= hitPoint.z) ? 1.0f : -1.0f;
//                 Math_Vec3f_Diff(&this->hitActor->posRot, &this->actor.posRot, &this->unk_250);
//                 this->hitActor->flags &= ~0x8000;
//                 this->hitActor = NULL;
//             } else {
//                 Math_Vec3f_Sum(&this->actor.posRot, &this->unk_250, &this->hitActor->posRot);
//             }

//             if ((this->hitPoly) && (this->hitActor != NULL)) {
//                 this->hitActor->flags &= ~0x8000;
//                 this->hitActor = NULL;
//             }

//         } else {
//             this->hitActor = NULL;
//         }
//     }
// }

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
            Actor_SpawnAsChild(&globalCtx->actorCtx, this, globalCtx, elementalActorIds[this->actor.params - 3],
                               this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0,
                               0);
        }
    } else if (this->actor.params == 0) {
        static Vec3f velocity = { 0.0f, 0.5f, 0.0f };
        static Vec3f accel = { 0.0f, 0.5f, 0.0f };
        static Color_RGBA8 primColor = { 255, 255, 100, 255 };
        static Color_RGBA8 envColor = { 255, 50, 0, 0 };

        func_8002836C(globalCtx, this->unk_21C, &velocity, &accel, &primColor, &envColor, 100, 0, 8);
    }
}

s32 D_809B4E88[] = { 0x00000000, 0x43C80000, 0x44BB8000 };
s32 D_809B4E94[] = { 0x00000000, 0xC3C80000, 0x44BB8000 };
s32 D_809B4EA0[] = { 0x00000000, 0x00000000, 0xC3960000, 0x00000000 };

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B4800.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/EnArrow_Draw.s")
void EnArrow_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnArrow* this = THIS;
    u8 sp6F;
    f32 sp68;
    GraphicsContext* sp64;
    Gfx* sp54;
    Gfx* sp40;
    Gfx* temp_v0;
    Gfx* temp_v0_2;
    Gfx* temp_v0_3;
    Gfx* temp_v0_4;
    Gfx* temp_v0_5;
    Gfx* temp_v0_6;
    GraphicsContext* temp_a1;
    f32 temp_f6;
    s32 temp_t7;
    u8 temp_a0;
    s32 lod;
    f32 phi_f12;
    f32 phi_f6;

    if (this->actor.params < 9) {
        func_80093D18(globalCtx->state.gfxCtx);
        lod = 1;
        if (this->actor.projectedPos.z < MREG(95)) {
            lod = 0;
        }
        SkelAnime_DrawLod(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, NULL, NULL, this, lod);
    } else if (this->actor.speedXZ != 0.0f) {
        temp_a0 = this->timer;
        sp6F = (Math_CosS(((((((temp_a0 * 4) + temp_a0) * 8) - temp_a0) * 0x10) + temp_a0) * 8) * 127.5f) + 127.5f;
        temp_a1 = globalCtx->state.gfxCtx;
        sp64 = temp_a1;
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_arrow.c", 1346);

        func_80093C14(globalCtx->state.gfxCtx);

        if (this->actor.params == 9) {
            temp_v0 = sp64->polyXlu.p;
            sp64->polyXlu.p = temp_v0 + 8;
            temp_v0->words.w1 = -1;
            temp_v0->words.w0 = 0xFA000000;
            temp_v0_2 = sp64->polyXlu.p;
            sp64->polyXlu.p = temp_v0_2 + 8;
            temp_v0_2->words.w0 = 0xFB000000;
            temp_v0_2->words.w1 = sp6F | 0xFFFF00;
            sp68 = 50.0f;
        } else {
            temp_v0_3 = sp64->polyXlu.p;
            sp64->polyXlu.p = temp_v0_3 + 8;
            temp_v0_3->words.w1 = 0xC0000FF;
            temp_v0_3->words.w0 = 0xFA000000;
            temp_v0_4 = sp64->polyXlu.p;
            sp64->polyXlu.p = temp_v0_4 + 8;
            temp_v0_4->words.w0 = 0xFB000000;
            temp_v0_4->words.w1 = sp6F | 0xFAFA0000;
            sp68 = 150.0f;
        }
        sp64 = sp64;
        Matrix_Push();
        Matrix_Mult(&globalCtx->mf_11DA0, MTXMODE_APPLY);

        if (this->actor.speedXZ == 0.0f) {
            phi_f12 = 0.0f;
        } else {
            temp_t7 = (globalCtx->gameplayFrames & 0xFF) * 0xFA0;
            temp_f6 = temp_t7;
            phi_f6 = temp_f6;
            if (temp_t7 < 0) {
                phi_f6 = temp_f6 + 4294967296.0f;
            }
            phi_f12 = phi_f6 * 0.0000958738f;
        }

        sp64 = sp64;
        Matrix_RotateZ(phi_f12, MTXMODE_APPLY);
        Matrix_Scale(sp68, sp68, sp68, MTXMODE_APPLY);
        temp_v0_5 = sp64->polyXlu.p;
        sp64->polyXlu.p = temp_v0_5 + 8;
        temp_v0_5->words.w0 = 0xDA380003;
        sp64 = sp64;
        sp40 = temp_v0_5;
        sp40->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_arrow.c", 1374);
        temp_v0_6 = sp64->polyXlu.p;
        sp64->polyXlu.p = temp_v0_6 + 8;
        temp_v0_6->words.w1 = &D_04037880;
        temp_v0_6->words.w0 = 0xDE000000;
        Matrix_Pull();
        Matrix_RotateY(this->actor.posRot.rot.y * 0.0000958738f, MTXMODE_APPLY);
        
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_arrow.c", 1381);
    }

    func_809B4800(this, globalCtx);
}
