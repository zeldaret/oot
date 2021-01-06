/*
 * File: z_en_dodojr.c
 * Overlay: ovl_En_Dodojr
 * Description: Baby Dodongo
 */

#include "z_en_dodojr.h"
#include "overlays/actors/ovl_En_Bom/z_en_bom.h"

#define FLAGS 0x00000005

#define THIS ((EnDodojr*)thisx)

void EnDodojr_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDodojr_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDodojr_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDodojr_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809F73AC(EnDodojr* this, GlobalContext* globalCtx);
void func_809F7BE4(EnDodojr* this, GlobalContext* globalCtx);
void func_809F74C4(EnDodojr* this, GlobalContext* globalCtx);
void func_809F758C(EnDodojr* this, GlobalContext* globalCtx);
void func_809F786C(EnDodojr* this, GlobalContext* globalCtx);
void func_809F799C(EnDodojr* this, GlobalContext* globalCtx);
void func_809F78EC(EnDodojr* this, GlobalContext* globalCtx);
void func_809F773C(EnDodojr* this, GlobalContext* globalCtx);
void func_809F77AC(EnDodojr* this, GlobalContext* globalCtx);
void func_809F784C(EnDodojr* this, GlobalContext* globalCtx);
void func_809F7AB8(EnDodojr* this, GlobalContext* globalCtx);
void func_809F7A00(EnDodojr* this, GlobalContext* globalCtx);
void func_809F7B3C(EnDodojr* this, GlobalContext* globalCtx);
void func_809F6A20(EnDodojr* this);
void func_809F7C48(EnDodojr* this, GlobalContext* globalCtx);
void func_809F768C(EnDodojr* this, GlobalContext* globalCtx);

extern AnimationHeader D_060004A0;
extern AnimationHeader D_060005F0;
extern AnimationHeader D_06000724;
extern AnimationHeader D_06000860;
extern AnimationHeader D_060009D4;
extern SkeletonHeader D_060020E0;

const ActorInit En_Dodojr_InitVars = {
    ACTOR_EN_DODOJR,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_DODOJR,
    sizeof(EnDodojr),
    (ActorFunc)EnDodojr_Init,
    (ActorFunc)EnDodojr_Destroy,
    (ActorFunc)EnDodojr_Update,
    (ActorFunc)EnDodojr_Draw,
};

u32 D_809F7EB0[] = {
    0x06110939, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x00080000, 0xFFC5FFFF,
    0x00000000, 0x01010100, 0x00120014, 0x00000000, 0x00000000,
};

u32 D_809F7EDC[] = {
    0x01000002,
    0x00190019,
    0xFF000000,
};

void EnDodojr_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnDodojr* this = THIS;

    ActorShape_Init(&this->actor.shape.rot.x, 0.0f, NULL, 18.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_060020E0, &D_060009D4, &this->jointTable, &this->morphTable, 15);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, D_809F7EB0);
    func_80061EFC(&this->actor.colChkInfo, DamageTable_Get(4), D_809F7EDC);

    this->actor.naviEnemyId = 0xE;
    this->actor.flags &= ~1;

    Actor_SetScale(&this->actor, 0.02f);

    this->actionFunc = func_809F73AC;
}

void EnDodojr_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnDodojr* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_809F64D0(EnDodojr* this) {
    Audio_PlayActorSound2(&this->actor, NA_SE_IT_BOMB_EXPLOSION);
    func_8003426C(&this->actor, 0x4000, 200, 0, 8);
}

void func_809F6510(EnDodojr* this, GlobalContext* globalCtx, s32 count) {
    Color_RGBA8 prim = { 170, 130, 90, 255 };
    Color_RGBA8 env = { 100, 60, 20, 0 };
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.3f, 0.0f };
    Vec3f pos;
    s16 angle = ((Rand_ZeroOne() - 0.5f) * 65536.0f);
    s32 i;

    pos.y = this->unk_1F0.y;

    for (i = count; i >= 0; i--, angle += (s16)(0x10000 / count)) {
        accel.x = (Rand_ZeroOne() - 0.5f) * 4.0f;
        accel.z = (Rand_ZeroOne() - 0.5f) * 4.0f;

        pos.x = (Math_SinS(angle) * 22.0f) + this->unk_1F0.x;
        pos.z = (Math_CosS(angle) * 22.0f) + this->unk_1F0.z;

        func_8002836C(globalCtx, &pos, &velocity, &accel, &prim, &env, 120, 40, 10);
    }
}

