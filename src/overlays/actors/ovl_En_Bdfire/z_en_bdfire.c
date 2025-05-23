/*
 * File: z_en_bdfire.c
 * Overlay: ovl_En_Bdfire
 * Description: King Dodongo's Fire Breath
 */

#include "z_en_bdfire.h"
#include "assets/objects/object_kingdodongo/object_kingdodongo.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void EnBdfire_Init(Actor* thisx, PlayState* play);
void EnBdfire_Destroy(Actor* thisx, PlayState* play);
void EnBdfire_Update(Actor* thisx, PlayState* play);
void EnBdfire_Draw(Actor* thisx, PlayState* play);

void EnBdfire_DrawFire(EnBdfire* this, PlayState* play);
void func_809BC2A4(EnBdfire* this, PlayState* play);
void func_809BC598(EnBdfire* this, PlayState* play);

ActorProfile En_Bdfire_Profile = {
    /**/ 0,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_KINGDODONGO,
    /**/ sizeof(EnBdfire),
    /**/ EnBdfire_Init,
    /**/ EnBdfire_Destroy,
    /**/ EnBdfire_Update,
    /**/ EnBdfire_Draw,
};

void EnBdfire_SetupAction(EnBdfire* this, EnBdfireActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnbdFire_SetupDraw(EnBdfire* this, EnBdfireDrawFunc drawFunc) {
    this->drawFunc = drawFunc;
}

void EnBdfire_Init(Actor* thisx, PlayState* play) {
    EnBdfire* this = (EnBdfire*)thisx;
    s32 pad;

    Actor_SetScale(&this->actor, 0.6f);
    EnbdFire_SetupDraw(this, EnBdfire_DrawFire);
    if (this->actor.params < 0) {
        EnBdfire_SetupAction(this, func_809BC2A4);
        this->actor.scale.x = 2.8f;
        this->unk_154 = 90;
        Lights_PointNoGlowSetInfo(&this->lightInfoNoGlow, this->actor.world.pos.x, this->actor.world.pos.y,
                                  this->actor.world.pos.z, 255, 255, 255, 300);
        this->lightNode = LightContext_InsertLight(play, &play->lightCtx, &this->lightInfoNoGlow);
    } else {
        EnBdfire_SetupAction(this, func_809BC598);
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 0.0f);
        this->actor.speed = 30.0f;
        this->unk_154 = (25 - (s32)(this->actor.params * 0.8f));
        if (this->unk_154 < 0) {
            this->unk_154 = 0;
        }
        this->unk_188 = 4.2000003f - (this->actor.params * 0.25f * 0.6f);

        if (this->unk_188 < 0.90000004f) {
            this->unk_188 = 0.90000004f;
        }
        this->unk_18C = 255.0f - (this->actor.params * 10.0f);
        if (this->unk_18C < 20.0f) {
            this->unk_18C = 20.0f;
        }
        this->unk_156 = (Rand_ZeroOne() * 8.0f);
    }
}

void EnBdfire_Destroy(Actor* thisx, PlayState* play) {
    EnBdfire* this = (EnBdfire*)thisx;

    if (this->actor.params < 0) {
        LightContext_RemoveLight(play, &play->lightCtx, this->lightNode);
    }
}

void func_809BC2A4(EnBdfire* this, PlayState* play) {
    BossDodongo* kingDodongo;
    s32 temp;

    kingDodongo = (BossDodongo*)this->actor.parent;
    this->actor.world.pos.x = kingDodongo->firePos.x;
    this->actor.world.pos.y = kingDodongo->firePos.y;
    this->actor.world.pos.z = kingDodongo->firePos.z;
    if (kingDodongo->unk_1E2 == 0) {
        Math_SmoothStepToF(&this->actor.scale.x, 0.0f, 1.0f, 0.6f, 0.0f);
        if (Math_SmoothStepToF(&this->unk_18C, 0.0f, 1.0f, 20.0f, 0.0f) == 0.0f) {
            Actor_Kill(&this->actor);
        }
    } else {
        if (this->unk_154 < 70) {
            Math_SmoothStepToF(&this->unk_18C, 128.0f, 0.1f, 1.5f, 0.0f);
            Math_SmoothStepToF(&this->unk_190, 255.0f, 1.0f, 3.8249998f, 0.0f);
            Math_SmoothStepToF(&this->unk_194, 100.0f, 1.0f, 1.5f, 0.0f);
        }
        if (this->unk_154 == 0) {
            temp = 0;
        } else {
            this->unk_154--;
            temp = this->unk_154;
        }
        if (temp == 0) {
            Math_SmoothStepToF(&this->actor.scale.x, 0.0f, 1.0f, 0.3f, 0.0f);
            Math_SmoothStepToF(&this->unk_190, 0.0f, 1.0f, 25.5f, 0.0f);
            Math_SmoothStepToF(&this->unk_194, 0.0f, 1.0f, 10.0f, 0.0f);
            if (Math_SmoothStepToF(&this->unk_18C, 0.0f, 1.0f, 10.0f, 0.0f) == 0.0f) {
                Actor_Kill(&this->actor);
            }
        }
        Actor_SetScale(&this->actor, this->actor.scale.x);
        Lights_PointSetColorAndRadius(&this->lightInfoNoGlow, this->unk_190, this->unk_194, 0, 300);
    }
}

