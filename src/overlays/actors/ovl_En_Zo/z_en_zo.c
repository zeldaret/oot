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

void func_80B60220(EnZo *this, Vec3f *pos, f32 scale, f32 targetScale, u8 alpha);
void func_80B602B4(EnZo *this, Vec3f *pos);
void func_80B603E4(EnZo *this, Vec3f *arg1, Vec3f *arg2, f32 arg3);
void func_80B60550(EnZo *this);
void func_80B6060C(EnZo *this);
void func_80B6073C(EnZo *this);
void func_80B60874(EnZo *this, GlobalContext *globalCtx);
void func_80B60A60(EnZo *this, GlobalContext *globalCtx);
void func_80B60C44(EnZo *this, GlobalContext *globalCtx);

void func_80B60E34(EnZo *this, f32 arg1, f32 arg2, u8 arg3);
void func_80B60EB0(EnZo *this);

// Text
u16 func_80B61024(GlobalContext *globalCtx, Actor *thisx);
s16 func_80B61298(GlobalContext *globalCtx, Actor *thisx);

void func_80B613F8(EnZo *this);
void func_80B61470(EnZo *this, GlobalContext *globalCtx);
s32 func_80B6154C(EnZo *this, GlobalContext *globalCtx);
void func_80B615E4(EnZo *this);
void func_80B618F0(EnZo *this, GlobalContext *globalCtx);
void func_80B619D4(EnZo *this, GlobalContext *globalCtx);
void func_80B61A14(EnZo *this, GlobalContext *globalCtx);
void func_80B61AF4(EnZo *this, GlobalContext *globalCtx);
void func_80B61CA4(EnZo *this, GlobalContext *globalCtx);

s32 func_80B61FCC(struct GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, void* thisx, Gfx **gfx);
void func_80B621E4(struct GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3s *rot, void* thisx, Gfx **gfx);

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

void func_80B60220(EnZo *this, Vec3f *pos, f32 scale, f32 targetScale, u8 alpha) {
    EnZoBubble *bubble;
    Vec3f vec = {0};
    s16 i;

    bubble = this->bubbles;
    for (i = 0; i < 0xf; i++) {
        if (bubble->state == 0) {
            bubble->state = 1;
            bubble->pos = *pos;
            bubble->scale = scale;
            bubble->targetScale = targetScale;
            bubble->alpha = alpha;
            return;
        }
        bubble++;
    }
}


void func_80B602B4(EnZo *this, Vec3f *pos) {
    EnZoBubble *bubble;
    Vec3f vec = {0};
    Vec3f vel = {0, 1, 0};
    s16 i;
    f32 new_var;

    bubble = this->bubbles;
    for (i = 0; i < ARRAY_COUNT(this->bubbles); i++) {
        if (!(bubble->state || (new_var = this->actor.posRot.pos.y + this->actor.waterY) <= pos->y)) {
            bubble->state = 3;
            bubble->pos = *pos;
            bubble->unk_2C = *pos;
            bubble->vel = vel;
            bubble->scale = ((Math_Rand_ZeroOne() - 0.5f) * 0.02f) + 0.12f;
            break;
        } else {
            bubble++;
        }
        continue;
    }
}

void func_80B603E4(EnZo *this, Vec3f *arg1, Vec3f *arg2, f32 arg3) {
    EnZoBubble *bubble;
    Vec3f vec = {0, -1, 0};
    s16 i;
    bubble = this->bubbles;
    for (i = 0; i < 0xf; i++) {
        if (bubble->state != 2) {
            bubble->state = 2;
            bubble->pos = *arg1;
            bubble->unk_2C = vec;
            bubble->vel = *arg2;
            bubble->alpha = (u32) ((Math_Rand_ZeroOne() * 100.0f) + 100.0f);
            bubble->scale = arg3;
            break;
        } else {
            bubble++;
        }
    }
}

