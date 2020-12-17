#include "z_boss_ganon2.h"
#include "overlays/actors/ovl_Demo_Gj/z_demo_gj.h"
#include "overlays/actors/ovl_En_Zl3/z_en_zl3.h"

#define FLAGS 0x00000035

#define THIS ((BossGanon2*)thisx)

typedef struct {
    /* 0x00 */ u8 type;
    /* 0x01 */ u8 unk_01;
    /* 0x04 */ Vec3f position;
    /* 0x10 */ Vec3f velocity;
    /* 0x1C */ Vec3f accel;
    /* 0x28 */ char unk_28[0x6];
    /* 0x2E */ s16 unk_2E;
    /* 0x30 */ char unk_30[0x4];
    /* 0x34 */ f32 unk_34;
    /* 0x38 */ Vec3f unk_38;
} BossGanon2Effect; // size = 0x44

void BossGanon2_Init(Actor* thisx, GlobalContext* globalCtx);
void BossGanon2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossGanon2_Update(Actor* thisx, GlobalContext* globalCtx);
void BossGanon2_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808FD5C4(BossGanon2* this, GlobalContext* globalCtx);
void func_808FD5F4(BossGanon2* this, GlobalContext* globalCtx);
void func_808FFDB0(BossGanon2* this, GlobalContext* globalCtx);
void func_808FFEBC(BossGanon2* this, GlobalContext* globalCtx);
void func_808FFFE0(BossGanon2* this, GlobalContext* globalCtx);
void func_80900104(BossGanon2* this, GlobalContext* globalCtx);
void func_809002CC(BossGanon2* this, GlobalContext* globalCtx);
void func_80900580(BossGanon2* this, GlobalContext* globalCtx);
void func_80902524(BossGanon2* this, GlobalContext* globalCtx);
void func_80905DA8(BossGanon2* this, GlobalContext* globalCtx);

extern AnimationHeader D_06000BFC;
extern UNK_TYPE D_06000EA0;
extern AnimationHeader D_06002168;
extern UNK_TYPE D_060028A8;
extern UNK_TYPE D_06002E6C;
extern UNK_TYPE D_06003754;
extern UNK_TYPE D_06003B1C;
extern UNK_TYPE D_06003F38;
extern UNK_TYPE D_06007288;
extern UNK_TYPE D_06008EB8;
extern UNK_TYPE D_0600A8E0;
extern UNK_TYPE D_0600ADD0;
extern UNK_TYPE D_0600BE90;
extern UNK_TYPE D_0600CAF8;
extern UNK_TYPE D_0600DFF0;
extern UNK_TYPE D_0600E8EC;
extern AnimationHeader D_0600FFE4;
extern UNK_TYPE D_06010380;
extern SkeletonHeader D_060114E8;
extern UNK_TYPE D_060147E0;
extern UNK_TYPE D_06021A90[];
extern UNK_TYPE D_06025970;
extern AnimationHeader D_06026510;
extern UNK_TYPE D_06026AF4;
extern UNK_TYPE D_06027824;
extern UNK_TYPE D_0602A848;
extern UNK_TYPE D_060334F8;
extern UNK_TYPE D_06034278;
extern UNK_TYPE D_060353C0;

const ActorInit Boss_Ganon2_InitVars = {
    ACTOR_BOSS_GANON2,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_GANON2,
    sizeof(BossGanon2),
    (ActorFunc)BossGanon2_Init,
    (ActorFunc)BossGanon2_Destroy,
    (ActorFunc)BossGanon2_Update,
    (ActorFunc)BossGanon2_Draw,
};

/* static */ Vec3f D_80906D60 = { 0.0f, 0.0f, 0.0f };

/* static */ Vec3f D_80906D6C = { 0.0f, 0.0f, 500.0f };

/* static */ u8 D_80906D78 = 0;

// sJntSphItemsInit
static ColliderJntSphItemInit D_80906D7C[] = {
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 0, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 1, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 2, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 3, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 4, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 5, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 6, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 7, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 8, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 9, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 10, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 11, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 12, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 13, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 14, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 15, { { 0, 0, 0 }, 30 }, 100 },
    },
};

// sJntSphInit
static ColliderJntSphInit D_80906FBC = {
    { COLTYPE_METAL_SHIELD, 0x11, 0x09, 0x09, 0x50, COLSHAPE_JNTSPH },
    ARRAY_COUNT(D_80906D7C),
    D_80906D7C,
};

// sJntSphItemsInit
static ColliderJntSphItemInit D_80906FCC[] = {
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x40 }, { 0xFFDFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 15, { { 0, 0, 0 }, 45 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x40 }, { 0xFFDFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 16, { { 0, 0, 0 }, 45 }, 100 },
    },
};

// sJntSphInit
static ColliderJntSphInit D_80907014 = {
    { COLTYPE_METAL_SHIELD, 0x11, 0x09, 0x09, 0x10, COLSHAPE_JNTSPH },
    ARRAY_COUNT(D_80906FCC),
    D_80906FCC,
};

// primColor
/* static */ Color_RGBA8 D_80907024 = { 0, 120, 0, 255 };

// envColor
/* static */ Color_RGBA8 D_80907028 = { 0, 120, 0, 255 };

/* static */ Vec3f D_8090702C[] = {
    { 10.0f, -10.0f, 0.0f },
    { 0.0f, 0.0f, -60.0f },
    { 70.0f, -30.0f, 10.0f },
};

/* static */ Vec3f D_80907050[] = {
    { -20.0f, 0.0f, 0.0f },
    { -15.0f, 0.0f, 10.0f },
    { -16.0f, -12.0f, 40.0f },
};

/* static */ s16 D_80907074[] = { 0, 1, 2, 2, 1, 0 };

/* static */ s16 D_80907080 = 0;

/* static */ u8 D_80907084[] = { 0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20 };

/* static */ u8 D_80907090[] = { 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21 };

/* static */ u8 D_8090709C[] = {
    0xFF, 0xFF, 0x01, 0xFF, 0x03, 0x04, 0xFF, 0xFF, 0x05, 0xFF, 0x06, 0x07, 0xFF, 0xFF, 0x08, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0xFF, 0xFF, 0x02, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0xFF, 0xFF, 0xFF, 0x0F, 0xFF, 0x00,
};

/* static */ UNK_TYPE D_809070CC[] = {
    0xFFFF01FF, 0x0304FFFF, 0x05FF0607, 0xFFFF08FF, 0xFFFFFFFF, 0xFFFFFFFF,
    0xFFFFFFFF, 0xFFFFFFFF, 0x00FFFF02, 0x0C0D0E09, 0x0A0BFFFF, 0xFFFFFF00,
};

/* static */ UNK_TYPE D_809070FC[] = {
    0x00000000,
    0x00000000,
    0x459C4000,
};

/* static */ UNK_TYPE D_80907108[] = {
    0x00000000,
    0x44FA0000,
    0x00000000,
};

/* static */ UNK_TYPE D_80907114[] = {
    0x00000000,
    0x44FA0000,
    0x00000000,
};

/* static */ UNK_TYPE D_80907120[] = {
    0x00000000,
    0x00000000,
};

/* static */ UNK_TYPE D_80907128[] = { 0x4684D000 };

/* static */ UNK_TYPE D_8090712C[] = {
    0x00000000,
    0x00000000,
};

/* static */ UNK_TYPE D_80907134[] = { 0x453B8000 };

/* static */ UNK_TYPE D_80907138[] = {
    0x00000000,
    0x00000000,
    0x00000000,
};

/* static */ u8 D_80907144[] = {
    0xFF, 0xFF, 0x01, 0xFF, 0x03, 0x04, 0x05, 0xFF, 0x06, 0x07, 0x08, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0x02, 0x0C, 0x0D, 0x0E, 0x09, 0x0A, 0x0B, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00,
};

/* static */ UNK_TYPE D_80907164[] = {
    0x44480000,
    0x43D20000,
    0x42C80000,
};

/* static */ UNK_TYPE D_80907170[] = {
    0x0601E188,
    0x0601E988,
    0x0601EA08,
};

/* static */ UNK_TYPE D_8090717C[] = {
    0x00000000,
    0xC4FA0000,
    0x00000000,
};

/* static */ UNK_TYPE D_80907188[] = {
    0x00010002,
    0x00030003,
    0x00020001,
};

/* static */ UNK_TYPE D_80907194[] = {
    0x00020003,
    0x00040004,
    0x00040003,
    0x00020000,
};

