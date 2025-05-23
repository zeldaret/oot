/*
 * File: z_en_dy_extra.c
 * Overlay: ovl_En_Dy_Extra
 * Description: Spiral Beams (Great Fairy Fountains)
 */

#include "z_en_dy_extra.h"
#include "assets/objects/object_dy_obj/object_dy_obj.h"
#include "terminal.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void EnDyExtra_Init(Actor* thisx, PlayState* play);
void EnDyExtra_Destroy(Actor* thisx, PlayState* play);
void EnDyExtra_Update(Actor* thisx, PlayState* play);
void EnDyExtra_Draw(Actor* thisx, PlayState* play);

void EnDyExtra_WaitForTrigger(EnDyExtra* this, PlayState* play);
void EnDyExtra_FallAndKill(EnDyExtra* this, PlayState* play);

ActorProfile En_Dy_Extra_Profile = {
    /**/ ACTOR_EN_DY_EXTRA,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_DY_OBJ,
    /**/ sizeof(EnDyExtra),
    /**/ EnDyExtra_Init,
    /**/ EnDyExtra_Destroy,
    /**/ EnDyExtra_Update,
    /**/ EnDyExtra_Draw,
};

void EnDyExtra_Destroy(Actor* thisx, PlayState* play) {
}

void EnDyExtra_Init(Actor* thisx, PlayState* play) {
    EnDyExtra* this = (EnDyExtra*)thisx;

    PRINTF("\n\n");
    // "Big fairy effect"
    PRINTF(VT_FGCOL(YELLOW) "☆☆☆☆☆ 大妖精効果 ☆☆☆☆☆ %d\n" VT_RST, this->actor.params);
    this->type = this->actor.params;
    this->scale.x = 0.025f;
    this->scale.y = 0.039f;
    this->scale.z = 0.025f;
    this->unk_168 = this->actor.world.pos;
    this->actor.gravity = -0.2f;
    this->unk_158 = 1.0f;
    this->timer = 60;
    this->actionFunc = EnDyExtra_WaitForTrigger;
}

void EnDyExtra_WaitForTrigger(EnDyExtra* this, PlayState* play) {
    Math_ApproachF(&this->actor.gravity, 0.0f, 0.1f, 0.005f);
    if (this->actor.world.pos.y < -55.0f) {
        this->actor.velocity.y = 0.0f;
    }
    if (this->timer == 0 && this->trigger != 0) {
        this->timer = 200;
        this->actionFunc = EnDyExtra_FallAndKill;
    }
}

void EnDyExtra_FallAndKill(EnDyExtra* this, PlayState* play) {
    Math_ApproachF(&this->actor.gravity, 0.0f, 0.1f, 0.005f);
    if (this->timer == 0 || this->unk_158 < 0.02f) {
        Actor_Kill(&this->actor);
        return;
    }
    Math_ApproachZeroF(&this->unk_158, 0.03f, 0.05f);
    if (this->actor.world.pos.y < -55.0f) {
        this->actor.velocity.y = 0.0f;
    }
}

void EnDyExtra_Update(Actor* thisx, PlayState* play) {
    EnDyExtra* this = (EnDyExtra*)thisx;

    if (this->timer != 0) {
        this->timer--;
    }
    this->actor.scale.x = this->scale.x;
    this->actor.scale.y = this->scale.y;
    this->actor.scale.z = this->scale.z;
    Actor_PlaySfx(&this->actor, NA_SE_PL_SPIRAL_HEAL_BEAM - SFX_FLAG);
    this->actionFunc(this, play);
    Actor_MoveXZGravity(&this->actor);
}

void EnDyExtra_Draw(Actor* thisx, PlayState* play) {
    static Color_RGBA8 primColors[] = { { 255, 255, 170, 255 }, { 255, 255, 170, 255 } };
    static Color_RGBA8 envColors[] = { { 255, 100, 255, 255 }, { 100, 255, 255, 255 } };
    static u8 D_809FFC50[] = { 0x02, 0x01, 0x01, 0x02, 0x00, 0x00, 0x02, 0x01, 0x00, 0x02, 0x01, 0x00, 0x02, 0x01,
                               0x00, 0x02, 0x01, 0x00, 0x02, 0x01, 0x00, 0x02, 0x01, 0x00, 0x01, 0x02, 0x00 };
    EnDyExtra* this = (EnDyExtra*)thisx;
    GraphicsContext* gfxCtx = play->state.gfxCtx;
    s32 pad;
    Vtx* vertices = SEGMENTED_TO_VIRTUAL(gGreatFairySpiralBeamVtx);
    s32 i;
    u8 unk[3];

    unk[0] = 0.0f;
    unk[1] = (s8)(this->unk_158 * 240.0f);
    unk[2] = (s8)(this->unk_158 * 255.0f);

    for (i = 0; i < 27; i++) {
        if (D_809FFC50[i]) {
            vertices[i].v.cn[3] = unk[D_809FFC50[i]];
        }
    }

    OPEN_DISPS(gfxCtx, "../z_en_dy_extra.c", 294);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, play->state.frames * 2, 0, 0x20, 0x40, 1,
                                play->state.frames, play->state.frames * -8, 0x10, 0x10));
    gDPPipeSync(POLY_XLU_DISP++);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_dy_extra.c", 307);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0x80, primColors[this->type].r, primColors[this->type].g,
                    primColors[this->type].b, 255);
    gDPSetEnvColor(POLY_XLU_DISP++, envColors[this->type].r, envColors[this->type].g, envColors[this->type].b, 128);
    gSPDisplayList(POLY_XLU_DISP++, gGreatFairySpiralBeamDL);

    CLOSE_DISPS(gfxCtx, "../z_en_dy_extra.c", 325);
}
