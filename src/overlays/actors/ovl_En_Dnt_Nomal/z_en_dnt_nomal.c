#include "z_en_dnt_nomal.h"
#include "overlays/actors/ovl_En_Dnt_Demo/z_en_dnt_demo.h"
#include "overlays/actors/ovl_En_Ex_Ruppy/z_en_ex_ruppy.h"
#include "vt.h"

#define FLAGS 0x00000030

#define THIS ((EnDntNomal*)thisx)

void EnDntNomal_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDntNomal_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDntNomal_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDntNomal_DrawTargetScrub(Actor* thisx, GlobalContext* globalCtx);
void EnDntNomal_DrawStageScrub(Actor* thisx, GlobalContext* globalCtx);

void EnDntNomal_WaitForObject(EnDntNomal* this, GlobalContext* globalCtx);
void EnDntNomal_SetBehavior(EnDntNomal* this, GlobalContext* globalCtx);
void EnDntNomal_SetupTargetWait(EnDntNomal* this, GlobalContext* globalCtx);
void EnDntNomal_TargetWait(EnDntNomal* this, GlobalContext* globalCtx);
void EnDntNomal_SetupTargetUnburrow(EnDntNomal* this, GlobalContext* globalCtx);
void EnDntNomal_TargetUnburrow(EnDntNomal* this, GlobalContext* globalCtx);
void EnDntNomal_SetupTargetWalk(EnDntNomal* this, GlobalContext* globalCtx);
void EnDntNomal_TargetWalk(EnDntNomal* this, GlobalContext* globalCtx);
void EnDntNomal_TargetFacePlayer(EnDntNomal* this, GlobalContext* globalCtx);
void EnDntNomal_SetupTargetTalk(EnDntNomal* this, GlobalContext* globalCtx);
void EnDntNomal_TargetTalk(EnDntNomal* this, GlobalContext* globalCtx);
void EnDntNomal_SetupTargetGivePrize(EnDntNomal* this, GlobalContext* globalCtx);
void EnDntNomal_TargetGivePrize(EnDntNomal* this, GlobalContext* globalCtx);
void EnDntNomal_TargetReturn(EnDntNomal* this, GlobalContext* globalCtx);
void EnDntNomal_TargetBurrow(EnDntNomal* this, GlobalContext* globalCtx);
void EnDntNormal_SetupWait(EnDntNomal* this, GlobalContext* globalCtx);
void EnDntNormal_Wait(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F43F0(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F44FC(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F4730(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F4824(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F48FC(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F49A4(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F4BA4(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F4CB4(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F4E18(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F4EF4(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F50B8(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F50EC(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F51B8(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F5478(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F551C(EnDntNomal* this, GlobalContext* globalCtx);

extern AnimationHeader D_06000168;
extern AnimationHeader D_0600031C;
extern AnimationHeader D_06000430;
extern AnimationHeader D_060006CC;
extern AnimationHeader D_06000894;
extern AnimationHeader D_06000B70;
extern Gfx D_060014E0[];
extern Gfx D_06001B00[];
extern SkeletonHeader D_060023B8;
extern AnimationHeader D_060024CC;
extern AnimationHeader D_060026C4;
extern SkeletonHeader D_06002AF0;
extern AnimationHeader D_06002E1C;
extern AnimationHeader D_06002E84;
extern AnimationHeader D_06003128;

const ActorInit En_Dnt_Nomal_InitVars = {
    ACTOR_EN_DNT_NOMAL,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnDntNomal),
    (ActorFunc)EnDntNomal_Init,
    (ActorFunc)EnDntNomal_Destroy,
    (ActorFunc)EnDntNomal_Update,
    NULL,
};

static ColliderCylinderInit sBodyCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 16, 46, 0, { 0, 0, 0 } },
};

static ColliderQuadInit sTargetQuadInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x20, COLSHAPE_QUAD },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x0001F824, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static Color_RGBA8 D_809F5E4C[] = {
    { 255, 255, 255, 255 }, { 255, 195, 175, 255 }, { 210, 255, 0, 255 },
    { 255, 255, 255, 255 }, { 210, 255, 0, 255 },   { 255, 195, 175, 255 },
    { 255, 255, 255, 255 }, { 255, 195, 175, 255 }, { 210, 255, 0, 255 },
};

void EnDntNomal_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDntNomal* this = THIS;

    this->type = this->actor.params;
    if (this->type < 0) {
        this->type = 0;
    }
    this->actor.flags &= ~1;
    this->actor.colChkInfo.mass = 0xFF;
    this->objId = -1;
    if (this->type == 0) {
        osSyncPrintf("\n\n");
        // Deku Scrub target
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ デグナッツ的当て ☆☆☆☆☆ \n" VT_RST);
        Collider_InitQuad(globalCtx, &this->targetQuad);
        Collider_SetQuad(globalCtx, &this->targetQuad, &this->actor, &sTargetQuadInit);
        this->actor.posRot.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsLink;
        this->objId = OBJECT_HINTNUTS;
    } else {
        osSyncPrintf("\n\n");
        // Deku Scrub mask show audience
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ デグナッツお面品評会一般人 ☆☆☆☆☆ \n" VT_RST);
        Collider_InitCylinder(globalCtx, &this->bodyCyl);
        Collider_SetCylinder(globalCtx, &this->bodyCyl, &this->actor, &sBodyCylinderInit);
        this->objId = OBJECT_DNK;
    }
    if (this->objId >= 0) {
        this->objIndex = Object_GetIndex(&globalCtx->objectCtx, this->objId);
        if (this->objIndex < 0) {
            Actor_Kill(&this->actor);
            // What?
            osSyncPrintf(VT_FGCOL(PURPLE) " なにみの？ %d\n" VT_RST "\n", this->objIndex);
            // Bank is funny
            osSyncPrintf(VT_FGCOL(CYAN) " バンクおかしいしぞ！%d\n" VT_RST "\n", this->actor.params);
            return;
        }
    } else {
        Actor_Kill(&this->actor);
    }
    this->actionFunc = EnDntNomal_WaitForObject;
}

void EnDntNomal_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDntNomal* this = THIS;

    if (this->type == 0) {
        Collider_DestroyQuad(globalCtx, &this->targetQuad);
    } else {
        Collider_DestroyCylinder(globalCtx, &this->bodyCyl);
    }
}

void EnDntNomal_WaitForObject(EnDntNomal* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->objIndex)) {
        gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->objIndex].segment);
        this->actor.objBankIndex = this->objIndex;
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 0.0f);
        this->actor.gravity = -2.0f;
        Actor_SetScale(&this->actor, 0.01f);
        if (this->type == 0) {
            SkelAnime_Init(globalCtx, &this->skelAnime, &D_060023B8, &D_060024CC, this->limbDrawTbl,
                           this->transitionDrawTbl, 10);
            this->actor.draw = EnDntNomal_DrawTargetScrub;
        } else {
            SkelAnime_Init(globalCtx, &this->skelAnime, &D_06002AF0, &D_06000430, this->limbDrawTbl,
                           this->transitionDrawTbl, 11);
            this->actor.draw = EnDntNomal_DrawStageScrub;
        }
        this->actionFunc = EnDntNomal_SetBehavior;
    }
}

void EnDntNomal_SetBehavior(EnDntNomal* this, GlobalContext* globalCtx) {
    if (this->actor.bgCheckFlags & 1) {
        this->flowerPos = this->actor.posRot.pos;
        if (this->type == 0) {
            this->actionFunc = EnDntNomal_SetupTargetWait;
        } else {
            this->actionFunc = EnDntNormal_SetupWait;
        }
    }
}

void EnDntNomal_SetupTargetWait(EnDntNomal* this, GlobalContext* globalCtx) {
    this->endFrame = (f32)SkelAnime_GetFrameCount(&D_060024CC);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060024CC, 0.0f, 0.0f, this->endFrame, 2, -10.0f);
    this->skelAnime.animCurrentFrame = 8.0f;
    this->actionFunc = EnDntNomal_TargetWait;
}

void EnDntNomal_TargetWait(EnDntNomal* this, GlobalContext* globalCtx) {
    Vec3f scorePos;
    f32 targetX = 1340.0f;
    f32 targetY = 50.0f;
    f32 targetZ = -30.0f;
    f32 dx;
    f32 dy;
    f32 dz;
    Vec3f scoreAccel = { 0.0f, 0.0f, 0.0f };
    Vec3f scoreVel = { 0.0f, 0.0f, 0.0f };

    this->targetVtx[0].x = this->targetVtx[1].x = this->targetVtx[2].x = this->targetVtx[3].x = targetX;

    this->targetVtx[1].y = this->targetVtx[0].y = targetY - 24.0f;

    this->targetVtx[2].z = this->targetVtx[0].z = targetZ + 24.0f;

    this->targetVtx[3].z = this->targetVtx[1].z = targetZ - 24.0f;

    this->targetVtx[3].y = this->targetVtx[2].y = targetY + 24.0f;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((this->targetQuad.base.acFlags & 2) || BREG(0)) {
        this->targetQuad.base.acFlags &= ~2;

        dx = fabsf(targetX - this->targetQuad.body.bumper.unk_06.x);
        dy = fabsf(targetY - this->targetQuad.body.bumper.unk_06.y);
        dz = fabsf(targetZ - this->targetQuad.body.bumper.unk_06.z);

        scoreVel.y = 5.0f;

        if (sqrtf(SQ(dx) + SQ(dy) + SQ(dz)) < 8.0f) {
            scorePos.x = this->actor.posRot.pos.x - 20.0f;
            scorePos.y = this->actor.posRot.pos.y + 20.0f;
            scorePos.z = this->actor.posRot.pos.z;
            EffectSsExtra_Spawn(globalCtx, &scorePos, &scoreVel, &scoreAccel, 4, 2);
            func_800F8D04(NA_SE_SY_TRE_BOX_APPEAR);
            func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
            // Big hit
            osSyncPrintf(VT_FGCOL(CYAN) "☆☆☆☆☆ 大当り ☆☆☆☆☆ %d\n" VT_RST, this->hitCounter);
            if (LINK_IS_CHILD && !(gSaveContext.itemGetInf[1] & 0x2000)) {
                this->hitCounter++;
                if (this->hitCounter >= 3) {
                    func_800800F8(globalCtx, 0x102C, -0x63, &this->actor, 0);
                    func_8002DF54(globalCtx, &this->actor, 1);
                    this->timer4 = 50;
                    this->actionFunc = EnDntNomal_SetupTargetUnburrow;
                }
            }
        } else if (sqrtf(SQ(dx) + SQ(dy) + SQ(dz)) < 24.0f) {
            scorePos.x = this->actor.posRot.pos.x;
            scorePos.y = this->actor.posRot.pos.y + 20.0f;
            scorePos.z = this->actor.posRot.pos.z;
            EffectSsExtra_Spawn(globalCtx, &scorePos, &scoreVel, &scoreAccel, 4, 0);
            this->hitCounter = 0;
        }
    }
}

void EnDntNomal_SetupTargetUnburrow(EnDntNomal* this, GlobalContext* globalCtx) {
    Vec3f sp3C;

    if (this->timer4 == 0) {
        this->endFrame = (f32)SkelAnime_GetFrameCount(&D_060026C4);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_060026C4, 1.0f, 0.0f, this->endFrame, 2, -10.0f);
        sp3C = this->actor.posRot.pos;
        sp3C.y = this->actor.posRot.pos.y + 50.0f;
        EffectSsHahen_SpawnBurst(globalCtx, &sp3C, 4.0f, 0, 0xA, 3, 0xF, -1, 0xA, 0);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_UP);
        this->actionFunc = EnDntNomal_TargetUnburrow;
    }
}

void EnDntNomal_TargetUnburrow(EnDntNomal* this, GlobalContext* globalCtx) {
    f32 frame = this->skelAnime.animCurrentFrame;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (frame >= this->endFrame) {
        this->actionFunc = EnDntNomal_SetupTargetWalk;
    }
}

void EnDntNomal_SetupTargetWalk(EnDntNomal* this, GlobalContext* globalCtx) {
    this->endFrame = (f32)SkelAnime_GetFrameCount(&D_06003128);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06003128, 1.0f, 0.0f, this->endFrame, 0, -10.0f);
    this->actor.speedXZ = 1.0f;
    this->actor.colChkInfo.mass = 0;
    this->actionFunc = EnDntNomal_TargetWalk;
}

