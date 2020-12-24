#include "z_en_dnt_nomal.h"
#include "overlays/actors/ovl_En_Dnt_Demo/z_en_dnt_demo.h"
#include "overlays/actors/ovl_En_Ex_Ruppy/z_en_ex_ruppy.h"

#define FLAGS 0x00000030

#define THIS ((EnDntNomal*)thisx)

void EnDntNomal_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDntNomal_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDntNomal_Update(Actor* thisx, GlobalContext* globalCtx);
void func_809F5C98(Actor* thisx, GlobalContext* globalCtx);
void func_809F5A6C(Actor* thisx, GlobalContext* globalCtx);

void func_809F3480(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F35CC(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F3624(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F36CC(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F39B8(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F3AD4(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F3B40(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F3BE4(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F3CD0(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F3D84(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F3E30(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F3ED4(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F3F6C(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F40D4(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F42A4(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F4310(EnDntNomal* this, GlobalContext* globalCtx);
void func_809F43C8(EnDntNomal* this, GlobalContext* globalCtx);
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
extern UNK_TYPE D_0600031C;
extern AnimationHeader D_06000430;
extern UNK_TYPE D_060006CC;
extern UNK_TYPE D_06000894;
extern UNK_TYPE D_06000B70;
extern Gfx D_060014E0[];
extern Gfx D_06001B00[];
extern SkeletonHeader D_060023B8;
extern AnimationHeader D_060024CC;
extern AnimationHeader D_060026C4;
extern SkeletonHeader D_06002AF0;
extern UNK_TYPE D_06002E1C;
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

static ColliderCylinderInit D_809F5DD0 = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 16, 46, 0, { 0, 0, 0 } },
};

static ColliderQuadInit D_809F5DFC = {
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

    this->unk_26A = this->actor.params;
    if (this->unk_26A < 0) {
        this->unk_26A = 0;
    }
    this->actor.flags &= ~1;
    this->actor.colChkInfo.mass = 0xFF;
    this->unk_266 = -1;
    if (this->unk_26A == 0) {
        osSyncPrintf("\n\n");
        // Deku Scrub target
        osSyncPrintf("\x1b[32m☆☆☆☆☆ デグナッツ的当て ☆☆☆☆☆ \n\x1b[m");
        Collider_InitQuad(globalCtx, &this->targetQuad);
        Collider_SetQuad(globalCtx, &this->targetQuad, &this->actor, &D_809F5DFC);
        this->actor.posRot.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsLink;
        this->unk_266 = OBJECT_HINTNUTS;
    } else {
        osSyncPrintf("\n\n");
        // Deku Scrub mask show audience
        osSyncPrintf("\x1b[32m☆☆☆☆☆ デグナッツお面品評会一般人 ☆☆☆☆☆ \n\x1b[m");
        Collider_InitCylinder(globalCtx, &this->bodyCyl);
        Collider_SetCylinder(globalCtx, &this->bodyCyl, &this->actor, &D_809F5DD0);
        this->unk_266 = OBJECT_DNK;
    }
    if (this->unk_266 >= 0) {
        this->unk_279 = Object_GetIndex(&globalCtx->objectCtx, this->unk_266);
        if (this->unk_279 < 0) {
            Actor_Kill(&this->actor);
            // What?
            osSyncPrintf("\x1b[35m なにみの？ %d\n\x1b[m\n", this->unk_279);
            // Bank is funny
            osSyncPrintf("\x1b[36m バンクおかしいしぞ！%d\n\x1b[m\n", this->actor.params);
            return;
        }
    } else {
        Actor_Kill(&this->actor);
    }
    this->actionFunc = func_809F3480;
}

void EnDntNomal_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDntNomal* this = THIS;

    if (this->unk_26A == 0) {
        Collider_DestroyQuad(globalCtx, &this->targetQuad);
    } else {
        Collider_DestroyCylinder(globalCtx, &this->bodyCyl);
    }
}

void func_809F3480(EnDntNomal* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->unk_279)) {
        gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->unk_279].segment);
        this->actor.objBankIndex = this->unk_279;
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 0.0f);
        this->actor.gravity = -2.0f;
        Actor_SetScale(&this->actor, 0.01f);
        if (this->unk_26A == 0) {
            SkelAnime_Init(globalCtx, &this->skelAnime, &D_060023B8, &D_060024CC, this->limbDrawTbl,
                           this->transitionDrawTbl, 10);
            this->actor.draw = func_809F5C98;
        } else {
            SkelAnime_Init(globalCtx, &this->skelAnime, &D_06002AF0, &D_06000430, this->limbDrawTbl,
                           this->transitionDrawTbl, 11);
            this->actor.draw = func_809F5A6C;
        }
        this->actionFunc = func_809F35CC;
    }
}

void func_809F35CC(EnDntNomal *this, GlobalContext *globalCtx) {
    if (this->actor.bgCheckFlags & 1) {
        this->unk_21C = this->actor.posRot.pos;
        if (this->unk_26A == 0) {
            this->actionFunc = func_809F3624;
        } else {
            this->actionFunc = func_809F4310;
        }
    }
}

void func_809F3624(EnDntNomal *this, GlobalContext *globalCtx) {
    this->unk_26E = (f32)SkelAnime_GetFrameCount(&D_060024CC);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060024CC, 0.0f, 0.0f, this->unk_26E, 2, -10.0f);
    this->skelAnime.animCurrentFrame = 8.0f;
    this->actionFunc = func_809F36CC;
}

void func_809F36CC(EnDntNomal *this, GlobalContext *globalCtx) {
    Vec3f scorePos;
    f32 targetX = 1340.0f;
    f32 targetY = 50.0f;
    f32 targetZ = -30.0f;
    f32 dx;
    f32 dy;
    f32 dz;
    Vec3f scoreAccel = { 0.0f, 0.0f, 0.0f };
    Vec3f scoreVel = { 0.0f, 0.0f, 0.0f };
    
    this->unk_228[0].x = this->unk_228[1].x = this->unk_228[2].x = this->unk_228[3].x = targetX;

    this->unk_228[1].y = this->unk_228[0].y = targetY - 24.0f;

    this->unk_228[2].z = this->unk_228[0].z = targetZ + 24.0f;

    this->unk_228[3].z = this->unk_228[1].z = targetZ - 24.0f;
    
    this->unk_228[3].y = this->unk_228[2].y = targetY + 24.0f;

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
            func_800F8D04(0x4807);
            func_80078884(0x4807);
            osSyncPrintf("\x1b[36m☆☆☆☆☆ 大当り ☆☆☆☆☆ %d\n\x1b[m", this->unk_26C);
            if (LINK_IS_CHILD && !(gSaveContext.itemGetInf[1] & 0x2000)) {
                this->unk_26C++;
                if (this->unk_26C >= 3) {
                    func_800800F8(globalCtx, 0x102C, -0x63, this, 0);
                    func_8002DF54(globalCtx, this, 1);
                    this->unk_25C = 0x32;
                    this->actionFunc = func_809F39B8;
                }
            }
        } else if (sqrtf(SQ(dx) + SQ(dy) + SQ(dz)) < 24.0f) {
            scorePos.x = this->actor.posRot.pos.x;
            scorePos.y = this->actor.posRot.pos.y + 20.0f;
            scorePos.z = this->actor.posRot.pos.z;
            EffectSsExtra_Spawn(globalCtx, &scorePos, &scoreVel, &scoreAccel, 4, 0);
            this->unk_26C = 0;
        }
    }
}

void func_809F39B8(EnDntNomal *this, GlobalContext *globalCtx) {
    Vec3f sp3C;

    if (this->unk_25C == 0) {
        this->unk_26E = (f32)SkelAnime_GetFrameCount(&D_060026C4);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_060026C4, 1.0f, 0.0f, this->unk_26E, 2, -10.0f);
        sp3C =  this->actor.posRot.pos;
        sp3C.y = this->actor.posRot.pos.y + 50.0f;
        EffectSsHahen_SpawnBurst(globalCtx, &sp3C, 4.0f, 0, 0xA, 3, 0xF, -1, 0xA, 0);
        Audio_PlayActorSound2(this, 0x387C);
        this->actionFunc = func_809F3AD4;
    }
}

void func_809F3AD4(EnDntNomal *this, GlobalContext *globalCtx) {
    f32 sp1C = this->skelAnime.animCurrentFrame;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_26E <= sp1C) {
        this->actionFunc = func_809F3B40;
    }
}

void func_809F3B40(EnDntNomal *this, GlobalContext *globalCtx) {
    this->unk_26E = (f32)SkelAnime_GetFrameCount(&D_06003128);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06003128, 1.0f, 0.0f, this->unk_26E, 0, -10.0f);
    this->actor.speedXZ = 1.0f;
    this->actor.colChkInfo.mass = 0;
    this->actionFunc = func_809F3BE4;
}

void func_809F3BE4(EnDntNomal *this, GlobalContext *globalCtx) {
    f32 temp1;
    f32 temp2;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    temp1 = 1340.0f + 3.0f - this->actor.posRot.pos.x;
    temp2 =  0.0f - this->actor.posRot.pos.z;
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, Math_atan2f(temp1, temp2) * (0x8000 / M_PI), 0x32, 0xBB8, 0);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    if (func_800A56C8(&this->skelAnime, 0.0f) || func_800A56C8(&this->skelAnime, 6.0f)) {
        Audio_PlayActorSound2(this, 0x387F);
    }
    if (this->actor.posRot.pos.z > -30.0f) {
        this->actor.speedXZ = 0.0f;
        this->actionFunc = func_809F3CD0;
    }
}