void func_809F6730(EnDodojr* this, GlobalContext* globalCtx, Vec3f* arg2) {
    Color_RGBA8 prim = { 170, 130, 90, 255 };
    Color_RGBA8 env = { 100, 60, 20, 0 };
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.3f, 0.0f };
    Vec3f pos;
    s16 angle = ((Rand_ZeroOne() - 0.5f) * 65536.0f);

    pos.y = this->actor.groundY;

    accel.x = (Rand_ZeroOne() - 0.5f) * 2;
    accel.z = (Rand_ZeroOne() - 0.5f) * 2;

    pos.x = (Math_SinS(angle) * 11.0f) + arg2->x;
    pos.z = (Math_CosS(angle) * 11.0f) + arg2->z;

    func_8002836C(globalCtx, &pos, &velocity, &accel, &prim, &env, 100, 60, 8);
}

s32 func_809F68B0(EnDodojr* this, GlobalContext* globalCtx) {
    if (this->actor.velocity.y >= 0.0f) {
        return 0;
    }

    if (this->unk_1FC == 0) {
        return 0;
    }

    if ((this->actor.bgCheckFlags & 1) != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        this->unk_1F0 = this->actor.posRot.pos;
        func_809F6510(this, globalCtx, 10);
        this->actor.velocity.y = 10.0f / (4 - this->unk_1FC);
        this->unk_1FC--;

        if (this->unk_1FC == 0) {
            this->actor.velocity.y = 0.0f;
            return 1;
        }
    }

    return 0;
}

void func_809F6994(EnDodojr* this) {
    f32 lastFrame = Animation_GetLastFrame(&D_06000860);

    Animation_Change(&this->skelAnime, &D_06000860, 1.8f, 0.0f, lastFrame, 1, -10.0f);
    this->actor.velocity.y = 0.0f;
    this->actor.speedXZ = 2.6f;
    this->actor.gravity = -0.8f;
}

void func_809F6A20(EnDodojr* this) {
    f32 lastFrame = Animation_GetLastFrame(&D_060004A0);

    Animation_Change(&this->skelAnime, &D_060004A0, 1.0f, 0.0f, lastFrame, 2, -10.0f);
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.x = 0.0f;
    this->actor.velocity.z = 0.0f;
    this->actor.gravity = -0.8f;

    if (this->unk_1FC == 0) {
        this->unk_1FC = 3;
        this->actor.velocity.y = 10.0f;
    }
}

void func_809F6AC4(EnDodojr* this) {
    f32 lastFrame = Animation_GetLastFrame(&D_060005F0);

    Animation_Change(&this->skelAnime, &D_060005F0, 1.0f, 0.0f, lastFrame, 0, 0.0f);
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = -0.8f;
}

void func_809F6B38(EnDodojr* this) {
    f32 lastFrame = Animation_GetLastFrame(&D_06000724);

    Animation_Change(&this->skelAnime, &D_06000724, 1.0f, 0.0f, lastFrame, 0, -10.0f);
    this->actor.gravity = -0.8f;
    this->unk_1FC = 3;
    this->actor.velocity.y = 10.0f;
}

void func_809F6BBC(EnDodojr* this) {
    this->actor.shape.shadowDrawFunc = NULL;
    this->actor.flags &= ~1;
    this->actor.initPosRot.pos = this->actor.posRot.pos;
    this->actor.speedXZ = 0.0f;
    this->actor.gravity = -0.8f;
    this->unk_202 = 30;
    this->unk_1F0 = this->actor.posRot.pos;
}

void func_809F6C24(EnDodojr* this) {
    Animation_Change(&this->skelAnime, &D_06000724, 1.0f, 8.0f, 12.0f, 2, 0.0f);
    Audio_PlayActorSound2(this, NA_SE_EN_DODO_M_EAT);
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.x = 0.0f;
    this->actor.velocity.z = 0.0f;
    this->actor.gravity = -0.8f;
}

