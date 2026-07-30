/*
 * File: z_bg_hidan_rsekizou.c
 * Overlay: ovl_Bg_Hidan_Rsekizou
 * Description: Spinning Stone flamethrower
 */

#include "z_bg_hidan_rsekizou.h"

#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "play_state.h"

#include "assets/objects/object_hidan_objects/object_hidan_objects.h"

#define FLAGS 0

void BgHidanRsekizou_Init(Actor* thisx, PlayState* play);
void BgHidanRsekizou_Destroy(Actor* thisx, PlayState* play);
void BgHidanRsekizou_Update(Actor* thisx, PlayState* play);
void BgHidanRsekizou_Draw(Actor* thisx, PlayState* play);

ActorProfile Bg_Hidan_Rsekizou_Profile = {
    /**/ ACTOR_BG_HIDAN_RSEKIZOU,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_HIDAN_OBJECTS,
    /**/ sizeof(BgHidanRsekizou),
    /**/ BgHidanRsekizou_Init,
    /**/ BgHidanRsekizou_Destroy,
    /**/ BgHidanRsekizou_Update,
    /**/ BgHidanRsekizou_Draw,
};

static ColliderJntSphElementInit D_8088CC80[6] = {
    {
        { 0, { 0x20000000, 1, 4 }, { 0, 0, 0 }, 0x19, 0, 0 },
        { 1, { { 0, 0x1E, 0x28 }, 0x19 }, 0x64 },
    },
    {
        { 0, { 0x20000000, 1, 4 }, { 0, 0, 0 }, 0x19, 0, 0 },
        { 1, { { -0x23, 0x20, 0x4D }, 0x20 }, 0x64 },
    },
    {
        { 0, { 0x20000000, 1, 4 }, { 0, 0, 0 }, 0x19, 0, 0 },
        { 1, { { -0x50, 0x23, 0x82 }, 0x2A }, 0x64 },
    },
    {
        { 0, { 0x20000000, 1, 4 }, { 0, 0, 0 }, 0x19, 0, 0 },
        { 1, { { 0, 0x1E, -0x28 }, 0x19 }, 0x64 },
    },
    {
        { 0, { 0x20000000, 1, 4 }, { 0, 0, 0 }, 0x19, 0, 0 },
        { 1, { { 0x23, 0x20, -0x4D }, 0x20 }, 0x64 },
    },
    {
        { 0, { 0x20000000, 1, 4 }, { 0, 0, 0 }, 0x19, 0, 0 },
        { 1, { { 0x50, 0x23, -0x82 }, 0x2A }, 0x64 },
    },
};
ColliderJntSphInit D_8088CD58 = { { 0xA, 0x11, 0, 0, 0x20, 0 }, 6, D_8088CC80 };
InitChainEntry D_8088CD68[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 1500, ICHAIN_STOP),
};

static void* sFireballsTexs[] = {
    gFireTempleFireball0Tex, gFireTempleFireball1Tex, gFireTempleFireball2Tex, gFireTempleFireball3Tex,
    gFireTempleFireball4Tex, gFireTempleFireball5Tex, gFireTempleFireball6Tex, gFireTempleFireball7Tex,
};

void BgHidanRsekizou_Init(Actor* thisx, PlayState* play) {
    BgHidanRsekizou* this = (BgHidanRsekizou*)thisx;
    s32 i;
    s32 pad;
    CollisionHeader* sp30;

    sp30 = NULL;
    Actor_ProcessInitChain(&this->dyna.actor, D_8088CD68);
    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(&gFireTempleSpinningFlamethrowerCol, &sp30);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, sp30);
    Collider_InitJntSph(play, &this->unk168);
    Collider_SetJntSph(play, &this->unk168, &this->dyna.actor, &D_8088CD58, this->unk188);
    for (i = 0; i < 6; i++) {
        this->unk168.elements[i].dim.worldSphere.radius = this->unk168.elements[i].dim.modelSphere.radius;
    }
    this->unk166 = 0;
    this->unk164 = 0;
}

void BgHidanRsekizou_Destroy(Actor* thisx, PlayState* play) {
    BgHidanRsekizou* this = (BgHidanRsekizou*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    Collider_DestroyJntSph(play, &this->unk168);
}

void BgHidanRsekizou_Update(Actor* thisx, PlayState* play) {
    s32 pad[4];
    f32 sp24;
    s32 i;
    ColliderJntSphElement* temp_v0_2;
    f32 temp_fv0;
    BgHidanRsekizou* this = (BgHidanRsekizou*)thisx;

    this->unk166 = (this->unk166 + 1) % 8;
    if (this->unk164 != 0) {
        this->unk164--;
    }
    if (this->unk164 == 0) {
        this->unk164 = 3;
    }
    this->dyna.actor.shape.rot.y += 0x180;
    sp24 = Math_SinS(this->dyna.actor.shape.rot.y);
    temp_fv0 = Math_CosS(this->dyna.actor.shape.rot.y);
    for (i = 0; i < 6; i++) {
        temp_v0_2 = &this->unk168.elements[i];
        temp_v0_2->dim.worldSphere.center.x = this->dyna.actor.home.pos.x +
                                              (temp_fv0 * temp_v0_2->dim.modelSphere.center.x) +
                                              (sp24 * temp_v0_2->dim.modelSphere.center.z);
        temp_v0_2->dim.worldSphere.center.y = (s16)this->dyna.actor.home.pos.y + temp_v0_2->dim.modelSphere.center.y;
        temp_v0_2->dim.worldSphere.center.z = this->dyna.actor.home.pos.z -
                                              (sp24 * temp_v0_2->dim.modelSphere.center.x) +
                                              (temp_fv0 * temp_v0_2->dim.modelSphere.center.z);
    }
    CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk168.base);
    Actor_PlaySfx_Flagged(&this->dyna.actor, 0x2033U);
}