void func_809F3CD0(EnDntNomal *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x1388, 0);
    if (func_800A56C8(&this->skelAnime, 0.0f) || func_800A56C8(&this->skelAnime, 6.0f)) {
        Audio_PlayActorSound2(this, 0x387F);
    }
    if (fabsf(this->actor.shape.rot.y - this->actor.yawTowardsLink) < 30.0f) {
        this->actionFunc = func_809F3D84;
    }
}

void func_809F3D84(EnDntNomal *this, GlobalContext *globalCtx) {
    this->unk_26E = (f32)SkelAnime_GetFrameCount(&D_06002E84);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06002E84, 1.0f, 0.0f, this->unk_26E, 0, -10.0f);
    this->actor.textId = 0x10AF;
    func_8010B680(globalCtx, this->actor.textId, NULL);
    this->actionFunc = func_809F3E30;
}

void func_809F3E30(EnDntNomal *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
        func_80106CCC(globalCtx);
        func_8005B1A4(ACTIVE_CAM);
        ACTIVE_CAM->unk_168 = 0;
        func_8002DF54(globalCtx, NULL, 8);
        this->actionFunc = func_809F3ED4;
    }
}

void func_809F3ED4(EnDntNomal *this, GlobalContext *globalCtx) {
    this->unk_26E = (f32)SkelAnime_GetFrameCount(&D_06000168);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000168, 1.0f, 0.0f, this->unk_26E, 2, -10.0f);
    this->actionFunc = func_809F3F6C;
}