s32 func_809F6CA4(EnDodojr* this, GlobalContext* globalCtx) {
    Actor* bomb;
    Vec3f unkVec = { 99999.0f, 99999.0f, 99999.0f };
    s32 retVar = 0;
    f32 xDist;
    f32 yDist;
    f32 zDist;

    bomb = globalCtx->actorCtx.actorList[ACTORTYPE_EXPLOSIVES].first;
    this->bomb = NULL;

    while (bomb != NULL) {
        if ((bomb->params != 0) || (bomb->parent != NULL) || (bomb->update == NULL)) {
            bomb = bomb->next;
            continue;
        }

        if (bomb->id != ACTOR_EN_BOM) {
            bomb = bomb->next;
            continue;
        }

        xDist = bomb->posRot.pos.x - this->actor.posRot.pos.x;
        yDist = bomb->posRot.pos.y - this->actor.posRot.pos.y;
        zDist = bomb->posRot.pos.z - this->actor.posRot.pos.z;

        if ((fabsf(xDist) >= fabsf(unkVec.x)) || (fabsf(yDist) >= fabsf(unkVec.y)) ||
            (fabsf(zDist) >= fabsf(unkVec.z))) {
            bomb = bomb->next;
            continue;
        }

        this->bomb = bomb;
        unkVec = bomb->posRot.pos;
        retVar = 1;
        bomb = bomb->next;
    }

    return retVar;
}

s32 func_809F6DD0(EnDodojr* this) {
    if (this->bomb == NULL) {
        return 0;
    } else if (this->bomb->parent != NULL) {
        return 0;
    } else if (Math_Vec3f_DistXYZ(&this->actor.posRot, &this->bomb->posRot.pos) > 30.0f) {
        return 0;
    } else {
        this->bomb->parent = this;
        return 1;
    }
}

Vec3f D_809F7F34[] = {
    { 0.0f, 210.0f, 60.0f },
    { 270.0f, 120.0f, 330.0f },
    { 180.0f, 30.0f, 240.0f },
    { 90.0f, 300.0f, 150.0f },
};
void func_809F6E54(EnDodojr* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dodojr/func_809F6E54.s")

s32 func_809F706C(EnDodojr* this) {
    if (this->actor.xzDistToLink > 40.0f) {
        return 0;
    } else {
        return 1;
    }
}

void func_809F709C(EnDodojr* this) {
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_DEAD);
    this->actor.flags &= ~1;
    func_809F6A20(this);
    this->actionFunc = func_809F7AB8;
}

s32 func_809F70E8(EnDodojr* this, GlobalContext* globalCtx) {
    if ((this->actionFunc == func_809F773C) || (this->actionFunc == func_809F77AC) ||
        (this->actionFunc == func_809F784C) || (this->actionFunc == func_809F7A00) ||
        (this->actionFunc == func_809F7AB8) || (this->actionFunc == func_809F7B3C) ||
        (this->actionFunc == func_809F7BE4)) {
        return 0;
    }

    if (globalCtx->actorCtx.unk_02 != 0) {
        if (this->actionFunc != func_809F73AC) {
            if (this->actionFunc == func_809F74C4) {
                this->actor.shape.shadowDrawFunc = ActorShadow_DrawFunc_Circle;
            }

            func_809F709C(this);
        }
        return 0;
    }

    if (!(this->collider.base.acFlags & 2)) {
        return 0;
    } else {
        this->collider.base.acFlags &= ~2;

        if ((this->actionFunc == func_809F73AC) || (this->actionFunc == func_809F74C4)) {
            this->actor.shape.shadowDrawFunc = ActorShadow_DrawFunc_Circle;
        }

        if ((this->actor.colChkInfo.damageEffect == 0) && (this->actor.colChkInfo.damage != 0)) {
            func_80032C7C(globalCtx, &this->actor);
            this->unk_200 = 2;
            this->actionFunc = func_809F7C48;
            return 1;
        }

        if ((this->actor.colChkInfo.damageEffect == 1) && (this->actionFunc != func_809F78EC) &&
            (this->actionFunc != func_809F786C)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
            this->unk_1FE = 120;
            func_8003426C(&this->actor, 0, 200, 0, 120);
            func_809F6A20(this);
            this->actionFunc = func_809F786C;
        }

        return 0;
    }
}

void func_809F72A4(EnDodojr* this, GlobalContext* globalCtx) {
    Collider_CylinderUpdate(&this->actor, &this->collider);

    if ((this->actionFunc != func_809F73AC) && (this->actionFunc != func_809F7BE4)) {
        if ((this->actionFunc == func_809F74C4) || (this->actionFunc == func_809F758C) ||
            (this->actionFunc == func_809F799C)) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }

        if ((this->actionFunc == func_809F74C4) || (this->actionFunc == func_809F758C) ||
            (this->actionFunc == func_809F786C) || (this->actionFunc == func_809F78EC) ||
            (this->actionFunc == func_809F799C)) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }

        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

