/*
 * File: z_en_gs.c
 * Overlay: ovl_En_Gs
 * Description: Gossip Stone
 */

#include "z_en_gs.h"

#define FLAGS 0x02000009

#define THIS ((EnGs*)thisx)

void EnGs_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGs_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGs_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGs_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A4F734(EnGs* this, GlobalContext* globalCtx);
void func_80A4F700(EnGs* this, GlobalContext* globalCtx);

void func_80A4F77C(EnGs* this);

extern Gfx D_0404D4E0[];
extern Gfx D_06000950[];
extern Gfx D_060009D0[];
extern Gfx D_06000A60[];

const ActorInit En_Gs_InitVars = {
    ACTOR_EN_GS,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GS,
    sizeof(EnGs),
    (ActorFunc)EnGs_Init,
    (ActorFunc)EnGs_Destroy,
    (ActorFunc)EnGs_Update,
    (ActorFunc)EnGs_Draw,
};

static ColliderCylinderInit D_80A4FDA0 = {
    { COLTYPE_UNK12, 0x00, 0x0D, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 21, 48, 0, { 0, 0, 0 } },
};

CollisionCheckInfoInit2 D_80A4FDCC = { 0x00, 0x0000, 0x0000, 0x0000, 0xFF };

DamageTable D_80A4FDD8 = { 0x00, 0x00, 0xE0, 0xC0, 0xE0, 0xE0, 0xD0, 0xE0, 0xF0, 0xF0, 0xF0,
                           0xB0, 0xB0, 0xB0, 0x00, 0x00, 0x00, 0xB0, 0xB0, 0xB0, 0x00, 0x00,
                           0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void EnGs_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnGs* this = THIS;

    Actor_ProcessInitChain(thisx, sInitChain);
    Collider_InitCylinder(globalCtx, &this->unk_14C);
    Collider_SetCylinder(globalCtx, &this->unk_14C, thisx, &D_80A4FDA0);
    func_80061EFC(&thisx->colChkInfo, &D_80A4FDD8, &D_80A4FDCC);

    thisx->unk_1F = 6;
    this->unk_1D8 = thisx->posRot.pos;
    this->actionFunc = func_80A4F734;
    this->unk_1B4[0].x = 1.0f;
    this->unk_1B4[0].y = 1.0f;
    this->unk_1B4[0].z = 1.0f;
    this->unk_1B4[1].x = 1.0f;
    this->unk_1B4[1].y = 1.0f;
    this->unk_1B4[1].z = 1.0f;
}

void EnGs_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

s32 func_80A4E3EC(EnGs* this, GlobalContext* globalCtx) {
    s32 ret = 2;
    switch (func_8010BDBC(&globalCtx->msgCtx)) {
        case 6:
            if (func_80106BC8(globalCtx)) {
                switch (this->actor.textId) {
                    case 0x2054:
                        this->actor.textId = (this->actor.params & 0xFF) + 0x400;
                        ret = 1;
                        break;
                    default:
                        ret = 0;
                        break;
                }
            }
            break;
    }
    return ret;
}

void func_80A4E470(EnGs* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    bREG(15) = 0;
    if (this->actor.xzDistFromLink <= 100.0f) {
        bREG(15) = 1;
        if (this->unk_19D == 0) {
            player->stateFlags2 |= 0x800000;
            if (player->stateFlags2 & 0x1000000) {
                func_8010BD58(globalCtx, 1);
                this->unk_19D |= 1;
            }

        } else if (this->unk_19D & 1) {
            if (globalCtx->msgCtx.unk_E3EE == 4) {
                if ((globalCtx->msgCtx.unk_E3F2 == 6) || (globalCtx->msgCtx.unk_E3F2 == 7) ||
                    (globalCtx->msgCtx.unk_E3F2 == 8) || (globalCtx->msgCtx.unk_E3F2 == 9) ||
                    (globalCtx->msgCtx.unk_E3F2 == 10)) {
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ELF, this->actor.posRot.pos.x,
                                this->actor.posRot.pos.y + 40.0f, this->actor.posRot.pos.z, 0, 0, 0, 2);
                    Audio_PlayActorSound2(&this->actor, NA_SE_EV_BUTTERFRY_TO_FAIRY);
                } else if (globalCtx->msgCtx.unk_E3F2 == 11) {
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ELF, this->actor.posRot.pos.x,
                                this->actor.posRot.pos.y + 40.0f, this->actor.posRot.pos.z, 0, 0, 0, 7);
                    Audio_PlayActorSound2(&this->actor, NA_SE_EV_BUTTERFRY_TO_FAIRY);
                }
                this->unk_19D = 0;
                Flags_SetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F);
            } else if (globalCtx->msgCtx.unk_E3EE == 1) {
                player->stateFlags2 |= 0x800000;
            }
        }
    }
}

