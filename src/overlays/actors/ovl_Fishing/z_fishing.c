/*
 * File: z_fishing.c
 * Overlay: ovl_Fishing
 * Description: Fishing Pond man and Fish
 */

#include "z_fishing.h"

#include "overlays/actors/ovl_En_Kanban/z_en_kanban.h"
#include "objects/object_fish/object_fish.h"
#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((Fishing*)thisx)

void Fishing_Init(Actor* thisx, GlobalContext* globalCtx);
void Fishing_Destroy(Actor* thisx, GlobalContext* globalCtx);
void Fishing_Update(Actor* thisx, GlobalContext* globalCtx);
void func_80B7825C(Actor* thisx, GlobalContext* globalCtx);
void Fishing_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_80B7A278(Actor* thisx, GlobalContext* globalCtx);

typedef struct {
    /* 0x00 */ u8 unk_00;
    /* 0x02 */ Vec3s unk_02;
} struct_80B7A8D8; // size = 0x08

typedef struct {
    /* 0x00 */ u8 unk_00;
    /* 0x02 */ Vec3s unk_02;
    /* 0x08 */ u8 unk_08;
    /* 0x0C */ f32 unk_0C;
} struct_80B7AD40; // size = 0x10

typedef struct {
    /* 0x00 */ Vec3f unk_00;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ f32 unk_18;
    /* 0x1C */ f32 unk_1C;
    /* 0x20 */ f32 unk_20;
    /* 0x24 */ f32 unk_24;
    /* 0x28 */ s16 unk_28;
    /* 0x2C */ f32 unk_2C;
    /* 0x30 */ u8 unk_30;
    /* 0x32 */ s16 unk_32;
    /* 0x34 */ u8 unk_34;
    /* 0x38 */ f32 unk_38;
} struct_80B7FEF8; // size = 0x3C

typedef struct {
    /* 0x00 */ u8 unk_00;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ Vec3f unk_04;
    /* 0x10 */ Vec3f unk_10;
    /* 0x1C */ f32 unk_1C;
    /* 0x20 */ f32 unk_20;
    /* 0x24 */ f32 unk_24;
    /* 0x28 */ f32 unk_28;
    /* 0x2C */ f32 unk_2C;
    /* 0x30 */ f32 unk_30;
    /* 0x34 */ f32 unk_34;
    /* 0x38 */ f32 unk_38;
    /* 0x3C */ s16 unk_3C;
    /* 0x3E */ s16 unk_3E;
    /* 0x40 */ s16 unk_40;
    /* 0x42 */ s16 unk_42;
    /* 0x44 */ u8 unk_44;
} struct_80B81FC8; // size = 0x48

typedef struct {
    /* 0x00 */ Vec3f unk_00;
    /* 0x0C */ Vec3f unk_0C;
    /* 0x18 */ Vec3f unk_18;
    /* 0x24 */ u8 unk_24;
    /* 0x25 */ u8 unk_25;
    /* 0x26 */ char unk_26[0x04];
    /* 0x2A */ s16 unk_2A;
    /* 0x2C */ s16 unk_2C;
    /* 0x2E */ s16 unk_2E;
    /* 0x30 */ f32 unk_30;
    /* 0x34 */ f32 unk_34;
    /* 0x38 */ f32 unk_38;
    /* 0x3C */ f32 unk_3C;
} struct_80B830B8; // size = 0x40

const ActorInit Fishing_InitVars = {
    ACTOR_FISHING,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_FISH,
    sizeof(Fishing),
    (ActorFunc)Fishing_Init,
    (ActorFunc)Fishing_Destroy,
    (ActorFunc)Fishing_Update,
    (ActorFunc)Fishing_Draw,
};

static f32 D_80B7A650 = 0.0f;

static u8 D_80B7A654 = 0;

static f32 D_80B7A658 = 0.0f;

static Vec3f D_80B7A65C = { 0.0f, 0.0f, 0.0f };

static f32 D_80B7A668 = 0.0f;

static u8 D_80B7A66C = 0;

static f32 D_80B7A670 = 0.0f;

static u8 D_80B7A674 = true;

static u16 D_80B7A678 = 0;

static u8 D_80B7A67C = 0;

static s32 D_80B7A680 = 0;

static s16 D_80B7A684 = 0;

static u8 D_80B7A688 = 0;
static u8 D_80B7A68C = 0;
static u8 D_80B7A690 = 0;

static s16 D_80B7A694 = 0;

static Vec3f D_80B7A698 = { 500.0f, 500.0f, 0.0f };

static u8 D_80B7A6A4 = 0;

static f32 D_80B7A6A8 = 0.0f;
static f32 D_80B7A6AC = 0.0f;
static f32 D_80B7A6B0 = 0.0f;
static f32 D_80B7A6B4 = 0.0f;
static f32 D_80B7A6B8 = 0.0f;
static f32 D_80B7A6BC = 0.0f;
static f32 D_80B7A6C0 = 0.0f;

static s16 D_80B7A6C4 = 0;
static s16 D_80B7A6C8 = 0;

static u8 D_80B7A6CC = 0;
static u8 D_80B7A6D0 = 0;
static u8 D_80B7A6D4 = 0;

static ColliderJntSphElementInit D_80B7A6D8[12] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 30 }, 100 },
    },
    {
        {
            ELEMTYPE_UNK0,
            { 0xFFCFFFFF, 0x00, 0x10 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 30 }, 100 },
    },
};

static ColliderJntSphInit D_80B7A888 = {
    {
        COLTYPE_NONE,
        AT_TYPE_ENEMY,
        AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    12,
    D_80B7A6D8,
};

static f32 D_80B7A898 = 0.0f;

static Vec3f D_80B7A89C = { 0.0f, 0.0f, 0.0f };
static Vec3f D_80B7A8A8 = { 0.0f, 0.0f, 2000.0f };

static Fishing* D_80B7E070;
static u8 D_80B7E074;
static u8 D_80B7E075;
static u8 D_80B7E076;
static u8 D_80B7E077;
static f32 D_80B7E078;
static u8 D_80B7E07C;
static u8 D_80B7E07D;
static u8 D_80B7E07E;
static s16 D_80B7E080;
static u8 D_80B7E082;
static u16 D_80B7E084;
static u16 D_80B7E086;
static s8 D_80B7E088;
static Vec3f D_80B7E090;
static Vec3s D_80B7E09C;
static u8 D_80B7E0A2;
static s16 D_80B7E0A4;
static s16 D_80B7E0A6;
static Fishing* D_80B7E0A8;
static s16 D_80B7E0AC;
static s16 D_80B7E0AE;
static s16 D_80B7E0B0;
static s16 D_80B7E0B2;
static s16 D_80B7E0B4;
static u8 D_80B7E0B6;
static Vec3f D_80B7E0B8;
static Vec3f D_80B7E0C8;
static Vec3f D_80B7E0D8;
static Vec3f D_80B7E0E8;
static Vec3f D_80B7E0F8;
static f32 D_80B7E104;
static f32 D_80B7E108;
static f32 D_80B7E10C;
static f32 D_80B7E110;
static s8 D_80B7E114;
static s16 D_80B7E116;
static u8 D_80B7E118;
static f32 D_80B7E11C;
static u8 D_80B7E120;
static s16 D_80B7E122;
static u8 D_80B7E124;
static Vec3f D_80B7E128;
static f32 D_80B7E134;
static f32 D_80B7E138;
static s16 D_80B7E13C;
static f32 D_80B7E140;
static f32 D_80B7E144;
static f32 D_80B7E148;
static f32 D_80B7E14C;
static s16 D_80B7E150;
static f32 D_80B7E154;
static Vec3f D_80B7E158;
static Vec3f D_80B7E168[200];
static Vec3f D_80B7EAC8[200];
static Vec3f D_80B7F428[200];
static Vec3f D_80B7FD88[2];
static f32 D_80B7FDA0[2];
static u8 D_80B7FDA8;
static Vec3f D_80B7FDB0[20];
static s16 D_80B7FEA0;
static f32 D_80B7FEA4;
static Vec3f D_80B7FEA8;
static Vec3f D_80B7FEB8;
static s16 D_80B7FEC4;
static f32 D_80B7FEC8;
static f32 D_80B7FECC;
static f32 D_80B7FED0;
static Vec3f D_80B7FED8;
static f32 D_80B7FEE4;
static s32 D_80B7FEE8;
static s32 D_80B7FEEC;
static s32 D_80B7FEF0;
static struct_80B7FEF8 D_80B7FEF8[140];
static struct_80B81FC8 D_80B81FC8[60];
static f32 D_80B830A8;
static f32 D_80B830AC;
static f32 D_80B830B0;
static struct_80B830B8 D_80B830B8[130];
static Vec3f D_80B85138;

void func_80B699A0(s32 index, ColliderJntSph* collider, Vec3f* pos, f32 arg3) {
    collider->elements[index].dim.worldSphere.center.x = pos->x;
    collider->elements[index].dim.worldSphere.center.y = pos->y;
    collider->elements[index].dim.worldSphere.center.z = pos->z;
    collider->elements[index].dim.worldSphere.radius =
        collider->elements[index].dim.modelSphere.radius * collider->elements[index].dim.scale * arg3 * 1.6f;
}

void func_80B69A44(s32 arg0, s32 arg1, s32 arg2) {
    D_80B7FEE8 = arg0;
    D_80B7FEEC = arg1;
    D_80B7FEF0 = arg2;
}

f32 func_80B69A60(void) {
    f32 phi_f2;

    D_80B7FEE8 = (D_80B7FEE8 * 171) % 30269;
    D_80B7FEEC = (D_80B7FEEC * 172) % 30307;
    D_80B7FEF0 = (D_80B7FEF0 * 170) % 30323;

    phi_f2 = (D_80B7FEE8 / 30269.0f) + (D_80B7FEEC / 30307.0f) + (D_80B7FEF0 / 30323.0f);
    while (phi_f2 >= 1.0f) {
        phi_f2 -= 1.0f;
    }

    return fabsf(phi_f2);
}

s16 func_80B69B84(s16* arg0, s16 arg1, s16 arg2, s16 arg3) {
    s16 phi_t0;
    s16 phi_v0;

    phi_v0 = arg1 - *arg0;
    phi_t0 = phi_v0 / arg2;

    if (phi_t0 > arg3) {
        phi_t0 = arg3;
    }

    if (phi_t0 < -arg3) {
        phi_t0 = -arg3;
    }

    *arg0 += phi_t0;

    return phi_t0;
}

void func_80B69C2C(Vec3f* arg0, struct_80B830B8* effects, Vec3f* arg2, f32 arg3, f32 arg4, s16 arg5, s16 arg6) {
    s16 i;

    if ((arg0 == NULL) || (!(arg0->z > 500.0f) && !(arg0->z < 0.0f))) {
        for (i = 0; i < arg6; i++) {
            if (effects->unk_24 == 0) {
                effects->unk_24 = 1;
                effects->unk_00 = *arg2;
                effects->unk_0C = D_80B7A89C;
                effects->unk_18 = D_80B7A89C;
                effects->unk_30 = arg3 * 0.0025f;
                effects->unk_34 = arg4 * 0.0025f;

                if (arg3 > 300.0f) {
                    effects->unk_2A = 0;
                    effects->unk_2E = arg5;
                    effects->unk_2C = 0;
                    effects->unk_38 = (effects->unk_34 - effects->unk_30) * 0.05f;
                } else {
                    effects->unk_2A = arg5;
                    effects->unk_2C = 1;
                    effects->unk_38 = (effects->unk_34 - effects->unk_30) * 0.1f;
                }
                break;
            }

            effects++;
        }
    }
}

void func_80B69D88(Vec3f* arg0, struct_80B830B8* effects, Vec3f* arg2, Vec3f* arg3, f32 arg4) {
    s16 i;
    Vec3f sp20 = { 0.0f, -1.0f, 0.0f };

    if ((arg0 == NULL) || (!(arg0->z > 500.0f) && !(arg0->z < 0.0f))) {
        for (i = 0; i < 100; i++) {
            if ((effects->unk_24 == 0) || (effects->unk_24 == 5) || (effects->unk_24 == 7) || (effects->unk_24 == 8)) {
                effects->unk_24 = 2;
                effects->unk_00 = *arg2;
                effects->unk_0C = *arg3;
                effects->unk_18 = sp20;
                effects->unk_2A = 100 + (s16)Rand_ZeroFloat(100.0f);
                effects->unk_30 = arg4;
                break;
            }

            effects++;
        }
    }
}

void func_80B69ED0(Vec3f* arg0, struct_80B830B8* effects, Vec3f* arg2, f32 arg3) {
    s16 i;
    Vec3f sp20 = { 0.0f, 0.05f, 0.0f };

    if ((arg0 == NULL) || (!(arg0->z > 500.0f) && !(arg0->z < 0.0f))) {
        for (i = 0; i < 90; i++) {
            if (effects->unk_24 == 0) {
                effects->unk_24 = 3;
                effects->unk_00 = *arg2;
                effects->unk_0C = D_80B7A89C;
                effects->unk_18 = sp20;
                effects->unk_2A = 0xFF;
                effects->unk_25 = (s16)Rand_ZeroFloat(100.0f);
                effects->unk_30 = arg3;
                effects->unk_34 = 2.0f * arg3;
                break;
            }

            effects++;
        }
    }
}

void func_80B6A008(Vec3f* arg0, struct_80B830B8* effects, Vec3f* arg2, f32 arg3, u8 arg4) {
    s16 i;
    Vec3f sp20 = { 0.0f, 1.0f, 0.0f };

    if ((arg0 == NULL) || (!(arg0->z > 500.0f) && !(arg0->z < 0.0f))) {
        for (i = 0; i < 90; i++) {
            if (effects->unk_24 == 0) {
                effects->unk_24 = 4;
                effects->unk_00 = *arg2;
                effects->unk_0C = sp20;
                effects->unk_18 = D_80B7A89C;
                effects->unk_25 = (s16)Rand_ZeroFloat(100.0f);
                effects->unk_30 = arg3;
                effects->unk_2C = arg4;
                break;
            }

            effects++;
        }
    }
}

void func_80B6A138(struct_80B830B8* effects, Vec3f* arg1, Vec3f* arg2) {
    s16 i;
    Vec3f sp18;

    sp18.x = 0.0f;
    sp18.y = 0.0f;
    sp18.z = 300.0f;

    effects += 30;

    for (i = 30; i < 130; i++) {
        if (effects->unk_24 == 0) {
            effects->unk_24 = 5;
            effects->unk_00 = *arg1;
            effects->unk_18 = D_80B7A89C;
            effects->unk_34 = arg2->x;
            effects->unk_38 = arg2->y;
            effects->unk_3C = arg2->z;
            Matrix_RotateY(arg2->y, MTXMODE_NEW);
            Matrix_RotateX(arg2->x, MTXMODE_APPLY);
            Matrix_MultVec3f(&sp18, &effects->unk_0C);
            break;
        }

        effects++;
    }
}

static struct_80B7A8D8 D_80B7A8D8[] = {
    { 3, { 529, -53, -498 } },  { 3, { 461, -66, -480 } },  { 3, { 398, -73, -474 } },  { 3, { -226, -52, -691 } },
    { 3, { -300, -41, -710 } }, { 3, { -333, -50, -643 } }, { 3, { -387, -46, -632 } }, { 3, { -484, -43, -596 } },
    { 3, { -409, -57, -560 } }, { 4, { 444, -87, -322 } },  { 4, { 447, -91, -274 } },  { 4, { 395, -109, -189 } },
    { 1, { 617, -29, 646 } },   { 1, { 698, -26, 584 } },   { 1, { 711, -29, 501 } },   { 1, { 757, -28, 457 } },
    { 1, { 812, -29, 341 } },   { 1, { 856, -30, 235 } },   { 1, { 847, -31, 83 } },    { 1, { 900, -26, 119 } },
    { 2, { 861, -22, 137 } },   { 2, { 836, -22, 150 } },   { 2, { 829, -22, 200 } },   { 2, { 788, -22, 232 } },
    { 2, { 803, -22, 319 } },   { 2, { 756, -22, 348 } },   { 2, { 731, -22, 377 } },   { 2, { 700, -22, 392 } },
    { 2, { 706, -22, 351 } },   { 2, { 677, -22, 286 } },   { 2, { 691, -22, 250 } },   { 2, { 744, -22, 290 } },
    { 2, { 766, -22, 201 } },   { 2, { 781, -22, 128 } },   { 2, { 817, -22, 46 } },    { 2, { 857, -22, -50 } },
    { 2, { 724, -22, 110 } },   { 2, { 723, -22, 145 } },   { 2, { 728, -22, 202 } },   { 2, { 721, -22, 237 } },
    { 2, { 698, -22, 312 } },   { 2, { 660, -22, 349 } },   { 2, { 662, -22, 388 } },   { 2, { 667, -22, 432 } },
    { 2, { 732, -22, 429 } },   { 2, { 606, -22, 366 } },   { 2, { 604, -22, 286 } },   { 2, { 620, -22, 217 } },
    { 2, { 663, -22, 159 } },   { 2, { 682, -22, 73 } },    { 2, { 777, -22, 83 } },    { 2, { 766, -22, 158 } },
    { 1, { 1073, 0, -876 } },   { 1, { 970, 0, -853 } },    { 1, { 896, 0, -886 } },    { 1, { 646, -27, -651 } },
    { 1, { 597, -29, -657 } },  { 1, { 547, -32, -651 } },  { 1, { 690, -29, -546 } },  { 1, { 720, -29, -490 } },
    { 1, { -756, -30, -409 } }, { 1, { -688, -34, -458 } }, { 1, { -613, -34, -581 } }, { 2, { -593, -22, -479 } },
    { 2, { -602, -22, -421 } }, { 2, { -664, -22, -371 } }, { 2, { -708, -22, -316 } }, { 2, { -718, -22, -237 } },
    { 1, { -807, -36, -183 } }, { 1, { -856, -29, -259 } }, { 2, { -814, -22, -317 } }, { 2, { -759, -22, -384 } },
    { 2, { -718, -22, -441 } }, { 2, { -474, -22, -567 } }, { 2, { -519, -22, -517 } }, { 2, { -539, -22, -487 } },
    { 2, { -575, -22, -442 } }, { 2, { -594, -22, -525 } }, { 2, { -669, -22, -514 } }, { 2, { -653, -22, -456 } },
    { 1, { -663, -28, -606 } }, { 1, { -708, -26, -567 } }, { 1, { -739, -27, -506 } }, { 1, { -752, -28, -464 } },
    { 1, { -709, -29, -513 } }, { 2, { -544, -22, -436 } }, { 2, { -559, -22, -397 } }, { 2, { -616, -22, -353 } },
    { 2, { -712, -22, -368 } }, { 2, { -678, -22, -403 } }, { 2, { -664, -22, -273 } }, { 2, { -630, -22, -276 } },
    { 2, { -579, -22, -311 } }, { 2, { -588, -22, -351 } }, { 2, { -555, -22, -534 } }, { 2, { -547, -22, -567 } },
    { 2, { -592, -22, -571 } }, { 2, { -541, -22, -610 } }, { 2, { -476, -22, -629 } }, { 2, { -439, -22, -598 } },
    { 2, { -412, -22, -550 } }, { 2, { -411, -22, -606 } }, { 2, { -370, -22, -634 } }, { 2, { -352, -22, -662 } },
    { 2, { -413, -22, -641 } }, { 2, { -488, -22, -666 } }, { 2, { -578, -22, -656 } }, { 2, { -560, -22, -640 } },
    { 2, { -531, -22, -654 } }, { 2, { -451, -22, -669 } }, { 2, { -439, -22, -699 } }, { 2, { -482, -22, -719 } },
    { 2, { -524, -22, -720 } }, { 2, { -569, -22, -714 } }, { 1, { -520, -27, -727 } }, { 1, { -572, -28, -686 } },
    { 1, { -588, -32, -631 } }, { 1, { -622, -34, -571 } }, { 1, { -628, -36, -510 } }, { 1, { -655, -36, -466 } },
    { 1, { -655, -41, -393 } }, { 1, { -661, -47, -328 } }, { 1, { -723, -40, -287 } }, { 1, { -756, -33, -349 } },
    { 1, { -755, -43, -210 } }, { 2, { -770, -22, -281 } }, { 2, { -750, -22, -313 } }, { 2, { -736, -22, -341 } },
    { 2, { -620, -22, -418 } }, { 2, { -601, -22, -371 } }, { 2, { -635, -22, -383 } }, { 2, { -627, -22, -311 } },
    { 2, { -665, -22, -327 } }, { 2, { -524, -22, -537 } }, { 2, { -514, -22, -579 } }, { 2, { -512, -22, -623 } },
    { 2, { -576, -22, -582 } }, { 2, { -600, -22, -608 } }, { 2, { -657, -22, -531 } }, { 2, { -641, -22, -547 } },
    { 35, { 0, 0, 0 } },
};

void func_80B6A22C(Fishing* this, GlobalContext* globalCtx) {
    struct_80B7FEF8* phi_s0 = &D_80B7FEF8[0];
    Vec3f sp80;
    s16 i;

    func_80B69A44(1, 29100, 9786);

    for (i = 0; i < 140; i++) {
        if (D_80B7A8D8[i].unk_00 == 35) {
            break;
        }

        phi_s0->unk_30 = D_80B7A8D8[i].unk_00;
        phi_s0->unk_00.x = D_80B7A8D8[i].unk_02.x;
        phi_s0->unk_00.y = D_80B7A8D8[i].unk_02.y;
        phi_s0->unk_00.z = D_80B7A8D8[i].unk_02.z;
        phi_s0->unk_0C = 0.0f;
        phi_s0->unk_14 = 0.0f;

        phi_s0->unk_32 = Rand_ZeroFloat(100.0f);
        phi_s0->unk_38 = 800.0f;

        if (phi_s0->unk_30 == 1) {
            phi_s0->unk_24 = (func_80B69A60() * 0.25f) + 0.75f;
            phi_s0->unk_14 = Rand_ZeroFloat(6.2831855f);
            if (D_80B7E075 == 1) {
                phi_s0->unk_24 *= 0.6f;
            }
            phi_s0->unk_38 = 1200.0f;
        } else if (phi_s0->unk_30 == 4) {
            phi_s0->unk_24 = 0.08f;
            phi_s0->unk_38 = 1200.0f;
            sp80 = phi_s0->unk_00;
            sp80.y += 50.0f;
            func_80B699A0(i, &D_80B7E070->collider, &sp80, phi_s0->unk_24 * 3.5f);
        } else if (phi_s0->unk_30 == 2) {
            phi_s0->unk_24 = (func_80B69A60() * 0.3f) + 0.5f;
            phi_s0->unk_10 = Rand_ZeroFloat(6.2831855f);
            if (D_80B7E075 == 1) {
                if ((i & 3) != 0) {
                    phi_s0->unk_24 *= 0.6f;
                } else {
                    phi_s0->unk_30 = 0;
                }
            }
        } else {
            phi_s0->unk_24 = (func_80B69A60() * 0.1f) + 0.3f;
            phi_s0->unk_10 = Rand_ZeroFloat(6.2831855f);
            phi_s0->unk_38 = 1000.0f;
            func_80B699A0(i, &D_80B7E070->collider, &phi_s0->unk_00, phi_s0->unk_24);
        }

        phi_s0++;
    }
}

static struct_80B7AD40 D_80B7AD40[] = {
    { 0, { 666, -45, 354 }, 38, 0.1f },    { 0, { 681, -45, 240 }, 36, 0.1f },   { 0, { 670, -45, 90 }, 41, 0.05f },
    { 0, { 615, -45, -450 }, 35, 0.2f },   { 0, { 500, -45, -420 }, 39, 0.1f },  { 0, { 420, -45, -550 }, 44, 0.05f },
    { 0, { -264, -45, -640 }, 40, 0.1f },  { 0, { -470, -45, -540 }, 34, 0.2f }, { 0, { -557, -45, -430 }, 54, 0.01f },
    { 0, { -260, -60, -330 }, 47, 0.05f }, { 0, { -500, -60, 330 }, 42, 0.06f }, { 0, { 428, -40, -283 }, 33, 0.2f },
    { 0, { 409, -70, -230 }, 57, 0.0f },   { 0, { 450, -67, -300 }, 63, 0.0f },  { 0, { -136, -65, -196 }, 71, 0.0f },
    { 1, { -561, -35, -547 }, 45, 0.0f },  { 1, { 667, -35, 317 }, 43, 0.0f },
};

static InitChainEntry D_80B7AE50[] = {
    ICHAIN_U8(targetMode, 5, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 0, ICHAIN_STOP),
};

void Fishing_Init(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    Fishing* this = THIS;
    u16 fishCount;
    s16 i;

    Actor_ProcessInitChain(&this->actor, D_80B7AE50);
    ActorShape_Init(&thisx->shape, 0.0f, NULL, 0.0f);

    if (KREG(5) != 0) {
        D_80B7E075 = 1;
    } else {
        D_80B7E075 = gSaveContext.linkAge;
    }

    if (thisx->params < 100) {
        D_80B7E074 = 0;
        D_80B7E070 = this;
        Collider_InitJntSph(globalCtx, &D_80B7E070->collider);
        Collider_SetJntSph(globalCtx, &D_80B7E070->collider, &this->actor, &D_80B7A888, D_80B7E070->colliderElements);

        thisx->params = 1;

        SkelAnime_InitFlex(globalCtx, &this->skelAnime, &object_fish_Skel_0085F8, &object_fish_Anim_00453C, NULL, NULL, 0);
        Animation_MorphToLoop(&this->skelAnime, &object_fish_Anim_00453C, 0.0f);

        thisx->update = func_80B7825C;
        thisx->draw = func_80B7A278;

        thisx->shape.rot.y = -0x6000;
        thisx->world.pos.x = 160.0f;
        thisx->world.pos.y = -2.0f;
        thisx->world.pos.z = 1208.0f;

        Actor_SetScale(&this->actor, 0.011f);

        thisx->focus.pos = thisx->world.pos;
        thisx->focus.pos.y += 75.0f;
        thisx->flags |= 9;

        if (D_80B7E075 != 1) {
            if (HIGH_SCORE(HS_FISHING) & 0x1000) {
                D_80B7A688 = 0;
            } else {
                D_80B7A688 = 1;
            }
        } else {
            D_80B7A688 = 2;
        }

        D_80B7A684 = 20;
        globalCtx->specialEffects = D_80B830B8;
        D_8011FB40 = 1;
        D_80B7E0AC = 0;
        D_80B7E0A6 = 10;

        Audio_SetBGM(0x100100FF);

        if (D_80B7E075 == 1) {
            if ((HIGH_SCORE(HS_FISHING) & 0x7F) != 0) {
                D_80B7E078 = HIGH_SCORE(HS_FISHING) & 0x7F;
            } else {
                D_80B7E078 = 40.0f;
            }
        } else {
            if ((HIGH_SCORE(HS_FISHING) & 0x7F000000) != 0) {
                D_80B7E078 = (HIGH_SCORE(HS_FISHING) & 0x7F000000) >> 0x18;
            } else {
                D_80B7E078 = 45.0f;
            }
        }

        D_80B7E07D = (HIGH_SCORE(HS_FISHING) & 0xFF0000) >> 0x10;
        if ((D_80B7E07D & 7) == 7) {
            globalCtx->unk_11D30[0] = 90;
            D_80B7E076 = 1;
        } else {
            globalCtx->unk_11D30[0] = 40;
            D_80B7E076 = 0;
        }

        if (((D_80B7E07D & 7) == 6) || (KREG(3) != 0)) {
            D_80B7E077 = 100;
            if (KREG(3) != 0) {
                KREG(3) = 0;
                HIGH_SCORE(HS_FISHING) &= 0xFF00FFFF;
                HIGH_SCORE(HS_FISHING) |= 0x60000;
            }
        } else {
            D_80B7E077 = 0;
        }

        for (i = 0; i < 130; i++) {
            D_80B830B8[i].unk_24 = 0;
        }

        for (i = 0; i < 140; i++) {
            D_80B7FEF8[i].unk_30 = 0;
        }

        D_80B830A8 = 0.7f;
        D_80B830AC = 2.3f;
        D_80B830B0 = 4.6f;

        for (i = 0; i < 60; i++) {
            struct_80B81FC8* phi_s0 = &D_80B81FC8[i];

            phi_s0->unk_00 = 1;

            if (i <= 20) {
                phi_s0->unk_10.x = phi_s0->unk_04.x = sinf(D_80B830A8) * 720.0f;
                phi_s0->unk_10.z = phi_s0->unk_04.z = cosf(D_80B830A8) * 720.0f;
            } else if (i <= 40) {
                phi_s0->unk_10.x = phi_s0->unk_04.x = sinf(D_80B830AC) * 720.0f;
                phi_s0->unk_10.z = phi_s0->unk_04.z = cosf(D_80B830AC) * 720.0f;
            } else {
                phi_s0->unk_10.x = phi_s0->unk_04.x = sinf(D_80B830B0) * 720.0f;
                phi_s0->unk_10.z = phi_s0->unk_04.z = cosf(D_80B830B0) * 720.0f;
            }

            phi_s0->unk_04.y = -35.0f;
            phi_s0->unk_10.y = -35.0f;

            phi_s0->unk_02 = Rand_ZeroFloat(100.0f);

            phi_s0->unk_3C = 0;
            phi_s0->unk_3E = 0;
            phi_s0->unk_40 = 0;

            if (D_80B7E075 != 1) {
                if (((i >= 15) && (i < 20)) || ((i >= 35) && (i < 40)) || ((i >= 55) && (i < 60))) {
                    phi_s0->unk_00 = 0;
                }
            }
        }

        func_80B6A22C(this, globalCtx);
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_KANBAN, 53.0f, -17.0f, 982.0f, 0, 0,
                           0, ENKANBAN_FISHING);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_FISHING, 0.0f, 0.0f, 0.0f, 0, 0, 0, 200);

        if ((KREG(1) == 1) || ((D_80B7E07D & 3) == 3)) {
            if (D_80B7E075 != 1) {
                fishCount = 16;
            } else {
                fishCount = 17;
            }
        } else {
            fishCount = 15;
        }

        for (i = 0; i < fishCount; i++) {
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_FISHING, D_80B7AD40[i].unk_02.x, D_80B7AD40[i].unk_02.y,
                        D_80B7AD40[i].unk_02.z, 0, Rand_ZeroFloat(65536.0f), 0, 100 + i);
        }
    } else {
        if ((thisx->params < 115) || (thisx->params == 200)) {
            SkelAnime_InitFlex(globalCtx, &this->skelAnime, &object_fish_Skel_0029C0, &object_fish_Anim_00007C, NULL, NULL, 0);
            Animation_MorphToLoop(&this->skelAnime, &object_fish_Anim_00007C, 0.0f);
        } else {
            SkelAnime_InitFlex(globalCtx, &this->skelAnime, &object_fish_Skel_011058, &object_fish_Anim_00CFE0, NULL, NULL, 0);
            Animation_MorphToLoop(&this->skelAnime, &object_fish_Anim_00CFE0, 0.0f);
        }

        SkelAnime_Update(&this->skelAnime);

        if (thisx->params == 200) {
            this->unk_158 = 100;
            Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORCAT_PROP);
            thisx->targetMode = 0;
            thisx->flags |= 9;
            this->lightNode = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &this->lightInfo);
            return;
        }

        this->unk_158 = 10;
        this->unk_15A = 10;

        this->unk_150 = D_80B7AD40[thisx->params - 100].unk_00;
        this->unk_1A8 = D_80B7AD40[thisx->params - 100].unk_0C;
        this->unk_1AC = D_80B7AD40[thisx->params - 100].unk_08;

        this->unk_1AC += Rand_ZeroFloat(4.99999f);

        if ((this->unk_1AC >= 65.0f) && (Rand_ZeroOne() < 0.05f)) {
            this->unk_1AC += Rand_ZeroFloat(7.99999f);
        }

        if (KREG(6) != 0) {
            this->unk_1AC = KREG(6) + 80.0f;
        }

        if (D_80B7E075 == 1) {
            this->unk_1AC *= 0.73f;
        }
    }
}

