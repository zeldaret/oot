/*
 * File: z_boss_mo.c
 * Overlay: ovl_Boss_Mo
 * Description: Morpha
 */

#include "z_boss_mo.h"

#define FLAGS 0x00000035

#define THIS ((BossMo*)thisx)

#define WATER_LEVEL globalCtx->colCtx.stat.colHeader->waterBoxes[0].unk_02

void BossMo_Init(Actor* thisx, GlobalContext* globalCtx);
void BossMo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void func_80922D30(Actor* thisx, GlobalContext* globalCtx);
void BossMo_Update(Actor* thisx, GlobalContext* globalCtx);
void func_80924228(Actor* thisx, GlobalContext* globalCtx);
void BossMo_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8091BB00(s32 arg0, s32 arg1, s32 arg2);
f32 func_8091BB1C(void);
s32 func_8091BC40(Vec3f* pos, f32 margin);

void func_8091BD38(BossMoParticle* particle, Vec3f* pos, f32 scale, f32 val2, s16 val3, s16 partnum, u8 type);
void func_8091BE5C(s16 type, BossMoParticle* particle, Vec3f* pos, Vec3f* vel, f32 scale);
void func_8091BF38(BossMoParticle* particle, Vec3f* pos, f32 scale);
void func_8091BFFC(BossMoParticle* particle, Vec3f* pos, Vec3f* vel, Vec3f* accel, f32 scale, Vec3f* vec4);

void func_8091C4E0(BossMo* this, GlobalContext* globalCtx);
void func_8091C538(BossMo* this, GlobalContext* globalCtx);
void func_8091F2FC(BossMo* this, GlobalContext* globalCtx);
void func_8091F5A8(BossMo* this, GlobalContext* globalCtx);
void func_809206C4(BossMo* this, GlobalContext* globalCtx);
void func_80921280(BossMo* this, GlobalContext* globalCtx);
void func_809216D0(BossMo* this, GlobalContext* globalCtx);

void func_809237C4(BossMo* this, s32 item, ColliderJntSph* collider1, Vec3f* center);
void func_80923870(BossMo* this, GlobalContext* globalCtx);
void func_80923FDC(BossMo* this, GlobalContext* globalCtx);
void func_80924D70(BossMo* this, GlobalContext* globalCtx);
void func_80925480(BossMoParticle* particle, GlobalContext* globalCtx);

void func_80925C18(void);

extern Gfx D_0401A0B0[];
extern Gfx D_040254B0[];
extern Gfx D_04051DB0[];
extern Gfx D_06000140[];
extern Gfx D_06000F20[];
extern Gfx D_06000F70[];
extern Gfx D_06000FC8[];
extern UNK_TYPE D_06001010;
extern Gfx D_06004C50[];
extern Gfx D_06006700[];
extern Gfx D_06006838[];
extern Gfx D_06007C00[];
extern UNK_PTR D_801305D0;

const ActorInit Boss_Mo_InitVars = {
    ACTOR_BOSS_MO,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_MO,
    sizeof(BossMo),
    (ActorFunc)BossMo_Init,
    (ActorFunc)BossMo_Destroy,
    (ActorFunc)BossMo_Update,
    (ActorFunc)BossMo_Draw,
};

BossMo* D_80925CD0 = NULL;
BossMo* D_80925CD4 = NULL;
BossMo* D_80925CD8 = NULL;

static f32 D_80925CDC[41] = { 15.0f, 12.0f, 9.0f, 6.5f, 4.8f, 4.0f, 3.4f, 3.1f, 3.0f, 3.1f, 3.2f, 3.4f, 3.6f, 3.8f,
                              4.0f,  4.6f,  5.1f, 5.5f, 6.1f, 6.6f, 7.3f, 7.7f, 8.4f, 8.5f, 8.7f, 8.8f, 8.8f, 8.7f,
                              8.6f,  8.3f,  8.2f, 8.1f, 7.2f, 6.7f, 5.9f, 4.9f, 2.7f, 0.0f, 0.0f, 0.0f, 0.0f };

static ColliderJntSphItemInit D_80925D80[19] = {
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 0, { { 0, 0, 0 }, 0 }, 100 },
    },
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 1, { { 0, 0, 0 }, 0 }, 100 },
    },
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 2, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 3, { { 0, 0, 0 }, 24 }, 100 },
    },
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 4, { { 0, 0, 0 }, 22 }, 100 },
    },
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 5, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 6, { { 0, 0, 0 }, 18 }, 100 },
    },
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 7, { { 0, 0, 0 }, 16 }, 100 },
    },
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 8, { { 0, 0, 0 }, 14 }, 100 },
    },
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 9, { { 0, 0, 0 }, 12 }, 100 },
    },
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 10, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 11, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 12, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 13, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 14, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 15, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 16, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 17, { { 0, 0, 0 }, 10 }, 100 },
    },
    {
        { 0x04, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 18, { { 0, 0, 0 }, 10 }, 100 },
    },
};

static ColliderJntSphInit D_8092602C = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x09, 0x10, COLSHAPE_JNTSPH },
    19,
    D_80925D80,
};

static ColliderCylinderInit D_8092603C = {
    { COLTYPE_UNK3, 0x11, 0x09, 0x09, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFDFFFFF, 0x00, 0x00 }, 0x01, 0x05, 0x01 },
    { 20, 40, -20, { 0, 0, 0 } },
};

static BossMoParticle D_80927AC0[300];
static s32 D_8092C5C0;
static s32 D_8092C5C4;
static s32 D_8092C5C8;

void func_8091BB00(s32 arg0, s32 arg1, s32 arg2) {
    D_8092C5C0 = arg0;
    D_8092C5C4 = arg1;
    D_8092C5C8 = arg2;
}

f32 func_8091BB1C(void) {
    f32 temp_f2;

    D_8092C5C0 = (D_8092C5C0 * 0xAB) % 0x763D;
    D_8092C5C4 = (D_8092C5C4 * 0xAC) % 0x7663;
    D_8092C5C8 = (D_8092C5C8 * 0xAA) % 0x7673;

    temp_f2 = (D_8092C5C0 / 30269.0f) + (D_8092C5C4 / 30307.0f) + (D_8092C5C8 / 30323.0f);
    while (temp_f2 >= 1.0f) {
        temp_f2 -= 1.0f;
    }
    return fabsf(temp_f2);
}

s32 func_8091BC40(Vec3f* pos, f32 margin) {
    if (450.0f - margin <= fabsf(pos->x)) {
        return 1;
    }
    if (450.0f - margin <= fabsf(pos->z)) {
        return 1;
    }
    if ((fabsf(pos->x - 180.0f) < 90.0f + margin) || (fabsf(pos->x - -180.0f) < 90.0f + margin)) {
        if (fabsf(pos->z - 180.0f) < 90.0f + margin) {
            return 1;
        }
        if (fabsf(pos->z - -180.0f) < 90.0f + margin) {
            return 1;
        }
    }
    return 0;
}

void func_8091BD38(BossMoParticle* particle, Vec3f* pos, f32 scale, f32 val2, s16 val3, s16 partnum, u8 type) {
    static Vec3f D_80926068 = { 0.0f, 0.0f, 0.0f };
    s16 i;

    for (i = 0; i < partnum; i++, particle++) {
        if (particle->type == 0) {
            particle->stopTimer = 0;
            particle->type = type;
            particle->pos = *pos;
            particle->vel = D_80926068;
            particle->accel = D_80926068;
            particle->scale = scale * 0.0025f;
            particle->unk_34 = val2 * 0.0025f;
            if (300.0f < scale) {
                particle->opacity = 0;
                particle->unk_2E = val3;
                particle->unk_2C = 0;
                particle->unk_38 = (particle->unk_34 - particle->scale) * 0.05f;
            } else {
                particle->opacity = val3;
                particle->unk_2C = 1;
                particle->unk_38 = (particle->unk_34 - particle->scale) * 0.1f;
            }
            return;
        }
    }
}

void func_8091BE5C(s16 type, BossMoParticle* particle, Vec3f* pos, Vec3f* vel, f32 scale) {
    s16 i;
    Vec3f sp00 = { 0.0f, -1.0f, 0.0f };

    for (i = 0; i < 290; i++, particle++) {
        if (particle->type == 0) {
            particle->type = type;
            particle->pos = *pos;
            particle->vel = *vel;
            particle->accel = sp00;
            if (type == 5) {
                particle->accel.y = 0.0f;
            }
            particle->scale = scale;
            particle->unk_38 = 1.0f;
            particle->stopTimer = 0;
            return;
        }
    }
}

void func_8091BF38(BossMoParticle* particle, Vec3f* pos, f32 scale) {
    s16 i;
    Vec3f sp00 = { 0.0f, 0.0f, 0.0f };

    for (i = 0; i < 290; i++, particle++) {
        if (particle->type == 0) {
            particle->type = 3;
            particle->stopTimer = 2;
            particle->pos = *pos;
            particle->vel = sp00;
            particle->accel = sp00;
            particle->scale = scale;
            particle->unk_38 = 1.0f;
            return;
        }
    }
}

void func_8091BFFC(BossMoParticle* particle, Vec3f* pos, Vec3f* vel, Vec3f* accel, f32 scale, Vec3f* vec4) {
    s16 i;

    for (i = 0; i < 280; i++, particle++) {
        if (particle->type == 0) {
            particle->type = 7;
            particle->stopTimer = 0;
            particle->pos = *pos;
            particle->vel = *vel;
            particle->accel = *accel;
            particle->scale = scale;
            particle->unk_34 = 0.0f;
            particle->unk_3C = vec4;
            if (vec4 == NULL) {
                particle->opacity = 0xFF;
            } else {
                particle->opacity = 0;
            }
            particle->timer1 = 0;
            return;
        }
    }
}

static s16 D_8092608C[41] = { 0, 0, 0, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  2,  4, 8, 8, 8, 9, 9, 9,
                              9, 9, 9, 12, 15, 15, 15, 15, 15, 15, 15, 20, 20, 20, 0, 0, 0, 0, 0, 0 };
static s16 D_809260E0[41] = { 0, 0, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 0, 0, -5, -5, -5,
                              0, 5, 10, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 0, 0, 0, 0,  0 };
static s16 D_80926134[41] = { 0, 5, 6, 7, 8, 8, 7, 6, 6, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1,
                              0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };

static InitChainEntry D_80926188[4] = {
    ICHAIN_U8(unk_1F, 5, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 37, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 0, ICHAIN_STOP),
};

Vec3f D_80926198 = { 0.0f, 0.0f, 0.0f };

void BossMo_Init(Actor* thisx, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    BossMo* this = THIS;
    u16 i;

    Actor_ProcessInitChain(&this->actor, D_80926188);
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    if (this->actor.params != 0x64) {
        Flags_SetSwitch(globalCtx2, 0x14);
        D_80925CD0 = this;
        WATER_LEVEL = this->waterLevel = WATER_LEVEL;
        globalCtx2->unk_11D30[0] = 0xA0;
        globalCtx2->unk_11E10 = &D_80927AC0;
        for (i = 0; i < 300; i++) {
            D_80927AC0[i].type = 0;
        }
        this->actor.posRot.pos.x = 200.0f;
        this->actor.posRot.pos.y = WATER_LEVEL + 50.0f;
        this->unk_18C = 5.0f;
        this->drawActor = 1;
        this->actor.colChkInfo.health = 0x14;
        this->actor.colChkInfo.mass = 0;
        this->actor.params = 0;
        Actor_SetScale(&this->actor, 0.01f);
        Collider_InitCylinder(globalCtx2, &this->collider2);
        Collider_SetCylinder(globalCtx2, &this->collider2, &this->actor, &D_8092603C);
        if (Flags_GetClear(globalCtx2, globalCtx2->roomCtx.curRoom.num)) {
            Actor_Kill(&this->actor);
            Actor_SpawnAsChild(&globalCtx2->actorCtx, &this->actor, globalCtx2, ACTOR_DOOR_WARP1, 0.0f, -280.0f, 0.0f,
                               0, 0, 0, -1);
            Actor_Spawn(&globalCtx2->actorCtx, globalCtx2, ACTOR_ITEM_B_HEART, -200.0f, -280.0f, 0.0f, 0, 0, 0, 0);
            globalCtx2->unk_11D30[0] = 0xFF;
            WATER_LEVEL = -0x1F4;
        } else {
            if (gSaveContext.eventChkInf[7] & 0x10) {
                Audio_SetBGM(0x1B);
                this->tentMaxAngle = 5.0f;
                this->timers[0] = 50;
            } else {
                this->cutsceneState = 1;
                this->actionState = 0x14;
                this->actor.posRot.pos.x = 1000.0f;
                this->timers[0] = 60;
            }
            D_80925CD4 = (BossMo*)Actor_SpawnAsChild(&globalCtx2->actorCtx, &this->actor, globalCtx2, ACTOR_BOSS_MO,
                                                     this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                                                     this->actor.posRot.pos.z, 0, 0, 0, 0x64);
            this->actor.draw = func_80924228;
            this->actor.update = func_80922D30;
            Actor_ChangeType(globalCtx2, &globalCtx2->actorCtx, &this->actor, 9);
        }
    } else {
        Actor_SetScale(&this->actor, 0.01f);
        func_8091C4E0(this, globalCtx2);
        this->actor.colChkInfo.mass = 0xFF;
        WATER_LEVEL = -0x32;
        this->waterTexOpacity = 90.0f;
        this->actor.posRot.pos.y = WATER_LEVEL;
        this->actor.pos4 = this->targetPos = this->actor.posRot.pos;
        Collider_InitJntSph(globalCtx2, &this->collider1);
        Collider_SetJntSph(globalCtx2, &this->collider1, &this->actor, &D_8092602C, this->colliderItems);
        this->tentMaxAngle = 1.0f;
    }
}

void BossMo_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    BossMo* this = THIS;

    if (this->actor.params >= 0x64) {
        Collider_DestroyJntSph(globalCtx2, &this->collider1);
    } else {
        Collider_DestroyCylinder(globalCtx2, &this->collider2);
    }
}

void func_8091C4E0(BossMo* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8091C538;
    this->actionState = 10;
    this->timers[0] = 50 + (s16)Math_Rand_ZeroFloat(20.0f);
}

static u8 D_809261A4[21] = { 0, 1, 2, 3, 4, 15, 19, 5, 14, 16, 17, 18, 6, 13, 20, 7, 12, 11, 10, 9, 8 };

static Vec2f D_809261BC[21] = { { -360.0f, -360.0f }, { -180.0f, -360.0f }, { 0.0f, -360.0f }, { 180.0f, -360.0f },
                                { 360.0f, -360.0f },  { -360.0f, -180.0f }, { 0.0f, -180.0f }, { 360.0f, -180.0f },
                                { -360.0f, 0.0f },    { -180.0f, 0.0f },    { 0.0f, 0.0f },    { 180.0f, 0.0f },
                                { 360.0f, 0.0f },     { -360.0f, 180.0f },  { 0.0f, 180.0f },  { 360.0f, 180.0f },
                                { -360.0f, 360.0f },  { -180.0f, 360.0f },  { 0.0f, 360.0f },  { 180.0f, 360.0f },
                                { 360.0f, 360.0f } };

static f32 D_80926264[41] = { 3.56f, 3.25f, 2.96f, 2.69f, 2.44f, 2.21f, 2.0f, 1.81f, 1.64f, 1.49f, 1.36f,
                              1.25f, 1.16f, 1.09f, 1.04f, 1.01f, 1.0f,  1.0f, 1.0f,  1.0f,  1.0f,  1.0f,
                              1.0f,  1.0f,  1.0f,  1.0f,  1.0f,  1.0f,  1.0f, 1.0f,  1.0f,  1.0f,  0.98f,
                              0.95f, 0.9f,  0.8f,  0.6f,  1.0f,  1.0f,  1.0f, 1.0f };
static f32 D_80926308[41] = { 0.0f,      2.95804f,  4.123106f, 4.974937f, 5.656854f, 6.22495f,  6.708204f,
                              7.123903f, 7.483315f, 7.794229f, 8.062258f, 8.291562f, 8.485281f, 8.645808f,
                              8.774964f, 8.87412f,  8.944272f, 8.9861f,   9.0f,      8.9861f,   8.944272f,
                              8.87412f,  8.774964f, 8.645808f, 8.485281f, 8.291562f, 8.062258f, 7.794229f,
                              7.483315f, 7.123903f, 6.708204f, 6.22495f,  5.656854f, 4.974937f, 4.123106f,
                              2.95804f,  0.0f,      0.0f,      0.0f,      0.0f,      0.0f };

