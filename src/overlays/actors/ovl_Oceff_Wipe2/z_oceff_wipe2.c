/*
 * File: z_oceff_wipe2.c
 * Overlay: ovl_Oceff_Wipe2
 * Description: Epona's Song Effect
 */

#include "z_oceff_wipe2.h"
#include "terminal.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_UPDATE_DURING_OCARINA)

void OceffWipe2_Init(Actor* thisx, PlayState* play);
void OceffWipe2_Destroy(Actor* thisx, PlayState* play);
void OceffWipe2_Update(Actor* thisx, PlayState* play);
void OceffWipe2_Draw(Actor* thisx, PlayState* play);

ActorProfile Oceff_Wipe2_Profile = {
    /**/ ACTOR_OCEFF_WIPE2,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(OceffWipe2),
    /**/ OceffWipe2_Init,
    /**/ OceffWipe2_Destroy,
    /**/ OceffWipe2_Update,
    /**/ OceffWipe2_Draw,
};

void OceffWipe2_Init(Actor* thisx, PlayState* play) {
    OceffWipe2* this = (OceffWipe2*)thisx;

    Actor_SetScale(&this->actor, 0.1f);
    this->timer = 0;
    this->actor.world.pos = GET_ACTIVE_CAM(play)->eye;
    PRINTF(VT_FGCOL(CYAN) " WIPE2 arg_data = %d\n" VT_RST, this->actor.params);
}

void OceffWipe2_Destroy(Actor* thisx, PlayState* play) {
    OceffWipe2* this = (OceffWipe2*)thisx;
    Player* player = GET_PLAYER(play);

    Magic_Reset(play);
    if (gSaveContext.nayrusLoveTimer != 0) {
        player->stateFlags3 |= PLAYER_STATE3_RESTORE_NAYRUS_LOVE;
    }
}

void OceffWipe2_Update(Actor* thisx, PlayState* play) {
    OceffWipe2* this = (OceffWipe2*)thisx;

    this->actor.world.pos = GET_ACTIVE_CAM(play)->eye;
    if (this->timer < 100) {
        this->timer++;
    } else {
        Actor_Kill(&this->actor);
    }
}

#include "assets/overlays/ovl_Oceff_Wipe2/ovl_Oceff_Wipe2.c"

void OceffWipe2_Draw(Actor* thisx, PlayState* play) {
    u32 scroll = play->state.frames & 0xFF;
    OceffWipe2* this = (OceffWipe2*)thisx;
    f32 z;
    u8 alpha;
    s32 pad[2];
    Vec3f eye;
    Vtx* vtxPtr;
    Vec3f quakeOffset;

    eye = GET_ACTIVE_CAM(play)->eye;
    quakeOffset = Camera_GetQuakeOffset(GET_ACTIVE_CAM(play));
    if (this->timer < 32) {
        z = Math_SinS(this->timer << 9) * 1330;
    } else {
        z = 1330;
    }

    vtxPtr = sFrustumVtx;
    if (this->timer >= 80) {
        alpha = 12 * (100 - this->timer);
    } else {
        alpha = 255;
    }

    vtxPtr[1].v.cn[3] = vtxPtr[3].v.cn[3] = vtxPtr[5].v.cn[3] = vtxPtr[7].v.cn[3] = vtxPtr[9].v.cn[3] =
        vtxPtr[11].v.cn[3] = vtxPtr[13].v.cn[3] = vtxPtr[15].v.cn[3] = vtxPtr[16].v.cn[3] = vtxPtr[18].v.cn[3] =
            vtxPtr[20].v.cn[3] = alpha;

    OPEN_DISPS(play->state.gfxCtx, "../z_oceff_wipe2.c", 390);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    Matrix_Translate(eye.x + quakeOffset.x, eye.y + quakeOffset.y, eye.z + quakeOffset.z, MTXMODE_NEW);
    Matrix_Scale(0.1f, 0.1f, 0.1f, MTXMODE_APPLY);
    Matrix_ReplaceRotation(&play->billboardMtxF);
    Matrix_Translate(0.0f, 0.0f, -z, MTXMODE_APPLY);

    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_oceff_wipe2.c", 400);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 170, 255);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 100, 0, 128);
    gSPDisplayList(POLY_XLU_DISP++, sMaterialDL);
    gSPDisplayList(POLY_XLU_DISP++, Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, scroll * 6, scroll * (-6), 64,
                                                     64, 1, scroll * (-6), 0, 64, 64));
    gSPDisplayList(POLY_XLU_DISP++, sFrustumDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_oceff_wipe2.c", 417);
}
