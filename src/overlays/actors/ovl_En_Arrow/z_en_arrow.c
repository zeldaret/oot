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

s32 D_809B4E5C[] = { 0x010A010B, 0x010C010A, 0x010A010A };
s32 D_809B4E68[] = { 0x00000000, 0x3F000000, 0x00000000 };
s32 D_809B4E74[] = { 0x00000000, 0x3F000000, 0x00000000 };
s32 D_809B4E80[] = { 0xFFFF64FF };
s32 D_809B4E84[] = { 0xFF320000 };
s32 D_809B4E88[] = { 0x00000000, 0x43C80000, 0x44BB8000 };
s32 D_809B4E94[] = { 0x00000000, 0xC3C80000, 0x44BB8000 };
s32 D_809B4EA0[] = { 0x00000000, 0x00000000, 0xC3960000, 0x00000000 };

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
        Math_Vec3f_Copy(&this->unk_210, &this->actor.posRot);

        if (this->actor.params >= 9) {
            func_8002D9A4(this, 80.0f);
            this->timer = 15;
            this->actor.shape.rot.x = this->actor.shape.rot.y = this->actor.shape.rot.z = 0;
        } else {
            func_8002D9A4(this, 150.0f);
            this->timer = 12;
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3CEC.s")
/*
void func_809B3CEC(GlobalContext *globalCtx, EnArrow *this) {
    EnArrow_SetupAction(this, func_809B4640);
    Animation_PlayOnce(&this->skelAnime, &D_04004310);
    this->actor.posRot.rot.y += (s32)((Rand_ZeroOne() - 0.5f) * 24576.0f) + 0x8000;
    this->actor.velocity.y = this->actor.velocity.y + (this->actor.speedXZ * (0.4f + (0.4f * Rand_ZeroOne())));
    this->actor.speedXZ = this->actor.speedXZ * (0.04f + 0.3f * Rand_ZeroOne());
    this->timer = 0x32;
    this->actor.gravity = -1.5f;

}
*/

void func_809B3DD8(EnArrow* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B3DD8.s")

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

//                 if ((hitActor->update != NULL) && (!(this->collider.base.atFlags & 4)) && (hitActor->flags & 0x4000)) {
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

//             if (BgCheck_EntityLineTest1(&globalCtx->colCtx, &sp60, &sp54, &hitPoint, &sp94, 1, 1, 1, 1, &bgId) != 0) {
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B45E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B4640.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/EnArrow_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/func_809B4800.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Arrow/EnArrow_Draw.s")
