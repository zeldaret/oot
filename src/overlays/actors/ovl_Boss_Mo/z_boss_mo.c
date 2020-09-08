#include "z_boss_mo.h"

#define FLAGS 0x00000035

#define THIS ((BossMo*)thisx)

void BossMo_Init(Actor* thisx, GlobalContext* globalCtx);    //**
void BossMo_Destroy(Actor* thisx, GlobalContext* globalCtx); //**
void func_80922D30(Actor* thisx, GlobalContext* globalCtx);  //**
void BossMo_Update(Actor* thisx, GlobalContext* globalCtx);  //
void func_80924228(Actor* thisx, GlobalContext* globalCtx);  //
void BossMo_Draw(Actor* thisx, GlobalContext* globalCtx);    //**

void func_8091BB00(s32 arg0, s32 arg1, s32 arg2); //**
f32 func_8091BB1C(void);                          //**
s32 func_8091BC40(Vec3f* pos, f32 margin);        //**

void func_8091BD38(BossMoParticle* particle, Vec3f* vec, f32 val1, f32 val2, s16 val3, s16 partnum, u8 mode); //**
void func_8091BE5C(s16 mode, BossMoParticle* particle, Vec3f* vec1, Vec3f* vec2, f32 val);                    //**
void func_8091BF38(BossMoParticle* particle, Vec3f* vec, f32 val);                                            //**
void func_8091BFFC(BossMoParticle* particle, Vec3f* vec1, Vec3f* vec2, Vec3f* vec3, f32 val, Vec3f* vec4);    //**

void func_8091C4E0(BossMo* this, GlobalContext* globalCtx); //**
void func_8091C538(BossMo* this, GlobalContext* globalCtx);
void func_8091F2FC(BossMo* this, GlobalContext* globalCtx); //**
void func_8091F5A8(BossMo* this, GlobalContext* globalCtx); //
void func_809206C4(BossMo* this, GlobalContext* globalCtx); //
void func_80921280(BossMo* this, GlobalContext* globalCtx); //**
void func_809216D0(BossMo* this, GlobalContext* globalCtx);

void func_809237C4(BossMo* this, s32 mode, ColliderJntSph* collider1, Vec3f* vec); //**
void func_80923870(BossMo* this, GlobalContext* globalCtx);                        //
void func_80923FDC(BossMo* this, GlobalContext* globalCtx);                        //**
void func_80924D70(BossMo* this, GlobalContext* globalCtx); //**
void func_80925480(BossMoParticle* particle, GlobalContext* globalCtx); //**

void func_80925C18(void); //**

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

f32 D_80925CDC[41] = { 15.0f, 12.0f, 9.0f, 6.5f, 4.8f, 4.0f, 3.4f, 3.1f, 3.0f, 3.1f, 3.2f, 3.4f, 3.6f, 3.8f,
                       4.0f,  4.6f,  5.1f, 5.5f, 6.1f, 6.6f, 7.3f, 7.7f, 8.4f, 8.5f, 8.7f, 8.8f, 8.8f, 8.7f,
                       8.6f,  8.3f,  8.2f, 8.1f, 7.2f, 6.7f, 5.9f, 4.9f, 2.7f, 0.0f, 0.0f, 0.0f, 0.0f };

ColliderJntSphItemInit D_80925D80[19] = {
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

ColliderJntSphInit D_8092602C = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x09, 0x10, COLSHAPE_JNTSPH },
    19,
    D_80925D80,
};

ColliderCylinderInit D_8092603C = {
    { COLTYPE_UNK3, 0x11, 0x09, 0x09, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFDFFFFF, 0x00, 0x00 }, 0x01, 0x05, 0x01 },
    { 20, 40, -20, { 0, 0, 0 } },
};

Vec3f D_80926068 = { 0.0f, 0.0f, 0.0f };
Vec3f D_80926074 = { 0.0f, -1.0f, 0.0f }; // inline
Vec3f D_80926080 = { 0.0f, 0.0f, 0.0f };  // inline

s16 D_8092608C[41] = { 0, 0, 0, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  2,  4, 8, 8, 8, 9, 9, 9,
                       9, 9, 9, 12, 15, 15, 15, 15, 15, 15, 15, 20, 20, 20, 0, 0, 0, 0, 0, 0 };
s16 D_809260E0[41] = { 0, 0, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 0, 0, -5, -5, -5,
                       0, 5, 10, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 0, 0, 0, 0,  0 };
s16 D_80926134[41] = { 0, 5, 6, 7, 8, 8, 7, 6, 6, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1,
                       0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };

InitChainEntry D_80926188[4] = {
    ICHAIN_U8(unk_1F, 5, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 37, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 0, ICHAIN_STOP),
};

Vec3f D_80926198 = { 0.0f, 0.0f, 0.0f };

u8 D_809261A4[21] = { 0, 1, 2, 3, 4, 15, 19, 5, 14, 16, 17, 18, 6, 13, 20, 7, 12, 11, 10, 9, 8 };

Vec2f D_809261BC[21] = { { -360.0f, -360.0f }, { -180.0f, -360.0f }, { 0.0f, -360.0f }, { 180.0f, -360.0f },
                         { 360.0f, -360.0f },  { -360.0f, -180.0f }, { 0.0f, -180.0f }, { 360.0f, -180.0f },
                         { -360.0f, 0.0f },    { -180.0f, 0.0f },    { 0.0f, 0.0f },    { 180.0f, 0.0f },
                         { 360.0f, 0.0f },     { -360.0f, 180.0f },  { 0.0f, 180.0f },  { 360.0f, 180.0f },
                         { -360.0f, 360.0f },  { -180.0f, 360.0f },  { 0.0f, 360.0f },  { 180.0f, 360.0f },
                         { 360.0f, 360.0f } };

f32 D_80926264[41] = { 3.56f, 3.25f, 2.96f, 2.69f, 2.44f, 2.21f, 2.0f, 1.81f, 1.64f, 1.49f, 1.36f, 1.25f, 1.16f, 1.09f,
                       1.04f, 1.01f, 1.0f,  1.0f,  1.0f,  1.0f,  1.0f, 1.0f,  1.0f,  1.0f,  1.0f,  1.0f,  1.0f,  1.0f,
                       1.0f,  1.0f,  1.0f,  1.0f,  0.98f, 0.95f, 0.9f, 0.8f,  0.6f,  1.0f,  1.0f,  1.0f,  1.0f };
f32 D_80926308[41] = { 0.0f,      2.95804f,  4.123106f, 4.974937f, 5.656854f, 6.22495f,  6.708204f,
                       7.123903f, 7.483315f, 7.794229f, 8.062258f, 8.291562f, 8.485281f, 8.645808f,
                       8.774964f, 8.87412f,  8.944272f, 8.9861f,   9.0f,      8.9861f,   8.944272f,
                       8.87412f,  8.774964f, 8.645808f, 8.485281f, 8.291562f, 8.062258f, 7.794229f,
                       7.483315f, 7.123903f, 6.708204f, 6.22495f,  5.656854f, 4.974937f, 4.123106f,
                       2.95804f,  0.0f,      0.0f,      0.0f,      0.0f,      0.0f };

Vec3f D_809263AC = { 0.0f, 0.0f, 0.0f }; // inline?

Vec3f D_809263B8[6] = { { -360.0f, -190.0f, 0.0f },  { 250.0f, -190.0f, 0.0f }, { 300.0f, -120.0f, -278.0f },
                        { 180.0f, -80.0f, -340.0f }, { 180.0f, 0.0f, -340.0f }, { 180.0f, 60.0f, -230.0f } };

f32 D_80926400[11] = { 0.1f, 0.15f, 0.2f, 0.3f, 0.4f, 0.43f, 0.4f, 0.3f, 0.2f, 0.15f, 0.1f };

Vec3f D_8092642C = { 0.0f, 0.0f, 0.0f }; // inline

BossMoParticle D_80927AC0[300];
s32 D_8092C5C0;
s32 D_8092C5C4;
s32 D_8092C5C8;

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

void func_8091BD38(BossMoParticle* particle, Vec3f* vec, f32 val1, f32 val2, s16 val3, s16 partnum, u8 mode) {
    s16 i;

    for (i = 0; i < partnum; i++, particle++) {
        if (particle->unk_24 == 0) {
            particle->unk_26 = 0;
            particle->unk_24 = mode;
            particle->unk_00 = *vec;
            particle->unk_0C = D_80926068;
            particle->unk_18 = D_80926068;
            particle->unk_30 = val1 * 0.0025f;
            particle->unk_34 = val2 * 0.0025f;
            if (300.0f < val1) {
                particle->unk_2A = 0;
                particle->unk_2E = val3;
                particle->unk_2C = 0;
                particle->unk_38 = (particle->unk_34 - particle->unk_30) * 0.05f;
            } else {
                particle->unk_2A = val3;
                particle->unk_2C = 1;
                particle->unk_38 = (particle->unk_34 - particle->unk_30) * 0.1f;
            }
            return;
        }
    }
}

