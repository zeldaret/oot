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

void func_808B9F98(BgTokiHikari* this, PlayState* play);
void func_808BA018(Actor* thisx, PlayState* play);
void func_808BA204(BgTokiHikari* this, PlayState* play);
void func_808BA22C(BgTokiHikari* this, PlayState* play);
void func_808BA274(BgTokiHikari* this, PlayState* play);
void func_808BA2CC(Actor* thisx, PlayState* play);

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

static InitChainEntry D_808BAC70[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

void BgTokiHikari_Init(Actor* thisx, PlayState* play) {
    s16 temp_v0;
    BgTokiHikari* this = (BgTokiHikari*)thisx;

    temp_v0 = this->actor.params;
    switch (temp_v0) { /* irregular */
        case 0:
            Actor_ProcessInitChain(&this->actor, D_808BAC70);
            this->unk150 = func_808B9F98;
            return;
        case 1:
            if (!GET_EVENTCHKINF(EVENTCHKINF_OPENED_DOOR_OF_TIME)) {
                this->unk150 = func_808BA204;
                this->unk14C = 0.0f;
                return;
            }
            Actor_Kill(&this->actor);
            return;
    }
}

void BgTokiHikari_Destroy(Actor* thisx, PlayState* play) {
    BgTokiHikari* this = (BgTokiHikari*)thisx;
}

void func_808B9F98(BgTokiHikari* this, PlayState* play) {
}

void BgTokiHikari_Update(Actor* thisx, PlayState* play) {
    BgTokiHikari* this = (BgTokiHikari*)thisx;

    this->unk150(this, play);
}

void BgTokiHikari_Draw(Actor* thisx, PlayState* play) {
    switch (thisx->params) {
        case 0:
            func_808BA018(thisx, play);
            return;
        case 1:
            func_808BA2CC(thisx, play);
            return;
    }
}

void func_808BA018(Actor* thisx, PlayState* play) {
    PlayState* play2 = (PlayState*)play;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_toki_hikari.c", 0xF6);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_toki_hikari.c", 252);
    if (gSaveContext.save.linkAge == 0) {
        gSPDisplayList(POLY_OPA_DISP++, object_toki_objects_DL_008190);
    } else {
        gSPDisplayList(POLY_OPA_DISP++, object_toki_objects_DL_007E20);
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        gSPSegment(POLY_XLU_DISP++, 8, Gfx_TexScroll(play->state.gfxCtx, 0U, play2->gameplayFrames & 0x7F, 0x40, 0x20));
        gSPSegment(POLY_XLU_DISP++, 9, Gfx_TexScroll(play->state.gfxCtx, 0U, play2->gameplayFrames & 0x7F, 0x40, 0x20));
        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_toki_hikari.c", 278);
        gSPDisplayList(POLY_XLU_DISP++, object_toki_objects_DL_007EE0);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_toki_hikari.c", 0x11C);
}

void func_808BA204(BgTokiHikari* this, PlayState* play) {
    if (play->roomCtx.drawParams[1] != 0) {
        this->unk150 = func_808BA22C;
    }
}

void func_808BA22C(BgTokiHikari* this, PlayState* play) {
    f32 temp_fv0;

    temp_fv0 = this->unk14C;
    if (temp_fv0 < 1.0f) {
        this->unk14C = temp_fv0 + 0.05f;
        return;
    }
    this->unk14C = 1.0f;
    this->unk150 = func_808BA274;
}

void func_808BA274(BgTokiHikari* this, PlayState* play) {
    if (this->unk14C > 0.2f) {
        this->unk14C -= 0.025f;
        return;
    }
    this->unk14C = 0.0f;
    Actor_Kill(&this->actor);
}

void func_808BA2CC(Actor* thisx, PlayState* play) {
    BgTokiHikari* this = (BgTokiHikari*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_toki_hikari.c", 0x15E);
    Matrix_Translate(0.0f, 276.0f, 1122.0f, 0U);
    Matrix_Scale(0.32f, 0.32f, this->unk14C * 7.0f, 1U);
    Matrix_RotateZ(3.1415927f, 1U);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    Matrix_Push();
    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x80, (u8)(this->unk14C * 255.0f), (u8)(155.0f * this->unk14C) + 100,
                    (u8)(this->unk14C * 255.0f), (u8)(this->unk14C * 255.0f));
    gDPSetEnvColor(POLY_XLU_DISP++, (u8)(this->unk14C * 155.0f) + 100, (u8)(255.0f * this->unk14C), 0, 128);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_toki_hikari.c", 382);
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (play->gameplayFrames & 0x7F) * -2, 0U, 0x20, 0x40,
                                1, (play->gameplayFrames & 0x7F) * 4, 0U, 0x20, 0x40));
    gSPDisplayList(POLY_XLU_DISP++, object_toki_objects_DL_000880);
    Matrix_Pop();
    Matrix_Push();
    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x00, 255, 255, 255, (u8)(this->unk14C * 200.0f));
    gDPSetEnvColor(POLY_XLU_DISP++, (u8)(this->unk14C * 255.0f), (u8)(this->unk14C * 255.0f),
                   (u8)(this->unk14C * 255.0f), (u8)(200.0f * this->unk14C));
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_toki_hikari.c", 415);
    gSPDisplayList(POLY_XLU_DISP++, object_toki_objects_DL_0009C0);
    Matrix_Pop();
    Matrix_Push();
    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x00, 255, 255, 255, (u8)(this->unk14C * 200.0f));
    gDPSetEnvColor(POLY_XLU_DISP++, (u8)(this->unk14C * 255.0f), (u8)(this->unk14C * 255.0f),
                   (u8)(this->unk14C * 255.0f), (u8)(200.0f * this->unk14C));
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_toki_hikari.c", 437);
    gSPDisplayList(POLY_XLU_DISP++, &object_toki_objects_DL_0009C0[10]);
    Matrix_Pop();
    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_toki_hikari.c", 0x1BB);
}