void func_80A4E648(EnGs* this, GlobalContext* globalCtx) {
    s16 sp26;
    s16 sp24;

    if (this->unk_19C == 1) {
        func_8010B720(globalCtx, this->actor.textId);
        this->unk_19C = 2;
    } else if (this->unk_19C == 2) {
        this->unk_19C = func_80A4E3EC(this, globalCtx);
    } else if (func_8002F194(&this->actor, globalCtx)) {
        this->unk_19C = 2;
    } else {
        func_8002F374(globalCtx, &this->actor, &sp26, &sp24);
        if ((sp26 >= 0) && (sp26 < 0x141) && (sp24 >= 0) && (sp24 < 0xF1) && (this->unk_19C != 3)) {
            if (func_8002F2CC(&this->actor, globalCtx, 40.0f) == 1) {
                if (func_8008F080(globalCtx) == 8) {
                    this->actor.textId = 0x2054;
                } else {
                    this->actor.textId = 0x2053;
                }
            }
        }
    }
}

f32 func_80A4E754(EnGs* this, GlobalContext* globalCtx, f32* arg2, f32* arg3, u16* arg4, f32 arg5, f32 arg6, f32 arg7,
                  s32 arg8, s32 arg9) {
    f32 sp2C = Math_SmoothScaleMaxMinF(arg2, *arg3, arg5, arg6, arg7);

    if (arg9 == 0) {
        sp2C = Math_SmoothScaleMaxMinF(arg2, *arg3, arg5, arg6, arg7);
        this->unk_1B4[0].x = 1.0f + (sinf((((*arg4 % arg8) * (1.0f / arg8)) * 360.0f) * 0.017453292f) * *arg2);
        this->unk_1B4[0].y = 1.0f - (sinf((((*arg4 % arg8) * (1.0f / arg8)) * 360.0f) * 0.017453292f) * *arg2);
        *arg4 += 1;
    }
    return sp2C;
}

void func_80A4E910(EnGs* this, GlobalContext* globalCtx) {
    if (this->unk_19F == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALKID_ATTACK);
        this->unk_200 = 0;
        this->unk_19F = 1;
        this->unk_1E8 = 0.5f;
        this->unk_1EC = 0.0f;
    } else if ((this->unk_19F == 1) && (func_80A4E754(this, globalCtx, &this->unk_1E8, &this->unk_1EC, &this->unk_200,
                                                      0.8f, 0.007f, 0.001f, 7, 0) == 0.0f)) {
        if (!Gameplay_InCsMode(globalCtx)) {
            func_8010B680(globalCtx, 0x71B1, NULL);
        }
        this->unk_19C = 0;
        this->actionFunc = func_80A4F734;
    }
}

void func_80A4EA08(EnGs* this, GlobalContext* globalCtx) {
    s32 temp_t8;

    if (this->unk_19F == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALKID_ATTACK);
        this->unk_1E8 = 0.3f;
        this->unk_1EC = 0.0f;
        this->unk_200 = 0;
        this->unk_19F = 1;
    } else if (this->unk_19F == 1) {
        this->unk_1A0[0].z = (((this->unk_200 % 8) * 0.125f) * 360.0f) * 182.04445f;
        this->unk_1A0[1].z = -this->unk_1A0[0].z;
        if (func_80A4E754(this, globalCtx, &this->unk_1E8, &this->unk_1EC, &this->unk_200, 0.8f, 0.005f, 0.001f, 7,
                          0) == 0.0f) {
            this->unk_19C = 0;
            this->actionFunc = func_80A4F734;
        }
    }
}

