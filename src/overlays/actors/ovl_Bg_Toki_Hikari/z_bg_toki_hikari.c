#include "z_bg_toki_hikari.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "sys_matrix.h"
#include "play_state.h"
#include "save.h"

#include "assets/objects/object_toki_objects/object_toki_objects.h"

#define FLAGS ACTOR_FLAG_DRAW_CULLING_DISABLED

void BgTokiHikari_Init(Actor* thisx, PlayState* play);
void BgTokiHikari_Destroy(Actor* thisx, PlayState* play);
void BgTokiHikari_Update(Actor* thisx, PlayState* play);
void BgTokiHikari_Draw(Actor* thisx, PlayState* play);

void BgTokiHikari_WindowsAndLight_DoNothing(BgTokiHikari* this, PlayState* play);
void BgTokiHikari_WindowsAndLight_Draw(Actor* thisx, PlayState* play);
void BgTokiHikari_TriforceFlash_Wait(BgTokiHikari* this, PlayState* play);
void BgTokiHikari_TriforceFlash_Brighten(BgTokiHikari* this, PlayState* play);
void BgTokiHikari_TriforceFlash_FadeAway(BgTokiHikari* this, PlayState* play);
void BgTokiHikari_TriforceFlash_Draw(Actor* thisx, PlayState* play);