void func_809F3F6C(EnDntNomal *this, GlobalContext *globalCtx) {
    f32 sp54 = this->skelAnime.animCurrentFrame;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((sp54 >= 8.0f) && (this->unk_277 == 0)) {
        f32 pad1 = this->unk_27C.x - 10.0f;
        f32 pad2 = this->unk_27C.y;
        f32 pad3 = this->unk_27C.z;
        
        if (Actor_SpawnAsChild(&globalCtx->actorCtx, this, globalCtx, ACTOR_EN_EX_ITEM, pad1, pad2, pad3, 0, 0, 0, 0x13) == NULL) {
            func_8002DF54(globalCtx, NULL, 7);
            Actor_Kill(this);
        }
        this->unk_277 = 1;
        Audio_PlayActorSound2(this, 0x387E);
    }
    if (this->unk_26E <= sp54) {
        this->unk_26E = (f32)SkelAnime_GetFrameCount(&D_06003128);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06003128, 1.0f, 0.0f, this->unk_26E, 0, -10.0f);
        this->actionFunc = func_809F40D4;
    }
}

void func_809F40D4(EnDntNomal *this, GlobalContext *globalCtx) {
    f32 temp_f12;
    f32 temp_f14;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    temp_f12 = this->unk_21C.x - this->actor.posRot.pos.x;
    temp_f14 = -180.0f - this->actor.posRot.pos.z;

    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, Math_atan2f(temp_f12, temp_f14) * 10430.378f, 3, 0x1388, 0);
    if (fabsf(this->actor.shape.rot.y - (s16)(Math_atan2f(temp_f12, temp_f14) * 10430.378f)) < 20.0f) {
        this->actor.speedXZ = 1.0f;
    }
    if (func_800A56C8(&this->skelAnime, 0.0f) || func_800A56C8(&this->skelAnime, 6.0f)) {
        Audio_PlayActorSound2(this, 0x387F);
    }
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    if (this->actor.posRot.pos.z < -172.0f) {
        this->unk_26E = (f32)SkelAnime_GetFrameCount(&D_060024CC);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_060024CC, 1.0f, 0.0f, this->unk_26E, 2, -10.0f);
        this->actor.posRot.pos.z = -173.0f;
        this->actor.speedXZ = 0.0f;
        this->actionFunc = func_809F42A4;
    }
}

