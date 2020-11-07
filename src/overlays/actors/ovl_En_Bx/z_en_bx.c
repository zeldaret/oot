/*
 * File: z_en_bx.c
 * Overlay: ovl_En_Bx
 * Description: Jabu-Jabu Electrified Tentacle
 */

#include "z_en_bx.h"

#define FLAGS 0x00000010

#define THIS ((EnBx*)thisx)

void EnBx_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBx_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBx_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBx_Draw(Actor* thisx, GlobalContext* globalCtx);

extern Gfx D_060022F0[];

const ActorInit En_Bx_InitVars = {
    ACTOR_EN_BX,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_BXA,
    sizeof(EnBx),
    (ActorFunc)EnBx_Init,
    (ActorFunc)EnBx_Destroy,
    (ActorFunc)EnBx_Update,
    (ActorFunc)EnBx_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK6, 0x11, 0x09, 0x00, 0x00, COLSHAPE_CYLINDER },
    { 0x01, { 0xFFCFFFFF, 0x03, 0x04 }, { 0xFFCFFFFF, 0x01, 0x00 }, 0x01, 0x01, 0x00 },
    { 60, 100, 100, { 0, 0, 0 } },
};

static ColliderQuadInit sQuadInit = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x00, COLSHAPE_QUAD },
    { 0x00, { 0xFFCFFFFF, 0x03, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

void EnBx_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnBx* this = THIS;
    Vec3f sp48 = { 0.015f, 0.015f, 0.015f };
    Vec3f sp3C = { 0.0f, 0.0f, 0.0f };
    static InitChainEntry sInitChain[] = {
        ICHAIN_F32(unk_4C, 5300, ICHAIN_STOP),
    };
    s32 i;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    thisx->scale.x = thisx->scale.z = 0.01f;
    thisx->scale.y = 0.03f;

    thisx->posRot.pos.y = thisx->posRot.pos.y - 100.0f;
    for (i = 0; i < 4; i++) {
        this->unk_184[i] = sp48;
        if (i == 0) {
            this->unk_1B4[i].x = thisx->shape.rot.x - 0x4000;
        }
        this->unk_154[i] = thisx->posRot.pos;
        this->unk_154[i].y = thisx->posRot.pos.y + ((i + 1) * 140.0f);
    }

    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFunc_Circle, 48.0f);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    Collider_InitQuad(globalCtx, &this->colliderQuad);
    Collider_SetQuad(globalCtx, &this->colliderQuad, &this->actor, &sQuadInit);
    thisx->colChkInfo.mass = 0xFF;
    this->unk_14C = 0;
    thisx->uncullZoneDownward = 2000.0f;
    if (Flags_GetSwitch(globalCtx, (thisx->params >> 8) & 0xFF)) {
        Actor_Kill(&this->actor);
    }
    thisx->params &= 0xFF;
}

void EnBx_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnBx* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_809D1D0C(Actor* thisx, GlobalContext* globalCtx) {
    Vec3f sp5C = { 8000.0f, 15000.0f, 2500.0f };
    Vec3f sp50 = { 8000.0f, 10000.0f, 2500.0f };
    static Vec3f D_809D2540 = { -8000.0f, 15000.0f, 2500.0f };
    static Vec3f D_809D254C = { -8000.0f, 10000.0f, 2500.0f };
    Vec3f sp44;
    Vec3f sp38;
    EnBx* this = THIS;

    Matrix_MultVec3f(&D_809D2540, &sp44);
    Matrix_MultVec3f(&D_809D254C, &sp38);
    Matrix_MultVec3f(&sp5C, &this->colliderQuad.dim.quad[1]);
    Matrix_MultVec3f(&sp50, &this->colliderQuad.dim.quad[0]);
    func_80062734(&this->colliderQuad, &sp38, &sp44, &this->colliderQuad.dim.quad[0], &this->colliderQuad.dim.quad[1]);
}

