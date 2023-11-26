/*
 * File: z_end_title.c
 * Overlay: ovl_End_Title
 * Description: "The End" message
 */

#include "z_end_title.h"

#define FLAGS (ACTOR_FLAG_4 | ACTOR_FLAG_5)

void EndTitle_Init(Actor* thisx, PlayState* play);
void EndTitle_Destroy(Actor* thisx, PlayState* play);
void EndTitle_Update(Actor* thisx, PlayState* play);
void EndTitle_DrawFull(Actor* thisx, PlayState* play);
void EndTitle_DrawNintendoLogo(Actor* thisx, PlayState* play);

ActorInit End_Title_InitVars = {
    /**/ ACTOR_END_TITLE,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EndTitle),
    /**/ EndTitle_Init,
    /**/ EndTitle_Destroy,
    /**/ EndTitle_Update,
    /**/ EndTitle_DrawFull,
};

#include "assets/overlays/ovl_End_Title/ovl_End_Title.c"

void EndTitle_Init(Actor* thisx, PlayState* play) {
    EndTitle* this = (EndTitle*)thisx;

    this->endAlpha = 0;
    this->tlozAlpha = 0;
    this->ootAlpha = 0;
    if (this->actor.params == 1) {
        this->actor.draw = EndTitle_DrawNintendoLogo;
    }
}

void EndTitle_Destroy(Actor* thisx, PlayState* play) {
}

void EndTitle_Update(Actor* thisx, PlayState* play) {
}

// Used in the castle courtyard
void EndTitle_DrawFull(Actor* thisx, PlayState* play) {
    MtxF* mf;
    EndTitle* this = (EndTitle*)thisx;
    s32 csCurFrame = play->csCtx.curFrame;
    Player* player = GET_PLAYER(play);

    mf = &player->mf_9E0;

    OPEN_DISPS(play->state.gfxCtx, "../z_end_title.c", 403);

    // Draw the Triforce on Link's left hand
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    Matrix_Mult(mf, MTXMODE_NEW);
    Matrix_Translate(0.0f, 150.0f, 170.0f, MTXMODE_APPLY);
    Matrix_Scale(0.13f, 0.13f, 0.13f, MTXMODE_APPLY);
    Matrix_RotateX(BINANG_TO_RAD(0xBB8), MTXMODE_APPLY);
    Matrix_RotateY(0.0f, MTXMODE_APPLY);
    Matrix_RotateZ(0.0f, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_end_title.c", 412), G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, sTriforceDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_end_title.c", 417);

    OPEN_DISPS(play->state.gfxCtx, "../z_end_title.c", 419);

    // Draw title cards on the screen
    if ((csCurFrame > 890) && (this->endAlpha < 200)) {
        this->endAlpha += 7;
    }
    if ((csCurFrame > 810) && (this->tlozAlpha < 200)) {
        this->tlozAlpha += 15;
    }
    if ((csCurFrame > 850) && (this->ootAlpha < 200)) {
        this->ootAlpha += 15;
    }

    OVERLAY_DISP = Gfx_SetupDL_64(OVERLAY_DISP);
    gDPSetTextureLUT(OVERLAY_DISP++, G_TT_NONE);
    gDPSetEnvColor(OVERLAY_DISP++, 255, 120, 30, 0);
    gDPSetRenderMode(OVERLAY_DISP++, G_RM_PASS, G_RM_XLU_SURF2);
    gSPClearGeometryMode(OVERLAY_DISP++,
                         G_TEXTURE_ENABLE | G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR);
    gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0,
                      COMBINED, 0, 0, 0, COMBINED);
    gDPSetPrimColor(OVERLAY_DISP++, 0x00, 0x80, 0, 0, 0, this->endAlpha);
    gDPLoadTextureTile(OVERLAY_DISP++, sTheEndTex, G_IM_FMT_IA, G_IM_SIZ_8b, 80, 24, 0, 0, 80, 24, 0,
                       G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 0, 0, 0, 0);
    gSPTextureRectangle(OVERLAY_DISP++, 120 << 2, 90 << 2, 200 << 2, 113 << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);
    gDPPipeSync(OVERLAY_DISP++);
    gDPSetPrimColor(OVERLAY_DISP++, 0x00, 0x80, 0, 0, 0, this->tlozAlpha);
    gDPLoadTextureTile(OVERLAY_DISP++, sTheLegendOfZeldaTex, G_IM_FMT_IA, G_IM_SIZ_8b, 120, 24, 0, 0, 120, 24, 0,
                       G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 0, 0, 0, 0);
    gSPTextureRectangle(OVERLAY_DISP++, 100 << 2, 160 << 2, 220 << 2, 183 << 2, G_TX_RENDERTILE, 0, 0, 1 << 10,
                        1 << 10);
    gDPPipeSync(OVERLAY_DISP++);
    gDPSetPrimColor(OVERLAY_DISP++, 0x00, 0x80, 0, 0, 0, this->ootAlpha);
    gDPLoadTextureTile(OVERLAY_DISP++, sOcarinaOfTimeTex, G_IM_FMT_IA, G_IM_SIZ_8b, 112, 16, 0, 0, 112, 16, 0,
                       G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 0, 0, 0, 0);
    gSPTextureRectangle(OVERLAY_DISP++, 104 << 2, 177 << 2, 216 << 2, 192 << 2, G_TX_RENDERTILE, 0, 0, 1 << 10,
                        1 << 10);

    CLOSE_DISPS(play->state.gfxCtx, "../z_end_title.c", 515);
}

// Used in the Temple of Time
void EndTitle_DrawNintendoLogo(Actor* thisx, PlayState* play) {
    EndTitle* this = (EndTitle*)thisx;
    s32 pad;
    s32 csCurFrame = play->csCtx.curFrame;

    if ((csCurFrame >= 1101) && (this->endAlpha < 255)) {
        this->endAlpha += 3;
    }

    OPEN_DISPS(play->state.gfxCtx, "../z_end_title.c", 594);

    OVERLAY_DISP = Gfx_SetupDL_64(OVERLAY_DISP);
    gDPSetPrimColor(OVERLAY_DISP++, 0, 0x80, 0, 0, 0, this->endAlpha);
    gSPDisplayList(OVERLAY_DISP++, sPresentedByNintendoDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_end_title.c", 600);
}