/* static */ UNK_TYPE D_809071A4[] = {
    0x00020003,
    0x00040004,
    0x00040004,
    0x00030002,
};

/* static */ UNK_TYPE D_809071B4[] = {
    0x00020004, 0x00050005, 0x00060006, 0x00060006, 0x00050005, 0x00040002,
};

/* static */ UNK_TYPE D_809071CC[] = {
    0x0001FFFF, 0x00010001, 0x00030004, 0x00010006, 0x00070002, 0x0009000A, 0x0002000C, 0x000D0000,
};

/* static */ UNK_TYPE D_809071EC[] = {
    0x03020201, 0x03030103, 0x03010003, 0x01000300, 0x00000000, 0x00000000, 0x00000000,
};

#include "z_boss_ganon2_gfx.c"

/* static */ Vec3f D_8090EB20;

/* static */ EnZl3* D_8090EB2C;

/* static */ Actor* D_8090EB30;

/* static */ UNK_TYPE D_8090EB34;

/* static */ BossGanon2Effect D_8090EB38[100];

/* static */ s32 D_809105C8;

/* static */ s32 D_809105CC;

/* static */ s32 D_809105D0;

/* static */ UNK_TYPE D_809105DC;

/* static */ Vec3f D_809105D8[8];

/* static */ s8 D_80910638;

void func_808FCF40(s32 arg0, s32 arg1, s32 arg2) {
    D_809105C8 = arg0;
    D_809105CC = arg1;
    D_809105D0 = arg2;
}

f32 func_808FCF5C(void) {
    f32 temp_f2;

    D_809105C8 = (D_809105C8 * 0xAB) % 0x763D;
    D_809105CC = (D_809105CC * 0xAC) % 0x7663;
    D_809105D0 = (D_809105D0 * 0xAA) % 0x7673;
    temp_f2 = (D_809105C8 / 30269.0f) + (D_809105CC / 30307.0f) + (D_809105D0 / 30323.0f);

    while (temp_f2 >= 1.0f) {
        temp_f2 -= 1.0f;
    }

    return fabsf(temp_f2);
}

void func_808FD080(s32 idx, ColliderJntSph* collider, Vec3f* arg2) {
    collider->list[idx].dim.worldSphere.center.x = arg2->x;
    collider->list[idx].dim.worldSphere.center.y = arg2->y;
    collider->list[idx].dim.worldSphere.center.z = arg2->z;

    collider->list[idx].dim.worldSphere.radius =
        collider->list[idx].dim.modelSphere.radius * collider->list[idx].dim.scale;
}

void func_808FD108(BossGanon2* this, GlobalContext* globalCtx, s32 objectId, u8 arg3) {
    s32 pad;
    s32 objectIdx = Object_GetIndex(&globalCtx->objectCtx, objectId);

    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[objectIdx].segment);

    if (arg3) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 790);

        gSPSegment(POLY_OPA_DISP++, 0x06, globalCtx->objectCtx.status[objectIdx].segment);
        gSPSegment(POLY_XLU_DISP++, 0x06, globalCtx->objectCtx.status[objectIdx].segment);

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 799);
    }
}

void func_808FD210(GlobalContext* globalCtx, Vec3f* arg1) {
    BossGanon2Effect* effect = globalCtx->unk_11E10;

    effect->type = 1;
    effect->position = *arg1;
    effect->unk_2E = 0;
    effect->unk_01 = 0;
    effect->velocity.x = 25.0f;
    effect->velocity.y = 15.0f;
    effect->velocity.z = 0.0f;
    effect->accel.x = 0.0f;
    effect->accel.y = -1.0f;
    effect->accel.z = 0.0f;
}

void func_808FD27C(GlobalContext* globalCtx, Vec3f* position, Vec3f* velocity, f32 arg3) {
    BossGanon2Effect* effect = (BossGanon2Effect*)globalCtx->unk_11E10;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(D_8090EB38); i++, effect++) {
        if (effect->type == 0) {
            effect->type = 2;
            effect->position = *position;
            effect->velocity = *velocity;
            effect->accel.x = 0.0;
            effect->accel.y = -1.0f;
            effect->accel.z = 0.0;
            effect->unk_38.z = Math_Rand_ZeroFloat(2 * M_PI);
            effect->unk_38.y = Math_Rand_ZeroFloat(2 * M_PI);
            effect->unk_38.x = Math_Rand_ZeroFloat(2 * M_PI);
            effect->unk_34 = arg3;
            break;
        }
    }
}

void BossGanon2_Init(Actor* thisx, GlobalContext* globalCtx) {
    BossGanon2* this = THIS;
    s32 pad;
    s16 i;

    globalCtx->unk_11E10 = D_8090EB38;

    for (i = 0; i < ARRAY_COUNT(D_8090EB38); i++) {
        D_8090EB38[i].type = 0;
    }

    this->actor.colChkInfo.mass = 0xFF;
    this->actor.colChkInfo.health = 0x1E;
    Collider_InitJntSph(globalCtx, &this->unk_424);
    Collider_SetJntSph(globalCtx, &this->unk_424, &this->actor, &D_80906FBC, this->unk_464);
    Collider_InitJntSph(globalCtx, &this->unk_444);
    Collider_SetJntSph(globalCtx, &this->unk_444, &this->actor, &D_80907014, this->unk_864);
    func_808FD108(this, globalCtx, OBJECT_GANON, 0);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_060114E8, NULL, 0, 0, 0);
    func_808FD5C4(this, globalCtx);
    this->actor.naviEnemyId = 0x3E;
    this->actor.gravity = 0.0f;
}

void BossGanon2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BossGanon2* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyJntSph(globalCtx, &this->unk_424);
    Collider_DestroyJntSph(globalCtx, &this->unk_444);
}

void func_808FD4D4(BossGanon2* this, GlobalContext* globalCtx, s16 arg2, s16 arg3) {
    if ((arg2 == 0) || (arg2 == 1)) {
        func_80033260(globalCtx, &this->actor, &this->unk_1D0, 25.0f, arg3, 8.0f, 0x1F4, 0xA, 1);
    }

    if ((arg2 == 0) || (arg2 == 2)) {
        func_80033260(globalCtx, &this->actor, &this->unk_1DC, 25.0f, arg3, 8.0f, 0x1F4, 0xA, 1);
    }

    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_WALK);
    func_80033E88(&this->actor, globalCtx, 2, 0xA);
}

void func_808FD5C4(BossGanon2* this, GlobalContext* globalCtx) {
    this->actionFunc = func_808FD5F4;
    this->actor.flags &= ~1;
    this->actor.posRot.pos.y = -3000.0f;
}

