/*
 * File: z_en_bw.c
 * Overlay: ovl_En_Bw
 * Description: Torch slug
 */

#include "z_en_bw.h"

#define FLAGS 0x00000015

#define THIS ((EnBw*)thisx)

void EnBw_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBw_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBw_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBw_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809CE884(EnBw* this, GlobalContext* globalCtx);
void func_809CE9A8(EnBw* this);
void func_809CEA24(EnBw* this, GlobalContext* globalCtx);
void func_809CF72C(EnBw* this);
void func_809CF7AC(EnBw* this, GlobalContext* globalCtx);
void func_809CF8F0(EnBw* this);
void func_809CF984(EnBw* this, GlobalContext* globalCtx);
void func_809CFBA8(EnBw* this);
void func_809CFC4C(EnBw* this, GlobalContext* globalCtx);
void func_809CFF10(EnBw* this);
void func_809CFF98(EnBw* this, GlobalContext* globalCtx);
void func_809D00F4(EnBw* this);
void func_809D014C(EnBw* this, GlobalContext* globalCtx);
void func_809D01CC(EnBw* this);
void func_809D0268(EnBw* this, GlobalContext* globalCtx);
void func_809D03CC(EnBw* this);
void func_809D0424(EnBw* this, GlobalContext* globalCtx);

extern Gfx D_0404D4E0[];
extern AnimationHeader D_06000228;
extern SkeletonHeader D_060020F0;
extern AnimationHeader D_060021A0;
extern AnimationHeader D_06002250;

const ActorInit En_Bw_InitVars = {
    ACTOR_EN_BW,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_BW,
    sizeof(EnBw),
    (ActorFunc)EnBw_Init,
    (ActorFunc)EnBw_Destroy,
    (ActorFunc)EnBw_Update,
    (ActorFunc)EnBw_Draw,
};

static ColliderCylinderInit D_809D1450 = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x00, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x01, 0x08 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
    { 30, 65, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit D_809D147C = {
    { COLTYPE_UNK0, 0x00, 0x09, 0x09, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 30, 35, 0, { 0, 0, 0 } },
};

static DamageTable sDamageTable = {
    0x10, 0x00, 0x00, 0xF2, 0x00, 0xF2, 0xF2, 0x10, 0x00, 0xF2, 0xF4, 0xF2, 0xE4, 0xF2, 0xF2, 0xF2,
    0xF2, 0x60, 0xE3, 0x60, 0x00, 0x00, 0xF1, 0xF4, 0xF2, 0xF2, 0xF8, 0xF4, 0x00, 0x00, 0xF4, 0x00,
};

static s32 D_809D14C8 = 0;

void func_809CE6E0(EnBw* this, EnBwActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnBw_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnBw* this = THIS;

    Actor_SetScale(&this->actor, 0.012999999f);
    this->actor.naviEnemyId = 0x23;
    this->actor.gravity = -2.0f;
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_060020F0, &D_06000228, this->jointTbl, this->morphTbl, 12);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 40.0f);
    this->actor.colChkInfo.damageTable = &sDamageTable;
    this->actor.colChkInfo.health = 6;
    this->actor.colChkInfo.mass = 0xFE;
    this->actor.posRot2.pos = this->actor.posRot.pos;
    func_809CE9A8(this);
    this->color1.a = this->color1.r = 0xFF;
    this->color1.g = this->color1.b = 0;
    this->unk_248 = 0.6f;
    this->unk_221 = 3;
    Collider_InitCylinder(globalCtx, &this->collider1);
    //! this->collider2 should have Init called on it, but it doesn't matter since the heap is zeroed before use.
    Collider_SetCylinder(globalCtx, &this->collider1, &this->actor, &D_809D1450);
    Collider_SetCylinder(globalCtx, &this->collider2, &this->actor, &D_809D147C);
    this->unk_236 = this->actor.posRot.rot.y;
    this->actor.params = D_809D14C8;
    D_809D14C8 = (D_809D14C8 + 1) & 3;
}

