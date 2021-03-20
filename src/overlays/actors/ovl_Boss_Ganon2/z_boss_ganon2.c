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
    /* 0x34 */ f32 scale;
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
void func_8090026C(BossGanon2* this, GlobalContext* globalCtx);
void func_809002CC(BossGanon2* this, GlobalContext* globalCtx);
void func_80900344(BossGanon2* this, GlobalContext* globalCtx);
void func_80900580(BossGanon2* this, GlobalContext* globalCtx);
void func_80900650(BossGanon2* this, GlobalContext* globalCtx);
void func_80900890(BossGanon2* this, GlobalContext* globalCtx);
void func_8090120C(BossGanon2* this, GlobalContext* globalCtx);
void func_80902524(BossGanon2* this, GlobalContext* globalCtx);
void func_80905DA8(BossGanon2* this, GlobalContext* globalCtx);
void func_809060E8(GlobalContext* globalCtx);
void func_809069F8(u32* tex, BossGanon2* this, GlobalContext* globalCtx);
void func_80906AB0(u32* tex, BossGanon2* this, GlobalContext* globalCtx);

extern AnimationHeader D_06000BFC;
extern Gfx D_06000EA0[];
extern AnimationHeader D_06002168;
extern AnimationHeader D_060028A8;
extern AnimationHeader D_06002E6C;
extern AnimationHeader D_06003754;
extern AnimationHeader D_06003B1C;
extern AnimationHeader D_06003F38;
extern AnimationHeader D_06007288;
extern AnimationHeader D_06008EB8;
extern Gfx D_0600A8E0[];
extern AnimationHeader D_0600ADD0;
extern Gfx D_0600BE90[];
extern AnimationHeader D_0600CAF8;
extern AnimationHeader D_0600DFF0;
extern AnimationHeader D_0600E8EC;
extern AnimationHeader D_0600FFE4;
extern AnimationHeader D_06010380;
extern FlexSkeletonHeader D_060114E8;
extern AnimationHeader D_060147E0;
extern UNK_TYPE D_0601E188[];
extern UNK_TYPE D_0601E988[];
extern UNK_TYPE D_0601EA08[];
extern UNK_TYPE D_06021A90[];
extern FlexSkeletonHeader D_06025970;
extern AnimationHeader D_06026510;
extern AnimationHeader D_06026AF4;
extern AnimationHeader D_06027824;
extern AnimationHeader D_0602A848;
extern AnimationHeader D_060334F8;
extern AnimationHeader D_06034278;
extern AnimationHeader D_060353C0;

const ActorInit Boss_Ganon2_InitVars = {
    ACTOR_BOSS_GANON2,
    ACTORCAT_BOSS,
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
static ColliderJntSphElementInit D_80906D7C[] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 1, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 2, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 3, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 4, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 5, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 6, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 7, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 8, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 9, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 10, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 11, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 12, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 13, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 14, { { 0, 0, 0 }, 20 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 15, { { 0, 0, 0 }, 30 }, 100 },
    },
};