void func_80B60550(EnZo *this) {
    EnZoBubble *bubble = this->bubbles;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(this->bubbles); i++) {
        if (bubble->state == 1) {
            Math_SmoothScaleMaxF(&bubble->scale, bubble->targetScale, 0.2f, 0.8f);
            if (bubble->alpha > 0x14) {
                bubble->alpha -= 0x14;
            } else {
                bubble->alpha = 0;
            }

            if (bubble->alpha == 0) {
                bubble->state = 0;
            }
        }
        bubble++;
    }
}

void func_80B6060C(EnZo *this) {
    EnZoBubble *bubble;
    f32 yPos;
    s16 i;

    bubble = this->bubbles;
    for (i = 0; i < 0xf; i++) {
        if (bubble->state == 3) {
            bubble->pos.x = ((Math_Rand_ZeroOne() * 0.5f) - 0.25f) + bubble->unk_2C.x;
            bubble->pos.z = ((Math_Rand_ZeroOne() * 0.5f) - 0.25f) + bubble->unk_2C.z;
            bubble->pos.y += bubble->vel.y;

            yPos = this->actor.posRot.pos.y + this->actor.waterY;
            if (yPos <= bubble->pos.y) {
                bubble->state = 0;
                bubble->pos.y = yPos;
                func_80B60220(this, &bubble->pos, 0.06f, 0.12f, 0xC8);
            }
        }
        bubble++;
    }
}

void func_80B6073C(EnZo *this) {
    EnZoBubble *bubble;
    f32 waterHeight;
    s16 i;

    bubble = this->bubbles;
    for (i = 0; i < 0xf; i++) {
        if (bubble->state == 2) {
            bubble->pos.x += bubble->vel.x;
            bubble->pos.y += bubble->vel.y;
            bubble->pos.z += bubble->vel.z;

            if (bubble->vel.y >= -20.0f){
                bubble->vel.y += bubble->unk_2C.y;
            } else {
                bubble->vel.y = -20.0f;
                bubble->unk_2C.y = 0.0f;
            }
            waterHeight = this->actor.posRot.pos.y + this->actor.waterY;
            if (bubble->pos.y < waterHeight) {
                bubble->state = 0;
                bubble->pos.y = waterHeight;
                func_80B60220(this, &bubble->pos, 0.06f, 0.12f, 0xC8);
            }
        }
        bubble++;
    }
}