void EnDntNomal_TargetWalk(EnDntNomal* this, GlobalContext* globalCtx) {
    f32 temp1;
    f32 temp2;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    temp1 = 1340.0f + 3.0f - this->actor.posRot.pos.x;
    temp2 = 0.0f - this->actor.posRot.pos.z;
    Math_SmoothStepToS(&this->actor.shape.rot.y, Math_FAtan2F(temp1, temp2) * (0x8000 / M_PI), 0x32, 0xBB8, 0);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    if (func_800A56C8(&this->skelAnime, 0.0f) || func_800A56C8(&this->skelAnime, 6.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_WALK);
    }
    if (this->actor.posRot.pos.z > -30.0f) {
        this->actor.speedXZ = 0.0f;
        this->actionFunc = EnDntNomal_TargetFacePlayer;
    }
}

void EnDntNomal_TargetFacePlayer(EnDntNomal* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x1388, 0);
    if (func_800A56C8(&this->skelAnime, 0.0f) || func_800A56C8(&this->skelAnime, 6.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_WALK);
    }
    if (fabsf(this->actor.shape.rot.y - this->actor.yawTowardsLink) < 30.0f) {
        this->actionFunc = EnDntNomal_SetupTargetTalk;
    }
}

void EnDntNomal_SetupTargetTalk(EnDntNomal* this, GlobalContext* globalCtx) {
    this->endFrame = (f32)SkelAnime_GetFrameCount(&D_06002E84);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06002E84, 1.0f, 0.0f, this->endFrame, 0, -10.0f);
    this->actor.textId = 0x10AF;
    func_8010B680(globalCtx, this->actor.textId, NULL);
    this->actionFunc = EnDntNomal_TargetTalk;
}

