/*
 * File: z_en_dnt_jiji.c
 * Overlay: ovl_En_Dnt_Jiji
 * Description: Forest Stage scrub leader
 */

#include "z_en_dnt_jiji.h"
#include "overlays/actors/ovl_En_Dnt_Demo/z_en_dnt_demo.h"
#include "vt.h"

#define FLAGS 0x00000019

#define THIS ((EnDntJiji*)thisx)

void EnDntJiji_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDntJiji_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDntJiji_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDntJiji_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809F1C04(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F1CF4(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F1C44(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F1DA8(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F1E8C(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F1EFC(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F1FE0(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F2068(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F2118(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F2254(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F2344(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F236C(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F24AC(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F2550(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F25E4(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F26B0(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F2720(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F28DC(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F2974(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F29E0(EnDntJiji* this, GlobalContext* globalCtx);
void func_809F2A90(EnDntJiji* this, GlobalContext* globalCtx);

extern AnimationHeader D_06000560;
extern AnimationHeader D_06000944;
extern AnimationHeader D_06000A70;
extern AnimationHeader D_06000BD0;
extern AnimationHeader D_06000DF8;
extern AnimationHeader D_060012B0;
extern Gfx D_06002310[];
extern SkeletonHeader D_060033E0;
extern AnimationHeader D_060037C0;

const ActorInit En_Dnt_Jiji_InitVars = {
    ACTOR_EN_DNT_JIJI,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_DNS,
    sizeof(EnDntJiji),
    (ActorFunc)EnDntJiji_Init,
    (ActorFunc)EnDntJiji_Destroy,
    (ActorFunc)EnDntJiji_Update,
    (ActorFunc)EnDntJiji_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 30, 80, 0, { 0, 0, 0 } },
};

void EnDntJiji_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnDntJiji* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 0.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_060033E0, &D_06000560, this->limbDrawTbl, this->transitionDrawTbl,
                   13);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    this->stage = (EnDntDemo*)this->actor.parent;
    osSyncPrintf("\n\n");
    // Deku Scrub mask show judge
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ デグナッツお面品評会長老 ☆☆☆☆☆ %x\n" VT_RST, this->stage);
    this->actor.flags &= ~1;
    this->actor.colChkInfo.mass = 0xFF;
    this->actor.unk_1F = 6;
    this->actionFunc = func_809F1C04;
    this->actor.gravity = -2.0f;
}

void EnDntJiji_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDntJiji* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_809F1C04(EnDntJiji* this, GlobalContext* globalCtx) {
    if (this->actor.bgCheckFlags & 1) {
        this->flowerPos = this->actor.posRot.pos;
        this->actionFunc = func_809F1C44;
    }
}

void func_809F1C44(EnDntJiji* this, GlobalContext* globalCtx) {
    this->unk_248 = (f32)Animation_GetLastFrame(&D_06000560);
    Animation_Change(&this->skelAnime, &D_06000560, 0.0f, 0.0f, this->unk_248, 0, -10.0f);
    this->skelAnime.curFrame = 8.0f;
    this->isSolid = this->unk_23E = 0;
    this->actionFunc = func_809F1CF4;
}

void func_809F1CF4(EnDntJiji* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    SkelAnime_Update(&this->skelAnime);
    if ((this->unk_240 == 1) && (this->actor.xzDistToLink < 150.0f) && !Gameplay_InCsMode(globalCtx) &&
        !(player->stateFlags1 & 0x800)) {
        func_800800F8(globalCtx, 0x8B6, -0x63, &this->actor, 0);
        this->unk_240 = 0;
        func_8002DF54(globalCtx, NULL, 8);
        this->actionFunc = func_809F1EFC;
    }
}

void func_809F1DA8(EnDntJiji* this, GlobalContext* globalCtx) {
    this->unk_248 = (f32)Animation_GetLastFrame(&D_060012B0);
    Animation_Change(&this->skelAnime, &D_060012B0, 1.0f, 0.0f, this->unk_248, 2, -10.0f);
    EffectSsHahen_SpawnBurst(globalCtx, &this->actor.posRot.pos, 6.0f, 0, 0xF, 5, 0x14, -1, 0xA, 0);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_UP);
    this->actionFunc = func_809F1E8C;
}

void func_809F1E8C(EnDntJiji* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x1388, 0);
    if (this->actor.xzDistToLink < 150.0f) {
        this->actionFunc = func_809F236C;
    }
}

void func_809F1EFC(EnDntJiji* this, GlobalContext* globalCtx) {
    this->unk_248 = (f32)Animation_GetLastFrame(&D_06000DF8);
    Animation_Change(&this->skelAnime, &D_06000DF8, 1.0f, 0.0f, this->unk_248, 2, -10.0f);
    EffectSsHahen_SpawnBurst(globalCtx, &this->actor.posRot.pos, 6.0f, 0, 0xF, 5, 0x14, -1, 0xA, 0);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_UP);
    this->actionFunc = func_809F1FE0;
}

void func_809F1FE0(EnDntJiji* this, GlobalContext* globalCtx) {
    f32 frame = this->skelAnime.curFrame;

    SkelAnime_Update(&this->skelAnime);
    if (this->unk_248 <= frame) {
        if (this->unk_23E != 3) {
            this->actionFunc = func_809F2068;
        } else {
            this->actionFunc = func_809F29E0;
        }
    }
}

void func_809F2068(EnDntJiji* this, GlobalContext* globalCtx) {
    this->unk_248 = (f32)Animation_GetLastFrame(&D_060037C0);
    Animation_Change(&this->skelAnime, &D_060037C0, 1.0f, 0.0f, this->unk_248, 0, -10.0f);
    this->actor.speedXZ = 1.0f;
    this->isSolid = 1;
    this->unk_25A = 1;
    this->actionFunc = func_809F2118;
}

void func_809F2118(EnDntJiji* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 5, 0x3E8, 0);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    Math_ApproachF(&this->actor.speedXZ, 1.0f, 0.2f, 0.4f);
    if (this->unk_242 == 0) {
        this->unk_242 = 5;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_WALK);
    }
    if ((this->actor.bgCheckFlags & 8) && (this->actor.bgCheckFlags & 1)) {
        this->actor.velocity.y = 9.0f;
        this->actor.speedXZ = 3.0f;
    }
    if (this->actor.xzDistToLink < 100.0f) {
        if (CUR_UPG_VALUE(UPG_STICKS) == 1) {
            this->unk_254 = 0x77;
        } else {
            this->unk_254 = 0x78;
        }
        this->actor.textId = 0x104D;
        func_8010B680(globalCtx, this->actor.textId, NULL);
        this->actor.speedXZ = 0.0f;
        this->unk_250 = 5;
        this->actionFunc = func_809F25E4;
    }
}

void func_809F2254(EnDntJiji* this, GlobalContext* globalCtx) {
    this->unk_248 = (f32)Animation_GetLastFrame(&D_06000560);
    Animation_Change(&this->skelAnime, &D_06000560, 1.0f, 0.0f, this->unk_248, 2, -10.0f);
    EffectSsHahen_SpawnBurst(globalCtx, &this->actor.posRot.pos, 6.0f, 0, 0xF, 5, 0x14, -1, 0xA, 0);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_UP);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_DOWN);
    this->actionFunc = func_809F2344;
}

void func_809F2344(EnDntJiji* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
}

void func_809F236C(EnDntJiji* this, GlobalContext* globalCtx) {
    this->unk_248 = (f32)Animation_GetLastFrame(&D_06000944);
    Animation_Change(&this->skelAnime, &D_06000944, 1.0f, 0.0f, this->unk_248, 2, -10.0f);
    EffectSsHahen_SpawnBurst(globalCtx, &this->actor.posRot.pos, 3.0f, 0, 9, 3, 0xA, -1, 0xA, 0);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_UP);

    if ((CUR_UPG_VALUE(UPG_NUTS) == 1) || (CUR_UPG_VALUE(UPG_NUTS) == 0)) {
        this->unk_254 = 0x79;
    } else {
        this->unk_254 = 0x7A;
    }
    this->actor.flags |= 1;
    this->actor.textId = 0x10DB;
    this->unk_250 = 5;
    this->actionFunc = func_809F24AC;
}

void func_809F24AC(EnDntJiji* this, GlobalContext* globalCtx) {
    f32 sp2C = this->skelAnime.curFrame;

    SkelAnime_Update(&this->skelAnime);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x1388, 0);
    if (this->unk_248 <= sp2C) {
        if (func_8002F194(&this->actor, globalCtx)) {
            this->actionFunc = func_809F2550;
        } else {
            func_8002F2CC(&this->actor, globalCtx, 100.0f);
        }
    }
}

void func_809F2550(EnDntJiji* this, GlobalContext* globalCtx) {
    this->unk_248 = (f32)Animation_GetLastFrame(&D_06000BD0);
    Animation_Change(&this->skelAnime, &D_06000BD0, 1.0f, 0.0f, this->unk_248, 0, -10.0f);
    this->actionFunc = func_809F25E4;
}

void func_809F25E4(EnDntJiji* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x1388, 0);
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
        func_8005B1A4(ACTIVE_CAM);
        func_80106CCC(globalCtx);
        func_8002DF54(globalCtx, NULL, 7);
        this->actor.parent = NULL;
        func_8002F434(&this->actor, globalCtx, this->unk_254, 400.0f, 200.0f);
        this->actionFunc = func_809F26B0;
    }
}

void func_809F26B0(EnDntJiji* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actionFunc = func_809F2720;
    } else {
        func_8002F434(&this->actor, globalCtx, this->unk_254, 400.0f, 200.0f);
    }
}

void func_809F2720(EnDntJiji* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && func_80106BC8(globalCtx)) {
        if ((this->unk_254 == 0x79) || (this->unk_254 == 0x7A)) {
            // nut
            osSyncPrintf("実 \n");
            osSyncPrintf("実 \n");
            osSyncPrintf("実 \n");
            osSyncPrintf("実 \n");
            osSyncPrintf("実 \n");
            osSyncPrintf("実 \n");
            osSyncPrintf("実 \n");
            osSyncPrintf("実 \n");
            gSaveContext.itemGetInf[1] |= 0x8000;
        } else {
            // stick
            osSyncPrintf("棒 \n");
            osSyncPrintf("棒 \n");
            osSyncPrintf("棒 \n");
            osSyncPrintf("棒 \n");
            osSyncPrintf("棒 \n");
            osSyncPrintf("棒 \n");
            gSaveContext.itemGetInf[1] |= 0x4000;
        }
        this->actor.textId = 0;
        if ((this->stage != 0) && (this->stage->actor.update != 0)) {
            this->stage->action = 0;
            if (this->unk_25A == 0) {
                this->stage->unk_158 = 4;
            } else {
                this->stage->unk_158 = 5;
            }
        }
        this->actor.flags &= ~1;
        if (this->unk_25A == 0) {
            this->actionFunc = func_809F28DC;
            return;
        } else {
            this->actionFunc = func_809F29E0;
        }
    }
}

void func_809F28DC(EnDntJiji* this, GlobalContext* globalCtx) {
    this->unk_248 = (f32)Animation_GetLastFrame(&D_06000A70);
    Animation_Change(&this->skelAnime, &D_06000A70, 1.0f, 0.0f, this->unk_248, 2, -10.0f);
    this->actionFunc = func_809F2974;
}

void func_809F2974(EnDntJiji* this, GlobalContext* globalCtx) {
    f32 frame = this->skelAnime.curFrame;

    SkelAnime_Update(&this->skelAnime);
    if (this->unk_248 <= frame) {
        this->actionFunc = func_809F1C44;
    }
}

void func_809F29E0(EnDntJiji* this, GlobalContext* globalCtx) {
    this->unk_248 = (f32)Animation_GetLastFrame(&D_060037C0);
    Animation_Change(&this->skelAnime, &D_060037C0, 1.0f, 0.0f, this->unk_248, 0, -10.0f);
    this->actor.speedXZ = 2.0f;
    this->isSolid = this->unk_25A = 1;
    this->actionFunc = func_809F2A90;
}

void func_809F2A90(EnDntJiji* this, GlobalContext* globalCtx) {
    f32 sp2C;
    f32 sp28;

    SkelAnime_Update(&this->skelAnime);
    sp2C = this->flowerPos.x - this->actor.posRot.pos.x;
    sp28 = this->flowerPos.z - this->actor.posRot.pos.z;
    Math_SmoothStepToS(&this->actor.shape.rot.y, Math_FAtan2F(sp2C, sp28) * 10430.378f, 1, 0xBB8, 0);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    if ((this->actor.bgCheckFlags & 8) && (this->actor.bgCheckFlags & 1)) {
        this->actor.velocity.y = 9.0f;
        this->actor.speedXZ = 3.0f;
    }
    if (this->unk_242 == 0) {
        this->unk_242 = 3;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_NUTS_WALK);
    }
    if ((fabsf(sp2C) < 5.0f) && (fabsf(sp28) < 5.0f)) {
        this->actor.posRot.pos.x = this->flowerPos.x;
        this->actor.posRot.pos.z = this->flowerPos.z;
        if (this->unk_252 != 0) {
            if ((this->stage->actor.update != NULL) && (this->stage->unk_158 == 0)) {
                this->stage->unk_158 = 4;
                this->stage->action = 2;
                Audio_SetBGM(0x81A);
            }
        }
        this->actor.speedXZ = 0.0f;
        this->isSolid = 0;
        this->actionFunc = func_809F2254;
    }
}

void EnDntJiji_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDntJiji* this = THIS;

    Actor_SetScale(&this->actor, 0.015f);
    this->unk_246++;
    if (BREG(0)) {
        // time
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 時間 ☆☆☆☆☆ %d\n" VT_RST, this->unk_240);
    }
    if ((this->unk_240 > 1) && (this->unk_240 != 0)) {
        this->unk_240--;
    }
    if (this->unk_242 != 0) {
        this->unk_242--;
    }
    if (this->blinkTimer != 0) {
        this->blinkTimer--;
    }
    switch (this->unk_24E) {
        case 1:
            this->isSolid = 1;
            this->unk_23E = 1;
            this->actionFunc = func_809F1DA8;
            break;
        case 2:
            this->isSolid = 0;
            this->unk_23E = 0;
            this->actionFunc = func_809F2254;
            break;
        case 3:
            this->actionFunc = func_809F29E0;
            break;
        case 0:
            break;
    }
    if (this->actor.textId != 0) {
        Actor_SetHeight(&this->actor, 30.0f);
    }
    if (this->unk_24E != 0) {
        this->unk_24E = 0;
    }
    if (this->blinkTimer == 0) {
        this->eyeState++;
        if (this->eyeState > 2) {
            this->eyeState = 0;
            this->blinkTimer = (s16)Rand_ZeroFloat(60.0f) + 20;
        }
    }
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 20.0f, 20.0f, 60.0f, 0x1D);
    Collider_CylinderUpdate(&this->actor, &this->collider);
    if (this->isSolid != 0) {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

void EnDntJiji_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static void* blinkTex[] = { 0x060030A0, 0x06002EA0, 0x06003020 };
    EnDntJiji* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_jiji.c", 1019);
    func_80093D18(globalCtx->state.gfxCtx);
    Matrix_Push();
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(blinkTex[this->eyeState]));
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, NULL, NULL, this);
    Matrix_Pull();
    Matrix_Translate(this->flowerPos.x, this->flowerPos.y, this->flowerPos.z, MTXMODE_NEW);
    Matrix_Scale(0.01f, 0.01f, 0.01f, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_dnt_jiji.c", 1040),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_06002310);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_dnt_jiji.c", 1043);
}