void Fishing_Destroy(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    Fishing* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);

    if (thisx->params == 200) {
        LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, this->lightNode);
    } else if (thisx->params == 1) {
        Collider_DestroyJntSph(globalCtx, &this->collider);
    }
}

void func_80B6AF28(struct_80B830B8* effects, GlobalContext* globalCtx) {
    f32 spB4;
    s16 i;

    for (i = 0; i < 130; i++) {
        if (effects->unk_24) {
            effects->unk_25++;
            effects->unk_00.x += effects->unk_0C.x;
            effects->unk_00.y += effects->unk_0C.y;
            effects->unk_00.z += effects->unk_0C.z;
            effects->unk_0C.y += effects->unk_18.y;

            if (effects->unk_24 == 1) {
                Math_ApproachF(&effects->unk_30, effects->unk_34, 0.2f, effects->unk_38);

                if (effects->unk_2C == 0) {
                    effects->unk_2A += 20;

                    if (effects->unk_2A >= effects->unk_2E) {
                        effects->unk_2A = effects->unk_2E;
                        effects->unk_2C++;
                    }
                } else {
                    effects->unk_2A -= 8;

                    if (effects->unk_2A <= 0) {
                        effects->unk_24 = 0;
                    }
                }
            } else if (effects->unk_24 == 3) {
                Math_ApproachF(&effects->unk_30, effects->unk_34, 0.1f, 0.1f);
                effects->unk_2A -= 10;

                if (effects->unk_00.y > (globalCtx->colCtx.colHeader->waterBoxes->ySurface - 5.0f)) {
                    effects->unk_18.y = 0.0f;
                    effects->unk_0C.y = 0.0f;
                    effects->unk_2A -= 5;
                }

                if (effects->unk_2A <= 0) {
                    effects->unk_24 = 0;
                }
            } else if (effects->unk_24 == 4) {
                if (effects->unk_2C == 0) {
                    spB4 = globalCtx->colCtx.colHeader->waterBoxes->ySurface;
                } else {
                    spB4 = 69.0f;
                }

                if (effects->unk_00.y >= spB4) {
                    effects->unk_24 = 0;

                    if (Rand_ZeroOne() < 0.3f) {
                        Vec3f spA4 = effects->unk_00;
                        spA4.y = spB4;
                        func_80B69C2C(NULL, globalCtx->specialEffects, &spA4, 20.0f, 60.0f, 150, 90);
                    }
                }
            } else if (effects->unk_24 == 2) {
                if (effects->unk_0C.y < -20.0f) {
                    effects->unk_0C.y = -20.0f;
                    effects->unk_18.y = 0.0f;
                }

                if (effects->unk_00.y <= globalCtx->colCtx.colHeader->waterBoxes->ySurface) {
                    effects->unk_24 = 0;
                    if (Rand_ZeroOne() < 0.5f) {
                        Vec3f sp98 = effects->unk_00;
                        sp98.y = globalCtx->colCtx.colHeader->waterBoxes->ySurface;
                        func_80B69C2C(NULL, globalCtx->specialEffects, &sp98, 40.0f, 110.0f, 150, 90);
                    }
                }
            } else if (effects->unk_24 == 5) {
                if (effects->unk_00.y < globalCtx->colCtx.colHeader->waterBoxes->ySurface) {
                    f32 temp1 = SQ(effects->unk_00.x) + SQ(effects->unk_00.z);

                    if (temp1 > SQ(920.0f)) {
                        effects->unk_00.y =
                            globalCtx->colCtx.colHeader->waterBoxes->ySurface + ((sqrtf(temp1) - 920.0f) * 0.11f);
                        effects->unk_25 = KREG(17) + 2;
                        effects->unk_24 = 8;
                        effects->unk_30 = (KREG(18) + 30) * 0.001f;
                    } else {
                        effects->unk_00.y = globalCtx->colCtx.colHeader->waterBoxes->ySurface + 3.0f;
                        effects->unk_25 = 0;
                        if (Rand_ZeroOne() < 0.75f) {
                            effects->unk_24 = 7;
                            effects->unk_0C = D_80B7A89C;
                            effects->unk_30 = (KREG(18) + 30) * 0.001f;
                        } else {
                            effects->unk_24 = 0;
                        }
                    }

                    effects->unk_0C = D_80B7A89C;
                }
            } else if (effects->unk_24 >= 7) {
                effects->unk_30 += (KREG(18) + 30) * 0.001f;

                if (effects->unk_25 >= 6) {
                    effects->unk_24 = 0;
                }
            } else if (effects->unk_24 == 6) {
                f32 temp1;
                f32 temp2;

                effects->unk_30 = 0.010000001f;

                Math_ApproachS(&D_80B7E09C.y, 0, 20, 100);
                Math_ApproachS(&D_80B7E09C.x, 0, 20, 100);
                Math_ApproachS(&D_80B7E09C.z, -0x4000, 20, 100);

                temp1 = SQ(effects->unk_00.x) + SQ(effects->unk_00.z);
                temp2 = globalCtx->colCtx.colHeader->waterBoxes->ySurface + ((sqrtf(temp1) - 920.0f) * 0.147f);

                if (effects->unk_00.y > (temp2 - 10.0f)) {
                    effects->unk_00.y -= 0.1f;
                }

                if ((effects->unk_25 & 0xF) == 0) {
                    Vec3f sp80 = effects->unk_00;
                    sp80.y = globalCtx->colCtx.colHeader->waterBoxes->ySurface;
                    func_80B69C2C(NULL, globalCtx->specialEffects, &sp80, 30.0f, 300.0f, 150, 90);
                }

                if (effects->unk_2C >= 0) {
                    effects->unk_2C++;
                }

                if (effects->unk_2C == 30) {
                    func_8010B680(globalCtx, 0x40B3, NULL);
                }

                if ((effects->unk_2C >= 100) && (func_8010BDBC(&globalCtx->msgCtx) == 5)) {
                    if ((func_80106BC8(globalCtx) != 0) || (func_8010BDBC(&globalCtx->msgCtx) == 0)) {
                        func_80106CCC(globalCtx);
                        Rupees_ChangeBy(-50);
                        effects->unk_2C = -1;
                    }
                }
            }
        }

        effects++;
    }
}

void func_80B6B674(struct_80B830B8* effects, GlobalContext* globalCtx) {
    u8 flag = 0;
    f32 rotY;
    s16 i;
    s32 pad;
    struct_80B830B8* sp124 = effects;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 2271);

    Matrix_Push();

    gDPPipeSync(POLY_XLU_DISP++);

    for (i = 0; i < 100; i++) {
        if (effects->unk_24 == 1) {
            if (flag == 0) {
                gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_008610);
                gDPSetEnvColor(POLY_XLU_DISP++, 155, 155, 155, 0);
                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, effects->unk_2A);

            Matrix_Translate(effects->unk_00.x, effects->unk_00.y, effects->unk_00.z, MTXMODE_NEW);
            Matrix_Scale(effects->unk_30, 1.0f, effects->unk_30, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 2305),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_008678);
        }
        effects++;
    }

    effects = sp124;
    flag = 0;
    for (i = 0; i < 100; i++) {
        if (effects->unk_24 == 2) {
            if (flag == 0) {
                gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_003610);
                gDPSetEnvColor(POLY_XLU_DISP++, 200, 200, 200, 0);
                flag++;
            }

            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 180, 180, 180, effects->unk_2A);

            Matrix_Translate(effects->unk_00.x, effects->unk_00.y, effects->unk_00.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(effects->unk_30, effects->unk_30, 1.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 2346),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_003680);
        }
        effects++;
    }

    effects = sp124;
    flag = 0;
    for (i = 0; i < 100; i++) {
        if (effects->unk_24 == 3) {
            if (flag == 0) {
                gSPDisplayList(POLY_OPA_DISP++, object_fish_DL_0088C0);
                gDPSetEnvColor(POLY_OPA_DISP++, 40, 90, 80, 128);
                flag++;
            }

            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 40, 90, 80, effects->unk_2A);

            gSPSegment(POLY_OPA_DISP++, 0x08,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, effects->unk_25 + (i * 3),
                                        (effects->unk_25 + (i * 3)) * 5, 32, 64, 1, 0, 0, 32, 32));

            Matrix_Translate(effects->unk_00.x, effects->unk_00.y, effects->unk_00.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(effects->unk_30, effects->unk_30, 1.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 2394),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_OPA_DISP++, object_fish_DL_008970);
        }
        effects++;
    }

    effects = sp124;
    flag = 0;
    for (i = 0; i < 100; i++) {
        if (effects->unk_24 == 4) {
            if (flag == 0) {
                gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_003460);
                gDPSetEnvColor(POLY_XLU_DISP++, 150, 150, 150, 0);
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 255);
                flag++;
            }

            Matrix_Translate(effects->unk_00.x, effects->unk_00.y, effects->unk_00.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(effects->unk_30, effects->unk_30, 1.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 2423),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_0034C0);
        }
        effects++;
    }

    effects = sp124 + 30;
    flag = 0;
    for (i = 30; i < 130; i++) {
        if (effects->unk_24 == 5) {
            if (flag == 0) {
                POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 0x14);
                gDPSetCombineMode(POLY_XLU_DISP++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 150, 255, 255, 30);
                flag++;
            }

            Matrix_Translate(effects->unk_00.x, effects->unk_00.y, effects->unk_00.z, MTXMODE_NEW);
            Matrix_RotateY(effects->unk_38, MTXMODE_APPLY);
            Matrix_RotateX(effects->unk_34, MTXMODE_APPLY);
            Matrix_RotateZ(effects->unk_3C, MTXMODE_APPLY);
            Matrix_Scale(0.002f, 1.0f, 0.1f, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 2467),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_003760);
        }
        effects++;
    }

    func_80093D84(globalCtx->state.gfxCtx);

    effects = sp124 + 30;
    flag = 0;
    for (i = 30; i < 130; i++) {
        if (effects->unk_24 == 7) {
            if (flag == 0) {
                gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_008610);
                gDPSetEnvColor(POLY_XLU_DISP++, 155, 155, 155, 0);
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 130);
                flag++;
            }

            Matrix_Translate(effects->unk_00.x, effects->unk_00.y, effects->unk_00.z, MTXMODE_NEW);
            Matrix_Scale(effects->unk_30, 1.0f, effects->unk_30, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 2504),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_008678);
        }
        effects++;
    }

    effects = sp124 + 30;
    flag = 0;
    for (i = 30; i < 130; i++) {
        if (effects->unk_24 == 8) {
            if (flag == 0) {
                gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_0039A8);
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, KREG(19) + 80);
                flag++;
            }

            if (Rand_ZeroOne() < 0.5f) {
                rotY = 0.0f;
            } else {
                rotY = M_PI;
            }

            Matrix_Translate(effects->unk_00.x, effects->unk_00.y, effects->unk_00.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_RotateY(rotY, MTXMODE_APPLY);
            Matrix_Scale(effects->unk_30, effects->unk_30, 1.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 2541),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_003A18);
        }
        effects++;
    }

    effects = sp124;
    if (effects->unk_24 == 6) {
        Matrix_Translate(effects->unk_00.x, effects->unk_00.y, effects->unk_00.z, MTXMODE_NEW);
        Matrix_RotateY((D_80B7E09C.y * M_PI) / 32768, MTXMODE_APPLY);
        Matrix_RotateX((D_80B7E09C.x * M_PI) / 32768, MTXMODE_APPLY);
        Matrix_RotateZ((D_80B7E09C.z * M_PI) / 32768, MTXMODE_APPLY);
        Matrix_Scale(effects->unk_30, effects->unk_30, effects->unk_30, MTXMODE_APPLY);
        Matrix_Translate(-1250.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        Matrix_RotateX(M_PI / 2, MTXMODE_APPLY);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 2560),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPDisplayList(POLY_OPA_DISP++, object_fish_DL_0074C8);
    }

    Matrix_Pop();

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 2565);
}

void func_80B6C134(GlobalContext* globalCtx) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 2572);

    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, globalCtx->gameplayFrames * 1,
                                globalCtx->gameplayFrames * 8, 32, 64, 1, -(globalCtx->gameplayFrames * 2), 0, 16, 16));

    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, 50);

    Matrix_Translate(670.0f, -24.0f, -600.0f, MTXMODE_NEW);
    Matrix_Scale(0.02f, 1.0f, 0.02f, MTXMODE_APPLY);

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 2598),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(object_fish_DL_003230));

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 2613);
}

s32 func_80B6C2EC(Vec3f* vec) {
    if (((vec->x >= 110.0f) && (vec->x <= 150.0f) && (vec->z <= 1400.0f) && (vec->z >= 1160.0f)) ||
        ((vec->x >= 110.0f) && (vec->x <= 210.0f) && (vec->z <= 1200.0f) && (vec->z >= 1160.0f))) {
        if (vec->y <= 42.0f) {
            return true;
        }
    }

    return false;
}

void func_80B6C3E0(GlobalContext* globalCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, Vec3f* arg4) {
    s16 i;
    s16 k;
    f32 dx;
    f32 dy;
    f32 dz;
    f32 rx;
    f32 ry;
    f32 dxz;
    f32 spD8;
    s16 temp_s2;
    s32 pad;
    f32 temp_f20;
    Vec3f spC0 = { 0.0f, 0.0f, 0.0f };
    Vec3f spB4;
    f32 phi_f18;
    Vec3f spA4;
    Vec3f sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 temp_f14;
    f32 temp_f18;
    f32 phi_f12;
    f32 phi_f2;

    if (D_80B7A6A4 != 0) {
        spA4 = *arg1;
        sp98 = arg2[0xC7];

        sp94 = sp98.x - spA4.x;
        sp90 = sp98.y - spA4.y;
        sp8C = sp98.z - spA4.z;

        phi_f18 = sqrtf(SQ(sp94) + SQ(sp90) + SQ(sp8C)) * 0.97f;
        if (phi_f18 > 1000.0f) {
            phi_f18 = 1000.0f;
        }

        D_80B7E144 = 200.0f - (phi_f18 * 200.0f * 0.001f);
    }

    temp_s2 = D_80B7E144;
    spC0.z = 5.0f;

    for (i = 0; i < 0xC8; i++) {
        if (i <= temp_s2) {
            arg2[i] = *arg1;
        } else if (D_80B7A6A4 != 0) {
            temp_f20 = (f32)(i - temp_s2) / (f32)(0xC9 - temp_s2);
            Math_ApproachF(&arg2[i].x, (sp94 * temp_f20) + spA4.x, 1.0f, 20.0f);
            Math_ApproachF(&arg2[i].y, (sp90 * temp_f20) + spA4.y, 1.0f, 20.0f);
            Math_ApproachF(&arg2[i].z, (sp8C * temp_f20) + spA4.z, 1.0f, 20.0f);
        }
    }

    for (i = temp_s2 + 1, k = 0; i < 0xC8; i++, k++) {
        temp_f18 = 2.0f * D_80B7E148;

        dx = (arg2 + i)->x - (arg2 + i - 1)->x;
        spD8 = (arg2 + i)->y;

        temp_f14 = SQ((arg2 + i)->x) + SQ((arg2 + i)->z);

        if (temp_f14 > SQ(920.0f)) {
            phi_f12 = ((sqrtf(temp_f14) - 920.0f) * 0.11f) + globalCtx->colCtx.colHeader->waterBoxes->ySurface;
        } else {
            phi_f12 = globalCtx->colCtx.colHeader->waterBoxes->ySurface;
        }

        if (D_80B7E0B6 == 2) {
            if (spD8 < phi_f12) {
                phi_f12 = ((sqrtf(temp_f14) - 920.0f) * 0.147f) + globalCtx->colCtx.colHeader->waterBoxes->ySurface;
                if (spD8 > phi_f12) {
                    phi_f2 = (spD8 - phi_f12) * 0.05f;
                    if (phi_f2 > 0.29999998f) {
                        phi_f2 = 0.29999998f;
                    }
                    if (i >= 0x64) {
                        phi_f2 *= (i - 0x64) * 0.02f;
                        spD8 -= phi_f2;
                    }
                }
            } else {
                spD8 -= temp_f18;
            }
        } else if (i >= 0xBF) {
            if (spD8 > phi_f12) {
                phi_f2 = (spD8 - phi_f12) * 0.2f;
                if (phi_f2 > temp_f18) {
                    phi_f2 = temp_f18;
                }
                spD8 -= phi_f2;
            }
        } else {
            if (spD8 > phi_f12) {
                spD8 -= temp_f18;
            }
        }

        if (func_80B6C2EC(&arg2[i])) {
            spD8 = 42.0f;
        }

        dy = spD8 - (arg2 + i - 1)->y;
        dz = (arg2 + i)->z - (arg2 + i - 1)->z;

        ry = Math_Atan2F(dz, dx);
        dxz = sqrtf(SQ(dx) + SQ(dz));
        rx = -Math_Atan2F(dxz, dy);

        (arg3 + i - 1)->y = ry;
        (arg3 + i - 1)->x = rx;

        Matrix_RotateY(ry, MTXMODE_NEW);
        Matrix_RotateX(rx, MTXMODE_APPLY);
        Matrix_MultVec3f(&spC0, &spB4);

        (arg2 + i)->x = (arg2 + i - 1)->x + spB4.x;
        (arg2 + i)->y = (arg2 + i - 1)->y + spB4.y;
        (arg2 + i)->z = (arg2 + i - 1)->z + spB4.z;
    }
}

void func_80B6C960(Vec3f* arg0) {
    s16 i;
    f32 dx;
    f32 dy;
    f32 dz;
    f32 rx;
    f32 ry;
    f32 dxz;
    Vec3f sp70 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp64;
    s16 min = D_80B7E144;

    sp70.z = 5.0f;

    for (i = 0xC6; i > min; i--) {
        dx = (arg0 + i)->x - (arg0 + i + 1)->x;
        dy = (arg0 + i)->y - (arg0 + i + 1)->y;
        dz = (arg0 + i)->z - (arg0 + i + 1)->z;

        ry = Math_Atan2F(dz, dx);
        dxz = sqrtf(SQ(dx) + SQ(dz));
        rx = -Math_Atan2F(dxz, dy);

        Matrix_RotateY(ry, MTXMODE_NEW);
        Matrix_RotateX(rx, MTXMODE_APPLY);
        Matrix_MultVec3f(&sp70, &sp64);

        (arg0 + i)->x = (arg0 + i + 1)->x + sp64.x;
        (arg0 + i)->y = (arg0 + i + 1)->y + sp64.y;
        (arg0 + i)->z = (arg0 + i + 1)->z + sp64.z;
    }
}

void func_80B6CAF8(GlobalContext* globalCtx, Vec3f* arg1, Vec3f* arg2, u8 arg3) {
    f32 dx;
    f32 dy;
    f32 dz;
    f32 rx;
    f32 ry;
    f32 dxz;
    f32 phi_f0;
    Vec3f spA0 = { 0.0f, 0.0f, 1.0f };
    Vec3f sp94;
    Player* player = PLAYER;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 2963);

    Matrix_Push();

    if ((D_80B7A694 == 3) &&
        ((globalCtx->colCtx.colHeader->waterBoxes->ySurface < arg1->y) || ((D_80B7A68C != 0) && arg3))) {
        phi_f0 = 0.0f;
    } else if (arg1->y < globalCtx->colCtx.colHeader->waterBoxes->ySurface) {
        phi_f0 = -1.0f;
    } else {
        phi_f0 = -3.0f;
    }

    dx = arg2->x - arg1->x;
    dy = arg2->y - arg1->y + phi_f0;
    dz = arg2->z - arg1->z;

    ry = Math_Atan2F(dz, dx);
    dxz = sqrtf(SQ(dx) + SQ(dz));
    rx = -Math_Atan2F(dxz, dy);

    Matrix_RotateY(ry, MTXMODE_NEW);
    Matrix_RotateX(rx, MTXMODE_APPLY);
    Matrix_MultVec3f(&spA0, &sp94);

    arg2->x = arg1->x + sp94.x;
    arg2->y = arg1->y + sp94.y;
    arg2->z = arg1->z + sp94.z;

    Matrix_Translate(arg1->x, arg1->y, arg1->z, MTXMODE_NEW);

    if ((player->actor.speedXZ == 0.0f) && (D_80B7E138 == 0.0f)) {
        Math_ApproachF(&D_80B7FDA0[arg3], ry, 0.1f, 0.3f);
    } else {
        D_80B7FDA0[arg3] = ry;
    }

    Matrix_RotateY(D_80B7FDA0[arg3], MTXMODE_APPLY);
    Matrix_RotateX(rx, MTXMODE_APPLY);
    Matrix_Scale(0.0039999997f, 0.0039999997f, 0.005f, MTXMODE_APPLY);
    Matrix_RotateY(M_PI, MTXMODE_APPLY);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 3029),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, object_fish_DL_012160);

    Matrix_RotateZ(M_PI / 2, MTXMODE_APPLY);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 3034),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, object_fish_DL_012160);

    if ((arg3 == 1) && (D_80B7A68C != 0)) {
        Matrix_Scale(2.0f, 2.0f, 2.0f, MTXMODE_APPLY);
        Matrix_Translate(250.0f, 0.0f, -1400.0f, MTXMODE_APPLY);
        Matrix_Push();

        if (D_80B7A690 != 0) {
            struct_80B830B8* sp68 = globalCtx->specialEffects;
            MtxF sp28;

            Matrix_MultVec3f(&D_80B7A89C, &sp68->unk_00);
            Matrix_Get(&sp28);
            func_800D20CC(&sp28, &D_80B7E09C, 0);

            D_80B7A690 = 0;
            D_80B7A68C = 0;

            sp68->unk_24 = 6;
            sp68->unk_2C = 0;
            sp68->unk_0C = D_80B7A89C;
            sp68->unk_18 = D_80B7A89C;
        }

        Matrix_Pop();
        Matrix_Translate(-1250.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        Matrix_RotateX(M_PI / 2, MTXMODE_APPLY);

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 3085),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, object_fish_DL_0074C8);
    }

    Matrix_Pop();

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 3098);
}