void func_8091BE5C(s16 mode, BossMoParticle* particle, Vec3f* vec1, Vec3f* vec2, f32 val) {
    s16 i;
    Vec3f sp00 = D_80926074;

    for (i = 0; i < 290; i++, particle++) {
        if (particle->unk_24 == 0) {
            particle->unk_24 = mode;
            particle->unk_00 = *vec1;
            particle->unk_0C = *vec2;
            particle->unk_18 = sp00;
            if (mode == 5) {
                particle->unk_18.y = 0.0f;
            }
            particle->unk_30 = val;
            particle->unk_38 = 1.0f;
            particle->unk_26 = 0;
            return;
        }
    }
}

void func_8091BF38(BossMoParticle* particle, Vec3f* vec, f32 val) {
    s16 i;
    Vec3f sp00 = D_80926080;

    for (i = 0; i < 290; i++, particle++) {
        if (particle->unk_24 == 0) {
            particle->unk_24 = 3;
            particle->unk_26 = 2;
            particle->unk_00 = *vec;
            particle->unk_0C = sp00;
            particle->unk_18 = sp00;
            particle->unk_30 = val;
            particle->unk_38 = 1.0f;
            return;
        }
    }
}

void func_8091BFFC(BossMoParticle* particle, Vec3f* vec1, Vec3f* vec2, Vec3f* vec3, f32 val, Vec3f* vec4) {
    s16 i;

    for (i = 0; i < 280; i++, particle++) {
        if (particle->unk_24 == 0) {
            particle->unk_24 = 7;
            particle->unk_26 = 0;
            particle->unk_00 = *vec1;
            particle->unk_0C = *vec2;
            particle->unk_18 = *vec3;
            particle->unk_30 = val;
            particle->unk_34 = 0.0f;
            particle->unk_3C = vec4;
            if (vec4 == NULL) {
                particle->unk_2A = 0xFF;
            } else {
                particle->unk_2A = 0;
            }
            particle->unk_25 = 0;
            return;
        }
    }
}

void BossMo_Init(Actor* thisx, GlobalContext* globalCtx) {
    BossMo* this = THIS;
    u16 i;
    f32 temp_f0;
    ColliderCylinder* collider2 = &this->collider2;
    Vec3f sp4C;

    Actor_ProcessInitChain(&this->actor, D_80926188);
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    if (this->actor.params != 0x64) {
        Flags_SetSwitch(globalCtx, 0x14);
        D_80925CD0 = this;
        temp_f0 = globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02;
        this->unk_1BC = temp_f0;
        globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02 = temp_f0;
        globalCtx->unk_11D30[0] = 0xA0;
        globalCtx->unk_11E10 = &D_80927AC0;
        for (i = 0; i < 0x12C; i++) {
            D_80927AC0[i].unk_24 = 0;
        }
        this->actor.posRot.pos.x = 200.0f;
        this->actor.posRot.pos.y = globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02 + 50.0f;
        this->unk_18C = 5.0f;
        this->unk_1D1 = 1;
        this->actor.colChkInfo.health = 0x14;
        this->actor.colChkInfo.mass = 0;
        this->actor.params = 0;
        Actor_SetScale(&this->actor, 0.01f);
        Collider_InitCylinder(globalCtx, collider2);
        Collider_SetCylinder(globalCtx, collider2, &this->actor, &D_8092603C);
        if (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) {
            Actor_Kill(&this->actor);
            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, 0.0f, -280.0f, 0.0f, 0,
                               0, 0, -1);
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, -200.0f, -280.0f, 0.0f, 0, 0, 0, 0);
            globalCtx->unk_11D30[0] = 0xFF;
            globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02 = -0x1F4;
        } else {
            if (gSaveContext.eventChkInf[7] & 0x10) {
                Audio_SetBGM(0x1B);
                this->unk_D64 = 5.0f;
                this->unk_17E[0] = 50;
            } else {
                this->unk_F60 = 1;
                this->unk_158 = 0x14;
                this->actor.posRot.pos.x = 1000.0f;
                this->unk_17E[0] = 60;
            }
            D_80925CD4 = (BossMo*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_MO,
                                                     this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                                                     this->actor.posRot.pos.z, 0, 0, 0, 0x64);
            this->actor.draw = func_80924228;
            this->actor.update = func_80922D30;
            Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, 9);
        }
    } else {
        Actor_SetScale(&this->actor, 0.01f);
        func_8091C4E0(this, globalCtx);
        this->actor.colChkInfo.mass = 0xFF;
        globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02 = -0x32;
        this->unk_1C4 = 90.0f;
        this->actor.posRot.pos.y = globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02;
        sp4C = this->actor.posRot.pos;
        this->unk_1D4 = sp4C;
        this->actor.pos4 = sp4C;
        Collider_InitJntSph(globalCtx, &this->collider1);
        Collider_SetJntSph(globalCtx, &this->collider1, &this->actor, &D_8092602C, this->colliderItems);
        this->unk_D64 = 1.0f;
    }
}

void BossMo_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BossMo* this = THIS;

    if (this->actor.params >= 0x64) {
        Collider_DestroyJntSph(globalCtx, &this->collider1);
    } else {
        Collider_DestroyCylinder(globalCtx, &this->collider2);
    }
}