// sJntSphInit
static ColliderJntSphInit D_80906FBC = {
    {
        COLTYPE_METAL,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_FIRST_ONLY | OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    ARRAY_COUNT(D_80906D7C),
    D_80906D7C,
};

// sJntSphItemsInit
static ColliderJntSphElementInit D_80906FCC[] = {
    {
        {
            ELEMTYPE_UNK2,
            { 0xFFCFFFFF, 0x00, 0x40 },
            { 0xFFDFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 15, { { 0, 0, 0 }, 45 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK2,
            { 0xFFCFFFFF, 0x00, 0x40 },
            { 0xFFDFFFFF, 0x00, 0x00 },
            TOUCH_ON | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 16, { { 0, 0, 0 }, 45 }, 100 },
    },
};

// sJntSphInit
static ColliderJntSphInit D_80907014 = {
    {
        COLTYPE_METAL,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
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

/* static */ s8 D_8090709C[] = {
    0xFF, 0xFF, 0x01, 0xFF, 0x03, 0x04, 0xFF, 0xFF, 0x05, 0xFF, 0x06, 0x07, 0xFF, 0xFF, 0x08, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0xFF, 0xFF, 0x02, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0xFF, 0xFF, 0xFF, 0x0F, 0xFF, 0x00,
};

/* static */ s8 D_809070CC[] = {
    0xFF, 0xFF, 0x01, 0xFF, 0x03, 0x04, 0xFF, 0xFF, 0x05, 0xFF, 0x06, 0x07, 0xFF, 0xFF, 0x08, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0xFF, 0xFF, 0x02, 0x0C, 0x0D, 0x0E, 0x09, 0x0A, 0x0B, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
};

/* static */ Vec3f D_809070FC = {
    0.0f,
    0.0f,
    5000.0f,
};

/* static */ Vec3f D_80907108 = {
    0.0f,
    2000.0f,
    0.0f,
};

/* static */ Vec3f D_80907114 = {
    0.0f,
    2000.0f,
    0.0f,
};

/* static */ Vec3f D_80907120 = {
    0.0f,
    0.0f,
    17000.0f,
};

/* static */ Vec3f D_8090712C = {
    0.0f,
    0.0f,
    3000.0f,
};

/* static */ Vec3f D_80907138 = {
    0.0f,
    0.0f,
    0.0f,
};

/* static */ s8 D_80907144[] = {
    0xFF, 0xFF, 0x01, 0xFF, 0x03, 0x04, 0x05, 0xFF, 0x06, 0x07, 0x08, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0x02, 0x0C, 0x0D, 0x0E, 0x09, 0x0A, 0x0B, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00,
};

/* static */ Vec3f D_80907164 = { 800.0f, 420.0f, 100.0f };

/* static */ UNK_PTR D_80907170[] = {
    D_0601E188,
    D_0601E988,
    D_0601EA08,
};

/* static */ Vec3f D_8090717C = { 0.0f, -2000.0f, 0.0f };

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

/* static */ Vec3f D_809105D8[4];

/* static */ Vec3f D_80910608[4];

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
    collider->elements[idx].dim.worldSphere.center.x = arg2->x;
    collider->elements[idx].dim.worldSphere.center.y = arg2->y;
    collider->elements[idx].dim.worldSphere.center.z = arg2->z;

    collider->elements[idx].dim.worldSphere.radius =
        collider->elements[idx].dim.modelSphere.radius * collider->elements[idx].dim.scale;
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

void func_808FD27C(GlobalContext* globalCtx, Vec3f* position, Vec3f* velocity, f32 scale) {
    BossGanon2Effect* effect = globalCtx->unk_11E10;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(D_8090EB38); i++, effect++) {
        if (effect->type == 0) {
            effect->type = 2;
            effect->position = *position;
            effect->velocity = *velocity;
            effect->accel.x = 0.0;
            effect->accel.y = -1.0f;
            effect->accel.z = 0.0;
            effect->unk_38.z = Rand_ZeroFloat(2 * M_PI);
            effect->unk_38.y = Rand_ZeroFloat(2 * M_PI);
            effect->unk_38.x = Rand_ZeroFloat(2 * M_PI);
            effect->scale = scale;
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
    this->actor.world.pos.y = -3000.0f;
}

#ifdef NON_MATCHING
void func_808FD5F4(BossGanon2* this, GlobalContext* globalCtx) {
    s16 pad2;
    u8 sp8D;
    Player* player;
    s32 pad[3];
    Camera* temp_v0;
    BossGanon2Effect* temp_v0_3;
    Vec3f sp68;
    s32 objectIdx;
    s16 temp_a1;
    Vec3f* temp[2];

    sp8D = false;
    player = PLAYER;
    this->unk_398++;

    switch (this->unk_39C) {
        case 0:
            objectIdx = Object_GetIndex(&globalCtx->objectCtx, OBJECT_GANON_ANIME3);
            if (Object_IsLoaded(&globalCtx->objectCtx, objectIdx)) {
                func_80064520(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 8);
                this->unk_39E = Gameplay_CreateSubCamera(globalCtx);
                Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
                Gameplay_ChangeCameraStatus(globalCtx, this->unk_39E, 7);
                this->unk_39C = 1;
                D_8090EB2C = (EnZl3*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_ZL3,
                                                        970.0f, 1086.0f, -200.0f, 0, 0, 0, 1);
                D_8090EB2C->unk_3C8 = 0;
                D_8090EB2C->actor.world.pos.x = 970.0f;
                D_8090EB2C->actor.world.pos.y = 1086.0f;
                D_8090EB2C->actor.world.pos.z = -214.0f;
                D_8090EB2C->actor.shape.rot.y = -0x7000;
                this->unk_3BC.x = 0.0f;
                this->unk_3BC.y = 1.0f;
                this->unk_3BC.z = 0.0f;
                this->unk_398 = 0;
                this->unk_3A4.x = 0.0f;
                this->unk_3A4.y = 1400.0f;
                this->unk_3A4.z = 1600.0f;
                player->actor.world.pos.x = 970.0f;
                player->actor.world.pos.y = 1086.0f;
                player->actor.world.pos.z = -186.0f;
                player->actor.shape.rot.y = -0x5000;
                Animation_MorphToLoop(&this->skelAnime, &D_06002168, 0.0f);
                globalCtx->envCtx.unk_D8 = 0.0f;
            } else {
                break;
            }
        case 1:
            if (this->unk_398 < 0x46) {
                globalCtx->envCtx.unk_D8 = 0.0f;
            }
            this->unk_339 = 3;
            Math_ApproachF(&this->unk_3A4.x, 1500.0f, 0.1f, this->unk_410.x * 1500.0f);
            Math_ApproachF(&this->unk_3A4.z, -160.0f, 0.1f, this->unk_410.x * 1760.0f);
            Math_ApproachF(&this->unk_410.x, 0.0075f, 1.0f, 0.0001f);
            this->unk_3B0.x = -200.0f;
            this->unk_3B0.y = 1086.0f;
            this->unk_3B0.z = -200.0f;
            if (this->unk_398 == 0x96) {
                func_8010B680(globalCtx, 0x70D3, NULL);
            }
            if (this->unk_398 >= 0xFB && func_8010BDBC(&globalCtx->msgCtx) == 0) {
                this->unk_39C = 2;
                this->unk_398 = 0;
                this->unk_410.x = 0.0f;
                globalCtx->envCtx.unk_D8 = 1.0f;
            } else {
                break;
            }
        case 2:
            this->unk_339 = 4;
            player->actor.world.pos.x = 970.0f;
            player->actor.world.pos.y = 1086.0f;
            player->actor.world.pos.z = -166.0f;
            D_8090EB2C->actor.world.pos.x = 974.0f;
            D_8090EB2C->actor.world.pos.y = 1086.0f;
            D_8090EB2C->actor.world.pos.z = -186.0f;
            player->actor.shape.rot.y = -0x5000;
            D_8090EB2C->actor.shape.rot.y = -0x5000;
            if (this->unk_398 == 0x3C) {
                func_8010B680(globalCtx, 0x70D4, NULL);
            }
            if (this->unk_398 == 0x28) {
                D_8090EB2C->unk_3C8 = 1;
                func_8002DF54(globalCtx, &this->actor, 0x4E);
            }
            if (this->unk_398 == 0x55) {
                D_8090EB2C->unk_3C8 = 2;
                func_8002DF54(globalCtx, &this->actor, 0x4F);
            }
            this->unk_3A4.x = 930.0f;
            this->unk_3A4.y = 1129.0f;
            this->unk_3A4.z = -181.0f;
            this->unk_3B0.x = player->actor.world.pos.x;
            this->unk_3B0.z = (player->actor.world.pos.z - 15.0f) + 5.0f;
            if (this->unk_398 >= 0x69) {
                Math_ApproachF(&this->unk_3B0.y, player->actor.world.pos.y + 47.0f + 7.0f + 15.0f, 0.1f,
                               this->unk_410.x);
                Math_ApproachF(&this->unk_410.x, 2.0f, 1.0f, 0.1f);
            } else {
                this->unk_3B0.y = player->actor.world.pos.y + 47.0f + 7.0f;
            }
            if ((this->unk_398 >= 0xAB) && (func_8010BDBC(&globalCtx->msgCtx) == 0)) {
                this->unk_39C = 3;
                this->unk_398 = 0;
                this->unk_410.x = 0.0f;
            }
            break;
        case 3:
            Math_ApproachF(&this->unk_3B0.y, player->actor.world.pos.y + 47.0f + 7.0f, 0.1f, 2.0f);
            this->unk_339 = 4;
            if (this->unk_398 == 0xA) {
                func_80078914(&D_80906D6C, 0x281D);
                Audio_SetBGM(0x100000FF);
            }
            if (this->unk_398 == 0x14) {
                D_8090EB2C->unk_3C8 = 3;
                func_8002DF54(globalCtx, &this->actor, 0x50);
            }
            if (this->unk_398 == 0x37) {
                this->unk_39C = 4;
                this->unk_398 = 0;
                this->unk_410.x = 0.0f;
                D_8090EB2C->unk_3C8 = 4;
                func_8002DF54(globalCtx, &this->actor, 0x50);
            }
            break;
        case 4:
            this->unk_339 = 4;
            Math_ApproachF(&this->unk_3A4.x, -360.0f, 0.1f, this->unk_410.x * 1290.0f);
            Math_ApproachF(&this->unk_3A4.z, -20.0f, 0.1f, this->unk_410.x * 170.0f);
            Math_ApproachF(&this->unk_410.x, 0.04f, 1.0f, 0.0005f);
            if (this->unk_398 == 0x64) {
                temp_v0 = Gameplay_GetCamera(globalCtx, 0);
                temp_v0->eye = this->unk_3A4;
                temp_v0->eyeNext = this->unk_3A4;
                temp_v0->at = this->unk_3B0;
                func_800C08AC(globalCtx, this->unk_39E, 0);
                this->unk_39E = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                this->unk_39C = 5;
                this->unk_398 = 0;
            }
            break;
        case 5:
            this->unk_339 = 4;
            if (this->actor.xzDistToPlayer < 500.0f) {
                func_80106CCC(globalCtx);
                this->unk_39C = 0xA;
                this->unk_398 = 0;
                func_80064520(globalCtx, &globalCtx->csCtx);
                this->unk_39E = Gameplay_CreateSubCamera(globalCtx);
                Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
                Gameplay_ChangeCameraStatus(globalCtx, this->unk_39E, 7);
            } else {
                break;
            }
        case 10:
            player->actor.world.pos.x = 490.0f;
            player->actor.world.pos.y = 1086.0f;
            player->actor.world.pos.z = -166.0f;
            D_8090EB2C->actor.world.pos.x = 724.0f;
            D_8090EB2C->actor.world.pos.y = 1086.0f;
            D_8090EB2C->actor.world.pos.z = -186.0f;
            player->actor.shape.rot.y = -0x4000;
            D_8090EB2C->actor.shape.rot.y = -0x5000;
            this->unk_3A4.x = 410.0f;
            this->unk_3A4.y = 1096.0f;
            this->unk_3A4.z = -110.0f;
            this->unk_3B0.x = player->actor.world.pos.x + 10.0f;
            this->unk_3B0.y = (player->actor.world.pos.y + 200.0f) - 160.0f;
            this->unk_3B0.z = player->actor.world.pos.z;
            if (this->unk_398 >= 0x14) {
                func_80078884(0x301C);
                Math_ApproachF(&this->unk_324, 255.0f, 1.0f, 10.0f);
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
                func_8002DF54(globalCtx, &this->actor, 0x51);
            }
            if (this->unk_398 == 0x32) {
                this->unk_398 = 0;
                this->unk_39C = 0xB;
            }
            break;
        case 11:
            this->unk_339 = 5;
            func_80078884(0x301C);
            player->actor.world.pos.x = 490.0f;
            player->actor.world.pos.y = 1086.0f;
            player->actor.world.pos.z = -166.0f;
            D_8090EB2C->actor.world.pos.x = 724.0f;
            D_8090EB2C->actor.world.pos.y = 1086.0f;
            D_8090EB2C->actor.world.pos.z = -186.0f;
            player->actor.shape.rot.y = -0x4000;
            D_8090EB2C->actor.shape.rot.y = -0x5000;
            this->unk_3A4.x = 450.0f;
            this->unk_3A4.y = 1121.0f;
            this->unk_3A4.z = -158.0f;
            this->unk_3B0.x = (player->actor.world.pos.x - 20.0f) + 2.0f;
            this->unk_3B0.y = ((player->actor.world.pos.y + 200.0f) - 151.0f) - 2.0f;
            this->unk_3B0.z = player->actor.world.pos.z + 2.0f;
            if (this->unk_398 == 0xA) {
                func_80078914(&D_80906D6C, 0x281D);
            }
            if (this->unk_398 == 0x14) {
                func_80078884(0x281D);
            }
            if (this->unk_398 == 0x1E) {
                func_8002DF54(globalCtx, &this->actor, 0x52);
            }
            if (this->unk_398 == 0x32) {
                this->unk_398 = 0;
                this->unk_39C = 0xC;
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06002168, 0.0f);
                this->unk_194 = Animation_GetLastFrame(&D_06002168);
                this->actor.world.pos.x = this->actor.world.pos.z = -200.0f;
                this->actor.world.pos.y = 1009.0f;
                this->actor.shape.yOffset = 7000.0f;
                this->actor.world.rot.y = 0x5000;
                this->unk_3A4.x = -60.0f;
                this->unk_3A4.y = 1106.0f;
                this->unk_3A4.z = -200.0f;
                this->unk_3B0.x = this->unk_3B0.z = -200.0f;
                this->unk_3B0.y = this->actor.world.pos.y + 70.0f;
                globalCtx->envCtx.unk_D8 = 0.0f;
                globalCtx->envCtx.unk_BE = globalCtx->envCtx.unk_BD = 0;
                this->unk_339 = 0;
            } else {
                break;
            }
        case 12:
        case 13:
            SkelAnime_Update(&this->skelAnime);
            if (this->unk_398 == 0x1E) {
                D_80906D78 = 1;
                this->unk_314 = 1;
                func_800A9F6C(0.0f, 0xC8, 0x14, 0x14);
            }
            if (this->unk_398 == 0x1E) {
                func_80078884(0x28C2);
            }
            if (this->unk_398 >= 0x1E) {
                Math_ApproachF(&this->actor.world.pos.y, 1289.0f, 0.1f, 10.0f);
                this->unk_3B0.y = this->actor.world.pos.y + 70.0f;
            }
            if (Animation_OnFrame(&this->skelAnime, this->unk_194) != 0) {
                Animation_MorphToLoop(&this->skelAnime, &D_06002E6C, 0.0f);
                this->unk_39C = 0xE;
                this->unk_398 = 0;
                this->actor.world.pos.x = -200.0f;
                this->actor.world.pos.y = this->actor.world.pos.y - 30.0f;
                this->actor.world.pos.z = -200.0f;
                Audio_SetBGM(0x23);
            } else {
                break;
            }
        case 14:
            SkelAnime_Update(&this->skelAnime);
            Math_ApproachF(&this->actor.world.pos.y, 1289.0f, 0.05f, 1.0f);
            player->actor.world.pos.x = 250.0f;
            player->actor.world.pos.y = 1086.0f;
            player->actor.world.pos.z = -266.0f;
            player->actor.shape.rot.y = -0x4000;
            D_8090EB2C->actor.world.pos.x = 724.0f;
            D_8090EB2C->actor.world.pos.y = 1086.0f;
            D_8090EB2C->actor.world.pos.z = -186.0f;
            this->unk_3A4.x = this->actor.world.pos.x + -10.0f;
            this->unk_3A4.y = this->actor.world.pos.y + 80.0f;
            this->unk_3A4.z = this->actor.world.pos.z + 50.0f;
            this->unk_3B0.x = player->actor.world.pos.x;
            this->unk_3B0.y = player->actor.world.pos.y;
            this->unk_3B0.z = player->actor.world.pos.z - 200.0f;
            if (this->unk_398 == 0x14) {
                func_8002DF54(globalCtx, &this->actor, 0x1E);
            }
            if (this->unk_398 == 0x3C) {
                this->unk_3A4.x = (this->actor.world.pos.x + 200.0f) - 154.0f;
                this->unk_3A4.y = this->actor.world.pos.y + 60.0f;
                this->unk_3A4.z = this->actor.world.pos.z - 15.0f;
                this->unk_39C = 0xF;
                this->unk_398 = 0;
                this->unk_3B0.y = this->actor.world.pos.y + 77.0f + 100.0f;
                this->unk_314 = 2;
                this->unk_3B0.z = this->actor.world.pos.z + 5.0f;
                this->unk_3B0.x = this->actor.world.pos.x;
            }
            if ((globalCtx->gameplayFrames & 0x1F) == 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_BREATH);
            }
            break;
        case 15:
            if (((globalCtx->gameplayFrames & 0x1F) == 0) && (this->unk_398 < 0x64)) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_BREATH);
            }
            SkelAnime_Update(&this->skelAnime);
            Math_ApproachF(&this->unk_3B0.y, this->actor.world.pos.y + 77.0f, 0.05f, 5.0f);
            if (this->unk_398 >= 0x32) {
                if (this->unk_398 == 0x32) {
                    Animation_MorphToPlayOnce(&this->skelAnime, &D_06000BFC, 0.0f);
                    this->unk_194 = Animation_GetLastFrame(&D_06000BFC);
                    this->unk_314 = 3;
                }
                if (Animation_OnFrame(&this->skelAnime, this->unk_194) != 0) {
                    Animation_MorphToLoop(&this->skelAnime, &D_06003F38, 0.0f);
                    this->unk_194 = 1000.0f;
                }
            }
            if (this->unk_398 >= 0x47) {
                Math_ApproachF(&this->unk_1B4, 255.0f, 1.0f, 10.0f);
            }
            if (this->unk_398 == 0x8C) {
                this->unk_39C = 0x10;
                this->unk_398 = 0;
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06003754, 0.0f);
                this->unk_194 = Animation_GetLastFrame(&D_06003754);
                this->unk_339 = 0x37;
                globalCtx->envCtx.unk_D8 = 1.0f;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_CASBREAK);
            } else {
                break;
            }
        case 16:
            if (this->unk_398 < 0x19) {
                this->unk_339 = 0x37;
            } else {
                this->unk_339 = 6;
                if (this->unk_194 > 100.0f) {
                    Math_ApproachF(&this->unk_30C, 15.0f, 1.0f, 2.0f);
                } else {
                    Math_ApproachF(&this->unk_30C, 7.0f, 1.0f, 0.2f);
                }
            }
            this->unk_1B4 = 0.0f;
            SkelAnime_Update(&this->skelAnime);
            if (Animation_OnFrame(&this->skelAnime, this->unk_194) != 0) {
                Animation_MorphToPlayOnce(&this->skelAnime, &D_060028A8, 0.0f);
                this->unk_194 = 1000.0f;
            }
            Math_ApproachF(&this->unk_3A4.x, (this->actor.world.pos.x + 200.0f) - 90.0f, 0.1f, 6.3999996f);
            Math_ApproachF(&this->unk_3A4.y, ((this->actor.world.pos.y + 60.0f) - 60.0f) - 70.0f, 0.1f, 13.0f);
            Math_ApproachF(&this->unk_3B0.y, this->actor.world.pos.y + 40.0f, 0.1f, 3.6999998f);
            if (this->unk_398 == 0x1E) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_BIGMASIC);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_THROW_BIG);
            }
            if (this->unk_398 < 0x33) {
                sp8D = true;
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
                func_8002DF54(globalCtx, &this->actor, 0x54);
                this->unk_314 = 3;
            }
            break;
        case 17:
            this->unk_339 = 6;
            SkelAnime_Update(&this->skelAnime);
            this->unk_3A4.x = player->actor.world.pos.x - 40.0f;
            this->unk_3A4.y = player->actor.world.pos.y + 40.0f;
            this->unk_3A4.z = player->actor.world.pos.z + 20.0f;
            this->unk_3B0.x = player->actor.world.pos.x;
            this->unk_3B0.y = (player->actor.world.pos.y + 10.0f + 60.0f) - 30.0f;
            this->unk_3B0.z = player->actor.world.pos.z;
            if (this->unk_398 == 0x19) {
                this->unk_39C = 0x12;
                this->unk_398 = 0;
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06010380, 0.0f);
                this->skelAnime.playSpeed = 0.0f;
                this->unk_3A4.x = ((this->actor.world.pos.x + 500.0f) - 350.0f) - 50.0f;
                this->unk_3A4.y = this->actor.world.pos.y;
                this->unk_3A4.z = this->actor.world.pos.z;
                this->unk_3B0.x = this->actor.world.pos.x + 50.0f;
                this->unk_3B0.y = this->actor.world.pos.y + 60.0f;
                this->unk_3B0.z = this->actor.world.pos.z;
                this->actor.world.rot.y = 0x4000;
            }
            break;
        case 18:
            this->unk_339 = 6;
            if (this->unk_398 == 0x1E) {
                Audio_SetBGM(0x65);
            }
            Math_ApproachF(&this->unk_30C, 7.0f, 1.0f, 0.1f);
            Math_ApproachF(&this->unk_3A4.x, (this->actor.world.pos.x + 500.0f) - 350.0f, 0.1f, 1.0f);
            Math_ApproachF(&this->unk_3B0.x, this->actor.world.pos.x, 0.1f, 1.0f);
            Math_ApproachF(&this->unk_228, 1.0f, 0.1f, 0.02f);
            if (this->unk_398 == 0x41) {
                this->unk_39C = 0x13;
                this->unk_398 = 0;
            }
            break;
        case 19:
            this->unk_394 += 0.5f;
            this->unk_339 = 6;
            this->actor.world.pos.y += this->actor.velocity.y;
            this->actor.velocity.y -= 1.0f;
            if (this->unk_398 == 0xA) {
                this->unk_39C = 0x14;
                this->unk_398 = 0;
                // might be fake?
                this->actor.world.pos.x += 250;
                this->actor.world.pos.y = 1886.0f;
                this->unk_394 = 0.0f;
                func_8002DF54(globalCtx, &this->actor, 0x53);
                this->unk_30C = 5.0f;
                this->unk_228 = 1.0f;
            }
            break;
        case 20:
            this->unk_339 = 6;
            SkelAnime_Update(&this->skelAnime);
            this->actor.world.pos.y += this->actor.velocity.y;
            this->actor.velocity.y -= 1.0f;
            player->actor.world.pos.x = 250.0f;
            player->actor.world.pos.y = 1086.0f;
            player->actor.world.pos.z = -266.0f;
            player->actor.shape.rot.y = -0x4000;
            this->unk_3A4.x = (player->actor.world.pos.x - 40.0f) - 200.0f;
            this->unk_3A4.y = (player->actor.world.pos.y + 40.0f) - 30.0f;
            this->unk_3A4.z = (player->actor.world.pos.z - 20.0f) + 100.0f;
            this->unk_3B0.x = player->actor.world.pos.x;
            this->unk_3B0.y = ((player->actor.world.pos.y + 10.0f + 60.0f) - 20.0f) + 30.0f;
            this->unk_3B0.z = player->actor.world.pos.z;
            this->unk_3BC.x = 0.8f;
            if (this->actor.world.pos.y <= 1099.0f) {
                this->actor.world.pos.y = 1099.0f;
                this->unk_39C = 0x15;
                this->unk_398 = 0;
                this->unk_420 = 10.0f;
                this->actor.velocity.y = 0.0f;
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06010380, 0.0f);
                func_808FD4D4(this, globalCtx, 0, 3);
                func_800A9F6C(0.0f, 0xC8, 0x14, 0x14);
            }
            break;
        case 21:
            this->unk_339 = 6;
            SkelAnime_Update(&this->skelAnime);
            this->unk_41C = Math_CosS(globalCtx->gameplayFrames << 0xF) * this->unk_420;
            Math_ApproachZeroF(&this->unk_420, 1.0f, 0.75f);
            if (this->unk_398 == 0x1E) {
                this->unk_39C = 0x16;
                this->unk_30C = 10.0f;
            } else {
                break;
            }
        case 22:
            if (this->unk_398 < 0x3C) {
                this->unk_339 = 7;
            }
            this->unk_3BC.x = 0.0f;
            this->actor.world.pos.y = 1099.0f;
            SkelAnime_Update(&this->skelAnime);
            Math_ApproachZeroF(&this->unk_30C, 1.0f, 0.1f);
            if (this->unk_398 >= 0x33) {
                Math_ApproachF(&this->unk_224, 1.0f, 1.0f, 0.025f);
            }
            if (this->unk_398 == 0x3C) {
                this->unk_336 = 2;
            }
            if (this->unk_398 == 0x50) {
                func_808FD108(this, globalCtx, 0x153, 0);
                TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx, SEGMENTED_TO_VIRTUAL(D_06021A90), 0xA0,
                                       0xB4, 0x80, 0x28);
            }
            this->unk_3A4.x = ((this->actor.world.pos.x + 500.0f) - 350.0f) + 100.0f;
            this->unk_3A4.y = this->actor.world.pos.y;
            this->unk_3A4.z = this->actor.world.pos.z;
            this->unk_3B0.x = this->actor.world.pos.x;
            this->unk_3B0.z = this->actor.world.pos.z;
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
                func_8002DF54(globalCtx, &this->actor, 0x55);
            }
            break;
        case 23:
            SkelAnime_Update(&this->skelAnime);
            if ((this->unk_398 >= 0xDF) && (this->unk_398 < 0xE8)) {
                this->unk_312 = 2;
            }
            if (this->unk_398 == 0xDE) {
                func_80078884(0x3997);
                func_80078884(0x398F);
            }
            this->unk_3A4.x = (player->actor.world.pos.x - 40.0f) + 6.0f;
            this->unk_3A4.y = player->actor.world.pos.y + 40.0f;
            this->unk_3A4.z = (player->actor.world.pos.z + 20.0f) - 7.0f;
            this->unk_3B0.x = player->actor.world.pos.x;
            this->unk_3B0.y = ((player->actor.world.pos.y + 10.0f + 60.0f) - 20.0f) - 2.0f;
            this->unk_3B0.z = player->actor.world.pos.z;
            if (this->unk_398 == 0xE4) {
                func_80078884(NA_SE_IT_SHIELD_REFLECT_SW);
                func_8002DF54(globalCtx, &this->actor, 0x56);
                func_800A9F6C(0.0f, 0xFF, 0xA, 0x32);
            }
            if (this->unk_398 >= 0xE5) {
                globalCtx->envCtx.unk_E1 = 1;
                globalCtx->envCtx.unk_E2[0] = globalCtx->envCtx.unk_E2[1] = globalCtx->envCtx.unk_E2[2] = 0xFF;
                globalCtx->envCtx.unk_E2[3] = 0x64;
                if (this->unk_398 == 0xEA) {
                    globalCtx->envCtx.unk_E1 = 0;
                    this->unk_39C = 0x18;
                    this->unk_398 = 0;
                    sp68 = player->actor.world.pos;
                    sp68.y += 60.0f;
                    func_808FD210(globalCtx, &sp68);
                    globalCtx->envCtx.unk_D8 = 0.0f;
                    globalCtx->envCtx.unk_BE = 0;
                    this->unk_339 = 0;
                }
            }
            break;
        case 24:
            SkelAnime_Update(&this->skelAnime);
            // might be fake?
            if (1) {}
            temp_v0_3 = globalCtx->unk_11E10;
            this->unk_3B0 = temp_v0_3->position;
            this->unk_3A4.x = temp_v0_3->position.x + 70.0f;
            this->unk_3A4.y = temp_v0_3->position.y - 30.0f;
            this->unk_3A4.z = temp_v0_3->position.z + 70.0f;
            if ((this->unk_398 & 3) == 0) {
                func_80078884(0x1801);
            }
            if (this->unk_398 == 0x19) {
                func_8002DF54(globalCtx, &this->actor, 0x57);
                this->unk_39C = 0x19;
                this->unk_398 = 0;
            }
            break;
        case 25:
            SkelAnime_Update(&this->skelAnime);
            this->unk_3A4.x = (player->actor.world.pos.x - 40.0f) + 80.0f;
            this->unk_3A4.y = player->actor.world.pos.y + 40.0f + 10.0f;
            this->unk_3A4.z = player->actor.world.pos.z + 20.0f + 10.0f;
            this->unk_3B0.x = player->actor.world.pos.x - 20.0f;
            this->unk_3B0.y = ((player->actor.world.pos.y + 10.0f + 60.0f) - 20.0f) - 3.0f;
            this->unk_3B0.z = (player->actor.world.pos.z - 40.0f) - 10.0f;
            if (this->unk_398 == 0xA) {
                temp_v0_3 = globalCtx->unk_11E10;
                temp_v0_3->unk_2E = 1;
                temp_v0_3->position.x = D_8090EB2C->actor.world.pos.x + 50.0f + 10.0f;
                temp_v0_3->position.y = D_8090EB2C->actor.world.pos.y + 350.0f;
                temp_v0_3->position.z = D_8090EB2C->actor.world.pos.z - 25.0f;
                temp_v0_3->velocity.x = 0.0f;
                temp_v0_3->velocity.z = 0.0f;
                temp_v0_3->velocity.y = -30.0f;
                this->unk_39C = 0x1A;
                this->unk_398 = 0;
            } else {
                break;
            }
        case 26:
            this->unk_3A4.x = D_8090EB2C->actor.world.pos.x + 100.0f + 30.0f;
            this->unk_3A4.y = D_8090EB2C->actor.world.pos.y + 10.0f;
            this->unk_3A4.z = D_8090EB2C->actor.world.pos.z + 5.0f;
            this->unk_3B0.x = D_8090EB2C->actor.world.pos.x;
            this->unk_3B0.y = D_8090EB2C->actor.world.pos.y + 30.0f;
            this->unk_3B0.z = D_8090EB2C->actor.world.pos.z - 20.0f;
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
                func_8002DF54(globalCtx, &this->actor, 0x58);
            }
            this->unk_3A4.x = player->actor.world.pos.x - 20.0f;
            this->unk_3A4.y = player->actor.world.pos.y + 50.0f;
            this->unk_3A4.z = player->actor.world.pos.z;
            this->unk_3B0.x = player->actor.world.pos.x;
            this->unk_3B0.y = player->actor.world.pos.y + 50.0f;
            this->unk_3B0.z = player->actor.world.pos.z;
            if (this->unk_398 == 0x1A) {
                D_8090EB30 = globalCtx->actorCtx.actorLists[ACTORCAT_ITEMACTION].head;
                while (D_8090EB30 != NULL) {
                    if (D_8090EB30->id == 0x18) {
                        this->unk_3A4.x = D_8090EB30->world.pos.x - 30.0f;
                        this->unk_3A4.y = D_8090EB30->world.pos.y;
                        this->unk_3A4.z = D_8090EB30->world.pos.z;
                        this->unk_3B0.x = D_8090EB30->world.pos.x;
                        this->unk_3B0.y = D_8090EB30->world.pos.y;
                        this->unk_3B0.z = D_8090EB30->world.pos.z;
                        break;
                    }
                    D_8090EB30 = D_8090EB30->next;
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
                this->unk_3A4.x = D_8090EB30->world.pos.x - 20.0f;
                this->unk_3A4.y = D_8090EB30->world.pos.y;
                this->unk_3A4.z = D_8090EB30->world.pos.z;
                Math_ApproachF(&this->unk_3B0.x, D_8090EB30->world.pos.x, 0.2f, 50.0f);
                Math_ApproachF(&this->unk_3B0.y, D_8090EB30->world.pos.y, 0.2f, 50.0f);
                Math_ApproachF(&this->unk_3B0.z, D_8090EB30->world.pos.z, 0.2f, 50.0f);
                if ((this->unk_398 >= 0x29) && (func_8010BDBC(&globalCtx->msgCtx) == 0)) {
                    this->unk_39C = 0x1D;
                    this->unk_398 = 0;
                    Animation_MorphToPlayOnce(&this->skelAnime, &D_060147E0, 0.0f);
                    this->unk_194 = Animation_GetLastFrame(&D_060147E0);
                    this->actor.shape.yOffset = 0.0f;
                    this->actor.world.pos.y = 1086.0f;
                    this->actor.gravity = -1.0f;
                    this->unk_335 = 1;
                    this->unk_224 = 1.0f;
                }
            }
            break;
        case 29:
            SkelAnime_Update(&this->skelAnime);
            this->unk_3A4.x = (((this->actor.world.pos.x + 500.0f) - 350.0f) + 100.0f) - 60.0f;
            this->unk_3B0.x = this->actor.world.pos.x;
            this->unk_3B0.z = this->actor.world.pos.z;
            this->unk_3A4.y = this->actor.world.pos.y;
            this->unk_3A4.z = this->actor.world.pos.z + 10.0f;
            this->unk_3B0.y = (this->unk_1B8.y + 60.0f) - 40.0f;
            player->actor.shape.rot.y = -0x4000;
            player->actor.world.pos.x = 140.0f;
            player->actor.world.pos.z = -196.0f;
            if (this->unk_398 == 0x32) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_ROAR);
            }
            if (Animation_OnFrame(&this->skelAnime, this->unk_194) != 0) {
                temp_v0 = Gameplay_GetCamera(globalCtx, 0);
                temp_v0->eye = this->unk_3A4;
                temp_v0->eyeNext = this->unk_3A4;
                temp_v0->at = this->unk_3B0;
                func_800C08AC(globalCtx, this->unk_39E, 0);
                this->unk_39E = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                this->unk_39C = 0;
                this->unk_337 = 1;
                func_808FFDB0(this, globalCtx);
                this->unk_1A2[1] = 50;
                this->actor.flags |= 1;
                D_8090EB2C->unk_3C8 = 7;
            }
            break;
    }

    if ((this->unk_30C > 4.0f) && !sp8D) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_BODY_SPARK - SFX_FLAG);
    }

    temp_a1 = this->unk_39E;
    if (temp_a1 != 0) {
        // Definitely fake.
        temp[1] = &this->unk_3A4;
        temp[0] = &this->unk_3B0;

        this->unk_3B0.y += this->unk_41C;
        Gameplay_CameraSetAtEyeUp(globalCtx, temp_a1, temp[0], temp[1], &this->unk_3BC);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_808FD5F4.s")
#endif

void func_808FF898(BossGanon2* this, GlobalContext* globalCtx) {
    if ((this->unk_312 != 0) && (this->unk_39E == 0)) {
        Actor* actor = globalCtx->actorCtx.actorLists[ACTORCAT_PROP].head;
        while (actor != NULL) {
            if (actor->id == ACTOR_DEMO_GJ) {
                DemoGj* gj = (DemoGj*)actor;

                if (((actor->params & 0xFF) == 0x10) || ((actor->params & 0xFF) == 0x11) ||
                    ((actor->params & 0xFF) == 0x16)) {
                    if (SQ(this->unk_218.x - gj->dyna.actor.world.pos.x) +
                            SQ(this->unk_218.z - gj->dyna.actor.world.pos.z) <
                        10000.0f) {
                        s32 pad;
                        Vec3f sp28;

                        Matrix_RotateY(((this->actor.shape.rot.y / (f32)0x8000) * M_PI) + 0.5f, 0);
                        sp28.x = 0.0f;
                        sp28.y = 0.0f;
                        sp28.z = 1.0f;
                        Matrix_MultVec3f(&sp28, &gj->unk_26C);
                        gj->killFlag = true;
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
    Actor* actor = globalCtx->actorCtx.actorLists[ACTORCAT_PROP].head;

    while (actor != NULL) {
        if (actor->id == ACTOR_DEMO_GJ) {
            DemoGj* gj = (DemoGj*)actor;

            if (((actor->params & 0xFF) == 0x10) || ((actor->params & 0xFF) == 0x11) ||
                ((actor->params & 0xFF) == 0x16)) {
                if (SQ(this->actor.world.pos.x - gj->dyna.actor.world.pos.x) +
                        SQ(this->actor.world.pos.z - gj->dyna.actor.world.pos.z) <
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
        phi_a1 = this->actor.shape.rot.y - this->actor.yawTowardsPlayer;

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

    Math_ApproachS(&this->unk_31A, phi_a1, 5, 0x7D0);

    temp_v1 = Math_Atan2S(this->actor.xzDistToPlayer, 150.0f) - 3000;
    temp_v1 = CLAMP_MAX(temp_v1, 7000);
    temp_v1 = CLAMP_MIN(temp_v1, -7000);

    Math_ApproachS(&this->unk_31C, temp_v1, 5, 0x7D0);
}

void func_808FFBBC(BossGanon2* this, GlobalContext* globalCtx, u8 arg2) {
    if (arg2 != 0 || this->unk_313) {
        f32 phi_f0;
        f32 phi_f2;

        Math_ApproachS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 5, this->unk_320);

        if (this->unk_334 != 0) {
            phi_f0 = 5000.0f;
            phi_f2 = 200.0f;
        } else {
            phi_f0 = 3000.0f;
            phi_f2 = 30.0f;
        }

        Math_ApproachF(&this->unk_320, phi_f0, 1.0f, phi_f2);
    } else {
        this->unk_320 = 0.0f;
    }
}

void func_808FFC84(BossGanon2* this) {
    if (ABS((s16)(this->actor.yawTowardsPlayer - this->actor.shape.rot.y)) < 0x2800) {
        this->unk_313 = true;
        this->actor.focus.pos = this->unk_1B8;
    } else {
        this->unk_313 = false;
        this->actor.focus.pos = this->unk_1C4;
    }
}

void func_808FFCFC(BossGanon2* this, GlobalContext* globalCtx) {
    if (this->actor.xzDistToPlayer < 150.0f &&
        ABS((s16)(this->actor.yawTowardsPlayer - this->actor.shape.rot.y)) < 0x2800) {
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
        Animation_MorphToLoop(&this->skelAnime, &D_0600FFE4, -10.0f);
        this->actionFunc = func_808FFEBC;

        if (this->unk_334 != 0) {
            this->unk_1A2[0] = Rand_ZeroFloat(30.0f);
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
        this->unk_390 = (s16)Rand_ZeroFloat(50.0f) + 30;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_UNARI);
    }

    SkelAnime_Update(&this->skelAnime);
    Math_ApproachZeroF(&this->actor.speedXZ, 0.5f, 1.0f);

    if (this->unk_1A2[0] == 0) {
        func_809002CC(this, globalCtx);
    } else if (this->unk_1A2[1] == 0) {
        func_808FFCFC(this, globalCtx);
    }

    func_808FFAC8(this, globalCtx, 0);
    func_808FFBBC(this, globalCtx, 0);
}

void func_808FFF90(BossGanon2* this, GlobalContext* globalCtx) {
    Animation_MorphToLoop(&this->skelAnime, &D_0600FFE4, -10.0f);
    this->actionFunc = func_808FFFE0;
    this->unk_1A2[0] = 40;
}

void func_808FFFE0(BossGanon2* this, GlobalContext* globalCtx) {
    s16 target;

    SkelAnime_Update(&this->skelAnime);
    Math_ApproachZeroF(&this->actor.speedXZ, 0.5f, 1.0f);

    if (this->unk_1A2[0] == 0) {
        func_809002CC(this, globalCtx);
    }

    if (this->unk_1A2[0] < 30 && this->unk_1A2[0] >= 10) {
        target = Math_SinS(this->unk_1A2[0] * 0x3000) * (f32)0x2000;
    } else {
        target = 0;
    }

    Math_ApproachS(&this->unk_31A, target, 2, 0x4000);
}

void func_809000A0(BossGanon2* this, GlobalContext* globalCtx) {
    Animation_MorphToLoop(&this->skelAnime, &D_06026510, -2.0f);
    this->unk_194 = Animation_GetLastFrame(&D_06026510.common);
    this->unk_1AC = 0;
    this->actionFunc = func_80900104;
}

void func_80900104(BossGanon2* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    Math_ApproachZeroF(&this->actor.speedXZ, 0.5f, 1.0f);

    switch (this->unk_1AC) {
        case 0:
            if (Animation_OnFrame(&this->skelAnime, this->unk_194)) {
                this->unk_1AC = 1;
                Animation_MorphToLoop(&this->skelAnime, &D_06026AF4, 0.0f);
                this->unk_1A2[0] = 80;
            }
            break;
        case 1:
            if (this->unk_1A2[0] == 0) {
                this->unk_1AC = 2;
                Animation_MorphToLoop(&this->skelAnime, &D_06027824, -5.0f);
                this->unk_194 = Animation_GetLastFrame(&D_06027824);
            }
            break;
        case 2:
            if (Animation_OnFrame(&this->skelAnime, this->unk_194)) {
                func_809002CC(this, globalCtx);
            }
            break;
    }
}

void func_80900210(BossGanon2* this, GlobalContext* globalCtx) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_0600DFF0, -3.0f);
    this->unk_194 = Animation_GetLastFrame(&D_0600DFF0);
    this->actionFunc = func_8090026C;
}

void func_8090026C(BossGanon2* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    Math_ApproachZeroF(&this->actor.speedXZ, 0.5f, 2.0f);

    if (Animation_OnFrame(&this->skelAnime, this->unk_194)) {
        func_809002CC(this, globalCtx);
    }
}

void func_809002CC(BossGanon2* this, GlobalContext* globalCtx) {
    Animation_MorphToLoop(&this->skelAnime, &D_0600E8EC, -10.0f);
    this->actionFunc = func_80900344;
    this->unk_338 = 0;
    this->unk_1A2[0] = 100;
    this->unk_390 = (s16)Rand_ZeroFloat(50.0f) + 50;
}

void func_80900344(BossGanon2* this, GlobalContext* globalCtx) {
    f32 phi_f0;

    if (this->unk_390 == 0) {
        this->unk_390 = (s16)Rand_ZeroFloat(50.0f) + 30;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_UNARI);
    }

    Math_ApproachF(&this->unk_324, 255.0f, 1.0f, 10.0f);

    if (this->unk_338 != 0) {
        if (Animation_OnFrame(&this->skelAnime, 13.0f) != 0) {
            func_808FD4D4(this, globalCtx, 1, 3);
        } else if (Animation_OnFrame(&this->skelAnime, 28.0f) != 0) {
            func_808FD4D4(this, globalCtx, 2, 3);
        }
        if (this->actor.xzDistToPlayer < 200.0f) {
            this->unk_338 = 0;
            Animation_MorphToLoop(&this->skelAnime, &D_0600E8EC, -10.0f);
        } else {
            this->skelAnime.playSpeed = ((this->actor.xzDistToPlayer - 300.0f) * 0.005f) + 1.0f;
            if (this->skelAnime.playSpeed > 2.0f) {
                this->skelAnime.playSpeed = 2.0f;
            }
            if (this->unk_334 != 0) {
                this->skelAnime.playSpeed *= 1.5f;
            }
        }
        phi_f0 = this->skelAnime.playSpeed * 3.0f;
    } else {
        phi_f0 = 2.0f;
        if (this->actor.xzDistToPlayer >= 200.0f) {
            this->unk_338 = 1;
            Animation_MorphToLoop(&this->skelAnime, &D_060353C0, -10.0f);
        }
    }

    SkelAnime_Update(&this->skelAnime);
    Math_ApproachF(&this->actor.speedXZ, phi_f0, 0.5f, 1.0f);

    if (this->unk_1A2[0] == 0) {
        func_808FFDB0(this, globalCtx);
    } else {
        func_808FFCFC(this, globalCtx);
    }

    func_808FFAC8(this, globalCtx, 1);
    func_808FFBBC(this, globalCtx, 1);
}

void func_80900580(BossGanon2* this, GlobalContext* globalCtx) {
    if (this->unk_311 == 0) {
        Animation_MorphToPlayOnce(&this->skelAnime, &D_0600ADD0, -5.0f);
        this->unk_194 = Animation_GetLastFrame(&D_0600ADD0);
        this->unk_198 = (this->unk_194 - 15.0f) - 5.0f;
    } else {
        Animation_MorphToPlayOnce(&this->skelAnime, &D_0600CAF8, -5.0f);
        this->unk_194 = Animation_GetLastFrame(&D_0600CAF8);
        this->unk_198 = (this->unk_194 - 15.0f) - 5.0f;
    }

    this->actionFunc = func_80900650;
}

void func_80900650(BossGanon2* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    if (Animation_OnFrame(&this->skelAnime, this->unk_198)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_SWORD);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_ROAR);
    }

    if (this->unk_311 == 0) {
        if (((this->unk_198 - 4.0f) < this->skelAnime.curFrame) &&
            (this->skelAnime.curFrame < (this->unk_198 + 6.0f))) {
            this->unk_312 = 1;
        }
    } else if ((((this->unk_198 - 4.0f) + 4.0f) < this->skelAnime.curFrame) &&
               (this->skelAnime.curFrame < (this->unk_198 + 6.0f))) {
        this->unk_312 = 2;
    }

    Math_ApproachZeroF(&this->actor.speedXZ, 0.5f, 1.0f);

    if (Animation_OnFrame(&this->skelAnime, this->unk_194)) {
        this->unk_311 = 1 - this->unk_311;

        if ((this->unk_311 == 1) && (this->actor.xzDistToPlayer < 250.0f) && (this->unk_313 != 0)) {
            func_80900580(this, globalCtx);
        } else {
            func_808FFDB0(this, globalCtx);
        }
    }

    func_808FFAC8(this, globalCtx, 0);

    if ((this->unk_334 == 0) && (this->unk_311 == 0)) {
        this->unk_320 = 0.0f;
    } else {
        func_808FFBBC(this, globalCtx, 0);
    }
}

void func_80900818(BossGanon2* this, GlobalContext* globalCtx) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_0602A848, -5.0f);
    this->unk_194 = Animation_GetLastFrame(&D_0602A848);
    this->actionFunc = func_80900890;
    this->unk_1AC = 0;
    this->unk_39C = 0;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_DEAD1);
    this->unk_336 = 0;
}

void func_80900890(BossGanon2* this, GlobalContext* globalCtx) {
    Vec3f sp5C;
    Vec3f sp50;
    Camera* sp4C;
    Player* player;
    Camera* temp_v0;
    Camera* temp_v0_2;
    s32 pad;
    f32 temp_f12;
    f32 temp_f2;

    sp4C = Gameplay_GetCamera(globalCtx, 0);
    player = PLAYER;
    SkelAnime_Update(&this->skelAnime);
    this->unk_398++;
    this->unk_339 = 0x14;

    switch (this->unk_39C) {
        case 0:
            func_80064520(globalCtx, &globalCtx->csCtx);
            this->unk_39E = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
            Gameplay_ChangeCameraStatus(globalCtx, this->unk_39E, 7);
            func_8002DF54(globalCtx, &this->actor, 8);
            this->unk_39C = 1;
            this->unk_3A4 = sp4C->eye;
            this->unk_3B0 = sp4C->at;
            this->unk_1A2[0] = 0x12C;
            this->unk_1A2[1] = 0x64;
            globalCtx->envCtx.unk_D8 = 0.0f;
        case 1:
            if (this->unk_1A2[1] == 0x32) {
                func_80078884(NA_SE_EN_MGANON_WALK);
            }
            Matrix_RotateY(((this->actor.shape.rot.y / (f32)0x8000) * M_PI) + 0.3f, MTXMODE_NEW);
            sp5C.x = 0.0f;
            sp5C.y = 0.0f;
            sp5C.z = 250.0f;
            Matrix_MultVec3f(&sp5C, &sp50);
            Math_ApproachF(&this->unk_3A4.x, this->actor.world.pos.x + sp50.x, 0.2f, 100.0f);
            Math_ApproachF(&this->unk_3A4.y, 1136.0f, 0.2f, 100.0f);
            Math_ApproachF(&this->unk_3A4.z, this->actor.world.pos.z + sp50.z, 0.2f, 100.0f);
            Math_ApproachF(&this->unk_3B0.x, this->unk_1B8.x, 0.2f, 100.0f);
            Math_ApproachF(&this->unk_3B0.y, this->unk_1B8.y, 0.2f, 100.0f);
            Math_ApproachF(&this->unk_3B0.z, this->unk_1B8.z, 0.2f, 100.0f);
            if (this->unk_1A2[1] == 0) {
                this->unk_39C = 2;
                this->unk_1A2[1] = 0x5A;
            }
            break;
        case 2:
            this->unk_1A2[0] = 0x12C;
            this->unk_3A4.x = D_8090EB2C->actor.world.pos.x - 100.0f;
            this->unk_3A4.y = D_8090EB2C->actor.world.pos.y + 30.0f;
            this->unk_3A4.z = (D_8090EB2C->actor.world.pos.z + 30.0f) - 60.0f;
            this->unk_3B0.x = D_8090EB2C->actor.world.pos.x;
            this->unk_3B0.y = D_8090EB2C->actor.world.pos.y + 30.0f;
            this->unk_3B0.z = D_8090EB2C->actor.world.pos.z - 10.0f;
            Math_ApproachZeroF(&this->unk_324, 1.0f, 5.0f);
            Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.019607844f);
            if (this->unk_1A2[1] == 0x50) {
                func_8010B680(globalCtx, 0x70D7, NULL);
            }
            if ((this->unk_1A2[1] < 0x1E) && (func_8010BDBC(&globalCtx->msgCtx) == 0)) {
                temp_v0 = Gameplay_GetCamera(globalCtx, 0);
                temp_v0->eye = this->unk_3A4;
                temp_v0->eyeNext = this->unk_3A4;
                temp_v0->at = this->unk_3B0;
                func_800C08AC(globalCtx, this->unk_39E, 0);
                this->unk_39E = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                this->unk_39C = 3;
            }
            break;
        case 10:
            func_80064520(globalCtx, &globalCtx->csCtx);
            this->unk_39E = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
            Gameplay_ChangeCameraStatus(globalCtx, this->unk_39E, 7);
            this->unk_39C = 0xB;
            this->unk_334 = 1;
            func_8002DF54(globalCtx, &this->actor, 0x60);
            this->unk_398 = 0;
        case 11:
            player->actor.world.pos.x = D_8090EB2C->actor.world.pos.x + 50.0f + 10.0f;
            player->actor.world.pos.z = D_8090EB2C->actor.world.pos.z - 25.0f;
            player->actor.shape.rot.y = -0x8000;
            this->unk_3A4.x = (player->actor.world.pos.x + 100.0f) - 80.0f;
            this->unk_3A4.y = (player->actor.world.pos.y + 60.0f) - 40.0f;
            this->unk_3A4.z = player->actor.world.pos.z - 110.0f;
            this->unk_3B0.x = player->actor.world.pos.x;
            this->unk_3B0.y = (player->actor.world.pos.y + 60.0f) - 25.0f;
            this->unk_3B0.z = player->actor.world.pos.z;
            if (this->unk_398 == 0x50) {
                temp_v0_2 = Gameplay_GetCamera(globalCtx, 0);
                temp_v0_2->eye = this->unk_3A4;
                temp_v0_2->eyeNext = this->unk_3A4;
                temp_v0_2->at = this->unk_3B0;
                this->unk_39C = 3;
                func_800C08AC(globalCtx, this->unk_39E, 0);
                this->unk_39E = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
            }
            break;
    }

    if (this->unk_39E != 0) {
        Gameplay_CameraSetAtEye(globalCtx, this->unk_39E, &this->unk_3B0, &this->unk_3A4);
    }

    switch (this->unk_1AC) {
        case 0:
            if (Animation_OnFrame(&this->skelAnime, this->unk_194)) {
                Animation_MorphToLoop(&this->skelAnime, &D_06034278, 0.0f);
                this->unk_1AC = 1;
            }
            break;
        case 1:
            if ((globalCtx->gameplayFrames & 0x1F) == 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_BREATH);
            }

            if ((this->unk_1A2[0] == 0) || (this->unk_334 != 0)) {
                temp_f2 = -200.0f - player->actor.world.pos.x;
                temp_f12 = -200.0f - player->actor.world.pos.z;

                if (sqrtf(SQ(temp_f2) + SQ(temp_f12)) <= 784.0f) {
                    Animation_MorphToPlayOnce(&this->skelAnime, &D_060334F8, 0.0f);
                    this->unk_194 = Animation_GetLastFrame(&D_060334F8);
                    this->unk_1AC = 2;
                    this->unk_1A2[0] = 0x28;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_ROAR);
                }
            }
            break;
        case 2:
            Math_ApproachF(&this->unk_324, 255.0f, 1.0f, 10.0f);
            Math_ApproachZeroF(&globalCtx->envCtx.unk_D8, 1.0f, 0.039215688f);
            if (Animation_OnFrame(&this->skelAnime, this->unk_194)) {
                func_808FFDB0(this, globalCtx);
                if (this->unk_334 == 0) {
                    this->actor.colChkInfo.health = 25;
                }
                this->unk_336 = 1;
            }
            break;
    }

    Math_ApproachZeroF(&this->actor.speedXZ, 0.5f, 1.0f);
}