#ifdef NON_MATCHING
void func_808FD5F4(BossGanon2* this, GlobalContext* globalCtx) {
    u8 sp8D;
    Player* player;
    Vec3f sp68;
    Camera* temp_v0;
    BossGanon2Effect* temp_v0_3;

    sp8D = 0;
    player = PLAYER;
    this->unk_398++;

    switch (this->unk_39C) {
        case 0:
            if (Object_IsLoaded(&globalCtx->objectCtx, Object_GetIndex(&globalCtx->objectCtx, OBJECT_GANON_ANIME3))) {
                func_80064520(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, this, 8);
                this->unk_39E = Gameplay_CreateSubCamera(globalCtx);
                Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
                Gameplay_ChangeCameraStatus(globalCtx, this->unk_39E, 7);
                this->unk_39C = 1;
                D_8090EB2C = (EnZl3*)Actor_SpawnAsChild(&globalCtx->actorCtx, this, globalCtx, ACTOR_EN_ZL3, 970.0f,
                                                        1086.0f, -200.0f, 0, 0, 0, 1);
                D_8090EB2C->unk_3C8 = 0;
                D_8090EB2C->actor.posRot.pos.x = 970.0f;
                D_8090EB2C->actor.posRot.pos.y = 1086.0f;
                D_8090EB2C->actor.posRot.pos.z = -214.0f;
                D_8090EB2C->actor.shape.rot.y = -0x7000;
                this->unk_3BC.x = 0.0f;
                this->unk_3BC.y = 1.0f;
                this->unk_3BC.z = 0.0f;
                this->unk_398 = 0;
                this->unk_3A4.x = 0.0f;
                this->unk_3A4.y = 1400.0f;
                this->unk_3A4.z = 1600.0f;
                player->actor.posRot.pos.x = 970.0f;
                player->actor.posRot.pos.y = 1086.0f;
                player->actor.posRot.pos.z = -186.0f;
                player->actor.shape.rot.y = -0x5000;
                SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06002168, 0.0f);
                globalCtx->envCtx.unk_D8 = 0.0f;
            }
        case 1:
            if (this->unk_398 < 0x46) {
                globalCtx->envCtx.unk_D8 = 0.0f;
            }
            this->unk_339 = 3;
            Math_SmoothScaleMaxF(&this->unk_3A4.x, 1500.0f, 0.1f, this->unk_410.x * 1500.0f);
            Math_SmoothScaleMaxF(&this->unk_3A4.z, -160.0f, 0.1f, this->unk_410.x * 1760.0f);
            Math_SmoothScaleMaxF(&this->unk_410.x, 0.0075f, 1.0f, 0.0001f);
            this->unk_3B0.x = -200.0f;
            this->unk_3B0.y = 1086.0f;
            this->unk_3B0.z = -200.0f;
            if (this->unk_398 == 0x96) {
                func_8010B680(globalCtx, 0x70D3, NULL);
            }
            if (this->unk_398 >= 0xFB) {
                if (func_8010BDBC(&globalCtx->msgCtx) == 0) {
                    this->unk_39C = 2;
                    this->unk_398 = 0;
                    this->unk_410.x = 0.0f;
                    globalCtx->envCtx.unk_D8 = 1.0f;
                }
            }
        case 2:
            this->unk_339 = 4;
            player->actor.posRot.pos.x = 970.0f;
            player->actor.posRot.pos.y = 1086.0f;
            player->actor.posRot.pos.z = -166.0f;
            D_8090EB2C->actor.posRot.pos.x = 974.0f;
            D_8090EB2C->actor.posRot.pos.y = 1086.0f;
            D_8090EB2C->actor.posRot.pos.z = -186.0f;
            player->actor.shape.rot.y = -0x5000;
            D_8090EB2C->actor.shape.rot.y = -0x5000;
            if (this->unk_398 == 0x3C) {
                func_8010B680(globalCtx, 0x70D4, NULL);
            }
            if (this->unk_398 == 0x28) {
                D_8090EB2C->unk_3C8 = 1;
                func_8002DF54(globalCtx, this, 0x4E);
            }
            if (this->unk_398 == 0x55) {
                D_8090EB2C->unk_3C8 = 2;
                func_8002DF54(globalCtx, this, 0x4F);
            }
            this->unk_3A4.x = 930.0f;
            this->unk_3A4.y = 1129.0f;
            this->unk_3A4.z = -181.0f;
            this->unk_3B0.x = player->actor.posRot.pos.x;
            this->unk_3B0.z = (player->actor.posRot.pos.z - 15.0f) + 5.0f;
            if (this->unk_398 >= 0x69) {
                Math_SmoothScaleMaxF(&this->unk_3B0.y, player->actor.posRot.pos.y + 47.0f + 7.0f + 15.0f, 0.1f,
                                     this->unk_410.x);
                Math_SmoothScaleMaxF(&this->unk_410, 2.0f, 1.0f, 0.1f);
            } else {
                this->unk_3B0.y = player->actor.posRot.pos.y + 47.0f + 7.0f;
            }
            if ((this->unk_398 >= 0xAB) && (func_8010BDBC(&globalCtx->msgCtx) == 0)) {
                this->unk_39C = 3;
                this->unk_398 = 0;
                this->unk_410.x = 0.0f;
            }
            break;
        case 3:
            Math_SmoothScaleMaxF(&this->unk_3B0.y, player->actor.posRot.pos.y + 47.0f + 7.0f, 0.1f, 2.0f);
            this->unk_339 = 4;
            if (this->unk_398 == 0xA) {
                func_80078914(&D_80906D6C, 0x281D);
                Audio_SetBGM(0x100000FF);
            }
            if (this->unk_398 == 0x14) {
                D_8090EB2C->unk_3C8 = 3;
                func_8002DF54(globalCtx, this, 0x50);
            }
            if (this->unk_398 == 0x37) {
                this->unk_39C = 4;
                this->unk_398 = 0;
                this->unk_410.x = 0.0f;
                D_8090EB2C->unk_3C8 = 4;
                func_8002DF54(globalCtx, this, 0x50);
            }
            break;
        case 4:
            this->unk_339 = 4;
            Math_SmoothScaleMaxF(&this->unk_3A4.x, -360.0f, 0.1f, this->unk_410.x * 1290.0f);
            Math_SmoothScaleMaxF(&this->unk_3A4.z, -20.0f, 0.1f, this->unk_410.x * 170.0f);
            Math_SmoothScaleMaxF(&this->unk_410.x, 0.04f, 1.0f, 0.0005f);
            if (this->unk_398 == 0x64) {
                temp_v0 = Gameplay_GetCamera(globalCtx, 0);
                temp_v0->eye = this->unk_3A4;
                temp_v0->eyeNext = this->unk_3A4;
                temp_v0->at = this->unk_3B0;
                func_800C08AC(globalCtx, this->unk_39E, 0);
                this->unk_39E = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, this, 7);
                this->unk_39C = 5;
                this->unk_398 = 0;
            }
            break;
        case 5:
            this->unk_339 = 4;
            if (this->actor.xzDistFromLink < 500.0f) {
                func_80106CCC(globalCtx);
                this->unk_39C = 0xA;
                this->unk_398 = 0;
                func_80064520(globalCtx, &globalCtx->csCtx);
                this->unk_39E = Gameplay_CreateSubCamera(globalCtx);
                Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
                Gameplay_ChangeCameraStatus(globalCtx, this->unk_39E, 7);
            }
        case 10:
            player->actor.posRot.pos.x = 490.0f;
            player->actor.posRot.pos.y = 1086.0f;
            player->actor.posRot.pos.z = -166.0f;
            D_8090EB2C->actor.posRot.pos.x = 724.0f;
            D_8090EB2C->actor.posRot.pos.y = 1086.0f;
            D_8090EB2C->actor.posRot.pos.z = -186.0f;
            player->actor.shape.rot.y = -0x4000;
            D_8090EB2C->actor.shape.rot.y = -0x5000;
            this->unk_3A4.x = 410.0f;
            this->unk_3A4.y = 1096.0f;
            this->unk_3A4.z = -110.0f;
            this->unk_3B0.x = player->actor.posRot.pos.x + 10.0f;
            this->unk_3B0.y = (player->actor.posRot.pos.y + 200.0f) - 160.0f;
            this->unk_3B0.z = player->actor.posRot.pos.z;
            if (this->unk_398 >= 0x14) {
                func_80078884(0x301C);
                Math_SmoothScaleMaxF(&this->unk_324, 255.0f, 1.0f, 10.0f);
                this->unk_339 = 5;
                if (this->unk_398 == 0x14) {
                    this->unk_33C = 0.0f;
                    globalCtx->envCtx.unk_D8 = 0.0f;
                }
            } else {
                this->unk_339 = 4;
            }
            if (this->unk_398 == 0x1E) {
                D_8090EB2C->unk_3C8 = 5;
                func_8002DF54(globalCtx, this, 0x51);
            }
            if (this->unk_398 == 0x32) {
                this->unk_398 = 0;
                this->unk_39C = 0xB;
            }
            break;
        case 11:
            this->unk_339 = 5;
            func_80078884(0x301C);
            player->actor.posRot.pos.x = 490.0f;
            player->actor.posRot.pos.y = 1086.0f;
            player->actor.posRot.pos.z = -166.0f;
            D_8090EB2C->actor.posRot.pos.x = 724.0f;
            D_8090EB2C->actor.posRot.pos.y = 1086.0f;
            D_8090EB2C->actor.posRot.pos.z = -186.0f;
            player->actor.shape.rot.y = -0x4000;
            D_8090EB2C->actor.shape.rot.y = -0x5000;
            this->unk_3A4.x = 450.0f;
            this->unk_3A4.y = 1121.0f;
            this->unk_3A4.z = -158.0f;
            this->unk_3B0.x = (player->actor.posRot.pos.x - 20.0f) + 2.0f;
            this->unk_3B0.y = ((player->actor.posRot.pos.y + 200.0f) - 151.0f) - 2.0f;
            this->unk_3B0.z = player->actor.posRot.pos.z + 2.0f;
            if (this->unk_398 == 0xA) {
                func_80078914(&D_80906D6C, 0x281D);
            }
            if (this->unk_398 == 0x14) {
                func_80078884(0x281D);
            }
            if (this->unk_398 == 0x1E) {
                func_8002DF54(globalCtx, this, 0x52);
            }
            if (this->unk_398 == 0x32) {
                this->unk_398 = 0;
                this->unk_39C = 0xC;
                SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06002168, 0.0f);
                this->unk_194 = SkelAnime_GetFrameCount(&D_06002168);
                this->actor.posRot.pos.x = this->actor.posRot.pos.z = -200.0f;
                this->actor.posRot.pos.y = 1009.0f;
                this->actor.shape.unk_08 = 7000.0f;
                this->actor.posRot.rot.y = 0x5000;
                this->unk_3A4.x = -60.0f;
                this->unk_3A4.y = 1106.0f;
                this->unk_3A4.z = -200.0f;
                this->unk_3B0.x = this->unk_3B0.z = -200.0f;
                this->unk_3B0.y = this->actor.posRot.pos.y + 70.0f;
                globalCtx->envCtx.unk_D8 = 0.0f;
                globalCtx->envCtx.unk_BE = globalCtx->envCtx.unk_BD = 0;
                this->unk_339 = 0;
            }
        case 12:
        case 13:
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            if (this->unk_398 == 0x1E) {
                D_80906D78 = 1;
                this->unk_314 = 1;
                func_800A9F6C(0.0f, 0xC8, 0x14, 0x14);
            }
            if (this->unk_398 == 0x1E) {
                func_80078884(0x28C2);
            }
            if (this->unk_398 >= 0x1E) {
                Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, 1289.0f, 0.1f, 10.0f);
                this->unk_3B0.y = this->actor.posRot.pos.y + 70.0f;
            }
            if (func_800A56C8(&this->skelAnime, this->unk_194) != 0) {
                SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06002E6C, 0.0f);
                this->unk_39C = 0xE;
                this->unk_398 = 0;
                this->actor.posRot.pos.x = -200.0f;
                this->actor.posRot.pos.y = this->actor.posRot.pos.y - 30.0f;
                this->actor.posRot.pos.z = -200.0f;
                Audio_SetBGM(0x23);
            }
        case 14:
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, 1289.0f, 0.05f, 1.0f);
            player->actor.posRot.pos.x = 250.0f;
            player->actor.posRot.pos.y = 1086.0f;
            player->actor.posRot.pos.z = -266.0f;
            player->actor.shape.rot.y = -0x4000;
            D_8090EB2C->actor.posRot.pos.x = 724.0f;
            D_8090EB2C->actor.posRot.pos.y = 1086.0f;
            D_8090EB2C->actor.posRot.pos.z = -186.0f;
            this->unk_3A4.x = this->actor.posRot.pos.x + -10.0f;
            this->unk_3A4.y = this->actor.posRot.pos.y + 80.0f;
            this->unk_3A4.z = this->actor.posRot.pos.z + 50.0f;
            this->unk_3B0.x = player->actor.posRot.pos.x;
            this->unk_3B0.y = player->actor.posRot.pos.y;
            this->unk_3B0.z = player->actor.posRot.pos.z - 200.0f;
            if (this->unk_398 == 0x14) {
                func_8002DF54(globalCtx, this, 0x1E);
            }
            if (this->unk_398 == 0x3C) {
                this->unk_3A4.x = (this->actor.posRot.pos.x + 200.0f) - 154.0f;
                this->unk_3A4.y = this->actor.posRot.pos.y + 60.0f;
                this->unk_3A4.z = this->actor.posRot.pos.z - 15.0f;
                this->unk_39C = 0xF;
                this->unk_398 = 0;
                this->unk_3B0.y = this->actor.posRot.pos.y + 77.0f + 100.0f;
                this->unk_314 = 2;
                this->unk_3B0.z = this->actor.posRot.pos.z + 5.0f;
                this->unk_3B0.x = this->actor.posRot.pos.x;
            }
            if ((globalCtx->gameplayFrames & 0x1F) == 0) {
                Audio_PlayActorSound2(this, 0x39D1);
            }
            break;
        case 15:
            if (((globalCtx->gameplayFrames & 0x1F) == 0) && (this->unk_398 < 0x64)) {
                Audio_PlayActorSound2(this, 0x39D1);
            }
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            Math_SmoothScaleMaxF(&this->unk_3B0.y, this->actor.posRot.pos.y + 77.0f, 0.05f, 5.0f);
            if (this->unk_398 >= 0x32) {
                if (this->unk_398 == 0x32) {
                    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06000BFC, 0.0f);
                    this->unk_194 = SkelAnime_GetFrameCount(&D_06000BFC);
                    this->unk_314 = 3;
                }
                if (func_800A56C8(&this->skelAnime, this->unk_194) != 0) {
                    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06003F38, 0.0f);
                    this->unk_194 = 1000.0f;
                }
            }
            if (this->unk_398 >= 0x47) {
                Math_SmoothScaleMaxF(&this->unk_1B4, 255.0f, 1.0f, 10.0f);
            }
            if (this->unk_398 == 0x8C) {
                this->unk_39C = 0x10;
                this->unk_398 = 0;
                SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06003754, 0.0f);
                this->unk_194 = SkelAnime_GetFrameCount(&D_06003754);
                this->unk_339 = 0x37;
                globalCtx->envCtx.unk_D8 = 1.0f;
                Audio_PlayActorSound2(this, 0x39D3);
            }
        case 16:
            if (this->unk_398 < 0x19) {
                this->unk_339 = 0x37;
            } else {
                this->unk_339 = 6;
                if (this->unk_194 > 100.0f) {
                    Math_SmoothScaleMaxF(&this->unk_30C, 15.0f, 1.0f, 2.0f);
                } else {
                    Math_SmoothScaleMaxF(&this->unk_30C, 7.0f, 1.0f, 0.2f);
                }
            }
            this->unk_1B4 = 0.0f;
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            if (func_800A56C8(&this->skelAnime, this->unk_194) != 0) {
                SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060028A8, 0.0f);
                this->unk_194 = 1000.0f;
            }
            Math_SmoothScaleMaxF(&this->unk_3A4.x, (this->actor.posRot.pos.x + 200.0f) - 90.0f, 0.1f, 6.3999996f);
            Math_SmoothScaleMaxF(&this->unk_3A4.y, ((this->actor.posRot.pos.y + 60.0f) - 60.0f) - 70.0f, 0.1f, 13.0f);
            Math_SmoothScaleMaxF(&this->unk_3B0.y, this->actor.posRot.pos.y + 40.0f, 0.1f, 3.6999998f);
            if (this->unk_398 == 0x1E) {
                Audio_PlayActorSound2(this, 0x39D4);
                Audio_PlayActorSound2(this, 0x396D);
            }
            if (this->unk_398 < 0x33) {
                sp8D = 1;
            }
            if (this->unk_398 >= 0x3C) {
                temp_v0 = Gameplay_GetCamera(globalCtx, 0);
                temp_v0->eye = this->unk_3A4;
                temp_v0->eyeNext = this->unk_3A4;
                temp_v0->at = this->unk_3B0;
                this->unk_39C = 0x11;
                this->unk_398 = 0;
                this->unk_337 = 2;
                func_808FD108(this, globalCtx, 0x153, 0);
                SkelAnime_Free(&this->skelAnime, globalCtx);
                SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06025970, NULL, 0, 0, 0);
                func_808FD108(this, globalCtx, 0x17E, 0);
                func_8002DF54(globalCtx, this, 0x54);
                this->unk_314 = 3;
            }
            break;
        case 17:
            this->unk_339 = 6;
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            this->unk_3A4.x = player->actor.posRot.pos.x - 40.0f;
            this->unk_3A4.y = player->actor.posRot.pos.y + 40.0f;
            this->unk_3A4.z = player->actor.posRot.pos.z + 20.0f;
            this->unk_3B0.x = player->actor.posRot.pos.x;
            this->unk_3B0.y = (player->actor.posRot.pos.y + 10.0f + 60.0f) - 30.0f;
            this->unk_3B0.z = player->actor.posRot.pos.z;
            if (this->unk_398 == 0x19) {
                this->unk_39C = 0x12;
                this->unk_398 = 0;
                SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06010380, 0.0f);
                this->skelAnime.animPlaybackSpeed = 0.0f;
                this->unk_3A4.x = ((this->actor.posRot.pos.x + 500.0f) - 350.0f) - 50.0f;
                this->unk_3A4.y = this->actor.posRot.pos.y;
                this->unk_3A4.z = this->actor.posRot.pos.z;
                this->unk_3B0.x = this->actor.posRot.pos.x + 50.0f;
                this->unk_3B0.y = this->actor.posRot.pos.y + 60.0f;
                this->unk_3B0.z = this->actor.posRot.pos.z;
                this->actor.posRot.rot.y = 0x4000;
            }
            break;
        case 18:
            this->unk_339 = 6;
            if (this->unk_398 == 0x1E) {
                Audio_SetBGM(0x65);
            }
            Math_SmoothScaleMaxF(&this->unk_30C, 7.0f, 1.0f, 0.1f);
            Math_SmoothScaleMaxF(&this->unk_3A4, (this->actor.posRot.pos.x + 500.0f) - 350.0f, 0.1f, 1.0f);
            Math_SmoothScaleMaxF(&this->unk_3B0, this->actor.posRot.pos.x, 0.1f, 1.0f);
            Math_SmoothScaleMaxF(&this->unk_228, 1.0f, 0.1f, 0.02f);
            if (this->unk_398 == 0x41) {
                this->unk_39C = 0x13;
                this->unk_398 = 0;
            }
            break;
        case 19:
            this->unk_394 += 0.5f;
            this->unk_339 = 6;
            this->actor.posRot.pos.y += this->actor.velocity.y;
            this->actor.velocity.y -= 1.0f;
            if (this->unk_398 == 0xA) {
                this->unk_39C = 0x14;
                this->unk_398 = 0;
                this->actor.posRot.pos.x += 250.0f;
                this->actor.posRot.pos.y = 1886.0f;
                this->unk_394 = 0.0f;
                func_8002DF54(globalCtx, this, 0x53);
                this->unk_30C = 5.0f;
                this->unk_228 = 1.0f;
            }
            break;
        case 20:
            this->unk_339 = 6;
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            this->actor.posRot.pos.y += this->actor.velocity.y;
            this->actor.velocity.y -= 1.0f;
            player->actor.posRot.pos.x = 250.0f;
            player->actor.posRot.pos.y = 1086.0f;
            player->actor.posRot.pos.z = -266.0f;
            player->actor.shape.rot.y = -0x4000;
            this->unk_3A4.x = (player->actor.posRot.pos.x - 40.0f) - 200.0f;
            this->unk_3A4.y = (player->actor.posRot.pos.y + 40.0f) - 30.0f;
            this->unk_3A4.z = (player->actor.posRot.pos.z - 20.0f) + 100.0f;
            this->unk_3B0.x = player->actor.posRot.pos.x;
            this->unk_3B0.y = ((player->actor.posRot.pos.y + 10.0f + 60.0f) - 20.0f) + 30.0f;
            this->unk_3B0.z = player->actor.posRot.pos.z;
            this->unk_3BC.x = 0.8f;
            if (this->actor.posRot.pos.y <= 1099.0f) {
                this->actor.posRot.pos.y = 1099.0f;
                this->unk_39C = 0x15;
                this->unk_398 = 0;
                this->unk_420 = 10.0f;
                this->actor.velocity.y = 0.0f;
                SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06010380, 0.0f);
                func_808FD4D4(this, globalCtx, 0, 3);
                func_800A9F6C(0.0f, 0xC8, 0x14, 0x14);
            }
            break;
        case 21:
            this->unk_339 = 6;
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            this->unk_41C = Math_Coss(globalCtx->gameplayFrames << 0xF) * this->unk_420;
            Math_SmoothDownscaleMaxF(&this->unk_420, 1.0f, 0.75f);
            if (this->unk_398 == 0x1E) {
                this->unk_39C = 0x16;
                this->unk_30C = 10.0f;
            }
        case 22:
            if (this->unk_398 < 0x3C) {
                this->unk_339 = 7;
            }
            this->unk_3BC.x = 0.0f;
            this->actor.posRot.pos.y = 1099.0f;
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            Math_SmoothDownscaleMaxF(&this->unk_30C, 1.0f, 0.1f);
            if (this->unk_398 >= 0x33) {
                Math_SmoothScaleMaxF(&this->unk_224, 1.0f, 1.0f, 0.025f);
            }
            if (this->unk_398 == 0x3C) {
                this->unk_336 = 2;
            }
            if (this->unk_398 == 0x50) {
                func_808FD108(this, globalCtx, 0x153, 0);
                TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx, SEGMENTED_TO_VIRTUAL(D_06021A90), 0xA0,
                                       0xB4, 0x80, 0x28);
            }
            this->unk_3A4.x = ((this->actor.posRot.pos.x + 500.0f) - 350.0f) + 100.0f;
            this->unk_3A4.y = this->actor.posRot.pos.y;
            this->unk_3A4.z = this->actor.posRot.pos.z;
            this->unk_3B0.x = this->actor.posRot.pos.x;
            this->unk_3B0.z = this->actor.posRot.pos.z;
            this->unk_3B0.y = (this->unk_1B8.y + 60.0f) - 40.0f;
            if (this->unk_398 >= 0xA7) {
                if (this->unk_398 < 0xAD) {
                    this->unk_312 = 2;
                }
            }
            if (this->unk_398 >= 0xBB) {
                if (this->unk_398 < 0xC4) {
                    this->unk_312 = 1;
                }
            }
            if (this->unk_398 >= 0xCB) {
                if (this->unk_398 < 0xD2) {
                    this->unk_312 = 2;
                }
            }
            if ((this->unk_398 == 0xA6) || (this->unk_398 == 0xB9) || (this->unk_398 == 0xC8)) {
                func_80078884(0x3997);
                func_80078884(0x398F);
            }
            if (this->unk_398 == 0xD7) {
                this->unk_39C = 0x17;
                this->unk_224 = 0.0f;
                func_8002DF54(globalCtx, this, 0x55);
            }
            break;
        case 23:
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            if ((this->unk_398 >= 0xDF) && (this->unk_398 < 0xE8)) {
                this->unk_312 = 2;
            }
            if (this->unk_398 == 0xDE) {
                func_80078884(0x3997);
                func_80078884(0x398F);
            }
            this->unk_3A4.x = (player->actor.posRot.pos.x - 40.0f) + 6.0f;
            this->unk_3A4.y = player->actor.posRot.pos.y + 40.0f;
            this->unk_3A4.z = (player->actor.posRot.pos.z + 20.0f) - 7.0f;
            this->unk_3B0.x = player->actor.posRot.pos.x;
            this->unk_3B0.y = ((player->actor.posRot.pos.y + 10.0f + 60.0f) - 20.0f) - 2.0f;
            this->unk_3B0.z = player->actor.posRot.pos.z;
            if (this->unk_398 == 0xE4) {
                func_80078884(0x1808);
                func_8002DF54(globalCtx, this, 0x56);
                func_800A9F6C(0.0f, 0xFF, 0xA, 0x32);
            }
            if (this->unk_398 >= 0xE5) {
                globalCtx->envCtx.unk_E1 = 1;
                globalCtx->envCtx.unk_E4 = 0xFF;
                globalCtx->envCtx.unk_E3 = 0xFF;
                globalCtx->envCtx.unk_E2 = 0xFF;
                globalCtx->envCtx.unk_E5 = 0x64;
                if (this->unk_398 == 0xEA) {
                    globalCtx->envCtx.unk_E1 = 0;
                    this->unk_39C = 0x18;
                    this->unk_398 = 0;
                    sp68 = player->actor.posRot.pos;
                    sp68.y += 60.0f;
                    func_808FD210(globalCtx, &sp68);
                    globalCtx->envCtx.unk_D8 = 0.0f;
                    globalCtx->envCtx.unk_BE = 0;
                    this->unk_339 = 0;
                }
            }
            break;
        case 24:
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            temp_v0_3 = globalCtx->unk_11E10;
            this->unk_3B0 = temp_v0_3->position;
            this->unk_3A4.x = temp_v0_3->position.x + 70.0f;
            this->unk_3A4.y = temp_v0_3->position.y - 30.0f;
            this->unk_3A4.z = temp_v0_3->position.z + 70.0f;
            if ((this->unk_398 & 3) == 0) {
                func_80078884(0x1801);
            }
            if (this->unk_398 == 0x19) {
                func_8002DF54(globalCtx, this, 0x57);
                this->unk_39C = 0x19;
                this->unk_398 = 0;
            }
            break;
        case 25:
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            this->unk_3A4.x = (player->actor.posRot.pos.x - 40.0f) + 80.0f;
            this->unk_3A4.y = player->actor.posRot.pos.y + 40.0f + 10.0f;
            this->unk_3A4.z = player->actor.posRot.pos.z + 20.0f + 10.0f;
            this->unk_3B0.x = player->actor.posRot.pos.x - 20.0f;
            this->unk_3B0.y = ((player->actor.posRot.pos.y + 10.0f + 60.0f) - 20.0f) - 3.0f;
            this->unk_3B0.z = (player->actor.posRot.pos.z - 40.0f) - 10.0f;
            if (this->unk_398 == 0xA) {
                temp_v0_3 = globalCtx->unk_11E10;
                temp_v0_3->unk_2E = 1;
                temp_v0_3->position.x = D_8090EB2C->actor.posRot.pos.x + 50.0f + 10.0f;
                temp_v0_3->position.y = D_8090EB2C->actor.posRot.pos.y + 350.0f;
                temp_v0_3->position.z = D_8090EB2C->actor.posRot.pos.z - 25.0f;
                temp_v0_3->velocity.x = 0.0f;
                temp_v0_3->velocity.z = 0.0f;
                temp_v0_3->velocity.y = -30.0f;
                this->unk_39C = 0x1A;
                this->unk_398 = 0;
            }
        case 26:
            this->unk_3A4.x = D_8090EB2C->actor.posRot.pos.x + 100.0f + 30.0f;
            this->unk_3A4.y = D_8090EB2C->actor.posRot.pos.y + 10.0f;
            this->unk_3A4.z = D_8090EB2C->actor.posRot.pos.z + 5.0f;
            this->unk_3B0.x = D_8090EB2C->actor.posRot.pos.x;
            this->unk_3B0.y = D_8090EB2C->actor.posRot.pos.y + 30.0f;
            this->unk_3B0.z = D_8090EB2C->actor.posRot.pos.z - 20.0f;
            this->unk_3BC.z = -0.5f;
            if (this->unk_398 == 0xD) {
                D_8090EB2C->unk_3C8 = 6;
            }
            if (this->unk_398 == 0x32) {
                this->unk_39C = 0x1B;
                this->unk_398 = 0;
            }
            break;
        case 27:
            this->unk_3BC.z = 0.0f;
            if (this->unk_398 == 4) {
                func_8002DF54(globalCtx, this, 0x58);
            }
            this->unk_3A4.x = player->actor.posRot.pos.x - 20.0f;
            this->unk_3A4.y = player->actor.posRot.pos.y + 50.0f;
            this->unk_3A4.z = player->actor.posRot.pos.z;
            this->unk_3B0.x = player->actor.posRot.pos.x;
            this->unk_3B0.y = player->actor.posRot.pos.y + 50.0f;
            this->unk_3B0.z = player->actor.posRot.pos.z;
            if (this->unk_398 == 0x1A) {
                D_8090EB30 = globalCtx->actorCtx.actorList[ACTORTYPE_ITEMACTION].first;
                if (D_8090EB30 != NULL) {
                    while (D_8090EB30->next != NULL) {
                        if (D_8090EB30->id == 0x18) {
                            this->unk_3A4.x = D_8090EB30->posRot.pos.x - 30.0f;
                            this->unk_3A4.y = D_8090EB30->posRot.pos.y;
                            this->unk_3A4.z = D_8090EB30->posRot.pos.z;
                            this->unk_3B0.x = D_8090EB30->posRot.pos.x;
                            this->unk_3B0.y = D_8090EB30->posRot.pos.y;
                            this->unk_3B0.z = D_8090EB30->posRot.pos.z;
                            break;
                        }
                        D_8090EB30 = D_8090EB30->next;
                    }
                }
                this->unk_39C = 0x1C;
                this->unk_398 = 0;
            }
            break;
        case 28:
            if (this->unk_398 == 5) {
                func_8010B680(globalCtx, 0x70D6, NULL);
            }
            if (D_8090EB30 != NULL) {
                this->unk_3A4.x = D_8090EB30->posRot.pos.x - 20.0f;
                this->unk_3A4.y = D_8090EB30->posRot.pos.y;
                this->unk_3A4.z = D_8090EB30->posRot.pos.z;
                Math_SmoothScaleMaxF(&this->unk_3B0.x, D_8090EB30->posRot.pos.x, 0.2f, 50.0f);
                Math_SmoothScaleMaxF(&this->unk_3B0.y, D_8090EB30->posRot.pos.y, 0.2f, 50.0f);
                Math_SmoothScaleMaxF(&this->unk_3B0.z, D_8090EB30->posRot.pos.z, 0.2f, 50.0f);
                if ((this->unk_398 >= 0x29) && (func_8010BDBC(&globalCtx->msgCtx) == 0)) {
                    this->unk_39C = 0x1D;
                    this->unk_398 = 0;
                    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060147E0, 0.0f);
                    this->unk_194 = SkelAnime_GetFrameCount(&D_060147E0);
                    this->actor.shape.unk_08 = 0.0f;
                    this->actor.posRot.pos.y = 1086.0f;
                    this->actor.gravity = -1.0f;
                    this->unk_335 = 1;
                    this->unk_224 = 1.0f;
                }
            }
            break;
        case 29:
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            this->unk_3B0.x = this->actor.posRot.pos.x;
            this->unk_3B0.z = this->actor.posRot.pos.z;
            this->unk_3A4.x = (((this->actor.posRot.pos.x + 500.0f) - 350.0f) + 100.0f) - 60.0f;
            this->unk_3A4.y = this->actor.posRot.pos.y;
            this->unk_3A4.z = this->actor.posRot.pos.z + 10.0f;
            this->unk_3B0.y = (this->unk_1B8.y + 60.0f) - 40.0f;
            player->actor.shape.rot.y = -0x4000;
            player->actor.posRot.pos.x = 140.0f;
            player->actor.posRot.pos.z = -196.0f;
            if (this->unk_398 == 0x32) {
                Audio_PlayActorSound2(this, 0x398F);
            }
            if (func_800A56C8(&this->skelAnime, this->unk_194) != 0) {
                temp_v0 = Gameplay_GetCamera(globalCtx, 0);
                temp_v0->eye = this->unk_3A4;
                temp_v0->eyeNext = this->unk_3A4;
                temp_v0->at = this->unk_3B0;
                func_800C08AC(globalCtx, this->unk_39E, 0);
                this->unk_39E = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, this, 7);
                this->unk_39C = 0;
                this->unk_337 = 1;
                func_808FFDB0(this, globalCtx);
                this->unk_1A2[1] = 50;
                this->actor.flags |= 1;
                D_8090EB2C->unk_3C8 = 7;
            }
    }

    if ((this->unk_30C > 4.0f) && (sp8D == 0)) {
        Audio_PlayActorSound2(this, 0x3163);
    }

    if (this->unk_39E != 0) {
        this->unk_3B0.y += this->unk_41C;
        Gameplay_CameraSetAtEyeUp(globalCtx, this->unk_39E, &this->unk_3B0, &this->unk_3A4, &this->unk_3BC);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FD5F4.s")
#endif

void func_808FF898(BossGanon2* this, GlobalContext* globalCtx) {
    if ((this->unk_312 != 0) && (this->unk_39E == 0)) {
        Actor* actor = globalCtx->actorCtx.actorList[ACTORTYPE_PROP].first;
        while (actor != NULL) {
            if (actor->id == ACTOR_DEMO_GJ) {
                DemoGj* gj = (DemoGj*)actor;

                if (((actor->params & 0xFF) == 0x10) || ((actor->params & 0xFF) == 0x11) ||
                    ((actor->params & 0xFF) == 0x16)) {
                    if (SQ(this->unk_218.x - gj->actor.posRot.pos.x) + SQ(this->unk_218.z - gj->actor.posRot.pos.z) <
                        10000.0f) {
                        s32 pad;
                        Vec3f sp28;

                        Matrix_RotateY(((this->actor.shape.rot.y / (f32)0x8000) * M_PI) + 0.5f, 0);
                        sp28.x = 0.0f;
                        sp28.y = 0.0f;
                        sp28.z = 1.0f;
                        Matrix_MultVec3f(&sp28, &gj->unk_26C);
                        gj->unk_268 = 1;
                        func_800A9F6C(0.0f, 0x96, 0x14, 0x32);
                        this->unk_392 = 6;
                        return;
                    }
                }
            }

            actor = actor->next;
        }

        if (this->unk_392 == 4) {
            func_80078884(NA_SE_EV_GRAVE_EXPLOSION);
        }

        if (this->unk_392 == 3) {
            func_80078884(NA_SE_EN_MGANON_SWDIMP);
        }
    }
}

s32 func_808FFA24(BossGanon2* this, GlobalContext* globalCtx) {
    Actor* actor = globalCtx->actorCtx.actorList[ACTORTYPE_PROP].first;

    while (actor != NULL) {
        if (actor->id == ACTOR_DEMO_GJ) {
            DemoGj* gj = (DemoGj*)actor;

            if (((actor->params & 0xFF) == 0x10) || ((actor->params & 0xFF) == 0x11) ||
                ((actor->params & 0xFF) == 0x16)) {
                if (SQ(this->actor.posRot.pos.x - gj->actor.posRot.pos.x) +
                        SQ(this->actor.posRot.pos.z - gj->actor.posRot.pos.z) <
                    40000.0f) {
                    return true;
                }
            }
        }

        actor = actor->next;
    }

    return false;
}

void func_808FFAC8(BossGanon2* this, GlobalContext* globalCtx, u8 arg2) {
    s16 temp_v1;
    s16 phi_a1;

    if (this->unk_313 || (arg2 != 0)) {
        phi_a1 = this->actor.shape.rot.y - this->actor.yawTowardsLink;

        if (phi_a1 > 0x3000) {
            phi_a1 = 0x3000;
        } else if (phi_a1 < -0x3000) {
            phi_a1 = -0x3000;
        }
    } else if (this->unk_19C & 0x20) {
        phi_a1 = 0x3000;
    } else {
        phi_a1 = -0x3000;
    }

    Math_SmoothScaleMaxS(&this->unk_31A, phi_a1, 5, 0x7D0);

    temp_v1 = atan2s(this->actor.xzDistFromLink, 150.0f) - 3000;
    temp_v1 = CLAMP_MAX(temp_v1, 7000);
    temp_v1 = CLAMP_MIN(temp_v1, -7000);

    Math_SmoothScaleMaxS(&this->unk_31C, temp_v1, 5, 0x7D0);
}

void func_808FFBBC(BossGanon2* this, GlobalContext* globalCtx, u8 arg2) {
    if (arg2 != 0 || this->unk_313) {
        f32 phi_f0;
        f32 phi_f2;

        Math_SmoothScaleMaxS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 5, this->unk_320);

        if (this->unk_334 != 0) {
            phi_f0 = 5000.0f;
            phi_f2 = 200.0f;
        } else {
            phi_f0 = 3000.0f;
            phi_f2 = 30.0f;
        }

        Math_SmoothScaleMaxF(&this->unk_320, phi_f0, 1.0f, phi_f2);
    } else {
        this->unk_320 = 0.0f;
    }
}