void func_809F73AC(EnDodojr* this, GlobalContext* globalCtx) {
    f32 lastFrame = Animation_GetLastFrame(&D_06000860);
    Player* player = PLAYER;
    f32 dist;

    if (!(this->actor.xzDistToLink >= 320.0f)) {
        dist = this->actor.posRot.pos.y - player->actor.posRot.pos.y;

        if (!(dist >= 40.0f)) {
            Animation_Change(&this->skelAnime, &D_06000860, 1.8f, 0.0f, lastFrame, 1, -10.0f);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_UP);
            this->actor.posRot.pos.y -= 60.0f;
            this->actor.flags |= 1;
            this->actor.posRot.rot.x -= 0x4000;
            this->actor.shape.rot.x = this->actor.posRot.rot.x;
            this->unk_1F0 = this->actor.posRot.pos;
            this->unk_1F0.y = this->actor.groundY;
            this->actionFunc = func_809F74C4;
        }
    }
}

void func_809F74C4(EnDodojr* this, GlobalContext* globalCtx) {
    f32 sp2C;

    Math_SmoothStepToS(&this->actor.shape, 0, 4, 0x3E8, 0x64);
    sp2C = this->actor.shape.rot.x;
    sp2C /= 16384.0f;
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y + (60.0f * sp2C);
    func_809F6510(this, globalCtx, 3);

    if (sp2C == 0.0f) {
        this->actor.shape.shadowDrawFunc = ActorShadow_DrawFunc_Circle;
        this->actor.posRot.rot.x = this->actor.shape.rot.x;
        this->actor.speedXZ = 2.6f;
        this->actionFunc = func_809F758C;
    }
}

void func_809F758C(EnDodojr* this, GlobalContext* globalCtx) {
    func_8002D868(&this->actor);
    func_809F6730(this, globalCtx, &this->actor.posRot.pos);

    if (DECR(this->unk_204) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_MOVE);
        this->unk_204 = 5;
    }

    if (func_809F6DD0(this) != 0) {
        func_809F6C24(this);
        this->actionFunc = func_809F768C;
        return;
    }

    func_809F6E54(this, globalCtx);

    if (func_809F706C(this) != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_CRY);
        func_809F6B38(this);
        this->actionFunc = func_809F799C;
    }

    if (this->actor.bgCheckFlags & 8) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_DOWN);
        func_809F6BBC(this);
        this->actionFunc = func_809F7A00;
    }
}

void func_809F768C(EnDodojr* this, GlobalContext* globalCtx) {
    EnBom* bomb;

    if (((s16)this->skelAnime.curFrame - 8) < 4) {
        bomb = (EnBom*)this->bomb;
        bomb->timer++;
        this->bomb->posRot.pos = this->unk_1E4;
    } else {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_K_DRINK);
        Actor_Kill(this->bomb);
        this->unk_202 = 24;
        this->unk_1FC = 0;
        this->actionFunc = func_809F773C;
    }
}

void func_809F773C(EnDodojr* this, GlobalContext* globalCtx) {
    if (DECR(this->unk_202) == 0) {
        func_809F64D0(this);
        this->actor.flags &= ~1;
        func_809F6A20(this);
        this->actionFunc = func_809F77AC;
    }
}

void func_809F77AC(EnDodojr* this, GlobalContext* globalCtx) {
    this->unk_208 = 1.2f;
    this->unk_208 *= ((f32)this->actor.dmgEffectTimer / 8);
    func_8002D868(&this->actor);

    if (func_809F68B0(this, globalCtx) != 0) {
        this->unk_202 = 60;
        func_809F6AC4(this);
        this->unk_1FC = 7;
        this->actionFunc = func_809F784C;
    }
}

void func_809F784C(EnDodojr* this, GlobalContext* globalCtx) {
    func_809F7B3C(this, globalCtx);
}

void func_809F786C(EnDodojr* this, GlobalContext* globalCtx) {
    func_8002D868(&this->actor);

    if (func_809F68B0(this, globalCtx) != 0) {
        func_809F6AC4(this);
        this->actionFunc = func_809F78EC;
    }

    Math_SmoothStepToS(&this->actor.shape.rot.y, 0, 4, 1000, 10);
    this->actor.posRot.rot.x = this->actor.shape.rot.x;
    this->actor.dmgEffectTimer = this->unk_1FE;
}