void func_80901020(BossGanon2* this, GlobalContext* globalCtx) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_0602A848, -5.0f);
    this->unk_194 = Animation_GetLastFrame(&D_0602A848);
    this->actionFunc = func_8090120C;
    this->unk_1AC = 0;
    this->unk_39C = 0;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_DEAD1);
    this->unk_314 = 4;
}

void func_8090109C(BossGanon2* this, GlobalContext* globalCtx) {
    u8 i;

    for (i = 0; i < 70; i++) {
        Vec3f velocity;
        Vec3f accel;
        Vec3f pos;

        velocity.x = Rand_CenteredFloat(50.0f);
        velocity.y = Rand_CenteredFloat(10.0f) + 5.0f;
        velocity.z = Rand_CenteredFloat(50.0f);
        accel.x = 0.0f;
        accel.y = -1.0f;
        accel.z = 0.0f;
        pos.x = this->unk_1B8.x;
        pos.y = this->unk_1B8.y;
        pos.z = this->unk_1B8.z;
        func_8002836C(globalCtx, &pos, &velocity, &accel, &D_80907024, &D_80907028, (s16)Rand_ZeroFloat(50.0f) + 50, 0,
                      17);
    }
}

#ifdef NON_MATCHING
void func_8090120C(BossGanon2* this, GlobalContext* globalCtx) {
    Player* player;
    Camera* temp_v0_2;
    f32 temp_f12;
    f32 temp_f14;
    s16 temp_a0_2;
    f32 phi_f0;
    s32 phi_a1;

    player = PLAYER;
    this->unk_398++;
    SkelAnime_Update(&this->skelAnime);

    this->unk_3BC.x = 0.0f;
    this->unk_3BC.y = 1.0f;
    this->unk_3BC.z = 0.0f;

    switch (this->unk_39C) {
        case 0:
            func_80064520(globalCtx, &globalCtx->csCtx);
            this->unk_39E = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
            Gameplay_ChangeCameraStatus(globalCtx, this->unk_39E, 7);
            func_8002DF54(globalCtx, &this->actor, 8);
            this->unk_39C = 1;
            this->unk_398 = 0;
            D_8090EB2C->unk_3C8 = 9;
            this->unk_31C = 0;
            this->unk_1A2[2] = 0;
            this->unk_336 = 0;
            this->unk_324 = 0.0f;
            this->actor.speedXZ = 0.0f;
            this->unk_31A = this->unk_31C;
            globalCtx->envCtx.unk_D8 = 0.0f;
        case 1:
            if (this->unk_398 < 0x5A) {
                this->unk_339 = 0x14;
                Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.1f);
            } else if (this->unk_398 >= 0x5A) {
                this->unk_339 = 0x15;
                Math_ApproachZeroF(&globalCtx->envCtx.unk_D8, 1.0f, 0.08f);
            }
            if (this->unk_398 == 0x32) {
                func_80078884(NA_SE_EN_MGANON_WALK);
            }
            if (this->unk_398 >= 0x5B) {
                Math_ApproachF(&this->unk_380, 0.25f, 1.0f, 0.0125f);
                this->unk_37C = 200.0f;
                func_80078884(NA_SE_EV_TIMETRIP_LIGHT);
            }
            if (this->unk_398 >= 0x6E) {
                if (this->unk_398 == 0x6E) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GANON_HIT_THUNDER);
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_DAMAGE);
                }
                Math_ApproachF(&this->unk_30C, 10.0f, 0.2f, 5.0f);
                this->skelAnime.playSpeed = 3.0f;
            }
            if (this->unk_398 == 0x78) {
                func_8002DF54(globalCtx, &this->actor, 0x63);
            }
            this->actor.world.rot.y = 0x4000;
            this->actor.world.pos.z = 0.0f;
            this->actor.world.pos.x = 0.0f;
            player->actor.shape.rot.y = -0x4000;
            player->actor.world.pos.x = 200.0f;
            player->actor.world.pos.z = 30.0f;
            D_8090EB2C->actor.world.pos.x = 340.0f;
            D_8090EB2C->actor.world.pos.z = -250.0f;
            D_8090EB2C->actor.world.rot.y = D_8090EB2C->actor.shape.rot.y = -0x2000;
            this->unk_3A4.x = 250.0f;
            this->unk_3A4.y = 1150.0f;
            this->unk_3A4.z = 0.0f;
            this->unk_3B0.x = this->unk_1B8.x;
            this->unk_3B0.y = this->unk_1B8.y;
            this->unk_3B0.z = this->unk_1B8.z;
            if (this->unk_398 >= 0x88) {
                this->unk_39C = 2;
                this->unk_398 = 0;
            }
            break;
        case 2:
            this->unk_339 = 0x16;
            Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.1f);
            func_80078884(NA_SE_EV_TIMETRIP_LIGHT);
            this->unk_3A4.x = 250.0f;
            this->unk_3A4.y = 1150.0f;
            this->unk_3A4.z = 0.0f;
            Math_ApproachF(&this->unk_3B0.x, D_8090EB2C->actor.world.pos.x, 0.2f, 20.0f);
            Math_ApproachF(&this->unk_3B0.y, D_8090EB2C->actor.world.pos.y + 50.0f, 0.2f, 10.0f);
            Math_ApproachF(&this->unk_3B0.z, D_8090EB2C->actor.world.pos.z, 0.2f, 20.0f);
            if (this->unk_398 == 0x32) {
                this->unk_39C = 3;
                this->unk_398 = 0;
            }
            break;
        case 3:
            this->unk_339 = 0x16;
            func_80078884(NA_SE_EV_TIMETRIP_LIGHT);
            this->unk_3A4.x = 330.0f;
            this->unk_3A4.y = 1120.0f;
            this->unk_3A4.z = -150.0f;
            this->unk_3B0.x = D_8090EB2C->actor.world.pos.x;
            this->unk_3B0.y = D_8090EB2C->actor.world.pos.y + 40.0f;
            this->unk_3B0.z = D_8090EB2C->actor.world.pos.z;
            if (this->unk_398 == 0xA) {
                func_8010B680(globalCtx, 0x70D8, NULL);
            }
            if ((this->unk_398 >= 0x51) && (func_8010BDBC(&globalCtx->msgCtx) == 0)) {
                this->unk_39C = 4;
                this->unk_398 = 0;
            }
            break;
        case 4:
            if (this->unk_398 >= 0xB) {
                Math_ApproachZeroF(&this->unk_37C, 1.0f, 10.0f);
                if (this->unk_398 == 0x1E) {
                    D_8090EB2C->unk_3C8 = 0xA;
                }
                this->unk_339 = 0x17;
                Math_ApproachZeroF(&globalCtx->envCtx.unk_D8, 1.0f, 0.05f);
            } else {
                this->unk_339 = 0x16;
            }
            if (this->unk_398 == 0x64) {
                this->unk_39C = 5;
                this->unk_398 = 0x28;
                this->skelAnime.playSpeed = 1.0f;
                func_8002DF54(globalCtx, &this->actor, 0x64);
            }
            break;
        case 5:
            this->unk_339 = 0x17;
            if ((this->unk_398 >= 0x3C) && (this->unk_398 < 0x5B)) {
                if (this->unk_398 == 0x3E) {
                    func_80078884(NA_SE_EV_TRIFORCE_FLASH);
                }
                Math_ApproachF(&this->unk_38C, 200.0f, 1.0f, 8.0f);
            } else {
                Math_ApproachZeroF(&this->unk_38C, 1.0f, 8.0f);
            }
            if (this->unk_398 == 0x46) {
                func_8002DF54(globalCtx, &this->actor, 0x65);
            }
            if (this->unk_398 == 0x96) {
                func_8002DF54(globalCtx, &this->actor, 0x66);
            }
            this->unk_30C = 10.0f;
            player->actor.world.pos.x = 250.0f;
            player->actor.world.pos.z = 30.0f;
            this->unk_3A4.x = player->actor.world.pos.x - 50.0f;
            this->unk_3A4.y = player->actor.world.pos.y + 50.0f;
            this->unk_3A4.z = player->actor.world.pos.z + 40.0f;
            this->unk_3B0.x = player->actor.world.pos.x;
            this->unk_3B0.y = player->actor.world.pos.y + 40.0f;
            this->unk_3B0.z = player->actor.world.pos.z;
            if (this->unk_398 == 0xA6) {
                temp_v0_2 = Gameplay_GetCamera(globalCtx, 0);
                temp_v0_2->eye = this->unk_3A4;
                temp_v0_2->eyeNext = this->unk_3A4;
                temp_v0_2->at = this->unk_3B0;
                func_800C08AC(globalCtx, this->unk_39E, 0);
                this->unk_39E = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                this->unk_39C = 6;
            }
            break;
        case 6:
            this->unk_339 = 0x17;
            temp_f14 = this->unk_1B8.x - player->actor.world.pos.x;
            temp_f12 = this->unk_1B8.z - player->actor.world.pos.z;
            temp_a0_2 = Math_Atan2S(temp_f12, temp_f14) - player->actor.shape.rot.y;
            if ((ABS(temp_a0_2) < 0x2000) && (sqrtf(SQ(temp_f14) + SQ(temp_f12)) < 70.0f) &&
                (player->swordState != 0) && (player->heldItemActionParam == 3)) {
                func_80064520(globalCtx, &globalCtx->csCtx);
                this->unk_39E = Gameplay_CreateSubCamera(globalCtx);
                Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
                Gameplay_ChangeCameraStatus(globalCtx, this->unk_39E, 7);
                this->unk_39C = 7;
                this->unk_398 = 0;
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06003B1C, 0.0f);
                this->unk_194 = Animation_GetLastFrame(&D_06003B1C);
                globalCtx->startPlayerCutscene(globalCtx, &this->actor, 0x61);
            }
        case 7:
            this->unk_339 = 0x17;
            Math_ApproachZeroF(&globalCtx->envCtx.unk_D8, 1.0f, 0.2f);
            player->actor.world.pos.x = 250.0f;
            player->actor.shape.rot.y = -0x4000;
            player->actor.world.pos.z = 30.0f;
            if ((this->unk_398 == 0x14) || (this->unk_398 == 0x1E) || (this->unk_398 == 0x41) ||
                (this->unk_398 == 0x28)) {
                func_80078884(NA_SE_VO_LI_SWORD_N);
                func_80078884(NA_SE_IT_SWORD_SWING_HARD);
            }
            if ((this->unk_398 == 0x16) || (this->unk_398 == 0x23) || (this->unk_398 == 0x48) ||
                (this->unk_398 == 0x2D)) {
                func_80078884(NA_SE_EN_MGANON_DAMAGE);
                func_80078884(NA_SE_IT_SHIELD_BOUND);
                globalCtx->envCtx.unk_D8 = 1.0f;
            }
            if ((this->unk_398 == 0x16) || (this->unk_398 == 0x23) || (this->unk_398 == 0x48) ||
                (this->unk_398 == 0x2D)) {
                func_8090109C(this, globalCtx);
            }
            if ((this->unk_398 >= 0x22U) && (this->unk_398 < 0x28U)) {
                this->unk_3A4.x = 269.0f;
                this->unk_3A4.y = 1112.0f;
                this->unk_3A4.z = -28.0f;
                this->unk_3B0.x = 234.0f;
                this->unk_3B0.y = 1117.0f;
                this->unk_3B0.z = -11.0f;
            } else {
                if (this->unk_398 < 0x1EU) {
                    phi_a1 = 0;
                } else if (this->unk_398 < 0x2BU) {
                    phi_a1 = 1;
                } else {
                    this->unk_3BC.z = -0.8f;
                    player->actor.world.pos.x = 200.0f;
                    player->actor.world.pos.z = 10.0f;
                    phi_a1 = 2;
                }
                this->unk_3A4.x = D_8090702C[phi_a1].x + (player->actor.world.pos.x - 50.0f);
                this->unk_3A4.y = D_8090702C[phi_a1].y + (player->actor.world.pos.y + 50.0f);
                this->unk_3A4.z = D_8090702C[phi_a1].z + (player->actor.world.pos.z + 40.0f);
                this->unk_3B0.x = D_80907050[phi_a1].x + player->actor.world.pos.x;
                this->unk_3B0.y = D_80907050[phi_a1].y + (player->actor.world.pos.y + 40.0f);
                this->unk_3B0.z = D_80907050[phi_a1].z + player->actor.world.pos.z;
            }
            if (this->unk_398 >= 0x51U) {
                Audio_SetBGM(0x100100FF);
                this->unk_39C = 0x4B;
                this->unk_398 = 0;
                this->unk_3A4.x = 112.0f;
                this->unk_3A4.y = 1146.0f;
                this->unk_3A4.z = 202.0f;
                this->unk_3B0.x = 110.0f;
                this->unk_3B0.y = 1144.0f;
                this->unk_3B0.z = 177.0f;
                player->actor.world.pos.x = 200.0f;
                this->unk_3BC.z = 0.0f;
            }
            break;
        case 75:
            this->unk_339 = 0x17;
            if (this->unk_398 == 0x37) {
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06007288, 0.0f);
                this->unk_194 = Animation_GetLastFrame(&D_06007288);
                func_8002DF54(globalCtx, &this->actor, 0x62);
                this->unk_39C = 8;
                this->unk_398 = 0x3E8;
            }
            break;
        case 8:
            if (this->unk_398 == 0x401) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_STAND);
            }
            if (this->unk_398 >= 0x3E8) {
                if (this->unk_398 < 0x410) {
                    this->unk_339 = 0x17;
                    Math_ApproachZeroF(&globalCtx->envCtx.unk_D8, 1.0f, 0.2f);
                }
            }
            if (this->unk_398 == 0x410) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_DEAD2);
                this->unk_336 = 2;
                this->unk_339 = 0;
                globalCtx->envCtx.unk_BE = 0;
                globalCtx->envCtx.unk_D8 = 0.0f;
            }
            if (Animation_OnFrame(&this->skelAnime, this->unk_194)) {
                Animation_MorphToPlayOnce(&this->skelAnime, &D_06008EB8, 0.0f);
                this->unk_398 = 0;
                this->unk_194 = 1000.0f;
            }
            this->unk_3A4.x = 250.0f;
            this->unk_3A4.y = 1150.0f;
            this->unk_3A4.z = 0.0f;
            this->unk_3B0.x = this->unk_1B8.x;
            this->unk_3B0.y = this->unk_1B8.y;
            this->unk_3B0.z = this->unk_1B8.z;
            if ((this->unk_398 < 0x3E8) && ((this->unk_398 & 0xF) == 0)) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_SWORD);
            }
            if (this->unk_398 == 0x28) {
                this->unk_39C = 9;
                this->unk_398 = 0;
                D_8090EB2C->unk_3C8 = 0xB;
                func_8010B680(globalCtx, 0x70D9, NULL);
                this->unk_336 = 0;
                globalCtx->envCtx.unk_D8 = 0.0f;
            }
            break;
        case 9:
            this->unk_339 = 0x18;
            this->unk_3A4.x = 330.0f;
            this->unk_3A4.y = 1120.0f;
            this->unk_3A4.z = -150.0f;
            this->unk_3B0.x = D_8090EB2C->actor.world.pos.x;
            this->unk_3B0.y = D_8090EB2C->actor.world.pos.y + 40.0f;
            this->unk_3B0.z = D_8090EB2C->actor.world.pos.z;
            if (this->unk_398 >= 0x3D) {
                this->unk_39C = 0xA;
                this->unk_398 = 0;
                this->unk_410.x = 0.0f;
            }
            break;
        case 10:
            this->unk_339 = 0x18;
            Math_ApproachF(&this->unk_3A4.x, 290.0f, 0.05f, this->unk_410.x);
            Math_ApproachF(&this->unk_3A4.y, 1130.0f, 0.05f, this->unk_410.x * 0.25f);
            Math_ApproachF(&this->unk_3A4.z, -260.0f, 0.05f, this->unk_410.x * 1.25f);
            if ((this->unk_398 >= 0x28) && (this->unk_398 < 0x6F)) {
                Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.02f);
                Math_ApproachF(&this->unk_384, 10.0f, 0.1f, 0.2f);
                Audio_PlayActorSound2(&D_8090EB2C->actor, NA_SE_EV_GOD_LIGHTBALL_2 - SFX_FLAG);
            } else {
                Math_ApproachZeroF(&this->unk_384, 1.0f, 0.2f);
            }
            if (this->unk_398 >= 0x83) {
                Math_ApproachF(&this->unk_3B0.y, (D_8090EB2C->actor.world.pos.y + 40.0f + 10.0f) - 20.0f, 0.1f,
                               this->unk_410.x);
            } else {
                Math_ApproachF(&this->unk_3B0.y, D_8090EB2C->actor.world.pos.y + 40.0f + 10.0f, 0.05f,
                               this->unk_410.x * 0.25f);
            }
            Math_ApproachF(&this->unk_410.x, 1.0f, 1.0f, 0.01f);
            if (this->unk_398 == 0xA) {
                D_8090EB2C->unk_3C8 = 0xC;
            }
            if (this->unk_398 == 0x6E) {
                D_8090EB2C->unk_3C8 = 0xD;
            }
            if (this->unk_398 == 0x8C) {
                Audio_PlayActorSound2(&D_8090EB2C->actor, NA_SE_EV_HUMAN_BOUND);
            }
            if (this->unk_398 < 0xA0) {
                break;
            }
        case 20:
            globalCtx->nextEntranceIndex = 0x6B;
            gSaveContext.nextCutsceneIndex = 0xFFF2;
            globalCtx->sceneLoadFlag = 0x14;
            globalCtx->fadeTransition = 3;
            globalCtx->linkAgeOnLoad = 1;
            break;
    }

    if (this->unk_39E != 0) {
        Gameplay_CameraSetAtEyeUp(globalCtx, this->unk_39E, &this->unk_3B0, &this->unk_3A4, &this->unk_3BC);
    }

    switch (this->unk_1AC) {
        case 0:
            if (Animation_OnFrame(&this->skelAnime, this->unk_194)) {
                Animation_MorphToLoop(&this->skelAnime, &D_06034278, 0.0f);
                this->unk_1AC = 1;
            }
            break;
        case 1:
            if ((this->unk_39C < 7) && ((globalCtx->gameplayFrames & 0x1F) == 0)) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_BREATH);
            }
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_8090120C.s")
#endif

