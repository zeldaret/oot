/*
 * File: z_en_kakasi.c
 * Overlay: ovl_En_Kakasi
 * Description: Pierre the Scarecrow
 */

#include "z_en_kakasi.h"
#include "vt.h"

#define FLAGS 0x02000009

#define THIS ((EnKakasi*)thisx)

void EnKakasi_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKakasi_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKakasi_Update(Actor* thisx, GlobalContext* globalCtx);
void EnKakasi_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A8F660(EnKakasi* this, GlobalContext* globalCtx);
void func_80A8F75C(EnKakasi* this, GlobalContext* globalCtx);
void func_80A8F8D0(EnKakasi* this, GlobalContext* globalCtx);
void func_80A8F9C8(EnKakasi* this, GlobalContext* globalCtx);
void func_80A8FBB8(EnKakasi* this, GlobalContext* globalCtx);
void func_80A8FAA4(EnKakasi* this, GlobalContext* globalCtx);

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x04, 0x01 },
    { 20, 70, 0, { 0, 0, 0 } },
};

extern SkeletonHeader D_060065B0;
extern AnimationHeader D_06000214;

const ActorInit En_Kakasi_InitVars = {
    ACTOR_EN_KAKASI,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_KA,
    sizeof(EnKakasi),
    (ActorFunc)EnKakasi_Init,
    (ActorFunc)EnKakasi_Destroy,
    (ActorFunc)EnKakasi_Update,
    (ActorFunc)EnKakasi_Draw,
};

void EnKakasi_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
    //! @bug Skelanime_Free is not called
}

void EnKakasi_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi* this = THIS;

    osSyncPrintf("\n\n");
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ Ｌｅｔ’ｓ ＤＡＮＣＥ！ ☆☆☆☆☆ %f\n" VT_RST, this->actor.posRot.pos.y);

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    this->actor.unk_1F = 6;
    SkelAnime_InitSV(globalCtx, &this->skelanime, &D_060065B0, &D_06000214, NULL, NULL, 0);

    this->rot = this->actor.posRot.rot;
    this->actor.flags |= 0x400;
    this->actor.colChkInfo.mass = 0xFF;

    Actor_SetScale(&this->actor, 0.01f);
    this->actionFunc = func_80A8F660;
}

void func_80A8F28C(EnKakasi* this) {
    this->unk_1A4 = 0;
    this->skelanime.animPlaybackSpeed = 0.0f;
    this->unk_1A8 = this->unk_1AC = 0;

    Math_SmoothDownscaleMaxF(&this->skelanime.animCurrentFrame, 0.5f, 1.0f);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, this->rot.x, 5, 0x2710, 0);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->rot.y, 5, 0x2710, 0);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, this->rot.z, 5, 0x2710, 0);
}