void EnDntNomal_TargetTalk(EnDntNomal* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
        func_80106CCC(globalCtx);
        func_8005B1A4(ACTIVE_CAM);
        ACTIVE_CAM->unk_168 = 0;
        func_8002DF54(globalCtx, NULL, 8);
        this->actionFunc = EnDntNomal_SetupTargetGivePrize;
    }
}

void EnDntNomal_SetupTargetGivePrize(EnDntNomal* this, GlobalContext* globalCtx) {
    this->endFrame = (f32)SkelAnime_GetFrameCount(&D_06000168);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000168, 1.0f, 0.0f, this->endFrame, 2, -10.0f);
    this->actionFunc = EnDntNomal_TargetGivePrize;
}

void EnDntNomal_TargetGivePrize(EnDntNomal* this, GlobalContext* globalCtx) {
    f32 frame = this->skelAnime.animCurrentFrame;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((frame >= 8.0f) && !this->spawnedItem) {
        f32 itemX = this->mouthPos.x - 10.0f;
        f32 itemY = this->mouthPos.y;
        f32 itemZ = this->mouthPos.z;

        if (Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_EX_ITEM, itemX, itemY, itemZ, 0,
                               0, 0, 0x13) == NULL) {
            func_8002DF54(globalCtx, NULL, 7);
            Actor_Kill(&this->actor);
        }
        this->spawnedItem = true;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_THROW);
    }
    if (frame >= this->endFrame) {
        this->endFrame = (f32)SkelAnime_GetFrameCount(&D_06003128);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06003128, 1.0f, 0.0f, this->endFrame, 0, -10.0f);
        this->actionFunc = EnDntNomal_TargetReturn;
    }
}