void func_8091C538(BossMo* this, GlobalContext* globalCtx) {
    s16 indS1;
    s16 sp1B4 = 0;
    s32 buttons;
    Player* player = PLAYER;
    s16 indS0;
    s16 indT5;
    Camera* camera1;
    Camera* camera2;
    BossMo* otherTent = (BossMo*)this->otherTent;
    f32 sp198;
    f32 sp194;
    f32 sp190;
    f32 sp18C;
    f32 sp188;
    f32 sp184;
    f32 sp180;
    f32 sp17C;
    s16 sp17A;
    s16 pad178;
    Vec3f sp16C;
    f32 rand_angle;
    f32 rand_f;
    f32 temp_f22;
    f32 temp_f24;
    f32 dx;
    f32 dy;
    f32 dz;
    f32 pad14C;
    f32 pad148;
    f32 pad144;
    Vec3f sp138;
    Vec3f sp12C;
    Vec3f sp120;
    f32 pad11C;
    f32 pad118;
    f32 pad114;
    f32 pad110;
    f32 pad10C;
    f32 pad108;
    Vec3f spFC;
    Vec3f spF0;
    BossMo** secondTent;
    Vec3f spE0;
    Vec3f spD4;
    Vec3f spC8;

    if (this->actionState < 0xCC) {
        this->actor.posRot.pos.y = WATER_LEVEL;
    }
    if ((this->actionState == 0) || (this->actionState >= 0xC8) || (this->actionState == 0x65) ||
        (this->actionState == 1) || (this->actionState == 5)) {
        if (this->actionState == 0) {
            if (D_80925CD0->cutsceneState != 0) {
                sp198 = 2000.0f;
                sp194 = 3000.0f;
                sp190 = 1000.0f;
                sp18C = 1500.0f;
                sp188 = 2500.0f;
                sp184 = 1000.0f;
                sp180 = 10.0f;
                sp17C = 10.0f;
            } else {
                sp198 = 2000.0f;
                sp194 = 3000.0f;
                sp190 = 1000.0f;
                sp18C = 1500.0f;
                sp188 = 2500.0f;
                sp184 = 1000.0f;
                sp180 = 20.0f;
                sp17C = 30.0f;
            }
        } else if (this->actionState == 1) {
            sp198 = 2500.0f;
            sp194 = -1000.0f;
            sp190 = 3000.0f;
            sp18C = 1500.0f;
            sp188 = 2500.0f;
            sp184 = 0.0;
            sp180 = 30.0f;
            sp17C = 60.0f;
            if (((this->unk_17C % 0x10) == 0) && (this->timers[0] < 30)) {
                func_800F4B58(&this->unk_1010, 0x38F2, &D_801305D0);
            }
        } else if (this->actionState == 5) {
            if (this->timers[0] > 40) {
                sp198 = 1300.0f;
                sp194 = -3200.0f;
                sp190 = 7000.0f;
                sp18C = 800.0f;
                sp188 = 2500.0f;
                sp184 = 5000.0f;
                sp180 = 30.0f;
                sp17C = 60.0f;
                if ((this->unk_17C % 0x20) == 0) {
                    func_800F4B58(&this->unk_1010, 0x38F2, &D_801305D0);
                    func_800AA000(0, 100, 5, 2);
                    func_8002F7DC(&player->actor, player->ageProperties->unk_92 + 0x6806);
                }
            } else {
                sp198 = 2000.0f;
                sp194 = -1000.0f;
                sp190 = 5000.0f;
                sp18C = 1500.0f;
                sp188 = 2500.0f;
                sp184 = 100.0f;
                sp180 = 70.0f;
                sp17C = 70.0f;
                if ((this->unk_17C % 0x10) == 0) {
                    func_800F4B58(&this->unk_1010, 0x38F2, &D_801305D0);
                    func_800AA000(0, 0xA0, 5, 4);
                    func_8002F7DC(&player->actor, player->ageProperties->unk_92 + 0x6806);
                }
            }
        } else if (this->actionState == 0x65) {
            sp198 = 1300.0f;
            sp194 = 3200.0f;
            sp190 = 7000.0f;
            sp18C = 800.0f;
            sp188 = 2500.0f;
            sp184 = 5000.0f;
            sp180 = 30.0f;
            sp17C = 30.0f;
        } else if (this->actionState >= 0xC8) {
            sp198 = -400.0f;
            sp194 = -3200.0f;
            sp190 = 0.0f;
            sp18C = 2300.0f;
            sp188 = 3200.0f;
            sp184 = 1000.0;
            sp180 = 30.0f;
            sp17C = 60.0f;
        }
        Math_SmoothScaleMaxF(&this->unk_190, sp198, 1.0f, sp180);
        Math_SmoothScaleMaxF(&this->unk_188, sp194, 1.0f, 30.0f);
        Math_SmoothScaleMaxF(&this->unk_18C, sp190, 1.0f, sp17C);
        Math_SmoothScaleMaxF(&this->unk_19C, sp18C, 1.0f, sp180);
        Math_SmoothScaleMaxF(&this->unk_194, sp188, 1.0f, 30.0f);
        Math_SmoothScaleMaxF(&this->unk_198, sp184, 1.0f, sp17C);
        this->tentAngle += (s16)this->unk_190;
        this->unk_170 += (s16)this->unk_19C;
    }
    switch (this->actionState) {
        case 10:
            this->actor.flags &= ~1;
            if (this == D_80925CD8) {
                this->actionState = 11;
                this->timers[0] = 70;
                this->actor.shape.rot.y = this->actor.yawTowardsLink;
            }
            break;
        case 11:
            this->drawActor = 1;
            this->baseBubblesTimer = 20;
            if (this->timers[0] < 20) {
                Math_SmoothScaleMaxF(&this->tentRippleSize, 0.15f, 0.5f, 0.01);
                Math_SmoothScaleMaxF(&this->baseOpacity, 150.0f, 1.0f, 5.0f);
                if (150.0f <= this->baseOpacity) {
                    this->actionState = 0;
                    this->timers[0] = 0x3C;
                }
            }
            if (this->timers[0] >= 0x33) {
                sp17A = 1;
            } else if (this->timers[0] >= 0x29) {
                sp17A = 3;
            } else if (this->timers[0] >= 0x1F) {
                sp17A = 5;
            } else if (this->timers[0] >= 0x15) {
                sp17A = 8;
            } else {
                sp17A = 3;
            }
            for (indS1 = 0; indS1 < sp17A; indS1++) {
                rand_f = Math_Rand_ZeroFloat(50.0f);
                rand_angle = Math_Rand_ZeroFloat(0x10000);
                sp16C = this->actor.posRot.pos;
                sp16C.x += sinf(rand_angle) * rand_f;
                sp16C.z += cosf(rand_angle) * rand_f;
                sp16C.y = WATER_LEVEL;
                func_8091BD38(globalCtx->unk_11E10, &sp16C, 40.0f, 110.0f, 0x50, 0x122, 1);
            }
            break;
        case 0:
        case 1:
            if (D_80925CD0->cutsceneState == 0) {
                func_80078914(&this->unk_1010, 0x30F0);
            }
            Math_SmoothScaleMaxF(&this->waterLevelMod, -5.0f, 0.1f, 0.4f);
            for (indS1 = 0; indS1 < 41; indS1++) {

                pad108 = Math_Sins(((s16)this->unk_188 * indS1) + this->tentAngle);
                temp_f22 = this->unk_18C * (indS1 * 0.025f * pad108);

                pad110 = Math_Sins(((s16)this->unk_194 * indS1) + this->unk_170);
                temp_f24 = this->unk_198 * (indS1 * 0.025f * pad110);

                Math_SmoothScaleMaxF(&this->tentStretch[indS1].y, this->unk_1A0 * 5.0f, 0.1f, 0.4f);
                if (indS1 == 28) {
                    sp1B4 = this->tentRot[indS1].x;
                }
                Math_SmoothScaleMaxS(&this->tentRot[indS1].x, temp_f22, 1.0f / this->tentMaxAngle, this->tentSpeed);
                Math_SmoothScaleMaxS(&this->tentRot[indS1].z, temp_f24, 1.0f / this->tentMaxAngle, this->tentSpeed);
            }
            this->targetPos = this->actor.posRot.pos;
            Math_SmoothScaleMaxF(&this->actor.speedXZ, 0.75f, 1.0f, 0.04f);
            if (this->actionState == 1) {
                Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink + this->unk_1CE, 0xA, 0x1F4);
            }
            Math_SmoothScaleMaxF(&this->unk_1A0, 1.0f, 0.5f, 0.04);
            if (D_80925CD0->cutsceneState != 0) {
                Math_SmoothScaleMaxF(&this->tentMaxAngle, 1.0f, 1.0f, 0.001f);
                Math_SmoothScaleMaxF(&this->tentSpeed, 240.0f, 1.0f, 3.0);
            } else {
                Math_SmoothScaleMaxF(&this->tentMaxAngle, 1.0f, 1.0f, 0.002f);
                Math_SmoothScaleMaxF(&this->tentSpeed, 400.0f, 1.0f, 6.0f);
            }
            if (this->actionState == 0) {
                if ((this->timers[0] == 0) &&
                    ((otherTent == NULL) || ((otherTent->actionState != 4) && (otherTent->actionState != 5)))) {
                    this->actionState = 1;
                    this->timers[0] = 50;
                    func_800F4BE8();
                    this->unk_1CE = Math_Rand_CenteredFloat(0x1000);
                }
            } else {
                pad178 = this->tentRot[28].x;
                if ((this->timers[0] == 0) && (pad178 >= 0) && (sp1B4 < 0)) {
                    this->actionState = 2;
                    if (this == D_80925CD4) {
                        this->timers[0] = 175;
                    } else {
                        this->timers[0] = 55;
                    }
                }
            }
            break;
        case 2:
            this->actor.flags |= 0x1000000;
            func_80078914(&this->unk_1010, 0x30F1);
            Math_SmoothScaleMaxF(&this->waterLevelMod, -5.0f, 0.1f, 0.4f);
            for (indS1 = 0; indS1 < 41; indS1++) {
                Math_SmoothScaleMaxF(&this->tentStretch[indS1].y,
                                     this->unk_1A0 * ((((0x28 - indS1) * 25.0f) / 100.0f) + 5.0f), 0.5f, 0.7f);
                Math_SmoothScaleMaxS(&this->tentRot[indS1].x, D_80926134[indS1] * 0x100, 1.0f / this->tentMaxAngle,
                                     this->tentSpeed);
                Math_SmoothScaleMaxS(&this->tentRot[indS1].z, 0, 1.0f / this->tentMaxAngle, this->tentSpeed);
            }
            this->targetPos = this->actor.posRot.pos;
            Math_SmoothScaleMaxF(&this->tentMaxAngle, 0.5f, 1.0f, 0.01);
            Math_SmoothScaleMaxF(&this->tentSpeed, 160.0f, 1.0f, 50.0f);
            if ((this->timers[0] == 0) || (this->linkHitTimer != 0)) {
                dx = this->tentPos[22].x - player->actor.posRot.pos.x;
                dy = this->tentPos[22].y - player->actor.posRot.pos.y;
                dz = this->tentPos[22].z - player->actor.posRot.pos.z;
                if ((fabsf(dy) < 50.0f) &&
                    ((otherTent == NULL) || ((otherTent->actionState != 4) && (otherTent->actionState != 5))) &&
                    (sqrtf(SQ(dx) + SQ(dy) + SQ(dz)) < 120.0f)) {

                    this->tentMaxAngle = .001f;
                    this->actionState = 3;
                    this->timers[0] = 0x28;
                    this->tentSpeed = 0;
                    if ((s16)(this->actor.shape.rot.y - this->actor.yawTowardsLink) >= 0) {
                        this->unk_176 = 0;
                    } else {
                        this->unk_176 = 1;
                    }
                } else {
                    this->tentMaxAngle = .001f;
                    this->actionState = 0;
                    this->tentSpeed = 0;
                    this->unk_190 = 0;
                    this->unk_19C = 0;
                    this->unk_18C = 0;
                    this->unk_198 = 0;
                    this->timers[0] = 0x1E;
                    if ((300.0f < fabsf(player->actor.posRot.pos.x - this->actor.posRot.pos.x)) ||
                        (player->actor.posRot.pos.y < WATER_LEVEL) ||
                        ((otherTent != NULL) && ((otherTent->actionState == 4) || (otherTent->actionState == 5))) ||
                        (300.0f < fabsf(player->actor.posRot.pos.z - this->actor.posRot.pos.z))) {

                        this->actionState = 0x65;
                        this->timers[0] = 0x4B;
                    }
                }
            }
            break;
        case 3:
        case 4:
            Math_SmoothScaleMaxF(&this->waterLevelMod, -5.0f, 0.1f, 0.4f);
            if (this->timers[0] == 0x7D) {
                this->tentMaxAngle = .001f;
                this->tentSpeed = 0;
            }
            for (indS1 = 0; indS1 < 41; indS1++) {
                if (this->timers[0] >= 0x1A) {
                    if (this->unk_176 == 0) {
                        Math_SmoothScaleMaxS(&this->tentRot[indS1].z, D_8092608C[indS1] * 0x100,
                                             1.0f / this->tentMaxAngle, this->tentSpeed);
                    } else {
                        Math_SmoothScaleMaxS(&this->tentRot[indS1].z, D_8092608C[indS1] * -0x100,
                                             1.0f / this->tentMaxAngle, this->tentSpeed);
                    }
                } else {
                    if (this->unk_176 == 0) {
                        Math_SmoothScaleMaxS(&this->tentRot[indS1].z, D_809260E0[indS1] * 0x100,
                                             1.0f / this->tentMaxAngle, this->tentSpeed);
                    } else {
                        Math_SmoothScaleMaxS(&this->tentRot[indS1].z, D_809260E0[indS1] * -0x100,
                                             1.0f / this->tentMaxAngle, this->tentSpeed);
                    }
                }
            }
            Math_SmoothScaleMaxF(&this->tentMaxAngle, 0.1f, 1.0f, 0.01f);
            Math_SmoothScaleMaxF(&this->tentSpeed, 960.0f, 1.0f, 30.0f);
            if (this->timers[0] >= 30) {
                Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 5, 0xC8);
            }
            if (this->actionState == 3) {
                if ((this->timers[0] >= 5) && (this->linkHitTimer != 0) && (player->actor.parent == NULL)) {
                    if (globalCtx->grabPlayer(globalCtx, player)) {
                        player->actor.parent = (Actor*)this;
                        this->actionState = 4;
                        func_80078914(&this->unk_1010, 0x38F3);
                        Audio_PlaySoundGeneral(0x6805, &player->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                               &D_801333E8);
                    } else {
                        this->actionState = 0;
                        this->tentMaxAngle = .001f;
                        this->tentSpeed = 0;
                        this->unk_198 = 0;
                        this->unk_18C = 0;
                        this->unk_19C = 0;
                        this->unk_190 = 0;
                        this->timers[0] = 30;
                    }
                }
                if (this->timers[0] == 4) {
                    this->actionState = 0;
                    this->tentMaxAngle = .001f;
                    this->tentSpeed = 0;
                    this->unk_198 = 0;
                    this->unk_18C = 0;
                    this->unk_19C = 0;
                    this->unk_190 = 0;
                    this->timers[0] = 30;
                }
            }
            if (this->actionState == 4) {
                player->unk_850 = 0xA;
                player->actor.speedXZ = player->actor.velocity.y = 0;
                Math_SmoothScaleMaxF(&player->actor.posRot.pos.x, this->grabPosRot.pos.x, 0.5f, 20.0f);
                Math_SmoothScaleMaxF(&player->actor.posRot.pos.y, this->grabPosRot.pos.y, 0.5f, 20.0f);
                Math_SmoothScaleMaxF(&player->actor.posRot.pos.z, this->grabPosRot.pos.z, 0.5f, 20.0f);
                Math_SmoothScaleMaxS(&player->actor.shape.rot.x, this->grabPosRot.rot.x, 2, 0x7D0);
                Math_SmoothScaleMaxS(&player->actor.shape.rot.y, this->grabPosRot.rot.y, 2, 0x7D0);
                Math_SmoothScaleMaxS(&player->actor.shape.rot.z, this->grabPosRot.rot.z, 2, 0x7D0);
                if (this->timers[0] == 0) {
                    camera1 = Gameplay_GetCamera(globalCtx, 0);
                    this->actionState = 5;
                    this->tentMaxAngle = .001f;
                    this->unk_190 = this->unk_19C = this->unk_18C = this->unk_198 = this->tentSpeed = 0;
                    this->timers[0] = 150;
                    this->mashCounter = 0;
                    this->unk_17C = 0x1E;
                    func_800F4BE8();
                    func_80064520(globalCtx, &globalCtx->csCtx);
                    this->cutsceneCamera = Gameplay_CreateSubCamera(globalCtx);
                    Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
                    Gameplay_ChangeCameraStatus(globalCtx, this->cutsceneCamera, 7);
                    this->unk_F68 = camera1->eye;
                    this->unk_F74 = camera1->at;
                    this->unk_1004 = Math_atan2f(this->unk_F68.x - this->actor.posRot.pos.x,
                                                 this->unk_F68.z - this->actor.posRot.pos.z);
                    this->unk_1008 = 0;
                    goto case_5; // I think this is genuinely the correct code
                }
            }
            break;
        case_5:
        case 5:
            if (this->timers[0] == 138) {
                ShrinkWindow_SetVal(0);
                Interface_ChangeAlpha(0xB);
            }
            if ((this->timers[0] % 8) == 0) {
                globalCtx->damagePlayer(globalCtx, -1);
            }
            Math_SmoothScaleMaxF(&this->waterLevelMod, -5.0f, 0.1f, 0.4f);
            sp1B4 = this->tentRot[15].x;
            buttons = globalCtx->state.input[0].press.in.button;
            if ((~(buttons | ~0x8000) == 0) || (~(buttons | ~0x4000) == 0)) {
                this->mashCounter++;
            }
            for (indS1 = 0; indS1 < 41; indS1++) {
                if (indS1 < 20) {
                    pad108 = Math_Sins(((s16)this->unk_188 * indS1) + this->tentAngle);
                    temp_f22 = this->unk_18C * (indS1 * 0.025f * pad108);
                    pad110 = Math_Sins(((s16)this->unk_194 * indS1) + this->unk_170);
                    temp_f24 = this->unk_198 * (indS1 * 0.025f * pad110);
                    pad114 = ((((40 - indS1) * 25.0f) / 100.0f) + 5.0f);
                    Math_SmoothScaleMaxF(&this->tentStretch[indS1].y, this->unk_1A0 * pad114, 0.1f, 0.1f);
                    Math_SmoothScaleMaxS(&this->tentRot[indS1].x, temp_f22, 1.0f / this->tentMaxAngle, this->tentSpeed);
                    Math_SmoothScaleMaxS(&this->tentRot[indS1].z, temp_f24, 1.0f / this->tentMaxAngle, this->tentSpeed);
                }
            }
            player->unk_850 = 0xA;
            player->actor.posRot.pos.x = this->grabPosRot.pos.x;
            player->actor.posRot.pos.y = this->grabPosRot.pos.y;
            player->actor.posRot.pos.z = this->grabPosRot.pos.z;
            player->actor.posRot.rot.x = player->actor.shape.rot.x = this->grabPosRot.rot.x;
            player->actor.posRot.rot.y = player->actor.shape.rot.y = this->grabPosRot.rot.y;
            player->actor.posRot.rot.z = player->actor.shape.rot.z = this->grabPosRot.rot.z;
            player->actor.velocity.y = 0;
            player->actor.speedXZ = 0;
            Math_SmoothScaleMaxF(&this->unk_1A0, 1.0f, 0.5f, 0.01);
            Math_SmoothScaleMaxF(&this->tentMaxAngle, 0.5f, 1.0f, 0.005f);
            Math_SmoothScaleMaxF(&this->tentSpeed, 480.0f, 1.0f, 10.0f);
            Math_SmoothScaleMaxF(&this->tentPulse, 0.3f, 0.5f, 0.03f);
            if ((this->mashCounter >= 40) || (this->timers[0] == 0)) {
                pad178 = this->tentRot[15].x;
                if ((pad178 < 0) && (sp1B4 >= 0)) {
                    this->actionState = 0x65;
                    this->invincibilityTimer = 50;
                    if ((Actor*)this == player->actor.parent) {
                        player->unk_850 = 0x65;
                        player->actor.parent = NULL;
                        player->csMode = 0;
                        if (this->timers[0] == 0) {
                            func_8002F6D4(globalCtx, &this->actor, 20.0f, this->actor.shape.rot.y + 0x8000, 10.0f, 0);
                        }
                    }
                    this->timers[0] = 75;
                }
            }
            if (this->cutsceneCamera != 0) {
                sp138.x = 0;
                sp138.y = 100.0f;
                sp138.z = 200.0f;
                this->unk_1004 -= this->unk_1008;
                Math_SmoothScaleMaxF(&this->unk_1008, 0.01, 1.0f, 0.002f);
                Matrix_RotateY(this->unk_1004, 0);
                Matrix_MultVec3f(&sp138, &sp12C);
                Math_SmoothScaleMaxF(&this->unk_F68.x, this->actor.posRot.pos.x + sp12C.x, 0.1f, 10.0f);
                Math_SmoothScaleMaxF(&this->unk_F68.y, this->actor.posRot.pos.y + sp12C.y, 0.1f, 10.0f);
                Math_SmoothScaleMaxF(&this->unk_F68.z, this->actor.posRot.pos.z + sp12C.z, 0.1f, 10.0f);
                Math_SmoothScaleMaxF(&this->unk_F74.x, player->actor.posRot.pos.x, 0.5f, 50.0f);
                Math_SmoothScaleMaxF(&this->unk_F74.y, player->actor.posRot.pos.y, 0.5f, 50.0f);
                Math_SmoothScaleMaxF(&this->unk_F74.z, player->actor.posRot.pos.z, 0.5f, 50.0f);
                func_800C04D8(globalCtx, this->cutsceneCamera, &this->unk_F74, &this->unk_F68);
            }
            break;
        case 100:
            func_80078914(&this->unk_1010, 0x2028);
            if ((Actor*)this == player->actor.parent) {
                player->unk_850 = 0x65;
                player->actor.parent = NULL;
                player->csMode = 0;
            }
            Math_SmoothScaleMaxF(&this->tentRippleSize, 0.15f, 0.5f, 0.01);
            if (this->meltIndex < 0x29) {
                for (indS0 = 0; indS0 < 10; indS0++) {
                    sp120 = this->tentPos[this->meltIndex];
                    sp120.x += Math_Rand_CenteredFloat(30.0f);
                    sp120.y += Math_Rand_CenteredFloat(30.0f);
                    sp120.z += Math_Rand_CenteredFloat(30.0f);
                    func_8091BF38(globalCtx->unk_11E10, &sp120, Math_Rand_ZeroFloat(0.1f) + .2f);
                }
                this->meltIndex++;
            }
            Math_SmoothScaleMaxF(&this->cutScale, 0.0, 1.0f, 0.2f);
            if ((this->meltIndex >= 0x29) || (this->timers[0] == 0)) {
                this->actionState = 0x65;
                this->timers[0] = 0x4B;
                this->tentMaxAngle = 0.005f;
                this->tentSpeed = 50.0f;
                this->unk_18C = 7000.0f;
                this->unk_198 = 5000.0f;
            }
            break;
        case 101:
            if (this->cutsceneCamera != 0) {
                Math_SmoothScaleMaxF(&this->unk_F74.x, player->actor.posRot.pos.x, 0.5f, 50.0f);
                Math_SmoothScaleMaxF(&this->unk_F74.y, player->actor.posRot.pos.y, 0.5f, 50.0f);
                Math_SmoothScaleMaxF(&this->unk_F74.z, player->actor.posRot.pos.z, 0.5f, 50.0f);
                func_800C04D8(globalCtx, this->cutsceneCamera, &this->unk_F74, &this->unk_F68);
                if (player->actor.posRot.pos.y <= 42.0f) {
                    camera2 = Gameplay_GetCamera(globalCtx, 0);
                    camera2->eye = this->unk_F68;
                    camera2->eyeNext = this->unk_F68;
                    camera2->at = this->unk_F74;
                    func_800C08AC(globalCtx, this->cutsceneCamera, 0);
                    this->cutsceneCamera = 0;
                    func_80064534(globalCtx, &globalCtx->csCtx);
                }
            }
            for (indS1 = 0; indS1 < 41; indS1++) {
                pad108 = Math_Sins(((s16)this->unk_188 * indS1) + this->tentAngle);
                temp_f22 = this->unk_1A0 * (indS1 * 0.025f * pad108 * this->unk_18C);
                pad110 = Math_Sins(((s16)this->unk_194 * indS1) + this->unk_170);
                temp_f24 = this->unk_1A0 * (indS1 * 0.025f * pad110 * this->unk_198);
                Math_SmoothScaleMaxF(&this->tentStretch[indS1].y, this->unk_1A0 * 5.0f, 0.5f, 0.2f);
                Math_SmoothScaleMaxS(&this->tentRot[indS1].x, temp_f22, 1.0f / this->tentMaxAngle, this->tentSpeed);
                Math_SmoothScaleMaxS(&this->tentRot[indS1].z, temp_f24, 1.0f / this->tentMaxAngle, this->tentSpeed);
            }
            Math_SmoothScaleMaxF(&this->unk_1A0, 0, 0.5f, 0.02f);
            Math_SmoothScaleMaxF(&this->tentMaxAngle, 0.5f, 1.0f, 0.01);
            Math_SmoothScaleMaxF(&this->tentSpeed, 320.0f, 1.0f, 50.0f);
            if (this->timers[0] == 0) {
                this->actor.flags &= ~1;
                Math_SmoothScaleMaxF(&this->baseOpacity, 0.0, 1.0f, 5.0f);
                for (indS1 = 0; indS1 < 40; indS1++) {
                    if (D_80925CD8->tentSpawnPos) {}
                    indT5 = Math_Rand_ZeroFloat(20.9f);
                    VEC_SET(spFC, 0, 0, 0);
                    indS0 = D_809261A4[indT5];
                    Matrix_RotateY((player->actor.posRot.rot.y / (f32)0x8000) * M_PI, 0);
                    Matrix_MultVec3f(&spFC, &spF0);
                    spF0.x = player->actor.posRot.pos.x + spF0.x;
                    spF0.z = player->actor.posRot.pos.z + spF0.z;
                    if ((fabsf(spF0.x - D_809261BC[indS0].x) <= 320) && (fabsf(spF0.z - D_809261BC[indS0].y) <= 320) &&
                        ((D_80925CD8 == NULL) || (D_80925CD8->tentSpawnPos != indS0))) {
                        this->targetPos.x = D_809261BC[indS0].x;
                        this->targetPos.z = D_809261BC[indS0].y;
                        this->tentSpawnPos = indS0;
                        this->timers[0] = (s16)Math_Rand_ZeroFloat(20.0f) + 30;
                        this->actionState = 102;
                        break;
                    }
                }
            }
            if ((this == D_80925CD4) && (D_80925CD0->hitCount >= 3) && (D_80925CD8 == NULL)) {
                D_80925CD8 =
                    (BossMo*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BOSS_MO, this->actor.posRot.pos.x,
                                         this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0x64);

                D_80925CD8->tentSpawnPos = this->tentSpawnPos;
                if (D_80925CD8->tentSpawnPos > 10) {
                    D_80925CD8->tentSpawnPos--;
                } else {
                    D_80925CD8->tentSpawnPos++;
                }
                D_80925CD8->targetPos.x = D_809261BC[D_80925CD8->tentSpawnPos].x;
                D_80925CD8->targetPos.z = D_809261BC[D_80925CD8->tentSpawnPos].y;
                D_80925CD8->timers[0] = 100;
                D_80925CD8->actionState = 102;
                D_80925CD8->otherTent = &D_80925CD4->actor;
                D_80925CD4->otherTent = &D_80925CD8->actor;
            }
            break;
        case 102:
            this->actor.flags &= ~1;
            Math_SmoothScaleMaxF(&this->baseOpacity, 0, 1.0f, 5.0f);
            if ((this->baseOpacity <= 0.5f) && (this->timers[0] == 0)) {
                this->meltIndex = 0;
                this->actor.posRot.pos.x = this->targetPos.x;
                this->actor.posRot.pos.z = this->targetPos.z;
                this->actor.pos4 = this->actor.posRot.pos;
                this->cutScale = 1.0f;
                this->cutIndex = this->meltIndex;
                this->actionState = 10;
                this->timers[0] = (s16)Math_Rand_ZeroFloat(20.0f) + 10;

                this->tentSpeed = 0;
                this->unk_190 = 0;
                this->unk_19C = 0;
                this->unk_18C = 0;
                this->unk_198 = 0;

                this->tentMaxAngle = .001f;
            }
            break;
        case 200:
            this->actor.shape.rot.y = 0x4000;
            break;
        case 203:
            this->baseBubblesTimer = 20;
            Math_SmoothScaleMaxF(&D_80925CD0->waterLevel, -300.0f, 0.1f, 0.8f);
            this->actor.flags &= ~1;
            for (indS1 = 0; indS1 < 41; indS1++) {
                pad108 = Math_Sins(((s16)this->unk_188 * indS1) + this->tentAngle);
                temp_f22 = this->unk_18C * (indS1 * 0.025f * pad108);
                pad110 = Math_Sins(((s16)this->unk_194 * indS1) + this->unk_170);
                temp_f24 = this->unk_198 * (indS1 * 0.025f * pad110);
                Math_SmoothScaleMaxF(&this->tentStretch[indS1].y, this->unk_1A0 * 5.0f, 0.1f, 0.4f);
                Math_SmoothScaleMaxS(&this->tentRot[indS1].x, temp_f22, 1.0f / this->tentMaxAngle, this->tentSpeed);
                Math_SmoothScaleMaxS(&this->tentRot[indS1].z, temp_f24, 1.0f / this->tentMaxAngle, this->tentSpeed);
            }
            this->actor.speedXZ = 0.0;
            Math_SmoothScaleMaxF(&this->unk_1A0, 4.3f, 0.5f, 0.04);
            Math_SmoothScaleMaxF(&this->tentPulse, 1.3f, 0.5f, 0.05f);
            break;
        case 201:
            this->baseBubblesTimer = 20;
            this->actor.shape.rot.y = 0x4000;
            this->actor.shape.rot.x = -0x8000;
            this->actor.posRot.pos.y = D_80925CD0->waterLevel + 650.0f;
            Math_SmoothScaleMaxF(&D_80925CD0->waterLevel, -300.0f, 0.1f, 1.3f);
            for (indS1 = 0; indS1 < 41; indS1++) {
                pad108 = Math_Sins(((s16)this->unk_188 * indS1) + this->tentAngle);
                temp_f22 = this->unk_18C * (indS1 * 0.025f * pad108);
                pad110 = Math_Sins(((s16)this->unk_194 * indS1) + this->unk_170);
                temp_f24 = this->unk_198 * (indS1 * 0.025f * pad110);
                Math_SmoothScaleMaxF(&this->tentStretch[indS1].y, this->unk_1A0 * 5.0f, 0.1f, 0.4f);
                Math_SmoothScaleMaxS(&this->tentRot[indS1].x, temp_f22, 1.0f / this->tentMaxAngle, this->tentSpeed);
                Math_SmoothScaleMaxS(&this->tentRot[indS1].z, temp_f24, 1.0f / this->tentMaxAngle, this->tentSpeed);
            }
            this->actor.speedXZ = 0.0;
            Math_SmoothScaleMaxF(&this->tentPulse, 1.3f, 0.5f, 0.05f);
            break;
        case 202:
            this->baseBubblesTimer = 0x14;
            Math_SmoothScaleMaxF(&D_80925CD0->waterLevel, -295.0f, 0.1f, 1.3f);
            this->actor.posRot.pos.y = D_80925CD0->waterLevel + 650.0f;
            for (indS1 = 0; indS1 < 41; indS1++) {
                pad108 = Math_Sins(((s16)this->unk_188 * indS1) + this->tentAngle);
                temp_f22 = this->unk_18C * (indS1 * 0.025f * pad108);
                pad110 = Math_Sins(((s16)this->unk_194 * indS1) + this->unk_170);
                temp_f24 = this->unk_198 * (indS1 * 0.025f * pad110);
                Math_SmoothScaleMaxF(&this->tentStretch[indS1].y, this->unk_1A0 * 5.0f, 0.1f, 0.4f);
                Math_SmoothScaleMaxS(&this->tentRot[indS1].x, temp_f22, 1.0f / this->tentMaxAngle, this->tentSpeed);
                Math_SmoothScaleMaxS(&this->tentRot[indS1].z, temp_f24, 1.0f / this->tentMaxAngle, this->tentSpeed);
            }
            this->actor.speedXZ = 0.0;
            this->noBubbles--;
            Math_SmoothScaleMaxF(&this->unk_1A0, 0.1f, 0.1f, 0.03);
            Math_SmoothScaleMaxF(&this->tentPulse, 0.02f, 0.5f, 0.015f);
            if ((this->timers[0] > 0) && (this->timers[0] < 0x28)) {
                Math_SmoothScaleMaxF(&this->actor.scale.x, 0.035f, 0.05f, this->unk_1C0);
                if (this->timers[0] == 1) {
                    this->unk_1C0 = 0.0;
                }
            } else if (this->timers[0] == 0) {
                Math_SmoothScaleMaxF(&this->actor.scale.x, .001f, 0.05f, this->unk_1C0);
            }
            Math_SmoothScaleMaxF(&this->unk_1C0, 0.00045f, 0.1f, 0.00001f);
            break;
        case 205:
            for (indS1 = 0; indS1 < 41; indS1++) {
                if (this->timers[0] != 0) {
                    Math_SmoothScaleMaxF(&this->tentStretch[indS1].y, this->unk_1A0 * 5.0f, 0.05f, this->tentSpeed);
                } else {
                    Math_SmoothScaleMaxF(&this->tentStretch[indS1].y, this->unk_1A0 * 5.0f, 0.3f, 100.0f);
                }
                this->tentRot[indS1].x = this->tentRot[indS1].z = 0;
            }
            this->tentPulse = 0.0;
            if (this->timers[0] != 0) {
                this->actor.posRot.pos.y = D_80925CD0->waterLevel + 650.0f;
                this->unk_1A0 = 0.5f;
                Math_SmoothScaleMaxF(&this->actor.scale.x, 0.0015f, 0.05f, this->tentMaxAngle);
                Math_SmoothScaleMaxF(&this->tentMaxAngle, 0.00035f, 1.0f, 0.0000175f);
                Math_SmoothScaleMaxF(&this->tentSpeed, 0.1f, 1.0f, 0.005f);
                this->actor.velocity.y = 0.0;
            } else {
                this->unk_1A0 = 0.2f;
                this->unk_1A0 += Math_Sins(this->pulseTimer * 0x2000) * 0.05f;
                pad108 = Math_Coss(this->pulseTimer * 0x2000) * 0.0005f;
                Math_SmoothScaleMaxF(&this->actor.scale.x, 0.002f + pad108, 0.5f, 0.0005f);
                this->actor.posRot.pos.y += this->actor.velocity.y;
                this->actor.velocity.y -= 1.0f;
                if (this->actor.posRot.pos.y < -250.0f) {
                    this->actor.posRot.pos.y = -250.0f;
                    this->actor.velocity.y = 0.0;
                    this->drawActor = 0;
                    this->actionState = 206;
                    this->timers[0] = 60;
                    func_80078914(&this->unk_1010, 0x38F7);
                    for (indS1 = 0; indS1 < 300; indS1++) {
                        spC8.x = 0.0;
                        spC8.y = 0.0;
                        spC8.z = indS1 * 0.03f;
                        Matrix_RotateY(indS1 * 0.23f, 0);
                        Matrix_MultVec3f(&spC8, &spE0);
                        spE0.y = Math_Rand_ZeroFloat(7.0f) + 4.0f;
                        spD4 = this->actor.posRot.pos;
                        spD4.x += spE0.x * 3.0f;
                        spD4.y += (spE0.y * 3.0f) - 30.0f;
                        if (spD4.y < -280.0f) {
                            spD4.y = -280.0f;
                        }
                        spD4.z += spE0.z * 3.0f;
                        func_8091BE5C(3, globalCtx->unk_11E10, &spD4, &spE0, ((0x12C - indS1) * .0015f) + 0.13f);
                    }
                    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, 0x5D, this->actor.posRot.pos.x,
                                       -280.0f, this->actor.posRot.pos.z, 0, 0, 0, -1);
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, 0x5F, this->actor.posRot.pos.x + 200.0f, -280.0f,
                                this->actor.posRot.pos.z, 0, 0, 0, 0);
                    Audio_SetBGM(0x21);
                    Flags_SetClear(globalCtx, globalCtx->roomCtx.curRoom.num);
                }
            }
            break;
        case 206:
            break;
    }
    this->actor.scale.y = this->actor.scale.z = this->actor.scale.x;
    if (((this->actionState == 2) || (this->actionState == 0xCA) || (this->actionState == 3) ||
         (this->actionState == 4)) &&
        (Math_Rand_ZeroOne() < 0.8f) && (this->actor.scale.x > 0.001f)) {
        Vec3f spBC;
        Vec3f spB0 = { 0.0f, 0.0f, 0.0f };
        f32 padAC;
        f32 padA8;

        if (this->actionState >= 0xCA) {
            indS1 = 38;
            padAC = Math_Rand_ZeroFloat(0.1f) + 0.1f;
            spBC.y = this->tentPos[indS1].y;
        } else {
            indS1 = (s16)Math_Rand_ZeroFloat(20.0f) + 18;
            padAC = Math_Rand_ZeroFloat(0.02f) + .05f;
            spBC.y = this->tentPos[indS1].y - 10.0f;
        }
        padA8 = (this->actor.scale.x * 100.0f) * 20.0f;
        spBC.x = this->tentPos[indS1].x + Math_Rand_CenteredFloat(padA8);
        spBC.z = this->tentPos[indS1].z + Math_Rand_CenteredFloat(padA8);
        func_8091BE5C(3, globalCtx->unk_11E10, &spBC, &spB0, padAC);
    }
}