Gfx* func_8088C70C(GraphicsContext** arg0, BgHidanRsekizou* arg1, s16 arg2, MtxF* arg3, s32 arg4, Gfx* arg5) {
    s32 i;
    f32 sp58;
    f32 temp_fv1;
    f32 var_fa1;
    f32 var_fa0;

    i = (s32)(((arg1->unk166 + arg2) % 8) * 7 * 0.14285715f);
    gSPSegment(arg5++, 9, SEGMENTED_TO_VIRTUAL(sFireballsTexs[i]));
    arg2 = arg2 + 1;
    if (arg2 != 4) {
        var_fa1 = arg2 + ((3 - arg1->unk164) * 0.33333334f);
    } else {
        var_fa1 = arg2;
    }
    gDPSetPrimColor(arg5++, 0x00, 0x01, 255, 255, 0, 150);
    gDPSetEnvColor(arg5++, 255, 0, 0, 255);
    if (arg4 == 0) {
        sp58 = -Math_SinS((s16)(arg1->dyna.actor.shape.rot.y - (arg2 * 0x5DC)));
        var_fa0 = -Math_CosS((s16)(arg1->dyna.actor.shape.rot.y - (arg2 * 0x5DC)));
    } else {
        sp58 = Math_SinS((s16)(arg1->dyna.actor.shape.rot.y - (arg2 * 0x5DC)));
        var_fa0 = Math_CosS((s16)(arg1->dyna.actor.shape.rot.y - (arg2 * 0x5DC)));
    }
    arg3->mf[0][0] = arg3->mf[1][1] = arg3->mf[2][2] = (0.7f * var_fa1) + 0.5f;
    temp_fv1 = (((0.7f * var_fa1) + 0.5f) * 10.0f * var_fa1) + 20.0f;
    arg3->mf[3][0] = (temp_fv1 * sp58) + arg1->dyna.actor.world.pos.x;
    arg3->mf[3][1] = arg1->dyna.actor.world.pos.y + 30.0f + (0.70f * var_fa1);
    arg3->mf[3][2] = (temp_fv1 * var_fa0) + arg1->dyna.actor.world.pos.z;
    gSPMatrix(arg5++,
              Matrix_MtxFToMtx(MATRIX_CHECK_FLOATS(arg3, "../z_bg_hidan_rsekizou.c", 543), GRAPH_ALLOC(*arg0, 0x40U)),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(arg5++, gFireTempleFireballDL);
    return arg5;
}

void BgHidanRsekizou_Draw(Actor* thisx, PlayState* play) {
    BgHidanRsekizou* this = (BgHidanRsekizou*)thisx;
    s32 pad;
    s32 var_s0;
    MtxF sp5C;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_hidan_rsekizou.c", 564);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_hidan_rsekizou.c", 568);
    gSPDisplayList(POLY_OPA_DISP++, gFireTempleSpinningFlamethrowerDL);
    Matrix_MtxFCopy(&sp5C, &gIdentityMtxF);
    POLY_XLU_DISP = Gfx_SetupDL(POLY_XLU_DISP, SETUPDL_20);
    if ((s16)((Camera_GetCamDirYaw(play->cameraPtrs[play->activeCamId]) - this->dyna.actor.shape.rot.y) - 0x2E6C) >=
        0) {
        for (var_s0 = 3; var_s0 >= 0; var_s0--) {
            POLY_XLU_DISP = func_8088C70C(&play->state.gfxCtx, this, var_s0, &sp5C, 0, POLY_XLU_DISP);
        }
        for (var_s0 = 0; var_s0 < 4; var_s0++) {
            POLY_XLU_DISP = func_8088C70C(&play->state.gfxCtx, this, var_s0, &sp5C, 1, POLY_XLU_DISP);
        }
    } else {
        for (var_s0 = 3; var_s0 >= 0; var_s0--) {
            POLY_XLU_DISP = func_8088C70C(&play->state.gfxCtx, this, var_s0, &sp5C, 1, POLY_XLU_DISP);
        }
        for (var_s0 = 0; var_s0 < 4; var_s0++) {
            POLY_XLU_DISP = func_8088C70C(&play->state.gfxCtx, this, var_s0, &sp5C, 0, POLY_XLU_DISP);
        }
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_hidan_rsekizou.c", 600);
}