void EnBw_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnBw* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider1);
    Collider_DestroyCylinder(globalCtx, &this->collider2);
}

void func_809CE884(EnBw *this, GlobalContext *globalCtx) {
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    this->unk_222 -= 250;
    this->actor.scale.x = 0.013f + func_800CA720(this->unk_222 * 0.001f) * 0.0069999998f;
    this->actor.scale.y = 0.013f - func_800CA720(this->unk_222 * 0.001f) * 0.0069999998f;
    this->actor.scale.z = 0.013f + func_800CA720(this->unk_222 * 0.001f) * 0.0069999998f;
    if (this->unk_222 == 0) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        func_809CE9A8(this);
    }
}

void func_809CE9A8(EnBw* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000228, -2.0f);
    this->unk_220 = 2;
    this->unk_222 = Math_Rand_ZeroOne() * 200.0f + 200.0f;
    this->unk_232 = 0;
    this->actor.speedXZ = 0.0f;
    func_809CE6E0(this, func_809CEA24);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809CEA24.s")

void func_809CF72C(EnBw* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060021A0, -2.0f);
    this->unk_220 = 3;
    this->unk_221 = 0;
    this->unk_250 = 0.6f;
    this->unk_222 = 20;
    this->unk_224 = 0xBB8;
    this->actor.speedXZ = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLEWALK_AIM);
    func_809CE6E0(this, func_809CF7AC);
}

void func_809CF7AC(EnBw *this, GlobalContext *globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (this->unk_222 > 0) {
            this->unk_222--;
        } else {
            this->unk_222 = 100;
        }
    }
    if (this->unk_222 >= 20) {
        this->unk_224 -= 250;
    }
    this->actor.scale.x = 0.013f - func_800CA720(this->unk_224 * 0.001f) * 0.0034999999f;
    this->actor.scale.y = 0.013f + func_800CA720(this->unk_224 * 0.001f) * 0.0245f;
    this->actor.scale.z = 0.013f - func_800CA720(this->unk_224 * 0.001f) * 0.0034999999f;
    if (this->unk_224 == 0) {
        func_809CE9A8(this);
        this->unk_224 = 200;
    }
}

void func_809CF8F0(EnBw* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06002250, -1.0f);
    this->actor.speedXZ = 7.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsLink;
    this->unk_220 = 4;
    this->unk_222 = 1000;
    this->actor.velocity.y = 11.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_JUMP);
    this->actor.flags |= 0x1000000;
    func_809CE6E0(this, func_809CF984);
}

void func_809CF984(EnBw *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    s32 temp_v0_2;

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    this->unk_222 += 250;
    this->actor.scale.x = 0.013f - func_800CA720(this->unk_222 * 0.001f) * 0.0034999999f;
    this->actor.scale.y = 0.013f + func_800CA720(this->unk_222 * 0.001f) * 0.0245f;
    this->actor.scale.z = 0.013f - func_800CA720(this->unk_222 * 0.001f) * 0.0034999999f;
    if (this->collider1.base.atFlags & 2) {
        this->collider1.base.atFlags &= ~2;
        this->actor.speedXZ = -6.0f;
        this->actor.posRot.rot.y = this->actor.yawTowardsLink;
        if ((&player->actor == this->collider1.base.at) && !(this->collider1.base.atFlags & 4)) {
            Audio_PlayActorSound2(&player->actor, NA_SE_PL_BODY_HIT);
        }
    }
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->actor.bgCheckFlags & 3) {
        temp_v0_2 = func_80041D4C(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource);
        if ((temp_v0_2 == 2) || (temp_v0_2 == 3) || (temp_v0_2 == 9)) {
            Actor_Kill(&this->actor);
            return;
        }
        func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 30.0f, 0xB, 4.0f, 0, 0, 0);
        this->unk_222 = 3000;
        this->actor.flags &= ~0x01000000;
        this->actor.speedXZ = 0.0f;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        func_809CE6E0(this, func_809CE884);
    }
}

