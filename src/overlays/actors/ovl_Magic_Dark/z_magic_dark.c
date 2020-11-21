/*
 * File: z_magic_dark.c
 * Overlay: ovl_Magic_Dark
 * Description: Nayru's Love
 */

#include "z_magic_dark.h"

#define FLAGS 0x02000010

#define THIS ((MagicDark*)thisx)

void MagicDark_Init(Actor* thisx, GlobalContext* globalCtx);
void MagicDark_Destroy(Actor* thisx, GlobalContext* globalCtx);
void MagicDark_Update(Actor* thisx, GlobalContext* globalCtx);
void MagicDark_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B874E4(Actor* thisx, GlobalContext* globalCtx);
void func_80B8772C(GlobalContext* globalCtx, f32 a1);
void func_80B87A18(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Magic_Dark_InitVars = {
    ACTOR_MAGIC_DARK,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(MagicDark),
    (ActorFunc)MagicDark_Init,
    (ActorFunc)MagicDark_Destroy,
    (ActorFunc)MagicDark_Update,
    (ActorFunc)MagicDark_Draw,
};

#include "z_magic_dark_gfx.c"

// probably unused?
static UNK_TYPE D_80B88B10[] = { 0x326496C8, 0xFFC89664, 0x00000000, 0x00000000 };

void MagicDark_Init(Actor* thisx, GlobalContext* globalCtx) {
    MagicDark* this = THIS;
    Player* player = PLAYER;

    if (LINK_IS_CHILD) {
        this->scale = 0.4f;
    } else {
        this->scale = 0.6f;
    }

    thisx->posRot.pos = player->actor.posRot.pos;
    Actor_SetScale(&this->actor, 0.0f);
    thisx->room = -1;

    if (gSaveContext.nayrusLoveTimer != 0) {
        thisx->update = func_80B874E4;
        thisx->draw = func_80B87A18;
        thisx->scale.x = thisx->scale.z = this->scale * 1.6f;
        thisx->scale.y = this->scale * 0.8f;
        this->unk_14C = 0;
        this->unk_14E = 0;
    } else {
        this->unk_14C = 0;
        gSaveContext.nayrusLoveTimer = 0;
    }
}

void MagicDark_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    if (gSaveContext.nayrusLoveTimer == 0) {
        func_800876C8(globalCtx);
    }
}

void func_80B874E4(Actor* thisx, GlobalContext* globalCtx) {
    MagicDark* this = THIS;
    u8 phi_a0;
    Player* player = PLAYER;
    u8 temp;
    s16 nayrusLoveTimer = gSaveContext.nayrusLoveTimer;
    s32 msgMode = globalCtx->msgCtx.msgMode;
    u8 temp2;

    if (1) {}

    if ((msgMode == 0xD) || (msgMode == 0x11)) {
        Actor_Kill(thisx);
        return;
    }

    if (nayrusLoveTimer >= 1200) {
        player->invincibilityTimer = 0;
        gSaveContext.nayrusLoveTimer = 0;
        Actor_Kill(thisx);
        return;
    }

    player->invincibilityTimer = -100;
    thisx->scale.x = thisx->scale.z = this->scale;

    if (this->unk_14C < 20) {
        thisx->scale.x = thisx->scale.z = (1.6f - (this->unk_14C * 0.03f)) * this->scale;
        thisx->scale.y = ((this->unk_14C * 0.01f) + 0.8f) * this->scale;
    } else {
        thisx->scale.x = thisx->scale.z = this->scale;
        thisx->scale.y = this->scale;
    }

    thisx->scale.x *= 1.3f;
    thisx->scale.z *= 1.3f;

    phi_a0 = (this->unk_14C < 20) ? (this->unk_14C * 12) : 255;

    if (nayrusLoveTimer >= 1180) {
        this->unk_14E = 0x3CEB - (nayrusLoveTimer * 0xD);
        if (nayrusLoveTimer & 1) {
            temp2 = this->unk_14E;
            this->unk_14E = (temp2 & 0xFF) >> 1;
        }
    } else {
        if (nayrusLoveTimer >= 1100) {
            temp = (nayrusLoveTimer << 7);
            temp += 0x7F;
            this->unk_14E = temp;
        } else {
            this->unk_14E = 0xFF;
        }
    }

    if (phi_a0 < this->unk_14E) {
        this->unk_14E = phi_a0;
    }

    thisx->posRot.rot.y += 0x3E8;
    thisx->shape.rot.y = thisx->posRot.rot.y + func_8005A9F4(ACTIVE_CAM);
    this->unk_14C++;
    gSaveContext.nayrusLoveTimer = nayrusLoveTimer + 1;

    if (nayrusLoveTimer < 1100) {
        func_8002F974(thisx, NA_SE_PL_MAGIC_SOUL_NORMAL - SFX_FLAG);
    } else {
        func_8002F974(thisx, NA_SE_PL_MAGIC_SOUL_FLASH - SFX_FLAG);
    }
}

void func_80B8772C(GlobalContext* globalCtx, f32 a1) {
    s32 i;
    f32 temp_f0;
    f32 phi_f0;

    if (globalCtx->roomCtx.curRoom.unk_03 != 5) {
        if (a1 < 0.0f) {
            a1 = 0.0f;
        }
        if (a1 > 1.0f) {
            a1 = 1.0f;
        }
        phi_f0 = a1 - 0.2f;
        if (a1 < 0.2f) {
            phi_f0 = 0.0f;
        }
        globalCtx->envCtx.unk_9E = (850.0f - globalCtx->envCtx.unk_D2) * phi_f0;
        if (a1 == 0.0f) {
            for (i = 0; i < ARRAY_COUNT(globalCtx->envCtx.unk_8C[2]); i++) {
                globalCtx->envCtx.unk_8C[2][i] = 0;
            }
        } else {
            temp_f0 = a1 * 5.0f;
            if (temp_f0 > 1.0f) {
                temp_f0 = 1.0f;
            }

            for (i = 0; i < ARRAY_COUNT(globalCtx->envCtx.unk_8C[2]); i++) {
                globalCtx->envCtx.unk_8C[2][i] = -(s16)(globalCtx->envCtx.unk_CF[i] * temp_f0);
            }
        }
    }
}