void func_80B6D054(GlobalContext* globalCtx) {
    s16 i;
    f32 dx;
    f32 dy;
    f32 dz;
    f32 rx;
    f32 ry;
    f32 dxz;
    f32 spB8;
    Vec3f spAC = { 0.0f, 0.0f, 0.0f };
    Vec3f spA0;
    Vec3f sp94;
    Vec3f sp88;
    f32 phi_f16;
    f32 phi_f2;
    Player* player = PLAYER;

    spAC.z = 0.85f;

    D_80B7FDB0[0] = D_80B7E0B8;

    if (D_80B7A6D4 != 0) {
        spB8 = -1.0f;
    } else if (D_80B7E0B8.y < globalCtx->colCtx.colHeader->waterBoxes->ySurface) {
        spB8 = 0.5f;
    } else {
        spB8 = -5.0f;
    }

    if (D_80B7A694 == 5) {
        Matrix_RotateY(player->actor.shape.rot.y * (M_PI / 32768), MTXMODE_NEW);
        sp94.x = 5.0f;
        sp94.y = 0.0f;
        sp94.z = 3.0f;
        Matrix_MultVec3f(&sp94, &sp88);
    }

    for (i = 1; i < 20; i++) {
        Vec3f* temp = D_80B7FDB0;

        if ((i < 10) && (D_80B7A694 == 5)) {
            phi_f2 = (10 - i) * sp88.x * 0.1f;
            phi_f16 = (10 - i) * sp88.z * 0.1f;
        } else {
            phi_f2 = phi_f16 = 0.0f;
        }

        dx = (temp + i)->x - (temp + i - 1)->x + phi_f2;
        dy = (temp + i)->y - (temp + i - 1)->y + spB8;
        dz = (temp + i)->z - (temp + i - 1)->z + phi_f16;

        ry = Math_Atan2F(dz, dx);
        dxz = sqrtf(SQ(dx) + SQ(dz));
        rx = -Math_Atan2F(dxz, dy);

        Matrix_RotateY(ry, MTXMODE_NEW);
        Matrix_RotateX(rx, MTXMODE_APPLY);
        Matrix_MultVec3f(&spAC, &spA0);

        (temp + i)->x = (temp + i - 1)->x + spA0.x;
        (temp + i)->y = (temp + i - 1)->y + spA0.y;
        (temp + i)->z = (temp + i - 1)->z + spA0.z;
    }
}

static f32 D_80B7AE88[] = {
    1.0f, 1.5f,  1.8f, 2.0f, 1.8f, 1.6f, 1.4f, 1.2f, 1.0f, 1.0f,
    0.9f, 0.85f, 0.8f, 0.7f, 0.8f, 1.0f, 1.2f, 1.1f, 1.0f, 0.8f,
};

void func_80B6D354(GlobalContext* globalCtx) {
    s16 i;
    f32 scale;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 3209);

    func_80B6D054(globalCtx);

    if (D_80B7E0B8.y < globalCtx->colCtx.colHeader->waterBoxes->ySurface) {
        func_80093D18(globalCtx->state.gfxCtx);

        gSPDisplayList(POLY_OPA_DISP++, object_fish_DL_00B950);

        for (i = 19; i >= 0; i--) {
            if ((i + D_80B7FEA0) < 20) {
                Matrix_Translate(D_80B7FDB0[i].x, D_80B7FDB0[i].y, D_80B7FDB0[i].z, MTXMODE_NEW);
                scale = D_80B7AE88[i + D_80B7FEA0] * 0.04f;
                Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
                func_800D1FD4(&globalCtx->mf_11DA0);

                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 3239),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, object_fish_DL_00B9C0);
            }
        }
    } else {
        func_80093D84(globalCtx->state.gfxCtx);

        gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_00B950);

        for (i = 19; i >= 0; i--) {
            if ((i + D_80B7FEA0) < 20) {
                Matrix_Translate(D_80B7FDB0[i].x, D_80B7FDB0[i].y, D_80B7FDB0[i].z, MTXMODE_NEW);
                scale = D_80B7AE88[i + D_80B7FEA0] * 0.04f;
                Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
                func_800D1FD4(&globalCtx->mf_11DA0);

                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 3265),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_00B9C0);
            }
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 3271);
}

void func_80B6D688(GlobalContext* globalCtx, Vec3f* arg1, Vec3f* arg2) {
    Vec3f spDC;
    Vec3f spD0;
    Vec3f spC4;
    Vec3f spB8;
    s16 i;
    s16 spB4 = D_80B7E144;
    s32 pad;
    Player* player = PLAYER;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 3287);

    func_80093D18(globalCtx->state.gfxCtx);
    Matrix_Push();

    if (D_80B7A6D4 != 0) {
        Vec3f sp8C = D_80B7E0B8;
        D_80B7E0B8 = D_80B7FED8;
        func_80B6D354(globalCtx);
        D_80B7E0B8 = sp8C;
    }

    if ((D_80B7A694 == 4) || (D_80B7A694 == 5)) {
        D_80B7E0B8 = D_80B7E0A8->unk_1C0;

        if ((D_80B7A694 == 5) && (D_80B7E0B6 == 2)) {
            Matrix_RotateY(player->actor.shape.rot.y * (M_PI / 32768), MTXMODE_NEW);
            spDC.x = 2.0f;
            spDC.y = 0.0f;
            spDC.z = 0.0f;
            Matrix_MultVec3f(&spDC, &spD0);
            D_80B7E0B8.x += spD0.x;
            D_80B7E0B8.z += spD0.z;
        }
    } else if (D_80B7A694 == 0) {
        D_80B7E0B8 = D_80B7E168[0xC7];
        D_80B7E0D8.x = D_80B7EAC8[0xC6].x + M_PI;

        if ((player->actor.speedXZ == 0.0f) && (D_80B7E0B0 == 0)) {
            Math_ApproachF(&D_80B7E0D8.y, D_80B7EAC8[0xC6].y, 0.1f, 0.2f);
        } else {
            D_80B7E0D8.y = D_80B7EAC8[0xC6].y;
        }
    }

    if (D_80B7E0B6 != 2) {
        Matrix_Translate(D_80B7E0B8.x, D_80B7E0B8.y, D_80B7E0B8.z, MTXMODE_NEW);
        Matrix_RotateY(D_80B7E0D8.y + D_80B7E104, MTXMODE_APPLY);
        Matrix_RotateX(D_80B7E0D8.x, MTXMODE_APPLY);
        Matrix_Scale(0.0039999997f, 0.0039999997f, 0.0039999997f, MTXMODE_APPLY);
        Matrix_Translate(0.0f, 0.0f, D_80B7E108, MTXMODE_APPLY);
        Matrix_RotateZ(M_PI / 2, MTXMODE_APPLY);
        Matrix_RotateY(M_PI / 2, MTXMODE_APPLY);
        func_80093D18(globalCtx->state.gfxCtx);

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 3369),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, object_fish_DL_0121F0);

        spDC.x = -850.0f;
        spDC.y = 0.0f;
        spDC.z = 0.0f;
        Matrix_MultVec3f(&spDC, &D_80B7E0C8);

        spDC.x = 500.0f;
        spDC.z = -300.0f;
        Matrix_MultVec3f(&spDC, &spB8);
        func_80B6CAF8(globalCtx, &spB8, &D_80B7FD88[0], 0);

        spDC.x = 2100.0f;
        spDC.z = -50.0f;
        Matrix_MultVec3f(&spDC, &spC4);
        func_80B6CAF8(globalCtx, &spC4, &D_80B7FD88[1], 1);
    }

    POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 0x14);

    gDPSetCombineMode(POLY_XLU_DISP++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 55);

    if ((D_80B7A694 == 4) && ((D_80B7E124 != 0) || (D_80B7E0B6 != 2))) {
        f32 sp78;
        f32 sp74;
        f32 sp70;
        f32 sp6C;
        f32 sp68;
        f32 sp64;

        sp6C = D_80B7E0B8.x - D_80B7E158.x;
        sp68 = D_80B7E0B8.y - D_80B7E158.y;
        sp64 = D_80B7E0B8.z - D_80B7E158.z;

        sp74 = Math_FAtan2F(sp6C, sp64);
        sp70 = sqrtf(SQ(sp6C) + SQ(sp64));
        sp78 = -Math_FAtan2F(sp68, sp70);

        sp70 = sqrtf(SQ(sp6C) + SQ(sp68) + SQ(sp64)) * 0.001f;

        Matrix_Translate(D_80B7E158.x, D_80B7E158.y, D_80B7E158.z, MTXMODE_NEW);
        Matrix_RotateY(sp74, MTXMODE_APPLY);
        Matrix_RotateX(sp78, MTXMODE_APPLY);
        Matrix_Scale(D_80B7E14C, 1.0f, sp70, MTXMODE_APPLY);

        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 3444),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_003710);

    } else {
        for (i = spB4; i < 0xC7; i++) {
            if ((i == 0xC5) && (D_80B7E0B6 == 0) && (D_80B7A694 == 3)) {
                f32 sp58;
                f32 sp54;
                f32 sp50;
                f32 sp4C;
                f32 sp48;
                f32 sp44;

                sp4C = D_80B7E0C8.x - (arg1 + i)->x;
                sp48 = D_80B7E0C8.y - (arg1 + i)->y;
                sp44 = D_80B7E0C8.z - (arg1 + i)->z;

                sp54 = Math_FAtan2F(sp4C, sp44);
                sp50 = sqrtf(SQ(sp4C) + SQ(sp44));
                sp58 = -Math_FAtan2F(sp48, sp50);

                sp50 = sqrtf(SQ(sp4C) + SQ(sp48) + SQ(sp44)) * 0.001f;

                Matrix_Translate((arg1 + i)->x, (arg1 + i)->y, (arg1 + i)->z, MTXMODE_NEW);
                Matrix_RotateY(sp54, MTXMODE_APPLY);
                Matrix_RotateX(sp58, MTXMODE_APPLY);
                Matrix_Scale(D_80B7E14C, 1.0f, sp50, MTXMODE_APPLY);

                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 3475),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_003710);
                break;
            }

            Matrix_Translate((arg1 + i)->x, (arg1 + i)->y, (arg1 + i)->z, MTXMODE_NEW);
            Matrix_RotateY((arg2 + i)->y, MTXMODE_APPLY);
            Matrix_RotateX((arg2 + i)->x, MTXMODE_APPLY);
            Matrix_Scale(D_80B7E14C, 1.0f, 0.005f, MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 3492),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_003710);
        }
    }

    Matrix_Pop();
    func_80093D84(globalCtx->state.gfxCtx);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 3500);
}

static f32 D_80B7AED8[22] = {
    1.0f,        1.0f,        1.0f,        0.9625f,     0.925f, 0.8875f,     0.85f,       0.8125f,
    0.775f,      0.73749995f, 0.7f,        0.6625f,     0.625f, 0.5875f,     0.54999995f, 0.5125f,
    0.47499996f, 0.4375f,     0.39999998f, 0.36249995f, 0.325f, 0.28749996f,
};

static f32 D_80B7AF30[22] = {
    0.0f,  0.0f,  0.0f,  0.0f,  0.0f,  0.06f,   0.12f,   0.18f,   0.24f,   0.30f,   0.36f,
    0.42f, 0.48f, 0.54f, 0.60f, 0.60f, 0.5142f, 0.4285f, 0.3428f, 0.2571f, 0.1714f, 0.0857f,
};

static Vec3f D_80B7AF88 = { 0.0f, 0.0f, 0.0f };

void func_80B6DF30(GlobalContext* globalCtx) {
    s16 i;
    f32 spC8;
    f32 spC4;
    f32 spC0;
    Input* input = &globalCtx->state.input[0];
    Player* player = PLAYER;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 3600);

    if (D_80B7FDA8 != 0) {
        D_80B7FDA8--;

        Math_ApproachF(&D_80B7A6C0, 35.0f, 1.0f, 100.0f);
        Math_ApproachF(&D_80B7A6BC, -0.8f, 1.0f, 0.4f);
        Math_ApproachS(&player->actor.shape.rot.x, -4000, 2, 15000);
    } else {
        s16 target = 0;

        if ((D_80B7A694 == 4) && (D_80B7E124 != 0)) {
            target = Math_SinS(D_80B7E0AE * 25600) * 1500.0f;
        } else {
            Math_ApproachZeroF(&D_80B7A6C0, 0.1f, 10.0f);
            Math_ApproachZeroF(&D_80B7A6BC, 1.0f, 0.05f);
        }

        Math_ApproachS(&player->actor.shape.rot.x, target, 5, 1000);
    }

    if ((D_80B7A694 == 3) || (D_80B7A694 == 4)) {
        if ((input->rel.stick_x == 0) && (D_80B7A6C4 != 0)) {
            D_80B7A6B0 = 0.0f;
        }
        if ((input->rel.stick_y == 0) && (D_80B7A6C8 != 0)) {
            D_80B7A6B4 = 0.0f;
        }

        spC8 = player->unk_85C;
        Math_SmoothStepToF(&player->unk_85C, input->rel.stick_y * 0.02f, 0.3f, 5.0f, 0.0f);
        spC8 = player->unk_85C - spC8;

        spC4 = player->unk_858;
        Math_SmoothStepToF(&player->unk_858, input->rel.stick_x * 0.02f, 0.3f, 5.0f, 0.0f);
        spC4 = player->unk_858 - spC4;

        if (player->unk_858 > 1.0f) {
            player->unk_858 = 1.0f;
        }
        if (player->unk_85C > 1.0f) {
            player->unk_85C = 1.0f;
        }
        if (player->unk_858 < -1.0f) {
            player->unk_858 = -1.0f;
        }
        if (player->unk_85C < -1.0f) {
            player->unk_85C = -1.0f;
        }

        Math_ApproachF(&D_80B7A6A8, spC4 * 70.0f * -0.01f, 1.0f, D_80B7A6B0);
        Math_ApproachF(&D_80B7A6B0, 1.0f, 1.0f, 0.1f);
        Math_ApproachF(&D_80B7A6AC, spC8 * 70.0f * 0.01f, 1.0f, D_80B7A6B4);
        Math_ApproachF(&D_80B7A6B4, 1.0f, 1.0f, 0.1f);
        Math_ApproachZeroF(&D_80B7A6B8, 1.0f, 0.05f);
    } else {
        Math_ApproachZeroF(&player->unk_85C, 1.0f, 0.1f);
        Math_ApproachZeroF(&player->unk_858, 1.0f, 0.1f);
        Math_ApproachF(&D_80B7A6AC, (Math_SinS(D_80B7E0AE * 3000) * 0.025f) + -0.03f, 1.0f, 0.05f);
        Math_ApproachZeroF(&D_80B7A6A8, 1.0f, 0.05f);

        if ((D_80B7E0B4 >= 0x13) && (D_80B7E0B4 <= 0x18)) {
            Math_ApproachF(&D_80B7A6B8, 0.8f, 1.0f, 0.2f);
        } else {
            Math_ApproachF(&D_80B7A6B8, 0.0f, 1.0f, 0.4f);
        }
    }

    func_80093D18(globalCtx->state.gfxCtx);

    gSPDisplayList(POLY_OPA_DISP++, object_fish_DL_0113D0);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 155, 0, 255);

    Matrix_Mult(&player->mf_9E0, MTXMODE_NEW);

    if (D_80B7E075 != 1) {
        Matrix_Translate(0.0f, 400.0f, 0.0f, MTXMODE_APPLY);
    } else {
        Matrix_Translate(0.0f, 230.0f, 0.0f, MTXMODE_APPLY);
    }

    if (D_80B7A694 == 5) {
        Matrix_RotateY(1.7592919f, MTXMODE_APPLY);
    } else {
        Matrix_RotateY(1.288053f, MTXMODE_APPLY);
    }

    Matrix_RotateX(-0.6283185f, MTXMODE_APPLY);
    Matrix_RotateZ((player->unk_858 * 0.5f) + 0.4712389f, MTXMODE_APPLY);
    Matrix_RotateX((D_80B7A6C0 + 20.0f) * 0.01f * M_PI, MTXMODE_APPLY);
    Matrix_Scale(0.70000005f, 0.70000005f, 0.70000005f, MTXMODE_APPLY);

    spC0 = (D_80B7A6BC * (((player->unk_85C - 1.0f) * -0.25f) + 0.5f)) + (D_80B7A6AC + D_80B7A6B8);

    Matrix_Translate(0.0f, 0.0f, -1300.0f, MTXMODE_APPLY);

    for (i = 0; i < 22; i++) {
        Matrix_RotateY(D_80B7AF30[i] * D_80B7A6A8 * 0.5f, MTXMODE_APPLY);
        Matrix_RotateX(D_80B7AF30[i] * spC0 * 0.5f, MTXMODE_APPLY);

        Matrix_Push();
        Matrix_Scale(D_80B7AED8[i], D_80B7AED8[i], 0.52f, MTXMODE_APPLY);

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 3809),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        if (i < 5) {
            gDPLoadTextureBlock(POLY_OPA_DISP++, object_fish_Tex_011170, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0,
                                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD);
        } else if ((i < 8) || ((i & 1) == 0)) {
            gDPLoadTextureBlock(POLY_OPA_DISP++, object_fish_Tex_011270, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0,
                                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD);
        } else {
            gDPLoadTextureBlock(POLY_OPA_DISP++, object_fish_Tex_011070, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 8, 0,
                                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 4, 3, G_TX_NOLOD, G_TX_NOLOD);
        }

        gSPDisplayList(POLY_OPA_DISP++, object_fish_DL_011410);

        Matrix_Pop();
        Matrix_Translate(0.0f, 0.0f, 500.0f, MTXMODE_APPLY);

        if (i == 21) {
            Matrix_MultVec3f(&D_80B7AF88, &D_80B7E158);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 3838);
}

static Vec3f D_80B7AF94 = { 0.0f, 0.0f, 0.0f };

