/*
 * File: z_oceff_wipe3.c
 * Overlay: ovl_Oceff_Wipe3
 * Description: Saria's Song Effect
 */

#include "z_oceff_wipe3.h"
#include "terminal.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_UPDATE_DURING_OCARINA)

void OceffWipe3_Init(Actor* thisx, PlayState* play);
void OceffWipe3_Destroy(Actor* thisx, PlayState* play);
void OceffWipe3_Update(Actor* thisx, PlayState* play);
void OceffWipe3_Draw(Actor* thisx, PlayState* play);

ActorProfile Oceff_Wipe3_Profile = {
    /**/ ACTOR_OCEFF_WIPE3,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(OceffWipe3),
    /**/ OceffWipe3_Init,
    /**/ OceffWipe3_Destroy,
    /**/ OceffWipe3_Update,
    /**/ OceffWipe3_Draw,
};

#include "assets/overlays/ovl_Oceff_Wipe3/ovl_Oceff_Wipe3.c"

void OceffWipe3_Init(Actor* thisx, PlayState* play) {
    OceffWipe3* this = (OceffWipe3*)thisx;

    Actor_SetScale(&this->actor, 0.1f);
    this->counter = 0;
    this->actor.world.pos = GET_ACTIVE_CAM(play)->eye;
    // it's actually WIPE3...
    PRINTF(VT_FGCOL(CYAN) " WIPE2 arg_data = %d\n" VT_RST, this->actor.params);
}

void OceffWipe3_Destroy(Actor* thisx, PlayState* play) {
    OceffWipe3* this = (OceffWipe3*)thisx;
    Player* player = GET_PLAYER(play);

    Magic_Reset(play);
    if (gSaveContext.nayrusLoveTimer != 0) {
        player->stateFlags3 |= PLAYER_STATE3_RESTORE_NAYRUS_LOVE;
    }
}

void OceffWipe3_Update(Actor* thisx, PlayState* play) {
    OceffWipe3* this = (OceffWipe3*)thisx;

    this->actor.world.pos = GET_ACTIVE_CAM(play)->eye;
    if (this->counter < 100) {
        this->counter++;
    } else {
        Actor_Kill(&this->actor);
    }
}

void OceffWipe3_Draw(Actor* thisx, PlayState* play) {
    u32 scroll = play->state.frames & 0xFFF;
    OceffWipe3* this = (OceffWipe3*)thisx;
    f32 z;
    u8 alpha;
    s32 pad[2];
    Vec3f eye;
    Vtx* vtxPtr;
    Vec3f quakeOffset;

    eye = GET_ACTIVE_CAM(play)->eye;
    quakeOffset = Camera_GetQuakeOffset(GET_ACTIVE_CAM(play));
    if (this->counter < 32) {
        z = Math_SinS(this->counter << 9) * 1330;
    } else {
        z = 1330;
    }

    vtxPtr = sFrustumVtx;
    if (this->counter >= 80) {
        alpha = 12 * (100 - this->counter);
    } else {
        alpha = 255;
    }

    vtxPtr[1].v.cn[3] = vtxPtr[3].v.cn[3] = vtxPtr[5].v.cn[3] = vtxPtr[7].v.cn[3] = vtxPtr[9].v.cn[3] =
        vtxPtr[11].v.cn[3] = vtxPtr[13].v.cn[3] = vtxPtr[15].v.cn[3] = vtxPtr[17].v.cn[3] = vtxPtr[19].v.cn[3] =
            vtxPtr[21].v.cn[3] = alpha;

    OPEN_DISPS(play->state.gfxCtx, "../z_oceff_wipe3.c", 343);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    Matrix_Translate(eye.x + quakeOffset.x, eye.y + quakeOffset.y, eye.z + quakeOffset.z, MTXMODE_NEW);
    Matrix_Scale(0.1f, 0.1f, 0.1f, MTXMODE_APPLY);
    Matrix_ReplaceRotation(&play->billboardMtxF);
    Matrix_Translate(0.0f, 0.0f, -z, MTXMODE_APPLY);

    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_oceff_wipe3.c", 353);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 170, 255);
    gDPSetEnvColor(POLY_XLU_DISP++, 100, 200, 0, 128);
    gSPDisplayList(POLY_XLU_DISP++, sMaterialDL);
    gSPDisplayList(POLY_XLU_DISP++, Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, scroll * 12, scroll * (-12),
                                                     64, 64, 1, scroll * 8, scroll * (-8), 64, 64));
    gSPDisplayList(POLY_XLU_DISP++, sFrustumDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_oceff_wipe3.c", 370);
}