void func_80A4EB3C(EnGs* this, GlobalContext* globalCtx) {
    f32 ret;

    if (this->unk_19F == 0) {
        this->unk_1E8 = this->unk_1B4[0].y - 1.0f;
        this->unk_1EC = -0.8f;
        this->unk_19F++;
    } else if (this->unk_19F == 1) {
        ret = Math_SmoothScaleMaxMinF(&this->unk_1E8, this->unk_1EC, 1.0f, 0.4f, 0.001f);
        this->unk_1B4[0].y = this->unk_1E8 + 1.0f;
        if (ret == 0.0f) {
            this->unk_200 = 0;
            this->unk_19F++;
        }
    } else if (this->unk_19F == 2) {
        this->unk_200++;
        if (this->unk_200 >= 100) {
            this->unk_19F++;
            this->unk_1E8 = this->unk_1B4[0].y - 1.0f;
            this->unk_1EC = 0.0f;
        }
    } else if (this->unk_19F == 3) {
        ret = Math_SmoothScaleMaxMinF(&this->unk_1E8, this->unk_1EC, 1.0f, 0.5f, 0.001f);
        this->unk_1B4[0].y = this->unk_1E8 + 1.0f;
        if (ret == 0.0f) {
            this->unk_1E8 = 0.5f;
            this->unk_1EC = 0.0f;
            this->unk_200 = 0;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALKID_ATTACK);
            this->unk_19F++;
        }
    } else if (this->unk_19F == 4) {
        if (func_80A4E754(this, globalCtx, &this->unk_1E8, &this->unk_1EC, &this->unk_200, 1.0f, 0.03f, 0.001f, 5, 0) ==
            0.0f) {
            this->unk_19C = 0;
            this->actionFunc = func_80A4F734;
        }
    }
}