void func_80902348(BossGanon2* this, GlobalContext* globalCtx) {
    Player* player;
    f32 temp_f2;
    f32 temp_f12;
    s16 i;
    s16 j;
    s16 phi_v0_2;

    if (this->unk_316 == 0) {
        for (i = 0; i < 2; i++) {
            if (this->unk_444.elements[i].info.bumperFlags & 2) {
                this->unk_444.elements[i].info.bumperFlags &= ~2;
            } else if (this->unk_444.elements[i].info.toucherFlags & 2) {
                this->unk_444.elements[i].info.toucherFlags &= ~2;

                if (this->unk_312 == 1) {
                    phi_v0_2 = 0x1800;
                } else {
                    phi_v0_2 = 0;
                }

                func_8002F6D4(globalCtx, &this->actor, 15.0f, this->actor.yawTowardsPlayer + phi_v0_2, 2.0f, 0);
                D_8090EB2C->unk_3C8 = 8;
                this->unk_316 = 0xA;
                break;
            }
        }
    }

    if (this->unk_324 > 0.0f) {
        player = PLAYER;
        temp_f2 = -200.0f - player->actor.world.pos.x;
        temp_f12 = -200.0f - player->actor.world.pos.z;

        if (sqrtf(SQ(temp_f2) + SQ(temp_f12)) > 784.0f) {
            for (j = 0; j < 18; j++) {
                player->flameTimers[j] = Rand_S16Offset(0, 200);
            }

            player->isBurning = true;
            func_8002F6D4(globalCtx, &this->actor, 10.0f, Math_Atan2S(temp_f12, temp_f2), 0.0f, 0x10);
            D_8090EB2C->unk_3C8 = 8;
        }
    }
}

