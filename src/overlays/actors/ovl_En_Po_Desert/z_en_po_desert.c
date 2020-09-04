/*
 * File: z_en_po_desert.c
 * Overlay: ovl_En_Po_Desert
 * Description: Guide Poe (Haunted Wasteland)
 */

#include "z_en_po_desert.h"

#define FLAGS 0x00001090

#define THIS ((EnPoDesert*)thisx)

void EnPoDesert_Init(Actor* thisx, GlobalContext* globalCtx);
void EnPoDesert_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnPoDesert_Update(Actor* thisx, GlobalContext* globalCtx);
void EnPoDesert_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80AD2E64(EnPoDesert* this, GlobalContext* globalCtx);
void func_80AD30D0(EnPoDesert* this, GlobalContext* globalCtx);
void func_80AD3194(EnPoDesert* this, GlobalContext* globalCtx);
void func_80AD3328(EnPoDesert* this, GlobalContext* globalCtx);

const ActorInit En_Po_Desert_InitVars = {
    ACTOR_EN_PO_DESERT,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_PO_FIELD,
    sizeof(EnPoDesert),
    (ActorFunc)EnPoDesert_Init,
    (ActorFunc)EnPoDesert_Destroy,
    (ActorFunc)EnPoDesert_Update,
    (ActorFunc)EnPoDesert_Draw,
};

ColliderCylinderInit D_80AD39A0 = {
    { COLTYPE_UNK3, 0x00, 0x00, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 25, 50, 20, { 0, 0, 0 } },
};

InitChainEntry D_80AD39CC[3] = {
    ICHAIN_S8(naviEnemyId, 0x5C, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 3200, ICHAIN_STOP),
};

Vec3f D_80AD39D8 = { 0.0f, 1400.0f, 0.0f };

extern SkeletonHeader D_06006A30;
extern AnimationHeader D_06000924;
extern AnimationHeader D_06001360;

extern Gfx D_06004BA0[];
extern Gfx D_06004CC0[];

void EnPoDesert_Init(Actor* thisx, GlobalContext* globalCtx) {
    ColliderCylinder* collider;
    EnPoDesert* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_80AD39CC);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06006A30, &D_06000924, &this->unk_1A8, &this->unk_1E4, 10);
    collider = &this->collider;
    Collider_InitCylinder(globalCtx,collider);
    Collider_SetCylinder(globalCtx, collider, &this->actor, &D_80AD39A0);
    this->unk_220 = 255;
    this->unk_221 = 255;
    this->unk_222 = 210;
    this->unk_223 = 255;
    this->light = Lights_Insert(globalCtx, &globalCtx->lightCtx, &this->lightInfo);
    Lights_InitType0PositionalLight(&this->lightInfo, this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z, 255, 255, 255, 200);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 37.0f);
    this->unk_198 = 1;
    this->actor.params = (this->actor.params >> 8) & 0xFF;
    this->unk_1A4 = this->actor.posRot.pos.y;
    func_80AD2E64(this, globalCtx);
}

void EnPoDesert_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnPoDesert* this = THIS;

    Lights_Remove(globalCtx, &globalCtx->lightCtx, this->light);
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80AD2E64(EnPoDesert* this, GlobalContext* globalCtx) {
    Path* path;
    Vec3s* pathPoint;

    path = &globalCtx->setupPathList[this->actor.params];
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06001360, -6.0f);
    pathPoint = &((Vec3s*)SEGMENTED_TO_VIRTUAL(path->points))[this->unk_198];
    this->actor.initPosRot.pos.x = pathPoint->x;
    this->actor.initPosRot.pos.y = pathPoint->y;
    this->actor.initPosRot.pos.z = pathPoint->z;
    this->unk_19C = func_8002DBB0(&this->actor, &this->actor.initPosRot.pos);
    this->unk_19C = CLAMP_MIN(this->unk_19C, 1.0f);
    this->unk_198++;
    this->unk_1A0 = this->actor.initPosRot.pos.y - this->actor.posRot.pos.y;
    this->actor.speedXZ = 0.0f;
    if (path->count == this->unk_198) {
        this->unk_198 = 0;
    }
    this->actionFunc = func_80AD30D0;
}

void func_80AD2FBC(EnPoDesert* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000924, -5.0f);
    this->actionFunc = func_80AD3194;
}

void func_80AD2FFC(EnPoDesert* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06001360, -6.0f);
    this->unk_194 = 0x10;
    this->actor.speedXZ = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DISAPPEAR);
    this->actionFunc = func_80AD3328;
}

void func_80AD305C(EnPoDesert* this) {
    if (this->unk_196 == 0) {
        this->unk_196 = 32;
    }
    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    this->actor.posRot.pos.y = Math_Sins(this->unk_196 * 0x800) * 13.0f + this->unk_1A4;
}

void func_80AD30D0(EnPoDesert* this, GlobalContext* globalCtx) {
    func_8002F974(&this->actor, NA_SE_EN_PO_FLY - SFX_FLAG);
    if (this->actor.xzDistFromLink < 200.0f) {
        if (this->unk_198 != 2 || globalCtx->actorCtx.unk_03 != 0) {
            if (this->unk_198 == 2) {
                if (Gameplay_InCsMode(globalCtx) != 0) {
                    this->actor.shape.rot.y += 0x800;
                    return;
                }
                func_8010B680(globalCtx, 0x600B, NULL);
            }
            func_80AD2FBC(this);
            return;
        }
    }
    this->actor.shape.rot.y += 0x800;
}