void func_809F42A4(EnDntNomal *this, GlobalContext *globalCtx) {
    f32 sp1C = this->skelAnime.animCurrentFrame;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_26E <= sp1C) {
        this->actionFunc = func_809F3624;
    }
}

void func_809F4310(EnDntNomal *this, GlobalContext *globalCtx) {
    if (this->unk_264 == 0) {
        this->unk_26E = (f32)SkelAnime_GetFrameCount(&D_06000430);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06000430, 0.0f, 0.0f, this->unk_26E, 2, -10.0f);
        this->skelAnime.animCurrentFrame = 8.0f;
        this->unk_218 = 0;
        this->actionFunc = func_809F43C8;
    }
}

void func_809F43C8(EnDntNomal *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

void func_809F43F0(EnDntNomal *this, GlobalContext *globalCtx) {
    if (this->unk_264 == 0) {
        this->unk_26E = (f32)SkelAnime_GetFrameCount(&D_06000B70);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06000B70, 1.0f, 0.0f, this->unk_26E, 2, -10.0f);
        if (this->unk_274 != 2) {
            this->unk_272 = -1;
        }
        EffectSsHahen_SpawnBurst(globalCtx, &this->actor.posRot, 4.0f, 0, 0xA, 3, 0xF, -1, 0xA, 0);
        Audio_PlayActorSound2(this, 0x387C);
        this->unk_218 = 1;
        this->actionFunc = func_809F44FC;
    }
}

void func_809F44FC(EnDntNomal *this, GlobalContext *globalCtx) {
    s16 phi_a1;
    f32 sp30 = this->skelAnime.animCurrentFrame;
    f32 sp2C;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((this->unk_26E <= sp30) && (this->unk_274 == 2)) {
        this->actionFunc = func_809F50EC;
    } else {
        if (this->unk_25C == 0) {
            sp2C = 0.0f;
            if (this->unk_278 == 0) {
                Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x1388, 0);
            } else {
                f32 temp1 = this->unk_288.x - this->actor.posRot.pos.x;
                f32 temp2 = this->unk_288.z - this->actor.posRot.pos.z;

                Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, Math_atan2f(temp1, temp2) * 10430.378f, 1, 0xBB8, 0);
                sp2C = 90.0f;
            }
            if ((Math_Rand_ZeroFloat(10.0f + sp2C) < 1.0f) && (this->unk_274 != 2)) {
                this->unk_25C = (s16)Math_Rand_ZeroFloat(30.0f) + 30;
            }
        } else {
            if (this->unk_25A == 0) {
                this->unk_272++;
                if (this->unk_272 > 1) {
                    this->unk_272 = -1;
                }
                this->unk_25A = (s16)Math_Rand_ZeroFloat(10.0f) + 10;
            }
            phi_a1 = this->actor.yawTowardsLink;
            if (this->unk_272 != 0) {
                phi_a1 += this->unk_272 * 0x1388;
            }
            Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, phi_a1, 3, 0x1388, 0);
        }
        if (this->actor.xzDistFromLink < 70.0f) {
            this->actionFunc = func_809F4E18;
        }
    }
}