#ifdef NON_MATCHING
void func_80902524(BossGanon2* this, GlobalContext* globalCtx) {
    s32 temp_a0_2;
    s8 temp_v0_4;
    s8 temp_v0_6;
    u32 temp_a0;
    u8 temp_a1;
    u8 temp_v1_2;
    BossGanon2ActionFunc temp_v0_3;
    ColliderInfo* temp_a3;
    s16 i;
    u8 phi_v1_2;

    osSyncPrintf("this->no_hit_time %d\n", this->unk_316);
    if (this->unk_316 != 0 || ((this->unk_334 == 0) && (this->actionFunc == func_80900890))) {
        for (i = 0; i < 16; i++) {
            this->unk_424.elements[i].info.bumperFlags &= ~2;
        }
    }

    osSyncPrintf("this->look_on %d\n", this->unk_313);
    if (this->unk_313 != 0) {
        if (this->actionFunc != func_808FFFE0) {
            if (this->unk_424.elements[0].info.bumperFlags & 2) {
                this->unk_424.elements[0].info.bumperFlags &= ~2;
                temp_a0 = this->unk_424.elements[0].info.acHitInfo->toucher.dmgFlags;
                if ((temp_a0 & 0x2000) && (this->actionFunc != func_80900890)) {
                    func_809000A0(this, globalCtx);
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_HIT_THUNDER);
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_DAMAGE);
                    func_800F8D04(NA_SE_EN_MGANON_UNARI);
                } else if ((this->actionFunc == func_80900890) && (temp_a0 & 0x9000200)) {
                    this->unk_316 = 0x3C;
                    this->unk_342 = 5;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_DAMAGE);
                    func_800F8D04(NA_SE_EN_MGANON_UNARI);
                    this->actor.colChkInfo.health -= 2;
                    temp_v0_4 = this->actor.colChkInfo.health;
                    if (temp_v0_4 < 0x15 && this->unk_334 == 0) {
                        func_80900818(this, globalCtx);
                    } else {
                        if (temp_v0_4 <= 0) {
                            func_80901020(this, globalCtx);
                        } else {
                            func_80900210(this, globalCtx);
                        }
                    }
                } else if (this->actionFunc != func_80900890) {
                    func_808FFF90(this, globalCtx);
                    Audio_PlayActorSound2(&this->actor, NA_SE_IT_HOOKSHOT_REFLECT);
                }
            }
        }
    } else {
        temp_v1_2 = this->unk_424.elements[15].info.bumperFlags;
        if (temp_v1_2 & 2) {
            this->unk_424.elements[15].info.bumperFlags &= ~2;
            this->unk_316 = 0x3C;
            this->unk_344 = 0x32;
            this->unk_342 = 5;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_MGANON_DAMAGE);
            func_800F8D04(NA_SE_EN_MGANON_UNARI);
            temp_a3 = this->unk_424.elements[0].info.acHitInfo;
            temp_a0_2 = temp_a3->toucher.dmgFlags;
            phi_v1_2 = 1;
            if (temp_a0_2 & 0x9000200) {
                if (temp_a0_2 & 0x8000000) {
                    phi_v1_2 = 4;
                } else {
                    phi_v1_2 = 2;
                }
            }
            this->actor.colChkInfo.health -= phi_v1_2;
            temp_v0_6 = this->actor.colChkInfo.health;
            if ((temp_v0_6 < 0x15) && (this->unk_334 == 0)) {
                func_80900818(this, globalCtx);
            } else if ((temp_v0_6 <= 0) && (phi_v1_2 >= 2)) {
                func_80901020(this, globalCtx);
            } else {
                if (temp_v0_6 <= 0) {
                    this->actor.colChkInfo.health = 1;
                }
                func_80900210(this, globalCtx);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80902524.s")
#endif

void BossGanon2_Update(Actor* thisx, GlobalContext* globalCtx) {
    BossGanon2* this = THIS;
    s32 pad;
    s16 i;
    f32 phi_f2;
    u16 i2;
    Vec3f sp58;
    Vec3f sp4C;
    f32 angle;
    f32 sp44;

    if ((this->unk_337 == 0) || (this->unk_337 == 2)) {
        func_808FD108(this, globalCtx, OBJECT_GANON_ANIME3, 0);
    } else {
        func_808FD108(this, globalCtx, OBJECT_GANON2, 0);
        Math_ApproachZeroF(&this->unk_30C, 1.0f, 0.5f);
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
    this->actor.shape.rot = this->actor.world.rot;
    if (this->unk_335 != 0) {
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 60.0f, 60.0f, 100.0f, 5);
        if (this->actor.bgCheckFlags & 1) {
            if (this->actor.velocity.y < -5.0f) {
                func_80033E88(&this->actor, globalCtx, 5, 20);
                func_80078884(NA_SE_IT_BOMB_EXPLOSION);
            }
            this->actor.velocity.y = 0.0f;
        }
    }
    if (((this->unk_19C & 0x1F) == 0) && (Rand_ZeroOne() < 0.3f)) {
        this->unk_318 = 4;
    }
    this->unk_310 = D_80907074[this->unk_318];
    if (this->unk_318 != 0) {
        this->unk_318--;
    }
    this->unk_1B0 = (Math_SinS(this->unk_19C * 0x2AAA) * 64.0f) + 191.0f;
    if (this->unk_344 != 0) {
        this->unk_344--;
        Math_ApproachF(&this->unk_360.x, 5000.0f, 0.5f, 3000.0f);
        Math_ApproachF(&this->unk_370.x, 5500.0f, 0.5f, 3000.0f);
        Math_ApproachF(&this->unk_360.z, 8000.0f, 0.1f, 4000.0f);
        Math_ApproachF(&this->unk_370.z, 8000.0f, 0.1f, 4000.0f);
        Math_ApproachS(&this->unk_346, 0xFA0, 0xA, 0x7D0);
    } else {
        this->unk_360.y = 14000.0f;
        Math_ApproachF(&this->unk_360.x, 2000.0f, 0.1f, 100.0f);
        this->unk_370.y = 12000.0f;
        Math_ApproachF(&this->unk_370.x, 1500.0f, 0.1f, 100.0f);
        if ((this->actionFunc == func_808FFEBC) || (this->actionFunc == func_808FFFE0) ||
            (this->actionFunc == func_80900104)) {
            Math_ApproachF(&this->unk_360.z, 1000.0f, 0.1f, 100.0f);
            Math_ApproachF(&this->unk_370.z, 1000.0f, 0.1f, 100.0f);
            Math_ApproachS(&this->unk_346, -0xFA0, 0xA, 0x64);
        } else {
            Math_ApproachF(&this->unk_360.z, 5000.0f, 0.1f, 200.0f);
            Math_ApproachF(&this->unk_370.z, 5000.0f, 0.1f, 200.0f);
            Math_ApproachS(&this->unk_346, 0, 0xA, 0x64);
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

        this->unk_348[i] = Math_SinS(((s16)this->unk_35C + (i * (s16)this->unk_360.y))) * phi_f2 * this->unk_360.z;
        this->unk_352[i] = Math_SinS(((s16)this->unk_36C + (i * (s16)this->unk_370.y))) * phi_f2 * this->unk_370.z;
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
            this->unk_332 = (s16)Rand_ZeroFloat(30.0f) + 8;
        } else {
            this->unk_332 = (s16)Rand_ZeroFloat(60.0f) + 0xA;
        }
        this->unk_339 = 0;
        globalCtx->envCtx.unk_BE = 0;
        globalCtx->envCtx.unk_BD = (s8)Rand_ZeroFloat(1.9f) + 1;
        globalCtx->envCtx.unk_D8 = 1.0f;
        D_8090EB20.y = 0.0f;
        D_8090EB20.x = D_8090EB20.y;
        D_8090EB20.z = D_8090EB20.x;
        if (Rand_ZeroOne() < 0.5f) {
            D_8090EB20.z = Rand_ZeroFloat(1000.0f);
        }
        func_80078914(&D_8090EB20, NA_SE_EV_LIGHTNING);
        this->unk_328 = 0xFF;
        this->unk_330 = 5;
        this->unk_32C = 0.0f;
        this->unk_340 = (s16)Rand_ZeroFloat(10000.0f);
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
            Math_ApproachZeroF(&globalCtx->envCtx.unk_D8, 1.0f, 0.1f);
            break;
        case 3:
            globalCtx->envCtx.unk_BE = 3;
            globalCtx->envCtx.unk_BD = 4;
            Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.0125f);
            break;
        case 4:
            globalCtx->envCtx.unk_BE = 5;
            globalCtx->envCtx.unk_BD = 6;
            Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.0125f);
            break;
        case 5:
            globalCtx->envCtx.unk_BE = 6;
            globalCtx->envCtx.unk_BD = 7;
            Math_ApproachF(&this->unk_33C, 0.69f, 1.0f, 0.05f);
            globalCtx->envCtx.unk_D8 =
                (Math_SinS(globalCtx->gameplayFrames * 0x5000) * 0.15f) + (0.15f + this->unk_33C);
            break;
        case 55:
            globalCtx->envCtx.unk_BE = 2;
            globalCtx->envCtx.unk_BD = 0;
            Math_ApproachZeroF(&globalCtx->envCtx.unk_D8, 1.0f, 0.05f);
            break;
        case 6:
            globalCtx->envCtx.unk_BE = 2;
            globalCtx->envCtx.unk_BD = 8;
            Math_ApproachF(&this->unk_33C, 0.69f, 1.0f, 0.05f);
            globalCtx->envCtx.unk_D8 =
                (Math_SinS(globalCtx->gameplayFrames * 0x7000) * 0.15f) + (0.15f + this->unk_33C);
            break;
        case 7:
            globalCtx->envCtx.unk_BE = 0;
            globalCtx->envCtx.unk_BD = 8;
            Math_ApproachZeroF(&globalCtx->envCtx.unk_D8, 1.0f, 0.02f);
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

        for (i2 = 0; i2 < 100; i2++) {
            angle = Rand_ZeroFloat(2 * M_PI);
            sp44 = Rand_ZeroFloat(40.0f) + 10.0f;
            sp58 = this->actor.world.pos;
            sp58.y = 1200.0f;
            sp4C.x = cosf(angle) * sp44;
            sp4C.z = sinf(angle) * sp44;
            sp4C.y = Rand_ZeroFloat(15.0f) + 15.0f;
            sp58.x += sp4C.x * 10.0f * 0.1f;
            sp58.z += sp4C.z * 10.0f * 0.1f;
            func_808FD27C(globalCtx, &sp58, &sp4C, Rand_ZeroFloat(0.3f) + 0.2f);
        }
    }
    this->unk_388 += 0.15f;
    func_80905DA8(this, globalCtx);
}