void func_809CFBA8(EnBw *this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06002250, -1.0f);
    this->unk_220 = 5;
    this->unk_222 = 1000;
    this->unk_260 = 0.0f;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 11.0f;
    this->unk_25C = Math_Rand_ZeroOne() * 0.25f + 1.0f;
    this->unk_224 = 0xBB8;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLEWALK_REVERSE);
    func_809CE6E0(this, func_809CFC4C);
}

void func_809CFC4C(EnBw *this, GlobalContext *globalCtx) {
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, 0x7FFF, 1, 0xFA0, 0);
    Math_SmoothScaleMaxMinF(&this->unk_248, 0.0f, 1.0f, 0.05f, 0.0f);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->actor.bgCheckFlags & 3) {
        if ((globalCtx->gameplayFrames % 0x80) == 0) {
            this->unk_25C = (Math_Rand_ZeroOne() * 0.25f) + 0.7f;
        }
        this->unk_221 = 4;
        this->unk_258 += this->unk_25C;
        Math_SmoothScaleMaxMinF(&this->unk_260, 0.075f, 1.0f, 0.005f, 0.0f);
        if (this->actor.bgCheckFlags & 2) {
            func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 30.0f, 0xB, 4.0f, 0, 0, 0);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        }
        if (this->unk_224 != 0) {
            this->unk_224 -= 250;
            this->actor.scale.x = 0.013f + func_800CA720(this->unk_224 * 0.001f) * 0.0069999998f;
            this->actor.scale.y = 0.013f - func_800CA720(this->unk_224 * 0.001f) * 0.0069999998f;
            this->actor.scale.z = 0.013f + func_800CA720(this->unk_224 * 0.001f) * 0.0069999998f;
        }
        this->unk_222--;
        if (this->unk_222 == 0) {
            func_809CFF10(this);
        }
    } else {
        this->color1.r -= 8;
        this->color1.g += 32;
        if (this->color1.r < 200) {
            this->color1.r = 200;
        }
        if (this->color1.g > 200) {
            this->color1.g = 200;
        }
        if (this->color1.b > 235) {
            this->color1.b = 255;
        } else {
            this->color1.b += 40;
        }
        if (this->actor.shape.unk_08 < 1000.0f) {
            this->actor.shape.unk_08 += 200.0f;
        }
    }
}

void func_809CFF10(EnBw *this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06002250, -1.0f);
    this->unk_220 = 6;
    this->unk_222 = 1000;
    this->unk_221 = 3;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 11.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLEWALK_REVERSE);
    this->actor.bgCheckFlags &= ~1;
    func_809CE6E0(this, func_809CFF98);
}

void func_809CFF98(EnBw *this, GlobalContext *globalCtx) {
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, 0, 1, 0xFA0, 0);
    Math_SmoothScaleMaxMinF(&this->unk_248, 0.6f, 1.0f, 0.05f, 0.0f);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->actor.bgCheckFlags & 3) {
        func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 30.0f, 0xB, 4.0f, 0, 0, 0);
        this->unk_222 = 0xBB8;
        this->unk_250 = 0.0f;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        func_809CE6E0(this, func_809CE884);
    }
    if (this->color1.r < 247) {
        this->color1.r += 8;
    } else {
        this->color1.r = 255;
    }
    if (this->color1.g < 32) {
        this->color1.g = 0;
    } else {
        this->color1.g -= 32;
    }
    if (this->color1.b < 40) {
        this->color1.b = 0;
    } else {
        this->color1.b -= 40;
    }
    if (this->actor.shape.unk_08 > 0.0f) {
        this->actor.shape.unk_08 -= 200.0f;
    }
}

