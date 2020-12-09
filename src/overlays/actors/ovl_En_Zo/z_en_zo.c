/*
 * File: z_en_zo.c
 * Overlay: ovl_En_Zo
 * Description: Zora
 */

#include "z_en_zo.h"

#define FLAGS 0x00000009

#define THIS ((EnZo*)thisx)

void EnZo_Init(Actor* thisx, GlobalContext* globalCtx);
void EnZo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnZo_Update(Actor* thisx, GlobalContext* globalCtx);
void EnZo_Draw(Actor* thisx, GlobalContext* globalCtx);

// Effects
void EnZo_Ripple(EnZo *this, Vec3f *pos, f32 scale, f32 targetScale, u8 alpha);
void EnZo_Bubble(EnZo *this, Vec3f *pos);
void EnZo_Splash(EnZo *this, Vec3f *pos, Vec3f *vel, f32 scale);

void EnZo_Ripple_Fade(EnZo *this);
void EnZo_Bubble_CreateRipple(EnZo *this);
void EnZo_Splash_CreateRipple(EnZo *this);

void EnZo_DrawRipples(EnZo *this, GlobalContext *globalCtx);
void EnZo_DrawBubbles(EnZo *this, GlobalContext *globalCtx);
void EnZo_DrawSplashes(EnZo *this, GlobalContext *globalCtx);

void EnZo_TreadWater_Ripples(EnZo *this, f32 scale, f32 targetScale, u8 alpha);
void EnZo_SpawnSplashes(EnZo *this);

// Text
u16 func_80B61024(GlobalContext *globalCtx, Actor *thisx);
s16 func_80B61298(GlobalContext *globalCtx, Actor *thisx);

// Actions
void EnZo_Blink(EnZo *this);
void EnZo_Dialog(EnZo *this, GlobalContext *globalCtx);
s32 EnZo_PlayerInProximity(EnZo *this, GlobalContext *globalCtx);
void EnZo_SetAnimation(EnZo *this);
void EnZo_Standing(EnZo *this, GlobalContext *globalCtx);
void EnZo_Submerged(EnZo *this, GlobalContext *globalCtx);
void EnZo_Surface(EnZo *this, GlobalContext *globalCtx);
void EnZo_TreadWater(EnZo *this, GlobalContext *globalCtx);
void EnZo_Dive(EnZo *this, GlobalContext *globalCtx);

s32 EnZo_OverrideLimbDraw(struct GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, void* thisx, Gfx **gfx);
void EnZo_PostLimbDraw(struct GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3s *rot, void* thisx, Gfx **gfx);

extern Gfx D_060022F0[];
extern Gfx D_06002350[];
extern Gfx D_060024A0[];
extern Gfx D_06002510[];
extern Gfx D_0600BFC0[];
extern Gfx D_0600C028[];
extern FlexSkeletonHeader D_0600BFA8;

extern AnimationHeader D_06002FE8;
extern AnimationHeader D_06002F10;
extern AnimationHeader D_0600219C;
extern AnimationHeader D_06000598;
extern AnimationHeader D_06000D48;

// Surface Ripples
void EnZo_Ripple(EnZo *this, Vec3f *pos, f32 scale, f32 targetScale, u8 alpha) {
    EnZoEffect *effect;
    Vec3f vec = {0};
    s16 i;

    effect = this->effects;
    for (i = 0; i < ARRAY_COUNT(this->effects); i++) {
        if (effect->type == 0) {
            effect->type = 1;
            effect->pos = *pos;
            effect->scale = scale;
            effect->targetScale = targetScale;
            effect->color.a = alpha;
            return;
        }
        effect++;
    }
}


// Bubbles
void EnZo_Bubble(EnZo *this, Vec3f *pos) {
    EnZoEffect *effect;
    Vec3f vec = {0};
    Vec3f vel = {0, 1, 0};
    s16 i;
    f32 waterSurface;

    effect = this->effects;
    for (i = 0; i < ARRAY_COUNT(this->effects); i++) {
        if (effect->type == 0) {
            waterSurface = this->actor.posRot.pos.y + this->actor.waterY;
            if (!(waterSurface <= pos->y)) {
                effect->type = 3;
                effect->pos = *pos;
                effect->vec = *pos;
                effect->vel = vel;
                effect->scale = ((Math_Rand_ZeroOne() - 0.5f) * 0.02f) + 0.12f;
                break;
            }
        } else {
        }
        effect++;
    }
}