void func_8091F2FC(BossMo* this, GlobalContext* globalCtx) {
    s16 i1;
    s16 i2;
    ColliderBody* temp_s0;
    Vec3f sp84;
    Vec3f sp78;

    for (i1 = 0; i1 < 19; i1++) {
        if (this->collider1.list[i1].body.bumperFlags & 2) {
            for (i2 = 0; i2 < 19; i2++) {
                this->collider1.list[i2].body.bumperFlags &= ~2;
                this->collider1.list[i2].body.toucherFlags &= ~2;
            }
            temp_s0 = this->collider1.list[i1].body.acHitItem;
            this->invincibilityTimer = 5;
            if (temp_s0->toucher.flags & 0x00020000) {
                func_80078914(&this->unk_1010, 0x38F4);
                this->cutIndex = 0xF;
                this->meltIndex = this->cutIndex + 1;
                this->actionState = 0x64;
                this->timers[0] = 0x28;
                this->cutScale = 1.0f;
            } else if (temp_s0->toucher.flags & 0x0D800600) {
                this->linkHitTimer = 5;
            }
            this->tentRippleSize = 0.2f;
            for (i2 = 0; i2 < 10; i2++) {
                sp78.x = Math_Rand_CenteredFloat(8.0f);
                sp78.y = Math_Rand_ZeroFloat(7.0f) + 4.0f;
                sp78.z = Math_Rand_CenteredFloat(8.0f);
                sp84 = this->tentPos[2 * i1];
                sp84.x += sp78.x * 3.0f;
                sp84.z += sp78.z * 3.0f;
                func_8091BE5C(3, globalCtx->unk_11E10, &sp84, &sp78, Math_Rand_ZeroFloat(0.08f) + 0.13f);
            }
            break;
        } else if (this->collider1.list[i1].body.toucherFlags & 2) {
            this->collider1.list[i1].body.toucherFlags &= ~2;
            this->linkHitTimer = 5;
            break;
        }
    }
}