void func_80B6E9E0(Fishing* this, GlobalContext* globalCtx) {
    f32 spE4;
    f32 spE0;
    s16 phi_v0;
    s16 spDC;
    f32 spD8;
    f32 spD4;
    f32 spD0;
    f32 phi_f16;
    f32 spC8;
    s16 phi_s0;
    Player* player = PLAYER;
    Vec3f spB4 = { 0.0f, 0.0f, 0.0f };
    Vec3f spA8;
    Vec3f sp9C;
    Vec3f sp90;
    Input* input = &globalCtx->state.input[0];
    Vec3f sp80;
    f32 sp7C;
    f32 sp78;
    f32 phi_f0;
    f32 sp70;
    Vec3f sp64;
    Vec3f sp58;
    s32 pad;

    D_80B7E0AE++;

    if (D_80B7E0B0 != 0) {
        D_80B7E0B0--;
    }

    if (D_80B7E0B2 != 0) {
        D_80B7E0B2--;
    }

    if (D_80B7E0B4 != 0) {
        D_80B7E0B4--;
    }

    if (D_80B7E122 != 0) {
        D_80B7E122--;
    }

    if (D_80B7E150 != 0) {
        D_80B7E150--;
    }

    if (D_80B7A6A4 != 0) {
        D_80B7A6A4--;
    }

    if (D_80B7E0A4 != 0) {
        D_80B7E0A4--;
    }

    if (D_80B7E114 != 0) {
        D_80B7E114--;
    }

    if (D_80B7E0AC == 1) {
        D_80B7E0AC = 2;
        D_80B7E084 = 0;
        D_80B7E082 = 0;
        D_80B7E0B6 = 0;

        if (((D_80B7E075 == 1) && (HIGH_SCORE(HS_FISHING) & 0x400)) ||
            ((D_80B7E075 != 1) && (HIGH_SCORE(HS_FISHING) & 0x800))) {
            D_80B7A66C = (u8)Rand_ZeroFloat(3.999f) + 1;
        }

        D_80B7E148 = 520.0f;
        D_80B7E144 = 195.0f;

        D_80B7A694 = D_80B7E0B6 = D_80B7E0AE = D_80B7E0B0 = D_80B7E0B2 = D_80B7E0B4 = D_80B7E120 = D_80B7E114 =
            D_80B7E150 = 0;
        D_80B7E104 = D_80B7E154 = D_80B7E108 = 0.0f;

        D_80B7E128 = spB4;

        for (phi_s0 = 0; phi_s0 < 0xC8; phi_s0++) {
            D_80B7E168[phi_s0] = spB4;
            D_80B7EAC8[phi_s0] = spB4;
            D_80B7F428[phi_s0] = spB4;
        }
    }

    SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &D_80B7E0B8, &D_80B7AF94, &D_80B7FEA4);

    if (D_80B7A694 == 0) {
        Math_ApproachF(&D_80B7E108, -800.0f, 1.0f, 20.0f);
    } else {
        Math_ApproachF(&D_80B7E108, 300.0f, 1.0f, 20.0f);
    }

    switch (D_80B7A694) {
        case 0:
            D_80B7FEA0 = 0;

            if (KREG(14) != 0) {
                KREG(14) = 0;
                D_80B7E0B6 = 2 - D_80B7E0B6;
                if (D_80B7E0B6 != 0) {
                    D_80B7E082 = 0;
                }
            }

            Math_ApproachF(&D_80B7E144, 195.0f, 1.0f, 1.0f);

            if (player->stateFlags1 & 0x8000000) {
                D_80B7E0B4 = 0;
                player->unk_860 = 0;
            }

            if (D_80B7E0B4 == 0) {
                if ((D_80B7E0B0 == 0) && (player->unk_860 == 1)) {
                    D_80B7E0B4 = 0x25;
                    func_80106CCC(globalCtx);
                }
            } else {
                D_80B7E0D8.x = D_80B7EAC8[0xC6].x + M_PI;
                D_80B7E0D8.y = D_80B7EAC8[0xC6].y;

                if (D_80B7E0B4 == 0x12) {
                    D_80B7A694 = 1;
                    D_80B7E0B8 = D_80B7E158;
                    Matrix_RotateY((player->actor.shape.rot.y / 32768.0f) * M_PI, MTXMODE_NEW);
                    sp90.x = 0.0f;
                    sp90.y = 0.0f;
                    sp90.z = 25.0f;
                    Matrix_MultVec3f(&sp90, &D_80B7E0E8);
                    D_80B7E0E8.y = 15.0f;
                    D_80B7E0F8.x = D_80B7E0F8.z = 0.0f;
                    D_80B7E0F8.y = -1.0f;
                    D_80B7E148 = 0.0f;
                    D_80B7E0B2 = 5;
                    D_80B7E11C = 0.5f;
                    D_80B7E118 = Rand_ZeroFloat(1.9f);
                    D_80B7A698.y = 500.0f;
                    func_80078914(&D_80B7AF94, NA_SE_IT_SWORD_SWING_HARD);
                }
            }
            break;

        case 1:
            spE0 = D_80B7E0B8.y;

            D_80B7E0B8.x += D_80B7E0E8.x;
            D_80B7E0B8.y += D_80B7E0E8.y;
            D_80B7E0B8.z += D_80B7E0E8.z;

            D_80B7E0E8.x += D_80B7E0F8.x;
            D_80B7E0E8.y += D_80B7E0F8.y;
            D_80B7E0E8.z += D_80B7E0F8.z;

            if (CHECK_BTN_ALL(input->cur.button, BTN_A) || (D_80B7A68C != 0)) {
                D_80B7E0E8.x *= 0.9f;
                D_80B7E0E8.z *= 0.9f;
                if (D_80B7A68C == 0) {
                    func_80078884(NA_SE_IT_FISHING_REEL_HIGH - SFX_FLAG);
                }
            }

            spD8 = D_80B7E0B8.x - D_80B7E158.x;
            spD4 = D_80B7E0B8.y - D_80B7E158.y;
            spD0 = D_80B7E0B8.z - D_80B7E158.z;

            if (D_80B7E0B2 != 0) {
                D_80B7E0D8.x = D_80B7EAC8[0xC6].x + M_PI;
                D_80B7E0D8.y = D_80B7EAC8[0xC6].y;
            } else {
                D_80B7E0D8.x = 0.0f;
                D_80B7E0D8.y = Math_Atan2F(spD0, spD8) + M_PI;
            }

            phi_f16 = sqrtf(SQ(spD8) + SQ(spD4) + SQ(spD0));
            if (phi_f16 > 1000.0f) {
                phi_f16 = 1000.0f;
            }
            D_80B7E144 = 200.0f - (phi_f16 * 200.0f * 0.001f);

            spC8 = SQ(D_80B7E0B8.x) + SQ(D_80B7E0B8.z);
            if (spC8 > SQ(920.0f)) {
                if ((KREG(56) != 0) || (D_80B7E0B8.y > 160.0f) || (D_80B7E0B8.x < 80.0f) || (D_80B7E0B8.x > 180.0f) ||
                    (D_80B7E0B8.z > 1350.0f) || (D_80B7E0B8.z < 1100.0f) || (D_80B7E0B8.y < 45.0f)) {
                    sp80 = this->actor.world.pos;
                    this->actor.prevPos = this->actor.world.pos = D_80B7E0B8;
                    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 15.0f, 30.0f, 30.0f, 0x43);
                    this->actor.world.pos = sp80;

                    if (this->actor.bgCheckFlags & 0x10) {
                        D_80B7E0E8.y = -0.5f;
                    }
                    if (this->actor.bgCheckFlags & 8) {
                        if (D_80B7E0E8.y > 0.0f) {
                            D_80B7E0E8.y = 0.0f;
                        }
                        D_80B7E0E8.x = D_80B7E0E8.z = 0.0f;
                    }
                } else {
                    if (func_80B6C2EC(&D_80B7E0B8) != 0) {
                        D_80B7A694 = 3;
                        D_80B7E154 = 0.0f;
                    }
                }

                spE4 = ((sqrtf(spC8) - 920.0f) * 0.11f) + globalCtx->colCtx.colHeader->waterBoxes->ySurface;
                if (D_80B7E0B8.y <= spE4) {
                    D_80B7E0B8.y = spE4;
                    D_80B7E0E8.x = D_80B7E0E8.y = D_80B7E0E8.z = 0.0f;
                    D_80B7A694 = 3;
                    D_80B7E154 = 0.0;
                } else {
                    Math_ApproachF(&D_80B7E148, 0.0f, 1.0f, 0.05f);
                    func_80078914(&D_80B7AF94, NA_SE_EN_FANTOM_FLOAT - SFX_FLAG);
                }
            } else {
                spE4 = globalCtx->colCtx.colHeader->waterBoxes->ySurface;

                if (D_80B7E0B8.y <= spE4) {
                    D_80B7A694 = 2;
                    D_80B7E154 = 0.0f;
                    D_80B7E0E8.x = D_80B7E0E8.z = 0.0f;

                    if (D_80B7E0B6 == 2) {
                        D_80B7E0A2 = 0;
                    } else {
                        D_80B7E0A2 = 10;
                    }

                    if ((D_80B7E0B8.y <= spE4) && (spE4 < spE0) &&
                        (spE4 == globalCtx->colCtx.colHeader->waterBoxes->ySurface)) {
                        D_80B7E114 = 10;
                        func_80078914(&D_80B7AF94, NA_SE_EV_BOMB_DROP_WATER);
                        D_80B7E0F8.y = 0.0f;
                        D_80B7E0E8.y *= 0.2f;

                        for (phi_s0 = 0; phi_s0 < 50; phi_s0++) {
                            sp7C = Rand_ZeroFloat(1.5f) + 0.5f;
                            sp78 = Rand_ZeroFloat(6.28f);
                            sp9C.x = sinf(sp78) * sp7C;
                            sp9C.z = cosf(sp78) * sp7C;
                            sp9C.y = Rand_ZeroFloat(3.0f) + 3.0f;

                            spA8 = D_80B7E0B8;
                            spA8.x += (sp9C.x * 3.0f);
                            spA8.y = globalCtx->colCtx.colHeader->waterBoxes->ySurface;
                            spA8.z += (sp9C.z * 3.0f);
                            func_80B69D88(NULL, globalCtx->specialEffects, &spA8, &sp9C,
                                          Rand_ZeroFloat(0.02f) + 0.025f);
                        }

                        spA8 = D_80B7E0B8;
                        spA8.y = globalCtx->colCtx.colHeader->waterBoxes->ySurface;
                        func_80B69C2C(NULL, globalCtx->specialEffects, &spA8, 100.0f, 800.0f, 150, 90);
                    }
                } else {
                    Math_ApproachZeroF(&D_80B7E148, 1.0f, 0.05f);
                    func_80078914(&D_80B7AF94, NA_SE_EN_FANTOM_FLOAT - SFX_FLAG);
                }
            }

            D_80B7E168[0xC7].x = D_80B7E0B8.x;
            D_80B7E168[0xC7].y = D_80B7E0B8.y;
            D_80B7E168[0xC7].z = D_80B7E0B8.z;

            D_80B7E140 = 1.0f;
            D_80B7E10C = 0.5f;
            break;

        case 2:
            if (D_80B7E0B8.y <= globalCtx->colCtx.colHeader->waterBoxes->ySurface) {
                D_80B7E0B8.y += D_80B7E0E8.y;

                Math_ApproachZeroF(&D_80B7E0E8.y, 1.0f, 1.0f);

                if (D_80B7E0B6 != 2) {
                    Math_ApproachF(&D_80B7E0B8.y, globalCtx->colCtx.colHeader->waterBoxes->ySurface, 0.5f, 1.0f);
                }
            }

            Math_ApproachF(&D_80B7E148, 2.0f, 1.0f, 0.1f);

            if (D_80B7E0A2 == 0) {
                D_80B7A694 = 3;
            } else {
                D_80B7E0A2--;
            }
            break;

        case 3:
            D_80B7FEA0 = 0;

            if ((D_80B7A68C != 0) && ((SQ(D_80B7E0B8.x) + SQ(D_80B7E0B8.z)) < SQ(500.0f))) {
                D_80B7A690 = 1;
            }

            player->unk_860 = 2;

            if (D_80B7E138 < 3.0f) {
                spD0 = D_80B7E10C * Math_SinS(D_80B7E0AE * 0x1060);
                Math_ApproachF(&D_80B7E0D8.x, -0.5235988f + spD0, 0.3f, D_80B7E110);
                Math_ApproachF(&D_80B7E110, 0.5f, 1.0f, 0.02f);
                Math_ApproachZeroF(&D_80B7E10C, 1.0f, 0.02f);
            } else {
                D_80B7E110 = 0.0f;
            }

            spDC = 0x4000;
            spE4 = globalCtx->colCtx.colHeader->waterBoxes->ySurface;

            spC8 = SQ(D_80B7E0B8.x) + SQ(D_80B7E0B8.z);
            if (spC8 < SQ(920.0f)) {
                if (D_80B7E0B8.y <= (spE4 + 4.0f)) {
                    sp70 = 0.0f;

                    if (D_80B7E150 == 0) {
                        if (fabsf(input->rel.stick_x) > 30.0f) {
                            sp70 = fabsf((input->rel.stick_x - D_80B7A6C4) * 0.016666668f);
                        } else if (fabsf(input->rel.stick_y) > 30.0f) {
                            sp70 = fabsf((input->rel.stick_y - D_80B7A6C8) * 0.016666668f);
                        }
                    }

                    if (sp70 > 1.0f) {
                        sp70 = 1.0f;
                    }
                    if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
                        sp70 = 0.5f;
                    }

                    if (D_80B7A68C != 0) {
                        if (sp70 > 0.3f) {
                            sp70 = 0.3f;
                        }
                    }

                    if ((sp70 > 0.2f) && (D_80B7E138 < 4.0f)) {
                        D_80B7E150 = 5;

                        if (sp70 > 0.8f) {
                            D_80B7E120 = 2;
                        } else {
                            D_80B7E120 = 1;
                        }

                        sp90.x = player->actor.world.pos.x - D_80B7E0B8.x;
                        sp90.z = player->actor.world.pos.z - D_80B7E0B8.z;
                        sp90.y = Math_Atan2F(sp90.z, sp90.x);

                        D_80B7E134 = (sp70 * D_80B7E140) + sp90.y;
                        D_80B7E140 = D_80B7E140 * -1.0f;
                        D_80B7E138 = fabsf(sp70) * 6.0f;
                        D_80B7E0D8.x = 0.0f;
                        D_80B7E10C = 0.5f;
                        D_80B7E144 += (fabsf(sp70) * (7.5f + (KREG(25) * 0.1f)));

                        func_800F436C(&D_80B7AF94, NA_SE_EV_LURE_MOVE_W, (sp70 * 1.999f * 0.25f) + 0.75f);

                        if (D_80B7E0B6 == 2) {
                            D_80B7E128.y = 5.0f * sp70;
                            D_80B7E168[0xC7].y += D_80B7E128.y;
                            D_80B7E0B8.y += D_80B7E128.y;
                        }
                    } else if (CHECK_BTN_ALL(input->cur.button, BTN_A)) {
                        spDC = 0x500;
                        D_80B7E134 = D_80B7EAC8[0xC6].y + M_PI;
                        D_80B7E0D8.x = 0.0f;
                        D_80B7E10C = 0.5f;
                        if (D_80B7E0B6 == 2) {
                            D_80B7E128.y = 0.2f;
                            D_80B7E168[0xC7].y += D_80B7E128.y;
                            D_80B7E0B8.y += D_80B7E128.y;
                        }
                    }
                } else {
                    if (D_80B7E144 > 150.0f) {
                        D_80B7E0D8.x = D_80B7EAC8[0xC6].x + M_PI;
                        D_80B7E134 = D_80B7EAC8[0xC6].y + M_PI;
                        D_80B7E144 += 2.0f;
                    }
                }
            } else {
                spE4 = ((sqrtf(spC8) - 920.0f) * 0.11f) + globalCtx->colCtx.colHeader->waterBoxes->ySurface;
                if (D_80B7E0B8.y <= spE4) {
                    D_80B7E0B8.y = spE4;
                    spDC = 0x500;
                    D_80B7E134 = D_80B7EAC8[0xC6].y + M_PI;
                    D_80B7E0D8.x = 0.0f;
                    if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
                        D_80B7E144 += 6.0f;
                        func_80078914(&D_80B7AF94, NA_SE_PL_WALK_SAND);
                    }
                } else {
                    if (D_80B7E144 > 150.0f) {
                        D_80B7E0D8.x = D_80B7EAC8[0xC6].x + M_PI;
                        D_80B7E134 = D_80B7EAC8[0xC6].y + M_PI;
                        D_80B7E144 += 2.0f;
                    }
                }
            }

            Math_ApproachZeroF(&D_80B7E138, 1.0f, 0.3f);
            Math_ApproachS(&D_80B7E13C, (D_80B7E134 * 32768.0f) / M_PI, 3, spDC);

            D_80B7E0D8.y = (D_80B7E13C / 32768.0f) * M_PI;

            sp90.x = 0.0f;
            sp90.y = 0.0f;
            sp90.z = D_80B7E138;

            Matrix_RotateY(D_80B7E0D8.y, MTXMODE_NEW);

            if (D_80B7E0B6 == 2) {
                Matrix_MultVec3f(&sp90, &sp64);
                D_80B7E128.x = sp64.x;
                D_80B7E128.z = sp64.z;
                phi_f0 = 10.0f;
            } else {
                Matrix_MultVec3f(&sp90, &D_80B7E128);
                phi_f0 = 0.0f;
            }

            D_80B7E104 = 0.0f;

            if ((D_80B7E0B6 == 1) && CHECK_BTN_ALL(input->cur.button, BTN_A)) {
                D_80B7E128.y = -2.0f;

                if ((D_80B7E0AE & 1) != 0) {
                    D_80B7E104 = 0.5f;
                } else {
                    D_80B7E104 = -0.5f;
                }
            } else if (D_80B7E168[0xC7].y < (globalCtx->colCtx.colHeader->waterBoxes->ySurface + phi_f0)) {
                if (D_80B7E0B6 == 2) {
                    sp58 = this->actor.world.pos;
                    this->actor.prevPos = this->actor.world.pos = D_80B7E0B8;
                    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 15.0f, 30.0f, 30.0f, 0x44);
                    this->actor.world.pos = sp58;

                    D_80B7E128.y += -0.5f;
                    if (D_80B7E128.y < -1.0f) {
                        D_80B7E128.y = -1.0f;
                    }

                    if (D_80B7E0B8.y < (this->actor.floorHeight + 5.0f)) {
                        D_80B7E168[0xC7].y = D_80B7E0B8.y = this->actor.floorHeight + 5.0f;
                        D_80B7E128.y = 0.0f;
                    } else {
                        D_80B7E120 = 1;
                    }
                } else {
                    D_80B7E128.y = fabsf(D_80B7E168[0xC7].y - globalCtx->colCtx.colHeader->waterBoxes->ySurface) * 0.2f;
                    if (D_80B7E128.y > 1.5f) {
                        D_80B7E128.y = 1.5f;
                    }
                }
            }

            D_80B7E168[0xC7].x += D_80B7E128.x;
            D_80B7E168[0xC7].y += D_80B7E128.y;
            D_80B7E168[0xC7].z += D_80B7E128.z;

            if (D_80B7E168[0xC7].y > (spE4 + 6.0f)) {
                D_80B7E168[0xC7].y -= 5.0f;
            }

            D_80B7E0E8.x = D_80B7E0E8.y = D_80B7E0E8.z = D_80B7E0F8.y = 0.0f;

            if (CHECK_BTN_ALL(input->cur.button, BTN_A)) {
                if (CHECK_BTN_ALL(input->cur.button, BTN_R)) {
                    D_80B7E144 += 1.5f;
                    func_80078884(NA_SE_IT_FISHING_REEL_HIGH - SFX_FLAG);
                    Math_ApproachF(&D_80B7E154, 1000.0f, 1.0f, 2.0f);
                } else {
                    D_80B7E144 += D_80B7E11C;
                    func_80078884(NA_SE_IT_FISHING_REEL_SLOW - SFX_FLAG);
                    Math_ApproachF(&D_80B7E154, 1000.0f, 1.0f, 0.2f);
                }

                if ((globalCtx->colCtx.colHeader->waterBoxes->ySurface + 4.0f) < D_80B7E168[0xC7].y) {
                    Math_ApproachF(&D_80B7E148, 3.0f, 1.0f, 0.2f);
                } else {
                    Math_ApproachF(&D_80B7E148, 1.0f, 1.0f, 0.2f);
                }
            } else {
                Math_ApproachF(&D_80B7E148, 2.0f, 1.0f, 0.2f);
            }

            Math_ApproachF(&D_80B7E0B8.x, D_80B7E168[0xC7].x, 1.0f, D_80B7E154);
            Math_ApproachF(&D_80B7E0B8.y, D_80B7E168[0xC7].y, 1.0f, D_80B7E154);
            Math_ApproachF(&D_80B7E0B8.z, D_80B7E168[0xC7].z, 1.0f, D_80B7E154);

            if (D_80B7E138 > 1.0f) {
                Math_ApproachF(&D_80B7E154, 1000.0f, 1.0f, 1.0f);
            }

            Math_ApproachF(&D_80B7E154, 1000.0f, 1.0f, 0.1f);

            if (D_80B7E144 >= 195.0f) {
                D_80B7E144 = 195.0f;
                D_80B7A694 = 0;
                D_80B7E148 = 520.0f;
                D_80B7A6CC = 3;
            }

            if ((D_80B7E0B8.y <= (globalCtx->colCtx.colHeader->waterBoxes->ySurface + 4.0f)) &&
                ((D_80B7E0B8.y >= globalCtx->colCtx.colHeader->waterBoxes->ySurface - 4.0f))) {

                phi_v0 = 63;
                if (CHECK_BTN_ALL(input->cur.button, BTN_A) || (D_80B7E138 > 1.0f)) {
                    phi_v0 = 1;
                }

                if ((D_80B7E0AE & phi_v0) == 0) {
                    spA8 = D_80B7E0B8;
                    spA8.y = globalCtx->colCtx.colHeader->waterBoxes->ySurface;
                    func_80B69C2C(NULL, globalCtx->specialEffects, &spA8, 30.0f, 300.0f, 150, 90);
                }
            }
            break;

        case 4:
            if (this->unk_157 != 0) {
                this->unk_157--;
                D_80B7E144 += D_80B7E11C;
            }

            if (CHECK_BTN_ALL(input->cur.button, BTN_A)) {
                if ((SQ(D_80B7E0B8.x) + SQ(D_80B7E0B8.z)) > SQ(920.0f)) {
                    D_80B7E144 += (1.0f + (KREG(65) * 0.1f));
                } else {
                    D_80B7E144 += D_80B7E11C;
                }
                func_80078884(NA_SE_IT_FISHING_REEL_SLOW - SFX_FLAG);
            }

            if ((D_80B7E0AE & 0x1F) == 0) {
                if ((D_80B7E124 != 0) || (D_80B7E0B6 != 2)) {
                    D_80B7A6A4 = 5;
                }
            }

            Math_ApproachF(&D_80B7E148, 0.0f, 1.0f, 0.2f);
            break;

        case 5:
            D_80B7E14C = 0.0005000001f;
            D_80B7E168[0xC7].x = D_80B7E0B8.x;
            D_80B7E168[0xC7].y = D_80B7E0B8.y;
            D_80B7E168[0xC7].z = D_80B7E0B8.z;
            D_80B7E148 = 2.0f;
            break;
    }
}

s32 func_80B70A2C(Fishing* this, GlobalContext* globalCtx, u8 arg2) {
    s16 phi_s0;
    s16 phi_s6;
    f32 phi_f26;
    Vec3f spA4;
    Vec3f sp98;
    f32 temp_f20;
    f32 temp_f24;

    if ((this->actor.world.pos.y < (globalCtx->colCtx.colHeader->waterBoxes->ySurface - 10.0f)) && (arg2 == 0)) {
        return 0;
    }

    // Necessary to match
    if (this->unk_1AC) {}

    if (this->unk_1AC >= 40.0f) {
        phi_s6 = 40;
        phi_f26 = 1.2f;
    } else {
        phi_s6 = 30;
        phi_f26 = 1.0f;
    }

    for (phi_s0 = 0; phi_s0 < phi_s6; phi_s0++) {
        temp_f20 = (Rand_ZeroFloat(1.5f) + 0.5f) * phi_f26;
        temp_f24 = Rand_ZeroFloat(6.28f);

        sp98.x = sinf(temp_f24) * temp_f20;
        sp98.z = cosf(temp_f24) * temp_f20;
        sp98.y = (Rand_ZeroFloat(3.0f) + 3.0f) * phi_f26;

        spA4 = this->actor.world.pos;
        spA4.x += (sp98.x * 3.0f);
        spA4.y = globalCtx->colCtx.colHeader->waterBoxes->ySurface;
        spA4.z += (sp98.z * 3.0f);

        func_80B69D88(&this->actor.projectedPos, globalCtx->specialEffects, &spA4, &sp98,
                      (Rand_ZeroFloat(0.02f) + 0.025f) * phi_f26);
    }

    spA4 = this->actor.world.pos;
    spA4.y = globalCtx->colCtx.colHeader->waterBoxes->ySurface;

    func_80B69C2C(&this->actor.projectedPos, globalCtx->specialEffects, &spA4, 100.0f, 800.0f, 150, 90);

    this->unk_151 = 30;

    return 1;
}

void func_80B70CF0(Fishing* this, GlobalContext* globalCtx) {
    s16 phi_s6;
    s16 phi_s0;
    f32 phi_f28;
    Vec3f sp94;
    Vec3f sp88;
    f32 temp_f20;
    f32 temp_f22;

    // Necessary to match
    if (this->unk_1AC) {}

    if (this->unk_1AC >= 45.0f) {
        phi_s6 = 30;
        phi_f28 = 0.5f;
    } else {
        phi_s6 = 20;
        phi_f28 = 0.3f;
    }

    for (phi_s0 = 0; phi_s0 < phi_s6; phi_s0++) {
        temp_f20 = (Rand_ZeroFloat(1.5f) + 0.5f) * phi_f28;
        temp_f22 = Rand_ZeroFloat(6.28f);

        sp88.x = sinf(temp_f22) * temp_f20;
        sp88.z = cosf(temp_f22) * temp_f20;
        sp88.y = Rand_ZeroFloat(2.0f) + 2.0f;

        sp94 = this->actor.world.pos;
        sp94.x += (sp88.x * 3.0f);
        sp94.y += (sp88.y * 3.0f);
        sp94.z += (sp88.z * 3.0f);

        func_80B69D88(&this->actor.projectedPos, globalCtx->specialEffects, &sp94, &sp88,
                      (Rand_ZeroFloat(0.02f) + 0.025f) * phi_f28);
    }
}

void func_80B70ED4(Fishing* this, Input* input) {
    Vec3f sp34;
    Vec3f sp28;
    f32 sp24;

    sp34.x = D_80B7E0B8.x - this->actor.world.pos.x;
    sp34.y = D_80B7E0B8.y - this->actor.world.pos.y;
    sp34.z = D_80B7E0B8.z - this->actor.world.pos.z;

    sp24 = SQ(sp34.x) + SQ(sp34.y) + SQ(sp34.z);

    if ((D_80B7A694 == 3) && (this->unk_1A2 == 0) && (D_80B7A68C == 0)) {
        Matrix_RotateY(((0 - this->actor.shape.rot.y) / 32768.0f) * M_PI, MTXMODE_NEW);
        Matrix_MultVec3f(&sp34, &sp28);

        if ((sp28.z > 0.0f) || (this->unk_1AC < 40.0f)) {
            if ((this->unk_158 == 7) && (sp24 < SQ(200.0f))) {
                this->unk_158 = 4;
                this->unk_1B4 = D_80B7E0B8;
                this->unk_1B0 = 28672.0f;
                this->unk_188 = 5.0f;
            } else {
                if ((CHECK_BTN_ALL(input->cur.button, BTN_A) || (D_80B7E138 > 1.0f)) && (sp24 < SQ(120.0f))) {
                    this->unk_158 = 2;
                    this->unk_15E = 0;
                    this->unk_17A[0] = 0;
                    this->unk_17A[2] = (s16)Rand_ZeroFloat(100.0f) + 100;
                    this->unk_1A8 = D_80B7AD40[this->actor.params - 100].unk_0C;
                    this->unk_1B0 = 0.0f;
                }

                if ((this->unk_17A[1] == 0) && (sp24 < SQ(70.0f))) {
                    this->unk_158 = 2;
                    this->unk_15E = 0;
                    this->unk_17A[0] = 0;
                    this->unk_17A[2] = (s16)Rand_ZeroFloat(100.0f) + 100;
                    this->unk_1A8 = D_80B7AD40[this->actor.params - 100].unk_0C;
                    this->unk_1B0 = 0.0f;
                }
            }
        }
    } else if ((D_80B7A694 == 4) && (D_80B7E124 != 0) && (sp24 < SQ(100.0f)) && (this->unk_158 >= 10)) {
        this->unk_15A = 0;
        this->unk_158 = 1;
        this->unk_1A4 = 1000;
        this->unk_1A2 = 100;
        this->unk_17A[1] = 50;
    }

    if ((D_80B7E0B6 != 2) && (D_80B7E114 != 0) && (this->unk_1AC > 60.0f) && (sp24 < SQ(30.0f)) &&
        (this->unk_158 >= 10)) {
        this->unk_15A = 0;
        this->unk_158 = 1;
        this->unk_1A4 = 1000;
        this->unk_1A2 = 100;
        this->unk_17A[1] = 50;
    }
}

void func_80B71278(Fishing* this, u8 arg1) {
    s16 sfxId;
    u8 temp;

    if (this->unk_150 == 0) {
        temp = this->unk_1AC;
    } else {
        temp = 2.0f * this->unk_1AC;
    }

    if (arg1 == 0) {
        if (temp >= 50) {
            sfxId = NA_SE_EV_DIVE_INTO_WATER;
        } else if (temp >= 40) {
            sfxId = NA_SE_EV_BOMB_DROP_WATER;
        } else {
            sfxId = NA_SE_EV_BOMB_DROP_WATER;
        }
    } else {
        if (temp >= 50) {
            sfxId = NA_SE_EV_JUMP_OUT_WATER;
        } else if (temp >= 40) {
            sfxId = NA_SE_EV_OUT_OF_WATER;
        } else {
            sfxId = NA_SE_EV_OUT_OF_WATER;
        }
    }

    Audio_PlayActorSound2(&this->actor, sfxId);
}

void func_80B71438(Fishing* this, GlobalContext* globalCtx) {
    if (D_80B7E075 == 1) {
        if ((HIGH_SCORE(HS_FISHING) & 0x7F) != 0) {
            if (HIGH_SCORE(HS_FISHING) & 0x80) {
                this->actor.textId = 0x40B1;
            } else {
                this->actor.textId = 0x4089;
            }
        } else {
            this->actor.textId = 0x40AE;
        }
    } else {
        if ((HIGH_SCORE(HS_FISHING) & 0x7F000000) != 0) {
            if (HIGH_SCORE(HS_FISHING) & 0x80000000) {
                this->actor.textId = 0x40B1;
            } else {
                this->actor.textId = 0x4089;
            }
        } else {
            this->actor.textId = 0x40AE;
        }
    }

    if (this->unk_1D3 == 0) {
        if (this->unk_1D4 == 0) {
            this->actor.flags |= 1;

            if (func_8002F194(&this->actor, globalCtx)) {
                D_80B7A678 = D_80B7E078;
                this->unk_1D3 = 1;
            } else {
                func_8002F2F4(&this->actor, globalCtx);
            }
        } else {
            this->unk_1D4--;
            this->actor.flags &= ~1;
        }
    } else if (func_8002F334(&this->actor, globalCtx)) {
        this->unk_1D3 = 0;
        this->unk_1D4 = 20;
    }
}