void func_809F4730(EnDntNomal *this, GlobalContext *globalCtx) {
    if (this->unk_264 == 0) {
        this->unk_26E = (f32)SkelAnime_GetFrameCount(&D_06000894);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06000894, 1.0f, 0.0f, this->unk_26E, 2, -10.0f);
        this->unk_218 = 0;
        EffectSsHahen_SpawnBurst(globalCtx, &this->actor.posRot.pos, 4.0f, 0, 0xA, 3, 0xF, -1, 0xA, 0);
        Audio_PlayActorSound2(this, 0x387C);
        this->actionFunc = func_809F4824;
    }
}

void func_809F4824(EnDntNomal *this, GlobalContext *globalCtx) {
    f32 sp1C  = this->skelAnime.animCurrentFrame;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_26E <= sp1C) {
        if (this->unk_274 != 1) {
            this->unk_264 =  (s16)Math_Rand_ZeroFloat(2.0f)  + (s16)(this->unk_26A * 0.5f);
            this->actionFunc = func_809F48FC;
        } else {
            this->unk_25A = 0x12C;
            this->actionFunc = func_809F4BA4;
        }
    }
}

void func_809F48FC(EnDntNomal *this, GlobalContext *globalCtx) {
    this->unk_26E = (f32) SkelAnime_GetFrameCount(&D_06002E1C);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06002E1C, 1.0f, 0.0f, this->unk_26E, 0, -10.0f);
    this->actor.speedXZ = 3.0f;
    this->unk_218 = 1;
    this->actionFunc = func_809F49A4;
}

void func_809F49A4(EnDntNomal *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((this->unk_258 == 0) && (this->unk_264 == 0)) {
        f32 temp_f12 = this->unk_288.x - this->actor.posRot.pos.x;
        f32 temp_f14 = this->unk_288.z - this->actor.posRot.pos.z;

        if ((fabsf(temp_f12) < 10.0f) && (fabsf(temp_f14) < 10.0f) && func_8010BDBC(&globalCtx->msgCtx)) {
            this->unk_274 = 5;
            this->actionFunc = func_809F4BA4;
            this->actor.speedXZ = 0.0f;
            return;
        }
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, Math_atan2f(temp_f12, temp_f14) * 10430.378f, 1, 0xBB8, 0);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
    } else {
        if (this->unk_258 == 1) {
            this->unk_264 = (s16)Math_Rand_ZeroFloat(20.0f) + 20.0f;
        }
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 0x14, 0x1388, 0);
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x1388, 0);
    }
    if (this->unk_25E == 0) {
        this->unk_25E = 0x14;
        if ((this->unk_26A & 1) == 0) {
            Audio_PlayActorSound2(this, 0x3880);
        }
    } else if ((this->unk_25E & 3) == 0) {
        Audio_PlayActorSound2(this, 0x387F);
    }
    if ((this->actor.bgCheckFlags & 8) && (this->actor.bgCheckFlags & 1)) {
        this->actor.velocity.y = 7.5f;
    }
}

void func_809F4BA4(EnDntNomal *this, GlobalContext *globalCtx) {
    this->unk_26E = (f32) SkelAnime_GetFrameCount(&D_060006CC);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_060006CC, 1.0f, 0.0f, this->unk_26E, 0, -10.0f);
    this->unk_218 = 1;
    this->unk_264 = (s16)Math_Rand_ZeroFloat(20.0f) + 20.0f;
    this->unk_272 = -1;
    if (Math_Rand_ZeroFloat(1.99f) < 1.0f) {
        this->unk_272 = 1;
    }
    this->actionFunc = func_809F4CB4;
}