void func_8091F5A8(BossMo* this, GlobalContext* globalCtx) {
    static Vec3f D_809263B8[6] = { { -360.0f, -190.0f, 0.0f },  { 250.0f, -190.0f, 0.0f }, { 300.0f, -120.0f, -278.0f },
                                   { 180.0f, -80.0f, -340.0f }, { 180.0f, 0.0f, -340.0f }, { 180.0f, 60.0f, -230.0f } };
    u8 sp9F = 0;
    f32 dx;
    f32 dy;
    f32 dz;
    f32 temp_x;
    f32 temp_y;
    f32 pad;
    f32 phi_f12;
    f32 phi_f16;
    f32 phi_f14;
    Player* player = PLAYER;
    Camera* camera = Gameplay_GetCamera(globalCtx, 0);
    Vec3f sp64;
    Vec3f sp58;
    Camera* camera2;
    f32 pad50;
    f32 pad4C;
    f32 pad48;

    if (this->cutsceneState < 4) {
        this->cameraZoom = 80.0f;
    }
    switch (this->cutsceneState) {
        case 1:
            if (this->timers[0] == 1) {
                func_8010B680(globalCtx, 0x403F, NULL);
            }
            if (((fabsf(player->actor.posRot.pos.z - 180.0f) < 40.0f) &&
                 (fabsf(player->actor.posRot.pos.x - 180.0f) < 40.0f)) ||
                ((fabsf(player->actor.posRot.pos.z - -180.0f) < 40.0f) &&
                 (fabsf(player->actor.posRot.pos.x - 180.0f) < 40.0f)) ||
                ((fabsf(player->actor.posRot.pos.z - 180.0f) < 40.0f) &&
                 (fabsf(player->actor.posRot.pos.x - -180.0f) < 40.0f)) ||
                ((fabsf(player->actor.posRot.pos.z - -180.0f) < 40.0f) &&
                 (fabsf(player->actor.posRot.pos.x - -180.0f) < 40.0f))) {
                func_80064520(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 8);
                this->cutsceneCamera = Gameplay_CreateSubCamera(globalCtx);
                Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
                Gameplay_ChangeCameraStatus(globalCtx, this->cutsceneCamera, 7);
                this->actor.speedXZ = 0.0f;
                this->cutsceneState = 2;
                this->timers[2] = 0x32;
                this->rippleTimer = this->pulseTimer = 0;
                this->actor.posRot.rot.y = 0x721A;
                D_80925CD4->actionState = 0;
                D_80925CD4->timers[0] = 0x7530;
                Audio_SetBGM(0x103200FF);
                func_80106CCC(globalCtx);
            } else {
                break;
            }
        case 2:
            player->actor.posRot.pos.x = 180.0f;
            player->actor.posRot.pos.z = -130.0f;
            player->actor.shape.rot.y = player->actor.posRot.rot.y = 0;
            player->actor.speedXZ = 0.0f;
            this->unk_F68.x = -424.0f;
            this->unk_F68.y = -190.0f;
            this->unk_F68.z = 180.0f;
            this->unk_F74.x = player->actor.posRot.pos.x;
            this->unk_F74.y = -330.0f;
            this->unk_F74.z = 0.0f;
            if (this->timers[2] == 0) {
                this->cutsceneState = 3;
                this->pulseTimer = 0;
            } else if (this->timers[2] < 0x32) {
                sp64.x = (this->unk_F68.x + 20.0f) + 10.0f;
                sp64.y = -250.0f;
                sp64.z = this->unk_F68.z;
                func_800293E4(globalCtx, &sp64, 0.0f, 10.0f, 50.0f, Math_Rand_ZeroFloat(0.05f) + 0.13f);
            }
            if (this->timers[2] == 0x28) {
                func_80078914(&D_80926198, 0x38F6);
            }
            break;
        case 3:
            Math_SmoothScaleMaxF(&this->unk_100C, 0.1f, 1.0f, 0.002f);
            this->targetPos = D_809263B8[this->targetIndex];
            if (this->targetIndex == 5) {
                temp_y = Math_Sins(this->pulseTimer * 0x500) * 20.0f;
            } else {
                temp_y = Math_Sins(this->pulseTimer * 0x500) * 5.0f;
            }
            dx = this->targetPos.x - this->unk_F68.x;
            dy = this->targetPos.y - this->unk_F68.y + temp_y;
            dz = this->targetPos.z - this->unk_F68.z;
            temp_y = Math_atan2f(dx, dz);
            temp_x = Math_atan2f(dy, sqrtf(SQ(dx) + SQ(dz)));
            Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, temp_y * (0x8000 / M_PI), 5, this->unk_1008);
            Math_SmoothScaleMaxS(&this->actor.posRot.rot.x, temp_x * (0x8000 / M_PI), 5, this->unk_1008);
            if (this->pulseTimer == 0x96) {
                this->unk_FB0.x = fabsf(this->unk_F74.x - player->actor.posRot.pos.x);
                this->unk_FB0.y = fabsf(this->unk_F74.y - player->actor.posRot.pos.y);
                this->unk_FB0.z = fabsf(this->unk_F74.z - player->actor.posRot.pos.z);
            }
            if (this->pulseTimer >= 0x96) {
                Math_SmoothScaleMaxF(&this->unk_F74.x, player->actor.posRot.pos.x, 0.1f,
                                     this->unk_FB0.x * this->unk_FEC);
                Math_SmoothScaleMaxF(&this->unk_F74.y, player->actor.posRot.pos.y + 50.0f, 0.1f,
                                     this->unk_FB0.y * this->unk_FEC);
                Math_SmoothScaleMaxF(&this->unk_F74.z, player->actor.posRot.pos.z, 0.1f,
                                     this->unk_FB0.z * this->unk_FEC);
                Math_SmoothScaleMaxF(&this->unk_FEC, 0.02f, 1.0f, 0.001f);
            }
            if (this->pulseTimer == 0xBE) {
                func_80078914(&D_80926198, 0x38F6);
            }
            if ((this->pulseTimer >= 0x97) && (this->pulseTimer < 0xB4)) {
                sp58.x = (this->unk_F68.x + 20.0f) + 10.0f;
                sp58.y = -250.0f;
                sp58.z = this->unk_F68.z;
                func_800293E4(globalCtx, &sp58, 0.0f, 10.0f, 50.0f, Math_Rand_ZeroFloat(0.05f) + 0.13f);
            }
            phi_f16 = (f32)0x1000;
            phi_f14 = 0.1f;
            if ((this->pulseTimer >= 0x65) && (this->pulseTimer < 0xDC)) {
                phi_f12 = 0.0f;
            } else if (this->pulseTimer >= 0x15F) {
                phi_f12 = 2.0f;
                phi_f14 = 0.4f;
            } else if (this->pulseTimer >= 0xDD) {
                phi_f12 = 7.0f;
                phi_f14 = 0.3f;
                phi_f16 = (f32)0x2000;
            } else {
                phi_f12 = 4.0f;
            }

            if (this->pulseTimer >= 0xFB) {
                Math_SmoothScaleMaxF(&this->unk_188, 100.0f, 1.0f, 1.0f);
            }
            if (this->targetIndex < 5) {
                if (sqrtf(SQ(dx) + SQ(dz) + SQ(dy)) < 40.0f) {
                    this->targetIndex++;
                    this->unk_1008 = 0.0f;
                }
            } else {
                phi_f12 = 1.5f;
                phi_f16 = (f32)0x600;
            }
            Math_SmoothScaleMaxF(&this->actor.speedXZ, phi_f12, 1.0f, phi_f14);
            Math_SmoothScaleMaxF(&this->unk_1008, phi_f16, 1.0f, 128.0f);
            if (this->pulseTimer == 0x20D) {
                func_8002DF54(globalCtx, &this->actor, 2);
            }
            if (this->pulseTimer >= 0x21D) {
                this->cutsceneState = 4;
                func_8002DF54(globalCtx, &this->actor, 1);
                D_80925CD4->drawActor = 1;
                player->actor.posRot.pos.x = 180.0f;
                player->actor.posRot.pos.z = -210.0f;
                player->actor.posRot.rot.y = -0x8000;
                player->actor.shape.rot.y = player->actor.posRot.rot.y;
                this->unk_100C = 0.0f;
                D_80925CD4->baseOpacity = 150.0;
                this->actor.speedXZ = 0.0f;
                this->timers[2] = 0xC8;
                this->cameraZoom = 60.0f;
                this->actor.posRot.pos = D_80925CD4->actor.posRot.pos;
                this->actionState = 0x15;
                this->actor.flags &= ~1;
                D_80925CD4->actor.flags |= 1;
            } else {
                D_80925CD4->tentAngle = 0xCEC;
                D_80925CD4->unk_190 = 0.0f;
                D_80925CD4->unk_188 = 1000.0f;
                D_80925CD4->unk_18C = 2500.0f;
                break;
            }
        case 4:
            if (this->timers[2] >= 0xA0) {
                this->unk_F68.x = 150.0f;
                this->unk_F68.y = 60.0f;
                this->unk_F68.z = -230.0f;
                this->unk_F74.x = 170.0f;
                this->unk_F74.y = 40.0;
                this->unk_F74.z = -280.0f;
                D_80925CD4->tentAngle = 0xCEC;
                D_80925CD4->unk_190 = 0.0f;
                D_80925CD4->unk_188 = 1000.0f;
                D_80925CD4->unk_18C = 2500.0f;
                if (this->timers[2] == 0xA0) {
                    this->unk_FD4.y = 65.0f;
                    this->unk_FD4.z = -280.0f;
                    this->unk_FA4.x = fabsf(this->unk_F68.x - 150.0f) * 0.1f;
                    this->unk_FA4.y = fabsf(this->unk_F68.y - 60.0f) * 0.1f;
                    this->unk_FA4.z = fabsf(this->unk_F68.z - -260.0f) * 0.1f;
                    this->unk_FBC.x = 150.0f;
                    this->unk_FBC.y = 60.0f;
                    this->unk_FBC.z = -260.0f;
                    this->unk_FD4.x = 155.0f;
                    this->unk_FE0.x = this->unk_FE0.y = this->unk_FE0.z = 0.1f;
                    this->unk_FB0.x = fabsf(this->unk_F74.x - this->unk_FD4.x) * 0.1f;
                    this->unk_FB0.y = fabsf(this->unk_F74.y - this->unk_FD4.y) * 0.1f;
                    this->unk_FB0.z = fabsf(this->unk_F74.z - this->unk_FD4.z) * 0.1f;
                    this->unk_FC8.x = this->unk_FC8.y = this->unk_FC8.z = 0.1f;
                    this->unk_FEC = 0.0f;
                    this->unk_FF0 = 0.01f;
                    this->tentMaxAngle = 0.001f;
                    this->tentSpeed = 0.0f;
                    sp9F = 1;
                }
            } else {
                sp9F = 1;
            }
            if (this->timers[2] == 0x32) {

                this->unk_FD4.x = 160.0f;
                this->unk_FD4.y = 58.0f;
                this->unk_FD4.z = -247.0f;
                this->unk_FA4.x = fabsf(this->unk_F68.x - 111.0f) * 0.1f;
                this->unk_FA4.y = fabsf(this->unk_F68.y - 133.0f) * 0.1f;
                this->unk_FA4.z = fabsf(this->unk_F68.z - -191.0f) * 0.1f;
                if (1) {}
                this->cutsceneState = 5;
                this->timers[2] = 0x6E;
                this->unk_FBC.x = 111.0f;
                this->unk_FBC.y = 133.0f;
                this->unk_FBC.z = -191.0f;
                this->unk_FB0.x = fabsf(this->unk_F74.x - this->unk_FD4.x) * 0.1f;
                this->unk_FB0.y = fabsf(this->unk_F74.y - this->unk_FD4.y) * 0.1f;
                this->unk_FB0.z = fabsf(this->unk_F74.z - this->unk_FD4.z) * 0.1f;
                this->unk_FC8.y = 0.03f;
                this->unk_FE0.y = 0.03f;
                this->unk_FEC = 0.0f;
                this->unk_FF0 = 0.01f;
            }
            if (this->timers[2] == 0x96) {
                Audio_SetBGM(0x1B);
            }
            if (this->timers[2] == 0x82) {
                TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx, SEGMENTED_TO_VIRTUAL(&D_06001010),
                                       0xA0, 0xB4, 0x80, 0x28);
                gSaveContext.eventChkInf[7] |= 0x10;
            }
            break;
        case 5:
            sp9F = 1;
            this->unk_FBC.x = 111.0f;
            this->unk_FBC.y = 133.0f;
            this->unk_FBC.z = -191.0f;
            this->unk_FD4.x = 160.0f;
            this->unk_FD4.y = 58.0f;
            this->unk_FD4.z = -247.0f;
            if (this->timers[2] == 0x64) {
                D_80925CD4->actionState = 0x65;
                D_80925CD4->timers[0] = 0x32;
            }
            if (this->timers[2] == 0x14) {
                camera2 = Gameplay_GetCamera(globalCtx, 0);
                camera2->eye = this->unk_F68;
                camera2->eyeNext = this->unk_F68;
                camera2->at = this->unk_F74;
                func_800C08AC(globalCtx, this->cutsceneCamera, 0);
                this->cutsceneState = this->cutsceneCamera = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
            }
            break;
    }
    if (D_80925CD4->actionState == 0) {
        D_80925CD4->actor.posRot.pos.x = 180.0f;
        D_80925CD4->actor.posRot.pos.z = -360.0f;
        D_80925CD4->actor.pos4 = D_80925CD4->actor.posRot.pos;
        D_80925CD4->actor.speedXZ = 0.0f;
        D_80925CD4->actor.shape.rot.y = D_80925CD4->actor.yawTowardsLink;
    }
    if (this->cutsceneCamera != 0) {
        if (sp9F) {
            Math_SmoothScaleMaxF(&this->unk_F68.x, this->unk_FBC.x, this->unk_FC8.x, this->unk_FA4.x * this->unk_FEC);
            Math_SmoothScaleMaxF(&this->unk_F68.y, this->unk_FBC.y, this->unk_FC8.y, this->unk_FA4.y * this->unk_FEC);
            Math_SmoothScaleMaxF(&this->unk_F68.z, this->unk_FBC.z, this->unk_FC8.z, this->unk_FA4.z * this->unk_FEC);
            Math_SmoothScaleMaxF(&this->unk_F74.x, this->unk_FD4.x, this->unk_FE0.x, this->unk_FB0.x * this->unk_FEC);
            Math_SmoothScaleMaxF(&this->unk_F74.y, this->unk_FD4.y, this->unk_FE0.y, this->unk_FB0.y * this->unk_FEC);
            Math_SmoothScaleMaxF(&this->unk_F74.z, this->unk_FD4.z, this->unk_FE0.z, this->unk_FB0.z * this->unk_FEC);
            Math_SmoothScaleMaxF(&this->unk_FEC, 1.0f, 1.0f, this->unk_FF0);
        } else if (this->cutsceneState < 4) {
            func_8002D908(&this->actor);
            this->unk_F68.x += this->actor.velocity.x;
            this->unk_F68.y += this->actor.velocity.y;
            this->unk_F68.z += this->actor.velocity.z;
        }
        this->unk_F80.x = this->unk_F80.z = sinf(this->rippleTimer * 0.03f) * this->unk_100C * (-2.0f);
        this->unk_F80.y = 1.0f;
        func_800C05E4(globalCtx, this->cutsceneCamera, &this->unk_F74, &this->unk_F68, &this->unk_F80);
        camera->eye = this->unk_F68;
        camera->eyeNext = this->unk_F68;
        camera->at = this->unk_F74;
        func_800C0704(globalCtx, this->cutsceneCamera, this->cameraZoom);
    }

    if ((this->cutsceneState >= 3) && (this->pulseTimer >= 0x21D)) {
        func_80078914(&D_80925CD4->unk_1010, 0x30F0);
    } else if (this->cutsceneState >= 2) {
        func_80078914(&D_80926198, 0x30F5);
    }
}