// Splashes
void EnZo_Splash(EnZo *this, Vec3f *pos, Vec3f *vel, f32 scale) {
    EnZoEffect *effect;
    Vec3f accel = {0, -1, 0};
    s16 i;
    effect = this->effects;
    for (i = 0; i < ARRAY_COUNT(this->effects); i++) {
        if (effect->type != 2) {
            effect->type = 2;
            effect->pos = *pos;
            effect->vec = accel;
            effect->vel = *vel;
            effect->color.a = (Math_Rand_ZeroOne() * 100.0f) + 100.0f;
            effect->scale = scale;
            break;
        } else {
            effect++;
        }
    }
}

void EnZo_Ripple_Fade(EnZo *this) {
    EnZoEffect *effect = this->effects;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(this->effects); i++) {
        if (effect->type == 1) {
            Math_SmoothScaleMaxF(&effect->scale, effect->targetScale, 0.2f, 0.8f);
            if (effect->color.a > 20) {
                effect->color.a -= 20;
            } else {
                effect->color.a = 0;
            }

            if (effect->color.a == 0) {
                effect->type = 0;
            }
        }
        effect++;
    }
}

// Bubbles turn into ripples when they reach the surface
void EnZo_Bubble_CreateRipple(EnZo *this) {
    EnZoEffect *effect;
    f32 waterSurface;
    s16 i;

    effect = this->effects;
    for (i = 0; i < ARRAY_COUNT(this->effects); i++) {
        if (effect->type == 3) {
            effect->pos.x = ((Math_Rand_ZeroOne() * 0.5f) - 0.25f) + effect->vec.x;
            effect->pos.z = ((Math_Rand_ZeroOne() * 0.5f) - 0.25f) + effect->vec.z;
            effect->pos.y += effect->vel.y;

            waterSurface = this->actor.posRot.pos.y + this->actor.waterY;
            if (waterSurface <= effect->pos.y) {
                effect->type = 0;
                effect->pos.y = waterSurface;
                EnZo_Ripple(this, &effect->pos, 0.06f, 0.12f, 0xC8);
            }
        }
        effect++;
    }
}

// Splash particles turn into ripples when they hit the surface
void EnZo_Splash_CreateRipple(EnZo *this) {
    EnZoEffect *effect;
    f32 waterSurface;
    s16 i;

    effect = this->effects;
    for (i = 0; i < ARRAY_COUNT(this->effects); i++) {
        if (effect->type == 2) {
            effect->pos.x += effect->vel.x;
            effect->pos.y += effect->vel.y;
            effect->pos.z += effect->vel.z;

            if (effect->vel.y >= -20.0f){
                effect->vel.y += effect->vec.y;
            } else {
                effect->vel.y = -20.0f;
                effect->vec.y = 0.0f;
            }
            waterSurface = this->actor.posRot.pos.y + this->actor.waterY;
            if (effect->pos.y < waterSurface) {
                effect->type = 0;
                effect->pos.y = waterSurface;
                EnZo_Ripple(this, &effect->pos, 0.06f, 0.12f, 0xC8);
            }
        }
        effect++;
    }
}