void func_80A4ED34(EnGs* this, GlobalContext* globalCtx) {
    static Color_RGBA8 flashRed = { 255, 50, 50, 0 };
    static Color_RGBA8 flashBlue = { 50, 50, 255, 0 };
    static Color_RGBA8 baseWhite = { 255, 255, 255, 0 };
    static Vec3f dustAccel = { 0.0f, -0.3f, 0.0f };
    static Color_RGBA8 dustPrim = { 200, 200, 200, 128 };
    static Color_RGBA8 dustEnv = { 100, 100, 100, 0 };
    static Vec3f bomb2Velocity = { 0.0f, 0.0f, 0.0f };
    static Vec3f bomb2Accel = { 0.0f, 0.0f, 0.0f };
    u8 i;
    Vec3f dustPos;
    Vec3f dustVelocity;
    Vec3f bomb2Pos;

    if (this->unk_19F == 0) {
        this->unk_200 = 0x28;
        this->unk_19F++;
    }

    if (this->unk_19F == 1) {
        if ((u32)this->unk_200-- <= 0) {
            this->unk_200 = 0x50;
            this->unk_19E |= 4;
            this->unk_19F++;
        }
    }

    if (this->unk_19F == 2) {
        this->unk_200--;
        Color_RGBA8_Copy(&this->flashColor, &baseWhite);
        if ((this->unk_200 < 0x50) && ((this->unk_200 % 0x14) < 8)) {
            if (this->unk_200 < 0x14) {
                Color_RGBA8_Copy(&this->flashColor, &flashRed);
                if ((this->unk_200 % 0x14) == 7) {
                    Audio_PlaySoundGeneral(NA_SE_SY_WARNING_COUNT_E, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                           &D_801333E8);
                }
            } else {
                Color_RGBA8_Copy(&this->flashColor, &flashBlue);
                if ((this->unk_200 % 0x14) == 7) {
                    Audio_PlaySoundGeneral(NA_SE_SY_WARNING_COUNT_N, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                           &D_801333E8);
                }
            }
        }
        if (this->unk_200 <= 0) {
            this->unk_200 = 0;
            this->unk_19E &= ~4;
            this->unk_19F++;
        }
    }

    if (this->unk_19F == 3) {
        for (i = 0; i < 3; i++) {
            dustVelocity.x = Math_Rand_CenteredFloat(15.0f);
            dustVelocity.y = Math_Rand_ZeroFloat(-1.0f);
            dustVelocity.z = Math_Rand_CenteredFloat(15.0f);
            dustPos.x = this->actor.posRot.pos.x + (dustVelocity.x + dustVelocity.x);
            dustPos.y = this->actor.posRot.pos.y + 7.0f;
            dustPos.z = this->actor.posRot.pos.z + (dustVelocity.z + dustVelocity.z);
            func_8002836C(globalCtx, &dustPos, &dustVelocity, &dustAccel, &dustPrim, &dustEnv,
                          (s16)Math_Rand_ZeroFloat(50.0f) + 200, 40, 15);
        }

        func_8002F974(&this->actor, NA_SE_EV_FIRE_PILLAR - SFX_FLAG);
        if ((this->unk_200++ < 0x28) ^ 1) {
            this->unk_19E |= 0x10;
            this->actor.flags |= 0x10;
            this->actor.uncullZoneForward = 12000.0f;

            this->actor.gravity = 0.3f;
            this->unk_19F++;
        }
    }

    if (this->unk_19F == 4) {
        func_8002E4B4(globalCtx, &this->actor, 20.0f, 20.0f, 60.0f, 3);
        if (this->actor.bgCheckFlags & 0x18) {
            bomb2Pos.x = this->actor.posRot.pos.x;
            bomb2Pos.y = this->actor.posRot.pos.y;
            bomb2Pos.z = this->actor.posRot.pos.z;
            Audio_PlayActorSound2(&this->actor, NA_SE_IT_BOMB_EXPLOSION);
            EffectSsBomb2_SpawnLayered(globalCtx, &bomb2Pos, &bomb2Velocity, &bomb2Accel, 100, 20);
            this->unk_200 = 10;
            this->unk_19E |= 8;
            this->actionFunc = func_80A4F700;
        } else {
            func_8002F974(&this->actor, NA_SE_EV_STONE_LAUNCH - SFX_FLAG);
        }

        Actor_MoveForward(&this->actor);
        if (this->actor.yDistFromLink < -12000.0f) {
            Actor_Kill(&this->actor);
        }
    }
}