void func_809206C4(BossMo* this, GlobalContext* globalCtx) {
    s16 i;
    s16 pad8C;
    f32 dx;
    f32 dz;
    f32 sp80;
    f32 sp7C;
    Vec3f sp70;
    Vec3f sp64;
    Camera* camera = Gameplay_GetCamera(globalCtx, 0);
    Vec3f sp54;
    Vec3f sp48;

    switch (this->cutsceneState) {
        case 0x64:
            func_80064520(globalCtx, &globalCtx->csCtx);
            func_8002DF54(globalCtx, &this->actor, 8);
            this->cutsceneCamera = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
            Gameplay_ChangeCameraStatus(globalCtx, this->cutsceneCamera, 7);
            this->cutsceneState = 0x96;
            this->unk_F68 = camera->eye;
            this->timers[0] = 90;
            dx = this->actor.posRot.pos.x - this->unk_F68.x;
            dz = this->actor.posRot.pos.z - this->unk_F68.z;
            this->unk_1004 = Math_atan2f(dx, dz);
            this->unk_FFC = sqrtf(dx * dx + dz * dz);
            this->unk_1008 = 0.0f;
        case 0x96:
            this->baseOpacity = 0.0f;
            if (this->timers[0] & 4) {
                sp80 = 0.005f;
                sp7C = 0.015f;
            } else {
                sp80 = 0.015f;
                sp7C = 0.005f;
            }
            Math_SmoothScaleMaxF(&this->actor.scale.x, sp80, 0.5f, 0.002f);
            this->actor.scale.z = this->actor.scale.x;
            Math_SmoothScaleMaxF(&this->actor.scale.y, sp7C, 0.5f, 0.002f);
            this->unk_1004 += this->unk_1008;
            if (this->timers[0] >= 0x1E) {
                Math_SmoothScaleMaxF(&this->unk_1008, 0.05f, 1.0f, 0.002f);
            } else {
                Math_SmoothScaleMaxF(&this->unk_1008, 0.0f, 1.0f, 0.002f);
            }
            Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, 150.0f, 0.05f, 5.0f);
            Math_SmoothScaleMaxF(&this->unk_F68.y, 100.0f, 0.05f, 2.0f);
            this->unk_F74 = this->unk_FD4 = this->actor.posRot.pos;
            if (this->timers[0] >= 0x15) {
                Audio_PlayActorSound2(&this->actor, 0x30F8);
            }
            if (this->timers[0] == 0x14) {
                for (i = 0; i < 300; i++) {
                    sp54.x = Math_Rand_CenteredFloat(10.0f);
                    sp54.y = Math_Rand_CenteredFloat(10.0f);
                    sp54.z = Math_Rand_CenteredFloat(10.0f);
                    sp48 = this->actor.posRot.pos;
                    sp48.x += 2.0f * sp54.x;
                    sp48.y += 2.0f * sp54.y;
                    sp48.z += 2.0f * sp54.z;
                    func_8091BE5C(3, globalCtx->unk_11E10, &sp48, &sp54, Math_Rand_ZeroFloat(0.08f) + 0.13f);
                }
                this->drawActor = 0;
                this->actor.flags &= ~1;
                Audio_PlayActorSound2(&this->actor, 0x38F7);
                Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 0x46, 0x38F9);
            }
            if (this->timers[0] == 0) {
                this->cutsceneState = 0x65;
                this->unk_FFC = 490.0f;
                this->actor.posRot.pos.y = -1000.0f;
                this->unk_18C = 15.0f;
                this->unk_1004 = 0.0f;
                this->unk_F68.x = 490.0f;
                this->unk_F68.y = 50.0f;
                this->unk_F68.z = 0.0f;
                this->unk_F74.x = 0;
                this->unk_F74.y = -100.0f;
                this->unk_F74.z = 0.0f;
                this->rippleTimer = this->pulseTimer = 0;
                this->unk_FE0.y = 0.05f;
                this->unk_FB0.y = 4.0f;
                this->unk_FEC = 0.0f;
                this->unk_FF0 = 0.02f;
                this->unk_FD4.y = 320.0f;
                if(1){}
                this->timers[0] = 100;
                D_80925CD4->drawActor = 1;
                D_80925CD4->actionState = 0xCB;
                D_80925CD4->actor.shape.rot.x = 0;
                D_80925CD4->actor.posRot.pos.x = 0.0f;
                D_80925CD4->actor.posRot.pos.y = -50.0f;
                D_80925CD4->actor.posRot.pos.z = 0.0f;
                D_80925CD4->unk_1A0 = 1.0f;
                D_80925CD4->tentPulse = 0.2f;
                D_80925CD0->waterLevel = -50.0f;
                D_80925CD4->unk_1C0 = 0.0f;
                D_80925CD4->noBubbles = 0;
                for (i = 0; i < 41; i++) {
                    D_80925CD4->tentStretch[i].y = 5.0f;
                }
                D_80925CD4->unk_190 = -400.0f;
                D_80925CD4->unk_188 = -3200.0f;
                D_80925CD4->unk_18C = .0f;
                D_80925CD4->unk_19C = 3000.0f;
                D_80925CD4->unk_194 = 2500.0f;
                D_80925CD4->unk_198 = 4000.0f;
                D_80925CD4->tentMaxAngle = 1.0f;
                D_80925CD4->tentSpeed = 20480.0f;
                D_80925CD4->baseOpacity = 150.0f;
                D_80925CD4->cutIndex = D_80925CD4->meltIndex = 0;
                D_80925CD4->cutScale = 1.0f;
                Actor_SetScale(&D_80925CD4->actor, 0.01f);
            }
            break;
        case 0x65:
            if (this->timers[0] == 0) {
                this->cutsceneState = 0x66;
                this->unk_F74.y = -200.0f;
                this->unk_FD4.y = 320.0f;
                this->unk_FE0.y = 0.05f;
                this->unk_FB0.y = 4.0f;
                this->unk_FEC = 0.0f;
                this->unk_FF0 = 0.0f;
                D_80925CD4->actionState = 0xC9;
                this->timers[0] = 0x7D;
                D_80925CD4->unk_1A0 = 3.7000003f;
                this->unk_1004 = 0.5f;
                this->unk_FFC = 200.0f;
                return;
            }
            break;
        case 0x66:
            if (this->timers[0] == 0) {
                this->unk_FF0 = 0.02f;
                D_80925CD4->actionState = 0xCA;
                this->cutsceneState = 0x67;
                D_80925CD4->timers[0] = 0x78;
                this->timers[0] = 0x96;
            }
        case 0x67:
            Math_SmoothScaleMaxF(&this->unk_1004, 0.0f, 0.05f, 0.0029999996f);
            Math_SmoothScaleMaxF(&this->unk_FFC, 490.0f, 0.1f, 1.0f);
            if (this->timers[0] == 0) {
                this->cutsceneState = 0x68;
                this->timers[0] = 0x8C;
                this->unk_1008 = 0.0f;
                this->unk_1000 = 0.0f;
            }
            break;
        case 0x68:
            if (0x1E == this->timers[0]) {
                D_80925CD4->actionState = 0xCD;
                D_80925CD4->timers[0] = 0x1E;
                D_80925CD4->tentMaxAngle = 0.0f;
                D_80925CD4->tentSpeed = D_80925CD4->tentMaxAngle;
            }
            if (this->timers[0] == 0) {
                if (-100.0f < this->unk_F68.y) {
                    Math_SmoothScaleMaxF(&this->unk_F68.y, D_80925CD4->actor.posRot.pos.y - 100.0f, 0.1f, 2000.0f);
                } else {
                    Math_SmoothScaleMaxF(&this->unk_F68.y, -200.0f, 0.1f, 2000.0f);
                }

                Math_SmoothScaleMaxF(&this->unk_F74.y, (D_80925CD4->actor.posRot.pos.y - 50.0f) + 30.0f, 0.5f, 2000.0f);
                this->unk_FD4.y = this->unk_F74.y;
            } else {
                Math_SmoothScaleMaxF(&this->unk_F68.y, 300.0f, 0.05f, this->unk_1000);
            }
            Math_SmoothScaleMaxF(&this->unk_1004, -M_PI / 2.0f, 0.05f, this->unk_1008);
            Math_SmoothScaleMaxF(&this->unk_1000, 3.0f, 1.0f, 0.05f);
            Math_SmoothScaleMaxF(&this->unk_1008, 0.012999999f, 1.0f, 0.0005f);
            if (D_80925CD4->actionState == 0xCE) {
                Math_SmoothScaleMaxF(&this->unk_FFC, 200.0f, 0.02f, this->unk_1000);
                if (D_80925CD4->timers[0] == 0) {
                    this->cutsceneState = 0x69;
                    camera->eye = this->unk_F68;
                    camera->eyeNext = this->unk_F68;
                    camera->at = this->unk_F74;
                    func_800C08AC(globalCtx, this->cutsceneCamera, 0);
                    this->cutsceneCamera = 0;
                    func_80064534(globalCtx, &globalCtx->csCtx);
                    func_8002DF54(globalCtx, &this->actor, 7);
                    D_80925CD4->actor.posRot.pos.y = -1000.0f;
                }
            } else {
                Math_SmoothScaleMaxF(&this->unk_FFC, 150.0f, 0.05f, this->unk_1000);
            }
            break;
        case 0x69:
            break;
    }
    if ((this->cutsceneState >= 0x65) && (this->cutsceneState < 0x69)) {
        if (this->pulseTimer < 0x1F4) {
            func_80078914(&D_80926198, 0x30F0);
        }
        if ((this->pulseTimer < 0x1EA) && (this->pulseTimer >= 0xE7)) {
            func_80078914(&D_80926198, 0x2075);
        }
        if (this->pulseTimer < 0xDC) {
            func_80078914(&D_80926198, 0x2074);
        }
    }
    if (D_80925CD0->waterLevel < -200.0f) {
        globalCtx->unk_11D30[0]++;
        if (globalCtx->unk_11D30[0] >= 0xFF) {
            globalCtx->unk_11D30[0] = 0xFF;
        }
    }
    if (D_80925CD0->waterLevel < -250.0f) {
        Math_SmoothScaleMaxF(&D_80925CD4->waterTexOpacity, 0.0f, 1.0f, 3.0f);
    }
    Math_SmoothScaleMaxF(&this->unk_18C, 0.0f, 0.1f, 0.05f);

    sp70.x = this->unk_FFC;
    sp70.y = 0.0f;
    sp70.z = 0.0f;
    Matrix_RotateY(this->unk_1004, 0);
    Matrix_MultVec3f(&sp70, &sp64);
    this->unk_F68.x = sp64.x + this->unk_F74.x;
    this->unk_F68.z = sp64.z + this->unk_F74.z;
    pad8C = 1; // I don't care how fake this is. It matches.
    if (this->cutsceneCamera != 0) {
        if(pad8C) {
        Math_SmoothScaleMaxF(&this->unk_F74.y, this->unk_FD4.y, this->unk_FE0.y, this->unk_FB0.y * this->unk_FEC);
        Math_SmoothScaleMaxF(&this->unk_FEC, 1.0f, 1.0f, this->unk_FF0);
        }
        func_800C04D8(globalCtx, this->cutsceneCamera, &this->unk_F74, &this->unk_F68);
    }
}

void func_80921280(BossMo* this, GlobalContext* globalCtx) {
    ColliderBody* temp_s0;
    Player* player = PLAYER;
    s32 flags;
    u8 damage;
    s16 i;
    Vec3f sp54;
    Vec3f sp48;

    osSyncPrintf("\x1b[33m");
    osSyncPrintf("Core_Damage_check START\n");
    if (this->collider2.base.atFlags & 2) {
        this->collider2.base.atFlags &= ~2;
        if (this->actionState == 2) {
            this->waitUnderwater = 1;
            this->timers[0] = 0x96;
        }
    }
    if (this->collider2.base.acFlags & 2) {
        temp_s0 = this->collider2.body.acHitItem;
        // hit!!
        osSyncPrintf("Core_Damage_check 当り！！\n");
        this->collider2.base.acFlags &= ~2;
        if (temp_s0->toucher.flags & 0x00020000) {
            if (this->actionState == 0xA) {
                this->actionState = 0xB;
            }
        }
        // hit 2 !!
        osSyncPrintf("Core_Damage_check 当り 2 ！！\n");
        if ((this->actionState != 2) && (this->invincibilityTimer == 0)) {
            damage = (u8)func_800635D0(temp_s0->toucher.flags);
            if ((damage != 0) && (this->actionState < 0xA)) {
                // sword hit !!
                osSyncPrintf("Core_Damage_check 剣 当り！！\n");
                this->actionState = 5;
                this->timers[0] = 0x19;

                this->actor.speedXZ = 15.0f;

                this->actor.posRot.rot.y = this->actor.yawTowardsLink + 0x8000;
                this->damageFlashTimer = 0xF;
                Audio_PlayActorSound2(&this->actor, 0x39EC);
                this->actor.colChkInfo.health -= damage;
                this->hitCount++;
                if ((s8)this->actor.colChkInfo.health <= 0) {
                    if (((D_80925CD4->cutsceneCamera == 0) && (D_80925CD8 == NULL)) ||
                        ((D_80925CD4->cutsceneCamera == 0) && (D_80925CD8 != NULL) &&
                         (D_80925CD8->cutsceneCamera == 0))) {
                        func_80032C7C(globalCtx, &this->actor);
                        Audio_SetBGM(0x100100FF);
                        this->cutsceneState = 0x64;
                        D_80925CD4->drawActor = 0;
                        D_80925CD4->actionState = 0xC8;
                        D_80925CD4->baseOpacity = 0.0f;
                        if (D_80925CD8 != NULL) {
                            D_80925CD8->tent2KillTimer = 1;
                        }
                        if (player->actor.parent != NULL) {
                            player->unk_850 = 0x65;
                            player->actor.parent = NULL;
                            player->csMode = 0;
                        }
                    } else {
                        this->actor.colChkInfo.health = 1;
                    }
                }
                this->invincibilityTimer = 0xA;
            } else {
                flags = temp_s0->toucher.flags;
                if (((flags << 0xB) >= 0) && (flags & 0x80)) {
                    if (this->actionState >= 0xA) {
                        func_80078914(&D_80925CD4->unk_1010, 0x38F4);
                        D_80925CD4->cutIndex = this->corePos;
                        D_80925CD4->meltIndex = D_80925CD4->cutIndex + 1;
                        D_80925CD4->cutScale = 1.0f;
                        D_80925CD4->actionState = 0x64;
                        D_80925CD4->timers[0] = 0x28;
                        D_80925CD4->actor.flags &= ~1;
                        if (player->actor.parent == (Actor*)D_80925CD4) {
                            player->unk_850 = 0x65;
                            player->actor.parent = NULL;
                            player->csMode = 0;
                        }
                    }
                    this->actionState = 5;
                    this->timers[0] = 0x1E;
                    this->invincibilityTimer = 0xA;
                    this->actor.speedXZ = 0.0f;
                }
            }
            for (i = 0; i < 10; i++) {
                sp48.x = Math_Rand_CenteredFloat(4.0f);
                sp48.y = Math_Rand_ZeroFloat(2.0f) + 3.0f;
                sp48.z = Math_Rand_CenteredFloat(4.0f);
                sp54 = this->actor.posRot.pos;
                sp54.x += (sp48.x * 3.0f);
                sp54.z += (sp48.z * 3.0f);
                func_8091BE5C(3, globalCtx->unk_11E10, &sp54, &sp48, Math_Rand_ZeroFloat(0.08f) + 0.13f);
            }
        }
    }
    // end !!
    osSyncPrintf("Core_Damage_check 終わり ！！\n");
    osSyncPrintf("\x1b[m");
}