void func_80B60874(EnZo *this, GlobalContext *globalCtx) {
    EnZoBubble *bubble;
    s16 i;
    u8 first;

    bubble = this->bubbles;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_zo_eff.c", 0xD9);
    first = false;
    func_80093D84(globalCtx->state.gfxCtx);
    for (i = 0; i < 0xf; i++) {
        if (bubble->state == 1) {
            if (!first) {
                do {
                    gDPPipeSync(POLY_XLU_DISP++);
                    gSPDisplayList(POLY_XLU_DISP++, D_0600BFC0);
                    gDPSetEnvColor(POLY_XLU_DISP++, 0x9b, 0x9b, 0x9b, 0x00);
                } while(0);
                first = true;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0xff, 0xff, 0xff, bubble->alpha);
            Matrix_Translate(bubble->pos.x, bubble->pos.y, bubble->pos.z, (u8)0U);
            Matrix_Scale(bubble->scale, 1.0f, bubble->scale, (u8)1U);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_zo_eff.c", 0xF2), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_0600C028);
        }
        bubble++;
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_zo_eff.c", 0xF8);
}

void func_80B60A60(EnZo *this, GlobalContext *globalCtx) {
    EnZoBubble *bubble;
    s16 i;
    u8 first;

    bubble = this->bubbles;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_zo_eff.c", 0x104);
    first = false;
    func_80093D84(globalCtx->state.gfxCtx);
    for (i = 0; i < 0xf; i++) {
        if (bubble->state == 3) {
            if (!first) {
                do {
                    gSPDisplayList(POLY_XLU_DISP++, D_060022F0);
                    gDPPipeSync(POLY_XLU_DISP++);
                    gDPSetEnvColor(POLY_XLU_DISP++, 0x96, 0x96, 0x96, 0x00);
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0xff, 0xff, 0xff, 0xff);
                } while(0);

                first = true;
            }
            Matrix_Translate(bubble->pos.x, bubble->pos.y, bubble->pos.z, (u8)0U);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(bubble->scale, bubble->scale, 1.0f, (u8)1U);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_zo_eff.c", 0x119), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, D_06002350);

        }
        bubble++;
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_zo_eff.c", 0x11E);
}

void func_80B60C44(EnZo *this, GlobalContext *globalCtx) {
    EnZoBubble *bubble;
    s16 i;
    u8 first;

    bubble = this->bubbles;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_zo_eff.c", 0x12A);
    first = false;
    func_80093D84(globalCtx->state.gfxCtx);
    for (i = 0; i < 0xf; i++) {
        if (bubble->state == 2) {
            if (!first) {
                do {
                    gSPDisplayList(POLY_XLU_DISP++, D_060024A0);
                    gDPPipeSync(POLY_XLU_DISP++);
                    gDPSetEnvColor(POLY_XLU_DISP++, 0xc8, 0xc8, 0xc8, 0x00);
                } while(0);
                first = true;
            }
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0xB4, 0xB4, 0xB4, bubble->alpha);

            Matrix_Translate(bubble->pos.x, bubble->pos.y, bubble->pos.z, (u8)0U);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(bubble->scale, bubble->scale, 1.0f, (u8)1U);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_zo_eff.c", 0x145), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, D_06002510);
        }
        bubble++;
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_zo_eff.c", 0x14B);
}

void func_80B60E34(EnZo *this, f32 arg1, f32 arg2, u8 arg3) {
    Vec3f sp24 = {0};

    sp24.x = this->actor.posRot.pos.x;
    sp24.y = this->actor.posRot.pos.y + this->actor.waterY;
    sp24.z = this->actor.posRot.pos.z;
    func_80B60220(this, &sp24, arg1, arg2, arg3);
}

ColliderCylinderInit D_80B6248C = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER, },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 0x1A, 0x40, 0, { 0, 0, 0 } },
};