void func_809034E4(Vec3f* arg0, Vec3f* arg1);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_809034E4.s")

void func_80903F38(BossGanon2* this, GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5083);

    if (this->unk_312 != 0) {
        func_809034E4(&this->unk_200, &this->unk_20C);
        D_80907080 = 0xFF;
    }

    if (D_80910638 >= 4) {
        gSPSegment(
            POLY_XLU_DISP++, 0x08,
            Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 32, 1, globalCtx->gameplayFrames * 18, 0, 32, 32));
        gDPPipeSync(POLY_XLU_DISP++);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, D_80907080);
        Matrix_Translate(0.0f, 0.0f, 0.0f, MTXMODE_NEW);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5117),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_80908AC0);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5122);
}

void func_80904108(BossGanon2* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80904108.s")

void func_80904340(BossGanon2* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80904340.s")

void func_8090464C(BossGanon2* this, GlobalContext* globalCtx) {
    s32 pad;

    if (this->unk_1B4 > 0.0f) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5264);

        Matrix_Push();
        gDPPipeSync(POLY_XLU_DISP++);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 170, (s16)this->unk_1B4);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 200, 0, 128);
        Matrix_Translate(this->unk_1B8.x, this->unk_1B8.y, this->unk_1B8.z, MTXMODE_NEW);
        func_800D1FD4(&globalCtx->mf_11DA0);
        Matrix_RotateZ(-0.2f, MTXMODE_APPLY);
        Matrix_Scale(0.6f, 0.6f, 1.0f, MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5290),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_80909C18));
        Matrix_Pop();

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5293);
    }
}