void func_809F4CB4(EnDntNomal *this, GlobalContext *globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_25A == 0) {
        if (this->unk_274 == 1) {
            this->unk_274 = 4;
            this->actionFunc = func_809F4E18;
        } else {
            this->unk_274 = 0;
            this->actionFunc = func_809F5478;
        }
    } else if (this->unk_264 != 0) {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x1388, 0);
        if (this->unk_264 == 1) {
            this->unk_25C = (s16)Math_Rand_ZeroFloat(20.0f) + 20.0f;
            this->unk_272 = -this->unk_272;
        }
    } else if (this->unk_25C != 0) {
        this->actor.shape.rot.y += this->unk_272 * 0x800;
        if (this->unk_25C == 1) {
            this->unk_264 = (s16)Math_Rand_ZeroFloat(20.0f) + 20.0f;
        }
    }
}

void func_809F4E18(EnDntNomal *this, GlobalContext *globalCtx) {
    if (this->unk_264 != 0) {
        if ((this->unk_264 == 1) && (this->unk_276 == 1)) {
            func_80078884(0x4806);
        }
    } else {
        this->unk_26E = (f32)SkelAnime_GetFrameCount(&D_06000430);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06000430, 1.0f, 0.0f, this->unk_26E, 2, -10.0f);
        this->unk_218 = 0;
        Audio_PlayActorSound2(this, 0x387D);
        this->actionFunc = func_809F4EF4;
    }
}

void func_809F4EF4(EnDntNomal *this, GlobalContext *globalCtx) {
    EnExRuppy *sp44;
    f32 sp40 = this->skelAnime.animCurrentFrame;
    s16 sp3E;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_26E <= sp40) {
        EffectSsHahen_SpawnBurst(globalCtx, &this->actor.posRot, 4.0f, 0, 0xA, 3, 0xF, -1, 0xA, 0);
        Audio_PlayActorSound2(this, 0x387C);
        switch(this->unk_274) {
            case 0:
                this->actionFunc = func_809F4310;
                break;
            case 2:
                this->actionFunc = func_809F50B8;
                break;
            case 3:
            case 4:
                sp44 = (EnExRuppy*) Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_EX_RUPPY, this->actor.posRot.pos.x, this->actor.posRot.pos.y + 20.0f, this->actor.posRot.pos.z, 0, 0, 0, 3);
                if (sp44 != NULL) {
                    sp3E = this->unk_274 - 3;
                    sp44->colorIdx = sp3E;
                    if (Math_Rand_ZeroFloat(3.99f) < 1.0f) {
                        sp44->colorIdx = sp3E + 1;
                    }
                    sp44->actor.velocity.y = 5.0f;
                    if (sp44->colorIdx == 2) {
                        sp44->actor.velocity.y = 7.0f;
                    }
                    func_80078884(0x4807);
                }
                this->unk_274 = 0;
                this->actionFunc = func_809F4310;
                break;
        }
    }
}

void func_809F50B8(EnDntNomal *this, GlobalContext *globalCtx) {
    if (this->actor.xzDistFromLink > 70.0f) {
        this->actionFunc = func_809F43F0;
    }
}

void func_809F50EC(EnDntNomal *this, GlobalContext *globalCtx) {
    if (this->unk_264 == 0) {
        this->unk_26E = (f32)SkelAnime_GetFrameCount(&D_0600031C);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_0600031C, 1.0f, 0.0f, this->unk_26E, 2, -10.0f);
        this->actor.colChkInfo.mass = 0xFF;
        this->unk_218 = 1;
        this->unk_25A = 0;
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, this, ACTORTYPE_ENEMY);
        this->actionFunc = func_809F51B8;
    }
}