void func_809216D0(BossMo* this, GlobalContext* globalCtx) {
    static f32 D_80926400[11] = { 0.1f, 0.15f, 0.2f, 0.3f, 0.4f, 0.43f, 0.4f, 0.3f, 0.2f, 0.15f, 0.1f };
    u8 spE7;
    Player* player = PLAYER;
    f32 spDC;
    f32 spD8;
    f32 spD4;
    f32 spD0;
    f32 spCC;
    s16 index;
    s16 i;
    s32 temp;
    f32 phi_f0;
    f32 phi_f2;
    Vec3f spB0;
    Vec3f spA4;
    Vec3f sp98;
    f32 pad2;
    f32 pad;
    s16 i2;
    f32 sp88;
    s32 sp48;
    f32 sp80;
    f32 sp7C;
    Vec3f sp70;
    Vec3f sp64;
    f32 sp60;
    f32 sp5C;
    f32 phi_f12;

    this->waterTex1x += -1.0f;
    this->waterTex1y += -1.0f;
    this->waterTex2x = this->waterTex2x;
    this->waterTex2y++; // These are not fake matches.

    Math_SmoothScaleMaxF(&this->baseOpacity, 255.0f, 1.0f, 10.0f);
    if ((this->cutsceneState != 0) && (this->cutsceneState < 0x64)) {
        func_8091F5A8(this, globalCtx);
        if (this->actionState == 0x14) {
            this->actor.flags &= ~1;
            return;
        }
    } else if (this->cutsceneState >= 0x64) {
        func_809206C4(this, globalCtx);
        return;
    }
    if ((0xA > this->actionState) && (this->actionState >= 0) && (this->actor.posRot.pos.y > WATER_LEVEL)) {
        if (this->actor.velocity.y > 0.0f) {
            phi_f0 = 0.005f;
            phi_f2 = 0.015f;
        } else {
            phi_f0 = 0.015f;
            phi_f2 = 0.005f;
        }
    } else {
        phi_f0 = phi_f2 = 0.008f;
    }
    Math_SmoothScaleMaxF(&this->actor.scale.x, phi_f0, 0.2f, 0.001f);
    this->actor.scale.z = this->actor.scale.x;
    Math_SmoothScaleMaxF(&this->actor.scale.y, phi_f2, 0.2f, 0.001f);
    this->drawShadow = func_8091BC40(&this->actor.posRot.pos, 15.0f);
    spE7 = func_8091BC40(&this->actor.posRot.pos, 0.0f);
    if ((player->actor.posRot.pos.y < (WATER_LEVEL - 50.0f)) &&
        ((this->actionState == 0) || (this->actionState == 1))) {
        this->actionState = 2;
        this->actor.speedXZ = 0.0f;
        this->waitUnderwater = 0;
    }
    switch (this->actionState) {
        case 0:
            this->actor.flags |= 1;
            if ((this->timers[0] == 0) && ((D_80925CD4->actionState == 0xA) || (D_80925CD4->actionState == 0)) &&
                (this->actor.posRot.pos.y < WATER_LEVEL)) {
                this->actor.speedXZ = 0.0f;
                this->actionState = 1;
                if (D_80925CD4->actionState == 0xA) {
                    D_80925CD4->actionState = 0xB;
                    D_80925CD4->timers[0] = 0x46;
                    D_80925CD4->actor.shape.rot.y = D_80925CD4->actor.yawTowardsLink;
                }
            }
            break;
        case 1:
            if ((D_80925CD4->actionState == 0x66) || (D_80925CD4->actionState == 0xA)) {
                this->actionState = 0;
                this->timers[0] = 0x46;
            }
            if (D_80925CD4->actionState == 0x64) {
                this->actionState = 0xA;
                this->corePos = 0;
                this->timers[0] = 0;
            }
            if (D_80925CD4->actionState == 2) {
                this->actionState = 0xA;
                this->corePos = 0;
                this->timers[0] = 0;
                this->actor.speedXZ = 0.0f;
            }
            break;
        case 2:
            if (player->actor.posRot.pos.y >= WATER_LEVEL) {
                this->actionState = 0;
                this->actor.speedXZ = 0.0f;
            }
            break;
        case 5:
            this->actor.flags |= 1;
            if (this->timers[0] == 0) {
                this->actionState = 0;
                this->timers[0] = 0x1E;
            }
            if (this->actor.posRot.pos.y < WATER_LEVEL) {
                this->actionState = 1;
                this->timers[0] = 0x32;
                this->actor.speedXZ = 0.0f;
            }
            break;
        case -11:
            break;
    }
    if (this->timers[0] == 0) {
        switch (this->actionState) {
            case 0xA:
                this->actor.flags |= 1;
                this->corePos++;
                if (D_80925CD4->actionState == 2) {
                    temp = (s16)(Math_Sins(this->pulseTimer * 0x300) * 10.0f) + 15;
                    if (this->corePos >= temp) {
                        this->corePos = temp;
                    }
                }
                if ((D_80925CD4->actionState != 2) && (0x64 != D_80925CD4->actionState)) {
                    this->actionState = 0xB;
                    this->timers[0] = 0;
                }
                break;
            case 0xB:
                this->corePos--;
                if (this->corePos <= 0) {
                    this->actionState = 1;
                    this->timers[0] = 0x64;
                    this->tentSpeed = 0.0f;
                    this->actor.speedXZ = 0.0f;
                }
                this->timers[0] = 0;
                break;
            case 0x15:
                this->actor.flags &= ~1;
                this->corePos = this->corePos + 1;
                temp = (s16)(Math_Sins(this->pulseTimer * 0x500) * 10.0f) + 15;
                if (this->corePos >= temp) {
                    this->corePos = temp;
                }
                if (D_80925CD4->actionState != 0) {
                    this->actionState = 0xB;
                    this->timers[0] = 0;
                }
                break;
        }
    }
    if (this->actionState >= 0xA) {
        if (this->corePos < 0) {
            this->corePos = 0;
        } else if (this->corePos > 0x28) {
            this->corePos = 0x28;
        }
        index = ((0x12C - (this->corePos * 2)) + D_80925CD4->tentWidthIndex) % 0x12C;
        sp88 = D_80925CD4->tentWidth[index] * D_80926264[this->corePos];
        for (i2 = -5; i2 < 6; i2++) {
            index = (this->corePos + i2) - 2;
            if ((0 <= index) && (index <= 0x28)) {
                Math_SmoothScaleMaxF(&D_80925CD4->tentScale[index].x, ((D_80926400[i2 + 5] * 300.0f) / 100.0f) + sp88,
                                     0.75f, 5.0f);
            }
        }
        this->targetPos.x = D_80925CD4->tentPos[this->corePos].x;
        this->targetPos.y = D_80925CD4->tentPos[this->corePos].y;
        this->targetPos.z = D_80925CD4->tentPos[this->corePos].z;
        if (this->corePos < 2) {
            this->targetPos.y -= 20.0f;
        }
        Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, this->targetPos.x, 0.5f, this->actor.speedXZ);
        Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, this->targetPos.y, 0.5f, this->actor.speedXZ);
        Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, this->targetPos.z, 0.5f, this->actor.speedXZ);
        Math_SmoothScaleMaxF(&this->actor.speedXZ, 30.0f, 1.0f, 1.0f);
    } else {
        switch (this->actionState) {
            case 0:
                sp80 = Math_Sins(this->rippleTimer * 0x800) * 100.0f;
                sp7C = Math_Coss(this->rippleTimer * 0x800) * 100.0f;
                Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, D_80925CD4->targetPos.x + sp80, 0.05f,
                                     this->actor.speedXZ);
                Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, D_80925CD4->targetPos.z + sp7C, 0.05f,
                                     this->actor.speedXZ);
                Math_SmoothScaleMaxF(&this->actor.speedXZ, 10.0f, 1.0f, 0.5f);
                break;
            case 5:
                this->actor.velocity.x = Math_Sins(this->actor.posRot.rot.y) * this->actor.speedXZ;
                this->actor.velocity.z = Math_Coss(this->actor.posRot.rot.y) * this->actor.speedXZ;
                this->actor.posRot.pos.x += this->actor.velocity.x;
                this->actor.posRot.pos.z += this->actor.velocity.z;
                break;
        }
        if ((this->actionState == 0) || (this->actionState == 5)) {
            this->actor.posRot.pos.y += this->actor.velocity.y;
            this->actor.velocity.y -= 1.0f;
            func_8002E4B4(globalCtx, &this->actor, 50.0f, 20.0f, 100.0f, 1);
            spA4.x = spA4.y = spA4.z = 0.0f;
            for (i = 0; i < 1; i++) {
                spB0.x = Math_Rand_CenteredFloat(20.0f) + this->actor.posRot.pos.x;
                spB0.y = Math_Rand_CenteredFloat(20.0f) + this->actor.posRot.pos.y;
                spB0.z = Math_Rand_CenteredFloat(20.0f) + this->actor.posRot.pos.z;
                func_8091BE5C(3, globalCtx->unk_11E10, &spB0, &spA4, Math_Rand_ZeroFloat(0.02f) + 0.05f);
            };

            if (spE7 != 0) {
                if (this->actor.posRot.pos.y <= 10) {
                    this->actor.posRot.pos.y = 10;
                    this->actor.velocity.y = -0.01f;
                    if (this->timers[1] != 0) {
                        if (this->timers[1] == 1) {
                            this->actor.velocity.y = 6.0f;
                        }
                    } else {
                        this->timers[1] = 2;
                        Audio_PlayActorSound2(&this->actor, 0x38DD);
                        for (i = 0; i < 10; i++) {
                            spA4.x = Math_Rand_CenteredFloat(4.0f);
                            spA4.y = Math_Rand_ZeroFloat(2.0f) + 3.0f;
                            spA4.z = Math_Rand_CenteredFloat(4.0f);
                            spB0 = this->actor.posRot.pos;
                            spB0.x += spA4.x;
                            spB0.z += spA4.z;
                            func_8091BE5C(3, globalCtx->unk_11E10, &spB0, &spA4, Math_Rand_ZeroFloat(0.08f) + 0.13f);
                        }
                        spA4.x = spA4.y = spA4.z = 0.0f;
                        spB0 = this->actor.posRot.pos;
                        spB0.y = 0.0f;
                        func_8091BE5C(3, globalCtx->unk_11E10, &spB0, &spA4, 0.4f);
                    }
                }
            } else if (this->actor.posRot.pos.y < WATER_LEVEL) {
                this->actor.velocity.y = func_8091BC40(&this->actor.posRot.pos, 40.0f) ? 15.0f : 6.0f;
                if ((this->actor.posRot.pos.y + 15.0f) >= WATER_LEVEL) {
                    Audio_PlayActorSound2(&this->actor, 0x38F7);
                }
            }
        } else if (this->actionState >= 0) {
            if (this->actor.posRot.pos.y < WATER_LEVEL) {
                if (this->actionState == 1) {
                    this->targetPos.x = D_80925CD4->targetPos.x;
                    this->targetPos.y = D_80925CD4->actor.posRot.pos.y - 40.0f;
                    this->targetPos.z = D_80925CD4->targetPos.z;
                    Math_SmoothScaleMaxF(&this->actor.speedXZ, 10.0f, 1.0f, 0.5f);
                } else if (this->actionState == 2) {
                    switch (this->waitUnderwater) {
                        case 0:
                            this->targetPos = player->actor.posRot.pos;
                            this->targetPos.y += 30.0f;
                            sp70.x = 0.0f;
                            sp70.y = 0.0f;
                            sp70.z = 100.0f;
                            Matrix_RotateY((player->actor.posRot.rot.y / (f32)0x8000) * M_PI, 0);
                            Matrix_MultVec3f(&sp70, &sp64);
                            this->targetPos.x = player->actor.posRot.pos.x + sp64.x;
                            this->targetPos.y = player->actor.posRot.pos.y + 30.0f;
                            this->targetPos.z = player->actor.posRot.pos.z + sp64.z;
                            Math_SmoothScaleMaxF(&this->actor.speedXZ, 10.0f, 1.0f, 1.0f);
                            if (this->timers[0] == 0) {
                                this->waitUnderwater = 1;
                                this->timers[0] = (s16)Math_Rand_ZeroFloat(50.0f) + 50;
                            }
                            break;
                        case 1:
                            Math_SmoothScaleMaxF(&this->actor.speedXZ, 1.0f, 1.0f, 0.5f);
                            if (this->timers[0] == 0) {
                                this->waitUnderwater = 0;
                                this->timers[0] = (s16)Math_Rand_ZeroFloat(20.0f) + 20;
                                Audio_PlayActorSound2(&this->actor, 0x38DE);
                            }
                            break;
                    }
                }
                this->targetPos.x += Math_Sins(this->pulseTimer * 3096.0f) * 30.0f;
                this->targetPos.y += Math_Sins(this->pulseTimer * 2096.0f) * 30.0f;
                this->targetPos.z += Math_Sins(this->pulseTimer * 2796.0f) * 30.0f;
                this->tentMaxAngle = 5.0f;
                this->tentSpeed = 4000.0f;
                spDC = this->targetPos.x - this->actor.posRot.pos.x;
                spD8 = this->targetPos.y - this->actor.posRot.pos.y;
                spD4 = this->targetPos.z - this->actor.posRot.pos.z;
                spCC = (s16)(Math_atan2f(spDC, spD4) * (0x8000 / M_PI));
                spD0 = (s16)(Math_atan2f(spD8, sqrtf((spDC * spDC) + (spD4 * spD4))) * (0x8000 / M_PI));
                Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, spCC, this->tentMaxAngle, this->tentSpeed);
                Math_SmoothScaleMaxS(&this->actor.posRot.rot.x, spD0, this->tentMaxAngle, this->tentSpeed);
                func_8002D908(&this->actor);
            } else {
                this->actor.posRot.pos.y += this->actor.velocity.y;
                this->actor.velocity.y -= 1.0f;
            }
            func_8002D7EC(&this->actor);
            temp = (this->actor.posRot.pos.y < -200.0f) ? 5 : 1;
            this->actor.posRot.pos.y -= 20.0f;
            func_8002E4B4(globalCtx, &this->actor, 50.0f, 20.0f, 100.0f, temp);
            this->actor.posRot.pos.y += 20.0f;
        }
    }
    if ((this->actor.posRot.pos.y < WATER_LEVEL) && (WATER_LEVEL <= this->actor.pos4.y)) {
        if (this->actor.velocity.y < -5.0f) {
            Audio_PlayActorSound2(&this->actor, 0x38F7);
        } else {
            Audio_PlayActorSound2(&this->actor, 0x38DF);
        }
        if ((this->timers[3] != 0) || ((D_80925CD4->unk_1A0 > 0.2f) &&
                                       (fabsf(this->actor.posRot.pos.x - D_80925CD4->actor.posRot.pos.x) < 30.0f) &&
                                       (fabsf(this->actor.posRot.pos.z - D_80925CD4->actor.posRot.pos.z) < 30.0f))) {

        } else {
            this->timers[3] = 8;
            for (i = 0; i < 10; i++) {
                sp5C = Math_Rand_ZeroFloat(3.14f);
                sp60 = Math_Rand_ZeroFloat(0.6f) + 1.6f;
                spA4.x = Math_Sins(((i * (f32)0x10000) / 10.0f) + sp5C) * sp60;
                spA4.z = Math_Coss(((i * (f32)0x10000) / 10.0f) + sp5C) * sp60;
                spA4.y = Math_Rand_ZeroFloat(0.3f) + 3.0f;

                spB0 = this->actor.posRot.pos;
                spB0.x += spA4.x * 3.0f;
                spB0.y = WATER_LEVEL;
                spB0.z += spA4.z * 3.0f;
                func_8091BE5C(4, globalCtx->unk_11E10, &spB0, &spA4, Math_Rand_ZeroFloat(0.075f) + 0.15f);
            }
            spB0 = this->actor.posRot.pos;
            spB0.y = WATER_LEVEL;
            func_8091BD38(globalCtx->unk_11E10, &spB0, 100.0f, 800.0f, 0x64, 0x122, 1);
            func_8091BD38(globalCtx->unk_11E10, &spB0, 50.0f, 600.0f, 0x46, 0x122, 1);
            func_8091BD38(globalCtx->unk_11E10, &spB0, 0, 400.0f, 0x32, 0x122, 1);
        }
    }
    if ((this->actor.posRot.pos.y < WATER_LEVEL) || (this->actionState >= 0xA)) {
        for (i = 0; i < 3; i++) {
            sp98.x = sp98.z = 0.0f;
            spA4.x = spA4.y = spA4.z = 0.0f;
            if (this->actionState >= 0xA) {
                sp98.y = 0.0f;
                phi_f12 = 10.0f;
            } else {
                sp98.y = 0.1f;
                phi_f12 = 20.0f;
            }
            spB0.x = Math_Rand_CenteredFloat(phi_f12) + this->actor.posRot.pos.x;
            spB0.y = Math_Rand_CenteredFloat(phi_f12) + this->actor.posRot.pos.y;
            spB0.z = Math_Rand_CenteredFloat(phi_f12) + this->actor.posRot.pos.z;
            func_8091BFFC(globalCtx->unk_11E10, &spB0, &spA4, &sp98, Math_Rand_ZeroFloat(0.05f) + 0.1f, 0);
        }
    }
    func_80921280(this, globalCtx);
}

void func_80922D30(Actor* thisx, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    BossMo* this = THIS;
    s16 i;
    Player* player = PLAYER;

    osSyncPrintf("CORE mode = <%d>\n", this->actionState);
    if (D_80925CD8 == NULL) {
        WATER_LEVEL = D_80925CD4->waterLevelMod + (s16)this->waterLevel;
    } else {
        WATER_LEVEL = D_80925CD8->waterLevelMod + ((s16)this->waterLevel + D_80925CD4->waterLevelMod);
    }
    this->actor.flags |= 0x200;
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->rippleTimer++;
    DECR(this->damageFlashTimer);
    DECR(this->invincibilityTimer);
    this->pulseTimer++;
    for (i = 0; i < 5; i++) {
        DECR(this->timers[i]);
    }
    func_809216D0(this, globalCtx2);
    Collider_CylinderUpdate(&this->actor, &this->collider2);
    CollisionCheck_SetAC(globalCtx2, &globalCtx2->colChkCtx, &this->collider2.base);
    if ((this->actionState != 5) || (this->actor.posRot.pos.y < WATER_LEVEL)) {
        CollisionCheck_SetAT(globalCtx2, &globalCtx2->colChkCtx, &this->collider2.base);
    } else {
        CollisionCheck_SetOC(globalCtx2, &globalCtx2->colChkCtx, &this->collider2.base);
    }
    func_80924D70(this, globalCtx2);
    if (player->actor.parent != NULL) {
        this->actor.flags &= ~1;
    }
    func_80925C18();
}