void EnDntNomal_TargetReturn(EnDntNomal* this, GlobalContext* globalCtx) {
    f32 temp_f12;
    f32 temp_f14;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    temp_f12 = this->flowerPos.x - this->actor.posRot.pos.x;
    temp_f14 = -180.0f - this->actor.posRot.pos.z;

    Math_SmoothStepToS(&this->actor.shape.rot.y, Math_FAtan2F(temp_f12, temp_f14) * 10430.378f, 3, 0x1388, 0);
    if (fabsf(this->actor.shape.rot.y - (s16)(Math_FAtan2F(temp_f12, temp_f14) * 10430.378f)) < 20.0f) {
        this->actor.speedXZ = 1.0f;
    }
    if (func_800A56C8(&this->skelAnime, 0.0f) || func_800A56C8(&this->skelAnime, 6.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_WALK);
    }
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    if (this->actor.posRot.pos.z < -172.0f) {
        this->endFrame = (f32)SkelAnime_GetFrameCount(&D_060024CC);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_060024CC, 1.0f, 0.0f, this->endFrame, 2, -10.0f);
        this->actor.posRot.pos.z = -173.0f;
        this->actor.speedXZ = 0.0f;
        this->actionFunc = EnDntNomal_TargetBurrow;
    }
}

void EnDntNomal_TargetBurrow(EnDntNomal* this, GlobalContext* globalCtx) {
    f32 frame = this->skelAnime.animCurrentFrame;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (frame >= this->endFrame) {
        this->actionFunc = EnDntNomal_SetupTargetWait;
    }
}

void EnDntNormal_SetupWait(EnDntNomal* this, GlobalContext* globalCtx) {
    if (this->timer3 == 0) {
        this->endFrame = (f32)SkelAnime_GetFrameCount(&D_06000430);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06000430, 0.0f, 0.0f, this->endFrame, 2, -10.0f);
        this->skelAnime.animCurrentFrame = 8.0f;
        this->isSolid = false;
        this->actionFunc = EnDntNormal_Wait;
    }
}