void EnBx_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnBx* this = THIS;
    Player* player = PLAYER;
    s32 i;
    s16 tmp32;
    s32 tmp33;

    if ((thisx->xzDistFromLink <= 70.0f) || (this->collider.base.atFlags & 2) || (this->collider.base.acFlags & 2) ||
        (this->colliderQuad.base.atFlags & 2)) {
        if ((thisx->xzDistFromLink <= 70.0f) || (&player->actor == this->collider.base.at) ||
            (&player->actor == this->collider.base.ac) || (&player->actor == this->colliderQuad.base.at)) {
            tmp33 = player->invincibilityTimer & 0xFF;
            tmp32 = thisx->posRot.rot.y;
            if (!(thisx->params & 0x80)) {
                tmp32 = thisx->yawTowardsLink;
            }
            if ((&player->actor != this->collider.base.at) && (&player->actor != this->collider.base.ac) &&
                (&player->actor != this->colliderQuad.base.at) && (player->invincibilityTimer <= 0)) {
                if (player->invincibilityTimer < -39) {
                    player->invincibilityTimer = 0;
                } else {
                    player->invincibilityTimer = 0;
                    globalCtx->damagePlayer(globalCtx, -4);
                }
            }
            func_8002F71C(globalCtx, &this->actor, 6.0f, tmp32, 6.0f);
            player->invincibilityTimer = tmp33;
        }

        this->collider.base.atFlags &= ~2;
        this->collider.base.acFlags &= ~2;
        this->colliderQuad.base.atFlags &= ~2;
        this->colliderQuad.base.at = NULL;
        this->collider.base.ac = NULL;
        this->collider.base.at = NULL;
        this->unk_14C = 0x14;
    }

    if (this->unk_14C != 0) {
        this->unk_14C--;
        for (i = 0; i < 4; i++) {
            if (!((this->unk_14C + (i << 1)) % 4)) {
                static Color_RGBA8 primColor = { 255, 255, 255, 255 };
                static Color_RGBA8 envColor = { 200, 255, 255, 255 };
                Vec3f pos;
                s16 yaw;

                yaw = (s32)Math_Rand_CenteredFloat(12288.0f);
                yaw = (yaw + (i * 0x4000)) + 0x2000;
                pos.x = Math_Rand_CenteredFloat(5.0f) + thisx->posRot.pos.x;
                pos.y = Math_Rand_CenteredFloat(30.0f) + thisx->posRot.pos.y + 170.0f;
                pos.z = Math_Rand_CenteredFloat(5.0f) + thisx->posRot.pos.z;
                EffectSsLightning_Spawn(globalCtx, &pos, &primColor, &envColor, 230, yaw, 6, 0);
            }
        }

        Audio_PlayActorSound2(thisx, NA_SE_EN_BIRI_SPARK - SFX_FLAG);
    }
    thisx->posRot2.pos = thisx->posRot.pos;
    Collider_CylinderUpdate(thisx, &this->collider);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    if (thisx->params & 0x80) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderQuad.base);
    }
}

void EnBx_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static UNK_PTR D_809D2560[] = { 0x060024F0, 0x060027F0, 0x060029F0 };
    EnBx* this = THIS;
    s32 pad;
    Mtx* mtx = Graph_Alloc(globalCtx->state.gfxCtx, 4 * sizeof(Mtx));
    s16 i;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_bx.c", 464);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x0C, mtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_809D2560[this->actor.params & 0x7F]));
    gSPSegment(POLY_OPA_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 16, 16, 1, 0, (globalCtx->gameplayFrames * -10) % 128,
                                32, 32));
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_bx.c", 478),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (this->actor.params & 0x80) {
        func_809D1D0C(&this->actor, globalCtx);
    }

    this->unk_14E -= 0xBB8;
    thisx->scale.z = thisx->scale.x = (Math_Coss(this->unk_14E) * 0.0075f) + 0.015f;

    for (i = 3; i >= 0; i--) {
        s16 off = (0x2000 * i);
        this->unk_184[i].z = this->unk_184[i].x = (Math_Coss(this->unk_14E + off) * 0.0075f) + 0.015f;
        this->unk_1B4[i].x = thisx->shape.rot.x;
        this->unk_1B4[i].y = thisx->shape.rot.y;
        this->unk_1B4[i].z = thisx->shape.rot.z;
    }

    for (i = 0; i < 4; i++, mtx++) {
        Matrix_Translate(this->unk_154[i].x, this->unk_154[i].y, this->unk_154[i].z, MTXMODE_NEW);
        Matrix_RotateRPY(this->unk_1B4[i].x, this->unk_1B4[i].y, this->unk_1B4[i].z, MTXMODE_APPLY);
        Matrix_Scale(this->unk_184[i].x, this->unk_184[i].y, this->unk_184[i].z, MTXMODE_APPLY);
        Matrix_ToMtx(mtx, "../z_en_bx.c", 507);
    }

    gSPDisplayList(POLY_OPA_DISP++, D_060022F0);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_bx.c", 511);
}