void func_809BC598(EnBdfire* this, PlayState* play) {
    s16 quarterTurn;
    Player* player = GET_PLAYER(play);
    BossDodongo* bossDodongo;

    bossDodongo = ((BossDodongo*)this->actor.parent);
    this->unk_158 = bossDodongo->unk_1A2;
    quarterTurn = false;
    if (this->actor.params == 0) {
        Audio_PlaySfxGeneral(NA_SE_EN_DODO_K_FIRE - SFX_FLAG, &this->actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    }
    Math_SmoothStepToF(&this->actor.scale.x, this->unk_188, 0.3f, 0.5f, 0.0f);
    Actor_SetScale(&this->actor, this->actor.scale.x);
    if ((this->actor.world.pos.x < -1390.0f) && (this->actor.velocity.x < -10.0f)) {
        this->actor.world.pos.x = -1390.0f;
        quarterTurn = true;
    }
    if ((this->actor.world.pos.x > -390.0f) && (this->actor.velocity.x > 10.0f)) {
        this->actor.world.pos.x = -390.0f;
        quarterTurn = true;
    }
    if ((this->actor.world.pos.z > -2804.0f) && (this->actor.velocity.z > 10.0f)) {
        this->actor.world.pos.z = -2804.0f;
        quarterTurn = true;
    }
    if ((this->actor.world.pos.z < -3804.0f) && (this->actor.velocity.z < -10.0f)) {
        this->actor.world.pos.z = -3804.0f;
        quarterTurn = true;
    }
    if (quarterTurn) {
        if (this->unk_158 == 0) {
            this->actor.world.rot.y += 0x4000;
        } else {
            this->actor.world.rot.y -= 0x4000;
        }
    }
    if (DECR(this->unk_154) == 0) {
        Math_SmoothStepToF(&this->unk_18C, 0.0f, 1.0f, 10.0f, 0.0f);
        if (this->unk_18C < 10.0f) {
            Actor_Kill(&this->actor);
            return;
        }
    } else if (!player->bodyIsBurning) {
        f32 distToBurn = (this->actor.scale.x * 130.0f) / 4.2000003f;

        if (this->actor.xyzDistToPlayerSq < SQ(distToBurn)) {
            s16 i;

            for (i = 0; i < 18; i++) {
                player->bodyFlameTimers[i] = Rand_S16Offset(0, 200);
            }
            player->bodyIsBurning = true;
            Actor_SetPlayerKnockbackLarge(play, &this->actor, 20.0f, this->actor.world.rot.y, 0.0f, 8);
            PRINTF("POWER\n");
        }
    }
}

void EnBdfire_Update(Actor* thisx, PlayState* play) {
    EnBdfire* this = (EnBdfire*)thisx;

    this->unk_156++;
    this->actionFunc(this, play);
    Actor_MoveXZGravity(&this->actor);
}

void EnBdfire_DrawFire(EnBdfire* this, PlayState* play) {
    static void* D_809BCB10[] = {
        object_kingdodongo_Tex_0264E0, object_kingdodongo_Tex_0274E0, object_kingdodongo_Tex_0284E0,
        object_kingdodongo_Tex_0294E0, object_kingdodongo_Tex_02A4E0, object_kingdodongo_Tex_02B4E0,
        object_kingdodongo_Tex_02C4E0, object_kingdodongo_Tex_02D4E0,
    };
    s16 texIndex;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_bdfire.c", 612);
    texIndex = this->unk_156 & 7;
    Matrix_ReplaceRotation(&play->billboardMtxF);
    Gfx_SetupDL_60NoCDXlu(play->state.gfxCtx);
    POLY_XLU_DISP = Gfx_SetupDL_20NoCD(POLY_XLU_DISP);
    gDPSetCombineLERP(POLY_XLU_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL0,
                      ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, PRIMITIVE, ENVIRONMENT, TEXEL0,
                      ENVIRONMENT);
    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 100, (s8)this->unk_18C);
    gDPSetEnvColor(POLY_XLU_DISP++, 200, 0, 0, 0);
    gSPSegment(POLY_XLU_DISP++, 8, SEGMENTED_TO_VIRTUAL(D_809BCB10[texIndex]));
    Matrix_Translate(0.0f, 11.0f, 0.0f, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_bdfire.c", 647);
    gSPDisplayList(POLY_XLU_DISP++, object_kingdodongo_DL_01D950);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_bdfire.c", 651);
}

void EnBdfire_Draw(Actor* thisx, PlayState* play) {
    EnBdfire* this = (EnBdfire*)thisx;

    this->drawFunc(this, play);
}