void Fishing_Update(Actor* thisx, GlobalContext* globalCtx2) {
    s16 sp136;
    s16 sp134 = 10;
    f32 sp130;
    f32 sp12C;
    f32 sp128;
    f32 sp124;
    f32 sp120;
    f32 sp11C;
    f32 sp118;
    Vec3f sp10C;
    Vec3f sp100;
    s16 spFE;
    s16 spFC;
    s16 spFA;
    s16 phi_v0;
    s16 spF6;
    s16 spF4;
    s16 spF2;
    s16 spF0;
    s16 spEE;
    Fishing* this = THIS;
    GlobalContext* globalCtx = globalCtx2;
    Player* spE0 = PLAYER;
    Input* input = &globalCtx->state.input[0];
    f32 spD8;
    f32 phi_f0;
    f32 phi_f2;
    Vec3f spC4;
    Vec3f spB8;
    u8 phi_v0_2;
    f32 temp_f0;
    f32 temp;
    s32 pad;
    f32 spA4;
    u16 spA2;
    u8 phi_a1;

    this->actor.uncullZoneForward = 700.0f;
    this->actor.uncullZoneScale = 50.0f;

    if (this->unk_150 == 0) {
        sp118 = (spE0->actor.speedXZ * 0.15f) + 0.25f;
    } else {
        sp118 = (spE0->actor.speedXZ * 0.3f) + 0.25f;
    }

    if ((D_80B7E0B0 != 0) || (D_80B7FEC4 != 0) || ((spE0->actor.world.pos.z > 1150.0f) && (this->unk_158 != 100))) {
        this->actor.flags &= ~1;
    } else {
        this->actor.flags |= 1;
        if (D_80B7A694 != 0) {
            if (D_80B7E0B2 == 0) {
                this->actor.focus.pos = D_80B7E0B8;
            } else if (D_80B7E0B2 == 1) {
                D_80B7A6CC = 1;
                D_80B7FED0 = 0.0f;
                D_80B7E088 = 2;
            }
        }
        this->actor.focus.pos = this->actor.world.pos;
    }

    this->unk_15C++;

    for (sp136 = 0; sp136 < 4; sp136++) {
        if (this->unk_17A[sp136] != 0) {
            this->unk_17A[sp136]--;
        }
    }

    if (this->unk_1A4 != 0) {
        this->unk_1A4--;
    }

    if (this->unk_1A2 != 0) {
        this->unk_1A2--;
    }

    if (this->unk_1A0 != 0) {
        this->unk_1A0--;
    }

    if (this->unk_151 != 0) {
        this->unk_151--;
    }

    Math_ApproachF(&this->unk_198, this->unk_190, 1.0f, 0.2f);

    if (this->unk_158 == 6) {
        Math_ApproachF(&this->unk_19C, this->unk_194, 0.2f, 200.0f);
    } else {
        phi_f0 = 1.0f;
        phi_f2 = 1.0f;
        if (globalCtx->colCtx.colHeader->waterBoxes->ySurface < this->actor.world.pos.y) {
            phi_f0 = (KREG(64) * 0.1f) + 1.5f;
            phi_f2 = 3.0f;
        }
        Math_ApproachF(&this->unk_19C, this->unk_194 * phi_f0, 1.0f, 500.0f * phi_f2);
    }

    Math_ApproachS(&this->unk_170, 0, 5, 0x1F4);

    if (this->unk_150 == 0) {
        Actor_SetScale(&this->actor, this->unk_1AC * 15.0f * 0.00001f);
        this->unk_18C += this->unk_198;
        temp = cosf(this->unk_18C);
        this->unk_16C = this->unk_16E + (s16)(temp * this->unk_19C);
        temp = cosf(this->unk_18C + -1.2f);
        this->unk_176 = this->unk_16E + (s16)(temp * this->unk_19C * 1.6f);
    } else {
        Actor_SetScale(&this->actor, this->unk_1AC * 65.0f * 0.000001f);
        this->actor.scale.x = this->actor.scale.z * 1.1f;
        this->actor.scale.y = this->actor.scale.z * 1.1f;
        this->unk_18C += this->unk_198 * 0.8f;
        for (sp136 = 0; sp136 < 3; sp136++) {
            temp = cosf(this->unk_18C + (sp136 * 2.1f));
            this->unk_1CC[sp136] = this->unk_16E + (s16)(temp * this->unk_19C * 2.0f);
        }
        temp = cosf(this->unk_18C + 0.4f);
        this->unk_16C = (this->unk_19C * temp * 2.0f) * 0.6f;
    }

    sp130 = this->unk_1B4.x - this->actor.world.pos.x;
    sp12C = this->unk_1B4.y - this->actor.world.pos.y;
    sp128 = this->unk_1B4.z - this->actor.world.pos.z;

    spFC = Math_Atan2S(sp128, sp130);
    sp124 = sqrtf(SQ(sp130) + SQ(sp128));

    spFE = Math_Atan2S(sp124, sp12C);
    sp124 = sqrtf(SQ(sp130) + SQ(sp128) + SQ(sp12C));

    if ((this->unk_1A0 != 0) && (this->unk_158 != 2) && (this->unk_158 != 3) && (this->unk_158 != 4)) {
        if ((this->unk_15C & 0x40) != 0) {
            spFC = spFC + 0x4000;
        } else {
            spFC = spFC - 0x4000;
        }
        if (((this->unk_15C + 0x20) & 0x40) != 0) {
            spFE = spFE + 0x2000;
        } else {
            spFE = spFE - 0x2000;
        }
    }

    switch (this->unk_158) {
        case 100:
            func_80B71438(this, globalCtx);

            this->actor.uncullZoneForward = 500.0f;
            this->actor.uncullZoneScale = 300.0f;

            Lights_PointNoGlowSetInfo(&this->lightInfo, (s16)this->actor.world.pos.x,
                                      (s16)this->actor.world.pos.y + 20.0f, (s16)this->actor.world.pos.z - 50.0f, 255,
                                      255, 255, 255);

            this->unk_1AC = D_80B7E078;
            sp100.y = (f32)Math_SinS(globalCtx->gameplayFrames * 300) * 1;
            sp100.z = (f32)Math_SinS(globalCtx->gameplayFrames * 230) * 2;
            this->actor.world.pos.x = 130.0f;
            this->actor.world.pos.y = 55.0f + sp100.y;
            this->actor.world.pos.z = 1300.0f + sp100.z;
            this->actor.shape.rot.y = -0x8000;

            if ((this->actor.projectedPos.z < 200.0f) && (this->actor.projectedPos.z > 0.0f)) {
                spC4.x = Rand_CenteredFloat(5.0f) + 130.0f;
                spC4.y = 40.0f;
                spC4.z = Rand_CenteredFloat(5.0f) + 1280.0f;
                func_80B6A008(NULL, globalCtx->specialEffects, &spC4, Rand_ZeroFloat(0.02f) + 0.03f, 1);
            }

            Math_ApproachS(&this->unk_172, (Math_SinS(this->unk_15C * 0x800) * 2500.0f) + 2500.0f, 2, 0x7D0);
            Math_ApproachS(&this->unk_174, Math_SinS(this->unk_15C * 0xA00) * 1500.0f, 2, 0x7D0);

            this->unk_190 = 0.3f;
            this->unk_194 = 333.33334f;
            return;

        case 10:
            this->unk_1B4 = this->actor.home.pos;

            Math_ApproachF(&this->actor.speedXZ, 2.0f, 1.0f, 0.5f);
            Math_ApproachF(&this->unk_1B0, 4096.0f, 1.0f, 256.0f);

            if (sp124 < 40.0f) {
                this->unk_158 = 11;
                this->unk_190 = 0.4f;
                this->unk_194 = 500.0f;
            }

            func_80B70ED4(this, input);

            if (this->actor.xzDistToPlayer < (250.0f * sp118)) {
                this->unk_15A = this->unk_158 = 0;
                this->unk_1A4 = 1000;
                this->unk_1A2 = 200;
                this->unk_17A[1] = 50;
            }
            break;

        case 11:
            this->unk_1B4 = this->actor.home.pos;

            Math_ApproachF(&this->actor.speedXZ, 0.0f, 1.0f, 0.05f);
            Math_ApproachF(&this->unk_1B0, 0.0f, 1.0f, 256.0f);

            if (sp124 >= 40.0f) {
                this->unk_158 = 10;
                this->unk_190 = 1.0f;
                this->unk_194 = 2000.0f;
            }
            func_80B70ED4(this, input);

            if (this->actor.xzDistToPlayer < (250.0f * sp118)) {
                this->unk_15A = this->unk_158 = 0;
                this->unk_1A4 = 1000;
                this->unk_1A2 = 200;
                this->unk_17A[1] = 50;
            }

            if (func_8010BDBC(&globalCtx->msgCtx) == 0) {
                if ((gSaveContext.dayTime >= 0xC000) && (gSaveContext.dayTime <= 0xC01B)) {
                    this->unk_158 = 7;
                    this->unk_17A[3] = (s16)Rand_ZeroFloat(150.0f) + 200;
                }
                if ((gSaveContext.dayTime >= 0x3AAA) && (gSaveContext.dayTime <= 0x3AC5)) {
                    this->unk_158 = 7;
                    this->unk_17A[3] = (s16)Rand_ZeroFloat(150.0f) + 200;
                }
            }

            if (KREG(15) != 0) {
                KREG(15) = 0;
                this->unk_158 = 7;
                this->unk_17A[3] = (s16)Rand_ZeroFloat(150.0f) + 2000;
            }
            break;

        case 0:
            Math_ApproachF(&this->actor.speedXZ, 1.0f, 1.0f, 0.05f);
            Math_ApproachF(&this->unk_1B0, 0.0f, 1.0f, 256.0f);

            if (this->unk_17A[0] == 0) {
                if (this->unk_1A4 == 0) {
                    this->unk_158 = this->unk_15A = 10;
                } else {
                    this->unk_158 = 1;
                    this->unk_17A[0] = (s16)Rand_ZeroFloat(30.0f) + 10;
                    this->unk_1B4.x = Rand_CenteredFloat(300.0f);
                    this->unk_1B4.y =
                        (globalCtx->colCtx.colHeader->waterBoxes->ySurface - 50.0f) - Rand_ZeroFloat(50.0f);
                    this->unk_1B4.z = Rand_CenteredFloat(300.0f);
                    this->unk_190 = 1.0f;
                    this->unk_194 = 2000.0f;
                }
            }

            if (D_80B7E0B6 == 2) {
                func_80B70ED4(this, input);
            } else {
                this->actor.flags &= ~1;
            }
            break;

        case 1:
            if (this->unk_150 == 1) {
                this->unk_158 = -1;
                this->unk_1A4 = 20000;
                this->unk_1A2 = 20000;
                this->unk_1B4.x = 0.0f;
                this->unk_1B4.y = -140.0f;
                this->unk_1B4.z = 0.0f;
            } else {
                Math_ApproachF(&this->unk_1B0, 4096.0f, 1.0f, 256.0f);

                if ((this->actor.xzDistToPlayer < (250.0f * sp118)) || (this->unk_17A[1] != 0)) {
                    Math_ApproachF(&this->unk_1B0, 8192.0f, 1.0f, 768.0f);
                    Math_ApproachF(&this->actor.speedXZ, 4.2f, 1.0f, 0.75);
                    this->unk_190 = 1.2f;
                    this->unk_194 = 4000.0f;
                    this->unk_17A[0] = 20;
                } else {
                    this->unk_190 = 1.0f;
                    this->unk_194 = 2000.0f;
                    Math_ApproachF(&this->actor.speedXZ, 1.5f, 1.0f, 0.1f);
                }

                if ((this->unk_17A[0] == 0) || (sp124 < 50.0f)) {
                    this->unk_158 = 0;
                    this->unk_17A[0] = (s16)Rand_ZeroFloat(30.0f) + 3;
                    this->unk_190 = 1.0f;
                    this->unk_194 = 500.0f;
                }

                if (D_80B7E0B6 == 2) {
                    func_80B70ED4(this, input);
                } else {
                    this->actor.flags &= ~1;
                }
            }
            break;

        case -1:
            Math_ApproachS(&this->unk_166, 0, 0x14, 0x20);

            if ((this->actor.xzDistToPlayer < (250.0f * sp118)) || (this->unk_17A[1] != 0)) {
                Math_ApproachF(&this->actor.speedXZ, 3.0f, 1.0f, 0.75);
                this->unk_190 = 1.0f;
                this->unk_17A[0] = 20;
                this->unk_194 = 4000.0f;
                Math_ApproachF(&this->unk_1B0, 4096.0f, 1.0f, 256.0f);

                if ((globalCtx->gameplayFrames & 0x1F) == 0) {
                    this->unk_1B4.x = Rand_CenteredFloat(600.0f);
                    this->unk_1B4.z = Rand_CenteredFloat(600.0f);
                    this->unk_1B4.y = -120.0f;
                }
            } else if (sp124 > 50.0f) {
                this->unk_190 = 0.8f;
                this->unk_194 = 1500.0f;
                Math_ApproachF(&this->actor.speedXZ, 1.0f, 1.0f, 0.1f);
                Math_ApproachF(&this->unk_1B0, 2048.0f, 1.0f, 128.0f);
            } else {
                this->unk_190 = 0.4f;
                this->unk_194 = 500.0f;
                Math_ApproachZeroF(&this->actor.speedXZ, 1.0f, 0.02f);
                Math_ApproachF(&this->unk_1B0, 0.0f, 1.0f, 256.0f);
            }

            if (this->unk_1A4 == 0) {
                this->unk_158 = 10;
                this->unk_15A = 10;
            } else if ((KREG(2) != 0) || (((this->unk_1A4 & 0x7FF) == 0) && (this->unk_1A4 < 15000))) {
                KREG(2) = 0;
                this->unk_158 = -2;
                this->actor.world.rot.x = this->actor.shape.rot.x = 0;
                this->unk_1B4.y = globalCtx->colCtx.colHeader->waterBoxes->ySurface + 10.0f;
                this->unk_1B4.x = Rand_ZeroFloat(50.0f);
                this->unk_1B4.z = Rand_ZeroFloat(50.0f);
            }

            this->actor.flags &= ~1;
            break;

        case -2:
            if ((this->actor.xzDistToPlayer < (250.0f * sp118)) || (this->unk_17A[1] != 0)) {
                this->unk_158 = -1;
                this->unk_1B4.y = -120.0f;
            } else {
                this->unk_190 = 0.6f;
                this->unk_194 = 1000.0f;

                Math_ApproachS(&this->unk_166, -0x1000, 0x14, 0x100);

                if (this->actor.world.pos.y < (globalCtx->colCtx.colHeader->waterBoxes->ySurface - 20.0f)) {
                    Math_ApproachF(&this->actor.speedXZ, 0.5f, 1.0f, 0.1f);
                } else {
                    Math_ApproachZeroF(&this->actor.speedXZ, 1.0f, 0.01f);
                    if ((this->actor.speedXZ == 0.0f) ||
                        ((globalCtx->colCtx.colHeader->waterBoxes->ySurface - 5.0f) < this->actor.world.pos.y)) {
                        this->unk_1B4.x = Rand_ZeroFloat(300.0f);
                        this->unk_1B4.z = Rand_ZeroFloat(300.0f);
                        this->unk_1B4.y = this->actor.floorHeight + 10.0f;
                        this->unk_158 = -25;
                        this->unk_1B0 = 0.0f;
                        spB8 = this->unk_1C0;
                        spB8.y = globalCtx->colCtx.colHeader->waterBoxes->ySurface;
                        func_80B69C2C(&this->actor.projectedPos, globalCtx->specialEffects, &spB8, 10.0f, 300.0f, 150,
                                      90);
                        func_80B69C2C(&this->actor.projectedPos, globalCtx->specialEffects, &spB8, 30.0f, 400.0f, 150,
                                      90);
                        Audio_PlayActorSound2(&this->actor, NA_SE_PL_CATCH_BOOMERANG);
                        break;
                    }
                }

                Math_ApproachF(&this->unk_1B0, 2048.0f, 1.0f, 128.0f);
                this->actor.flags &= ~1;
            }
            break;

        case -25:
            if ((this->actor.xzDistToPlayer < (250.0f * sp118)) || (this->unk_17A[1] != 0)) {
                this->unk_158 = -1;
                this->unk_1B4.y = -120.0f;
            } else {
                Math_ApproachS(&this->unk_166, 0x1000, 0x14, 0x6A);

                if (sp124 > 40.0f) {
                    this->unk_190 = 0.7f;
                    this->unk_194 = 1200.0f;
                    Math_ApproachF(&this->actor.speedXZ, 0.5f, 1.0f, 0.01f);
                    Math_ApproachF(&this->unk_1B0, 2048.0f, 1.0f, 128.0f);
                } else {
                    this->unk_158 = -1;
                }
            }
            break;

        case 2:
            if (((this->actor.params + D_80B7E118) & 1) != 0) {
                sp10C.x = 10.0f;
            } else {
                sp10C.x = -10.0f;
            }
            sp10C.y = 0.0f;
            sp10C.z = 0.0f;
            Matrix_RotateY(D_80B7E0D8.y, MTXMODE_NEW);
            Matrix_MultVec3f(&sp10C, &sp100);

            this->unk_1B4.x = D_80B7E0B8.x + sp100.x;
            this->unk_1B4.z = D_80B7E0B8.z + sp100.z;

            if (D_80B7E0B6 == 2) {
                this->unk_1B4.y = D_80B7E0B8.y;
            } else if (this->unk_150 == 0) {
                this->unk_1B4.y = D_80B7E0B8.y - 15.0f;
            } else {
                this->unk_1B4.y = D_80B7E0B8.y - 5.0f;
            }

            if (this->unk_1B4.y <= this->actor.floorHeight) {
                this->unk_1B4.y = this->actor.floorHeight + 3.0f;
            }

            if ((D_80B7E0B6 != 2) && (this->unk_1B4.y < this->actor.world.pos.y)) {
                Math_ApproachF(&this->actor.world.pos.y, this->unk_1B4.y, 0.1f,
                               (this->actor.world.pos.y - this->unk_1B4.y) * 0.1f);
            }

            Math_ApproachF(&this->unk_1B0, 8192.0f, 1.0f, (KREG(16) * 128) + 384.0f);
            if (CHECK_BTN_ALL(input->press.button, BTN_A)) {
                this->unk_1A8 += 0.005f;
            }

            if (D_80B7E120 != 0) {
                if (D_80B7E120 == 1) {
                    this->unk_1A8 += 0.01f;
                } else {
                    this->unk_1A8 += 0.05f;
                }
                D_80B7E120 = 0;
            }

            if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
                this->unk_1A8 += 0.008f;
            }

            if (sp124 < ((this->unk_1AC * 0.5f) + 20.0f)) {
                if (this->unk_15E == 0) {
                    this->unk_190 = 1.0f;
                    this->unk_194 = 500.0f;
                    this->unk_17A[0] = (s16)Rand_ZeroFloat(10.0f) + 2;
                }
                Math_ApproachF(&this->actor.speedXZ, -0.2f, 1.0f, 0.1f);
                this->unk_15E = 1;
            } else {
                if (this->unk_15E != 0) {
                    this->unk_190 = 1.0f;
                    this->unk_1B0 = 0.0f;
                    this->unk_194 = 3000.0f;
                }
                Math_ApproachF(&this->actor.speedXZ, 3.0f, 1.0f, 0.15f);
                this->unk_15E = 0;
            }

            if (this->unk_1AC >= 60.0f) {
                sp120 = 0.3f;
            } else if (this->unk_1AC >= 45.0f) {
                sp120 = 0.6f;
            } else {
                sp120 = 1.0f;
            }

            if ((gSaveContext.dayTime >= 0xB555) && (gSaveContext.dayTime <= 0xCAAA)) {
                sp120 *= 1.75f;
            } else if ((gSaveContext.dayTime >= 0x3555) && (gSaveContext.dayTime <= 0x4AAA)) {
                sp120 *= 1.5f;
            } else if (D_80B7E076 != 0) {
                sp120 *= 1.5f;
            } else if ((u8)D_80B7A650 != 0) {
                sp120 *= 3.0f;
            }

            sp11C = 0.03f * sp120;
            if (D_80B7E0B6 == 2) {
                sp11C *= 5.0f;
            }

            if (((this->unk_17A[0] == 1) || (Rand_ZeroOne() < sp11C)) &&
                ((Rand_ZeroOne() < (this->unk_1A8 * sp120)) || ((this->unk_150 + 1) == KREG(69)))) {
                if (this->unk_150 == 0) {
                    this->unk_158 = 3;
                    this->unk_190 = 1.2f;
                    this->unk_194 = 5000.0f;
                    this->unk_17A[0] = Rand_ZeroFloat(10.0f);
                } else {
                    this->unk_158 = -3;
                    this->unk_190 = 1.0f;
                    this->unk_194 = 3000.0f;
                    this->unk_17A[0] = 40;
                }
                if (D_80B7E0B6 == 2) {
                    this->unk_188 = Rand_ZeroFloat(1.5f) + 3.0f;
                } else {
                    this->unk_188 = Rand_ZeroFloat(1.5f) + 4.5f;
                }
            }

            if ((D_80B7A694 != 3) || (this->unk_17A[2] == 0) ||
                (sqrtf(SQ(this->actor.world.pos.x) + SQ(this->actor.world.pos.z)) > 800.0f)) {
                this->unk_158 = this->unk_15A;
                this->unk_17A[1] = (s16)Rand_ZeroFloat(30.0f) + 50;
                this->unk_17A[0] = (s16)Rand_ZeroFloat(10.0f) + 5;
                this->unk_190 = 1.0f;
                this->unk_1B0 = 0.0f;
                this->unk_194 = 2000.0f;
            }

            if (this->actor.xzDistToPlayer < (100.0f * sp118)) {
                this->unk_15A = this->unk_158 = 0;
                this->unk_1A4 = 1000;
                this->unk_1A2 = 200;
                this->unk_17A[1] = 50;
            }
            break;

        case 3:
            this->unk_151 = 6;
            sp134 = 2;

            if ((((s16)spE0->actor.world.pos.x + D_80B7E118) & 1) != 0) {
                sp10C.x = 30.0f;
            } else {
                sp10C.x = -30.0f;
            }
            sp10C.y = 0.0f;
            sp10C.z = 30.0f;

            Matrix_RotateY(D_80B7E0D8.y, MTXMODE_NEW);
            Matrix_MultVec3f(&sp10C, &sp100);

            this->unk_1B4.x = D_80B7E0B8.x + sp100.x;
            this->unk_1B4.z = D_80B7E0B8.z + sp100.z;
            this->unk_1B4.y = D_80B7E0B8.y - 10.0f;
            this->unk_1B0 = 4096.0f;
            Math_ApproachF(&this->actor.speedXZ, this->unk_188 * 0.8f, 1.0f, 1.0f);

            if ((D_80B7A694 != 3) || ((globalCtx->colCtx.colHeader->waterBoxes->ySurface + 5.0f) < D_80B7E0B8.y) ||
                (sqrtf(SQ(D_80B7E0B8.x) + SQ(D_80B7E0B8.z)) > 800.0f)) {
                this->unk_158 = this->unk_15A;
                this->unk_17A[0] = 0;
                this->unk_190 = 1.0f;
                this->unk_194 = 2000.0f;
            } else if ((this->unk_17A[0] == 0) || (sp124 < 30.0f)) {
                this->unk_158 = 4;
                this->unk_1B4 = D_80B7E0B8;
                this->unk_1B0 = 16384.0f;
                this->unk_190 = 1.2f;
                this->unk_194 = 5000.0f;
                this->unk_17A[0] = 20;
            }
            break;

        case 4:
            Math_ApproachF(&this->unk_1B0, 16384.0f, 1.0f, 4096.0f);
            Math_ApproachS(&this->unk_170, 0x4E20, 4, 0x1388);

            this->unk_151 = 50;
            sp134 = 2;
            this->unk_1B4 = D_80B7E0B8;
            Math_ApproachF(&this->actor.speedXZ, this->unk_188, 1.0f, 1.0f);

            if ((D_80B7A694 != 3) || (this->unk_17A[0] == 0) ||
                ((globalCtx->colCtx.colHeader->waterBoxes->ySurface + 5.0f) < D_80B7E0B8.y) ||
                (sqrtf(SQ(D_80B7E0B8.x) + SQ(D_80B7E0B8.z)) > 800.0f)) {

                this->unk_17A[0] = 0;
                this->unk_158 = this->unk_15A;
                this->unk_190 = 1.0f;
                this->unk_194 = 2000.0f;
            } else if (sp124 < 10.0f) {
                if (func_80B70A2C(this, globalCtx, 0) != 0) {
                    func_80B71278(this, 0);
                }

                this->unk_158 = 5;
                this->unk_190 = 1.2f;
                this->unk_194 = 5000.0f;
                this->unk_17A[1] = 150;
                this->unk_17A[0] = 0;
                this->unk_17A[2] = 0;
                this->unk_17A[3] = 120;

                D_80B7A694 = 4;
                D_80B7E0A8 = this;
                D_80B7A698.y = 500.0f - Rand_ZeroFloat(400.0f);

                if (D_80B7E0B6 == 2) {
                    if (this->unk_1AC > 70.0f) {
                        phi_v0 = (s16)Rand_ZeroFloat(20.0f) + 10;
                    } else if (this->unk_1AC > 60.0f) {
                        phi_v0 = (s16)Rand_ZeroFloat(30.0f) + 20;
                    } else if (this->unk_1AC > 50.0f) {
                        phi_v0 = (s16)Rand_ZeroFloat(30.0f) + 30;
                    } else {
                        phi_v0 = (s16)Rand_ZeroFloat(40.0f) + 40;
                    }
                    D_80B7E122 = phi_v0;
                    D_80B7E0A4 = phi_v0;
                    func_800A9F6C(0.0f, 60, phi_v0 * 3, 10);
                } else {
                    if (this->unk_1AC > 70.0f) {
                        phi_v0 = (s16)Rand_ZeroFloat(5.0f) + 10;
                    } else if (this->unk_1AC > 60.0f) {
                        phi_v0 = (s16)Rand_ZeroFloat(5.0f) + 15;
                    } else if (this->unk_1AC > 50.0f) {
                        phi_v0 = (s16)Rand_ZeroFloat(5.0f) + 17;
                    } else {
                        phi_v0 = (s16)Rand_ZeroFloat(5.0f) + 25;
                    }
                    D_80B7E122 = phi_v0;
                    D_80B7E0A4 = phi_v0;
                    func_800A9F6C(0.0f, 180, phi_v0 * 3, 10);
                }

                D_80B7E124 = 0;
                D_80B7E116 = 100;
                D_80B7E080 = 0;
            }
            break;

        case -3:
            this->unk_151 = 50;
            this->unk_1B4 = D_80B7E0B8;
            Math_ApproachF(&this->actor.speedXZ, 2.0f, 1.0f, 1.0f);

            if ((D_80B7A694 != 3) || (this->unk_17A[0] == 0) ||
                ((globalCtx->colCtx.colHeader->waterBoxes->ySurface + 5.0f) < D_80B7E0B8.y) ||
                (sqrtf(SQ(D_80B7E0B8.x) + SQ(D_80B7E0B8.z)) > 800.0f)) {

                this->unk_17A[0] = 0;
                this->unk_190 = 1.0f;
                this->unk_158 = this->unk_15A;
                this->unk_194 = 2000.0f;
            } else if (sp124 < 10.0f) {
                if ((globalCtx->colCtx.colHeader->waterBoxes->ySurface - 10.0f) < D_80B7E0B8.y) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EV_JUMP_OUT_WATER);
                    func_80078884(NA_SE_PL_CATCH_BOOMERANG);
                }

                func_80B70A2C(this, globalCtx, 0);
                this->unk_158 = 5;
                this->unk_190 = 1.2f;
                this->unk_194 = 5000.0f;
                this->unk_17A[1] = 150;
                this->unk_17A[0] = 0;
                this->unk_17A[2] = 0;
                this->unk_17A[3] = 120;

                D_80B7A694 = 4;
                D_80B7E0A8 = this;

                if (D_80B7E0B6 == 2) {
                    D_80B7E122 = 30;
                    D_80B7E0A4 = 100;
                    func_800A9F6C(0.0f, 60, 90, 10);
                } else {
                    D_80B7E122 = 30;
                    D_80B7E0A4 = 40;
                    func_800A9F6C(0.0f, 180, 90, 10);
                }

                D_80B7E124 = 0;
                D_80B7E116 = 100;
                D_80B7E080 = 0;
            }
            break;

        case 5:
            this->actor.uncullZoneForward = 1200.0f;
            this->actor.uncullZoneScale = 200.0f;

            D_80B7E080++;
            osSyncPrintf("HIT FISH %dcm\n", (u8)this->unk_1AC);

            Math_ApproachS(&this->unk_170, 0x2AF8, 4, 0xBB8);
            D_80B7E0A8 = this;
            Math_ApproachS(&spE0->actor.shape.rot.y, this->actor.yawTowardsPlayer + 0x8000, 5, 0x500);

            if (D_80B7E124 == 0) {
                if ((D_80B7FEA0 < 20) && ((D_80B7E0AE & 3) == 0)) {
                    D_80B7FEA0++;
                    if (1) {}
                }
            }

            if ((D_80B7E122 != 0) && (D_80B7E124 == 0)) {
                if (((input->rel.stick_y < -50) && (D_80B7A6C8 > -40)) || CHECK_BTN_ALL(input->press.button, BTN_A)) {
                    if (input->rel.stick_y < -50) {
                        temp_f0 = 40.0f - ((this->unk_1AC - 30.0f) * 1.333333f);
                        if (temp_f0 > 0.0f) {
                            this->unk_152 = temp_f0;
                            this->unk_154 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
                            this->unk_156 = 1;
                        }
                    }

                    this->unk_198 = 1.7f;
                    this->unk_19C = 7000.0f;
                    D_80B7E124 = 1;
                    Audio_SetBGM(0x81A);
                    D_80B7E0A6 = 0;

                    if (this->unk_150 == 1) {
                        spA4 = (this->unk_1AC * 3.0f) + 120.0f;
                    } else {
                        spA4 = (2.0f * this->unk_1AC) + 120.0f;
                    }
                    if (spA4 > 255.0f) {
                        spA4 = 255.0f;
                    }

                    func_800A9F6C(0.0f, spA4, 120, 5);
                    D_80B7E0A4 = 40;
                    D_80B7FDA8 = 10;
                    func_80078884(NA_SE_IT_FISHING_HIT);
                }
            }

            if (this->actor.world.pos.y < globalCtx->colCtx.colHeader->waterBoxes->ySurface) {
                if (this->unk_17A[1] > 30) {
                    phi_v0_2 = 7;
                } else {
                    phi_v0_2 = 0xF;
                }

                if (((this->unk_15C & phi_v0_2) == 0) && (Rand_ZeroOne() < 0.75f) && (D_80B7E0A4 == 0)) {
                    if (this->unk_1AC >= 70.0f) {
                        spA4 = 255.0f;
                    } else if (this->unk_1AC >= 60.0f) {
                        spA4 = 230.0f;
                    } else if (this->unk_1AC >= 50.0f) {
                        spA4 = 200.0f;
                    } else if (this->unk_1AC >= 40.0f) {
                        spA4 = 170.0f;
                    } else {
                        spA4 = 140.0f;
                    }
                    if (phi_v0_2 == 0xF) {
                        spA4 *= 3.0f / 4.0f;
                    }

                    func_800A9F6C(0.0f, spA4, (s16)Rand_ZeroFloat(5.0f) + 10, 5);
                }

                if (this->unk_17A[1] > 30) {
                    if (this->unk_17A[0] == 0) {
                        sp10C.x = 0.0f;
                        sp10C.y = 0.0f;
                        sp10C.z = 200.0f;
                        for (spA2 = 0; spA2 < 100; spA2++) {
                            Matrix_RotateY(Rand_CenteredFloat(2.3561945f) +
                                               (((this->actor.yawTowardsPlayer + 0x8000) / 32768.0f) * M_PI),
                                           MTXMODE_NEW);
                            Matrix_MultVec3f(&sp10C, &sp100);
                            this->unk_1B4.x = this->actor.world.pos.x + sp100.x;
                            this->unk_1B4.z = this->actor.world.pos.z + sp100.z;
                            if ((SQ(this->unk_1B4.x) + SQ(this->unk_1B4.z)) < 562500.0f) {
                                break;
                            }
                        }

                        if ((Rand_ZeroOne() < 0.1f) && (this->unk_17A[3] == 0)) {
                            if (this->unk_1AC >= 60.0f) {
                                phi_a1 = 255;
                            } else if (this->unk_1AC >= 50.0f) {
                                phi_a1 = 200;
                            } else {
                                phi_a1 = 180;
                            }
                            func_800A9F6C(0.0f, phi_a1, 90, 2);
                            this->unk_17A[0] = 20;
                            this->unk_17A[1] = 100;
                            this->unk_17A[2] = 20;
                            this->unk_17A[3] = 100;
                            this->unk_1B4.y = 300.0f;
                            D_80B7E0A4 = 0x28;
                            D_80B7E116 = (s16)Rand_ZeroFloat(30.0f) + 20;
                        } else {
                            this->unk_17A[0] = (s16)Rand_ZeroFloat(10.0f) + 3;
                            this->unk_17A[2] = 0;
                            this->unk_1B4.y = -70.0f - Rand_ZeroFloat(150.0f);
                        }
                    }

                    if (this->unk_17A[2] != 0) {
                        D_80B7E11C = 0.0f;
                        this->unk_190 = 1.6f;
                        this->unk_194 = 6000.0f;
                        Math_ApproachF(&this->actor.speedXZ, 7.5f, 1.0f, 1.0f);
                        Math_ApproachS(&this->unk_170, 0x4E20, 2, 0xFA0);
                    } else {
                        if ((D_80B7E124 == 0) && (D_80B7E0B6 == 2)) {
                            this->unk_190 = 1.0f;
                            this->unk_194 = 2000.0f;
                            Math_ApproachF(&this->actor.speedXZ, 3.0f, 1.0f, 0.2f);
                        } else {
                            this->unk_190 = 1.4f;
                            this->unk_194 = 5000.0f;
                            Math_ApproachF(&this->actor.speedXZ, 5.0f, 1.0f, 0.5f);
                        }

                        if (this->unk_150 == 0) {
                            D_80B7E11C = 1.0f - (this->unk_1AC * 0.00899f);
                        } else {
                            D_80B7E11C = 1.0f - (this->unk_1AC * 0.00899f * 1.4f);
                        }
                    }
                } else {
                    if (((this->unk_17A[1] & 0xF) == 0) && CHECK_BTN_ALL(input->cur.button, BTN_A) &&
                        (!(this->unk_1AC >= 60.0f) || (D_80B7E080 >= 2000))) {
                        this->unk_152 = (s16)Rand_ZeroFloat(30.0f) + 15;
                        this->unk_154 = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
                    }

                    this->unk_190 = 1.0f;
                    this->unk_194 = 4500.0f;

                    if (this->unk_150 == 0) {
                        D_80B7E11C = 1.3f - (this->unk_1AC * 0.00899f);
                    } else {
                        D_80B7E11C = 1.3f - (this->unk_1AC * 0.00899f * 1.4f);
                    }

                    Math_ApproachF(&this->actor.speedXZ, 2.0f, 1.0f, 0.5f);

                    if (this->unk_17A[1] == 0) {
                        this->unk_152 = 0;

                        if (D_80B7E080 < 2000) {
                            this->unk_17A[1] = (s16)Rand_ZeroFloat(50.0f) + 50;
                        } else if (D_80B7E080 < 3000) {
                            this->unk_17A[1] = (s16)Rand_ZeroFloat(20.0f) + 30;
                        } else {
                            this->unk_17A[1] = (s16)Rand_ZeroFloat(10.0f) + 25;
                        }
                    }
                }
            }

            if (D_80B7E074 != 0) {
                D_80B7E11C = 0.0f;
            }

            if (D_80B7E124 || (D_80B7E0B6 != 2)) {
                if (this->actor.speedXZ < 3.0f) {
                    if ((D_80B7E0AE & 8) != 0) {
                        sp100.x = -0.8f;
                    } else {
                        sp100.x = -0.75f;
                    }
                } else {
                    if ((D_80B7E0AE & 4) != 0) {
                        sp100.x = -0.9f;
                    } else {
                        sp100.x = -0.85f;
                    }
                }

                Math_ApproachF(&D_80B7A6C0, 35.0f, 0.1f, 3.5f);
                Math_ApproachF(&D_80B7A6BC, sp100.x, 0.3f, 0.1f);
            }

            D_80B7E168[0xC7] = this->unk_1C0;
            sp10C.x = D_80B7E168[0xC7].x - D_80B7E168[0xC6].x;
            sp10C.y = D_80B7E168[0xC7].y - D_80B7E168[0xC6].y;
            sp10C.z = D_80B7E168[0xC7].z - D_80B7E168[0xC6].z;

            if ((SQ(sp10C.x) + SQ(sp10C.y) + SQ(sp10C.z)) > 400.0f) {
                Math_ApproachF(&this->actor.world.pos.x, D_80B7E168[0xC6].x, 0.2f, 2.0f * (this->actor.speedXZ * 1.5f));
                Math_ApproachF(&this->actor.world.pos.y, D_80B7E168[0xC6].y, 0.2f,
                               2.0f * (this->actor.speedXZ * 1.5f) * 5.0f * 0.1f);
                Math_ApproachF(&this->actor.world.pos.z, D_80B7E168[0xC6].z, 0.2f, 2.0f * (this->actor.speedXZ * 1.5f));
            }

            if (CHECK_BTN_ALL(input->cur.button, BTN_A) || (input->rel.stick_y < -30)) {
                if (D_80B7E116 < 100) {
                    D_80B7E116++;
                }
            } else {
                if (D_80B7E116 != 0) {
                    D_80B7E116--;
                }
            }

            if ((D_80B7A694 < 3) || ((D_80B7E074 != 0) && (D_80B7E080 > 50)) || (D_80B7E080 >= 6000) ||
                ((D_80B7E122 == 0) && (D_80B7E124 == 0)) || (D_80B7E116 == 0) ||
                (((D_80B7E0AE & 0x7F) == 0) && (Rand_ZeroOne() < 0.05f) && (D_80B7E0B6 != 2) && (KREG(69) == 0))) {
                D_80B7A67C = 20;

                if ((D_80B7E122 == 0) && (D_80B7E124 == 0)) {
                    D_80B7E086 = 0x4081;
                    if (((D_80B7E075 == 1) && (HIGH_SCORE(HS_FISHING) & 0x400)) ||
                        ((D_80B7E075 != 1) && (HIGH_SCORE(HS_FISHING) & 0x800))) {
                        D_80B7A67C = 0;
                    }
                } else {
                    D_80B7E086 = 0x4082;
                    func_800A9F6C(0.0f, 1, 3, 1);
                    Audio_SetBGM(0x100A00FF);
                }

                this->unk_158 = this->unk_15A = 0;
                this->unk_1A4 = 10000;
                this->unk_1A2 = 500;
                this->unk_17A[1] = 50;
                this->unk_17A[0] = 0;
                this->unk_190 = 1.0f;
                this->unk_194 = 3000.0f;

                if (D_80B7A694 == 4) {
                    D_80B7A694 = 3;
                }

                D_80B7E0A6 = 50;
                D_80B7E11C = 0.5f;
                this->unk_152 = 0;
            } else if (this->actor.xzDistToPlayer < (KREG(59) + 50.0f)) {
                this->unk_158 = 6;
                this->unk_17A[0] = 100;
                spE0->unk_860 = 3;
                func_800A9F6C(0.0f, 1, 3, 1);
                D_80B7E084++;
                func_80064520(globalCtx, &globalCtx->csCtx);
                D_80B7A6CC = 100;
                D_80B7FEC8 = 45.0f;
                D_80B7A694 = 5;
                this->unk_190 = 1.0f;
                this->unk_194 = 500.0f;
                this->unk_19C = 5000.0f;

                if (this->actor.world.pos.y <= globalCtx->colCtx.colHeader->waterBoxes->ySurface) {
                    func_80B71278(this, 1);
                    func_80B70A2C(this, globalCtx, 1);
                }
                goto case_6;
            }
            break;

        case_6:
        case 6:
            Math_ApproachS(&this->unk_170, 0x2AF8, 2, 0xFA0);
            Math_ApproachF(&D_80B7FEC8, 15.0f, 0.05f, 0.75f);

            sp10C.x = D_80B7FEC8;
            if (D_80B7E075 != 1) {
                sp10C.y = 30.0f;
                sp10C.z = 55.0f;
            } else {
                sp10C.y = 10.0f;
                sp10C.z = 50.0f;
            }
            Matrix_RotateY((spE0->actor.shape.rot.y / 32768.0f) * M_PI, MTXMODE_NEW);
            Matrix_MultVec3f(&sp10C, &D_80B7FEA8);

            D_80B7FEA8.x += spE0->actor.world.pos.x;
            D_80B7FEA8.y += spE0->actor.world.pos.y;
            D_80B7FEA8.z += spE0->actor.world.pos.z;
            D_80B7FEB8 = spE0->actor.world.pos;

            if (D_80B7E075 != 1) {
                D_80B7FEB8.y += 40.0f;
            } else {
                D_80B7FEB8.y += 25.0f;
            }

            if (this->unk_17A[0] == 90) {
                Audio_SetBGM(0x924);
                D_80B7A67C = 40;

                if (this->unk_150 == 0) {
                    D_80B7A678 = this->unk_1AC;

                    if (D_80B7A678 >= 75) {
                        D_80B7E086 = 0x409F;
                    } else if (D_80B7A678 >= 50) {
                        D_80B7E086 = 0x4091;
                    } else {
                        D_80B7E086 = 0x4083;
                    }
                } else {
                    D_80B7A678 = 2.0f * this->unk_1AC;
                    D_80B7E086 = 0x4099;
                }

                this->unk_1D5 = 0;
            }

            this->unk_160 = -0x4000;
            this->actor.shape.rot.y = spE0->actor.shape.rot.y + 0x5000;
            this->actor.shape.rot.x = this->actor.shape.rot.z = this->unk_162 = this->unk_164 = this->unk_16E = 0;

            sp10C.x = 4.0f;
            sp10C.y = -10.0f;
            sp10C.z = 5.0f;
            Matrix_MultVec3f(&sp10C, &sp100);
            Math_ApproachF(&this->actor.world.pos.x, spE0->bodyPartsPos[15].x + sp100.x, 1.0f, 6.0f);
            Math_ApproachF(&this->actor.world.pos.y, spE0->bodyPartsPos[15].y + sp100.y, 1.0f, 6.0f);
            Math_ApproachF(&this->actor.world.pos.z, spE0->bodyPartsPos[15].z + sp100.z, 1.0f, 6.0f);

            D_80B7E144 = 188.0f;

            if (this->unk_17A[0] <= 50) {
                switch (this->unk_1D5) {
                    case 0:
                        if ((func_8010BDBC(&globalCtx->msgCtx) == 4) || (func_8010BDBC(&globalCtx->msgCtx) == 0)) {
                            if (func_80106BC8(globalCtx) != 0) {
                                func_80106CCC(globalCtx);
                                if (globalCtx->msgCtx.choiceIndex == 0) {
                                    if (D_80B7A670 == 0.0f) {
                                        D_80B7A670 = this->unk_1AC;
                                        D_80B7E07C = this->unk_150;
                                        D_80B7E07E = D_80B7E0B6;
                                        Actor_Kill(&this->actor);
                                    } else if ((this->unk_150 == 0) && (D_80B7E07C == 0) &&
                                               ((s16)this->unk_1AC < (s16)D_80B7A670)) {
                                        this->unk_1D5 = 1;
                                        this->unk_17A[0] = 0x3C;
                                        func_8010B680(globalCtx, 0x4098, NULL);
                                    } else {
                                        f32 temp1 = D_80B7A670;
                                        s16 temp2 = D_80B7E07C;
                                        D_80B7A670 = this->unk_1AC;
                                        D_80B7E07C = this->unk_150;
                                        D_80B7E07E = D_80B7E0B6;
                                        this->unk_1AC = temp1;
                                        this->unk_150 = temp2;
                                    }
                                }
                                if (this->unk_1D5 == 0) {
                                    D_80B7A694 = 0;
                                }
                            }
                        }
                        break;
                    case 1:
                        if ((func_8010BDBC(&globalCtx->msgCtx) == 4) || (func_8010BDBC(&globalCtx->msgCtx) == 0)) {
                            if (func_80106BC8(globalCtx) != 0) {
                                func_80106CCC(globalCtx);
                                if (globalCtx->msgCtx.choiceIndex != 0) {
                                    f32 temp1 = D_80B7A670;
                                    s16 temp2 = D_80B7E07C;
                                    D_80B7A670 = this->unk_1AC;
                                    D_80B7E07E = D_80B7E0B6;
                                    this->unk_1AC = temp1;
                                    this->unk_150 = temp2;
                                }
                                D_80B7A694 = 0;
                            }
                        }
                        break;
                }
            }

            if (D_80B7A694 == 0) {
                if (this->actor.update != NULL) {
                    this->unk_158 = this->unk_15A = 0;
                    this->unk_1A4 = 10000;
                    this->unk_1A2 = 500;
                    this->unk_17A[1] = 50;
                    this->unk_17A[0] = 0;
                    this->unk_190 = 1.0f;
                    this->unk_194 = 2000.0f;
                    SkelAnime_Free(&this->skelAnime, globalCtx);

                    if (this->unk_150 == 0) {
                        SkelAnime_InitFlex(globalCtx, &this->skelAnime, &object_fish_Skel_0029C0, &object_fish_Anim_00007C, 0, 0, 0);
                        Animation_MorphToLoop(&this->skelAnime, &object_fish_Anim_00007C, 0.0f);
                    } else {
                        SkelAnime_InitFlex(globalCtx, &this->skelAnime, &object_fish_Skel_011058, &object_fish_Anim_00CFE0, 0, 0, 0);
                        Animation_MorphToLoop(&this->skelAnime, &object_fish_Anim_00CFE0, 0.0f);
                    }
                }

                D_80B7E148 = 520.0f;
                D_80B7E144 = 195.0f;
                Audio_SetBGM(0x100A00FF);
                D_80B7E0A6 = 20;
                D_80B7A6CC = 3;
            }
            break;

        case 7:
            this->unk_151 = 50;
            sp134 = 5;
            this->unk_1B0 = 12288.0f;

            if (this->actor.params < 104) {
                this->unk_1B4 = D_80B81FC8[this->actor.params - 100].unk_04;
                D_80B7A898 = 1;
            } else if (this->actor.params < 108) {
                this->unk_1B4 = D_80B81FC8[this->actor.params - 84].unk_04;
                D_80B7A898 = 2;
            } else {
                this->unk_1B4 = D_80B81FC8[this->actor.params - 68].unk_04;
                D_80B7A898 = 3;
            }

            Math_ApproachF(&this->actor.speedXZ, 5.0f, 1.0f, 1.0f);

            if (sp124 < 20.0f) {
                Math_ApproachS(&this->unk_170, 0x4E20, 2, 0xFA0);

                if ((this->unk_17A[2] == 0) && (func_80B70A2C(this, globalCtx, 0) != 0)) {
                    func_80B71278(this, Rand_ZeroFloat(1.99f));
                    this->unk_17A[2] = (s16)Rand_ZeroFloat(20.0f) + 20;
                }
            }

            if (this->unk_17A[3] == 0) {
                this->unk_158 = 10;
                this->unk_15A = 10;
            } else {
                func_80B70ED4(this, input);
                if (this->actor.xzDistToPlayer < (100.0f * sp118)) {
                    this->unk_15A = this->unk_158 = 0;
                    this->unk_1A4 = 500;
                    this->unk_1A2 = 200;
                    this->unk_17A[1] = 50;
                }
            }
            break;
    }

    Math_ApproachS(&this->unk_172, (Math_SinS(this->unk_15C << 0xC) * 5000.0f) + 5000.0f, 2, 0x7D0);

    if (this->unk_158 != 6) {
        if (globalCtx->colCtx.colHeader->waterBoxes->ySurface < this->actor.world.pos.y) {
            this->unk_190 = 1.5f;
            this->unk_194 = 5000.0f;

            Math_ApproachS(&this->unk_16E, 0, 5, 0x7D0);

            spF4 = spF0 = spFA = 3;
            spF2 = spEE = 0x2000;

            this->unk_17A[2] = 0;
            this->unk_184 -= 1.0f;
        } else {
            Math_ApproachZeroF(&this->unk_184, 1.0f, 2.0f);
            if ((this->unk_158 != -1) && (this->unk_158 != -2) && (this->unk_158 != -25)) {
                this->unk_166 = 0;
            }

            this->unk_168 = this->unk_16A = 0;
            spF4 = spF0 = spFA = 4;
            spF2 = spEE = 0x2000;

            spF6 = func_80B69B84(&this->actor.world.rot.y, spFC, sp134, this->unk_1B0) * 3.0f;
            Math_ApproachS(&this->actor.world.rot.x, spFE, sp134, this->unk_1B0 * 0.5f);

            if (spF6 > 0x1F40) {
                spF6 = 0x1F40;
            } else if (spF6 < -0x1F40) {
                spF6 = -0x1F40;
            }

            if (this->actor.speedXZ >= 3.2f) {
                Math_ApproachS(&this->unk_16E, spF6, 2, 0x4E20);
            } else {
                Math_ApproachS(&this->unk_16E, spF6, 3, 0xBB8);
            }

            func_8002D908(&this->actor);
        }

        func_8002D7EC(&this->actor);

        this->actor.world.pos.y += (this->unk_184 * 1.5f);

        if (1) {}

        if (this->unk_152 != 0) {
            this->unk_168 = this->unk_154;
            this->unk_152--;
            if (this->unk_156 != 0) {
                spF0 = 5;
                spEE = 0x4000;
            } else {
                spF0 = 10;
                spEE = 0x800;
            }
            this->unk_166 = -0x500 - this->actor.shape.rot.x;
            spF4 = 5;
            spF2 = 0x4000;
        } else {
            this->unk_156 = 0;
        }

        Math_ApproachS(&this->unk_160, this->unk_166, spF4, spF2);
        Math_ApproachS(&this->unk_162, this->unk_168, spF0, spEE);
        Math_ApproachS(&this->unk_164, this->unk_16A, spFA, 0x2000);

        if (this->actor.speedXZ <= 0.5f) {
            Math_ApproachS(&this->actor.shape.rot.x, 0, 10, this->unk_178);
            Math_ApproachS(&this->unk_178, 0x500, 1, 0x20);
        } else {
            Math_ApproachS(&this->actor.shape.rot.x, -this->actor.world.rot.x, 10, 0x1000);
            this->unk_178 = 0;
        }

        this->actor.shape.rot.y = this->actor.world.rot.y;

        if ((this->unk_158 != -1) && (this->unk_158 != -2) && (this->unk_158 != -25)) {
            if ((globalCtx->colCtx.colHeader->waterBoxes->ySurface < this->actor.world.pos.y) &&
                (this->actor.prevPos.y <= globalCtx->colCtx.colHeader->waterBoxes->ySurface)) {
                func_80B70A2C(this, globalCtx, 1);
                func_80B71278(this, 1);
                this->unk_184 = this->actor.velocity.y;
                this->actor.velocity.y = 0.0f;
                this->unk_16A = Rand_CenteredFloat(32768.0f);
            } else if ((this->actor.world.pos.y < globalCtx->colCtx.colHeader->waterBoxes->ySurface) &&
                       (globalCtx->colCtx.colHeader->waterBoxes->ySurface <= this->actor.prevPos.y)) {
                if (this->unk_184 < -5.0f) {
                    this->unk_184 = -5.0f;
                }
                this->actor.world.rot.x = -0xFA0;
                func_80B70A2C(this, globalCtx, 1);
                this->unk_1D2 = 20;
                func_80B71278(this, 0);
            }
        }

        if ((this->actor.world.pos.y < globalCtx->colCtx.colHeader->waterBoxes->ySurface) &&
            ((globalCtx->colCtx.colHeader->waterBoxes->ySurface - 10.0f) < this->actor.world.pos.y) &&
            ((this->unk_15C & 1) == 0) && (this->actor.speedXZ > 0.0f)) {
            Vec3f sp84 = this->actor.world.pos;
            sp84.y = globalCtx->colCtx.colHeader->waterBoxes->ySurface;
            func_80B69C2C(&this->actor.projectedPos, globalCtx->specialEffects, &sp84, 80.0f, 500.0f, 150, 90);
        }

        if ((this->actor.speedXZ > 0.0f) || (this->unk_158 == 5)) {
            f32 sp80 = this->actor.velocity.y;

            spD8 = this->unk_1AC * 0.1f;

            this->actor.world.pos.y -= spD8;
            this->actor.prevPos.y -= spD8;
            this->actor.velocity.y = -1.0f;
            Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 30.0f, 30.0f, 100.0f, 0x45);
            this->actor.world.pos.y += spD8;
            this->actor.prevPos.y += spD8;
            this->actor.velocity.y = sp80;

            if (this->actor.bgCheckFlags & 8) {
                this->unk_1A0 = 20;
            }

            if (this->actor.bgCheckFlags & 1) {
                if (globalCtx->colCtx.colHeader->waterBoxes->ySurface < this->actor.world.pos.y) {
                    this->unk_184 = Rand_ZeroFloat(3.0f) + 3.0f;
                    this->actor.velocity.x = this->actor.world.pos.x * -0.003f;
                    this->actor.velocity.z = this->actor.world.pos.z * -0.003f;

                    Audio_PlayActorSound2(&this->actor, NA_SE_EV_FISH_LEAP);
                    func_80B70CF0(this, globalCtx);

                    if (Rand_ZeroOne() < 0.5f) {
                        this->unk_16A = 0x4000;
                    } else {
                        this->unk_16A = -0x4000;
                    }

                    if (Rand_ZeroOne() < 0.5f) {
                        this->unk_166 = 0;
                    } else {
                        this->unk_166 = (s16)Rand_CenteredFloat(32.0f) + 0x8000;
                    }

                    this->unk_168 = (s16)Rand_CenteredFloat(16384.0f);
                    this->unk_190 = 1.0f;
                    this->unk_194 = 5000.0f;
                    this->unk_19C = 5000.0f;
                } else {
                    this->unk_184 = 0.0f;

                    if ((this->unk_158 == 5) && ((this->unk_15C & 1) == 0)) {
                        Vec3f sp74;

                        sp74.x = Rand_CenteredFloat(10.0f) + this->actor.world.pos.x;
                        sp74.z = Rand_CenteredFloat(10.0f) + this->actor.world.pos.z;
                        sp74.y = this->actor.floorHeight + 5.0f;
                        func_80B69ED0(&this->actor.projectedPos, globalCtx->specialEffects, &sp74,
                                      (this->unk_1AC * 0.005f) + 0.15f);
                    }
                }
            }
        }
    }

    if (this->unk_1D2 != 0) {
        s16 sp72;
        Vec3f sp64;
        f32 sp60 = (this->unk_1AC * 0.075f) + 10.0f;

        this->unk_1D2--;

        for (sp72 = 0; sp72 < 2; sp72++) {
            sp64.x = Rand_CenteredFloat(sp60) + this->actor.world.pos.x;
            sp64.y = Rand_CenteredFloat(sp60) + this->actor.world.pos.y;
            sp64.z = Rand_CenteredFloat(sp60) + this->actor.world.pos.z;
            func_80B6A008(&this->actor.projectedPos, globalCtx->specialEffects, &sp64, Rand_ZeroFloat(0.035f) + 0.04f,
                          0);
        }
    }
}