void EnDntNormal_Wait(EnDntNomal* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

void func_809F43F0(EnDntNomal* this, GlobalContext* globalCtx) {
    if (this->timer3 == 0) {
        this->endFrame = (f32)SkelAnime_GetFrameCount(&D_06000B70);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06000B70, 1.0f, 0.0f, this->endFrame, 2, -10.0f);
        if (this->demoAction != 2) {
            this->unk_272 = -1;
        }
        EffectSsHahen_SpawnBurst(globalCtx, &this->actor.posRot.pos, 4.0f, 0, 0xA, 3, 0xF, -1, 0xA, 0);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_UP);
        this->isSolid = true;
        this->actionFunc = func_809F44FC;
    }
}

void func_809F44FC(EnDntNomal* this, GlobalContext* globalCtx) {
    s16 phi_a1;
    f32 frame = this->skelAnime.animCurrentFrame;
    f32 sp2C;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((frame >= this->endFrame) && (this->demoAction == 2)) {
        this->actionFunc = func_809F50EC;
    } else {
        if (this->timer4 == 0) {
            sp2C = 0.0f;
            if (this->demoPrize == 0) {
                Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x1388, 0);
            } else {
                f32 temp1 = this->unk_288.x - this->actor.posRot.pos.x;
                f32 temp2 = this->unk_288.z - this->actor.posRot.pos.z;

                Math_SmoothStepToS(&this->actor.shape.rot.y, Math_FAtan2F(temp1, temp2) * 10430.378f, 1, 0xBB8, 0);
                sp2C = 90.0f;
            }
            if ((Rand_ZeroFloat(10.0f + sp2C) < 1.0f) && (this->demoAction != 2)) {
                this->timer4 = (s16)Rand_ZeroFloat(30.0f) + 30;
            }
        } else {
            if (this->timer2 == 0) {
                this->unk_272++;
                if (this->unk_272 > 1) {
                    this->unk_272 = -1;
                }
                this->timer2 = (s16)Rand_ZeroFloat(10.0f) + 10;
            }
            phi_a1 = this->actor.yawTowardsLink;
            if (this->unk_272 != 0) {
                phi_a1 += this->unk_272 * 0x1388;
            }
            Math_SmoothStepToS(&this->actor.shape.rot.y, phi_a1, 3, 0x1388, 0);
        }
        if (this->actor.xzDistFromLink < 70.0f) {
            this->actionFunc = func_809F4E18;
        }
    }
}

void func_809F4730(EnDntNomal* this, GlobalContext* globalCtx) {
    if (this->timer3 == 0) {
        this->endFrame = (f32)SkelAnime_GetFrameCount(&D_06000894);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06000894, 1.0f, 0.0f, this->endFrame, 2, -10.0f);
        this->isSolid = false;
        EffectSsHahen_SpawnBurst(globalCtx, &this->actor.posRot.pos, 4.0f, 0, 0xA, 3, 0xF, -1, 0xA, 0);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_UP);
        this->actionFunc = func_809F4824;
    }
}

void func_809F4824(EnDntNomal* this, GlobalContext* globalCtx) {
    f32 frame = this->skelAnime.animCurrentFrame;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (frame >= this->endFrame) {
        if (this->demoAction != 1) {
            this->timer3 = (s16)Rand_ZeroFloat(2.0f) + (s16)(this->type * 0.5f);
            this->actionFunc = func_809F48FC;
        } else {
            this->timer2 = 0x12C;
            this->actionFunc = func_809F4BA4;
        }
    }
}

void func_809F48FC(EnDntNomal* this, GlobalContext* globalCtx) {
    this->endFrame = (f32)SkelAnime_GetFrameCount(&D_06002E1C);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06002E1C, 1.0f, 0.0f, this->endFrame, 0, -10.0f);
    this->actor.speedXZ = 3.0f;
    this->isSolid = true;
    this->actionFunc = func_809F49A4;
}