void func_808FFC84(BossGanon2* this) {
    if (ABS((s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y)) < 0x2800) {
        this->unk_313 = true;
        this->actor.posRot2.pos = this->unk_1B8;
    } else {
        this->unk_313 = false;
        this->actor.posRot2.pos = this->unk_1C4;
    }
}

void func_808FFCFC(BossGanon2* this, GlobalContext* globalCtx) {
    if (this->actor.xzDistFromLink < 150.0f &&
        ABS((s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y)) < 0x2800) {
        this->unk_311 = false;
        func_80900580(this, globalCtx);
        func_800F8D04(NA_SE_EN_MGANON_UNARI);
    } else if ((this->actor.bgCheckFlags & 8) && func_808FFA24(this, globalCtx)) {
        this->unk_311 = false;
        func_80900580(this, globalCtx);
        func_800F8D04(NA_SE_EN_MGANON_UNARI);
    }
}

void func_808FFDB0(BossGanon2* this, GlobalContext* globalCtx) {
    s32 sp28;
    s32 objectIdx = Object_GetIndex(&globalCtx->objectCtx, OBJECT_GANON2);

    if (Object_IsLoaded(&globalCtx->objectCtx, objectIdx)) {
        gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[objectIdx].segment);
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600FFE4, -10.0f);
        this->actionFunc = func_808FFEBC;

        if (this->unk_334 != 0) {
            this->unk_1A2[0] = Math_Rand_ZeroFloat(30.0f);
        } else {
            this->unk_1A2[0] = 40;
        }

        this->unk_336 = 1;
        this->actor.flags |= 1;
        this->unk_228 = 1.0f;
        this->unk_224 = 1.0f;
    } else {
        this->actionFunc = func_808FFDB0;
    }
}