CollisionCheckInfoInit2 D_80B624B8 = {
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

struct_80034EC0_Entry D_80B624E4[] = {
    { &D_06002FE8, 1.0f, 0.0f, -1.0f, 0, -8.0f, },
    { &D_06002FE8, 1.0f, 0.0f, -1.0f, 0,  0.0f, },
    { &D_06002F10, 0.0f, 1.0f,  1.0f, 2,  0.0f, },
    { &D_06002F10, 1.0f, 1.0f, -1.0f, 0, -8.0f, },
    { &D_06002F10, 1.0f, 8.0f, -1.0f, 0, -8.0f, },
    { &D_0600219C, 1.0f, 0.0f, -1.0f, 0, -8.0f, },
    { &D_06000598, 1.0f, 0.0f, -1.0f, 0, -8.0f, },
    { &D_06000D48, 1.0f, 0.0f, -1.0f, 0, -8.0f, },
};

void func_80B60EB0(EnZo *this) {
    Vec3f sp7C;
    Vec3f sp70;
    s32 i;

    for (i = 0; i < 0x14; i++) {
        f32 temp_f20 = (Math_Rand_ZeroOne() * 1.5f) + 0.5f;
        f32 temp_f22 = Math_Rand_ZeroOne() * 6.28f;

        sp70.y = (Math_Rand_ZeroOne() * 3.0f) + 3.0f;

        sp70.x = sinf(temp_f22) * temp_f20;
        sp70.z = cosf(temp_f22) * temp_f20;

        sp7C = this->actor.posRot.pos;
        sp7C.x += (sp70.x * 6.0f);
        sp7C.z += (sp70.z * 6.0f);
        sp7C.y += this->actor.waterY;
        func_80B603E4(this, &sp7C, &sp70, 0.08f);
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

void func_80B613F8(EnZo *this) {
    if (DECR(this->unk_652) == 0) {
        this->unk_654++;
        if (this->unk_654 >= 3) {
            this->unk_652 = Math_Rand_S16Offset(0x1E, 0x1E);
            this->unk_654 = 0;
        }
    }
}

void func_80B61470(EnZo *this, GlobalContext *globalCtx) {
    Actor *actor;

    actor = globalCtx->actorCtx.actorList[2].first;
    this->unk_194.unk_18 = actor->posRot.pos;
    if (this->callback == func_80B618F0) {
        if (gSaveContext.linkAge != 0) {
            this->unk_194.unk_14 = 10.0f;
        } else {
            this->unk_194.unk_14 = -10.0f;
        }
    } else {
        this->unk_194.unk_18.y = this->actor.posRot.pos.y;
    }
    func_80034A14((Actor *) this, &this->unk_194, 11, this->unk_64C);
    if (this->unk_208 == 1) {
        func_800343CC(globalCtx, (Actor *) this, &this->unk_194.unk_00, this->unk_644, func_80B61024, func_80B61298);
    }
}

s32 func_80B6154C(EnZo *this, GlobalContext *globalCtx) {
    Actor *actor;
    Vec3f sp20;
    f32 yDist;
    f32 dist;

    actor = globalCtx->actorCtx.actorList[2].first;
    sp20.x = this->actor.posRot.pos.x;
    sp20.y = this->actor.posRot.pos.y + this->actor.waterY;
    sp20.z = this->actor.posRot.pos.z;
    dist = Math_Vec3f_DistXZ(&sp20, &actor->posRot.pos);
    yDist = fabsf(actor->posRot.pos.y - sp20.y);

    if (dist < 240.0f && yDist < 80.0f) {
        return 1;
    }
    return 0;
}

void func_80B615E4(EnZo *this) {
    s32 sp1C = 8;

    if (((this->skelAnime.animation == &D_06000598) || (this->skelAnime.animation == &D_06000D48))) {
        if (this->unk_194.unk_00 == 0) {
            if (this->callback == func_80B618F0) {
                sp1C = 0;
            } else {
                sp1C = 3;
            }

        }
    }
    if ((this->unk_194.unk_00 != 0) && (this->actor.textId == 0x4006) && (this->skelAnime.animation != &D_06000598)) {
        sp1C = 6;
    }
    if ((this->unk_194.unk_00 != 0) && (this->actor.textId == 0x4007) && (this->skelAnime.animation != &D_06000D48)) {
        sp1C = 7;
    }
    if (sp1C != 8) {
        func_80034EC0(&this->skelAnime, &D_80B624E4, sp1C);
        if (sp1C == 3) {
            this->skelAnime.animCurrentFrame = this->skelAnime.animFrameCount;
            this->skelAnime.animPlaybackSpeed = 0.0f;
        }
    }
}

void EnZo_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnZo *this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600BFA8, NULL, &this->limbDrawTbl, &this->unk_282, 0x14);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, (Actor *) this, &D_80B6248C);
    func_80061EFC(&this->actor.colChkInfo, NULL, &D_80B624B8);
    if (LINK_IS_ADULT && ((this->actor.params & 0x3F) == 8)) {
        Actor_Kill((Actor *) this);
        return;
    }
    func_80034EC0(&this->skelAnime, &D_80B624E4, 2);
    Actor_SetScale((Actor *) this, 0.01f);
    this->actor.unk_1F = 6;
    this->unk_644 = this->collider.dim.radius + 30.0f;
    this->unk_64C = 1;
    this->unk_208 = 0;
    this->unk_194.unk_00 = 0;
    func_8002E4B4(globalCtx, (Actor *) this, this->collider.dim.height * 0.5f, this->collider.dim.radius, 0.0f, 5);

    if (this->actor.waterY < 54.0f || (this->actor.params & 0x3F) == 8) {
        this->actor.shape.shadowDrawFunc = &ActorShadow_DrawFunc_Circle;
        this->actor.shape.unk_10 = 24.0f;
        func_80034EC0(&this->skelAnime, &D_80B624E4, 1);
        this->unk_208 = 1;
        this->unk_648 = 255.0f;
        this->callback = &func_80B618F0;
    } else {
        this->actor.flags &= ~1;
        this->callback = &func_80B619D4;
    }
}