void EnZo_DrawRipples(EnZo *this, GlobalContext *globalCtx) {
    EnZoEffect *effect;
    s16 i;
    u8 setup;

    effect = this->effects;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_zo_eff.c", 0xD9);
    setup = false;
    func_80093D84(globalCtx->state.gfxCtx);
    for (i = 0; i < ARRAY_COUNT(this->effects); i++) {
        if (effect->type == 1) {
            if (!setup) {
                do {
                    gDPPipeSync(POLY_XLU_DISP++);
                    gSPDisplayList(POLY_XLU_DISP++, D_0600BFC0);
                    gDPSetEnvColor(POLY_XLU_DISP++, 0x9b, 0x9b, 0x9b, 0x00);
                } while(0);
                setup = true;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0xff, 0xff, 0xff, effect->color.a);
            Matrix_Translate(effect->pos.x, effect->pos.y, effect->pos.z, MTXMODE_NEW);
            Matrix_Scale(effect->scale, 1.0f, effect->scale, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_zo_eff.c", 0xF2), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_0600C028);
        }
        effect++;
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_zo_eff.c", 0xF8);
}

void EnZo_DrawBubbles(EnZo *this, GlobalContext *globalCtx) {
    EnZoEffect *effect;
    s16 i;
    u8 setup;

    effect = this->effects;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_zo_eff.c", 0x104);
    setup = false;
    func_80093D84(globalCtx->state.gfxCtx);
    for (i = 0; i < ARRAY_COUNT(this->effects); i++) {
        if (effect->type == 3) {
            if (!setup) {
                do {
                    gSPDisplayList(POLY_XLU_DISP++, D_060022F0);
                    gDPPipeSync(POLY_XLU_DISP++);
                    gDPSetEnvColor(POLY_XLU_DISP++, 0x96, 0x96, 0x96, 0x00);
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0xff, 0xff, 0xff, 0xff);
                } while(0);

                setup = true;
            }
            Matrix_Translate(effect->pos.x, effect->pos.y, effect->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(effect->scale, effect->scale, 1.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_zo_eff.c", 0x119), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, D_06002350);

        }
        effect++;
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_zo_eff.c", 0x11E);
}

void EnZo_DrawSplashes(EnZo *this, GlobalContext *globalCtx) {
    EnZoEffect *effect;
    s16 i;
    u8 setup;

    effect = this->effects;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_zo_eff.c", 0x12A);
    setup = false;
    func_80093D84(globalCtx->state.gfxCtx);
    for (i = 0; i < ARRAY_COUNT(this->effects); i++) {
        if (effect->type == 2) {
            if (!setup) {
                do {
                    gSPDisplayList(POLY_XLU_DISP++, D_060024A0);
                    gDPPipeSync(POLY_XLU_DISP++);
                    gDPSetEnvColor(POLY_XLU_DISP++, 0xC8, 0xC8, 0xC8, 0x00);
                } while(0);
                setup = true;
            }
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0xB4, 0xB4, 0xB4, effect->color.a);

            Matrix_Translate(effect->pos.x, effect->pos.y, effect->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(effect->scale, effect->scale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_zo_eff.c", 0x145), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, D_06002510);
        }
        effect++;
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_zo_eff.c", 0x14B);
}

void EnZo_TreadWater_Ripples(EnZo *this, f32 scale, f32 targetScale, u8 alpha) {
    Vec3f pos = {0};

    pos.x = this->actor.posRot.pos.x;
    pos.y = this->actor.posRot.pos.y + this->actor.waterY;
    pos.z = this->actor.posRot.pos.z;
    EnZo_Ripple(this, &pos, scale, targetScale, alpha);
}

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER, },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 0x1A, 0x40, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInit = {
    0x00, 0x0000, 0x0000, 0x0000, 0xFF,
};

const ActorInit En_Zo_InitVars = {
    ACTOR_EN_ZO,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_ZO,
    sizeof(EnZo),
    (ActorFunc)EnZo_Init,
    (ActorFunc)EnZo_Destroy,
    (ActorFunc)EnZo_Update,
    (ActorFunc)EnZo_Draw,
};

static struct_80034EC0_Entry sAnimations[] = {
    { &D_06002FE8, 1.0f, 0.0f, -1.0f, 0, -8.0f, },
    { &D_06002FE8, 1.0f, 0.0f, -1.0f, 0,  0.0f, },
    { &D_06002F10, 0.0f, 1.0f,  1.0f, 2,  0.0f, },
    { &D_06002F10, 1.0f, 1.0f, -1.0f, 0, -8.0f, },
    { &D_06002F10, 1.0f, 8.0f, -1.0f, 0, -8.0f, },
    { &D_0600219C, 1.0f, 0.0f, -1.0f, 0, -8.0f, },
    { &D_06000598, 1.0f, 0.0f, -1.0f, 0, -8.0f, },
    { &D_06000D48, 1.0f, 0.0f, -1.0f, 0, -8.0f, },
};

// Splashes
void EnZo_SpawnSplashes(EnZo *this) {
    Vec3f pos;
    Vec3f vel;
    s32 i;

    // Convert 20 particles into splashes (all of them since there are only 15)
    for (i = 0; i < 20; i++) {
        f32 speed = (Math_Rand_ZeroOne() * 1.5f) + 0.5f;
        f32 angle = Math_Rand_ZeroOne() * 6.28f; // ~pi * 2

        vel.y = (Math_Rand_ZeroOne() * 3.0f) + 3.0f;

        vel.x = sinf(angle) * speed;
        vel.z = cosf(angle) * speed;

        pos = this->actor.posRot.pos;
        pos.x += vel.x * 6.0f;
        pos.z += vel.z * 6.0f;
        pos.y += this->actor.waterY;
        EnZo_Splash(this, &pos, &vel, 0.08f);
    }
}

u16 func_80B61024(GlobalContext *globalCtx, Actor *thisx) {
    u16 textId;

    textId = Text_GetFaceReaction(globalCtx, 0x1DU);
    if (textId != 0) {
        return textId;
    }

    switch (thisx->params & 0x3F) {
        case 8:
            if (gSaveContext.eventChkInf[3] & 1) {
                return 0x402A;
            }
            break;

        case 6:
            return 0x4020;

        case 7:
            return 0x4021;

        case 0:
            if (gBitFlags[20] & gSaveContext.inventory.questItems) {
                return 0x402D;
            }
            if (gSaveContext.eventChkInf[3] & 1) {
                return 0x4007;
            }
            break;

        case 1:
            if (gBitFlags[20] & gSaveContext.inventory.questItems) {
                return 0x402E;
            }

            if (gSaveContext.eventChkInf[3] & 1) {
                return (gSaveContext.infTable[18] & 0x10) ? 0x4009 : 0x4008;
            }
            break;

        case 2:
            if (gBitFlags[20] & gSaveContext.inventory.questItems) {
                return 0x402D;
            }
            if (gSaveContext.eventChkInf[3] & 2) {
                return (gSaveContext.infTable[18] & 0x200) ? 0x400B : 0x402f;
            }
            if (gSaveContext.eventChkInf[3] & 1) {
                return 0x400A;
            }
            break;

        case 3:
            if (gBitFlags[20] & gSaveContext.inventory.questItems) {
                return 0x402E;
            }
            if (gSaveContext.eventChkInf[3] & 1) {
                return 0x400C;
            }
            break;

        case 4:
            if (gBitFlags[20] & gSaveContext.inventory.questItems) {
                return 0x402D;
            }

            if (gSaveContext.eventChkInf[3] & 8) {
                return 0x4010;
            }
            if (gSaveContext.eventChkInf[3] & 1) {
                return 0x400F;
            }
            break;

        case 5:
            if (gBitFlags[20] & gSaveContext.inventory.questItems) {
                return 0x402E;
            }
            if (gSaveContext.eventChkInf[3] & 1) {
                return 0x4011;
            }
            break;
    }
    return 0x4006;
}

s16 func_80B61298(GlobalContext *globalCtx, Actor *thisx) {
    switch (func_8010BDBC(&globalCtx->msgCtx)) {
        case 0:
        case 1:
        case 3:
        case 6:
        case 7:
        case 8:
        case 9:
            return 1;

        case 2:
            switch (thisx->textId) {
                case 0x4020:
                case 0x4021:
                    return 0;
                case 0x4008:
                    gSaveContext.infTable[18] |= 0x10;
                    break;
                case 0x402F:
                    gSaveContext.infTable[18] |= 0x200;
                    break;
            }
            gSaveContext.eventChkInf[3] |= 1;
            return 0;

        case 4:
            switch (func_80106BC8(globalCtx)) {
                case 0:
                    return 1;
                default:
                    if (thisx->textId == 0x400C) {
                        thisx->textId = (globalCtx->msgCtx.choiceIndex == 0) ? 0x400D : 0x400E;
                        func_8010B720(globalCtx, thisx->textId);
                    }
                    break;
            }
            return 1;

        case 5:
            switch (func_80106BC8(globalCtx)) {
                case 0:
                    return 1;
                default:
                    return 2;
            }
    }

    return 1;
}

void EnZo_Blink(EnZo *this) {
    if (DECR(this->blinkTimer) == 0) {
        this->eyeTexture++;
        if (this->eyeTexture >= 3) {
            this->blinkTimer = Math_Rand_S16Offset(30, 30);
            this->eyeTexture = 0;
        }
    }
}

void EnZo_Dialog(EnZo *this, GlobalContext *globalCtx) {
    Player *player = PLAYER;

    this->unk_194.unk_18 = player->actor.posRot.pos;
    if (this->actionFunc == EnZo_Standing) {
        // Look down at link if young, look up if old
        this->unk_194.unk_14 = LINK_IS_CHILD ? 10.0f : -10.0f;
    } else {
        this->unk_194.unk_18.y = this->actor.posRot.pos.y;
    }
    func_80034A14((Actor *) this, &this->unk_194, 11, this->unk_64C);
    if (this->canSpeak == 1) {
        func_800343CC(globalCtx, (Actor *) this, &this->unk_194.unk_00, this->dialogRadius, func_80B61024, func_80B61298);
    }
}

s32 EnZo_PlayerInProximity(EnZo *this, GlobalContext *globalCtx) {
    Player *player = PLAYER;
    Vec3f surfacePos;
    f32 yDist;
    f32 hDist;

    surfacePos.x = this->actor.posRot.pos.x;
    surfacePos.y = this->actor.posRot.pos.y + this->actor.waterY;
    surfacePos.z = this->actor.posRot.pos.z;

    hDist = Math_Vec3f_DistXZ(&surfacePos, &player->actor.posRot.pos);
    yDist = fabsf(player->actor.posRot.pos.y - surfacePos.y);

    if (hDist < 240.0f && yDist < 80.0f) {
        return 1;
    }
    return 0;
}

void EnZo_SetAnimation(EnZo *this) {
    s32 animID = 8;

    if (((this->skelAnime.animation == &D_06000598) || (this->skelAnime.animation == &D_06000D48))) {
        if (this->unk_194.unk_00 == 0) {
            if (this->actionFunc == EnZo_Standing) {
                animID = 0;
            } else {
                animID = 3;
            }

        }
    }
    if ((this->unk_194.unk_00 != 0) && (this->actor.textId == 0x4006) && (this->skelAnime.animation != &D_06000598)) {
        animID = 6;
    }
    if ((this->unk_194.unk_00 != 0) && (this->actor.textId == 0x4007) && (this->skelAnime.animation != &D_06000D48)) {
        animID = 7;
    }
    if (animID != 8) {
        func_80034EC0(&this->skelAnime, sAnimations, animID);
        if (animID == 3) {
            this->skelAnime.animCurrentFrame = this->skelAnime.animFrameCount;
            this->skelAnime.animPlaybackSpeed = 0.0f;
        }
    }
}

void EnZo_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnZo *this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600BFA8, NULL, this->limbDrawTbl, this->transitionDrawTbl, 20);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, (Actor *) this, &sCylinderInit);
    func_80061EFC(&this->actor.colChkInfo, NULL, &sColChkInit);

    if (LINK_IS_ADULT && ((this->actor.params & 0x3F) == 8)) {
        Actor_Kill((Actor *) this);
        return;
    }

    func_80034EC0(&this->skelAnime, sAnimations, 2);
    Actor_SetScale((Actor *) this, 0.01f);
    this->actor.unk_1F = 6;
    this->dialogRadius = this->collider.dim.radius + 30.0f;
    this->unk_64C = 1;
    this->canSpeak = 0;
    this->unk_194.unk_00 = 0;
    func_8002E4B4(globalCtx, (Actor *) this, this->collider.dim.height * 0.5f, this->collider.dim.radius, 0.0f, 5);

    if (this->actor.waterY < 54.0f || (this->actor.params & 0x3F) == 8) {
        this->actor.shape.shadowDrawFunc = ActorShadow_DrawFunc_Circle;
        this->actor.shape.unk_10 = 24.0f;
        func_80034EC0(&this->skelAnime, sAnimations, 1);
        this->canSpeak = 1;
        this->alpha = 255.0f;
        this->actionFunc = EnZo_Standing;
    } else {
        this->actor.flags &= ~1;
        this->actionFunc = EnZo_Submerged;
    }
}

void EnZo_Destroy(Actor *thisx, GlobalContext *globalCtx) {
}

void EnZo_Standing(EnZo *this, GlobalContext *globalCtx) {
    s16 angle;

    func_80034F54(globalCtx, this->unk_656, this->unk_67E, 20);
    EnZo_SetAnimation(this);
    if (this->unk_194.unk_00 != 0) {
        this->unk_64C = 4;
        return;
    }

    angle = ABS((s16)((f32) this->actor.yawTowardsLink - (f32) this->actor.shape.rot.y));
    if (angle < 0x4718) {
        if (EnZo_PlayerInProximity(this, globalCtx)) {
            this->unk_64C = 2;
        } else {
            this->unk_64C = 1;
        }
    } else {
        this->unk_64C = 1;
    }
}

void EnZo_Submerged(EnZo *this, GlobalContext *globalCtx) {
    if (EnZo_PlayerInProximity(this, globalCtx)) {
        this->actionFunc = EnZo_Surface;
        this->actor.velocity.y = 4.0f;
    }
}

void EnZo_Surface(EnZo *this, GlobalContext *globalCtx) {
    if (this->actor.waterY < 54.0f) {
        Audio_PlayActorSound2((Actor *) this, NA_SE_EV_OUT_OF_WATER);
        EnZo_SpawnSplashes(this);
        func_80034EC0(&this->skelAnime, sAnimations, 3);
        this->actor.flags = this->actor.flags | 1;
        this->actionFunc = EnZo_TreadWater;
        this->actor.velocity.y = 0.0f;
        this->alpha = 255.0f;
    } else if (this->actor.waterY < 80.0f) {
        Math_SmoothScaleMaxF(&this->actor.velocity.y, 2.0f, 0.4f, 0.6f);
        Math_SmoothScaleMaxF(&this->alpha, 255.0f, 0.3f, 10.0f);
    }
}

void EnZo_TreadWater(EnZo *this, GlobalContext *globalCtx) {

    func_80034F54(globalCtx, this->unk_656, this->unk_67E, 20);
    if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount) != 0) {
        this->canSpeak = 1;
        this->unk_64C = 4;
        this->skelAnime.animPlaybackSpeed = 0.0f;
    }
    EnZo_SetAnimation(this);

    Math_SmoothScaleMaxF(&this->actor.velocity.y, this->actor.waterY < 54.0f ? -0.6f : 0.6f, 0.3f, 0.2f);
    if (this->rippleTimer != 0) {
        this->rippleTimer--;
        if ((this->rippleTimer == 3) || (this->rippleTimer == 6)) {
            EnZo_TreadWater_Ripples(this, 0.2f, 1.0f, 0xC8);
        }
    } else {
        EnZo_TreadWater_Ripples(this, 0.2f, 1.0f, 0xC8);
        this->rippleTimer = 0xC;
    }

    if (EnZo_PlayerInProximity(this, globalCtx) != 0) {
        this->timeToDive = Math_Rand_S16Offset(0x28, 0x28);
    } else if (DECR(this->timeToDive) == 0) {
        f32 initialFrame;
        func_80034EC0(&this->skelAnime, sAnimations, 4);
        this->canSpeak = 0;
        this->unk_64C = 1;
        this->actionFunc = EnZo_Dive;
        initialFrame = this->skelAnime.initialFrame;
        this->skelAnime.initialFrame = this->skelAnime.animFrameCount;
        this->skelAnime.animCurrentFrame = this->skelAnime.animFrameCount;
        this->skelAnime.animFrameCount = initialFrame;
        this->skelAnime.animPlaybackSpeed = -1.0f;
    }
}