ActorProfile Bg_Toki_Hikari_Profile = {
    /**/ ACTOR_BG_TOKI_HIKARI,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_TOKI_OBJECTS,
    /**/ sizeof(BgTokiHikari),
    /**/ BgTokiHikari_Init,
    /**/ BgTokiHikari_Destroy,
    /**/ BgTokiHikari_Update,
    /**/ BgTokiHikari_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

void BgTokiHikari_Init(Actor* thisx, PlayState* play) {
    BgTokiHikari* this = (BgTokiHikari*)thisx;

    switch (this->actor.params) {
        case BG_TOKI_HIKARI_TYPE_WINDOWS_AND_LIGHT:
            Actor_ProcessInitChain(&this->actor, sInitChain);
            this->actionFunc = BgTokiHikari_WindowsAndLight_DoNothing;
            break;

        case BG_TOKI_HIKARI_TYPE_TRIFORCE_FLASH:
            if (!GET_EVENTCHKINF(EVENTCHKINF_OPENED_DOOR_OF_TIME)) {
                this->actionFunc = BgTokiHikari_TriforceFlash_Wait;
                this->triforceFlashIntensity = 0.0f;
            } else {
                Actor_Kill(&this->actor);
            }
            break;
    }
}

void BgTokiHikari_Destroy(Actor* thisx, PlayState* play) {
    BgTokiHikari* this = (BgTokiHikari*)thisx;
}

void BgTokiHikari_WindowsAndLight_DoNothing(BgTokiHikari* this, PlayState* play) {
}

void BgTokiHikari_Update(Actor* thisx, PlayState* play) {
    BgTokiHikari* this = (BgTokiHikari*)thisx;

    this->actionFunc(this, play);
}

void BgTokiHikari_Draw(Actor* thisx, PlayState* play) {
    switch (thisx->params) {
        case BG_TOKI_HIKARI_TYPE_WINDOWS_AND_LIGHT:
            BgTokiHikari_WindowsAndLight_Draw(thisx, play);
            return;

        case BG_TOKI_HIKARI_TYPE_TRIFORCE_FLASH:
            BgTokiHikari_TriforceFlash_Draw(thisx, play);
            return;
    }
}

void BgTokiHikari_WindowsAndLight_Draw(Actor* thisx, PlayState* play) {
    PlayState* play2 = play;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_toki_hikari.c", 0xF6);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_toki_hikari.c", 252);

    if (LINK_IS_ADULT) {
        gSPDisplayList(POLY_OPA_DISP++, object_toki_objects_DL_008190);
    } else {
        gSPDisplayList(POLY_OPA_DISP++, object_toki_objects_DL_007E20);

        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gSPSegment(POLY_XLU_DISP++, 8, Gfx_TexScroll(play->state.gfxCtx, 0, play2->gameplayFrames & 0x7F, 64, 32));
        gSPSegment(POLY_XLU_DISP++, 9, Gfx_TexScroll(play->state.gfxCtx, 0, play2->gameplayFrames & 0x7F, 64, 32));
        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_toki_hikari.c", 278);
        gSPDisplayList(POLY_XLU_DISP++, object_toki_objects_DL_007EE0);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_toki_hikari.c", 0x11C);
}

void BgTokiHikari_TriforceFlash_Wait(BgTokiHikari* this, PlayState* play) {
    if (play->roomCtx.drawParams[1] != 0) {
        this->actionFunc = BgTokiHikari_TriforceFlash_Brighten;
    }
}

void BgTokiHikari_TriforceFlash_Brighten(BgTokiHikari* this, PlayState* play) {
    if (this->triforceFlashIntensity < 1.0f) {
        this->triforceFlashIntensity += 0.05f;
    } else {
        this->triforceFlashIntensity = 1.0f;
        this->actionFunc = BgTokiHikari_TriforceFlash_FadeAway;
    }
}

void BgTokiHikari_TriforceFlash_FadeAway(BgTokiHikari* this, PlayState* play) {
    if (this->triforceFlashIntensity > 0.2f) {
        this->triforceFlashIntensity -= 0.025f;
    } else {
        this->triforceFlashIntensity = 0.0f;
        Actor_Kill(&this->actor);
    }
}

void BgTokiHikari_TriforceFlash_Draw(Actor* thisx, PlayState* play) {
    BgTokiHikari* this = (BgTokiHikari*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_toki_hikari.c", 0x15E);

    Matrix_Translate(0.0f, 276.0f, 1122.0f, MTXMODE_NEW);
    Matrix_Scale(0.32f, 0.32f, this->triforceFlashIntensity * 7.0f, MTXMODE_APPLY);
    Matrix_RotateZ(M_PI, MTXMODE_APPLY);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    Matrix_Push();
    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, (u8)(this->triforceFlashIntensity * 255.0f),
                    (u8)(155.0f * this->triforceFlashIntensity) + 100, (u8)(this->triforceFlashIntensity * 255.0f),
                    (u8)(this->triforceFlashIntensity * 255.0f));
    gDPSetEnvColor(POLY_XLU_DISP++, (u8)(this->triforceFlashIntensity * 155.0f) + 100,
                   (u8)(255.0f * this->triforceFlashIntensity), 0, 128);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_toki_hikari.c", 382);
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (play->gameplayFrames & 0x7F) * -2, 0, 32, 64, 1,
                                (play->gameplayFrames & 0x7F) * 4, 0, 32, 64));
    gSPDisplayList(POLY_XLU_DISP++, object_toki_objects_DL_000880);
    Matrix_Pop();

    Matrix_Push();
    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x00, 255, 255, 255, (u8)(this->triforceFlashIntensity * 200.0f));
    gDPSetEnvColor(POLY_XLU_DISP++, (u8)(this->triforceFlashIntensity * 255.0f),
                   (u8)(this->triforceFlashIntensity * 255.0f), (u8)(this->triforceFlashIntensity * 255.0f),
                   (u8)(200.0f * this->triforceFlashIntensity));
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_toki_hikari.c", 415);
    gSPDisplayList(POLY_XLU_DISP++, object_toki_objects_DL_0009C0);
    Matrix_Pop();

    Matrix_Push();
    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x00, 255, 255, 255, (u8)(this->triforceFlashIntensity * 200.0f));
    gDPSetEnvColor(POLY_XLU_DISP++, (u8)(this->triforceFlashIntensity * 255.0f),
                   (u8)(this->triforceFlashIntensity * 255.0f), (u8)(this->triforceFlashIntensity * 255.0f),
                   (u8)(200.0f * this->triforceFlashIntensity));
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_toki_hikari.c", 437);
    gSPDisplayList(POLY_XLU_DISP++, &object_toki_objects_DL_0009C0[10]);
    Matrix_Pop();

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_toki_hikari.c", 0x1BB);
}