void func_809F51B8(EnDntNomal *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    Actor *temp_v0;
    f32 sp74 = this->skelAnime.animCurrentFrame;
    f32 temp_f16;
    f32 temp_f2;
    f32 temp_f3;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x1388, 0);
    temp_f2 = player->actor.posRot.pos.x - this->unk_27C.x;
    temp_f3 = player->actor.posRot.pos.y + 30.0f - this->unk_27C.y;
    temp_f16 = player->actor.posRot.pos.z - this->unk_27C.z;
    Math_SmoothScaleMaxMinS(&this->actor.shape, -(s16)(Math_atan2f(temp_f3, sqrtf(SQ(temp_f2) + SQ(temp_f16))) * 10430.378f), 3, 0x1388, 0);
    if ((this->unk_26E <= sp74) && (this->unk_25A == 0)) {
        this->unk_25A = (s16)Math_Rand_ZeroFloat(10.0f) + 10;
    }
    if (this->unk_25A == 1) {
        this->unk_277 = 0;
        this->actionFunc = func_809F50EC;
    } else if (this->actor.xzDistFromLink < 50.0f) {
        this->unk_274 = 2;
        this->actionFunc = func_809F4E18;
    } else if ((sp74 >= 8.0f) && (this->unk_277 == 0)) {
        Vec3f sp5C;
        Vec3f sp50;
        f32 tempx;
        f32 tempy;
        f32 tempz;

        Matrix_RotateY(this->actor.shape.rot.y / (f32)0x8000 * M_PI, 0);
        Matrix_RotateX(this->actor.shape.rot.x / (f32)0x8000 * M_PI, 1);
        sp5C.x = 0.0f;
        sp5C.y = 0.0f;
        sp5C.z = 5.0f;
        Matrix_MultVec3f(&sp5C, &sp50);
        tempx = this->unk_27C.x + sp50.x;
        tempy = this->unk_27C.y + sp50.y;
        tempz = this->unk_27C.z + sp50.z;

        temp_v0 = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_NUTSBALL, tempx, tempy, tempz, this->actor.shape.rot.x, this->actor.shape.rot.y, this->actor.shape.rot.z, 4);
        if (temp_v0 != NULL) {
            temp_v0->velocity.y = sp50.y * 0.5f;
        }
        Audio_PlayActorSound2(this, 0x387E);
        this->unk_277 = 1;
    }
}

void func_809F5478(EnDntNomal *this, GlobalContext *globalCtx) {
    this->unk_26E = (f32)SkelAnime_GetFrameCount(&D_06002E1C);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06002E1C, 1.5f, 0.0f, this->unk_26E, 0, -10.0f);
    this->actor.speedXZ = 4.0f;
    this->unk_218 = 0;
    this->actionFunc = func_809F551C;   
}

void func_809F551C(EnDntNomal *this, GlobalContext *globalCtx) {
    f32 sp2C;
    f32 sp28;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    sp2C =  this->unk_21C.x - this->actor.posRot.pos.x;
    sp28 = this->unk_21C.z - this->actor.posRot.pos.z;
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, Math_atan2f(sp2C, sp28) * 10430.378f, 1, 0xBB8, 0);
    if (this->unk_25E == 0) {
        this->unk_25E = 10;
    } else if (!(this->unk_25E & 1)) {
        Audio_PlayActorSound2(this, 0x387F);
    }
    if ((fabsf(sp2C) < 7.0f) && (fabsf(sp28) < 7.0f)) {
        this->actor.posRot.pos.x = this->unk_21C.x;
        this->actor.posRot.pos.z = this->unk_21C.z;
        this->actor.speedXZ = 0.0f;
        this->actionFunc = func_809F4E18;
    }
}