void EnZo_Dive(EnZo *this, GlobalContext *globalCtx) {
    if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount) != 0) {
        Audio_PlayActorSound2((Actor *) this, NA_SE_EV_DIVE_WATER);
        EnZo_SpawnSplashes(this);
        this->actor.flags &= ~1;
        this->actor.velocity.y = -4.0f;
        this->skelAnime.animPlaybackSpeed = 0.0f;
    }

    if (!(this->skelAnime.animPlaybackSpeed > 0.0f)) {
        if (this->actor.waterY > 80.0f || this->actor.bgCheckFlags & 1) {
            Math_SmoothScaleMaxF(&this->actor.velocity.y, -1.0f, 0.4f, 0.6f);
            Math_SmoothScaleMaxF(&this->alpha, 0.0f, 0.3f, 10.0f);
        }
        if ((s16) this->alpha == 0) {
            func_80034EC0(&this->skelAnime, sAnimations, 2);
            this->actor.posRot.pos = this->actor.initPosRot.pos;
            this->alpha = 0.0f;
            this->actionFunc = EnZo_Submerged;
        }
    }
}

void EnZo_Update(Actor *thisx, GlobalContext *globalCtx) {
    EnZo* this = THIS;
    ColliderCylinder *collider;
    Vec3f pos;

    if ((s32) this->alpha != 0) {
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        EnZo_Blink(this);
    }
    Actor_MoveForward((Actor *) this);
    func_8002E4B4(globalCtx, (Actor *) this, this->collider.dim.radius, this->collider.dim.height * 0.25f, 0.0f, 5);
    this->actionFunc(this, globalCtx);
    EnZo_Dialog(this, globalCtx);

    // Spawn air bubbles
    if (globalCtx->state.frames & 8) {
        pos = this->actor.posRot.pos;

        pos.y += (Math_Rand_ZeroOne() - 0.5f) * 10.0f + 18.0f;
        pos.x += (Math_Rand_ZeroOne() - 0.5f) * 28.0f;
        pos.z += (Math_Rand_ZeroOne() - 0.5f) * 28.0f;
        EnZo_Bubble(this, &pos);
    }

    if ((s32) this->alpha != 0) {
        collider = &this->collider;
        Collider_CylinderUpdate((Actor *) this, collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, (Collider *) collider);
    }
    EnZo_Ripple_Fade(this);
    EnZo_Bubble_CreateRipple(this);
    EnZo_Splash_CreateRipple(this);
}