void func_809F78EC(EnDodojr* this, GlobalContext* globalCtx) {
    if (DECR(this->unk_1FE) != 0) {
        if (this->unk_1FE < 30) {
            if ((this->unk_1FE & 1) != 0) {
                this->actor.posRot.pos.x += 1.5f;
                this->actor.posRot.pos.z += 1.5f;
            } else {
                this->actor.posRot.pos.x -= 1.5f;
                this->actor.posRot.pos.z -= 1.5f;
            }

            return;
        }
    } else {
        func_809F6994(this);
        this->actionFunc = func_809F758C;
    }
}

void func_809F799C(EnDodojr* this, GlobalContext* globalCtx) {
    this->actor.flags |= 0x1000000;
    func_8002D868(&this->actor);

    if (func_809F68B0(this, globalCtx) != 0) {
        func_809F6994(this);
        this->actionFunc = func_809F758C;
    }
}

void func_809F7A00(EnDodojr* this, GlobalContext* globalCtx) {
    f32 tmp;

    Math_SmoothStepToS(&this->actor.shape.rot.x, 0x4000, 4, 1000, 100);

    if (DECR(this->unk_202) != 0) {
        tmp = (30 - this->unk_202) / 30.0f;
        this->actor.posRot.pos.y = this->actor.initPosRot.pos.y - (60.0f * tmp);
    } else {
        Actor_Kill(&this->actor);
    }

    func_809F6510(this, globalCtx, 3);
}

void func_809F7AB8(EnDodojr* this, GlobalContext* globalCtx) {
    func_8002D868(this);
    Math_SmoothStepToS(&this->actor.shape.rot.y, 0, 4, 1000, 10);
    this->actor.posRot.rot.x = this->actor.shape.rot.x;

    if (func_809F68B0(this, globalCtx) != 0) {
        this->unk_202 = 60;
        func_809F6AC4(this);
        this->unk_1FC = 7;
        this->actionFunc = func_809F7B3C;
    }
}

void func_809F7B3C(EnDodojr* this, GlobalContext* globalCtx) {
    EnBom* bomb;

    if (this->unk_1FC != 0) {
        if (this->actor.dmgEffectTimer == 0) {
            func_8003426C(&this->actor, 0x4000, 200, 0, this->unk_1FC);
            this->unk_1FC--;
        }
    } else {
        bomb = (EnBom*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOM, this->actor.posRot.pos.x,
                                   this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);

        if (bomb != NULL) {
            bomb->timer = 0;
        }

        this->unk_202 = 8;
        this->actionFunc = func_809F7BE4;
    }
}

void func_809F7BE4(EnDodojr* this, GlobalContext* globalCtx) {
    if (DECR(this->unk_202) == 0) {
        Item_DropCollectibleRandom(globalCtx, NULL, &this->actor.posRot.pos, 0x40);
        Actor_Kill(&this->actor);
    }
}

void func_809F7C48(EnDodojr* this, GlobalContext* globalCtx) {
    if (DECR(this->unk_200) == 0) {
        func_809F709C(this);
    }
}

void EnDodojr_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnDodojr* this = THIS;

    SkelAnime_Update(&this->skelAnime);
    Actor_MoveForward(&this->actor);
    func_809F70E8(this, globalCtx);

    if (this->actionFunc != func_809F73AC) {
        func_8002E4B4(globalCtx, &this->actor, this->collider.dim.radius, this->collider.dim.height, 0.0f, 5);
    }

    this->actionFunc(this, globalCtx);
    Actor_SetHeight(&this->actor, 10.0f);
    func_809F72A4(this, globalCtx);
}

s32 func_809F7D50(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnDodojr* this = THIS;
    Vec3f D_809F7F64[] = { 480.0f, 620.0f, 0.0f };

    if (limbIndex == 1) {
        Matrix_Scale((this->unk_208 * 0.5f) + 1.0f, this->unk_208 + 1.0f, (this->unk_208 * 0.5f) + 1.0f, 1);
    }

    if (limbIndex == 4) {
        Matrix_MultVec3f(&D_809F7F64, &this->unk_1E4);
    }

    return 0;
}

void func_809F7DFC(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
}

void EnDodojr_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnDodojr* this = THIS;

    if ((this->actionFunc != func_809F73AC) && (this->actionFunc != func_809F7BE4)) {
        func_80093D18(globalCtx->state.gfxCtx);
        SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, func_809F7D50, func_809F7DFC,
                          &this->actor);
    }
}