void EnZo_Destroy(Actor *thisx, GlobalContext *globalCtx) {
}

void func_80B618F0(EnZo *this, GlobalContext *globalCtx) {
    s16 angle;

    func_80034F54(globalCtx, this->unk_656, this->unk_67E, 0x14);
    func_80B615E4(this);
    if (this->unk_194.unk_00 != 0) {
        this->unk_64C = 4;
        return;
    }

    angle = ABS((s16)((f32) this->actor.yawTowardsLink - (f32) this->actor.shape.rot.y));
    if (angle < 0x4718) {
        if (func_80B6154C(this, globalCtx)) {
            this->unk_64C = 2;
        } else {
            this->unk_64C = 1;
        }
    } else {
        this->unk_64C = 1;
    }
}

void func_80B619D4(EnZo *this, GlobalContext *globalCtx) {
    if (func_80B6154C(this, globalCtx)) {
        this->callback = func_80B61A14;
        this->actor.velocity.y = 4.0f;
    }
}

void func_80B61A14(EnZo *this, GlobalContext *globalCtx) {
    if (this->actor.waterY < 54.0f) {
        Audio_PlayActorSound2((Actor *) this, NA_SE_EV_OUT_OF_WATER);
        func_80B60EB0(this);
        func_80034EC0(&this->skelAnime, &D_80B624E4, 3);
        this->actor.flags = this->actor.flags | 1;
        this->callback = func_80B61AF4;
        this->actor.velocity.y = 0.0f;
        this->unk_648 = 255.0f;
    } else if (this->actor.waterY < 80.0f) {
        Math_SmoothScaleMaxF(&this->actor.velocity.y, 2.0f, 0.4f, 0.6f);
        Math_SmoothScaleMaxF(&this->unk_648, 255.0f, 0.3f, 10.0f);
    }
}

void func_80B61AF4(EnZo *this, GlobalContext *globalCtx) {

    func_80034F54(globalCtx, this->unk_656, this->unk_67E, 0x14);
    if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount) != 0) {
        this->unk_208 = 1;
        this->unk_64C = 4;
        this->skelAnime.animPlaybackSpeed = 0.0f;
    }
    func_80B615E4(this);

    Math_SmoothScaleMaxF(&this->actor.velocity.y, this->actor.waterY < 54.0f ? -0.6f : 0.6f, 0.3f, 0.2f);
    if (this->unk_64E != 0) {
        this->unk_64E--;
        if ((this->unk_64E == 3) || (this->unk_64E == 6)) {
            func_80B60E34(this, 0.2f, 1.0f, 0xC8);
        }
    } else {
        func_80B60E34(this, 0.2f, 1.0f, 0xC8);
        this->unk_64E = 0xC;
    }

    if (func_80B6154C(this, globalCtx) != 0) {
        this->unk_650 = Math_Rand_S16Offset(0x28, 0x28);
    } else if (DECR(this->unk_650) == 0) {
        f32 initialFrame;
        func_80034EC0(&this->skelAnime, &D_80B624E4, 4);
        this->unk_208 = 0;
        this->unk_64C = 1;
        this->callback = func_80B61CA4;
        initialFrame = this->skelAnime.initialFrame;
        this->skelAnime.initialFrame = this->skelAnime.animFrameCount;
        this->skelAnime.animCurrentFrame = this->skelAnime.animFrameCount;
        this->skelAnime.animFrameCount = initialFrame;
        this->skelAnime.animPlaybackSpeed = -1.0f;
    }
}