s32 func_80B75BAC(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    Fishing* this = THIS;

    if (limbIndex == 0xD) {
        rot->z -= this->unk_170 - 11000;
    } else if ((limbIndex == 2) || (limbIndex == 3)) {
        rot->y += this->unk_16C;
    } else if (limbIndex == 4) {
        rot->y += this->unk_176;
    } else if (limbIndex == 0xE) {
        rot->y -= this->unk_172;
    } else if (limbIndex == 0xF) {
        rot->y += this->unk_172;
    } else if (limbIndex == 8) {
        rot->y += this->unk_174;
    } else if (limbIndex == 9) {
        rot->y -= this->unk_174;
    }

    return 0;
}

void func_80B75CE0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    Fishing* this = THIS;

    if (limbIndex == 0xD) {
        Matrix_MultVec3f(&D_80B7A698, &this->unk_1C0);
    }
}

s32 func_80B75D20(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    Fishing* this = THIS;

    if (limbIndex == 3) {
        rot->y += this->unk_1CC[0];
    } else if (limbIndex == 4) {
        rot->y += this->unk_1CC[1];
    } else if (limbIndex == 5) {
        rot->y += this->unk_1CC[2];
    }

    return 0;
}

static Vec3f D_80B7AFAC = { 500.0f, 500.0f, 0.0f };

void func_80B75DA4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    Fishing* this = THIS;

    if (limbIndex == 0xB) {
        Matrix_MultVec3f(&D_80B7AFAC, &this->unk_1C0);
    }
}

void Fishing_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Fishing* this = THIS;

    func_80093D18(globalCtx->state.gfxCtx);

    Matrix_Translate(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, MTXMODE_NEW);
    Matrix_RotateY(((this->unk_162 + this->actor.shape.rot.y) / 32768.0f) * M_PI, MTXMODE_APPLY);
    Matrix_RotateX(((this->unk_160 + this->actor.shape.rot.x) / 32768.0f) * M_PI, MTXMODE_APPLY);
    Matrix_RotateZ(((this->unk_164 + this->actor.shape.rot.z) / 32768.0f) * M_PI, MTXMODE_APPLY);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, MTXMODE_APPLY);

    if (this->unk_150 == 0) {
        Matrix_RotateY((this->unk_16C * (M_PI / 32768)) - (M_PI / 2), MTXMODE_APPLY);
        Matrix_Translate(0.0f, 0.0f, this->unk_16C * 10.0f * 0.01f, MTXMODE_APPLY);

        SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                              this->skelAnime.dListCount, func_80B75BAC, func_80B75CE0, this);
    } else {
        Matrix_Translate(0.0f, 0.0f, 3000.0f, MTXMODE_APPLY);
        Matrix_RotateY(this->unk_16C * (M_PI / 32768), MTXMODE_APPLY);
        Matrix_Translate(0.0f, 0.0f, -3000.0f, MTXMODE_APPLY);
        Matrix_RotateY(-(M_PI / 2), MTXMODE_APPLY);

        SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                              this->skelAnime.dListCount, func_80B75D20, func_80B75DA4, this);
    }
}

void func_80B76028(struct_80B7FEF8* arg0, Vec3f* arg1) {
    f32 dx = arg0->unk_00.x - arg1->x;
    f32 dz = arg0->unk_00.z - arg1->z;
    f32 sp1C;

    sp1C = sqrtf(SQ(dx) + SQ(dz));
    if (sp1C <= 20.0f) {
        arg0->unk_10 = Math_Atan2F(dz, dx);
        Math_ApproachF(&arg0->unk_0C, (20.0f - sp1C) * 0.03f, 0.2f, 0.2f);
    }
}