void func_80A4F13C(EnGs* this, GlobalContext* globalCtx) {
    f32 tmpf1;
    f32 tmpf2;
    f32 tmpf3;
    s32 tmp;
    s16 tmp2 = this->unk_1A0[0].y;

    if (this->unk_19F == 0) {
        this->unk_1E8 = 0.0f;
        this->unk_1EC = 90.0f;
        this->unk_1F0 = 0.1f;
        this->unk_1F4 = 2.0f;
        this->unk_1F8 = 0;
        this->unk_19F = 1;
    }
    if (this->unk_19F == 1) {
        Math_SmoothScaleMaxMinF(&this->unk_1F0, this->unk_1F4, 1.0f, 0.1f, 0.001f);
        tmpf1 = Math_SmoothScaleMaxMinF(&this->unk_1E8, this->unk_1EC, 1.0f, this->unk_1F0, 0.001f);
        this->unk_1A0[0].y += (s32)(this->unk_1E8 * 182.04445f);
        if (tmpf1 == 0.0f) {
            this->unk_200 = 0;
            this->unk_19F = 2;
        }
    }
    if (this->unk_19F == 2) {
        this->unk_1A0[0].y += (s32)(this->unk_1E8 * 182.04445f);
        if (this->unk_200++ > 0x28) {
            this->unk_1E8 = this->unk_1B4[0].y - 1.0f;
            this->unk_1EC = 1.5f;
            this->unk_1F0 = this->unk_1B4[1].y - 1.0f;
            this->unk_1F4 = -0.3f;
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_STONE_GROW_UP);
            this->unk_19F = 3;
        }
    }
    if (this->unk_19F == 3) {
        this->unk_1A0[0].y += 0x4000;
        tmpf1 = Math_SmoothScaleMaxMinF(&this->unk_1E8, this->unk_1EC, 0.8f, 0.2f, 0.001f);
        Math_SmoothScaleMaxMinF(&this->unk_1F0, this->unk_1F4, 0.8f, 0.2f, 0.001f);
        this->unk_1B4[0].x = this->unk_1F0 + 1.0f;
        this->unk_1B4[0].y = this->unk_1E8 + 1.0f;
        if (tmpf1 == 0.0f) {
            this->unk_1E8 = 0.6981317f;
            this->unk_1EC = 0.34906584f;
            this->unk_19F = 4;
        }
    }
    if (this->unk_19F == 4) {
        tmpf1 = Math_SmoothScaleMaxMinF(&this->unk_1E8, this->unk_1EC, 0.8f, 16384.0f, 3640.0f);
        this->unk_1A0[0].y += (s16)this->unk_1E8;
        if (tmpf1 == 0.0f) {

            tmp = this->unk_1A0[0].y;
            if (tmp > 0) {
                tmp += 0xFFFF0000;
            }
            this->unk_1E8 = tmp;

            this->unk_1EC = 0.0f;
            this->unk_19F = 5;
        }
    }
    if (this->unk_19F == 5) {
        tmp = this->unk_1A0[0].y;
        if (tmp > 0) {
            tmp += 0xFFFF0001;
        }
        this->unk_1E8 = tmp;
        tmpf1 = Math_SmoothScaleMaxMinF(&this->unk_1E8, this->unk_1EC, 0.8f, 3640.0f, 0.001f);
        this->unk_1A0[0].y = this->unk_1E8;
        if (tmpf1 == 0.0f) {
            this->unk_1E8 = this->unk_1B4[0].y - 1.0f;
            this->unk_1EC = 0;
            this->unk_1A0[0].y = 0;
            this->unk_200 = 0;
            this->unk_1F0 = this->unk_1B4[0].x - 1.0f;
            this->unk_1F4 = 0;
            this->unk_1F8 = 0.5f;
            this->unk_1FC = 0;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALKID_ATTACK);
            this->unk_19F = 6;
        }
    }
    if (this->unk_19F == 6) {
        tmpf1 = Math_SmoothScaleMaxMinF(&this->unk_1E8, this->unk_1EC, 0.8f, 0.1f, 0.001f);
        tmpf2 = Math_SmoothScaleMaxMinF(&this->unk_1F0, this->unk_1F4, 0.8f, 0.1f, 0.001f);
        tmpf3 = Math_SmoothScaleMaxMinF(&this->unk_1F8, this->unk_1FC, 0.8f, 0.02f, 0.001f);
        this->unk_1B4[0].x = this->unk_1F0 + 1.0f;
        this->unk_1B4[0].y = this->unk_1E8 + 1.0f;
        this->unk_1B4[0].x += sinf((((this->unk_200 % 0xA) * 0.1f) * 360.0f) * 0.017453292f) * this->unk_1F8;
        this->unk_1B4[0].y += (sinf((((this->unk_200 % 0xA) * 0.1f) * 360.0f) * 0.017453292f) * this->unk_1F8);
        this->unk_200++;
        if ((tmpf1 == 0.0f) && (tmpf2 == 0.0f) && (tmpf3 == 0.0f)) {
            this->unk_19C = 0;
            this->actionFunc = func_80A4F734;
        }
    }
    if ((u16)this->unk_1A0[0].y < (u16)tmp2) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_STONE_ROLLING);
    }
}

void func_80A4F700(EnGs* this, GlobalContext* globalCtx) {
    if (this->unk_200-- <= 0) {
        Actor_Kill(&this->actor);
    }
}

void func_80A4F734(EnGs* this, GlobalContext* globalCtx) {
    if (!Flags_GetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F)) {
        func_80A4E470(this, globalCtx);
    }
}