void BossMo_Update(Actor* thisx, GlobalContext* globalCtx) {
    s16 i;
    s16 index;
    GlobalContext* globalCtx2 = globalCtx;
    BossMo* this = THIS;
    Player* player = PLAYER;
    f32 phi_f0;

    if ((this == D_80925CD8) && (this->tent2KillTimer != 0)) {
        this->tent2KillTimer++;
        this->actor.draw = NULL;
        if ((u8)this->tent2KillTimer >= 0x15) {
            Actor_Kill(&this->actor);
            func_800F89E8(&this->unk_1010);
            D_80925CD8 = NULL;
        }
    } else {
        SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx2->mf_11D60, &this->tentPos[40], &this->unk_1010,
                                     &this->actor.projectedW);
        osSyncPrintf("MO : Move mode = <%d>\n", this->actionState);
        Math_SmoothScaleMaxS(&player->actor.shape.rot.x, 0, 5, 0x3E8);
        Math_SmoothScaleMaxS(&player->actor.shape.rot.z, 0, 5, 0x3E8);
        this->rippleTimer++;
        this->unk_17C++;
        this->pulseTimer++;
        this->tentWidthIndex++;
        if (this->tentWidthIndex >= 300) {
            this->tentWidthIndex = 0;
        }
        this->tentPulseTimer -= 3000;
        index = this->tentWidthIndex;
        this->tentWidth[index] = (Math_Sins(this->tentPulseTimer) * this->tentPulse) + (1.0f + this->tentPulse);
        for (i = 0; i < 41; i++) {
            if (this->actionState >= 0xC8) {
                if (this->actionState >= 0xC9) {
                    if (this->actionState == 0xCD) {
                        phi_f0 = (this->timers[0] != 0) ? D_80925CDC[i] : D_80926308[i];
                        Math_SmoothScaleMaxF(&this->tentScale[i].x, phi_f0, 0.5f, 100.0f);
                    } else {
                        index = ((this->tentWidthIndex + (i * 2)) + 220) % 300;
                        phi_f0 = this->tentWidth[index] + (D_80926264[i] * D_80926264[i]);
                        Math_SmoothScaleMaxF(&this->tentScale[i].x, phi_f0, 0.5f, 0.3f);
                    }
                } else {
                    index = ((this->tentWidthIndex - (i * 2)) + 300) % 300;
                    phi_f0 = this->tentWidth[index] * D_80926264[i];
                    this->tentScale[i].x = phi_f0;
                }
            } else {
                index = ((this->tentWidthIndex - (i * 2)) + 300) % 300;
                phi_f0 = this->tentWidth[index] * D_80926264[i];
                Math_SmoothScaleMaxF(&this->tentScale[i].x, phi_f0, 0.5f, 0.3f);
            }
            phi_f0 = Math_Sins((this->rippleTimer * 12000.0f) + (i * 20000.0f));
            this->tentRipple[i].x = (1.0f * phi_f0) * this->tentRippleSize;
            this->tentScale[i].y = this->tentScale[i].z = this->tentScale[i].x;
            this->tentRipple[i].y = this->tentRipple[i].z = this->tentRipple[i].x;
        }

        Math_SmoothScaleMaxF(&this->tentRippleSize, 0.0f, 0.1f, 0.005f);
        Math_SmoothScaleMaxF(&this->tentPulse, 0.2f, 0.5f, 0.01f);
        this->actionFunc(this, globalCtx2);
        for (i = 0; i < 5; i++) {
            DECR(this->timers[i]);
        }
        Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 0xA, 0xC8);
        Actor_MoveForward(&this->actor);
        Math_SmoothScaleMaxF(&this->actor.speedXZ, 0.0, 1.0f, 0.02f);

        if (func_8091BC40(&this->actor.posRot.pos, 40) != 0) {
            this->actor.posRot.pos = this->actor.pos4;
        }
        if ((this->rippleTimer % 8) == 0) {
            f32 phi_f0_2;
            Vec3f sp94 = this->actor.posRot.pos;

            if (this->actionState < 0xC8) {
                phi_f0_2 = 400.0f;
            } else {
                phi_f0_2 = 0.0;
                if (this->actionState >= 0xC9) {
                    sp94 = this->tentPos[38];
                }
            }
            func_8091BD38(globalCtx2->unk_11E10, &sp94, phi_f0_2, phi_f0_2 * 3.0f, this->baseOpacity * 0.6666f, 300, 2);
        }
        if (this->baseBubblesTimer != 0) {
            Vec3f sp88;
            Vec3f sp7C;
            Vec3f sp70;
            Vec3f sp64 = { 0.0f, 0.0f, 0.0f };
            f32 pad;

            this->baseBubblesTimer--;
            sp88.x = 0.0;
            sp88.y = 0.0;
            sp88.z = 100.0f;
            Matrix_RotateY(Math_Rand_ZeroFloat(2.0f * M_PI), 0);
            Matrix_MultVec3f(&sp88, &sp7C);
            if ((this->actionState >= 0xC9) && (this->actionState != 0xCB)) {
                i = 38;
            } else {
                i = 0;
                if (this->actionState < 0x64) {
                    func_80078914(&this->unk_1010, 0x30FA);
                }
            }
            sp70.x = this->tentPos[i].x + sp7C.x;
            sp70.y = (WATER_LEVEL - 40.0f) + Math_Rand_ZeroFloat(20.0f);
            sp70.z = this->tentPos[i].z + sp7C.z;
            func_8091BFFC(globalCtx2->unk_11E10, &sp70, &sp64, &sp64, Math_Rand_ZeroFloat(0.05f) + 0.2f,
                          &this->tentPos[i]);
        }

        DECR(this->damageFlashTimer);
        DECR(this->invincibilityTimer);
        DECR(this->linkHitTimer);

        if (this->drawActor) {
            func_8091F2FC(this, globalCtx2);
            if ((this->invincibilityTimer == 0) && (this->actionState != 4) && (this->actionState != 5)) {
                BossMo* otherTent = (BossMo*)this->otherTent;
                if (((otherTent == NULL) || ((otherTent->actionState != 4) && (otherTent->actionState != 5))) &&
                    (this->cutIndex == 0)) {
                    CollisionCheck_SetOC(globalCtx2, &globalCtx2->colChkCtx, &this->collider1.base);
                    CollisionCheck_SetAT(globalCtx2, &globalCtx2->colChkCtx, &this->collider1.base);
                }
            }
            if (this->cutIndex == 0) {
                CollisionCheck_SetAC(globalCtx2, &globalCtx2->colChkCtx, &this->collider1.base);
            }
        }
        this->baseTex1x++;
        this->baseTex1y++;
        this->baseTex2x -= 3;
        this->baseTex2y++;
        Math_SmoothDownscaleMaxF(&this->waterLevelMod, 0.1f, 0.2f);
    }
}

void func_809237C4(BossMo* this, s32 item, ColliderJntSph* collider1, Vec3f* center) {
    collider1->list[item].dim.worldSphere.center.x = center->x;
    collider1->list[item].dim.worldSphere.center.y = center->y;
    collider1->list[item].dim.worldSphere.center.z = center->z;
    if (this->actionState < 6) {
        collider1->list[item].dim.worldSphere.radius =
            collider1->list[item].dim.modelSphere.radius * collider1->list[item].dim.scale;
    } else {
        collider1->list[item].dim.worldSphere.radius = 0;
    }
}

static s32 D_80926438[41] = { 0x06007C78, 0x06007D38, 0x06007D88, 0x06007DD0, 0x06007E18, 0x06007E60, 0x06007EA8,
                              0x06007EF0, 0x06007F38, 0x06007F80, 0x06007FC8, 0x06008010, 0x06008058, 0x060080A0,
                              0x060080E8, 0x06008130, 0x06008178, 0x060081C0, 0x06008208, 0x06008250, 0x06008298,
                              0x060082E0, 0x06008328, 0x06008370, 0x060083B8, 0x06008400, 0x06008448, 0x06008490,
                              0x060084D8, 0x06008520, 0x06008568, 0x060085B0, 0x060085F8, 0x06008640, 0x06008688,
                              0x060086D0, 0x06008718, 0x06008760, 0x060087A8, 0x060087F0, 0x06008838 };

void func_80923870(BossMo* this, GlobalContext* globalCtx) {
    static Vec3f D_809264E8 = { 0.0f, 0.0f, 0.0f };
    s16 i;
    s16 notCut;
    s16 index;
    Mtx* matrix;
    f32 phi_f20;
    f32 phi_f22;
    Vec3f sp110;

    matrix = Graph_Alloc(globalCtx->state.gfxCtx, 41 * sizeof(Mtx));

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6366);

    sp110.x = globalCtx->envCtx.unk_2A;
    sp110.y = globalCtx->envCtx.unk_2B;
    sp110.z = globalCtx->envCtx.unk_2C;
    Matrix_Push();

    gDPPipeSync(oGfxCtx->polyXlu.p++);

    gSPSegment(oGfxCtx->polyXlu.p++, 0x0C, matrix);

    Matrix_Translate(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0);
    Matrix_RotateY((this->actor.shape.rot.y / (f32)0x8000) * M_PI, 1);
    Matrix_RotateX((this->actor.shape.rot.x / (f32)0x8000) * M_PI, 1);

    func_8091BB00(0x0001, 0x71AC, 0x263A);

    for (i = 0; i < 41; i++, matrix++) {
        f32 pad;
        f32 pad2;
        if (i < 2) {
            Matrix_Push();
            Matrix_Scale(0.0f, 0.0f, 0.0f, 1);
            notCut = 1;
        } else {
            if (i >= 3) {
                Matrix_Translate(0.0f, this->tentStretch[i - 2].y, 0.0f, 1);
                Matrix_RotateX((this->tentRot[i - 2].x / (f32)0x8000) * M_PI, 1);
                Matrix_RotateZ((this->tentRot[i - 2].z / (f32)0x8000) * M_PI, 1);
            }
            Matrix_Push();
            Matrix_Scale((this->tentScale[i - 2].x + this->tentRipple[i - 2].x) * this->actor.scale.x,
                         (this->tentScale[i - 2].y + this->tentRipple[i - 2].y) * this->actor.scale.y,
                         (this->tentScale[i - 2].z + this->tentRipple[i - 2].z) * this->actor.scale.z, 1);
            notCut = 1;
            if ((i >= this->cutIndex) && (this->meltIndex >= i)) {
                Matrix_Scale(this->cutScale, this->cutScale, this->cutScale, 1);
                notCut = 0;
            }
        }

        index = ((this->tentWidthIndex - (i * 2)) + 300) % 300;
        if (this->actionState < 0xC8) {
            Matrix_RotateY(((((this->tentWidth[index] - 1.0f) - this->tentPulse) * 1000) / 1000.0f) * (*this).unk_1A0,
                           1);
        }
        Matrix_RotateX(M_PI / 2.0f, 1);
        Matrix_ToMtx(matrix, "../z_boss_mo.c", 6452);

        gSPMatrix(oGfxCtx->polyXlu.p++, matrix, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        if (i == 0) {
            func_8002EB44(&this->tentPos[i], &globalCtx->view.eye, &sp110, globalCtx->state.gfxCtx);
        }

        if (i == 0) {
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_06007C00);
        } else {
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_80926438[i]);
        }

        Matrix_Pull();

        if ((i >= 2) && notCut && (i < (this->noBubbles + 38))) {
            if ((this->actionState == 0xC9) || (this->actionState == 0xCA)) {
                phi_f20 = this->pulseTimer & 3;
                phi_f20 *= -15.0f;
                phi_f22 = ((0.18f + func_8091BB1C() * 0.1f) * this->actor.scale.x) * 100.0f;
            } else {
                phi_f20 = 0.0f;
                phi_f22 = (((func_8091BB1C() * (0.08f)) + .08f) * this->actor.scale.x) * 100.0f;
            }
            Matrix_Push();
            Matrix_Translate(((func_8091BB1C() - 0.5f) * 10.0f) * this->tentScale[i - 2].x,
                             ((func_8091BB1C() - 0.5f) * 3.0f) + phi_f20,
                             ((func_8091BB1C() - 0.5f) * 10.0f) * this->tentScale[i - 2].z, 1);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(phi_f22, phi_f22, 1.0f, 1);

            gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6511),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(oGfxCtx->polyOpa.p++, D_06000140);

            Matrix_Pull();
        }

        Matrix_MultVec3f(&D_809264E8, &this->tentPos[i]);
        if (i == 36) {
            Matrix_MultVec3f(&D_809264E8, &this->actor.posRot2.pos);
        }
        if (i == 24) {
            MtxF sp98;
            Vec3f sp8C = { -16.0f, 13.0f, 30.0f };
            Vec3s sp84;
            Matrix_Push();
            if (this->unk_176 != 0) {
                sp8C.x *= -1.0f;
            }
            Matrix_MultVec3f(&sp8C, &this->grabPosRot.pos);
            Matrix_RotateX(-35 * M_PI / 64, 1);
            Matrix_Get(&sp98);
            func_800D20CC(&sp98, &sp84, 0);
            this->grabPosRot.rot.x = sp84.x;
            this->grabPosRot.rot.y = sp84.y;
            this->grabPosRot.rot.z = sp84.z;
            Matrix_Pull();
        }
        if ((i < 38) && ((i & 1) == 1)) {
            func_809237C4(this, i / 2, &this->collider1, &this->tentPos[i]);
        }
    }

    Matrix_Pull();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6571);
}

void func_80923FDC(BossMo* this, GlobalContext* globalCtx) {
    f32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6582);
    if (1) {}

    Matrix_Push();
    func_80093D84(globalCtx->state.gfxCtx);
    Matrix_Translate(0.0f, WATER_LEVEL, 0.0f, 0);

    gSPSegment(oGfxCtx->polyXlu.p++, 0x0D,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (s16)this->waterTex1x, (s16)this->waterTex1y, 0x20, 0x20, 1,
                                (s16)this->waterTex2x, (s16)this->waterTex2y, 0x20, 0x20));

    gDPPipeSync(oGfxCtx->polyXlu.p++);

    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0xFF, 0xFF, 0xC8, 0xFF, 0xFF, (s8)D_80925CD4->waterTexOpacity);

    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x00, 0x64, 0xFF, 0x50);

    Matrix_Scale(0.5f, 1.0f, 0.5f, 1);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6675),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(oGfxCtx->polyXlu.p++, D_06004C50);

    Matrix_Pull();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6680);
}

void func_80924228(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BossMo* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6688);
    if (WATER_LEVEL < this->actor.posRot.pos.y) {
        func_80923FDC(this, globalCtx);
    }
    if (this->drawActor) {
        func_80093D84(globalCtx->state.gfxCtx);

        gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, D_80925CD4->rippleTimer * 3,
                                    D_80925CD4->rippleTimer * 3, 0x20, 0x20, 1, D_80925CD4->rippleTimer * -3,
                                    D_80925CD4->rippleTimer * -3, 0x20, 0x20));
        gSPSegment(oGfxCtx->polyXlu.p++, 0x09,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, D_80925CD4->rippleTimer * 5, 0, 0x20, 0x20, 1, 0,
                                    D_80925CD4->rippleTimer * -10, 0x20, 0x20));

        Matrix_RotateX(this->pulseTimer * 0.5f, 1);
        Matrix_RotateZ(this->pulseTimer * 0.8f, 1);
        gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6735),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0xFF, 0xFF, 0xFF, (s8)this->baseOpacity);

        func_8002ED80(&this->actor, globalCtx, 0);

        gSPDisplayList(oGfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(&D_06006700));

        gDPPipeSync(oGfxCtx->polyXlu.p++);

        gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x00, 0xDC, 0xFF, 0x80);
        if ((this->damageFlashTimer & 1) != 0) {
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0xFF, 0x3C, 0x00, 0xFF);
        } else {
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0xFF, 0xFF, 0xFF, 0xFF);
        }
        gSPDisplayList(oGfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(&D_06006838));

        if (((this->drawShadow != 0) && (0.0f <= this->actor.posRot.pos.y)) ||
            (this->actor.posRot.pos.y < WATER_LEVEL)) {
            f32 spA0;
            s16 sp9E;
            if (this->actor.posRot.pos.y < WATER_LEVEL) {
                spA0 = -280.0f;
                sp9E = 0x64;
            } else {
                spA0 = 0.0f;
                sp9E = 0xA0;
            }

            func_80094044(globalCtx->state.gfxCtx);

            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0x00, 0x00, 0x00, sp9E);

            Matrix_Translate(this->actor.posRot.pos.x, spA0, this->actor.posRot.pos.z, 0);
            Matrix_Scale(0.23f, 1.0f, 0.23f, 1);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6820),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(oGfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(&D_04049210));
        }
    }

    if (this->actor.posRot.pos.y < WATER_LEVEL) {
        func_80923FDC(this, globalCtx);
    }

    if ((this->cutsceneCamera != 0) && (this->cutsceneState < 4)) {
        f32 sp8C;
        f32 sp88;
        f32 sp84;
        f32 pad80;
        f32 sp7C;
        f32 sp78;
        Vec3f sp6C;
        Vec3f sp60;

        func_80093D84(globalCtx->state.gfxCtx);

        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0xFF, 0xFF, 0xC8, 0xFF, 0xFF, (s8)this->unk_188);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x00, 0x64, 0xFF, (s8)this->unk_188);

        gSPSegment(oGfxCtx->polyXlu.p++, 0x0D,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (s16)D_80925CD4->waterTex1x,
                                    (s16)D_80925CD4->waterTex1y, 0x20, 0x20, 1, (s16)D_80925CD4->waterTex2x,
                                    (s16)D_80925CD4->waterTex2y, 0x20, 0x20));

        sp8C = this->unk_F74.x - this->unk_F68.x;
        sp88 = this->unk_F74.y - this->unk_F68.y;
        sp84 = this->unk_F74.z - this->unk_F68.z;
        pad80 = SQ(sp8C) + SQ(sp84);
        sp7C = Math_atan2f(sp8C, sp84);
        sp78 = -Math_atan2f(sp88, sqrtf(pad80));

        sp6C.x = 0.0f;
        sp6C.y = 0.0f;
        sp6C.z = 10.0f;

        Matrix_RotateY(sp7C, 0);
        Matrix_RotateX(sp78, 1);
        Matrix_MultVec3f(&sp6C, &sp60);
        sp8C = sp60.x + this->unk_F68.x;
        sp88 = sp60.y + this->unk_F68.y;
        sp84 = sp60.z + this->unk_F68.z;
        Matrix_Translate(sp8C, sp88, sp84, 0);
        Matrix_RotateY(sp7C, 1);
        Matrix_RotateX(sp78, 1);
        Matrix_RotateZ(-(0.01f * this->rippleTimer), 1);
        Matrix_RotateZ(0.1f * this->rippleTimer, 1);
        Matrix_Scale(0.825f, 1.175f, 0.825f, 1);
        Matrix_RotateZ(-(this->rippleTimer * 0.1f), 1);
        Matrix_RotateX(M_PI / 2.0f, 1);
        Matrix_Scale(0.05f, 1.0f, 0.05f, 1);

        gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6941),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPDisplayList(oGfxCtx->polyXlu.p++, &D_06004C50);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 6945);
    func_80925480(globalCtx->unk_11E10, globalCtx);
}

void BossMo_Draw(Actor* thisx, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    BossMo* this = THIS;
    u16 temp_a0;

    OPEN_DISPS(globalCtx2->state.gfxCtx, "../z_boss_mo.c", 6958);
    if (1) {}
    func_80093D18(globalCtx2->state.gfxCtx);
    gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, (s8)(this->baseOpacity * 1.5f));
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0x96, 0x96, 0x96, 0x00);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx2->state.gfxCtx, 0, this->baseTex1x, this->baseTex1y, 0x20, 0x20, 1,
                                this->baseTex2x, this->baseTex2y, 0x20, 0x20));
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0xFF, 0xFF, 0xC8, 0xFF, 0xFF, (s8)((this->baseOpacity * 12.0f) / 10.0f));
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x00, 0x64, 0xFF, (s8)this->baseOpacity);
    temp_a0 = (s16)(Math_Sins(this->rippleTimer * 0xB00) * 30.0f) + 350;
    gSPTexture(oGfxCtx->polyXlu.p++, temp_a0, temp_a0, 0, G_TX_RENDERTILE, G_ON);

    if (this->drawActor != 0) {
        func_80923870(this, globalCtx2);
    }
    CLOSE_DISPS(globalCtx2->state.gfxCtx, "../z_boss_mo.c", 7023);
}