s32 EnZo_OverrideLimbDraw(struct GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, void* thisx, Gfx **gfx) {
    EnZo* this = THIS;
    Vec3s vec;

    if (limbIndex == 0xF) {
        Matrix_Translate(1800.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        vec = this->unk_194.unk_08;
        Matrix_RotateX((vec.y / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_RotateZ((vec.x / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_Translate(-1800.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }
    if (limbIndex == 8) {
        vec = this->unk_194.unk_0E;
        Matrix_RotateX((-vec.y / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_RotateZ(( vec.x / 32768.0f) * M_PI, MTXMODE_APPLY);
    }
    if ((limbIndex == 8) || (limbIndex == 9) || (limbIndex == 12)) {
        rot->y += (Math_Sins(this->unk_656[limbIndex]) * 200.0f);
        rot->z += (Math_Coss(this->unk_67E[limbIndex]) * 200.0f);
    }
    return 0;
}

void EnZo_PostLimbDraw(struct GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3s *rot, void* thisx, Gfx **gfx) {
    EnZo *this = THIS;
    Vec3f vec = { 0, 600.0f, 0};
    if (limbIndex == 0xF) {
        Matrix_MultVec3f(&vec, &this->actor.posRot2.pos);
    }
}

void EnZo_Draw(Actor *thisx, GlobalContext *globalCtx) {
    EnZo *this = THIS;
    UNK_PTR eyeTextures[] = { 0x06003E40, 0x06004640, 0x06004E40 };

    Matrix_Push();
    EnZo_DrawRipples(this, globalCtx);
    EnZo_DrawBubbles(this, globalCtx);
    EnZo_DrawSplashes(this, globalCtx);
    Matrix_Pull();

    if ((s32) this->alpha != 0) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_zo.c", 0x3f0);

        if (this->alpha == 255.0f) {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTextures[this->eyeTexture]));
            func_80034BA0(globalCtx, &this->skelAnime, EnZo_OverrideLimbDraw, EnZo_PostLimbDraw, thisx, this->alpha);
        } else {
            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTextures[this->eyeTexture]));
            func_80034CC4(globalCtx, &this->skelAnime, EnZo_OverrideLimbDraw, EnZo_PostLimbDraw, thisx, this->alpha);
        }

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_zo.c", 0x401);
    }
}