void func_80A8F320(EnKakasi* this, GlobalContext* globalCtx, s16 arg) {
    s16 phi_v0;
    s16 currentFrame;

    phi_v0 = globalCtx->msgCtx.unk_E410[0];
    if (arg != 0) {
        if (this->unk_19C[3] == 0) {
            this->unk_19C[3] = (s16)Math_Rand_ZeroFloat(10.99f) + 30;
            this->unk_1A6 = (s16)Math_Rand_ZeroFloat(4.99f);
        }

        this->unk_19A = (s16)Math_Rand_ZeroFloat(2.99f) + 5;
        phi_v0 = this->unk_1A6;
    }
    switch (phi_v0) {
        case 0:
            this->unk_19A++;
            if (this->unk_1A4 == 0) {
                this->unk_1A4 = 1;
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_KAKASHI_ROLL);
            }
            break;
        case 1:
            this->unk_19A++;
            this->unk_1B8 = 1.0f;
            break;
        case 2:
            this->unk_19A++;
            if (this->unk_1AC == 0) {
                this->unk_1AC = 0x1388;
            }
            break;
        case 3:
            this->unk_19A++;
            if (this->unk_1A8 == 0) {
                this->unk_1A8 = 0x1388;
            }
            break;
        case 4:
            this->unk_19A++;
            this->unk_1B8 = 2.0f;
            break;
    }

    if (this->unk_19A > 8) {
        this->unk_19A = 8;
    }

    if (this->unk_19A != 0) {
        this->actor.gravity = -1.0f;
        if (this->unk_19A == 8 && (this->actor.bgCheckFlags & 1)) {
            this->actor.velocity.y = 3.0f;
            Audio_PlayActorSound2(&this->actor, NA_SE_IT_KAKASHI_JUMP);
        }
        Math_SmoothScaleMaxF(&this->skelanime.animPlaybackSpeed, this->unk_1B8, 0.1f, 0.2f);
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, this->unk_1A8, 5, 0x3E8, 0);
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, this->unk_1AC, 5, 0x3E8, 0);

        if (this->unk_1A8 != 0 && fabsf(this->actor.shape.rot.x - this->unk_1A8) < 50.0f) {
            this->unk_1A8 *= -1.0f;
        }
        if (this->unk_1AC != 0 && fabsf(this->actor.shape.rot.z - this->unk_1AC) < 50.0f) {
            this->unk_1AC *= -1.0f;
        }

        if (this->unk_1A4 != 0) {
            this->actor.shape.rot.y += 0x1000;
            if (this->actor.shape.rot.y == 0) {
                this->unk_1A4 = 0;
            }
        }
        currentFrame = this->skelanime.animCurrentFrame;
        if (currentFrame == 11 || currentFrame == 17) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_KAKASHI_SWING);
        }
        SkelAnime_FrameUpdateMatrix(&this->skelanime);
    }
}

void func_80A8F660(EnKakasi* this, GlobalContext* globalCtx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_06000214.genericHeader);

    SkelAnime_ChangeAnim(&this->skelanime, &D_06000214, 1.0f, 0.0f, (s16)frameCount, 0, -10.0f);

    this->actor.textId = 0x4076;
    this->unk_196 = 6;
    if (LINK_IS_CHILD) {
        this->unk_194 = false;
        if (gSaveContext.scarecrowCustomSongSet) {
            this->actor.textId = 0x407A;
            this->unk_196 = 5;
        }
    } else {
        this->unk_194 = true;
        if (gSaveContext.scarecrowCustomSongSet) {
            this->actor.textId = 0x4079;
            this->unk_196 = 5;
        }
    }
    this->actionFunc = func_80A8F75C;
}

void func_80A8F75C(EnKakasi* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 yawTowardsLink;
    s16 absyawTowardsLink;

    func_80A8F28C(this);
    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    this->camId = -1;
    if (func_8002F194(&this->actor, globalCtx)) {
        if (this->unk_196 == 5) {
            this->actionFunc = func_80A8F9C8;
        } else {
            this->actionFunc = func_80A8F660;
        }
        return;
    }

    yawTowardsLink = this->actor.yawTowardsLink - this->actor.shape.rot.y;
    if (!(this->actor.xzDistFromLink > 120.0f)) {
        absyawTowardsLink = ABS(yawTowardsLink);

        if (absyawTowardsLink < 0x4300) {
            if (!this->unk_194) {
                if (player->stateFlags2 & 0x1000000) {
                    this->camId = func_800800F8(globalCtx, 0x8D4, -0x63, &this->actor, 0);

                    func_8010BD58(globalCtx, 0x2A);
                    this->unk_19A = 0;
                    this->unk_1B8 = 0.0;
                    player->stateFlags2 |= 0x800000;
                    this->actionFunc = func_80A8F8D0;
                    return;
                }
                if (this->actor.xzDistFromLink < 80.0f) {
                    player->stateFlags2 |= 0x800000;
                }
            }
            func_8002F2CC(&this->actor, globalCtx, 100.0f);
        }
    }
}