void func_8091C4E0(BossMo* this, GlobalContext* globalCtx) {
    this->unk_150 = func_8091C538;
    this->unk_158 = 10;
    this->unk_17E[0] = 50 + (s16)Math_Rand_ZeroFloat(20.0f);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091C538.s")

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
            this->unk_160 = 5;
            if ((temp_s0->toucher.flags << 0xE) < 0) {
                func_80078914(&this->unk_1010, 0x38F4);
                this->unk_172 = 0xF;
                this->unk_174 = this->unk_172 + 1;
                this->unk_158 = 0x64;
                this->unk_17E[0] = 0x28;
                this->unk_1A8 = 1.0f;
            } else if (temp_s0->toucher.flags & 0x0D800600) {
                this->unk_1D2 = 5;
            }
            this->unk_1E0 = 0.2f;
            for (i2 = 0; i2 < 10; i2++) {
                sp78.x = Math_Rand_CenteredFloat(8.0f);
                sp78.y = Math_Rand_ZeroFloat(7.0f) + 4.0f;
                sp78.z = Math_Rand_CenteredFloat(8.0f);
                sp84 = this->unk_D70[2 * i1];
                sp84.x += sp78.x * 3.0f;
                sp84.z += sp78.z * 3.0f;
                func_8091BE5C(3, globalCtx->unk_11E10, &sp84, &sp78, Math_Rand_ZeroFloat(0.08f) + 0.13f);
            }
            return;
        } else if (this->collider1.list[i1].body.toucherFlags & 2) {
            this->collider1.list[i1].body.toucherFlags &= ~2;
            this->unk_1D2 = 5;
            return;
        }
    }
}
s
#ifdef NON_MATCHING
// atan2f section has issues.
void func_8091F5A8(BossMo* this, GlobalContext* globalCtx) {
    u8 sp9F = 0;
    f32 dx;
    f32 dy;
    f32 dz;
    f32 dPitch;
    f32 dYaw;
    f32 phi_f2;
    f32 phi_f12;
    f32 phi_f16;
    f32 phi_f14;
    Player* player = PLAYER;
    Camera* camera = Gameplay_GetCamera(globalCtx, 0);
    Vec3f sp64;
    Vec3f sp58;
    Camera* camera2;
    f32 temp_f6_2;
    f32 pad;
    f32 pad2;

    if (this->unk_F60 < 4) {
        this->unk_F5C = 80.0f;
    }
    switch (this->unk_F60) {
        case 1:
            if (this->unk_17E[0] == 1) {
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
                this->unk_F62 = Gameplay_CreateSubCamera(globalCtx);
                Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
                Gameplay_ChangeCameraStatus(globalCtx, this->unk_F62, 7);
                this->actor.speedXZ = 0.0f;
                this->unk_F60 = 2;
                this->unk_17E[2] = 0x32;
                this->unk_15C = this->unk_15A = 0;
                this->actor.posRot.rot.y = 0x721A;
                D_80925CD4->unk_158 = 0;
                D_80925CD4->unk_17E[0] = 0x7530;
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
            if (this->unk_17E[2] == 0) {
                this->unk_F60 = 3;
                this->unk_15A = 0;
            } else if (this->unk_17E[2] < 0x32) {
                sp64.x = (this->unk_F68.x + 20.0f) + 10.0f;
                sp64.y = -250.0f;
                sp64.z = this->unk_F68.z;
                func_800293E4(globalCtx, &sp64, 0.0f, 10.0f, 50.0f, Math_Rand_ZeroFloat(0.05f) + 0.13f);
            }
            if (this->unk_17E[2] == 0x28) {
                func_80078914(&D_80926198, 0x38F6);
            }
            break;
        case 3:
            Math_SmoothScaleMaxF(&this->unk_100C, 0.1f, 1.0f, 0.002f);
            this->unk_1D4 = D_809263B8[this->unk_F64];
            if (this->unk_F64 == 5) {
                phi_f2 = Math_Sins(this->unk_15A * 0x500) * 20.0f;
            } else {
                phi_f2 = Math_Sins(this->unk_15A * 0x500) * 5.0f;
            }
            dx = this->unk_1D4.x - this->unk_F68.x;
            dy = this->unk_1D4.y - this->unk_F68.y + phi_f2;
            dz = this->unk_1D4.z - this->unk_F68.z;
            dYaw = Math_atan2f(dx, dz);
            dPitch = Math_atan2f(dy, sqrtf(SQ(dx) + SQ(dz)));
            Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, (s16)(dYaw * 10430.378f), 5, (s16)this->unk_1008);
            Math_SmoothScaleMaxS(&this->actor.posRot.rot.x, (s16)(dPitch * 10430.378f), 5, (s16)this->unk_1008);
            if (this->unk_15A == 0x96) {
                this->unk_FB0.x = fabsf(this->unk_F74.x - player->actor.posRot.pos.x);
                this->unk_FB0.y = fabsf(this->unk_F74.y - player->actor.posRot.pos.y);
                this->unk_FB0.z = fabsf(this->unk_F74.z - player->actor.posRot.pos.z);
            }
            if (this->unk_15A >= 0x96) {
                Math_SmoothScaleMaxF(&this->unk_F74.x, player->actor.posRot.pos.x, 0.1f,
                                     this->unk_FB0.x * this->unk_FEC);
                Math_SmoothScaleMaxF(&this->unk_F74.y, player->actor.posRot.pos.y + 50.0f, 0.1f,
                                     this->unk_FB0.y * this->unk_FEC);
                Math_SmoothScaleMaxF(&this->unk_F74.z, player->actor.posRot.pos.z, 0.1f,
                                     this->unk_FB0.z * this->unk_FEC);
                Math_SmoothScaleMaxF(&this->unk_FEC, 0.02f, 1.0f, 0.001f);
            }
            if (this->unk_15A == 0xBE) {
                func_80078914(&D_80926198, 0x38F6);
            }
            if ((this->unk_15A >= 0x97) && (this->unk_15A < 0xB4)) {
                sp58.x = (this->unk_F68.x + 20.0f) + 10.0f;
                sp58.y = -250.0f;
                sp58.z = this->unk_F68.z;
                func_800293E4(globalCtx, &sp58, 0.0f, 10.0f, 50.0f, Math_Rand_ZeroFloat(0.05f) + 0.13f);
            }

            phi_f16 = 4096.0f;
            phi_f14 = 0.1f;
            if ((this->unk_15A >= 0x65) && (this->unk_15A < 0xDC)) {
                phi_f12 = 0.0f;
            } else if (this->unk_15A >= 0x15F) {
                phi_f12 = 2.0f;
                phi_f14 = 0.4f;
            } else if (this->unk_15A >= 0xDD) {
                phi_f12 = 7.0f;
                phi_f14 = 0.3f;
                phi_f16 = 8192.0f;
            } else {
                phi_f12 = 4.0f;
            }

            if (this->unk_15A >= 0xFB) {
                Math_SmoothScaleMaxF(&this->unk_188, 100.0f, 1.0f, 1.0f);
            }
            if (this->unk_F64 < 5) {
                if (sqrtf(dx * dx + dz * dz + dy * dy) < 40.0f) {
                    this->unk_F64++;
                    this->unk_1008 = 0.0f;
                }
            } else {
                phi_f12 = 1.5f;
                phi_f16 = 1536.0f;
            }
            Math_SmoothScaleMaxF(&this->actor.speedXZ, phi_f12, 1.0f, phi_f14);
            Math_SmoothScaleMaxF(&this->unk_1008, phi_f16, 1.0f, 128.0f);
            if (this->unk_15A == 0x20D) {
                func_8002DF54(globalCtx, &this->actor, 2);
            }
            if (this->unk_15A >= 0x21D) {
                this->unk_F60 = 4;
                func_8002DF54(globalCtx, &this->actor, 1);
                D_80925CD4->unk_1D1 = 1;
                player->actor.posRot.pos.x = 180.0f;
                player->actor.posRot.pos.z = -210.0f;
                player->actor.posRot.rot.y = -0x8000;
                player->actor.shape.rot.y = player->actor.posRot.rot.y;
                this->unk_100C = 0.0f;
                D_80925CD4->unk_1A4 = 150.0;
                this->actor.speedXZ = 0.0f;
                this->unk_17E[2] = 0xC8;
                this->unk_F5C = 60.0f;
                this->actor.posRot.pos = D_80925CD4->actor.posRot.pos;
                this->unk_158 = 0x15;
                this->actor.flags &= ~1;
                D_80925CD4->actor.flags |= 1;
            } else {
                D_80925CD4->unk_16E = 0xCEC;
                D_80925CD4->unk_190 = 0.0f;
                D_80925CD4->unk_188 = 1000.0f;
                D_80925CD4->unk_18C = 2500.0f;
                break;
            }
        case 4:
            if (this->unk_17E[2] >= 0xA0) {
                this->unk_F68.x = 150.0f;
                this->unk_F68.y = 60.0f;
                this->unk_F68.z = -230.0f;
                this->unk_F74.x = 170.0f;
                this->unk_F74.y = 40.0;
                this->unk_F74.z = -280.0f;
                D_80925CD4->unk_16E = 0xCEC;
                D_80925CD4->unk_190 = 0.0f;
                D_80925CD4->unk_188 = 1000.0f;
                D_80925CD4->unk_18C = 2500.0f;
                if (this->unk_17E[2] == 0xA0) {
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
                    this->unk_D64 = 0.001f;
                    this->unk_D68 = 0.0f;
                    sp9F = 1;
                }
            } else {
                sp9F = 1;
            }
            if (this->unk_17E[2] == 0x32) {

                this->unk_FD4.x = 160.0f;
                this->unk_FD4.y = 58.0f;
                this->unk_FD4.z = -247.0f;
                this->unk_FA4.x = fabsf(this->unk_F68.x - 111.0f) * 0.1f;
                this->unk_FA4.y = fabsf(this->unk_F68.y - 133.0f) * 0.1f;
                this->unk_FA4.z = fabsf(this->unk_F68.z - -191.0f) * 0.1f;
                if (1) {}
                this->unk_F60 = 5;
                this->unk_17E[2] = 0x6E;
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
            if (this->unk_17E[2] == 0x96) {
                Audio_SetBGM(0x1B);
            }
            if (this->unk_17E[2] == 0x82) {
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
            if (this->unk_17E[2] == 0x64) {
                D_80925CD4->unk_158 = 0x65;
                D_80925CD4->unk_17E[0] = 0x32;
            }
            if (this->unk_17E[2] == 0x14) {
                camera2 = Gameplay_GetCamera(globalCtx, 0);
                camera2->eye = this->unk_F68;
                camera2->eyeNext = this->unk_F68;
                camera2->at = this->unk_F74;
                func_800C08AC(globalCtx, this->unk_F62, 0);
                this->unk_F60 = this->unk_F62 = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
            }
            break;
    }
    if (D_80925CD4->unk_158 == 0) {
        D_80925CD4->actor.posRot.pos.x = 180.0f;
        D_80925CD4->actor.posRot.pos.z = -360.0f;
        D_80925CD4->actor.pos4 = D_80925CD4->actor.posRot.pos;
        D_80925CD4->actor.speedXZ = 0.0f;
        D_80925CD4->actor.shape.rot.y = D_80925CD4->actor.yawTowardsLink;
    }
    if (this->unk_F62 != 0) {
        if (sp9F) {
            Math_SmoothScaleMaxF(&this->unk_F68.x, this->unk_FBC.x, this->unk_FC8.x, this->unk_FA4.x * this->unk_FEC);
            Math_SmoothScaleMaxF(&this->unk_F68.y, this->unk_FBC.y, this->unk_FC8.y, this->unk_FA4.y * this->unk_FEC);
            Math_SmoothScaleMaxF(&this->unk_F68.z, this->unk_FBC.z, this->unk_FC8.z, this->unk_FA4.z * this->unk_FEC);
            Math_SmoothScaleMaxF(&this->unk_F74.x, this->unk_FD4.x, this->unk_FE0.x, this->unk_FB0.x * this->unk_FEC);
            Math_SmoothScaleMaxF(&this->unk_F74.y, this->unk_FD4.y, this->unk_FE0.y, this->unk_FB0.y * this->unk_FEC);
            Math_SmoothScaleMaxF(&this->unk_F74.z, this->unk_FD4.z, this->unk_FE0.z, this->unk_FB0.z * this->unk_FEC);
            Math_SmoothScaleMaxF(&this->unk_FEC, 1.0f, 1.0f, this->unk_FF0);
        } else if (this->unk_F60 < 4) {
            func_8002D908(&this->actor);
            this->unk_F68.x += this->actor.velocity.x;
            this->unk_F68.y += this->actor.velocity.y;
            this->unk_F68.z += this->actor.velocity.z;
        }
        this->unk_F80.x = this->unk_F80.z = sinf(this->unk_15C * 0.03f) * this->unk_100C * (-2.0f);
        this->unk_F80.y = 1.0f;
        func_800C05E4(globalCtx, this->unk_F62, &this->unk_F74, &this->unk_F68, &this->unk_F80);
        camera->eye = this->unk_F68;
        camera->eyeNext = this->unk_F68;
        camera->at = this->unk_F74;
        func_800C0704(globalCtx, this->unk_F62, this->unk_F5C);
    }

    if ((this->unk_F60 >= 3) && (this->unk_15A >= 0x21D)) {
        func_80078914(&D_80925CD4->unk_1010, 0x30F0);
    } else if (this->unk_F60 >= 2) {
        func_80078914(&D_80926198, 0x30F5);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_8091F5A8.s")
#endif

#ifdef NON_MATCHING
// float regalloc and ordering at the end of case 0x96
void func_809206C4(BossMo* this, GlobalContext* globalCtx) {
    s16 i;
    f32 dx;
    f32 dz;
    f32 phi_f0;
    f32 sp7C;
    Vec3f sp70;
    Vec3f sp64;
    Camera* camera = Gameplay_GetCamera(globalCtx, 0);
    Vec3f sp54;
    Vec3f sp48;
    Vec3f sp38;
    f32 pad;

    switch (this->unk_F60) {
        case 0x64:
            func_80064520(globalCtx, &globalCtx->csCtx);
            func_8002DF54(globalCtx, &this->actor, 8);
            this->unk_F62 = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
            Gameplay_ChangeCameraStatus(globalCtx, this->unk_F62, 7);
            this->unk_F60 = 0x96;
            this->unk_F68 = camera->eye;
            this->unk_17E[0] = 0x5A;
            dx = this->actor.posRot.pos.x - this->unk_F68.x;
            dz = this->actor.posRot.pos.z - this->unk_F68.z;
            this->unk_1004 = Math_atan2f(dx, dz);
            this->unk_FFC = sqrtf(dx * dx + dz * dz);
            this->unk_1008 = 0.0f;
        case 0x96:
            this->unk_1A4 = 0.0f;
            if (this->unk_17E[0] & 4) {
                phi_f0 = 0.005f;
                sp7C = 0.015f;
            } else {
                phi_f0 = 0.015f;
                sp7C = 0.005f;
            }
            Math_SmoothScaleMaxF(&this->actor.scale.x, phi_f0, 0.5f, 0.002f);
            this->actor.scale.z = this->actor.scale.x;
            Math_SmoothScaleMaxF(&this->actor.scale.y, sp7C, 0.5f, 0.002f);
            this->unk_1004 += this->unk_1008;
            if (this->unk_17E[0] >= 0x1E) {
                Math_SmoothScaleMaxF(&this->unk_1008, 0.05f, 1.0f, 0.002f);
            } else {
                Math_SmoothScaleMaxF(&this->unk_1008, 0.0f, 1.0f, 0.002f);
            }
            Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, 150.0f, 0.05f, 5.0f);
            Math_SmoothScaleMaxF(&this->unk_F68.y, 100.0f, 0.05f, 2.0f);
            sp38 = this->actor.posRot.pos;
            this->unk_FD4 = sp38;
            this->unk_F74 = sp38;
            if (this->unk_17E[0] >= 0x15) {
                Audio_PlayActorSound2(&this->actor, 0x30F8);
            }
            if (this->unk_17E[0] == 0x14) {
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
                this->unk_1D1 = 0;
                this->actor.flags &= ~1;
                Audio_PlayActorSound2(&this->actor, 0x38F7);
                Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 0x46, 0x38F9);
            }
            if (this->unk_17E[0] == 0) {
                this->unk_F60 = 0x65;
                this->unk_FFC = 490.0f;
                this->actor.posRot.pos.y = -1000.0f;
                this->unk_18C = 15.0f;
                this->unk_1004 = 0.0f;
                this->unk_F68.x = 490.0f;
                this->unk_F68.y = 50.0f;
                this->unk_F68.z = 0.0f;
                this->unk_F74.z = 0.0f;
                this->unk_F74.x = 0.0;
                this->unk_F74.y = -100.0f;
                this->unk_15C = this->unk_15A = 0;
                this->unk_FE0.y = 0.05f;
                this->unk_FB0.y = 4.0f;
                this->unk_FEC = 0.0f;
                this->unk_FF0 = 0.02f;
                this->unk_FD4.y = 320.0f;
                this->unk_17E[0] = 0x64;
                D_80925CD4->unk_1D1 = 1;
                D_80925CD4->unk_158 = 0xCB;
                D_80925CD4->actor.shape.rot.x = 0;
                D_80925CD4->actor.posRot.pos.x = 0.0f;
                D_80925CD4->actor.posRot.pos.y = -50.0f;
                D_80925CD4->actor.posRot.pos.z = 0.0f;
                D_80925CD4->unk_1A0 = 1.0f;
                D_80925CD4->unk_D6C = 0.2f;
                D_80925CD0->unk_1BC = -50.0f;
                D_80925CD4->unk_1C0 = 0.0f;
                D_80925CD4->unk_17A = 0;
                for (i = 0; i < 41; i++) {
                    D_80925CD4->unk_6A8[i].y = 5.0f;
                }
                D_80925CD4->unk_190 = -400.0f;
                D_80925CD4->unk_188 = -3200.0f;
                D_80925CD4->unk_18C = 0.0f;
                D_80925CD4->unk_19C = 3000.0f;
                D_80925CD4->unk_194 = 2500.0f;
                D_80925CD4->unk_198 = 4000.0f;
                D_80925CD4->unk_D64 = 1.0f;
                D_80925CD4->unk_D68 = 20480.0f;
                D_80925CD4->unk_1A4 = 150.0f;
                D_80925CD4->unk_174 = 0;
                D_80925CD4->unk_172 = D_80925CD4->unk_174;
                D_80925CD4->unk_1A8 = 1.0f;
                Actor_SetScale(&D_80925CD4->actor, 0.01f);
            }
            break;
        case 0x65:
            if (this->unk_17E[0] == 0) {
                this->unk_F60 = 0x66;
                this->unk_F74.y = -200.0f;
                this->unk_FD4.y = 320.0f;
                this->unk_FE0.y = 0.05f;
                this->unk_FB0.y = 4.0f;
                this->unk_FEC = 0.0f;
                this->unk_FF0 = 0.0f;
                D_80925CD4->unk_158 = 0xC9;
                this->unk_17E[0] = 0x7D;
                D_80925CD4->unk_1A0 = 3.7000003f;
                this->unk_1004 = 0.5f;
                this->unk_FFC = 200.0f;
                return;
            }
            break;
        case 0x66:
            if (this->unk_17E[0] == 0) {
                this->unk_FF0 = 0.02f;
                D_80925CD4->unk_158 = 0xCA;
                this->unk_F60 = 0x67;
                D_80925CD4->unk_17E[0] = 0x78;
                this->unk_17E[0] = 0x96;
            }
        case 0x67:
            Math_SmoothScaleMaxF(&this->unk_1004, 0.0f, 0.05f, 0.0029999996f);
            Math_SmoothScaleMaxF(&this->unk_FFC, 490.0f, 0.1f, 1.0f);
            if (this->unk_17E[0] == 0) {
                this->unk_F60 = 0x68;
                this->unk_17E[0] = 0x8C;
                this->unk_1008 = 0.0f;
                this->unk_1000 = 0.0f;
            }
            break;
        case 0x68:
            if (0x1E == this->unk_17E[0]) {
                D_80925CD4->unk_158 = 0xCD;
                D_80925CD4->unk_17E[0] = 0x1E;
                D_80925CD4->unk_D64 = 0.0f;
                D_80925CD4->unk_D68 = D_80925CD4->unk_D64;
            }
            if (this->unk_17E[0] == 0) {
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
            Math_SmoothScaleMaxF(&this->unk_1004, -1.5707964f, 0.05f, this->unk_1008);
            Math_SmoothScaleMaxF(&this->unk_1000, 3.0f, 1.0f, 0.05f);
            Math_SmoothScaleMaxF(&this->unk_1008, 0.012999999f, 1.0f, 0.0005f);
            if (D_80925CD4->unk_158 == 0xCE) {
                Math_SmoothScaleMaxF(&this->unk_FFC, 200.0f, 0.02f, this->unk_1000);
                if (D_80925CD4->unk_17E[0] == 0) {
                    this->unk_F60 = 0x69;
                    camera->eye = this->unk_F68;
                    camera->eyeNext = this->unk_F68;
                    camera->at = this->unk_F74;
                    func_800C08AC(globalCtx, this->unk_F62, 0);
                    this->unk_F62 = 0;
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
    if ((this->unk_F60 >= 0x65) && (this->unk_F60 < 0x69)) {
        if (this->unk_15A < 0x1F4) {
            func_80078914(&D_80926198, 0x30F0);
        }
        if ((this->unk_15A < 0x1EA) && (this->unk_15A >= 0xE7)) {
            func_80078914(&D_80926198, 0x2075);
        }
        if (this->unk_15A < 0xDC) {
            func_80078914(&D_80926198, 0x2074);
        }
    }
    if (D_80925CD0->unk_1BC < -200.0f) {
        globalCtx->unk_11D30[0]++;
        if (globalCtx->unk_11D30[0] >= 0xFF) {
            globalCtx->unk_11D30[0] = 0xFF;
        }
    }
    if (D_80925CD0->unk_1BC < -250.0f) {
        Math_SmoothScaleMaxF(&D_80925CD4->unk_1C4, 0.0f, 1.0f, 3.0f);
    }
    Math_SmoothScaleMaxF(&this->unk_18C, 0.0f, 0.1f, 0.05f);
    sp70.x = this->unk_FFC;
    sp70.y = 0.0f;
    sp70.z = 0.0f;
    Matrix_RotateY(this->unk_1004, 0);
    Matrix_MultVec3f(&sp70, &sp64);
    this->unk_F68.x = this->unk_F74.x + sp64.x;
    this->unk_F68.z = this->unk_F74.z + sp64.z;
    if (this->unk_F62 != 0) {
        Math_SmoothScaleMaxF(&this->unk_F74.y, this->unk_FD4.y, this->unk_FE0.y, this->unk_FB0.y * this->unk_FEC);
        Math_SmoothScaleMaxF(&this->unk_FEC, 1.0f, 1.0f, this->unk_FF0);
        func_800C04D8(globalCtx, this->unk_F62, &this->unk_F74, &this->unk_F68);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_809206C4.s")
#endif

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
        if (this->unk_158 == 2) {
            this->unk_168 = 1;
            this->unk_17E[0] = 0x96;
        }
    }
    if (this->collider2.base.acFlags & 2) {
        temp_s0 = this->collider2.body.acHitItem;
        osSyncPrintf("Core_Damage_check 当り！！\n");
        this->collider2.base.acFlags &= ~2;
        if ((temp_s0->toucher.flags << 0xE) < 0) {
            if (this->unk_158 == 0xA) {
                this->unk_158 = 0xB;
            }
        }
        osSyncPrintf("Core_Damage_check 当り 2 ！！\n");
        if ((this->unk_158 != 2) && (this->unk_160 == 0)) {
            damage = func_800635D0(temp_s0->toucher.flags);
            if ((damage != 0) && (this->unk_158 < 0xA)) {
                osSyncPrintf("Core_Damage_check 剣 当り！！\n");
                this->unk_158 = 5;
                this->unk_17E[0] = 0x19;

                this->actor.speedXZ = 15.0f;

                this->actor.posRot.rot.y = this->actor.yawTowardsLink + 0x8000;
                this->unk_15E = 0xF;
                Audio_PlayActorSound2(&this->actor, 0x39EC);
                this->actor.colChkInfo.health -= damage;
                this->unk_155++;
                if ((s8)this->actor.colChkInfo.health <= 0) {
                    if (((D_80925CD4->unk_F62 == 0) && (D_80925CD8 == NULL)) ||
                        ((D_80925CD4->unk_F62 == 0) && (D_80925CD8 != NULL) && (D_80925CD8->unk_F62 == 0))) {
                        func_80032C7C(globalCtx, &this->actor);
                        Audio_SetBGM(0x100100FF);
                        this->unk_F60 = 0x64;
                        D_80925CD4->unk_1D1 = 0;
                        D_80925CD4->unk_158 = 0xC8;
                        D_80925CD4->unk_1A4 = 0.0f;
                        if (D_80925CD8 != 0) {
                            D_80925CD8->unk_154 = 1;
                        }
                        if (player->actor.parent != NULL) {
                            player->unk_850 = 0x65;
                            player->actor.parent = NULL;
                            player->action = 0;
                        }
                    } else {
                        this->actor.colChkInfo.health = 1;
                    }
                }
                this->unk_160 = 0xA;
            } else {
                flags = temp_s0->toucher.flags;
                if (((flags << 0xB) >= 0) && (flags & 0x80)) {
                    if (this->unk_158 >= 0xA) {
                        func_80078914(&D_80925CD4->unk_1010, 0x38F4);
                        D_80925CD4->unk_172 = this->unk_164;
                        D_80925CD4->unk_174 = D_80925CD4->unk_172 + 1;
                        D_80925CD4->unk_1A8 = 1.0f;
                        D_80925CD4->unk_158 = 0x64;
                        D_80925CD4->unk_17E[0] = 0x28;
                        D_80925CD4->actor.flags &= ~1;
                        if (player->actor.parent == (Actor*)D_80925CD4) {
                            player->unk_850 = 0x65;
                            player->actor.parent = 0;
                            player->action = 0;
                        }
                    }
                    this->unk_158 = 5;
                    this->unk_17E[0] = 0x1E;
                    this->unk_160 = 0xA;
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
    osSyncPrintf("Core_Damage_check 終わり ！！\n");
    osSyncPrintf("\x1b[m");
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_809216D0.s")

void func_80922D30(Actor* thisx, GlobalContext* globalCtx) {
    BossMo* this = THIS;
    s16 i;
    f32 pad;
    Player* player = PLAYER;

    osSyncPrintf("CORE mode = <%d>\n", this->unk_158);
    if (D_80925CD8 == NULL) {
        globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02 = D_80925CD4->unk_1C8 + (s16)this->unk_1BC;
    } else {
        globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02 =
            D_80925CD8->unk_1C8 + ((s16)this->unk_1BC + D_80925CD4->unk_1C8);
    }
    this->actor.flags |= 0x200;
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->unk_15C++;
    DECR(this->unk_15E);
    DECR(this->unk_160);
    this->unk_15A++;
    for (i = 0; i < 5; i++) {
        DECR(this->unk_17E[i]);
    }
    func_809216D0(this, globalCtx);
    Collider_CylinderUpdate(&this->actor, &this->collider2);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
    if ((this->unk_158 != 5) || (this->actor.posRot.pos.y < globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02)) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
    } else {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
    }
    func_80924D70(this, globalCtx);
    if (player->actor.parent != NULL) {
        this->actor.flags &= ~1;
    }
    func_80925C18();
}

#ifdef NON_MATCHING
// lots of stuff
void BossMo_Update(Actor* thisx, GlobalContext* globalCtx) {
    BossMo* this = THIS;
    Player* player = PLAYER;
    BossMo* unkActor;
    s16 i;
    s16 index;
    f32 temp_f16;
    f32 phi_f0_2;
    f32 phi_f0;

    if ((this == D_80925CD8) && (this->unk_154 != 0)) {
        this->unk_154++;
        this->actor.draw = NULL;
        if ((u8)this->unk_154 >= 0x15) {
            Actor_Kill(&this->actor);
            func_800F89E8(&this->unk_1010);
            D_80925CD8 = NULL;
            return;
        }
    } else {
        SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &this->unk_D70[41], &this->unk_1010,
                                     &this->actor.projectedW);
        osSyncPrintf("MO : Move mode = <%d>\n", this->unk_158);
        Math_SmoothScaleMaxS(&player->actor.shape.rot.x, 0, 5, 0x3E8);
        Math_SmoothScaleMaxS(&player->actor.shape.rot.z, 0, 5, 0x3E8);
        this->unk_16A++;
        this->unk_15C++;
        this->unk_17C++;
        this->unk_15A++;
        if (this->unk_16A >= 300) {
            this->unk_16A = 0;
        }
        this->unk_16C -= 0xBB8;
        this->unk_1F8[this->unk_16A] = (Math_Sins(this->unk_16C) * this->unk_D6C) + (1.0f + this->unk_D6C);
        for (i = 0; i < 41; i++) {
            if (this->unk_158 >= 0xC8) {
                if (this->unk_158 >= 0xC9) {
                    if (this->unk_158 == 0xCD) {
                        if (this->unk_17E[0] != 0) {
                            phi_f0 = D_80925CDC[i];
                        } else {
                            phi_f0 = D_80926308[i];
                        }
                        Math_SmoothScaleMaxF(&this->unk_894[i].x, phi_f0, 0.5f, 100.0f);
                    } else {
                        index = ((this->unk_16A + (i * 2)) + 0xDC) % 0x12C;
                        Math_SmoothScaleMaxF(&this->unk_894[i].x,
                                             (D_80926264[i] * D_80926264[i]) + this->unk_1F8[index], 0.5f, 0.3f);
                    }
                } else {
                    index = ((this->unk_16A - (i * 2)) + 0x12C) % 0x12C;
                    this->unk_894[i].x = D_80926264[i] * this->unk_1F8[index];
                }
            } else {
                index = ((this->unk_16A - (i * 2)) + 0x12C) % 0x12C;
                Math_SmoothScaleMaxF(&this->unk_894[i].x, D_80926264[i] * this->unk_1F8[index], 0.5f, 0.3f);
            }

            temp_f16 = Math_Sins((this->unk_15C * 12000.0f) + (i * 20000.0f));
            this->unk_894[i].y = this->unk_894[i].z = this->unk_894[i].x;
            this->unk_A80[i].y = this->unk_A80[i].z = this->unk_A80[i].x = temp_f16 * this->unk_1E0;
        }
        Math_SmoothScaleMaxF(&this->unk_1E0, 0.0f, 0.1f, 0.005f);
        Math_SmoothScaleMaxF(&this->unk_D6C, 0.2f, 0.5f, 0.01f);
        this->unk_150(this, globalCtx);

        for (i = 0; i < 5; i++) {
            DECR(this->unk_17E[i]);
        }
        Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 0xA, 0xC8);
        Actor_MoveForward(&this->actor);
        Math_SmoothScaleMaxF(&this->actor.speedXZ, 0.0f, 1.0f, 0.02f);

        if (func_8091BC40(&this->actor.posRot.pos, 40) != 0) {
            this->actor.posRot.pos = this->actor.pos4;
        }
        if ((this->unk_15C & 7) == 0) {
            Vec3f sp94 = this->actor.posRot.pos;
            if (this->unk_158 < 0xC8) {
                phi_f0_2 = 400.0f;
            } else {
                phi_f0_2 = 0.0f;
                if (this->unk_158 >= 0xC9) {
                    sp94 = this->unk_D70[38];
                    phi_f0_2 = 0.0f;
                }
            }
            func_8091BD38(globalCtx->unk_11E10, &sp94, phi_f0_2, phi_f0_2 * 3.0f, this->unk_1A4 * 0.6666f, 300, 2);
        }
        if (this->unk_1CC != 0) {
            Vec3f sp88;
            Vec3f sp7C;
            Vec3f sp70;
            Vec3f sp64 = D_8092642C;

            this->unk_1CC--;
            sp88.x = 0.0f;
            sp88.y = 0.0f;
            sp88.z = 100.0f;
            Matrix_RotateY(Math_Rand_ZeroFloat(6.2831855f), 0);
            Matrix_MultVec3f(&sp88, &sp7C);
            if ((this->unk_158 >= 0xC9) && (this->unk_158 != 0xCB)) {
                i = 38;
            } else {
                i = 0;
                if (this->unk_158 < 0x64) {
                    func_80078914(&this->unk_1010, 0x30FA);
                    i = 0;
                }
            }
            sp70.x = this->unk_D70[i].x + sp7C.x;
            sp70.y = Math_Rand_ZeroFloat(20.0f) + (globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02 - 40.0f);
            sp70.z = this->unk_D70[i].z + sp7C.z;
            func_8091BFFC(globalCtx->unk_11E10, &sp70, &sp64, &sp64, Math_Rand_ZeroFloat(0.05f) + 0.2f,
                          &this->unk_D70[i]);
        }
        DECR(this->unk_15E);
        DECR(this->unk_160);
        DECR(this->unk_1D2);

        if (this->unk_1D1) {
            func_8091F2FC(this, globalCtx);

            if (this->unk_160 == 0) {
                if ((this->unk_158 != 4) && (this->unk_158 != 5)) {
                    unkActor = (BossMo*)this->unk_14C;
                    if ((unkActor == NULL) || ((unkActor->unk_158 != 4) && (unkActor->unk_158 != 5))) {
                        if (this->unk_172 == 0) {
                            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
                            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
                        }
                    }
                }
            }

            if (this->unk_172 == 0) {
                CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
            }
        }
        this->unk_162++;
        this->unk_164++;
        this->unk_166 -= 3;
        this->unk_168++;
        Math_SmoothDownscaleMaxF(&this->unk_1C8, 0.1f, 0.2);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/BossMo_Update.s")
#endif

void func_809237C4(BossMo* this, s32 mode, ColliderJntSph* collider1, Vec3f* vec) {
    collider1->list[mode].dim.worldSphere.center.x = vec->x;
    collider1->list[mode].dim.worldSphere.center.y = vec->y;
    collider1->list[mode].dim.worldSphere.center.z = vec->z;
    if (this->unk_158 < 6) {
        collider1->list[mode].dim.worldSphere.radius =
            collider1->list[mode].dim.modelSphere.radius * collider1->list[mode].dim.scale;
    } else {
        collider1->list[mode].dim.worldSphere.radius = 0;
    }
}
s32 D_80926438[41] = { 0x06007C78, 0x06007D38, 0x06007D88, 0x06007DD0, 0x06007E18, 0x06007E60, 0x06007EA8,
                       0x06007EF0, 0x06007F38, 0x06007F80, 0x06007FC8, 0x06008010, 0x06008058, 0x060080A0,
                       0x060080E8, 0x06008130, 0x06008178, 0x060081C0, 0x06008208, 0x06008250, 0x06008298,
                       0x060082E0, 0x06008328, 0x06008370, 0x060083B8, 0x06008400, 0x06008448, 0x06008490,
                       0x060084D8, 0x06008520, 0x06008568, 0x060085B0, 0x060085F8, 0x06008640, 0x06008688,
                       0x060086D0, 0x06008718, 0x06008760, 0x060087A8, 0x060087F0, 0x06008838 };

Vec3f D_809264DC = { -16.0f, 13.0f, 30.0f }; // inline
Vec3f D_809264E8 = { 0.0f, 0.0f, 0.0f };

#ifdef NON_MATCHING
// float regalloc
void func_80923870(BossMo* this, GlobalContext* globalCtx) {
    s16 phi_s1;
    s16 phi_s4;
    s16 index;
    Mtx* phi_s7;
    f32 phi_f20;
    f32 phi_f22;
    Vec3f sp110;

    phi_s7 = Graph_Alloc(globalCtx->state.gfxCtx, 41 * sizeof(Mtx));

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 0x18DE);

    sp110.x = globalCtx->envCtx.unk_2A;
    sp110.y = globalCtx->envCtx.unk_2B;
    sp110.z = globalCtx->envCtx.unk_2C;
    Matrix_Push();

    gDPPipeSync(oGfxCtx->polyXlu.p++);

    gSPSegment(oGfxCtx->polyXlu.p++, 0x0C, phi_s7);

    Matrix_Translate(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0);
    Matrix_RotateY((this->actor.shape.rot.y / 32768.0f) * 3.1415927f, 1);
    Matrix_RotateX((this->actor.shape.rot.x / 32768.0f) * 3.1415927f, 1);

    func_8091BB00(0x0001, 0x71AC, 0x263A);

    for (phi_s1 = 0; phi_s1 < 41; phi_s1++, phi_s7++) {
        f32 pad;
        f32 pad2;
        if (phi_s1 < 2) {
            Matrix_Push();
            Matrix_Scale(0.0f, 0.0f, 0.0f, 1);
            phi_s4 = 1;
        } else {
            if (phi_s1 >= 3) {
                Matrix_Translate(0.0f, this->unk_6A8[phi_s1 - 2].y, 0.0f, 1);
                Matrix_RotateX((this->unk_C6C[phi_s1 - 2].x / 32768.0f) * 3.1415927f, 1);
                Matrix_RotateZ((this->unk_C6C[phi_s1 - 2].z / 32768.0f) * 3.1415927f, 1);
            }
            Matrix_Push();
            Matrix_Scale((this->unk_894[phi_s1 - 2].x + this->unk_A80[phi_s1 - 2].x) * this->actor.scale.x,
                         (this->unk_894[phi_s1 - 2].y + this->unk_A80[phi_s1 - 2].y) * this->actor.scale.y,
                         (this->unk_894[phi_s1 - 2].z + this->unk_A80[phi_s1 - 2].z) * this->actor.scale.z, 1);
            phi_s4 = 1;
            if ((phi_s1 >= this->unk_172) && (this->unk_174 >= phi_s1)) {
                Matrix_Scale(this->unk_1A8, this->unk_1A8, this->unk_1A8, 1);
                phi_s4 = 0;
            }
        }

        index = ((this->unk_16A - (phi_s1 * 2)) + 300) % 300;
        if (this->unk_158 < 0xC8) {
            Matrix_RotateY(((((this->unk_1F8[index] - 1.0f) - this->unk_D6C) * 1000) / 1000.0f) * this->unk_1A0, 1);
        }
        Matrix_RotateX(1.5707964f, 1);
        Matrix_ToMtx(phi_s7, "../z_boss_mo.c", 0x1934);

        gSPMatrix(oGfxCtx->polyXlu.p++, phi_s7, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        if (phi_s1 == 0) {
            func_8002EB44(&this->unk_D70[phi_s1], &globalCtx->view.eye, &sp110, globalCtx->state.gfxCtx);
        }

        if (phi_s1 == 0) {
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_06007C00);
        } else {
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_80926438[phi_s1]);
        }

        Matrix_Pull();

        if ((phi_s1 >= 2) && phi_s4 && (phi_s1 < (this->unk_17A + 38))) {
            if ((this->unk_158 == 0xC9) || (this->unk_158 == 0xCA)) {
                phi_f20 = this->unk_15A & 3;
                phi_f20 *= -15.0f;
                phi_f22 = ((0.18f + func_8091BB1C() * 0.1f) * this->actor.scale.x) * 100.0f;
            } else {
                phi_f20 = 0.0f;
                phi_f22 = (((func_8091BB1C() * (0.08f)) + .08f) * this->actor.scale.x) * 100.0f;
            }
            Matrix_Push();
            Matrix_Translate(((func_8091BB1C() - 0.5f) * 10.0f) * this->unk_894[phi_s1 - 2].x,
                             ((func_8091BB1C() - 0.5f) * 3.0f) + phi_f20,
                             ((func_8091BB1C() - 0.5f) * 10.0f) * this->unk_894[phi_s1 - 2].z, 1);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(phi_f22, phi_f22, 1.0f, 1);

            gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_mo.c", 0x196F),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(oGfxCtx->polyOpa.p++, D_06000140);

            Matrix_Pull();
        }

        Matrix_MultVec3f(&D_809264E8, &this->unk_D70[phi_s1]);
        if (phi_s1 == 36) {
            Matrix_MultVec3f(&D_809264E8, &this->actor.posRot2.pos);
        }
        if (phi_s1 == 24) {
            MtxF sp98;
            Vec3f sp8C = D_809264DC;
            Vec3s sp84;
            Matrix_Push();
            if (this->unk_176 != 0) {
                sp8C.x *= -1.0f;
            }
            Matrix_MultVec3f(&sp8C, &this->unk_1E4);
            Matrix_RotateX(-1.7180586f, 1);
            Matrix_Get(&sp98);
            func_800D20CC(&sp98, &sp84, 0);
            this->unk_1F0 = sp84.x;
            this->unk_1F2 = sp84.y;
            this->unk_1F4 = sp84.z;
            Matrix_Pull();
        }
        if ((phi_s1 < 38) && ((phi_s1 & 1) == 1)) {
            func_809237C4(this, phi_s1 / 2, &this->collider1, &this->unk_D70[phi_s1]);
        }
    }

    Matrix_Pull();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 0x19AB);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_80923870.s")
#endif

void func_80923FDC(BossMo* this, GlobalContext* globalCtx) {
    f32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 0x19B6);
    if (1) {}

    Matrix_Push();
    func_80093D84(globalCtx->state.gfxCtx);
    Matrix_Translate(0.0f, globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02, 0.0f, 0);

    gSPSegment(oGfxCtx->polyXlu.p++, 0x0D,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (s16)this->unk_1AC, (s16)this->unk_1B0, 0x20, 0x20, 1,
                                (s16)this->unk_1B4, (s16)this->unk_1B8, 0x20, 0x20));

    gDPPipeSync(oGfxCtx->polyXlu.p++);

    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0xFF, 0xFF, 0xC8, 0xFF, 0xFF, (s8)D_80925CD4->unk_1C4);

    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x00, 0x64, 0xFF, 0x50);

    Matrix_Scale(0.5f, 1.0f, 0.5f, 1);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_mo.c", 0x1A13),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(oGfxCtx->polyXlu.p++, D_06004C50);

    Matrix_Pull();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 0x1A18);
}

#ifdef NON_MATCHING
// float regalloc
void func_80924228(Actor* thisx, GlobalContext* globalCtx) {
    BossMo* this = THIS;
    s16 temp_v1;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 0x1A20);
    if (globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02 < this->actor.posRot.pos.y) {
        func_80923FDC(this, globalCtx);
    }
    if (this->unk_1D1 != 0) {
        func_80093D84(globalCtx->state.gfxCtx);

        gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, D_80925CD4->unk_15C * 3, D_80925CD4->unk_15C * 3, 0x20,
                                    0x20, 1, D_80925CD4->unk_15C * -3, D_80925CD4->unk_15C * -3, 0x20, 0x20));
        gSPSegment(oGfxCtx->polyXlu.p++, 0x09,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, D_80925CD4->unk_15C * 5, 0, 0x20, 0x20, 1, 0,
                                    D_80925CD4->unk_15C * -0xA, 0x20, 0x20));

        Matrix_RotateX(this->unk_15A * 0.5f, 1);
        Matrix_RotateZ(this->unk_15A * 0.8f, 1);
        gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_mo.c", 0x1A4F),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0xFF, 0xFF, 0xFF, (s8)this->unk_1A4);

        func_8002ED80(&this->actor, globalCtx, 0);

        gSPDisplayList(oGfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(&D_06006700));

        gDPPipeSync(oGfxCtx->polyXlu.p++);

        gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x00, 0xDC, 0xFF, 0x80);
        if ((this->unk_15E & 1) != 0) {
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0xFF, 0x3C, 0x00, 0xFF);
        } else {
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0xFF, 0xFF, 0xFF, 0xFF);
        }
        gSPDisplayList(oGfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(&D_06006838));

        if (((this->unk_166 != 0) && (0.0f <= this->actor.posRot.pos.y)) ||
            (this->actor.posRot.pos.y < globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02)) {
            f32 spA0;
            s16 sp9E;
            if (this->actor.posRot.pos.y < globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02) {
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
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_mo.c", 0x1AA4),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(oGfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(&D_04049210));
        }
    }

    if (this->actor.posRot.pos.y < globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02) {
        func_80923FDC(this, globalCtx);
    }

    if ((this->unk_F62 != 0) && (this->unk_F60 < 4)) {
        f32 sp8C;
        f32 sp88;
        f32 sp84;
        f32 pad;
        f32 sp7C;
        f32 sp78;
        Vec3f sp6C;
        Vec3f sp60;
        func_80093D84(globalCtx->state.gfxCtx);

        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0xFF, 0xFF, 0xC8, 0xFF, 0xFF, (s8)this->unk_188);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x00, 0x64, 0xFF, (s8)this->unk_188);

        gSPSegment(oGfxCtx->polyXlu.p++, 0x0D,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (s16)D_80925CD4->unk_1AC, (s16)D_80925CD4->unk_1B0,
                                    0x20, 0x20, 1, (s16)D_80925CD4->unk_1B4, (s16)D_80925CD4->unk_1B8, 0x20, 0x20));
        sp8C = this->unk_F74.x - this->unk_F68.x;
        sp88 = this->unk_F74.y - this->unk_F68.y;
        sp84 = this->unk_F74.z - this->unk_F68.z;

        sp7C = Math_atan2f(sp8C, sp84);
        sp78 = -Math_atan2f(sp88, sqrtf(sp8C * sp8C + sp84 * sp84));

        sp6C.x = 0.0f;
        sp6C.y = 0.0f;
        sp6C.z = 10.0f;

        Matrix_RotateY(sp7C, 0);
        Matrix_RotateX(sp78, 1);
        Matrix_MultVec3f(&sp6C, &sp60);
        Matrix_Translate(this->unk_F68.x + sp60.x, this->unk_F68.y + sp60.y, this->unk_F68.z + sp60.z, 0);
        if (1) {}
        Matrix_RotateY(sp7C, 1);
        Matrix_RotateX(sp78, 1);
        Matrix_RotateZ(-(this->unk_15C * 0.01f), 1);
        Matrix_RotateZ(this->unk_15C * 0.1f, 1);
        Matrix_Scale(0.825f, 1.175f, 0.825f, 1);
        Matrix_RotateZ(-(this->unk_15C * 0.1f), 1);
        Matrix_RotateX(M_PI / 2.0f, 1);
        Matrix_Scale(0.05f, 1.0f, 0.05f, 1);

        gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_mo.c", 0x1B1D),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPDisplayList(oGfxCtx->polyXlu.p++, &D_06004C50);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 0x1B21);
    func_80925480(globalCtx->unk_11E10, globalCtx);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Mo/func_80924228.s")