void func_809D00F4(EnBw *this) {
    this->unk_220 = 0;
    this->unk_222 = 40;
    this->actor.flags &= ~1;
    this->actor.speedXZ = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLEWALK_DEAD);
    func_809CE6E0(this, func_809D014C);
}

void func_809D014C(EnBw *this, GlobalContext *globalCtx) {
    if (this->unk_230) {
        this->actor.scale.x += 0.0002f;
        this->actor.scale.y -= 0.0002f;
        this->actor.scale.z += 0.0002f;
    }
    this->actor.shape.unk_14 = this->color1.a -= 6;
    this->unk_222--;
    if (this->unk_222 <= 0) {
        Actor_Kill(&this->actor);
    }
}

void func_809D01CC(EnBw *this) {
    this->unk_220 = 1;
    this->actor.speedXZ = 0.0f;
    this->unk_25C = (Math_Rand_ZeroOne() * 0.25f) + 1.0f;
    this->unk_260 = 0.0f;
    if (this->unk_231 == 0xE) {
        this->unk_23B = 0x50;
    }
    this->unk_222 = (this->actor.dmgEffectParams & 0x4000) ? 25 : 80;
    func_809CE6E0(this, func_809D0268);
}

void func_809D0268(EnBw *this, GlobalContext *globalCtx) {
    this->color1.r -= 1;
    this->color1.g += 4;
    this->color1.b += 5;
    if (this->color1.r < 200) {
        this->color1.r = 200;
    }
    if (this->color1.g > 200) {
        this->color1.g = 200;
    }
    if (this->color1.b > 230) {
        this->color1.b = 230;
    }
    if (this->actor.dmgEffectParams & 0x4000) {
        if ((globalCtx->gameplayFrames % 0x80) == 0) {
            this->unk_25C = 0.5f + Math_Rand_ZeroOne() * 0.25f;
        }
        this->unk_258 += this->unk_25C;
        Math_SmoothScaleMaxMinF(&this->unk_260, 0.075f, 1.0f, 0.005f, 0.0f);
    }
    this->unk_222--;
    if (this->unk_222 == 0) {
        func_809CE9A8(this);
        this->color1.r = this->color1.g = 200;
        this->color1.b = 255;
        this->unk_224 = 0x258;
        this->unk_221 = 1;
        this->unk_250 = 0.7f;
        this->unk_236++;
    }
}

void func_809D03CC(EnBw *this) {
    this->actor.speedXZ = 0.0f;
    if (this->unk_231 == 0xE) {
        this->unk_23B = 0x20;
    }
    this->unk_23C = this->actor.dmgEffectTimer;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    func_809CE6E0(this, func_809D0424);
}

void func_809D0424(EnBw *this, GlobalContext *globalCtx) {
    if (this->actor.dmgEffectTimer == 0) {
        this->unk_23C = 0;
        if (this->actor.colChkInfo.health != 0) {
            if ((this->unk_220 != 5) && (this->unk_220 != 6)) {
                func_809CE9A8(this);
                this->color1.r = this->color1.g = 200;
                this->color1.b = 255;
                this->unk_224 = 0x258;
                this->unk_221 = 1;
                this->unk_250 = 0.7f;
                this->unk_236++;
            } else if (this->unk_220 != 5) {
                func_809CE6E0(this, func_809CFF98);
            } else {
                func_809CFF10(this);
            }
        } else {
            if (func_800355E4(globalCtx, &this->collider2.base)) {
                this->unk_230 = 0;
                this->actor.scale.y -= 0.009f;
                func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 30.0f, 0xB, 4.0f, 0, 0, 0);
            } else {
                this->unk_230 = 1;
            }
            Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0x90);
            func_809D00F4(this);
        }
    }
}