void func_808FFEBC(BossGanon2* this, GlobalContext* globalCtx) {
    if (this->unk_390 == 0) {
        this->unk_390 = (s16)Math_Rand_ZeroFloat(50.0f) + 30;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_UNARI);
    }

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 1.0f);

    if (this->unk_1A2[0] == 0) {
        func_809002CC(this, globalCtx);
    } else if (this->unk_1A2[1] == 0) {
        func_808FFCFC(this, globalCtx);
    }

    func_808FFAC8(this, globalCtx, 0);
    func_808FFBBC(this, globalCtx, 0);
}

void func_808FFF90(BossGanon2* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600FFE4, -10.0f);
    this->actionFunc = func_808FFFE0;
    this->unk_1A2[0] = 40;
}

void func_808FFFE0(BossGanon2* this, GlobalContext* globalCtx) {
    s16 target;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.5f, 1.0f);

    if (this->unk_1A2[0] == 0) {
        func_809002CC(this, globalCtx);
    }

    if (this->unk_1A2[0] < 30 && this->unk_1A2[0] >= 10) {
        target = Math_Sins(this->unk_1A2[0] * 0x3000) * (f32)0x2000;
    } else {
        target = 0;
    }

    Math_SmoothScaleMaxS(&this->unk_31A, target, 2, 0x4000);
}