void func_809F49A4(EnDntNomal* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((this->timer1 == 0) && (this->timer3 == 0)) {
        f32 temp_f12 = this->unk_288.x - this->actor.posRot.pos.x;
        f32 temp_f14 = this->unk_288.z - this->actor.posRot.pos.z;

        if ((fabsf(temp_f12) < 10.0f) && (fabsf(temp_f14) < 10.0f) && func_8010BDBC(&globalCtx->msgCtx)) {
            this->demoAction = 5;
            this->actionFunc = func_809F4BA4;
            this->actor.speedXZ = 0.0f;
            return;
        }
        Math_SmoothStepToS(&this->actor.shape.rot.y, Math_FAtan2F(temp_f12, temp_f14) * 10430.378f, 1, 0xBB8, 0);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
    } else {
        if (this->timer1 == 1) {
            this->timer3 = (s16)Rand_ZeroFloat(20.0f) + 20.0f;
        }
        Math_SmoothStepToS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 0x14, 0x1388, 0);
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x1388, 0);
    }
    if (this->timer5 == 0) {
        this->timer5 = 0x14;
        if ((this->type & 1) == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_DAMAGE);
        }
    } else if ((this->timer5 & 3) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_WALK);
    }
    if ((this->actor.bgCheckFlags & 8) && (this->actor.bgCheckFlags & 1)) {
        this->actor.velocity.y = 7.5f;
    }
}

void func_809F4BA4(EnDntNomal* this, GlobalContext* globalCtx) {
    this->endFrame = (f32)SkelAnime_GetFrameCount(&D_060006CC);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060006CC, 1.0f, 0.0f, this->endFrame, 0, -10.0f);
    this->isSolid = true;
    this->timer3 = (s16)Rand_ZeroFloat(20.0f) + 20.0f;
    this->unk_272 = -1;
    if (Rand_ZeroFloat(1.99f) < 1.0f) {
        this->unk_272 = 1;
    }
    this->actionFunc = func_809F4CB4;
}

void func_809F4CB4(EnDntNomal* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->timer2 == 0) {
        if (this->demoAction == 1) {
            this->demoAction = 4;
            this->actionFunc = func_809F4E18;
        } else {
            this->demoAction = 0;
            this->actionFunc = func_809F5478;
        }
    } else if (this->timer3 != 0) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x1388, 0);
        if (this->timer3 == 1) {
            this->timer4 = (s16)Rand_ZeroFloat(20.0f) + 20.0f;
            this->unk_272 = -this->unk_272;
        }
    } else if (this->timer4 != 0) {
        this->actor.shape.rot.y += this->unk_272 * 0x800;
        if (this->timer4 == 1) {
            this->timer3 = (s16)Rand_ZeroFloat(20.0f) + 20.0f;
        }
    }
}

void func_809F4E18(EnDntNomal* this, GlobalContext* globalCtx) {
    if (this->timer3 != 0) {
        if ((this->timer3 == 1) && (this->ignore == 1)) {
            func_80078884(NA_SE_SY_ERROR);
        }
    } else {
        this->endFrame = (f32)SkelAnime_GetFrameCount(&D_06000430);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06000430, 1.0f, 0.0f, this->endFrame, 2, -10.0f);
        this->isSolid = false;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_DOWN);
        this->actionFunc = func_809F4EF4;
    }
}

void func_809F4EF4(EnDntNomal* this, GlobalContext* globalCtx) {
    EnExRuppy* sp44;
    f32 frame = this->skelAnime.animCurrentFrame;
    s16 sp3E;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (frame >= this->endFrame) {
        EffectSsHahen_SpawnBurst(globalCtx, &this->actor.posRot.pos, 4.0f, 0, 0xA, 3, 0xF, -1, 0xA, 0);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_UP);
        switch (this->demoAction) {
            case 0:
                this->actionFunc = EnDntNormal_SetupWait;
                break;
            case 2:
                this->actionFunc = func_809F50B8;
                break;
            case 3:
            case 4:
                sp44 = (EnExRuppy*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_EX_RUPPY,
                                               this->actor.posRot.pos.x, this->actor.posRot.pos.y + 20.0f,
                                               this->actor.posRot.pos.z, 0, 0, 0, 3);
                if (sp44 != NULL) {
                    sp3E = this->demoAction - 3;
                    sp44->colorIdx = sp3E;
                    if (Rand_ZeroFloat(3.99f) < 1.0f) {
                        sp44->colorIdx = sp3E + 1;
                    }
                    sp44->actor.velocity.y = 5.0f;
                    if (sp44->colorIdx == 2) {
                        sp44->actor.velocity.y = 7.0f;
                    }
                    func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
                }
                this->demoAction = 0;
                this->actionFunc = EnDntNormal_SetupWait;
                break;
        }
    }
}

void func_809F50B8(EnDntNomal* this, GlobalContext* globalCtx) {
    if (this->actor.xzDistFromLink > 70.0f) {
        this->actionFunc = func_809F43F0;
    }
}