void EnDntNomal_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDntNomal* this = THIS;

    if (this->unk_258 != 0) {
        this->unk_258--;
    }
    if (this->unk_25A != 0) {
        this->unk_25A--;
    }
    if (this->unk_264 != 0) {
        this->unk_264--;
    }
    if (this->unk_25C != 0) {
        this->unk_25C--;
    }
    if (this->unk_25E != 0) {
        this->unk_25E--;
    }
    if (this->unk_260 != 0) {
        this->unk_260--;
    }
    this->actor.posRot.rot.x = this->actor.shape.rot.x;
    if (this->actionFunc != func_809F49A4) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
    }
    this->unk_262++;
    if (this->unk_26A != 0) {
        switch (this->unk_270) {
            case 1:
                if (this->unk_278 == 0) {
                    this->actionFunc = func_809F43F0;
                } else {
                    this->actionFunc = func_809F44FC;
                }
                break;
            case 2:
                this->unk_274 = 0;
                this->actor.colChkInfo.mass = 0;
                this->unk_264 = (s16)Math_Rand_ZeroFloat(3.0f) + (s16)(this->unk_26A * 0.5f);
                this->actionFunc = func_809F4730;
                break;
            case 3:
                this->unk_274 = 1;
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
    if (this->unk_270 != 0) {
        this->unk_270 = 0;
    }
    if (this->unk_260 == 0) {
        this->unk_268++;
        if (this->unk_268 >= 3) {
            this->unk_268 = 0;
            this->unk_260 = (s16)Math_Rand_ZeroFloat(60.0f) + 20;
        }
    }
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 20.0f, 20.0f, 60.0f, 0x1D);
    if (this->unk_26A == 0) {
        func_80062734(&this->targetQuad, &this->unk_228[0], &this->unk_228[1], &this->unk_228[2], &this->unk_228[3]);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->targetQuad.base);
    } else {
        Collider_CylinderUpdate(&this->actor, &this->bodyCyl);
        if (this->unk_218 != 0) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->bodyCyl.base);
        }
    }
}

s32 func_809F58E4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnDntNomal* this = THIS;

    if ((limbIndex == 1) || (limbIndex == 3) || (limbIndex == 4) || (limbIndex == 5) || (limbIndex == 6)) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 0x6C5);
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, D_809F5E4C[this->unk_26A - 1].r, D_809F5E4C[this->unk_26A - 1].g,
                       D_809F5E4C[this->unk_26A - 1].b, 255);
        CLOSE_DISPS(globalCtx->state.gfxCtx, (const char*)"../z_en_dnt_nomal.c", 0x6CF);
    }
    return 0;
}

void func_809F59E4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnDntNomal* this = THIS;
    Vec3f sp18 = { 0.0f, 0.0f, 0.0f };

    if (this->unk_26A == 0) {
        if (limbIndex == 5) {
            Matrix_MultVec3f(&sp18, &this->unk_27C);
        }
    } else if (limbIndex == 7) {
        Matrix_MultVec3f(&sp18, &this->unk_27C);
    }
}

void func_809F5A6C(Actor* thisx, GlobalContext* globalCtx) {
    static void* D_809F5EA0[] = { 0x060027D0, 0x060025D0, 0x06002750 };
    EnDntNomal* this = THIS;
    Vec3f sp60 = { 0.25f, 0.25f, 0.25f };
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 0x6FE);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_809F5EA0[this->unk_268]));
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_809F58E4, func_809F59E4,
                      this);
    Matrix_Translate(this->unk_21C.x, this->unk_21C.y, this->unk_21C.z, 0);
    Matrix_Scale(0.01f, 0.01f, 0.01f, 1);
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, D_809F5E4C[this->unk_26A - 1].r, D_809F5E4C[this->unk_26A - 1].g,
                   D_809F5E4C[this->unk_26A - 1].b, 255);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 0x716), 2);
    gSPDisplayList(POLY_OPA_DISP++, D_06001B00);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 0x719);
    if (this->actionFunc == func_809F49A4) {
        func_80033C30(&this->actor.posRot.pos, &sp60, 0xFF, globalCtx);
    }
}

void func_809F5C98(Actor* thisx, GlobalContext* globalCtx) {
    EnDntNomal* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 0x729);
    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, NULL, func_809F59E4, this);
    Matrix_Translate(this->unk_21C.x, this->unk_21C.y, this->unk_21C.z, 0);
    Matrix_Scale(0.01f, 0.01f, 0.01f, 1);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 0x738), 2);
    gSPDisplayList(POLY_OPA_DISP++, D_060014E0);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_nomal.c", 0x73B);
}