void func_80924D70(BossMo* this, GlobalContext* globalCtx) {
    BossMoParticle* particle = globalCtx->unk_11E10;
    s16 i;
    Vec3f* tempVec;
    f32 dx;
    f32 dz;
    Vec3f spA0 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp94;
    f32 temp_float;

    for (i = 0; i < 300; i++, particle++) {
        if (particle->type != 0) {
            particle->timer1++;
            if (particle->stopTimer == 0) {
                particle->pos.x += particle->vel.x;
                particle->pos.y += particle->vel.y;
                particle->pos.z += particle->vel.z;
                particle->vel.x += particle->accel.x;
                particle->vel.y += particle->accel.y;
                particle->vel.z += particle->accel.z;
            } else {
                particle->stopTimer--;
            }
            if (particle->type < 3) {
                if (this->cutsceneState >= 0x64) {
                    particle->pos.y = WATER_LEVEL;
                }
                Math_SmoothScaleMaxF(&particle->scale, particle->unk_34, 0.2f, particle->unk_38);
                if (particle->unk_2C == 0) {
                    particle->opacity += 0xF;
                    if (particle->opacity >= particle->unk_2E) {
                        particle->opacity = particle->unk_2E;
                        particle->unk_2C++;
                    }
                } else {
                    particle->opacity -= 5;
                    if (particle->opacity <= 0) {
                        particle->opacity = 0;
                        particle->type = 0;
                    }
                }
            } else if (particle->type == 7) {
                if (particle->unk_3C == NULL) {
                    if ((particle->accel.y > 0.0f) && (particle->pos.y >= WATER_LEVEL)) {
                        particle->type = 0;
                    } else {
                        if (particle->vel.y > 2.0f) {
                            particle->vel.y = 2.0f;
                        }
                        particle->opacity -= 0x14;
                        if (particle->opacity <= 0) {
                            particle->opacity = 0;
                            particle->type = 0;
                        }
                    }
                } else {
                    if ((particle->timer1 % 4) == 0) {
                        tempVec = particle->unk_3C;
                        dx = tempVec->x - particle->pos.x;
                        dz = tempVec->z - particle->pos.z;
                        spA0.z = particle->unk_34;
                        Matrix_RotateY(Math_atan2f(dx, dz), 0);
                        Matrix_MultVec3f(&spA0, &sp94);
                        particle->vel.x = sp94.x;
                        particle->vel.z = sp94.z;
                    }
                    Math_SmoothScaleMaxF(&particle->unk_34, 5.0f, 1.0f, 0.5f);
                    if (particle->timer1 >= 0x15) {
                        particle->opacity -= 0x1E;
                        particle->accel.y = 1.5f;
                        if ((particle->opacity <= 0) || (particle->pos.y >= WATER_LEVEL)) {
                            particle->opacity = 0;
                            particle->type = 0;
                        }
                    } else {
                        particle->opacity += 0x1E;
                        if (particle->opacity >= 0xFF) {
                            particle->opacity = 0xFF;
                        }
                    }
                }
            } else if ((particle->type == 3) || (particle->type == 4) || (particle->type == 5) ||
                       (particle->type == 6)) {
                temp_float = (particle->timer1 & 6) ? 80.0f : 200.0f;
                Math_SmoothScaleMaxF(&particle->unk_34, temp_float, 1.0f, 80.0f);
                if (particle->type == 6) {
                    Math_SmoothScaleMaxF(&particle->scale, particle->unk_38, 0.1f, 0.6f);
                    particle->opacity -= 0xF;
                    if (particle->opacity <= 0) {
                        particle->opacity = 0;
                        particle->type = 0;
                    }
                } else {
                    particle->opacity = particle->unk_34;
                    if (particle->type == 5) {
                        Math_SmoothScaleMaxF(&particle->scale, 0.0f, 1.0f, 0.02f);
                        if (particle->scale <= 0.0f) {
                            particle->type = 0;
                        }
                    } else {
                        if (particle->type == 4) {
                            Vec3f sp84 = { 0.0f, 0.0f, 0.0f };
                            func_8091BE5C(5, globalCtx->unk_11E10, &particle->pos, &sp84, particle->scale);
                        }
                        if (particle->vel.y < -20.0f) {
                            particle->vel.y = -20.0f;
                            particle->accel.y = 0.0f;
                        }
                        if (particle->stopTimer == 0) {
                            if (particle->vel.y < -5.0f) {
                                Math_SmoothScaleMaxF(&particle->unk_38, 5.0f, 0.1f, 0.15f);
                            }
                        } else if (particle->stopTimer == 1) {
                            particle->vel.x = Math_Rand_CenteredFloat(3.0f);
                            particle->vel.z = Math_Rand_CenteredFloat(3.0f);
                            particle->accel.y = -1.0f;
                        }
                        if ((particle->pos.y <= -280.0f) || ((1.0f >= particle->pos.y) && (particle->pos.y >= -20.0f) &&
                                                             func_8091BC40(&particle->pos, 0.0f))) {
                            particle->accel.y = 0.0f;
                            particle->vel.z = 0.0f;
                            particle->vel.y = 0.0f;
                            particle->vel.x = 0.0f;
                            if (particle->pos.y <= -280.0f) {
                                particle->pos.y = -280.0f;
                            } else {
                                particle->pos.y = 0.0f;
                            }
                            particle->type = 6;
                            particle->opacity = 0x96;
                            particle->unk_38 = (particle->scale * 15.0f) * 0.15f;
                        } else if (particle->pos.y <= WATER_LEVEL) {
                            Vec3f sp78 = particle->pos;
                            sp78.y = WATER_LEVEL;
                            if (particle->type == 4) {
                                func_8091BD38(globalCtx->unk_11E10, &sp78, 60.0f, 160.0f, 0x50, 0x122, 1);
                            } else {
                                func_8091BD38(globalCtx->unk_11E10, &sp78, 40.0f, 110.0f, 0x50, 0x122, 1);
                            }
                            particle->type = 0;
                        }
                    }
                }
            }
        }
    }
}

void func_80925480(BossMoParticle* particle, GlobalContext* globalCtx) {
    u8 flag = 0;
    s16 i;
    s32 pad;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    BossMoParticle* part0 = particle;

    OPEN_DISPS(gfxCtx, "../z_boss_mo.c", 7264);
    Matrix_Push();

    for (i = 0; i < 300; i++, particle++) {
        if (particle->type == 2) {
            if (flag == 0) {
                func_80094BC4(gfxCtx);

                gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x9B, 0x9B, 0xFF, 0x00);

                flag++;
            }

            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0xFF, 0xFF, 0xFF, particle->opacity);

            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, 0);
            Matrix_Scale(particle->scale, 1.0f, particle->scale, 1);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_mo.c", 7294),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(oGfxCtx->polyXlu.p++, D_040254B0);
        }
    }

    particle = part0;
    flag = 0;
    for (i = 0; i < 300; i++, particle++) {
        if (particle->type == 1) {
            if (flag == 0) {
                func_80093D84(globalCtx->state.gfxCtx);

                gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x9B, 0x9B, 0xFF, 0x00);

                flag++;
            }

            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0xFF, 0xFF, 0xFF, particle->opacity);

            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, 0);
            Matrix_Scale(particle->scale, 1.0f, particle->scale, 1);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_mo.c", 7330),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(oGfxCtx->polyXlu.p++, D_0401A0B0);
        }
    }

    particle = part0;
    flag = 0;
    for (i = 0; i < 300; i++, particle++) {
        if (((particle->type == 3) || (particle->type == 4)) || (particle->type == 5)) {
            if (flag == 0) {
                oGfxCtx->polyXlu.p = Gfx_CallSetupDL(oGfxCtx->polyXlu.p, 0);

                gSPSegment(oGfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_04051DB0));
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000F20);
                gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0xFA, 0xFA, 0xFF, 0x00);

                flag++;
            }

            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, (s16)(*particle).unk_34, (s16)(*particle).unk_34, 0xFF,
                            particle->opacity);

            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, 0);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(particle->scale / particle->unk_38, particle->unk_38 * particle->scale, 1.0f, 1);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_mo.c", 7373),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000F70);
        }
    }

    particle = part0;
    flag = 0;
    for (i = 0; i < 300; i++, particle++) {
        if (particle->type == 6) {
            if (flag == 0) {
                func_80094044(gfxCtx);

                gSPSegment(oGfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_04051DB0));
                gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0xFA, 0xFA, 0xFF, 0x00);
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000F20);

                flag++;
            }

            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, (s16)(*particle).unk_34, (s16)(*particle).unk_34, 0xFF,
                            particle->opacity);

            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, 0);
            Matrix_Scale(particle->scale, 1.0f, particle->scale, 1);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_mo.c", 7441),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000FC8);
        }
    }

    particle = part0;
    flag = 0;
    for (i = 0; i < 300; i++, particle++) {
        if (particle->type == 7) {
            if (flag == 0) {
                func_80093D18(globalCtx->state.gfxCtx);

                gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0x96, 0x96, 0x96, 0x00);

                flag++;
            }

            gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, particle->opacity);

            Matrix_Translate(particle->pos.x, particle->pos.y, particle->pos.z, 0);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(particle->scale, particle->scale, 1.0f, 1);
            gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_boss_mo.c", 7476),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(oGfxCtx->polyOpa.p++, D_06000140);
        }
    }

    Matrix_Pull();
    CLOSE_DISPS(gfxCtx, "../z_boss_mo.c", 7482);
}

void func_80925C18(void) {
    static Vec3f D_8092650C = { 0.0f, 0.0f, 0.0f };
    static u16 D_80926518[532] = {
        0x0800, 0x0800, 0x0800, 0x0801, 0x0802, 0x0803, 0x0804, 0x0805, 0x0806, 0x0807, 0x0808, 0x080B, 0x080A, 0x080B,
        0x080C, 0x080D, 0x080F, 0x0810, 0x0810, 0x0811, 0x0812, 0x0813, 0x0814, 0x0815, 0x0816, 0x0817, 0x0818, 0x081B,
        0x081A, 0x081B, 0x081D, 0x081F, 0x0820, 0x0820, 0x0821, 0x0822, 0x0823, 0x0824, 0x0825, 0x0826, 0x0827, 0x0828,
        0x082B, 0x082A, 0x082B, 0x082D, 0x082F, 0x0830, 0x0831, 0x0831, 0x0832, 0x0833, 0x0834, 0x0834, 0x0834, 0x0834,
        0x0834, 0x0834, 0x0835, 0x0835, 0x0835, 0x0835, 0x0835, 0x0835, 0x0836, 0x2889, 0x288A, 0x0839, 0x083A, 0x083B,
        0x083C, 0x083D, 0x083E, 0x083F, 0x0840, 0x0840, 0x0840, 0x0841, 0x0842, 0x0843, 0x0844, 0x0845, 0x0846, 0x0847,
        0x0848, 0x084B, 0x084A, 0x084B, 0x084D, 0x084F, 0x0850, 0x0850, 0x0851, 0x0852, 0x0853, 0x0854, 0x0855, 0x0856,
        0x0857, 0x0858, 0x085B, 0x085A, 0x085B, 0x085D, 0x085F, 0x0863, 0x0864, 0x0865, 0x0866, 0x0867, 0x0068, 0x1800,
        0x1801, 0x1802, 0x1803, 0x1804, 0x1805, 0x1806, 0x1806, 0x1807, 0x1808, 0x1809, 0x180A, 0x100B, 0x180C, 0x100D,
        0x180E, 0x180F, 0x1010, 0x1811, 0x1812, 0x1813, 0x1814, 0x1814, 0x1815, 0x0000, 0x0000, 0x1818, 0x181A, 0x181B,
        0x181B, 0x181C, 0x181D, 0x181E, 0x181F, 0x1820, 0x1821, 0x1022, 0x1823, 0x1824, 0x1825, 0x1826, 0x1827, 0x1828,
        0x1829, 0x182A, 0x182B, 0x1830, 0x1830, 0x1830, 0x1831, 0x1832, 0x1833, 0x1834, 0x1835, 0x1836, 0x1837, 0x1838,
        0x1839, 0x183A, 0x183B, 0x1050, 0x1051, 0x5802, 0x2801, 0x2802, 0x2803, 0x2804, 0x2805, 0x2006, 0x2007, 0x2809,
        0x2808, 0x200A, 0x200B, 0x200B, 0x200C, 0x200D, 0x280E, 0x280F, 0x2810, 0x2811, 0x2812, 0x2813, 0x2814, 0x2815,
        0x2816, 0x2817, 0x2817, 0x2818, 0x2819, 0x281A, 0x281B, 0x281C, 0x281D, 0x201E, 0x281F, 0x2820, 0x2021, 0x2822,
        0x2823, 0x2024, 0x2025, 0x2826, 0x2027, 0x2028, 0x2029, 0x202A, 0x282B, 0x282C, 0x282F, 0x282F, 0x2030, 0x2031,
        0x2032, 0x2033, 0x2034, 0x2835, 0x2036, 0x2837, 0x2838, 0x2839, 0x283A, 0x203B, 0x283C, 0x283D, 0x283E, 0x283F,
        0x2040, 0x2041, 0x2842, 0x2843, 0x2844, 0x2845, 0x2846, 0x2047, 0x2848, 0x2830, 0x2831, 0x0000, 0x0000, 0x3800,
        0x3801, 0x3002, 0x3803, 0x3804, 0x3805, 0x3806, 0x3807, 0x3808, 0x3009, 0x380A, 0x380B, 0x380C, 0x380D, 0x380E,
        0x380F, 0x3810, 0x3811, 0x3812, 0x3813, 0x3961, 0x3962, 0x395C, 0x395D, 0x395E, 0x395F, 0x3960, 0x381B, 0x301C,
        0x381D, 0x3820, 0x3821, 0x3822, 0x3823, 0x3824, 0x387B, 0x3829, 0x382A, 0x382B, 0x382C, 0x382D, 0x382E, 0x382F,
        0x3828, 0x387A, 0x3838, 0x3839, 0x383A, 0x383B, 0x386C, 0x383D, 0x387A, 0x3840, 0x3841, 0x3842, 0x3844, 0x3845,
        0x3846, 0x3847, 0x3848, 0x384C, 0x384D, 0x304E, 0x304F, 0x3850, 0x3051, 0x3852, 0x3853, 0x3054, 0x3855, 0x3058,
        0x3859, 0x387A, 0x385C, 0x385D, 0x385E, 0x385F, 0x3860, 0x3861, 0x3862, 0x387B, 0x3064, 0x3865, 0x3868, 0x3869,
        0x386A, 0x386B, 0x386C, 0x387B, 0x386E, 0x386F, 0x3870, 0x3071, 0x3072, 0x3873, 0x3874, 0x3875, 0x3876, 0x3877,
        0x3878, 0x387C, 0x387D, 0x387E, 0x387F, 0x3880, 0x3881, 0x3884, 0x3885, 0x386D, 0x3890, 0x3891, 0x3892, 0x3893,
        0x3894, 0x3895, 0x3898, 0x3899, 0x309A, 0x38A1, 0x38A1, 0x38A2, 0x38A3, 0x30A4, 0x38A5, 0x38A6, 0x30A7, 0x38A8,
        0x38A9, 0x38AA, 0x38AB, 0x38AC, 0x38AD, 0x38AE, 0x38AF, 0x38B0, 0x38B1, 0x38B2, 0x38B8, 0x38B9, 0x38BA, 0x38BB,
        0x38BC, 0x38BD, 0x38BE, 0x387E, 0x38C1, 0x38C2, 0x38C3, 0x38C4, 0x38C5, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
        0x0000, 0x0000, 0x4800, 0x4801, 0x4802, 0x4803, 0x4804, 0x4805, 0x4806, 0x4807, 0x4807, 0x4808, 0x4809, 0x480A,
        0x480B, 0x480C, 0x480C, 0x0000, 0x4830, 0x4830, 0x480F, 0x4810, 0x4813, 0x4814, 0x4817, 0x4837, 0x4818, 0x0000,
        0x0000, 0x0000, 0x4823, 0x4824, 0x4825, 0x4826, 0x4827, 0x4828, 0x4829, 0x482A, 0x482B, 0x480C, 0x4837, 0x5800,
        0x0000, 0x0020, 0x6800, 0x6800, 0x6800, 0x6800, 0x6800, 0x6800, 0x6800, 0x6801, 0x6801, 0x681C, 0x6802, 0x6803,
        0x6814, 0x6804, 0x6804, 0x6804, 0x6804, 0x6805, 0x6805, 0x6808, 0x6807, 0x6808, 0x6808, 0x6809, 0x6809, 0x680B,
        0x680C, 0x680D, 0x6841, 0x6842, 0x6840, 0x6841, 0x6842, 0x6840, 0x6850, 0x30D0, 0x38D1, 0x38D2, 0x38D3, 0x38D4,
        0x38D5, 0x38D6, 0x38D7, 0x3927, 0x38D9, 0x30DA, 0x30DB, 0x3889, 0x39EF, 0x38E1, 0x38E2, 0x38E4, 0x38E5, 0x38E6,
        0x387A, 0x38E7, 0x38E8, 0x38EC, 0x38ED, 0x38EE, 0x38EF, 0x30F0, 0x30F1, 0x38F2, 0x38F3, 0x39EC, 0x38F4, 0x30F5,
        0x38F6, 0x38F7, 0x38FC, 0x38FD, 0x387B, 0x3900, 0x3901, 0x3902, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000
    };

    if (BREG(0x20) != 0) {
        BREG(0x20)--;
        Audio_SetBGM(0x100100FF);
        func_80078914(&D_8092650C, D_80926518[BREG(0x21)]);
    }
    if (BREG(0x22) != 0) {
        BREG(0x22) = 0;
        Audio_SetBGM((u16)BREG(0x23));
    }
}