void func_80A8F8D0(EnKakasi* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (globalCtx->msgCtx.unk_E3EE == 4 && globalCtx->msgCtx.msgMode == 0) {
        // end?
        osSyncPrintf(VT_FGCOL(BLUE) "☆☆☆☆☆ 終り？ ☆☆☆☆☆ \n" VT_RST);

        if (this->unk_19A != 0) {
            func_80106CCC(globalCtx);
            this->actor.textId = 0x4077;
            this->unk_196 = 5;
            func_8010B680(globalCtx, this->actor.textId, NULL);
            this->actionFunc = func_80A8F9C8;
        } else {
            func_800803F0(globalCtx, this->camId);
            this->camId = -1;
            this->actionFunc = func_80A8F660;
        }
    } else if (globalCtx->msgCtx.unk_E3EE == 1) {
        func_80A8F320(this, globalCtx, 0);
        player->stateFlags2 |= 0x800000;
    }
}

void func_80A8F9C8(EnKakasi* this, GlobalContext* globalCtx) {
    func_80A8F28C(this);
    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    func_8002DF54(globalCtx, NULL, 8);

    if (this->unk_196 == func_8010BDBC(&globalCtx->msgCtx) && (func_80106BC8(globalCtx) != 0)) {

        if (this->camId != -1) {
            func_8005B1A4(globalCtx->cameraPtrs[this->camId]);
        }
        this->camId = func_800800F8(globalCtx, 0x8DE, -0x63, &this->actor, 0);
        globalCtx->msgCtx.msgMode = 0x37;
        func_8002DF54(globalCtx, NULL, 8);
        func_8010BD58(globalCtx, 0x2B);
        this->actionFunc = func_80A8FAA4;
    }
}

void func_80A8FAA4(EnKakasi* this, GlobalContext* globalCtx) {
    if (globalCtx->msgCtx.unk_E3EE != 0xF) {
        func_80A8F320(this, globalCtx, 1);
        return;
    }

    osSyncPrintf("game_play->message.msg_mode=%d\n", globalCtx->msgCtx.msgMode);

    if (globalCtx->msgCtx.msgMode == 0) {
        if (this->unk_194) {
            this->actor.textId = 0x4077;
            this->unk_196 = 5;
            func_8010B680(globalCtx, this->actor.textId, NULL);
        } else {
            this->actor.textId = 0x4078;
            this->unk_196 = 5;
            func_8010B680(globalCtx, this->actor.textId, NULL);
        }
        this->actionFunc = func_80A8FBB8;
        func_800803F0(globalCtx, this->camId);
        this->camId = -1;
        this->camId = func_800800F8(globalCtx, 0x8D4, -0x63, &this->actor, 0);
        func_8005B1A4(globalCtx->cameraPtrs[this->camId]);
    }
}

void func_80A8FBB8(EnKakasi* this, GlobalContext* globalCtx) {
    func_80A8F28C(this);
    SkelAnime_FrameUpdateMatrix(&this->skelanime);

    if (this->unk_196 == func_8010BDBC(&globalCtx->msgCtx)) {
        if (func_80106BC8(globalCtx) != 0) {
            func_8005B1A4(globalCtx->cameraPtrs[this->camId]);
            func_80106CCC(globalCtx);
            func_8002DF54(globalCtx, NULL, 7);
            this->actionFunc = func_80A8F660;
        }
    }
}

void EnKakasi_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi* this = THIS;
    s32 pad;
    s32 i;

    this->unk_198++;
    this->actor.posRot.rot = this->actor.shape.rot;
    for (i = 0; i < ARRAY_COUNT(this->unk_19C); i++) {
        if (this->unk_19C[i] != 0) {
            this->unk_19C[i]--;
        }
    }

    this->height = 60.0f;
    Actor_SetHeight(&this->actor, this->height);
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 50.0f, 50.0f, 100.0f, 28);
    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

void EnKakasi_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi* this = THIS;

    if (BREG(3) != 0) {
        osSyncPrintf("\n\n");
        // flag!
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ フラグ！ ☆☆☆☆☆ %d\n" VT_RST, gSaveContext.scarecrowCustomSongSet);
    }
    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawSV(globalCtx, this->skelanime.skeleton, this->skelanime.limbDrawTbl, this->skelanime.dListCount, NULL,
                     NULL, &this->actor);
}