s32 BossGanon2_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                void* thisx) {
    s32 pad;
    BossGanon2* this = thisx;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5355);

    if (limbIndex == 15) {
        rot->y += this->unk_31A;
        rot->z += this->unk_31C;
    }

    if (limbIndex >= 42) {
        rot->x += this->unk_2F4[limbIndex] + this->unk_346;
        rot->y += this->unk_2FE[limbIndex];

        if (this->unk_342 & 1) {
            gDPSetEnvColor(POLY_OPA_DISP++, 255, 0, 0, 255);
        } else {
            // Terrible and probably fake.
            gDPSetEnvColor(POLY_OPA_DISP++, (s16)this->unk_1B0, (s16)this->unk_1B0, (s16)(*this).unk_1B0, 255);
        }
    }

    if ((limbIndex == 7) || (limbIndex == 13) || (limbIndex == 33) || (limbIndex == 34)) {
        *dList = NULL;
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5431);
    return 0;
}

void BossGanon2_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    s8 pad;
    s8 temp_v0;
    BossGanon2* this = thisx;
    Vec3f sp4C;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5459);

    D_80907120.z = 17000.0f;
    D_8090712C.z = 3000.0f;

    if (D_809070CC[limbIndex] >= 0) {
        Matrix_MultVec3f(&D_80906D60, &this->unk_234[D_809070CC[limbIndex]]);
    }

    if (limbIndex == 15) {
        Matrix_MultVec3f(&D_80906D60, &this->unk_1B8);
    } else if (limbIndex == 3) {
        Matrix_MultVec3f(&D_80907108, &this->unk_1F4);
    } else if (limbIndex == 9) {
        Matrix_MultVec3f(&D_80907114, &this->unk_1E8);
    } else if (limbIndex == 38) {
        Matrix_MultVec3f(&D_80906D60, &this->unk_1DC);
    } else if (limbIndex == 41) {
        Matrix_MultVec3f(&D_80906D60, &this->unk_1D0);
    } else if (limbIndex == 45) {
        Matrix_MultVec3f(&D_80907138, &this->unk_1C4);
    }

    temp_v0 = D_8090709C[limbIndex];
    if (temp_v0 >= 0) {
        Matrix_MultVec3f(&D_80906D60, &sp4C);
        func_808FD080(temp_v0, &this->unk_424, &sp4C);
    }

    if ((limbIndex == 7) || (limbIndex == 0xD)) {
        Matrix_Push();
        Matrix_Scale(this->unk_224, this->unk_224, this->unk_224, MTXMODE_APPLY);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5522),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, *dList);
        Matrix_Pop();
    } else if ((limbIndex == 33) || (limbIndex == 34)) {
        Matrix_Push();
        Matrix_Scale(this->unk_228, this->unk_228, this->unk_228, MTXMODE_APPLY);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5533),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, *dList);
        Matrix_Pop();
    }

    if (*dList != NULL) {
        if ((limbIndex == 7) && (this->unk_312 == 1)) {
            Matrix_MultVec3f(&D_809070FC, &this->unk_218);
            func_808FD080(0, &this->unk_444, &this->unk_218);
            Matrix_MultVec3f(&D_80907120, &this->unk_200);
            Matrix_MultVec3f(&D_8090712C, &this->unk_20C);
        } else if ((limbIndex == 13) && (this->unk_312 == 2)) {
            Matrix_MultVec3f(&D_809070FC, &this->unk_218);
            func_808FD080(1, &this->unk_444, &this->unk_218);
            Matrix_MultVec3f(&D_80907120, &this->unk_200);
            Matrix_MultVec3f(&D_8090712C, &this->unk_20C);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5566);
}

void func_80904D88(BossGanon2* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 i;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5575);

    if (this->unk_30C > 0.0f) {
        func_80093D84(globalCtx->state.gfxCtx);
        if (this->unk_380 > 0.0f) {
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 170, 255);
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 200, 0, 0);
        } else {
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 255);
            gDPSetEnvColor(POLY_XLU_DISP++, 100, 255, 255, 0);
        }
        gSPDisplayList(POLY_XLU_DISP++, D_80908248);

        for (i = 0; i < 15; i++) {
            Matrix_Translate(this->unk_234[i].x, this->unk_234[i].y, this->unk_234[i].z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(this->unk_30C, this->unk_30C, this->unk_30C, MTXMODE_APPLY);
            Matrix_RotateZ(Rand_CenteredFloat(M_PI), MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5618),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_809082B8);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5622);
}

void func_80904FC8(BossGanon2* this, GlobalContext* globalCtx) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5632);

    if (this->unk_384 > 0.0f) {
        func_80093D84(globalCtx->state.gfxCtx);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 200);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 200, 0, 0);
        gSPDisplayList(POLY_XLU_DISP++, D_80908248);
        Matrix_Translate(D_8090EB2C->actor.world.pos.x, D_8090EB2C->actor.world.pos.y + 80.0f,
                         D_8090EB2C->actor.world.pos.z, MTXMODE_NEW);
        func_800D1FD4(&globalCtx->mf_11DA0);
        Matrix_Scale(this->unk_384, this->unk_384, this->unk_384, MTXMODE_APPLY);
        Matrix_RotateZ(this->unk_388, MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5661),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_809082B8));
        Matrix_RotateZ(this->unk_388 * -2.0f, MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5664),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_809082B8));
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5667);
}