void MagicDark_Update(Actor* thisx, GlobalContext* globalCtx) {
    MagicDark* this = THIS;
    s32 pad;
    Player* player = PLAYER;

    func_8002F974(&this->actor, NA_SE_PL_MAGIC_SOUL_BALL - SFX_FLAG);
    if (this->unk_14C < 35) {
        func_80B8772C(globalCtx, this->unk_14C * (1 / 45.0f));
        Math_SmoothScaleMaxMinF(&thisx->scale.x, this->scale * (1 / 12.000001f), 0.05f, 0.01f, 0.0001f);
        Actor_SetScale(&this->actor, thisx->scale.x);
    } else if (this->unk_14C < 55) {
        Actor_SetScale(&this->actor, thisx->scale.x * 0.9f);
        Math_SmoothScaleMaxMinF(&this->unk_150.y, player->bodyPartsPos[0].y, 0.5f, 3.0f, 1.0f);
        if (this->unk_14C >= 49) {
            func_80B8772C(globalCtx, (54 - this->unk_14C) * 0.2f);
        }
    } else {
        thisx->update = func_80B874E4;
        thisx->draw = func_80B87A18;
        thisx->scale.x = thisx->scale.z = this->scale * 1.6f;
        thisx->scale.y = this->scale * 0.8f;
        this->unk_14C = 0;
        this->unk_14E = 0;
    }

    this->unk_14C++;
}

void func_80B87A18(Actor* thisx, GlobalContext* globalCtx) {
    MagicDark* this = THIS;
    s32 pad;
    u16 gameplayFrames = globalCtx->gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_magic_dark.c", 525);

    func_80093D84(globalCtx->state.gfxCtx);

    {
        Player* player = PLAYER;
        f32 heightDiff;

        this->actor.posRot.pos.x = player->bodyPartsPos[0].x;
        this->actor.posRot.pos.z = player->bodyPartsPos[0].z;
        heightDiff = player->bodyPartsPos[0].y - this->actor.posRot.pos.y;
        if (heightDiff < -2.0f) {
            this->actor.posRot.pos.y = player->bodyPartsPos[0].y + 2.0f;
        } else if (heightDiff > 2.0f) {
            this->actor.posRot.pos.y = player->bodyPartsPos[0].y - 2.0f;
        }
        Matrix_Translate(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, MTXMODE_NEW);
        Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, MTXMODE_APPLY);
        Matrix_RotateY(this->actor.shape.rot.y * (M_PI / 0x8000), MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_magic_dark.c", 553),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 170, 255, 255, (s32)(this->unk_14E * 0.6f) & 0xFF);
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 100, 255, 128);
        gSPDisplayList(POLY_XLU_DISP++, D_80B88A20);
        gSPDisplayList(POLY_XLU_DISP++,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, gameplayFrames * 2, gameplayFrames * -4, 32, 32, 1,
                                        0, gameplayFrames * -16, 64, 32));
        gSPDisplayList(POLY_XLU_DISP++, D_80B88AD0);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_magic_dark.c", 570);
}

void MagicDark_Draw(Actor* thisx, GlobalContext* globalCtx) {
    MagicDark* this = THIS;
    Vec3f sp78;
    Player* player = PLAYER;
    s32 pad;
    f32 sp6C = globalCtx->state.frames & 0x1F;

    if (this->unk_14C < 32) {
        sp78.x = (player->bodyPartsPos[12].x + player->bodyPartsPos[15].x) * 0.5f;
        sp78.y = (player->bodyPartsPos[12].y + player->bodyPartsPos[15].y) * 0.5f;
        sp78.z = (player->bodyPartsPos[12].z + player->bodyPartsPos[15].z) * 0.5f;
        if (this->unk_14C > 20) {
            sp78.y += (this->unk_14C - 20) * 1.4f;
        }
        this->unk_150 = sp78;
    } else if (this->unk_14C < 130) {
        sp78 = this->unk_150;
    } else {
        return;
    }

    sp78.x -=
        (this->actor.scale.x * 300.0f * Math_Sins(func_8005A9F4(ACTIVE_CAM)) * Math_Coss(func_8005A9CC(ACTIVE_CAM)));
    sp78.y -= (this->actor.scale.x * 300.0f * Math_Sins(func_8005A9CC(ACTIVE_CAM)));
    sp78.z -=
        (this->actor.scale.x * 300.0f * Math_Coss(func_8005A9F4(ACTIVE_CAM)) * Math_Coss(func_8005A9CC(ACTIVE_CAM)));

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_magic_dark.c", 619);

    func_80093D84(globalCtx->state.gfxCtx);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, 170, 255, 255, 255);
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 150, 255, 255);
    Matrix_Translate(sp78.x, sp78.y, sp78.z, MTXMODE_NEW);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, MTXMODE_APPLY);
    Matrix_Mult(&globalCtx->mf_11DA0, MTXMODE_APPLY);
    Matrix_Push();
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_magic_dark.c", 632),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    Matrix_RotateZ(sp6C * (M_PI / 32), MTXMODE_APPLY);
    gSPDisplayList(POLY_XLU_DISP++, D_04010130);
    Matrix_Pull();
    Matrix_RotateZ(-sp6C * (M_PI / 32), MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_magic_dark.c", 639),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_04010130);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_magic_dark.c", 643);
}