#endif

void BossMo_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BossMo* this = THIS;
    u16 temp_a0;
    f32 temp_f0;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 0x1B2E);
    if (1) {}

    func_80093D18(globalCtx->state.gfxCtx);
    gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, (s8)(this->unk_1A4 * 1.5f));
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0x96, 0x96, 0x96, 0x00);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, this->unk_162, this->unk_164, 0x20, 0x20, 1, this->unk_166,
                                this->unk_168, 0x20, 0x20));
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0xFF, 0xFF, 0xC8, 0xFF, 0xFF, (s8)((this->unk_1A4 * 12.0f) / 10.0f));
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x00, 0x64, 0xFF, (s8)this->unk_1A4);
    temp_f0 = Math_Sins(this->unk_15C * 0xB00) * 30.0f;
    temp_a0 = (s16)temp_f0 + 350;
    gSPTexture(oGfxCtx->polyXlu.p++, temp_a0, temp_a0, 0, G_TX_RENDERTILE, G_ON);

    if (this->unk_1D1 != 0) {
        func_80923870(this, globalCtx);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_mo.c", 0x1B6F);
}

void func_80924D70(BossMo *this, GlobalContext *globalCtx) {
    BossMoParticle* particle = globalCtx->unk_11E10;
    s16 i;
    Vec3f* tempVec;
    f32 dx;
    f32 dz;
    Vec3f spA0 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp94;
    f32 temp_float;

    for(i = 0; i < 300; i++,particle++) {
        if (particle->unk_24 != 0) {
            particle->unk_25++;
            if (particle->unk_26 == 0) {
                particle->unk_00.x += particle->unk_0C.x;
                particle->unk_00.y += particle->unk_0C.y;
                particle->unk_00.z += particle->unk_0C.z;
                particle->unk_0C.x += particle->unk_18.x;
                particle->unk_0C.y += particle->unk_18.y;
                particle->unk_0C.z += particle->unk_18.z;
            } else {
                particle->unk_26--;
            }
            if (particle->unk_24 < 3) {
                if (this->unk_F60 >= 0x64) {
                    particle->unk_00.y = globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02;
                }
                Math_SmoothScaleMaxF(&particle->unk_30, particle->unk_34, 0.2f, particle->unk_38);
                if (particle->unk_2C == 0) {
                    particle->unk_2A += 0xF;
                    if (particle->unk_2A >= particle->unk_2E) {
                        particle->unk_2A = particle->unk_2E;
                        particle->unk_2C++;
                    }
                } else {
                    particle->unk_2A -= 5;
                    if (particle->unk_2A <= 0) {
                        particle->unk_2A = 0;
                        particle->unk_24 = 0;
                    }
                }
            } else if(particle->unk_24 == 7) {
                if (particle->unk_3C == NULL) {
                    if ((particle->unk_18.y > 0.0f) && (particle->unk_00.y >= globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02)) {
                         particle->unk_24 = 0;
                    } else {
                        if (particle->unk_0C.y > 2.0f) {
                            particle->unk_0C.y = 2.0f;
                        }
                        particle->unk_2A -= 0x14;
                        if (particle->unk_2A <= 0) {
                            particle->unk_2A = 0;
                            particle->unk_24 = 0;
                        }
                    }
                } else {
                    if ((particle->unk_25 % 4) == 0) {
                        tempVec = particle->unk_3C;
                        dx = tempVec->x - particle->unk_00.x;
                        dz = tempVec->z - particle->unk_00.z;
                        spA0.z = particle->unk_34;
                        Matrix_RotateY(Math_atan2f(dx,dz), 0);
                        Matrix_MultVec3f(&spA0, &sp94);
                        particle->unk_0C.x = sp94.x;
                        particle->unk_0C.z = sp94.z;
                    }
                    Math_SmoothScaleMaxF(&particle->unk_34, 5.0f, 1.0f, 0.5f);
                    if (particle->unk_25 >= 0x15) {
                        particle->unk_2A -= 0x1E;
                        particle->unk_18.y = 1.5f;
                        if ((particle->unk_2A <= 0) || (particle->unk_00.y >= globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02))  {
                            particle->unk_2A = 0;
                            particle->unk_24 = 0;
                        }
                    } else {
                        particle->unk_2A += 0x1E;
                        if (particle->unk_2A >= 0xFF) {
                            particle->unk_2A = 0xFF;
                        }
                    }
                }
            } else if ((particle->unk_24 == 3)||(particle->unk_24 == 4)||(particle->unk_24 == 5)||(particle->unk_24 == 6)) {
                temp_float = (particle->unk_25 & 6) ? 80.0f : 200.0f;
                Math_SmoothScaleMaxF(&particle->unk_34, temp_float, 1.0f, 80.0f);
                if (particle->unk_24 == 6) {
                    Math_SmoothScaleMaxF(&particle->unk_30, particle->unk_38, 0.1f, 0.6f);
                    particle->unk_2A -= 0xF;
                    if (particle->unk_2A <= 0) {
                        particle->unk_2A = 0;
                        particle->unk_24 = 0;
                    }
                } else {
                    particle->unk_2A = particle->unk_34;
                    if (particle->unk_24 == 5) {
                        Math_SmoothScaleMaxF(&particle->unk_30, 0.0f, 1.0f, 0.02f);
                        if (particle->unk_30 <= 0.0f) {
                            particle->unk_24 = 0;
                        }
                    } else {
                        if (particle->unk_24 == 4) {
                            Vec3f sp84 = { 0.0f, 0.0f, 0.0f };
                            func_8091BE5C(5, globalCtx->unk_11E10, &particle->unk_00, &sp84, particle->unk_30);
                        }
                        if (particle->unk_0C.y < -20.0f) {
                            particle->unk_0C.y = -20.0f;
                            particle->unk_18.y = 0.0f;
                        }
                        if (particle->unk_26 == 0) {
                            if (particle->unk_0C.y < -5.0f) {
                                Math_SmoothScaleMaxF(&particle->unk_38, 5.0f, 0.1f, 0.15f);
                            }
                        } else if (particle->unk_26 == 1) {
                            particle->unk_0C.x = Math_Rand_CenteredFloat(3.0f);
                            particle->unk_0C.z = Math_Rand_CenteredFloat(3.0f);
                            particle->unk_18.y = -1.0f;
                        }
                        if ((particle->unk_00.y <= -280.0f)||((1.0f >= particle->unk_00.y) && ( particle->unk_00.y >= -20.0f) && func_8091BC40(&particle->unk_00, 0.0f))) {
                            particle->unk_18.y = 0.0f;
                            particle->unk_0C.z = 0.0f;
                            particle->unk_0C.y = 0.0f;
                            particle->unk_0C.x = 0.0f;
                            if (particle->unk_00.y <= -280.0f) {
                                particle->unk_00.y = -280.0f;
                            } else {
                                particle->unk_00.y = 0.0f;
                            }
                            particle->unk_24 = 6;
                            particle->unk_2A = 0x96;
                            particle->unk_38 = (particle->unk_30 * 15.0f) * 0.15f;
                        } else if (particle->unk_00.y <= globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02) {
                            Vec3f sp78 = particle->unk_00;
                            sp78.y = globalCtx->colCtx.stat.colHeader->waterBoxes->unk_02;
                            if (particle->unk_24 == 4) {
                                func_8091BD38(globalCtx->unk_11E10, &sp78, 60.0f, 160.0f, 0x50, 0x122, 1);
                            } else {
                                func_8091BD38(globalCtx->unk_11E10, &sp78, 40.0f, 110.0f, 0x50, 0x122, 1);
                            }
                            particle->unk_24 = 0;
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

    OPEN_DISPS(gfxCtx, "../z_boss_mo.c", 0x1C60);
    Matrix_Push();

    for (i = 0; i < 300; i++, particle++) {
        if (particle->unk_24 == 2) {
            if (flag == 0) {
                func_80094BC4(gfxCtx);

                gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x9B, 0x9B, 0xFF, 0x00);

                flag++;
            }

            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0xFF, 0xFF, 0xFF, particle->unk_2A);

            Matrix_Translate(particle->unk_00.x, particle->unk_00.y, particle->unk_00.z, 0);
            Matrix_Scale(particle->unk_30, 1.0f, particle->unk_30, 1);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_mo.c", 0x1C7E),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(oGfxCtx->polyXlu.p++, D_040254B0);
        }
    }

    particle = part0;
    flag = 0;
    for (i = 0; i < 300; i++, particle++) {
        if (particle->unk_24 == 1) {
            if (flag == 0) {
                func_80093D84(globalCtx->state.gfxCtx);

                gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0x9B, 0x9B, 0xFF, 0x00);

                flag++;
            }

            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0xFF, 0xFF, 0xFF, particle->unk_2A);

            Matrix_Translate(particle->unk_00.x, particle->unk_00.y, particle->unk_00.z, 0);
            Matrix_Scale(particle->unk_30, 1.0f, particle->unk_30, 1);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_mo.c", 0x1CA2),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(oGfxCtx->polyXlu.p++, D_0401A0B0);
        }
    }

    particle = part0;
    flag = 0;
    for (i = 0; i < 300; i++, particle++) {
        if (((particle->unk_24 == 3) || (particle->unk_24 == 4)) || (particle->unk_24 == 5)) {
            if (flag == 0) {
                oGfxCtx->polyXlu.p = Gfx_CallSetupDL(oGfxCtx->polyXlu.p, 0);

                gSPSegment(oGfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_04051DB0));
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000F20);
                gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0xFA, 0xFA, 0xFF, 0x00);

                flag++;
            }

            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, (s16)(*particle).unk_34, (s16)(*particle).unk_34, 0xFF,
                            particle->unk_2A);

            Matrix_Translate(particle->unk_00.x, particle->unk_00.y, particle->unk_00.z, 0);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(particle->unk_30 / particle->unk_38, particle->unk_38 * particle->unk_30, 1.0f, 1);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_mo.c", 0x1CCD),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000F70);
        }
    }

    particle = part0;
    flag = 0;
    for (i = 0; i < 300; i++, particle++) {
        if (particle->unk_24 == 6) {
            if (flag == 0) {
                func_80094044(gfxCtx);

                gSPSegment(oGfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_04051DB0));
                gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0xFA, 0xFA, 0xFF, 0x00);
                gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000F20);

                flag++;
            }

            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, (s16)(*particle).unk_34, (s16)(*particle).unk_34, 0xFF,
                            particle->unk_2A);

            Matrix_Translate(particle->unk_00.x, particle->unk_00.y, particle->unk_00.z, 0);
            Matrix_Scale(particle->unk_30, 1.0f, particle->unk_30, 1);
            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(gfxCtx, "../z_boss_mo.c", 0x1D11),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000FC8);
        }
    }

    particle = part0;
    flag = 0;
    for (i = 0; i < 300; i++, particle++) {
        if (particle->unk_24 == 7) {
            if (flag == 0) {
                func_80093D18(globalCtx->state.gfxCtx);

                gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0x96, 0x96, 0x96, 0x00);

                flag++;
            }

            gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, particle->unk_2A);

            Matrix_Translate(particle->unk_00.x, particle->unk_00.y, particle->unk_00.z, 0);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(particle->unk_30, particle->unk_30, 1.0f, 1);
            gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(gfxCtx, "../z_boss_mo.c", 0x1D34),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(oGfxCtx->polyOpa.p++, D_06000140);
        }
    }

    Matrix_Pull();
    CLOSE_DISPS(gfxCtx, "../z_boss_mo.c", 0x1D3A);
}

Vec3f D_8092650C = { 0.0f, 0.0f, 0.0f };

u16 D_80926518[532] = {
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

void func_80925C18(void) {
    if (gGameInfo->data[0x980] != 0) {
        gGameInfo->data[0x980]--;
        Audio_SetBGM(0x100100FF);
        func_80078914(&D_8092650C, D_80926518[gGameInfo->data[0x981]]);
    }
    if (gGameInfo->data[0x982] != 0) {
        gGameInfo->data[0x982] = 0;
        Audio_SetBGM((u16)gGameInfo->data[0x983]);
    }
}