void func_8090523C(BossGanon2* this, GlobalContext* globalCtx) {
    Player* player;
    f32 phi_f20;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5675);

    if (this->unk_38C > 0.0f) {
        s8 i;

        player = PLAYER;
        func_80093D84(globalCtx->state.gfxCtx);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, (s16)this->unk_38C);
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 255, 255, 0);
        gSPDisplayList(POLY_XLU_DISP++, D_80908248);

        for (i = 0; i < 11; i++) {
            Matrix_Mult(&player->mf_9E0, MTXMODE_NEW);
            Matrix_Translate((i * 250.0f) + 900.0f, 350.0f, 0.0f, MTXMODE_APPLY);

            if (i < 7) {
                phi_f20 = 1.0f;
            } else {
                phi_f20 = 1.0f - ((i - 7) * 0.2333333f);
            }

            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(200.0f * phi_f20, 200.0f * phi_f20, 1.0f, MTXMODE_APPLY);
            Matrix_RotateZ(Rand_ZeroFloat(2.0f * M_PI), MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5721),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_809082B8));
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5725);
}

void BossGanon2_PostLimbDraw2(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    s8 temp_v1 = D_80907144[limbIndex];
    BossGanon2* this = thisx;

    if (temp_v1 >= 0) {
        Matrix_MultVec3f(&D_80906D60, &this->unk_234[temp_v1]);
    }
    if (limbIndex == 11) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5749);

        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5752),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0600BE90));

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5754);
    } else if (limbIndex == 10) {
        Matrix_MultVec3f(&D_80907164, &this->unk_1B8);
    }
}

void func_80905674(BossGanon2* this, GlobalContext* globalCtx) {
    s32 pad;

    if (this->unk_380 > 0.0f) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5772);

        Matrix_Push();
        gDPPipeSync(POLY_XLU_DISP++);
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, this->unk_19C * -8, 0, 32, 64, 1, this->unk_19C * -4,
                                    this->unk_19C * -8, 32, 32));
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 170, (s16)this->unk_37C);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 200, 0, 128);
        Matrix_Translate(D_8090EB2C->actor.world.pos.x + 100.0f, D_8090EB2C->actor.world.pos.y + 35.0f + 7.0f,
                         D_8090EB2C->actor.world.pos.z - 100.0f, MTXMODE_NEW);
        Matrix_RotateY(-M_PI / 4.0f, MTXMODE_APPLY);
        Matrix_Scale(0.040000003f, 0.040000003f, this->unk_380, MTXMODE_APPLY);
        Matrix_RotateX(M_PI / 2.0f, MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5814),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_8090BB80));
        Matrix_Pop();

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5817);
    }
}

void BossGanon2_Draw(Actor* thisx, GlobalContext* globalCtx) {
    u32* tex = Graph_Alloc(globalCtx->state.gfxCtx, 4096);
    BossGanon2* this = THIS;
    s16 i;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5840);

    func_80093D18(globalCtx->state.gfxCtx);
    func_80093D84(globalCtx->state.gfxCtx);

    switch (this->unk_337) {
        case 0:
            func_808FD108(this, globalCtx, OBJECT_GANON, 1);
            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_0600A8E0));
            gSPSegment(POLY_XLU_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(D_0600A8E0));
            SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                  this->skelAnime.dListCount, NULL, BossGanon2_PostLimbDraw2, this);
            break;
        case 1:
        case 2:
            func_808FD108(this, globalCtx, OBJECT_GANON2, 1);
            gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80907170[this->unk_310]));
            func_808FD080(0, &this->unk_444, &D_8090717C);
            func_808FD080(1, &this->unk_444, &D_8090717C);
            this->unk_218 = D_8090717C;
            if (this->unk_342 & 1) {
                POLY_OPA_DISP = Gfx_SetFog(POLY_OPA_DISP, 0xFF, 0, 0, 0xFF, 0x384, 0x44B);
            }
            Matrix_Translate(0.0f, -4000.0f, 4000.0f, MTXMODE_APPLY);
            Matrix_RotateX(this->unk_394, MTXMODE_APPLY);
            Matrix_Translate(0.0f, 4000.0f, -4000.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5910),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                  this->skelAnime.dListCount, BossGanon2_OverrideLimbDraw, BossGanon2_PostLimbDraw,
                                  this);
            POLY_OPA_DISP = func_800BC8A0(globalCtx, POLY_OPA_DISP);
            func_809069F8(tex, this, globalCtx);
            func_80906AB0(tex, this, globalCtx);
            break;
    }

    func_808FD108(this, globalCtx, OBJECT_GANON2, 1);
    func_80904340(this, globalCtx);
    func_80904108(this, globalCtx);
    func_80904D88(this, globalCtx);
    func_8090464C(this, globalCtx);
    func_80905674(this, globalCtx);
    func_80904FC8(this, globalCtx);
    func_8090523C(this, globalCtx);

    if ((this->unk_312 != 0) || (D_80907080 != 0)) {
        func_80903F38(this, globalCtx);
        if (this->unk_312 == 0) {
            s32 pad;

            D_80907080 -= 40;
            if (D_80907080 <= 0) {
                D_80907080 = 0;
            }
        }

        D_80910638++;
    } else {
        for (i = 0; i < 3; i++) {
            D_809105D8[i] = this->unk_200;
            D_80910608[i] = this->unk_20C;
        }

        D_80910638 = 0;
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 5983);

    func_809060E8(globalCtx);
}

void func_80905DA8(BossGanon2* this, GlobalContext* globalCtx) {
    s32 pad[5];
    Player* player;
    BossGanon2Effect* effect;
    Vec3f sp78;
    s16 i;

    player = PLAYER;
    effect = globalCtx->unk_11E10;

    for (i = 0; i < ARRAY_COUNT(D_8090EB38); i++, effect++) {
        if (effect->type != 0) {
            effect->position.x += effect->velocity.x;
            effect->position.y += effect->velocity.y;
            effect->position.z += effect->velocity.z;
            effect->unk_01++;
            effect->velocity.x += effect->accel.x;
            effect->velocity.y += effect->accel.y;
            effect->velocity.z += effect->accel.z;
            if (effect->type == 1) {
                if (effect->unk_2E == 0) {
                    effect->unk_38.z += 1.0f;
                    effect->unk_38.y = (2.0f * M_PI) / 5.0f;
                } else {
                    effect->unk_38.z = M_PI / 2.0f;
                    effect->unk_38.y = 0.0f;
                    if (effect->position.y <= 1098.0f) {
                        effect->position.y = 1098.0f;
                        if (effect->velocity.y < -10.0f) {
                            sp78 = effect->position;
                            sp78.y = 1086.0f;
                            func_80078884(NA_SE_IT_SHIELD_REFLECT_SW);
                            CollisionCheck_SpawnShieldParticlesMetal(globalCtx, &sp78);
                        }
                        effect->velocity.y = 0.0f;
                    }
                    if ((SQ(player->actor.world.pos.x - effect->position.x) +
                         SQ(player->actor.world.pos.z - effect->position.z)) < 625.0f) {
                        effect->type = 0;
                        this->unk_39C = 10;
                    }
                }
            } else if (effect->type == 2) {
                effect->unk_38.x += 0.1f;
                effect->unk_38.y += 0.4f;
                if ((sqrtf(SQ(-200.0f - effect->position.x) + SQ(-200.0f - effect->position.z)) < 1000.0f)) {
                    if (effect->position.y < 1186.0f) {
                        if (effect->unk_2E == 0) {
                            effect->unk_2E++;
                            effect->position.y = 1186.0f;
                            effect->velocity.x *= 0.75f;
                            effect->velocity.z *= 0.75f;
                            effect->velocity.y *= -0.2f;
                        } else {
                            effect->type = 0;
                        }
                    }
                } else if ((effect->position.y < 0.0f)) {
                    effect->type = 0;
                }
            }
        }
    }
}

void func_809060E8(GlobalContext* globalCtx) {
    s16 alpha;
    u8 spCD;
    BossGanon2Effect* effect;
    s16 i;
    BossGanon2Effect* effects;

    spCD = 0;
    effects = effect = globalCtx->unk_11E10;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 6086);

    func_80093D18(globalCtx->state.gfxCtx);

    for (i = 0; i < 1; i++) {
        if (effect->type == 1) {
            Vec3f spA0;
            f32 temp_f0;
            f32 angle;

            func_80093D84(globalCtx->state.gfxCtx);
            spA0.x = globalCtx->envCtx.unk_2A;
            spA0.y = globalCtx->envCtx.unk_2B;
            spA0.z = globalCtx->envCtx.unk_2C;
            func_8002EABC(&effect->position, &globalCtx->view.eye, &spA0, globalCtx->state.gfxCtx);
            Matrix_Translate(effect->position.x, effect->position.y, effect->position.z, MTXMODE_NEW);
            Matrix_Scale(0.03f, 0.03f, 0.03f, MTXMODE_APPLY);
            Matrix_RotateY(effect->unk_38.z, MTXMODE_APPLY);
            Matrix_RotateX(effect->unk_38.y, MTXMODE_APPLY);
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 6116),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(POLY_OPA_DISP++, 0x08,
                       Gfx_TexScroll(globalCtx->state.gfxCtx, 0, 0 - (globalCtx->gameplayFrames & 0x7F), 32, 32));
            gSPDisplayList(POLY_OPA_DISP++, D_8090D2E8);
            if ((globalCtx->envCtx.unk_BD == 1) || (globalCtx->envCtx.unk_BD == 2)) {
                alpha = (s16)(globalCtx->envCtx.unk_D8 * 150.0f) + 50;
                angle = M_PI / 5.0f;
            } else {
                alpha = 100;
                angle = M_PI / 2.0f;
            }
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 0, 0, alpha);
            temp_f0 = effect->position.y - 1098.0f;
            Matrix_Translate(effect->position.x + temp_f0, 1086.0f, (effect->position.z - 1.0f) + temp_f0, MTXMODE_NEW);
            Matrix_RotateY(angle, MTXMODE_APPLY);
            Matrix_Scale(1.0f, 0.0f, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 6155),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_8090C0C8);
        }
    }

    effect = effects;

    for (i = 0; i < 100; i++, effect++) {
        if (effect->type == 2) {
            if (spCD == 0) {
                func_808FD108(NULL, globalCtx, OBJECT_GEFF, MTXMODE_APPLY);
                spCD++;
            }
            Matrix_Translate(effect->position.x, effect->position.y, effect->position.z, MTXMODE_NEW);
            Matrix_Scale(effect->scale, effect->scale, effect->scale, MTXMODE_APPLY);
            Matrix_RotateY(effect->unk_38.z, MTXMODE_APPLY);
            Matrix_RotateX(effect->unk_38.y, MTXMODE_APPLY);
            Matrix_RotateZ(effect->unk_38.x, MTXMODE_APPLY);
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 6179),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, D_06000EA0);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 6185);
}

void func_80906538(BossGanon2* this, u32* tex, f32 arg2);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon2/func_80906538.s")

void func_809069F8(u32* tex, BossGanon2* this, GlobalContext* globalCtx) {
    s16 i;
    u32* p = tex;

    for (i = 0; i < 1024; i++, p++) {
        *p = 0;
    }

    Matrix_RotateX(1.0f, MTXMODE_NEW);

    for (i = 0; i < 6; i++) {
        func_80906538(this, tex, i / 5.0f);
    }
}

void func_80906AB0(u32* tex, BossGanon2* this, GlobalContext* globalCtx) {
    s32 pad;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s16 alpha;

    OPEN_DISPS(gfxCtx, "../z_boss_ganon2.c", 6430);

    func_80093D18(globalCtx->state.gfxCtx);

    if ((globalCtx->envCtx.unk_BD == 1) || (globalCtx->envCtx.unk_BD == 2)) {
        alpha = (s16)(globalCtx->envCtx.unk_D8 * 180.0f) + 30;
    } else {
        alpha = 120;
    }

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 0, 0, 0, alpha);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
    Matrix_Translate(this->actor.world.pos.x, this->actor.floorHeight, this->actor.world.pos.z - 20.0f, 0);
    Matrix_Scale(1.65f, 1.0f, 1.65f, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_ganon2.c", 6457),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_80908310);
    gDPSetTextureImage(POLY_OPA_DISP++, G_IM_FMT_I, G_IM_SIZ_16b, 1, tex);
    gDPSetTile(POLY_OPA_DISP++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 6,
               G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, 6, G_TX_NOLOD);
    gDPLoadSync(POLY_OPA_DISP++);
    gDPLoadBlock(POLY_OPA_DISP++, G_TX_LOADTILE, 0, 0, 2047, 256);
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetTile(POLY_OPA_DISP++, G_IM_FMT_I, G_IM_SIZ_8b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, 6,
               G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, 6, G_TX_NOLOD);
    gDPSetTileSize(POLY_OPA_DISP++, G_TX_RENDERTILE, 0, 0, 0x00FC, 0x00FC);
    gSPDisplayList(POLY_OPA_DISP++, D_80908330);

    CLOSE_DISPS(gfxCtx, "../z_boss_ganon2.c", 6479);
}