void func_809D0584(EnBw *this, GlobalContext *globalCtx) {
    if ((this->actor.bgCheckFlags & 0x10) && (this->actor.bgCheckFlags & 1)) {
        this->unk_230 = 0;
        this->actor.scale.y -= 0.009f;
        func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 30.0f, 0xB, 4.0f, 0, 0, 0);
        func_809D00F4(this);
    } else {
        if (this->collider2.base.acFlags & 2) {
            this->collider2.base.acFlags &= ~2;
            if ((this->actor.colChkInfo.damageEffect == 0) || (this->unk_220 == 6)) {
                return;
            }
            this->unk_231 = this->actor.colChkInfo.damageEffect;
            func_80035650(&this->actor, &this->collider2.body, 0);
            if ((this->unk_231 == 1) || (this->unk_231 == 0xE)) {
                if (this->unk_23C == 0) {
                    Actor_ApplyDamage(&this->actor);
                    func_8003426C(&this->actor, 0, 0x78, 0, 0x50);
                    func_809D03CC(this);
                    this->unk_248 = 0.0f;
                }
                return;
            }
            if (this->unk_248 == 0.0f) {
                Actor_ApplyDamage(&this->actor);
            }
            if (((this->unk_221 == 1) || (this->unk_221 == 4)) && (this->actor.colChkInfo.health == 0)) {
                if (this->unk_220 != 0) {
                    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 8);
                    if (func_800355E4(globalCtx, &this->collider2.base)) {
                        this->unk_230 = 0;
                        this->actor.scale.y -= 0.009f;
                        func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 30.0f, 0xB, 4.0f, 0, 0, 0);
                    } else {
                        this->unk_230 = 1;
                    }
                    Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0x90);
                    func_809D00F4(this);
                }
            } else if ((this->unk_220 != 1) && (this->unk_220 != 6)) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLEWALK_DAMAGE);
                func_8003426C(&this->actor, 0x4000, 0xFF, 0, 8);
                if (this->unk_220 != 5) {
                    func_809D01CC(this);
                }
                this->unk_248 = 0.0f;
            }
        }
        if ((globalCtx->actorCtx.unk_02 != 0) && (this->actor.xzDistFromLink <= 400.0f) && (this->actor.bgCheckFlags & 1)) {
            if (this->unk_220 == 5) {
                this->unk_23C = 0;
                func_809CFF10(this);
            } else if (this->unk_220 != 0) {
                this->unk_23C = 0;
                func_809CFBA8(this);
            }
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/func_809D0584.s")

#ifdef NON_MATCHING
void EnBw_Update(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnBw* this = THIS;
    Vec3f sp6C = { 0.0f, 0.0f, 0.0f };
    Vec3f sp60 = { 0.0f, 0.0f, 0.0f };
    s32 pad3;
    s32 pad2;
    s32 pad4;
    Color_RGBA8 sp50 = { 255, 200, 0, 255 };
    Color_RGBA8 sp4C = { 255, 80, 0, 255 };
    Color_RGBA8 sp48 = { 0, 0, 0, 255 };
    Color_RGBA8 sp44 = { 0, 0, 0, 220 };

    func_809D0584(this, globalCtx);
    if (this->actor.colChkInfo.damageEffect != 6) {
        this->actionFunc(this, globalCtx);
        if (this->unk_23C == 0) {
            this->unk_23A = (this->unk_23A + 4) & 0x7F;
        }
        if ((globalCtx->gameplayFrames & this->unk_221) == 0) {
            sp60.y = -3.0f;
            sp6C.x = Math_Rand_CenteredFloat(this->unk_248 * 24.0f);
            sp6C.y = this->unk_248 * 30.0f;
            sp6C.z = Math_Rand_CenteredFloat(this->unk_248 * 24.0f);
            sp60.x = sp6C.x * -0.075f;
            sp60.z = sp6C.z * -0.075f;
            func_8002836C(globalCtx, &this->actor.posRot.pos, &sp6C, &sp60, &sp50, &sp4C, 0x3C, 0, 0x14);
        }
        if (this->unk_248 <= 0.4f) {
            this->collider1.body.toucher.effect = 0;
            if (((globalCtx->gameplayFrames & 1) == 0) && (this->unk_220 < 5) && (this->unk_23C == 0)) {
                sp60.y = -0.1f;
                sp6C.x = Math_Rand_CenteredFloat(4.0f);
                sp6C.y = Math_Rand_CenteredFloat(2.0f) + 6.0f;
                sp6C.z = Math_Rand_CenteredFloat(4.0f);
                sp60.x = sp6C.x * -0.1f;
                sp60.z = sp6C.z * -0.1f;
                Math_Rand_CenteredFloat(4.0f);
                Math_Rand_CenteredFloat(4.0f);
                sp48.a = this->color1.a;
                if (sp48.a >= 30) {
                    sp44.a = sp48.a - 30;
                } else {
                    sp44.a = 0;
                }
                func_8002836C(globalCtx, &this->actor.posRot.pos, &sp6C, &sp60, &sp48, &sp44, 0xB4, 0x28,
                              20.0f - (this->unk_248 * 40.0f));
            }
        } else {
            this->collider1.body.toucher.effect = 1;
        }

        this->unk_234 = func_800339B8(&this->actor, globalCtx, 50.0f, this->actor.posRot.rot.y);
        if ((this->unk_220 == 4) || (this->unk_220 == 6) || (this->unk_220 == 5) || (this->unk_220 == 1) ||
            (this->unk_234 != 0)) {
            Actor_MoveForward(&this->actor);
        }
        func_8002E4B4(globalCtx, &this->actor, 20.0f, 30.0f, 21.0f, 0x1F);
    }
    Collider_CylinderUpdate(&this->actor, &this->collider2);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
    if ((this->unk_220 != 0) && ((this->actor.dmgEffectTimer == 0) || !(this->actor.dmgEffectParams & 0x4000))) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
    }
    if ((this->unk_221 != 1) && (this->unk_220 < 5) && (this->unk_248 > 0.4f)) {
        Collider_CylinderUpdate(&this->actor, &this->collider1);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 5.0f;
}
#else
Vec3f D_809D14CC = { 0.0f, 0.0f, 0.0f };
Vec3f D_809D14D8 = { 0.0f, 0.0f, 0.0f };
Color_RGBA8 D_809D14E4 = { 255, 200, 0, 255 };
Color_RGBA8 D_809D14E8 = { 255, 80, 0, 255 };
Color_RGBA8 D_809D14EC = { 0, 0, 0, 255 };
Color_RGBA8 D_809D14F0 = { 0, 0, 0, 220 };
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/EnBw_Update.s")
#endif

s32 func_809D0D18(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx,
                  Gfx** gfx) {
    EnBw* this = THIS;

    if (limbIndex == 1) {
        gSPSegment((*gfx)++, 0x09,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x20, 1, 0, this->unk_23A, 0x20, 0x20));
        if ((this->unk_220 == 1) || (this->unk_220 == 5)) {
            Matrix_Push();
            Matrix_Scale(1.0f, 1.0f, 1.0f, 1);
            Matrix_RotateX(this->unk_258 * 0.115f, 1);
            Matrix_RotateY(this->unk_258 * 0.13f, 1);
            Matrix_RotateZ(this->unk_258 * 0.1f, 1);
            Matrix_Scale(1.0f - this->unk_260, 1.0f + this->unk_260, 1.0f - this->unk_260, 1);
            Matrix_RotateZ(-(this->unk_258 * 0.1f), 1);
            Matrix_RotateY(-(this->unk_258 * 0.13f), 1);
            Matrix_RotateX(-(this->unk_258 * 0.115f), 1);
            gSPMatrix((*gfx)++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_bw.c", 0x56C),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList((*gfx)++, *dList);
            Matrix_Pull();
            return 1;
        }
    }
    return 0;
}

Vec3f D_809D14F4[] = {
    { 20.0f, 10.0f, 0.0f },  { -20.0f, 10.0f, 0.0f }, { 0.0f, 10.0f, -25.0f }, { 10.0f, 0.0f, 15.0f },
    { 10.0f, 0.0f, -15.0f }, { 0.0f, 10.0f, 25.0f },  { -10.0f, 0.0f, 15.0f }, { -10.0f, 0.0f, -15.0f },
};

#ifdef NON_MATCHING
void EnBw_Draw(Actor* thisx, GlobalContext* globalCtx2) {
    Vec3f spAC = { 0.0f, 0.0f, 0.0f };
    GlobalContext* globalCtx = globalCtx2;
    EnBw* this = THIS;
    Vec3f sp98;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_bw.c", 0x58F);
    if (this->color1.a == 0xFF) {
        func_80093D18(globalCtx->state.gfxCtx);
        gDPSetEnvColor(POLY_OPA_DISP++, this->color1.r, this->color1.g, this->color1.b, this->color1.a);
        gSPSegment(POLY_OPA_DISP++, 0x08, &D_80116280[2]);
        POLY_OPA_DISP = SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_809D0D18,
                                       NULL, this, POLY_OPA_DISP);
    } else {
        func_80093D84(globalCtx->state.gfxCtx);
        gDPPipeSync(POLY_XLU_DISP++);
        gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 0, 0, 0, this->color1.a);
        gDPSetEnvColor(POLY_XLU_DISP++, this->color1.r, this->color1.g, this->color1.b, this->color1.a);
        gSPSegment(POLY_XLU_DISP++, 0x08, &D_80116280[0]);
        POLY_XLU_DISP = SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_809D0D18,
                                       NULL, this, POLY_XLU_DISP);
    }
    if (this->actor.params == ((globalCtx->gameplayFrames + 1) & 3)) {
        spAC.z = this->actor.scale.z * 375000.0f;
        Matrix_MultVec3f(&spAC, &this->unk_264);
        spAC.z = this->actor.scale.z * 150000.0f;
        Matrix_MultVec3f(&spAC, &this->unk_270);
        spAC.x = this->actor.scale.x * 550000.0f;
        Matrix_MultVec3f(&spAC, &this->unk_288);
        spAC.x = -spAC.x;
        Matrix_MultVec3f(&spAC, &this->unk_27C);
    }
    Matrix_Translate(this->actor.posRot.pos.x, this->actor.posRot.pos.y + ((this->actor.scale.y - 0.013f) * 1000.0f),
                     this->actor.posRot.pos.z, 0);
    func_80093D84(globalCtx->state.gfxCtx);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 0);
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0,
                                (globalCtx->gameplayFrames * -20) % 0x200, 0x20, 0x80));
    gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 255, 255, 0, 255);
    Matrix_Scale(this->unk_248 * 0.01f, this->unk_248 * 0.01f, this->unk_248 * 0.01f, 1);
    func_800D1FD4(&globalCtx->mf_11DA0);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_bw.c", 0x5DC),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_0404D4E0);
    if (this->unk_23B != 0) {
        u8 temp_t0;

        this->actor.dmgEffectTimer++;
        temp_t0 = this->unk_23B - 1;
        this->unk_23B = temp_t0;
        if ((temp_t0 & 3) == 0) {
            sp98.x = D_809D14F4[temp_t0 >> 2].x + this->actor.posRot.pos.x;
            sp98.y = D_809D14F4[temp_t0 >> 2].y + this->actor.posRot.pos.y;
            sp98.z = D_809D14F4[temp_t0 >> 2].z + this->actor.posRot.pos.z;
            EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &sp98, 0x96, 0x96, 0x96, 0xFA, 0xEB, 0xF5, 0xFF,
                                           1.3f);
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_bw.c", 0x5F1);
}
#else
Vec3f D_809D1554 = { 0.0f, 0.0f, 0.0f };
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bw/EnBw_Draw.s")
#endif