void func_809000A0(BossGanon2* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06026510, -2.0f);
    this->unk_194 = SkelAnime_GetFrameCount(&D_06026510.genericHeader);
    this->unk_1AC = 0;
    this->actionFunc = func_80900104;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80900104.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80900210.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_8090026C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_809002CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80900344.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80900580.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80900650.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80900818.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80900890.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80901020.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_8090109C.s")

void func_8090120C(BossGanon2* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_8090120C.s")

void func_80902348(BossGanon2* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80902348.s")

void func_80902524(BossGanon2* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80902524.s")

void BossGanon2_Update(Actor* thisx, GlobalContext* globalCtx) {
    BossGanon2* this = THIS;
    s32 pad;
    s16 i;
    f32 phi_f2;
    s32 i2;
    Vec3f sp58;
    Vec3f sp4C;
    f32 angle;
    f32 sp44;

    if ((this->unk_337 == 0) || (this->unk_337 == 2)) {
        func_808FD108(this, globalCtx, OBJECT_GANON_ANIME3, 0);
    } else {
        func_808FD108(this, globalCtx, OBJECT_GANON2, 0);
        Math_SmoothDownscaleMaxF(&this->unk_30C, 1.0f, 0.5f);
    }
    func_808FFC84(this);
    this->unk_312 = 0;
    this->unk_19C++;
    Actor_SetScale(&this->actor, 0.01f);
    this->actionFunc(this, globalCtx);
    for (i = 0; i < ARRAY_COUNT(this->unk_1A2); i++) {
        if (this->unk_1A2[i] != 0) {
            this->unk_1A2[i]--;
        }
    }
    if (this->unk_316 != 0) {
        this->unk_316--;
    }
    if (this->unk_342 != 0) {
        this->unk_342--;
    }
    if (this->unk_390 != 0) {
        this->unk_390--;
    }
    if (this->unk_392 != 0) {
        this->unk_392--;
    }
    Actor_MoveForward(&this->actor);
    this->actor.shape.rot = this->actor.posRot.rot;
    if (this->unk_335 != 0) {
        func_8002E4B4(globalCtx, &this->actor, 60.0f, 60.0f, 100.0f, 5);
        if (this->actor.bgCheckFlags & 1) {
            if (this->actor.velocity.y < -5.0f) {
                func_80033E88(&this->actor, globalCtx, 5, 20);
                func_80078884(NA_SE_IT_BOMB_EXPLOSION);
            }
            this->actor.velocity.y = 0.0f;
        }
    }
    if (((this->unk_19C & 0x1F) == 0) && (Math_Rand_ZeroOne() < 0.3f)) {
        this->unk_318 = 4;
    }
    this->unk_310 = D_80907074[this->unk_318];
    if (this->unk_318 != 0) {
        this->unk_318--;
    }
    this->unk_1B0 = (Math_Sins(this->unk_19C * 0x2AAA) * 64.0f) + 191.0f;
    if (this->unk_344 != 0) {
        this->unk_344--;
        Math_SmoothScaleMaxF(&this->unk_360.x, 5000.0f, 0.5f, 3000.0f);
        Math_SmoothScaleMaxF(&this->unk_370.x, 5500.0f, 0.5f, 3000.0f);
        Math_SmoothScaleMaxF(&this->unk_360.z, 8000.0f, 0.1f, 4000.0f);
        Math_SmoothScaleMaxF(&this->unk_370.z, 8000.0f, 0.1f, 4000.0f);
        Math_SmoothScaleMaxS(&this->unk_346, 0xFA0, 0xA, 0x7D0);
    } else {
        this->unk_360.y = 14000.0f;
        Math_SmoothScaleMaxF(&this->unk_360.x, 2000.0f, 0.1f, 100.0f);
        this->unk_370.y = 12000.0f;
        Math_SmoothScaleMaxF(&this->unk_370.x, 1500.0f, 0.1f, 100.0f);
        if ((this->actionFunc == func_808FFEBC) || (this->actionFunc == func_808FFFE0) ||
            (this->actionFunc == func_80900104)) {
            Math_SmoothScaleMaxF(&this->unk_360.z, 1000.0f, 0.1f, 100.0f);
            Math_SmoothScaleMaxF(&this->unk_370.z, 1000.0f, 0.1f, 100.0f);
            Math_SmoothScaleMaxS(&this->unk_346, -0xFA0, 0xA, 0x64);
        } else {
            Math_SmoothScaleMaxF(&this->unk_360.z, 5000.0f, 0.1f, 200.0f);
            Math_SmoothScaleMaxF(&this->unk_370.z, 5000.0f, 0.1f, 200.0f);
            Math_SmoothScaleMaxS(&this->unk_346, 0, 0xA, 0x64);
        }
    }
    if (this->unk_39C != 0x4B) {
        this->unk_35C += this->unk_360.x;
        this->unk_36C += this->unk_370.x;
    }
    if (this->unk_337 == 2) {
        this->unk_370.z = 0.0f;
        this->unk_360.z = 0.0f;
    }

    for (i = 0; i < ARRAY_COUNT(this->unk_348); i++) {
        if (i == 0) {
            phi_f2 = 0.2f;
        } else if (i == 1) {
            phi_f2 = 0.5f;
        } else {
            phi_f2 = 1.0f;
        }

        this->unk_348[i] = Math_Sins(((s16)this->unk_35C + (i * (s16)this->unk_360.y))) * phi_f2 * this->unk_360.z;
        this->unk_352[i] = Math_Sins(((s16)this->unk_36C + (i * (s16)this->unk_370.y))) * phi_f2 * this->unk_370.z;
    }

    func_808FF898(this, globalCtx);
    func_80902348(this, globalCtx);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->unk_424.base);
    if (this->actionFunc != func_8090120C) {
        func_80902524(this, globalCtx);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->unk_424.base);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->unk_444.base);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->unk_444.base);
        if (this->unk_39E == 0) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->unk_444.base);
        }
    }
    if ((this->unk_332 == 0) && (this->unk_336 != 0)) {
        if (this->unk_336 == 2) {
            this->unk_332 = (s16)Math_Rand_ZeroFloat(30.0f) + 8;
        } else {
            this->unk_332 = (s16)Math_Rand_ZeroFloat(60.0f) + 0xA;
        }
        this->unk_339 = 0;
        globalCtx->envCtx.unk_BE = 0;
        globalCtx->envCtx.unk_BD = (s8)Math_Rand_ZeroFloat(1.9f) + 1;
        globalCtx->envCtx.unk_D8 = 1.0f;
        D_8090EB20.y = 0.0f;
        D_8090EB20.x = D_8090EB20.y;
        D_8090EB20.z = D_8090EB20.x;
        if (Math_Rand_ZeroOne() < 0.5f) {
            D_8090EB20.z = Math_Rand_ZeroFloat(1000.0f);
        }
        func_80078914(&D_8090EB20, NA_SE_EV_LIGHTNING);
        this->unk_328 = 0xFF;
        this->unk_330 = 5;
        this->unk_32C = 0.0f;
        this->unk_340 = (s16)Math_Rand_ZeroFloat(10000.0f);
    } else if (this->unk_332 != 0) {
        this->unk_332--;
    }
    if ((globalCtx->envCtx.unk_D8 > 0.0f) && (this->unk_336 != 0)) {
        globalCtx->envCtx.unk_E9 = 1;
        globalCtx->envCtx.unk_EA[0] = 0xFF;
        globalCtx->envCtx.unk_EA[1] = 0xFF;
        globalCtx->envCtx.unk_EA[2] = 0xFF;
        globalCtx->envCtx.unk_EA[3] = (s16)(globalCtx->envCtx.unk_D8 * 200.0f);
    } else {
        globalCtx->envCtx.unk_E9 = 0;
    }
    globalCtx->envCtx.unk_BF = 0;
    globalCtx->envCtx.unk_DC = 2;

    switch (this->unk_339) {
        case 0:
            Math_SmoothDownscaleMaxF(&globalCtx->envCtx.unk_D8, 1.0f, 0.1f);
            break;
        case 3:
            globalCtx->envCtx.unk_BE = 3;
            globalCtx->envCtx.unk_BD = 4;
            Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.0125f);
            break;
        case 4:
            globalCtx->envCtx.unk_BE = 5;
            globalCtx->envCtx.unk_BD = 6;
            Math_SmoothScaleMaxF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.0125f);
            break;
        case 5:
            globalCtx->envCtx.unk_BE = 6;
            globalCtx->envCtx.unk_BD = 7;
            Math_SmoothScaleMaxF(&this->unk_33C, 0.69f, 1.0f, 0.05f);
            globalCtx->envCtx.unk_D8 =
                (Math_Sins(globalCtx->gameplayFrames * 0x5000) * 0.15f) + (0.15f + this->unk_33C);
            break;
        case 55:
            globalCtx->envCtx.unk_BE = 2;
            globalCtx->envCtx.unk_BD = 0;
            Math_SmoothDownscaleMaxF(&globalCtx->envCtx.unk_D8, 1.0f, 0.05f);
            break;
        case 6:
            globalCtx->envCtx.unk_BE = 2;
            globalCtx->envCtx.unk_BD = 8;
            Math_SmoothScaleMaxF(&this->unk_33C, 0.69f, 1.0f, 0.05f);
            globalCtx->envCtx.unk_D8 =
                (Math_Sins(globalCtx->gameplayFrames * 0x7000) * 0.15f) + (0.15f + this->unk_33C);
            break;
        case 7:
            globalCtx->envCtx.unk_BE = 0;
            globalCtx->envCtx.unk_BD = 8;
            Math_SmoothDownscaleMaxF(&globalCtx->envCtx.unk_D8, 1.0f, 0.02f);
            break;
        case 20:
            globalCtx->envCtx.unk_BE = 0;
            globalCtx->envCtx.unk_BD = 9;
            break;
        case 21:
            globalCtx->envCtx.unk_BE = 0xA;
            globalCtx->envCtx.unk_BD = 9;
            break;
        case 22:
            globalCtx->envCtx.unk_BE = 0xA;
            globalCtx->envCtx.unk_BD = 0xB;
            break;
        case 23:
            globalCtx->envCtx.unk_BE = 9;
            globalCtx->envCtx.unk_BD = 0xB;
            break;
        case 24:
            globalCtx->envCtx.unk_BE = 0;
            globalCtx->envCtx.unk_BD = 0xC;
            break;
        case -1:
            break;
    }

    if (this->unk_339 >= 0) {
        this->unk_339 = 0;
    }
    if (D_80906D78 != 0) {
        D_80906D78 = 0;

        for (i2 = 0; i2 < 100; i2 = (i2 + 1) & 0xFFFF) {
            angle = Math_Rand_ZeroFloat(2 * M_PI);
            sp44 = Math_Rand_ZeroFloat(40.0f) + 10.0f;
            sp58 = this->actor.posRot.pos;
            sp58.y = 1200.0f;
            sp4C.x = cosf(angle) * sp44;
            sp4C.z = sinf(angle) * sp44;
            sp4C.y = Math_Rand_ZeroFloat(15.0f) + 15.0f;
            sp58.x += sp4C.x * 10.0f * 0.1f;
            sp58.z += sp4C.z * 10.0f * 0.1f;
            func_808FD27C(globalCtx, &sp58, &sp4C, Math_Rand_ZeroFloat(0.3f) + 0.2f);
        }
    }
    this->unk_388 += 0.15f;
    func_80905DA8(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_809034E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80903F38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80904108.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80904340.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_8090464C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80904818.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_809049A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80904D88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80904FC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_8090523C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80905508.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80905674.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/BossGanon2_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80905DA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_809060E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80906538.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_809069F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80906AB0.s")