void func_809F50EC(EnDntNomal* this, GlobalContext* globalCtx) {
    if (this->timer3 == 0) {
        this->endFrame = (f32)SkelAnime_GetFrameCount(&D_0600031C);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_0600031C, 1.0f, 0.0f, this->endFrame, 2, -10.0f);
        this->actor.colChkInfo.mass = 0xFF;
        this->isSolid = true;
        this->timer2 = 0;
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_ENEMY);
        this->actionFunc = func_809F51B8;
    }
}

void func_809F51B8(EnDntNomal* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Actor* temp_v0;
    f32 frame = this->skelAnime.animCurrentFrame;
    f32 temp_f16;
    f32 temp_f2;
    f32 temp_f3;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x1388, 0);
    temp_f2 = player->actor.posRot.pos.x - this->mouthPos.x;
    temp_f3 = player->actor.posRot.pos.y + 30.0f - this->mouthPos.y;
    temp_f16 = player->actor.posRot.pos.z - this->mouthPos.z;
    Math_SmoothStepToS(&this->actor.shape.rot.x,
                            -(s16)(Math_FAtan2F(temp_f3, sqrtf(SQ(temp_f2) + SQ(temp_f16))) * 10430.378f), 3, 0x1388, 0);
    if ((frame >= this->endFrame) && (this->timer2 == 0)) {
        this->timer2 = (s16)Rand_ZeroFloat(10.0f) + 10;
    }
    if (this->timer2 == 1) {
        this->spawnedItem = false;
        this->actionFunc = func_809F50EC;
    } else if (this->actor.xzDistFromLink < 50.0f) {
        this->demoAction = 2;
        this->actionFunc = func_809F4E18;
    } else if ((frame >= 8.0f) && (!this->spawnedItem)) {
        Vec3f sp5C;
        Vec3f sp50;
        f32 tempx;
        f32 tempy;
        f32 tempz;

        Matrix_RotateY(this->actor.shape.rot.y / (f32)0x8000 * M_PI, MTXMODE_NEW);
        Matrix_RotateX(this->actor.shape.rot.x / (f32)0x8000 * M_PI, MTXMODE_APPLY);
        sp5C.x = 0.0f;
        sp5C.y = 0.0f;
        sp5C.z = 5.0f;
        Matrix_MultVec3f(&sp5C, &sp50);
        tempx = this->mouthPos.x + sp50.x;
        tempy = this->mouthPos.y + sp50.y;
        tempz = this->mouthPos.z + sp50.z;

        temp_v0 = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_NUTSBALL, tempx, tempy, tempz,
                              this->actor.shape.rot.x, this->actor.shape.rot.y, this->actor.shape.rot.z, 4);
        if (temp_v0 != NULL) {
            temp_v0->velocity.y = sp50.y * 0.5f;
        }
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_THROW);
        this->spawnedItem = true;
    }
}

void func_809F5478(EnDntNomal* this, GlobalContext* globalCtx) {
    this->endFrame = (f32)SkelAnime_GetFrameCount(&D_06002E1C);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06002E1C, 1.5f, 0.0f, this->endFrame, 0, -10.0f);
    this->actor.speedXZ = 4.0f;
    this->isSolid = false;
    this->actionFunc = func_809F551C;
}

void func_809F551C(EnDntNomal* this, GlobalContext* globalCtx) {
    f32 sp2C;
    f32 sp28;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    sp2C = this->flowerPos.x - this->actor.posRot.pos.x;
    sp28 = this->flowerPos.z - this->actor.posRot.pos.z;
    Math_SmoothStepToS(&this->actor.shape.rot.y, Math_FAtan2F(sp2C, sp28) * 10430.378f, 1, 0xBB8, 0);
    if (this->timer5 == 0) {
        this->timer5 = 10;
    } else if (!(this->timer5 & 1)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_WALK);
    }
    if ((fabsf(sp2C) < 7.0f) && (fabsf(sp28) < 7.0f)) {
        this->actor.posRot.pos.x = this->flowerPos.x;
        this->actor.posRot.pos.z = this->flowerPos.z;
        this->actor.speedXZ = 0.0f;
        this->actionFunc = func_809F4E18;
    }
}