void func_80B760D4(struct_80B7FEF8* arg0, Vec3f* arg1, u8 arg2) {
    f32 dx = arg0->unk_00.x - arg1->x;
    f32 dz = arg0->unk_00.z - arg1->z;
    f32 sp1C;

    sp1C = sqrtf(SQ(dx) + SQ(dz));
    if (sp1C <= 40.0f) {
        Math_ApproachS(&arg0->unk_28, Math_Atan2S(dz, dx), 10, 0x300);
    }

    if (arg2 && (sp1C <= 60.0f)) {
        f32 phi_f0 = 1.0f;

        if (arg2 >= 0x15) {
            phi_f0 = 1.5f;
        }

        Math_ApproachF(&arg0->unk_2C, phi_f0, 0.1f, 0.2f);
    }
}

void func_80B761B8(GlobalContext* globalCtx) {
    struct_80B7FEF8* phi_s1 = &D_80B7FEF8[0];
    Player* player = PLAYER;
    Actor* actor;
    s16 i;

    for (i = 0; i < 140; i++) {
        if (phi_s1->unk_30 != 0) {
            phi_s1->unk_34 = 0;
            phi_s1->unk_32++;

            SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &phi_s1->unk_00, &phi_s1->unk_18, &D_80B7FEA4);

            if ((phi_s1->unk_20 < phi_s1->unk_38) && (fabsf(phi_s1->unk_18) < (100.0f + phi_s1->unk_20))) {
                phi_s1->unk_34 = 1;
            }

            if ((phi_s1->unk_20 < 500.0f) && (fabsf(phi_s1->unk_18) < (100.0f + phi_s1->unk_20))) {
                if (phi_s1->unk_30 == 1) {
                    func_80B76028(phi_s1, &player->actor.world.pos);

                    actor = globalCtx->actorCtx.actorLists[ACTORCAT_NPC].head;
                    while (actor != NULL) {
                        if (!((actor->id == ACTOR_FISHING) && (actor->params >= 100))) {
                            actor = actor->next;
                        } else {
                            func_80B76028(phi_s1, &actor->world.pos);
                            actor = actor->next;
                        }
                    }

                    Math_ApproachZeroF(&phi_s1->unk_0C, 0.05f, 0.05f);
                } else if (phi_s1->unk_30 == 2) {
                    func_80B760D4(phi_s1, &player->actor.world.pos, 0);

                    actor = globalCtx->actorCtx.actorLists[ACTORCAT_NPC].head;
                    while (actor != NULL) {
                        if (!((actor->id == ACTOR_FISHING) && (actor->params >= 100))) {
                            actor = actor->next;
                        } else {
                            func_80B760D4(phi_s1, &actor->world.pos, ((Fishing*)actor)->unk_151);
                            actor = actor->next;
                        }
                    }

                    Math_ApproachS(&phi_s1->unk_28, 0, 20, 80);
                    phi_s1->unk_00.y = (Math_SinS(phi_s1->unk_32 * 0x1000) * phi_s1->unk_2C) +
                                       (globalCtx->colCtx.colHeader->waterBoxes->ySurface + 2.0f);
                    Math_ApproachZeroF(&phi_s1->unk_2C, 0.1f, 0.02f);
                }
            }
        }

        phi_s1++;
    }

    if (D_80B7FEC4 == 0) {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &D_80B7E070->collider.base);
    }
}

void func_80B76474(GlobalContext* globalCtx) {
    u8 phi_s5 = 0;
    struct_80B7FEF8* phi_s0 = &D_80B7FEF8[0];
    s16 phi_s3;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 7704);

    Matrix_Push();

    for (phi_s3 = 0; phi_s3 < 140; phi_s3++) {
        if (phi_s0->unk_30 == 1) {
            if (phi_s5 == 0) {
                gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_014030);
                phi_s5++;
            }

            if (phi_s0->unk_34 != 0) {
                Matrix_Translate(phi_s0->unk_00.x, phi_s0->unk_00.y, phi_s0->unk_00.z, MTXMODE_NEW);
                Matrix_Scale(phi_s0->unk_24, phi_s0->unk_24, phi_s0->unk_24, MTXMODE_APPLY);
                Matrix_RotateY(phi_s0->unk_10, MTXMODE_APPLY);
                Matrix_RotateX(phi_s0->unk_0C, MTXMODE_APPLY);
                Matrix_RotateY(phi_s0->unk_14, MTXMODE_APPLY);

                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 7726),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_0140B0);
            }
        }

        phi_s0++;
    }

    phi_s0 = &D_80B7FEF8[0];
    phi_s5 = 0;
    for (phi_s3 = 0; phi_s3 < 140; phi_s3++) {
        if (phi_s0->unk_30 == 4) {
            if (phi_s5 == 0) {
                gSPDisplayList(POLY_OPA_DISP++, object_fish_DL_013F50);
                phi_s5++;
            }
            if (phi_s0->unk_34 != 0) {
                Matrix_Translate(phi_s0->unk_00.x, phi_s0->unk_00.y, phi_s0->unk_00.z, MTXMODE_NEW);
                Matrix_Scale(phi_s0->unk_24, phi_s0->unk_24, phi_s0->unk_24, MTXMODE_APPLY);

                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 7748),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, object_fish_DL_013FD0);
            }
        }

        phi_s0++;
    }

    phi_s0 = &D_80B7FEF8[0];
    phi_s5 = 0;
    for (phi_s3 = 0; phi_s3 < 140; phi_s3++) {
        if (phi_s0->unk_30 == 2) {
            if (phi_s5 == 0) {
                gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_013330);
                phi_s5++;
            }

            if (phi_s0->unk_34 != 0) {
                Matrix_Translate(phi_s0->unk_00.x, phi_s0->unk_00.y, phi_s0->unk_00.z, MTXMODE_NEW);
                Matrix_Scale(phi_s0->unk_24, 1.0f, phi_s0->unk_24, MTXMODE_APPLY);
                Matrix_RotateY(phi_s0->unk_28 * (M_PI / 32768), MTXMODE_APPLY);
                Matrix_Translate(0.0f, 0.0f, 20.0f, MTXMODE_APPLY);
                Matrix_RotateY(phi_s0->unk_10, MTXMODE_APPLY);

                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 7774),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_0133B0);
            }
        }

        phi_s0++;
    }

    phi_s0 = &D_80B7FEF8[0];
    phi_s5 = 0;
    for (phi_s3 = 0; phi_s3 < 140; phi_s3++) {
        if (phi_s0->unk_30 == 3) {
            if (phi_s5 == 0) {
                gSPDisplayList(POLY_OPA_DISP++, object_fish_DL_013590);
                phi_s5++;
            }

            if (phi_s0->unk_34 != 0) {
                Matrix_Translate(phi_s0->unk_00.x, phi_s0->unk_00.y, phi_s0->unk_00.z, MTXMODE_NEW);
                Matrix_Scale(phi_s0->unk_24, phi_s0->unk_24, phi_s0->unk_24, MTXMODE_APPLY);
                Matrix_RotateY(phi_s0->unk_10, MTXMODE_APPLY);

                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 7798),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, object_fish_DL_013610);
            }
        }

        phi_s0++;
    }

    Matrix_Pop();

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 7805);
}

static u16 D_80B7AFB8[] = { 0x4096, 0x408D, 0x408E, 0x408F, 0x4094, 0x4095 };

void func_80B768FC(GlobalContext* globalCtx) {
    s16 spFE = 0;
    Player* player = PLAYER;
    struct_80B81FC8* phi_s0 = &D_80B81FC8[0];
    f32 spF0;
    f32 temp_f22;
    f32 spE8;
    f32 temp_f20_4;
    f32 spE0;
    f32 temp_f22_4;
    f32 spD8;
    s16 spD6;
    s16 spD4;
    f32 temp_f20;
    Vec3f spAC[3];
    Vec3f spA0;
    Vec3f* phi_s2;
    s16 phi_s6;
    s16 phi_s3;
    s16 phi_s2_2;
    s16 phi_a1;

    if ((D_80B7E114 != 0) || (D_80B7A694 == 4)) {
        phi_s2 = &D_80B7E0B8;
    } else {
        phi_s2 = &player->actor.world.pos;
    }

    spAC[0].x = sinf(D_80B830A8) * 720.0f;
    spAC[0].y = -35.0f;
    spAC[0].z = cosf(D_80B830A8) * 720.0f;

    temp_f20 = phi_s2->x - spAC[0].x;
    temp_f22 = phi_s2->z - spAC[0].z;

    if ((SQ(temp_f20) + SQ(temp_f22)) < 2500.0f) {
        D_80B830A8 += 0.3f;
        spFE = 1;
    } else if (D_80B7A898 != 0.0f) {
        D_80B830A8 += 0.05f;
        spAC[0].y = globalCtx->colCtx.colHeader->waterBoxes->ySurface - 5.0f;
    } else {
        Math_ApproachF(&D_80B830A8, 0.7f, 1.0f, 0.001f);
    }

    spAC[1].x = sinf(D_80B830AC) * 720.0f;
    spAC[1].y = -35.0f;
    spAC[1].z = cosf(D_80B830AC) * 720.0f;

    temp_f20 = phi_s2->x - spAC[1].x;
    temp_f22 = phi_s2->z - spAC[1].z;

    if ((SQ(temp_f20) + SQ(temp_f22)) < 2500.0f) {
        spFE |= 2;
        D_80B830AC -= 0.3f;
    } else if (D_80B7A898 != 0.0f) {
        D_80B830AC -= 0.05f;
        spAC[1].y = globalCtx->colCtx.colHeader->waterBoxes->ySurface - 5.0f;
    } else {
        Math_ApproachF(&D_80B830AC, 2.3f, 1.0f, 0.001f);
    }

    spAC[2].x = sinf(D_80B830B0) * 720.0f;
    spAC[2].y = -35.0f;
    spAC[2].z = cosf(D_80B830B0) * 720.0f;

    temp_f20 = phi_s2->x - spAC[2].x;
    temp_f22 = phi_s2->z - spAC[2].z;

    if ((SQ(temp_f20) + SQ(temp_f22)) < 2500.0f) {
        spFE |= 4;
        D_80B830B0 -= 0.3f;
    } else if (D_80B7A898 != 0.0f) {
        D_80B830B0 -= 0.05f;
        spAC[2].y = globalCtx->colCtx.colHeader->waterBoxes->ySurface - 5.0f;
    } else {
        Math_ApproachF(&D_80B830B0, 4.6f, 1.0f, 0.001f);
    }

    if (D_80B7E075 == 1) {
        spD8 = 0.8f;
    } else {
        spD8 = 1.0f;
    }

    for (phi_s6 = 0; phi_s6 < 0x3C; phi_s6++) {
        if (phi_s0->unk_00 != 0) {
            phi_s0->unk_02++;

            SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &phi_s0->unk_04, &phi_s0->unk_1C, &D_80B7FEA4);

            if ((phi_s0->unk_24 < 400.0f) && (fabsf(phi_s0->unk_1C) < (100.0f + phi_s0->unk_24))) {
                phi_s0->unk_44 = 1;
            } else {
                phi_s0->unk_44 = 0;
            }

            if (phi_s6 < 0x15) {
                phi_s2_2 = 0;
                phi_s3 = 1;
            } else if (phi_s6 < 0x29) {
                phi_s2_2 = 1;
                phi_s3 = 2;
            } else {
                phi_s2_2 = 2;
                phi_s3 = 4;
            }

            temp_f20_4 = phi_s0->unk_10.x - phi_s0->unk_04.x;
            spF0 = phi_s0->unk_10.y - phi_s0->unk_04.y;
            temp_f22_4 = phi_s0->unk_10.z - phi_s0->unk_04.z;
            spD4 = Math_Atan2S(temp_f22_4, temp_f20_4);
            spE8 = sqrtf(SQ(temp_f20_4) + SQ(temp_f22_4));
            spD6 = Math_Atan2S(spE8, spF0);

            if ((spE8 < 10.0f) || (((phi_s0->unk_02 & 31) == 0) && (Rand_ZeroOne() > 0.5f))) {
                phi_s0->unk_10.y = spAC[phi_s2_2].y + Rand_CenteredFloat(10.0f);

                if (D_80B7A898 != 0.0f) {
                    phi_s0->unk_10.x = spAC[phi_s2_2].x + Rand_CenteredFloat(200.0f);
                    phi_s0->unk_10.z = spAC[phi_s2_2].z + Rand_CenteredFloat(200.0f);
                } else {
                    phi_s0->unk_10.x = spAC[phi_s2_2].x + Rand_CenteredFloat(100.0f);
                    phi_s0->unk_10.z = spAC[phi_s2_2].z + Rand_CenteredFloat(100.0f);
                }

                spA0 = phi_s0->unk_04;
                spA0.y = globalCtx->colCtx.colHeader->waterBoxes->ySurface;
                func_80B69C2C(&phi_s0->unk_1C, globalCtx->specialEffects, &spA0, 20.0f, Rand_ZeroFloat(50.0f) + 100.0f,
                              150, 90);

                if (phi_s0->unk_28 < 1.5f) {
                    phi_s0->unk_28 = 1.5f;
                }

                phi_s0->unk_34 = 1.5f;
                phi_s0->unk_38 = 1.0f;
            }

            phi_a1 = func_80B69B84(&phi_s0->unk_3E, spD4, 5, 0x4000) * 3.0f;
            if (phi_a1 > 0x1F40) {
                phi_a1 = 0x1F40;
            } else if (phi_a1 < -0x1F40) {
                phi_a1 = -0x1F40;
            }

            Math_ApproachS(&phi_s0->unk_42, phi_a1, 3, 0x1388);

            spE0 = phi_s0->unk_42 * -0.0001f;
            Math_ApproachS(&phi_s0->unk_3C, spD6, 5, 0x4000);

            if ((spFE & phi_s3) != 0) {
                phi_s0->unk_38 = 1.0f;
                phi_s0->unk_28 = 6.0f;
                phi_s0->unk_34 = 2.0f;
            }

            if (D_80B7A898 != 0.0f) {
                phi_s0->unk_38 = 1.0f;
                phi_s0->unk_28 = 4.0f;
                phi_s0->unk_34 = 2.0f;
            }

            Math_ApproachF(&phi_s0->unk_28, 0.75f, 1.0f, 0.05f);

            temp_f20 = phi_s0->unk_28 * spD8;
            temp_f22 = Math_CosS(phi_s0->unk_3C) * temp_f20;

            phi_s0->unk_04.x += temp_f22 * Math_SinS(phi_s0->unk_3E);
            phi_s0->unk_04.y += temp_f20 * Math_SinS(phi_s0->unk_3C);
            phi_s0->unk_04.z += temp_f22 * Math_CosS(phi_s0->unk_3E);

            if (phi_s0->unk_44 != 0) {
                Math_ApproachF(&phi_s0->unk_34, 1.0f, 1.0f, 0.1f);
                Math_ApproachF(&phi_s0->unk_38, 0.4f, 1.0f, 0.04f);
                phi_s0->unk_30 += phi_s0->unk_34;
                phi_s0->unk_2C = (cosf(phi_s0->unk_30) * phi_s0->unk_38) + spE0;
            }
        }

        phi_s0++;
    }

    D_80B7A898 = 0.0f;
}

void func_80B771CC(GlobalContext* globalCtx) {
    u8 phi_s5 = 0;
    struct_80B81FC8* phi_s1 = &D_80B81FC8[0];
    f32 phi_f20;
    s16 phi_s4;
    s32 pad;

    if (D_80B7E075 == 1) {
        phi_f20 = 0.003325f;
    } else {
        phi_f20 = 0.00475f;
    }

    if (1) {}

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 8048);

    for (phi_s4 = 0; phi_s4 < 60; phi_s4++) {
        if (phi_s1->unk_00 != 0) {
            if (phi_s5 == 0) {
                gSPDisplayList(POLY_OPA_DISP++, object_fish_DL_00C220);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 155, 155, 155, 255);
                phi_s5++;
            }

            if (phi_s1->unk_44 != 0) {
                Matrix_Translate(phi_s1->unk_04.x, phi_s1->unk_04.y, phi_s1->unk_04.z, MTXMODE_NEW);
                Matrix_RotateY(((f32)phi_s1->unk_3E * M_PI) / 32768.0f, MTXMODE_APPLY);
                Matrix_RotateX((-(f32)phi_s1->unk_3C * M_PI) / 32768.0f, MTXMODE_APPLY);
                Matrix_Scale(phi_s1->unk_2C * phi_f20, phi_f20, phi_f20, MTXMODE_APPLY);

                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 8093),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_OPA_DISP++, object_fish_DL_00C298);
            }
        }
        phi_s1++;
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 8099);

    if (0) {
        osSyncPrintf(VT_FGCOL(GREEN));
        osSyncPrintf(VT_FGCOL(YELLOW));
        osSyncPrintf("plays %x\n");
        osSyncPrintf("ys %x\n");
        osSyncPrintf(VT_RST);
    }
}

void func_80B77404(Fishing* this, GlobalContext* globalCtx) {
    s32 sp34;
    f32 temp;

    switch (this->unk_15C) {
        case 0:
            if (D_80B7E0AC == 0) {
                if (D_80B7E075 != 1) {
                    if ((HIGH_SCORE(HS_FISHING) & 0x100) && !(HIGH_SCORE(HS_FISHING) & 0x200)) {
                        this->actor.textId = 0x4093;
                    } else {
                        this->actor.textId = 0x407B;
                    }
                } else {
                    this->actor.textId = 0x407B;
                }
            } else if (D_80B7A68C == 0) {
                this->actor.textId = 0x4084;
            } else {
                this->actor.textId = 0x4097;
            }

            if (func_8002F194(&this->actor, globalCtx) != 0) {
                if (D_80B7E0AC == 0) {
                    this->unk_15C = 1;
                    if (D_80B7E075 != 1) {
                        HIGH_SCORE(HS_FISHING) |= 0x200;
                    } else {
                        HIGH_SCORE(HS_FISHING) |= 0x100;
                    }
                } else {
                    this->unk_15C = 10;
                }
            } else {
                func_8002F2CC(&this->actor, globalCtx, 100.0f);
            }
            break;

        case 1:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
                func_80106CCC(globalCtx);

                switch (globalCtx->msgCtx.choiceIndex) {
                    case 0:
                        if (gSaveContext.rupees >= 20) {
                            Rupees_ChangeBy(-20);
                            if (func_800AA148() == 0) {
                                this->actor.textId = 0x407C;
                            } else {
                                this->actor.textId = 0x407D;
                            }
                            func_8010B720(globalCtx, this->actor.textId);
                            this->unk_15C = 2;
                        } else {
                            func_8010B720(globalCtx, 0x407E);
                            this->unk_15C = 3;
                        }
                        break;
                    case 1:
                        func_8010B720(globalCtx, 0x2D);
                        this->unk_15C = 3;
                        break;
                }
            }
            break;

        case 2:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
                func_80106CCC(globalCtx);
                func_8010B720(globalCtx, 0x407F);
                this->unk_15C = 4;
            }
            break;

        case 3:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
                func_80106CCC(globalCtx);
                this->unk_15C = 0;
            }
            if (func_8010BDBC(&globalCtx->msgCtx) == 6) {
                this->unk_15C = 0;
            }
            break;

        case 4:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
                func_80106CCC(globalCtx);

                switch (globalCtx->msgCtx.choiceIndex) {
                    case 0:
                        D_80B7A678 = D_80B7E078;
                        func_8010B720(globalCtx, 0x4080);
                        this->unk_15C = 5;
                        break;
                    case 1:
                        func_8010B720(globalCtx, 0x407F);
                        break;
                }
            }
            break;

        case 5:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
                func_80106CCC(globalCtx);

                globalCtx->interfaceCtx.unk_260 = 1;
                globalCtx->startPlayerFishing(globalCtx);
                D_80B7E0AC = 1;
                D_80B7A684 = 20;
                this->unk_15C = 0;

                if ((HIGH_SCORE(HS_FISHING) & 0xFF0000) < 0xFF0000) {
                    HIGH_SCORE(HS_FISHING) += 0x10000;
                }
            }
            break;

        case 10:
            if (D_80B7A68C != 0) {
                if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
                    func_80106CCC(globalCtx);

                    switch (globalCtx->msgCtx.choiceIndex) {
                        case 0:
                            func_8010B720(globalCtx, 0x40B2);
                            D_80B7A688 = 1;
                            D_80B7A68C = 0;
                            this->unk_15C = 20;
                            break;
                        case 1:
                            this->unk_15C = 0;
                            break;
                    }
                }
            } else {
                if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
                    func_80106CCC(globalCtx);

                    switch (globalCtx->msgCtx.choiceIndex) {
                        case 0:
                            if (D_80B7A670 == 0.0f) {
                                this->actor.textId = 0x408C;
                                this->unk_15C = 20;
                            } else if (D_80B7E07C == 0) {
                                D_80B7A678 = D_80B7A670;
                                if ((s16)D_80B7E078 < (s16)D_80B7A670) {
                                    if (D_80B7E07E == 2) {
                                        this->actor.textId = 0x40B0;
                                    } else {
                                        this->actor.textId = 0x4086;
                                    }
                                    this->unk_15C = 11;
                                } else {
                                    this->actor.textId = 0x408B;
                                    this->unk_15C = 20;
                                }
                            } else {
                                this->actor.textId = 0x409B;
                                this->unk_15C = 11;
                            }
                            func_8010B720(globalCtx, this->actor.textId);
                            break;
                        case 1:
                            if (D_80B7A680 > 36000) {
                                D_80B7A680 = 30000;
                                func_8010B720(globalCtx, 0x4088);
                            } else {
                                if (D_80B7E076 == 0) {
                                    if (D_80B7E082 == 0) {
                                        D_80B7E082++;
                                    }
                                }

                                if ((D_80B7E0B6 == 2) && (D_80B7AFB8[D_80B7E082] == 0x408D)) {
                                    func_8010B720(globalCtx, 0x40AF);
                                } else {
                                    func_8010B720(globalCtx, D_80B7AFB8[D_80B7E082]);
                                }

                                D_80B7E082++;

                                if (D_80B7E075 != 1) {
                                    if (D_80B7E082 >= 6) {
                                        D_80B7E082 = 0;
                                    }
                                } else {
                                    if (D_80B7E082 >= 4) {
                                        D_80B7E082 = 0;
                                    }
                                }
                            }
                            this->unk_15C = 0;
                            break;
                        case 2:
                            if (D_80B7E084 == 0) {
                                func_8010B720(globalCtx, 0x4085);
                            } else if (D_80B7E075 == 1) {
                                func_8010B720(globalCtx, 0x4092);
                            }
                            this->unk_15C = 22;
                            break;
                    }
                }
            }
            break;

        case 11:
            if (((func_8010BDBC(&globalCtx->msgCtx) == 5) || (func_8010BDBC(&globalCtx->msgCtx) == 0)) &&
                (func_80106BC8(globalCtx) != 0)) {
                func_80106CCC(globalCtx);

                if (D_80B7E07C == 0) {
                    D_80B7E078 = D_80B7A670;
                    D_80B7A670 = 0.0f;

                    if (D_80B7E075 == 1) {
                        HIGH_SCORE(HS_FISHING) &= 0xFFFFFF00;
                        HIGH_SCORE(HS_FISHING) |= (s32)D_80B7E078 & 0x7F;

                        temp = ((HIGH_SCORE(HS_FISHING) & 0x7F000000) >> 0x18);
                        if (temp < D_80B7E078) {
                            HIGH_SCORE(HS_FISHING) &= 0xFFFFFF;
                            HIGH_SCORE(HS_FISHING) |= ((s32)D_80B7E078 & 0x7F) << 0x18;

                            if (D_80B7E07E == 2) {
                                HIGH_SCORE(HS_FISHING) |= 0x80000000;
                            }
                        }

                        if (D_80B7E07E == 2) {
                            HIGH_SCORE(HS_FISHING) |= 0x80;
                            this->unk_15C = 0;
                            break;
                        }
                    } else {
                        HIGH_SCORE(HS_FISHING) &= 0xFFFFFF;
                        HIGH_SCORE(HS_FISHING) |= ((s32)D_80B7E078 & 0x7F) << 0x18;

                        if (D_80B7E07E == 2) {
                            HIGH_SCORE(HS_FISHING) |= 0x80000000;
                            this->unk_15C = 0;
                            break;
                        }
                    }

                    if (D_80B7E078 >= 60.0f) {
                        sp34 = GI_RUPEE_PURPLE;
                    } else if (D_80B7E078 >= 50.0f) {
                        sp34 = GI_RUPEE_RED;
                    } else if (D_80B7E078 >= 40.0f) {
                        sp34 = GI_RUPEE_BLUE;
                    } else {
                        sp34 = GI_RUPEE_GREEN;
                    }

                    if (D_80B7E075 == 1) {
                        if ((D_80B7E078 >= 50.0f) && !(HIGH_SCORE(HS_FISHING) & 0x400)) {
                            HIGH_SCORE(HS_FISHING) |= 0x400;
                            sp34 = GI_HEART_PIECE;
                            D_80B7A66C = (u8)Rand_ZeroFloat(3.999f) + 1;
                        }
                    } else {
                        if ((D_80B7E078 >= 60.0f) && !(HIGH_SCORE(HS_FISHING) & 0x800)) {
                            HIGH_SCORE(HS_FISHING) |= 0x800;
                            sp34 = GI_SCALE_GOLD;
                            D_80B7A66C = (u8)Rand_ZeroFloat(3.999f) + 1;
                        }
                    }
                } else {
                    sp34 = GI_RUPEE_PURPLE;
                    D_80B7A670 = 0.0f;
                }

                this->actor.parent = NULL;
                func_8002F434(&this->actor, globalCtx, sp34, 2000.0f, 1000.0f);
                this->unk_15C = 23;
            }
            break;

        case 20:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
                func_80106CCC(globalCtx);
                this->unk_15C = 0;
            }
            break;

        case 21:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
                func_80106CCC(globalCtx);

                switch (globalCtx->msgCtx.choiceIndex) {
                    case 0:
                        this->unk_15C = 0;
                        break;
                    case 1:
                        if (D_80B7E084 == 0) {
                            func_8010B720(globalCtx, 0x4085);
                        } else if (D_80B7E075 == 1) {
                            func_8010B720(globalCtx, 0x4092);
                        }
                        this->unk_15C = 22;
                        break;
                }
            }
            break;

        case 22:
            if (globalCtx) {}

            if (func_8010BDBC(&globalCtx->msgCtx) == 0) {
                this->unk_15C = 0;
                if (D_80B7A68C != 0) {
                    D_80B7A688 = 1;
                    D_80B7A68C = 0;
                }
                D_80B7E0AC = 0;
                globalCtx->interfaceCtx.unk_260 = 0;
            }
            break;

        case 23:
            D_80B7A674 = false;
            if (Actor_HasParent(&this->actor, globalCtx)) {
                this->unk_15C = 24;
            } else {
                func_8002F434(&this->actor, globalCtx, GI_SCALE_GOLD, 2000.0f, 1000.0f);
            }
            break;

        case 24:
            D_80B7A674 = false;
            if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && (func_80106BC8(globalCtx) != 0)) {
                if (D_80B7E07C == 0) {
                    this->unk_15C = 0;
                } else {
                    func_8010B680(globalCtx, 0x409C, NULL);
                    this->unk_15C = 20;
                }
            }
            break;
    }
}