void func_80AD3194(EnPoDesert* this, GlobalContext* globalCtx) {
    f32 temp_f20;

    if (this->unk_194 != 0) {
        this->unk_194--;
    }
    temp_f20 = sinf(this->unk_194 * 0.15707964f) * 5.0f;
    this->actor.posRot.pos.x += temp_f20 * Math_Coss(this->actor.shape.rot.y);
    this->actor.posRot.pos.z += temp_f20 * Math_Sins(this->actor.shape.rot.y);
    if (this->unk_194 == 0) {
        this->unk_194 = 40;
    }
    temp_f20 = func_8002DBB0(this, &this->actor.initPosRot.pos);
    this->actor.posRot.rot.y = func_8002DAC0(this, &this->actor.initPosRot.pos);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.posRot.rot.y + 0x8000, 5, 0x400);
    this->actor.speedXZ = sinf(this->unk_196 * 0.09817477f) * 2.5f + 5.5f;
    func_8002F974(&this->actor, NA_SE_EN_PO_FLY - SFX_FLAG);
    this->unk_1A4 = this->actor.initPosRot.pos.y - ((temp_f20 * this->unk_1A0) / this->unk_19C);
    if (temp_f20 < 40.0f) {
        if (this->unk_198 != 0) {
            func_80AD2E64(this, globalCtx);
        } else {
            func_80AD2FFC(this);
        }
    }
}

void func_80AD3328(EnPoDesert* this, GlobalContext* globalCtx) {
    if (this->unk_194 != 0) {
        this->unk_194--;
    }
    this->actor.shape.rot.y += 0x2000;
    this->unk_223 = this->unk_194 * 15.9375f;
    this->actor.shape.unk_14 = this->unk_223;
    if (this->unk_194 == 0) {
        Actor_Kill(&this->actor);
    }
}

void EnPoDesert_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnPoDesert* this = THIS;
    s32 pad;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_80AD305C(this);
    func_8002E4B4(globalCtx, &this->actor, 0.0f, 27.0f, 60.0f, 4);
    Actor_SetHeight(&this->actor, 42.0f);
    Collider_CylinderUpdate(this, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
    if (globalCtx->actorCtx.unk_03 != 0) {
        this->actor.flags |= 0x81;
        this->actor.shape.shadowDrawFunc = ActorShadow_DrawFunc_Circle;
    } else {
        this->actor.shape.shadowDrawFunc = NULL;
        this->actor.flags &= ~0x81;
    }
}

s32 func_80AD3504(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx, Gfx** gfxP) {
    EnPoDesert* this = THIS;
    f32 mtxScale;

    if (this->actionFunc == func_80AD3328 && limbIndex == 7) {
        mtxScale = this->unk_194 * 0.0625f;
        Matrix_Scale(mtxScale, mtxScale, mtxScale, 1);
    }
    if ((this->actor.flags & 0x80) != 0x80) {
        *dList = NULL;
    }
    return 0;
}

void func_80AD3594(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx, Gfx** gfxP) {
    EnPoDesert* this = THIS;
    f32 rand;
    Color_RGBA8 color;
    Vec3f vec;

    if (limbIndex == 7) {
        Matrix_MultVec3f(&D_80AD39D8, &vec);
        rand = Math_Rand_ZeroOne();
        color.r = (s16)(rand * 30.0f) + 0xE1;
        color.g = (s16)(rand * 100.0f) + 0x9B;
        color.b = (s16)(rand * 160.0f) + 0x5F;
        if ((this->actor.flags & 0x80) == 0x80) {
            gDPPipeSync((*gfxP)++);
            gDPSetEnvColor((*gfxP)++, color.r, color.g, color.b, 255);
            gSPMatrix((*gfxP)++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_desert.c", 523), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList((*gfxP)++, D_06004BA0);
            gSPDisplayList((*gfxP)++, D_06004CC0);
            gDPPipeSync((*gfxP)++);
            gDPSetEnvColor((*gfxP)++, this->unk_220, this->unk_221 , this->unk_222, this->unk_223);
        }
        Lights_InitType0PositionalLight(&this->lightInfo, vec.x, vec.y, vec.z, color.r, color.g, color.b, 200);
    }
}

void EnPoDesert_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnPoDesert* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_po_desert.c", 559);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x0A, Gfx_EnvColor(globalCtx->state.gfxCtx, 255, 85, 0, 255));
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08, Gfx_EnvColor(globalCtx->state.gfxCtx, this->unk_220, this->unk_221, this->unk_222, this->unk_223));
    if (this->actionFunc == func_80AD3328) {
        gSPSegment(oGfxCtx->polyXlu.p++, 0x0C, D_80116280);
    } else {
        gSPSegment(oGfxCtx->polyXlu.p++, 0x0C, D_80116280 + 2);
    }
    oGfxCtx->polyXlu.p = SkelAnime_Draw2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_80AD3504, func_80AD3594, &this->actor, oGfxCtx->polyXlu.p);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_po_desert.c", 597);
}