void EnDntNomal_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDntNomal* this = THIS;

    if (this->timer1 != 0) {
        this->timer1--;
    }
    if (this->timer2 != 0) {
        this->timer2--;
    }
    if (this->timer3 != 0) {
        this->timer3--;
    }
    if (this->timer4 != 0) {
        this->timer4--;
    }
    if (this->timer5 != 0) {
        this->timer5--;
    }
    if (this->blinkTimer != 0) {
        this->blinkTimer--;
    }
    this->actor.posRot.rot.x = this->actor.shape.rot.x;
    if (this->actionFunc != func_809F49A4) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
    }
    this->unkCounter++;
    if (this->type != 0) {
        switch (this->demoSignal) {
            case 1:
                if (this->demoPrize == 0) {
                    this->actionFunc = func_809F43F0;
                } else {
                    this->actionFunc = func_809F44FC;
                }
                break;
            case 2:
                this->demoAction = 0;
                this->actor.colChkInfo.mass = 0;
                this->timer3 = (s16)Rand_ZeroFloat(3.0f) + (s16)(this->type * 0.5f);
                this->actionFunc = func_809F4730;
                break;
            case 3:
                this->demoAction = 1;
                this->actionFunc = func_809F4730;
                break;
            case 4:
                this->actionFunc = func_809F4E18;
                break;
            case 5:
                this->actionFunc = func_809F5478;
                break;
            case 6:
                this->actionFunc = func_809F4BA4;
                break;
            case 0:
                break;
        }
    }
    if (this->demoSignal != 0) {
        this->demoSignal = 0;
    }
    if (this->blinkTimer == 0) {
        this->eyeState++;
        if (this->eyeState >= 3) {
            this->eyeState = 0;
            this->blinkTimer = (s16)Rand_ZeroFloat(60.0f) + 20;
        }
    }
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 20.0f, 20.0f, 60.0f, 0x1D);
    if (this->type == 0) {
        func_80062734(&this->targetQuad, &this->targetVtx[0], &this->targetVtx[1], &this->targetVtx[2], &this->targetVtx[3]);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->targetQuad.base);
    } else {
        Collider_CylinderUpdate(&this->actor, &this->bodyCyl);
        if (this->isSolid) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->bodyCyl.base);
        }
    }
}

s32 EnDntNomal_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnDntNomal* this = THIS;

    if ((limbIndex == 1) || (limbIndex == 3) || (limbIndex == 4) || (limbIndex == 5) || (limbIndex == 6)) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 1733);
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, D_809F5E4C[this->type - 1].r, D_809F5E4C[this->type - 1].g,
                       D_809F5E4C[this->type - 1].b, 255);
        CLOSE_DISPS(globalCtx->state.gfxCtx, (const char*)"../z_en_dnt_nomal.c", 1743);
    }
    return 0;
}

void EnDntNomal_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnDntNomal* this = THIS;
    Vec3f sp18 = { 0.0f, 0.0f, 0.0f };

    if (this->type == 0) {
        if (limbIndex == 5) {
            Matrix_MultVec3f(&sp18, &this->mouthPos);
        }
    } else if (limbIndex == 7) {
        Matrix_MultVec3f(&sp18, &this->mouthPos);
    }
}

void EnDntNomal_DrawStageScrub(Actor* thisx, GlobalContext* globalCtx) {
    static void* blinkTex[] = { 0x060027D0, 0x060025D0, 0x06002750 };
    EnDntNomal* this = THIS;
    Vec3f sp60 = { 0.25f, 0.25f, 0.25f };
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 1790);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(blinkTex[this->eyeState]));
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, EnDntNomal_OverrideLimbDraw, EnDntNomal_PostLimbDraw,
                      this);
    Matrix_Translate(this->flowerPos.x, this->flowerPos.y, this->flowerPos.z, MTXMODE_NEW);
    Matrix_Scale(0.01f, 0.01f, 0.01f, MTXMODE_APPLY);
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, D_809F5E4C[this->type - 1].r, D_809F5E4C[this->type - 1].g,
                   D_809F5E4C[this->type - 1].b, 255);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 1814),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_06001B00);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 1817);
    if (this->actionFunc == func_809F49A4) {
        func_80033C30(&this->actor.posRot.pos, &sp60, 0xFF, globalCtx);
    }
}

void EnDntNomal_DrawTargetScrub(Actor* thisx, GlobalContext* globalCtx) {
    EnDntNomal* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 1833);
    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, NULL, EnDntNomal_PostLimbDraw, this);
    Matrix_Translate(this->flowerPos.x, this->flowerPos.y, this->flowerPos.z, MTXMODE_NEW);
    Matrix_Scale(0.01f, 0.01f, 0.01f, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 1848),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_060014E0);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 1851);
}