static s16 D_80B7AFC4[] = { 0, 1, 2, 2, 1 };

static Vec3f D_80B7AFD0 = { 670.0f, 0.0f, -600.0f };

static Vec3s D_80B7AFDC[] = {
    { -364, -30, -269 },
    { 1129, 3, -855 },
    { -480, 0, -1055 },
    { 553, -48, -508 },
};

void func_80B7825C(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    Fishing* this = THIS;
    Vec3f sp114;
    Vec3f sp108;
    Vec3f spFC;
    s16 phi_a1;
    s16 spF8;
    f32 phi_f2;
    f32 spF0;
    f32 spEC;
    f32 phi_f2_2;
    Player* player = PLAYER;
    Input* input = &globalCtx->state.input[0];

    spF8 = player->actor.shape.shadowAlpha;

    if ((SQ(player->actor.world.pos.x) + SQ(player->actor.world.pos.z)) < SQ(920.0f)) {
        Math_ApproachS(&spF8, 0, 1, 40);
    } else {
        Math_ApproachS(&spF8, 200, 1, 40);
    }

    player->actor.shape.shadowAlpha = spF8;

    SkelAnime_Update(&this->skelAnime);

    if ((D_80B7A684 != 0) || (func_8010BDBC(&globalCtx->msgCtx) != 0)) {
        this->actor.flags &= ~1;
    } else {
        this->actor.flags |= 0x21;
    }

    if ((this->actor.xzDistToPlayer < 120.0f) || (func_8010BDBC(&globalCtx->msgCtx) != 0)) {
        phi_a1 = this->actor.shape.rot.y - this->actor.yawTowardsPlayer;
    } else {
        phi_a1 = 0;
    }

    if (phi_a1 >= 0x2711) {
        phi_a1 = 0x2710;
    } else if (phi_a1 < -0x2710) {
        phi_a1 = -0x2710;
    }

    Math_ApproachS(&this->unk_164, phi_a1, 3, 5000);

    if (((globalCtx->gameplayFrames & 0x1F) == 0) && (Rand_ZeroOne() < 0.3f)) {
        this->unk_162 = 4;
    }

    this->unk_160 = D_80B7AFC4[this->unk_162];

    if (this->unk_162 != 0) {
        this->unk_162--;
    }

    if (D_80B7A684 != 0) {
        D_80B7A684--;
    }

    if ((D_80B7A68C == 0) && (D_80B7E0B6 != 2) && (D_80B7A694 > 0) && (D_80B7A688 == 1) && (D_80B7A684 == 0)) {
        f32 dx = D_80B7E090.x - D_80B7E0B8.x;
        f32 dy = D_80B7E090.y - D_80B7E0B8.y;
        f32 dz = D_80B7E090.z - D_80B7E0B8.z;

        if ((sqrtf(SQ(dx) + SQ(dy) + SQ(dz)) < 25.0f) || (KREG(77) > 0)) {
            KREG(77) = 0;
            D_80B7A688 = 0;
            D_80B7A68C = 1;
            func_8010B680(globalCtx, 0x4087, NULL);
        }
    }

    if (D_80B7A688 == 0) {
        HIGH_SCORE(HS_FISHING) |= 0x1000;
    } else if (D_80B7A688 == 1) {
        HIGH_SCORE(HS_FISHING) &= ~0x1000;
    }

    if (KREG(77) < 0) {
        KREG(77) = 0;
        D_80B7A690 = 1;
    }

    if (D_80B7A67C != 0) {
        D_80B7A67C--;
        if (D_80B7A67C == 0) {
            func_8010B680(globalCtx, D_80B7E086, NULL);
        }
    }

    func_80B77404(this, globalCtx);

    D_80B7E14C = 0.0015f;
    D_80B7A680++;

    if ((D_80B7E0AC != 0) && D_80B7A674) {
        func_80B6E9E0(this, globalCtx);
    }

    func_80B6AF28(globalCtx->specialEffects, globalCtx);
    func_80B761B8(globalCtx);
    func_80B768FC(globalCtx);

    if ((D_80B7E0AC != 0) && (D_80B7A6CC == 0) && (player->actor.world.pos.z > 1360.0f) &&
        (fabsf(player->actor.world.pos.x) < 25.0f)) {
        player->actor.world.pos.z = 1360.0f;
        player->actor.speedXZ = 0.0f;

        if (D_80B7A6D0 == 0) {
            D_80B7A6CC = 10;
        }
    }

    if ((D_80B7A66C != 0) && (fabsf(player->actor.world.pos.x - D_80B7AFDC[D_80B7A66C - 1].x) < 25.0f) &&
        (fabsf(player->actor.world.pos.y - D_80B7AFDC[D_80B7A66C - 1].y) < 10.0f) &&
        (fabsf(player->actor.world.pos.z - D_80B7AFDC[D_80B7A66C - 1].z) < 25.0f)) {
        D_80B7A66C = 0;
        D_80B7A6CC = 20;
        func_800A9F6C(0.0f, 150, 10, 10);
        func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
        Audio_SetBGM(0x101400FF);
    }

    if (KREG(0) != 0) {
        KREG(0) = 0;
        D_80B7E0B6 = 0;
        D_80B7A6CC = 20;
        func_800A9F6C(0.0f, 150, 10, 10);
        func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
        Audio_SetBGM(0x101400FF);
    }

    if (D_80B7A6D0 != 0) {
        D_80B7A6D0--;
    }

    switch (D_80B7A6CC) {
        case 0:
            break;

        case 1: {
            Camera* camera;

            D_80B7FEC4 = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, MAIN_CAM, CAM_STAT_WAIT);
            Gameplay_ChangeCameraStatus(globalCtx, D_80B7FEC4, CAM_STAT_ACTIVE);
            camera = Gameplay_GetCamera(globalCtx, MAIN_CAM);
            D_80B7FEA8.x = camera->eye.x;
            D_80B7FEA8.y = camera->eye.y;
            D_80B7FEA8.z = camera->eye.z;
            D_80B7FEB8.x = camera->at.x;
            D_80B7FEB8.y = camera->at.y;
            D_80B7FEB8.z = camera->at.z;
            D_80B7A6CC = 2;
            Interface_ChangeAlpha(12);
            D_80B7FECC = 0.0f;
            // fallthrough
        }

        case 2:
            ShrinkWindow_SetVal(0x1B);

            spFC.x = D_80B7E0B8.x - player->actor.world.pos.x;
            spFC.z = D_80B7E0B8.z - player->actor.world.pos.z;
            spEC = sqrtf(SQ(spFC.x) + SQ(spFC.z));
            Matrix_RotateY(Math_Atan2F(spFC.z, spFC.x), MTXMODE_NEW);

            sp114.x = 0.0f;
            sp114.y = 0.0f;
            sp114.z = 100.0f;
            Matrix_MultVec3f(&sp114, &spFC);

            if (D_80B7A694 == 1) {
                spF0 = 0.2f;
            } else {
                spF0 = 0.1f;
            }

            Math_ApproachF(&D_80B7FEB8.x, D_80B7E0B8.x, spF0, fabsf(spFC.x) * D_80B7FECC);
            Math_ApproachF(&D_80B7FEB8.y, D_80B7E0B8.y, spF0, 50.0f * D_80B7FECC);
            Math_ApproachF(&D_80B7FEB8.z, D_80B7E0B8.z, spF0, fabsf(spFC.z) * D_80B7FECC);

            sp114.x = 0.0f - D_80B7FED0;
            if (D_80B7E075 != 1) {
                sp114.y = 80.0f;
            } else {
                sp114.y = 55.0f;
            }
            sp114.z = -80.0f;

            Matrix_MultVec3f(&sp114, &sp108);
            sp108.x += player->actor.world.pos.x;
            sp108.y += player->actor.world.pos.y;
            sp108.z += player->actor.world.pos.z;

            Math_ApproachF(&D_80B7FED0, 30.0f, 0.1f, 0.4f);

            if (CHECK_BTN_ALL(input->press.button, BTN_Z)) {
                if ((D_80B7E088 >= 0) && (D_80B7E122 == 0)) {
                    D_80B7E088++;

                    if (D_80B7E088 >= 4) {
                        D_80B7E088 = 0;
                    }

                    if ((D_80B7E088 == 0) || (D_80B7E088 == 3)) {
                        func_80078884(NA_SE_SY_CAMERA_ZOOM_DOWN);
                    } else {
                        func_80078884(NA_SE_SY_CAMERA_ZOOM_UP);
                    }
                }
            }

            if (D_80B7A694 >= 3) {
                if (spEC < 110.0f) {
                    D_80B7E088 = -1;
                } else if ((spEC > 300.0f) && (D_80B7E088 < 0)) {
                    D_80B7E088 = 0;
                }
            }

            if (D_80B7E088 > 0) {
                f32 phi_f12;
                f32 phi_f2;
                f32 temp_f0;

                phi_f12 = sqrtf(SQ(spFC.x) + SQ(spFC.z)) * 0.001f;
                if (phi_f12 > 1.0f) {
                    phi_f12 = 1.0f;
                }
                if (D_80B7E088 == 2) {
                    phi_f2 = 0.3f;
                } else {
                    phi_f2 = 0.1f;
                }
                temp_f0 = 0.4f + phi_f2 + (phi_f12 * 0.4f);

                sp108.x += (D_80B7E0B8.x - sp108.x) * temp_f0;
                sp108.y += ((D_80B7E0B8.y - sp108.y) * temp_f0) + 20.0f;
                sp108.z += (D_80B7E0B8.z - sp108.z) * temp_f0;
                D_80B7E14C = 0.0005000001f;
            }

            sp114.x = 0.0f;
            sp114.y = 0.0f;
            sp114.z = 100.0f;
            Matrix_MultVec3f(&sp114, &spFC);

            Math_ApproachF(&D_80B7FEA8.x, sp108.x, 0.3f, fabsf(spFC.x) * D_80B7FECC);
            Math_ApproachF(&D_80B7FEA8.y, sp108.y, 0.3f, 20.0f * D_80B7FECC);
            Math_ApproachF(&D_80B7FEA8.z, sp108.z, 0.3f, fabsf(spFC.z) * D_80B7FECC);
            break;

        case 3: {
            Camera* camera = Gameplay_GetCamera(globalCtx, MAIN_CAM);

            camera->eye = D_80B7FEA8;
            camera->eyeNext = D_80B7FEA8;
            camera->at = D_80B7FEB8;
            func_800C08AC(globalCtx, D_80B7FEC4, 0);
            func_80064534(globalCtx, &globalCtx->csCtx);
            D_80B7A6CC = 0;
            D_80B7FEC4 = 0;
            func_80070600(globalCtx, 0);
            globalCtx->envCtx.unk_9E = 0;
            player->unk_860 = -5;
            D_80B7E0B0 = 5;
            break;
        }

        case 10: {
            Camera* camera;

            func_80064520(globalCtx, &globalCtx->csCtx);
            D_80B7FEC4 = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, MAIN_CAM, CAM_STAT_WAIT);
            Gameplay_ChangeCameraStatus(globalCtx, D_80B7FEC4, CAM_STAT_ACTIVE);
            func_8002DF54(globalCtx, &this->actor, 5);
            camera = Gameplay_GetCamera(globalCtx, MAIN_CAM);
            D_80B7FEA8.x = camera->eye.x;
            D_80B7FEA8.y = camera->eye.y;
            D_80B7FEA8.z = camera->eye.z;
            D_80B7FEB8.x = camera->at.x;
            D_80B7FEB8.y = camera->at.y;
            D_80B7FEB8.z = camera->at.z;
            func_8010B680(globalCtx, 0x409E, NULL);
            D_80B7A6CC = 11;
            func_800A9F6C(0.0f, 150, 10, 10);
            // fallthrough
        }

        case 11:
            player->actor.world.pos.z = 1360.0f;
            player->actor.speedXZ = 0.0f;

            if (func_8010BDBC(&globalCtx->msgCtx) == 0) {
                Camera* camera = Gameplay_GetCamera(globalCtx, MAIN_CAM);

                camera->eye = D_80B7FEA8;
                camera->eyeNext = D_80B7FEA8;
                camera->at = D_80B7FEB8;
                func_800C08AC(globalCtx, D_80B7FEC4, 0);
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                D_80B7A6CC = 0;
                D_80B7FEC4 = 0;
                D_80B7A6D0 = 30;
                func_80070600(globalCtx, 0);
                globalCtx->envCtx.unk_9E = 0;
            }
            break;

        case 20: {
            Camera* camera;

            func_80064520(globalCtx, &globalCtx->csCtx);
            D_80B7FEC4 = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, MAIN_CAM, CAM_STAT_WAIT);
            Gameplay_ChangeCameraStatus(globalCtx, D_80B7FEC4, CAM_STAT_ACTIVE);
            func_8002DF54(globalCtx, &this->actor, 5);
            camera = Gameplay_GetCamera(globalCtx, MAIN_CAM);
            D_80B7FEA8.x = camera->eye.x;
            D_80B7FEA8.y = camera->eye.y;
            D_80B7FEA8.z = camera->eye.z;
            D_80B7FEB8.x = camera->at.x;
            D_80B7FEB8.y = camera->at.y;
            D_80B7FEB8.z = camera->at.z;
            func_8010B680(globalCtx, 0x409A, NULL);
            D_80B7A6CC = 21;
            D_80B7FEC8 = 45.0f;
            D_80B7A6D0 = 10;
            // fallthrough
        }

        case 21:
            if ((D_80B7A6D0 == 0) && (func_80106BC8(globalCtx) != 0)) {
                D_80B7A6CC = 22;
                D_80B7A6D0 = 40;
                func_8002DF54(globalCtx, &this->actor, 0x1C);
                D_80B7FEE4 = 0.0f;
            }
            break;

        case 22:
            if (D_80B7A6D0 == 30) {
                Audio_SetBGM(0x922);
            }

            D_80B7A6D4 = 1;

            Math_ApproachF(&D_80B7FEE4, 71.0f, 0.5f, 3.0f);
            Matrix_RotateY((player->actor.shape.rot.y / 32768.0f) * M_PI, MTXMODE_NEW);

            sp114.x = Math_SinS(globalCtx->gameplayFrames * 0x1000);
            sp114.y = D_80B7FEE4;
            sp114.z = -5.0f;
            if (D_80B7E075 == 1) {
                sp114.y -= 20.0f;
            }

            Matrix_MultVec3f(&sp114, &sp108);

            D_80B7FED8.x = player->actor.world.pos.x + sp108.x;
            D_80B7FED8.y = player->actor.world.pos.y + sp108.y;
            D_80B7FED8.z = player->actor.world.pos.z + sp108.z;

            Math_ApproachF(&D_80B7FEC8, 15.0f, 0.1f, 0.75f);

            sp114.x = D_80B7FEC8 - 15.0f;

            if (D_80B7E075 != 1) {
                sp114.y = 60.0f;
                sp114.z = -30.0f;
            } else {
                sp114.y = 40.0f;
                sp114.z = -35.0f;
            }

            Matrix_MultVec3f(&sp114, &D_80B7FEA8);
            D_80B7FEA8.x += player->actor.world.pos.x;
            D_80B7FEA8.y += player->actor.world.pos.y;
            D_80B7FEA8.z += player->actor.world.pos.z;

            D_80B7FEB8 = player->actor.world.pos;
            if (D_80B7E075 != 1) {
                D_80B7FEB8.y += 62.0f;
            } else {
                D_80B7FEB8.y += 40.0f;
            }

            if (D_80B7A6D0 == 0) {
                if ((func_8010BDBC(&globalCtx->msgCtx) == 4) || (func_8010BDBC(&globalCtx->msgCtx) == 0)) {
                    if (func_80106BC8(globalCtx) != 0) {
                        Camera* camera = Gameplay_GetCamera(globalCtx, MAIN_CAM);

                        func_80106CCC(globalCtx);
                        if (globalCtx->msgCtx.choiceIndex == 0) {
                            D_80B7E0B6 = 2;
                            D_80B7E082 = 0;
                        }

                        camera->eye = D_80B7FEA8;
                        camera->eyeNext = D_80B7FEA8;
                        camera->at = D_80B7FEB8;
                        func_800C08AC(globalCtx, D_80B7FEC4, 0);
                        func_80064534(globalCtx, &globalCtx->csCtx);
                        func_8002DF54(globalCtx, &this->actor, 7);
                        D_80B7A6CC = 0;
                        D_80B7FEC4 = 0;
                        player->unk_860 = -5;
                        D_80B7E0B0 = 5;
                        D_80B7A6D4 = 0;
                        D_80B7E0A6 = 20;
                        func_80070600(globalCtx, 0);
                        globalCtx->envCtx.unk_9E = 0;
                    }
                }
            }
            break;

        case 100:
            break;
    }

    if (D_80B7FEC4 != 0) {
        Gameplay_CameraSetAtEye(globalCtx, D_80B7FEC4, &D_80B7FEB8, &D_80B7FEA8);
        Math_ApproachF(&D_80B7FECC, 1.0f, 1.0f, 0.02f);

        if (D_80B7FEA8.y <= (globalCtx->colCtx.colHeader->waterBoxes->ySurface + 1.0f)) {
            func_80070600(globalCtx, 1);
            if (D_80B7E076 != 0) {
                globalCtx->envCtx.unk_9E = -0xB2;
            } else {
                globalCtx->envCtx.unk_9E = -0x2E;
            }
        } else {
            func_80070600(globalCtx, 0);
            globalCtx->envCtx.unk_9E = 0;
        }
    }

    if ((player->actor.floorHeight < (globalCtx->colCtx.colHeader->waterBoxes->ySurface - 3.0f)) &&
        (player->actor.world.pos.y < (player->actor.floorHeight + 3.0f)) && (player->actor.speedXZ > 1.0f) &&
        ((globalCtx->gameplayFrames & 1) == 0)) {
        Vec3f spA4;

        spA4.x = Rand_CenteredFloat(20.0f) + player->actor.world.pos.x;
        spA4.z = Rand_CenteredFloat(20.0f) + player->actor.world.pos.z;
        spA4.y = player->actor.floorHeight + 5.0f;
        func_80B69ED0(NULL, globalCtx->specialEffects, &spA4, 0.5f);
    }

    if ((player->actor.floorHeight < globalCtx->colCtx.colHeader->waterBoxes->ySurface) &&
        ((globalCtx->colCtx.colHeader->waterBoxes->ySurface - 10.0f) < player->actor.floorHeight) &&
        (player->actor.speedXZ >= 4.0f) && ((globalCtx->gameplayFrames & 3) == 0)) {
        s16 spA2;

        for (spA2 = 0; spA2 < 10; spA2++) {
            Vec3f sp94;
            Vec3f sp88;
            f32 sp84;
            f32 sp80;

            sp84 = Rand_ZeroFloat(1.5f) + 1.5f;
            sp80 = Rand_ZeroFloat(6.28f);

            sp88.x = sinf(sp80) * sp84;
            sp88.z = cosf(sp80) * sp84;
            sp88.y = Rand_ZeroFloat(3.0f) + 2.0f;

            sp94 = player->actor.world.pos;
            sp94.x += 2.0f * sp88.x;
            sp94.y = globalCtx->colCtx.colHeader->waterBoxes->ySurface;
            sp94.z += 2.0f * sp88.z;
            func_80B69D88(NULL, globalCtx->specialEffects, &sp94, &sp88, Rand_ZeroFloat(0.01f) + 0.020000001f);
        }
    }

    if (sREG(15) != 0) {
        if (D_80B7A654 != (sREG(15) - 1)) {
            if (D_80B7A654 == 0) {
                globalCtx->envCtx.gloomySkyEvent = 1;
            } else {
                globalCtx->envCtx.gloomySkyEvent = 2;
            }
        }

        D_80B7A654 = sREG(15) - 1;
    }

    if (sREG(14) == 1) {
        globalCtx->envCtx.gloomySkyEvent = 1;
    }
    if (sREG(14) == -1) {
        globalCtx->envCtx.gloomySkyEvent = 2;
    }

    sREG(14) = 0;

    osSyncPrintf(VT_FGCOL(GREEN));
    osSyncPrintf("zelda_time %x\n", ((void)0, gSaveContext.dayTime));
    osSyncPrintf(VT_RST);

    if (D_80B7E077 >= 2) {
        D_80B7E077--;
    }

    if ((D_80B7E077 == 1) && (func_8010BDBC(&globalCtx->msgCtx) == 0) && ((D_80B7A680 & 0xFFF) == 0xFFF)) {
        D_80B7E077 = 200;

        if (Rand_ZeroOne() < 0.5f) {
            D_80B7A654 = (u8)Rand_ZeroFloat(10.0f) + 5;
            globalCtx->envCtx.gloomySkyEvent = 1;
        } else {
            D_80B7A654 = 0;
            globalCtx->envCtx.gloomySkyEvent = 2;
        }
    }

    Math_ApproachF(&D_80B7A650, D_80B7A654, 1.0f, 0.05f);

    if (D_80B7A650 > 0.0f) {
        phi_f2_2 = (D_80B7A650 * 0.03f) + 0.8f;
        if (phi_f2_2 > 1.2f) {
            phi_f2_2 = 1.2f;
        }
        Math_ApproachF(&D_80B7A668, phi_f2_2, 1.0f, 0.01f);
    }

    phi_f2_2 = (10.0f - D_80B7A650) * 150.1f;
    if (phi_f2_2 < 0.0f) {
        phi_f2_2 = 0.0f;
    }
    if (1) {}
    if (1) {}
    Math_ApproachF(&D_80B7A65C.z, phi_f2_2, 1.0f, 5.0f);

    if (D_80B7A65C.z < 1500.0f) {
        func_800F436C(&D_80B7A65C, NA_SE_EV_RAIN - SFX_FLAG, D_80B7A668);
    }

    if (D_80B7A654 != 0) {
        Math_ApproachF(&D_80B7A658, -200.0f, 1.0f, 2.0f);
    } else {
        Math_ApproachZeroF(&D_80B7A658, 1.0f, 2.0f);
    }

    globalCtx->envCtx.unk_8C[1][0] = globalCtx->envCtx.unk_8C[1][1] = globalCtx->envCtx.unk_8C[1][2] = D_80B7A658;

    if ((u8)D_80B7A650 > 0) {
        s32 pad;
        Camera* camera = Gameplay_GetCamera(globalCtx, MAIN_CAM);
        s16 sp76;
        s32 pad1;
        Vec3f sp64;
        Vec3f sp58;
        Vec3f sp4C;
        s32 pad2;

        sp58.x = 1.6707964f;
        sp58.y = 1.0f;
        sp58.z = (Camera_GetInputDirYaw(camera) * -(M_PI / 32768)) + sp58.y;

        for (sp76 = 0; sp76 < (u8)D_80B7A650; sp76++) {
            sp64.x = Rand_CenteredFloat(700.0f) + globalCtx->view.eye.x;
            sp64.y = (Rand_ZeroFloat(100.0f) + 150.0f) - 170.0f;
            sp64.z = Rand_CenteredFloat(700.0f) + globalCtx->view.eye.z;

            if (sp64.z < 1160.0f) {
                SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &sp64, &sp4C, &D_80B7FEA4);

                if (sp4C.z < 0.0f) {
                    sp76--;
                } else {
                    func_80B6A138(globalCtx->specialEffects, &sp64, &sp58);
                }
            }
        }
    }

    SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &D_80B7AFD0, &D_80B85138, &D_80B7FEA4);

    func_80078914(&D_80B85138, NA_SE_EV_WATER_WALL - SFX_FLAG);

    gSaveContext.minigameScore = (SQ((f32)D_80B7A678) * 0.0036f) + 0.5f;

    if (BREG(26) != 0) {
        BREG(26) = 0;
        func_8010B680(globalCtx, 0x407B + BREG(27), NULL);
    }

    osSyncPrintf("HI_SCORE = %x\n", HIGH_SCORE(HS_FISHING));
}

s32 func_80B7A10C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    Fishing* this = THIS;

    if (limbIndex == 8) {
        rot->x -= this->unk_164;
    }

    return 0;
}

void func_80B7A140(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    if (limbIndex == 8) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 9134);
        Matrix_MultVec3f(&D_80B7A89C, &D_80B7E090);

        if (D_80B7A688 == 1) {
            gSPDisplayList(POLY_OPA_DISP++, SEGMENTED_TO_VIRTUAL(object_fish_DL_0074C8));
        } else if (D_80B7A688 == 2) {
            gSPDisplayList(POLY_OPA_DISP++, SEGMENTED_TO_VIRTUAL(object_fish_DL_007350));
        }

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 9142);
    }
}

static void* D_80B7AFF4[] = {
    0x06009250,
    0x06009650,
    0x06009A50,
};

void func_80B7A278(Actor* thisx, GlobalContext* globalCtx) {
    Fishing* this = THIS;
    s32 pad;
    Input* input = &globalCtx->state.input[0];

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 9156);

    func_80093D18(globalCtx->state.gfxCtx);
    func_80093D84(globalCtx->state.gfxCtx);

    if ((this->actor.projectedPos.z < 1500.0f) &&
        (fabsf(this->actor.projectedPos.x) < (100.0f + this->actor.projectedPos.z))) {
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80B7AFF4[this->unk_160]));

        SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                              this->skelAnime.dListCount, func_80B7A10C, func_80B7A140, this);
    }

    func_80B76474(globalCtx);
    func_80B6B674(globalCtx->specialEffects, globalCtx);
    func_80B771CC(globalCtx);
    func_80B6C134(globalCtx);

    if (D_80B7E0A6 != 0) {
        D_80B7E0A6--;

        if (D_80B7E0A6 == 0) {
            if (D_80B7E075 != 1) {
                Audio_SetBGM(0x19);
            } else {
                Audio_SetBGM(0x27);
            }

            if (D_80B7E075 != 1) {
                Audio_SetBGM(0x19);
            } else {
                Audio_SetBGM(0x27);
            }
        }
    }

    if ((D_80B7E0AC != 0) && D_80B7A674) {
        func_80B6DF30(globalCtx);
        func_80B6C960(D_80B7E168);
        func_80B6C3E0(globalCtx, &D_80B7E158, D_80B7E168, D_80B7EAC8, D_80B7F428);
        func_80B6D688(globalCtx, D_80B7E168, D_80B7EAC8);

        D_80B7A6C4 = input->rel.stick_x;
        D_80B7A6C8 = input->rel.stick_y;
    }

    D_80B7A674 = true;

    Matrix_Translate(130.0f, 40.0f, 1300.0f, MTXMODE_NEW);
    Matrix_Scale(0.08f, 0.12f, 0.14f, MTXMODE_APPLY);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 9297),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_fishing.c", 9298),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_OPA_DISP++, object_fish_DL_0153D0);
    gSPDisplayList(POLY_XLU_DISP++, object_fish_DL_015470);

    if ((D_80B7E0AC != 0) && (D_80B7E0B6 == 2)) {
        func_80B6D354(globalCtx);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_fishing.c", 9305);
}