void func_80A4F77C(EnGs* this) {
    static Vec3s D_80A4FE34 = { 0, 0, 0 };
    static Vec3f D_80A4FE3C = { 1.0f, 1.0f, 1.0f };
    s32 i;

    for (i = 0; i < 3; i++) {
        this->unk_1A0[i] = D_80A4FE34;
    }

    for (i = 0; i < 2; i++) {
        this->unk_1B4[i] = D_80A4FE3C;
    }

    this->unk_19C = 3;
}

void EnGs_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnGs* this = THIS;

    Actor_SetHeight(&this->actor, 23.0f);
    if (globalCtx) {};
    if (!(this->unk_19E & 0x10)) {
        if (globalCtx) {};
        if (this->unk_14C.base.acFlags & 2) {
            this->unk_19F = 0;
            this->unk_14C.base.acFlags &= ~2;

            switch (this->actor.colChkInfo.damageEffect) {
                case 15:
                    this->unk_19E |= 1;
                    func_80A4F77C(this);
                    this->actionFunc = func_80A4E910;
                    break;
                case 14:
                    this->unk_19E |= 1;
                    func_80A4F77C(this);
                    this->actionFunc = func_80A4EA08;
                    break;
                case 13:
                    this->unk_19E |= 1;
                    func_80A4F77C(this);
                    this->actionFunc = func_80A4EB3C;
                    break;
                case 12:
                    this->unk_19E |= 2;
                    func_80A4F77C(this);
                    this->actionFunc = func_80A4ED34;
                    break;
                case 11:
                    this->unk_19E |= 1;
                    func_80A4F77C(this);
                    this->actionFunc = func_80A4F13C;
                    break;
            }
        }
        Collider_CylinderUpdate(&this->actor, &this->unk_14C);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->unk_14C.base);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->unk_14C.base);
    }
    this->actionFunc(this, globalCtx);
    func_80A4E648(this, globalCtx);
}

void EnGs_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnGs* this = THIS;
    s32 tmp;
    u32 frames;

    if (!(this->unk_19E & 8)) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_gs.c", 1046);

        frames = globalCtx->gameplayFrames;
        func_80093D18(globalCtx->state.gfxCtx);
        Matrix_Push();
        if (this->unk_19E & 1) {
            Matrix_RotateY(this->unk_1A0[0].y * 0.0000958738f, MTXMODE_APPLY);
            Matrix_RotateX(this->unk_1A0[0].x * 0.0000958738f, MTXMODE_APPLY);
            Matrix_RotateZ(this->unk_1A0[0].z * 0.0000958738f, MTXMODE_APPLY);
            Matrix_Scale(this->unk_1B4[0].x, this->unk_1B4[0].y, this->unk_1B4[0].z, MTXMODE_APPLY);
            Matrix_RotateY(this->unk_1A0[1].y * 0.0000958738f, MTXMODE_APPLY);
            Matrix_RotateX(this->unk_1A0[1].x * 0.0000958738f, MTXMODE_APPLY);
            Matrix_RotateZ(this->unk_1A0[1].z * 0.0000958738f, MTXMODE_APPLY);
        }

        gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_gs.c", 1064),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_06000950);

        if (this->unk_19E & 4) {
            gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, this->flashColor.r, this->flashColor.g, this->flashColor.b,
                            this->flashColor.a);
        } else {
            gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, 255, 255, 255, 255);
        }

        gSPDisplayList(oGfxCtx->polyOpa.p++, D_060009D0);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_06000A60);

        Matrix_Pull();
        if (this->unk_19E & 2) {
            func_80093D84(globalCtx->state.gfxCtx);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(0.05f, -0.05f, 1.0f, MTXMODE_APPLY);

            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_gs.c", 1087),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(
                oGfxCtx->polyXlu.p++, 0x08,
                Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0, -frames * 0x14, 0x20, 0x80));
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 128, 128, 255, 255, 0, 255);
            gDPSetEnvColor(oGfxCtx->polyXlu.p++, 255, 0, 0, 0);
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_0404D4E0);
        }

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_gs.c", 1101);
    }
}