void func_80B61CA4(EnZo *this, GlobalContext *globalCtx) {
    if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount) != 0) {
        Audio_PlayActorSound2((Actor *) this, NA_SE_EV_DIVE_WATER);
        func_80B60EB0(this);
        this->actor.flags &= ~1;
        this->actor.velocity.y = -4.0f;
        this->skelAnime.animPlaybackSpeed = 0.0f;
    }

    if (!(this->skelAnime.animPlaybackSpeed > 0.0f)) {
        if (this->actor.waterY > 80.0f || this->actor.bgCheckFlags & 1) {
            Math_SmoothScaleMaxF(&this->actor.velocity.y, -1.0f, 0.4f, 0.6f);
            Math_SmoothScaleMaxF(&this->unk_648, 0.0f, 0.3f, 10.0f);
        }
        if ((s16) this->unk_648 == 0) {
            func_80034EC0(&this->skelAnime, &D_80B624E4, 2);
            this->actor.posRot.pos = this->actor.initPosRot.pos;
            this->unk_648 = 0.0f;
            this->callback = func_80B619D4;
        }
    }
}

void EnZo_Update(Actor *thisx, GlobalContext *globalCtx) {
    EnZo* this = THIS;
    ColliderCylinder *collider;
    Vec3f pos;

    if ((s32) this->unk_648 != 0) {
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        func_80B613F8(this);
    }
    Actor_MoveForward((Actor *) this);
    func_8002E4B4(globalCtx, (Actor *) this, this->collider.dim.radius, this->collider.dim.height * 0.25f, 0.0f, 5);
    this->callback(this, globalCtx);
    func_80B61470(this, globalCtx);

    // Spawn air bubbles
    if (globalCtx->state.frames & 8) {
        pos = this->actor.posRot.pos;

        pos.y += (Math_Rand_ZeroOne() - 0.5f) * 10.0f + 18.0f;
        pos.x += (Math_Rand_ZeroOne() - 0.5f) * 28.0f;
        pos.z += (Math_Rand_ZeroOne() - 0.5f) * 28.0f;
        func_80B602B4(this, &pos);
    }

    if ((s32) this->unk_648 != 0) {
        collider = &this->collider;
        Collider_CylinderUpdate((Actor *) this, collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, (Collider *) collider);
    }
    func_80B60550(this);
    func_80B6060C(this);
    func_80B6073C(this);
}

s32 func_80B61FCC(struct GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, void* thisx, Gfx **gfx) {
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

void func_80B621E4(struct GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3s *rot, void* thisx, Gfx **gfx) {
    EnZo *this = THIS;
    Vec3f vec = { 0, 600.0f, 0};
    if (limbIndex == 0xF) {
        Matrix_MultVec3f(&vec, &this->actor.posRot2.pos);
    }
}

void EnZo_Draw(Actor *thisx, GlobalContext *globalCtx) {
    EnZo *this = THIS;
    UNK_PTR segments[] = { 0x06003E40, 0x06004640, 0x06004E40 };

    Matrix_Push();
    func_80B60874(this, globalCtx);
    func_80B60A60(this, globalCtx);
    func_80B60C44(this, globalCtx);
    Matrix_Pull();

    if ((s32) this->unk_648 != 0) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_zo.c", 0x3f0);

        if (this->unk_648 == 255.0f) {
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(segments[this->unk_654]));
            func_80034BA0(globalCtx, &this->skelAnime, func_80B61FCC, func_80B621E4, thisx, this->unk_648);
        } else {
            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(segments[this->unk_654]));
            func_80034CC4(globalCtx, &this->skelAnime, func_80B61FCC, func_80B621E4, thisx, this->unk_648);
        }

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_zo.c", 0x401);
    }
}
