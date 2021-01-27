#include "z_en_horse.h"
#include "overlays/actors/ovl_En_In/z_en_in.h"
#include "alloca.h"

#define FLAGS 0x00000010

#define THIS ((EnHorse*)thisx)

// z_horse.c
void func_8006DD9C(Actor* actor, Vec3f* arg1, s16 arg2);

void EnHorse_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHorse_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHorse_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHorse_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A61058(EnHorse* this, GlobalContext* globalCtx);
void func_80A6140C(EnHorse* this);
void func_80A61A04(EnHorse* this);
void func_80A5F3A8(EnHorse* this);
void func_80A5F3A8(EnHorse* this);
void func_80A5F3DC(EnHorse* this);
void func_80A5F044(EnHorse* this);
void func_80A5FCAC(EnHorse* this);

void func_80A5C97C(EnHorse* this, GlobalContext* globalCtx);
void func_80A5F08C(EnHorse* this, GlobalContext* globalCtx);
void func_80A5F414(EnHorse* this, GlobalContext* globalCtx);
void func_80A5F890(EnHorse* this, GlobalContext* globalCtx);
void func_80A600E8(EnHorse* this, GlobalContext* globalCtx);
void func_80A5D0A0(EnHorse* this, GlobalContext* globalCtx);
void func_80A5D2C0(EnHorse* this, GlobalContext* globalCtx);
void func_80A5D468(EnHorse* this, GlobalContext* globalCtx);
void func_80A5D79C(EnHorse* this, GlobalContext* globalCtx);
void func_80A5DB58(EnHorse* this, GlobalContext* globalCtx);
void func_80A5DE38(EnHorse* this, GlobalContext* globalCtx);
void func_80A5E12C(EnHorse* this, GlobalContext* globalCtx);
void func_80A5E39C(EnHorse* this, GlobalContext* globalCtx);
void func_80A5E650(EnHorse* this, GlobalContext* globalCtx);
void func_80A5EB54(EnHorse* this, GlobalContext* globalCtx);
void func_80A5EE80(EnHorse* this, GlobalContext* globalCtx);
void func_80A627A4(EnHorse* this, GlobalContext* globalCtx);
void func_80A610C8(EnHorse* this, GlobalContext* globalCtx);
void func_80A61778(EnHorse* this, GlobalContext* globalCtx);
void func_80A61A28(EnHorse* this, GlobalContext* globalCtx);
void func_80A5E2A8(EnHorse* this, GlobalContext* globalCtx);

extern Vec3f D_80A66788, D_80A66794;

extern CutsceneData D_02000230[];
extern CutsceneData D_02002AC0[];
extern Gfx D_06006530[];

AnimationHeader* D_80A65E10[] = { 0x06006D50, 0x06005584, 0x06004DEC, 0x06003CEC, 0x060075F0,
                                  0x060032B0, 0x06001E2C, 0x06002470, 0x06002C38 };

AnimationHeader* D_80A65E34[] = { 0x06009FC4, 0x0600A6B4, 0x0600901C, 0x060085E0, 0x0600AF60,
                                  0x06007B54, 0x0600506C, 0x06005684, 0x06005E20 };

static AnimationHeader** sAnimationHeaders[] = { D_80A65E10, D_80A65E34 };

static f32 sPlaybackSpeeds[] = { 0.6666667f, 0.6666667f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.6666667f, 0.6666667f };

static SkeletonHeader* D_80A65E84[] = { 0x06009D74, 0x06004A24 };

const ActorInit En_Horse_InitVars = {
    ACTOR_EN_HORSE,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_HORSE,
    sizeof(EnHorse),
    (ActorFunc)EnHorse_Init,
    (ActorFunc)EnHorse_Destroy,
    (ActorFunc)EnHorse_Update,
    (ActorFunc)EnHorse_Draw,
};

static ColliderCylinderInit sCylinderInit1 = {
    {
        COLTYPE_NONE,
        AT_TYPE_PLAYER,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1 | OC2_UNK1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000400, 0x00, 0x04 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 20, 70, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit sCylinderInit2 = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1 | OC2_UNK1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 20, 70, 0, { 0, 0, 0 } },
};

static ColliderJntSphElementInit sJntSphItemsInit[1] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x0001F824, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_ON | BUMP_NO_AT_INFO | BUMP_NO_DAMAGE | BUMP_NO_SWORD_SFX | BUMP_NO_HITMARK,
            OCELEM_ON,
        },
        { 13, { { 0, 0, 0 }, 20 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1 | OC2_UNK1,
        COLSHAPE_JNTSPH,
    },
    1,
    sJntSphItemsInit,
};

static GfxPrint sDebugPrinter;
static GfxPrint *dprint = &sDebugPrinter;

static int horse = 0;
static int changed = 0;
static int dbgY;

CollisionCheckInfoInit D_80A65F38 = { 10, 35, 100, MASS_HEAVY };

typedef struct {
    s16 scene;
    Vec3s pos;
    s16 angle; // always 0 -_-
} EnHorseSpawn;

EnHorseSpawn sHorseSpawns[] = {
    // Hyrule Field
    { SCENE_SPOT00,    16,     0,  1341, 0 }, { SCENE_SPOT00, -1297,     0,  1459, 0 },
    { SCENE_SPOT00, -5416,  -300,  1296, 0 }, { SCENE_SPOT00, -4667,  -300,  3620, 0 },
    { SCENE_SPOT00, -3837,    81,  5537, 0 }, { SCENE_SPOT00, -5093,  -226,  6661, 0 },
    { SCENE_SPOT00, -6588,   -79,  5053, 0 }, { SCENE_SPOT00, -7072,  -500,  7538, 0 },
    { SCENE_SPOT00, -6139,  -500,  8910, 0 }, { SCENE_SPOT00, -8497,  -300,  7802, 0 },
    { SCENE_SPOT00, -5481,  -499, 12127, 0 }, { SCENE_SPOT00, -4808,  -700, 13583, 0 },
    { SCENE_SPOT00, -3416,  -490, 12092, 0 }, { SCENE_SPOT00, -2915,   100,  8339, 0 },
    { SCENE_SPOT00, -2277,  -500, 13247, 0 }, { SCENE_SPOT00, -1026,  -500, 12101, 0 },
    { SCENE_SPOT00,  1427,  -500, 13341, 0 }, { SCENE_SPOT00,  -200,  -486, 10205, 0 },
    { SCENE_SPOT00, -1469,   100,  7496, 0 }, { SCENE_SPOT00,  -995,   168,  5652, 0 },
    { SCENE_SPOT00,  1938,    89,  6232, 0 }, { SCENE_SPOT00,  1387,  -105,  9206, 0 },
    { SCENE_SPOT00,  1571,  -223,  7701, 0 }, { SCENE_SPOT00,  3893,  -121,  7068, 0 },
    { SCENE_SPOT00,  3179,   373,  5221, 0 }, { SCENE_SPOT00,  4678,   -20,  3869, 0 },
    { SCENE_SPOT00,  3460,   246,  4207, 0 }, { SCENE_SPOT00,  3686,   128,  2366, 0 },
    { SCENE_SPOT00,  1791,    18,   152, 0 }, { SCENE_SPOT00,  3667,   -16,  1399, 0 },
    { SCENE_SPOT00,  1827,   -15,   983, 0 }, { SCENE_SPOT00,  1574,   399,  4318, 0 },
    { SCENE_SPOT00,   716,    95,  3391, 0 }, { SCENE_SPOT00, -1189,   -41,  4739, 0 },
    { SCENE_SPOT00, -1976,  -171,  4172, 0 }, { SCENE_SPOT00,  1314,   391,  5665, 0 },
    { SCENE_SPOT00,   112,     0,  1959, 0 }, { SCENE_SPOT00, -3011,  -111,  9397, 0 },
    { SCENE_SPOT00, -5674,  -270,  8585, 0 }, { SCENE_SPOT00, -8861,  -300,  7836, 0 },
    { SCENE_SPOT00, -6056,  -500,  7810, 0 }, { SCENE_SPOT00, -7306,  -500,  5994, 0 },
    { SCENE_SPOT00, -7305,  -500,  7605, 0 }, { SCENE_SPOT00, -7439,  -300,  7600, 0 },
    { SCENE_SPOT00, -7464,  -300,  6268, 0 }, { SCENE_SPOT00, -8080,  -300,  7553, 0 },
    { SCENE_SPOT00, -8091,  -300,  7349, 0 }, { SCENE_SPOT00, -8785,  -300,  7383, 0 },
    { SCENE_SPOT00, -8745,  -300,  7508, 0 }, { SCENE_SPOT00, -8777,  -300,  7788, 0 },
    { SCENE_SPOT00, -8048,  -299,  7738, 0 }, { SCENE_SPOT00, -7341,  -184,  7730, 0 },
    { SCENE_SPOT00, -6410,  -288,  7824, 0 }, { SCENE_SPOT00, -6326,  -290,  8205, 0 },
    { SCENE_SPOT00, -6546,  -292,  8400, 0 }, { SCENE_SPOT00, -7533,  -180,  8459, 0 },
    { SCENE_SPOT00, -8024,  -295,  7903, 0 }, { SCENE_SPOT00, -8078,  -308,  7994, 0 },
    { SCENE_SPOT00, -9425,  -287,  7696, 0 }, { SCENE_SPOT00, -9322,  -292,  7577, 0 },
    { SCENE_SPOT00, -9602,  -199,  7160, 0 }, { SCENE_SPOT00, -9307,  -300,  7758, 0 },
    { SCENE_SPOT00, -9230,  -300,  7642, 0 }, { SCENE_SPOT00, -7556,  -499,  8695, 0 },
    { SCENE_SPOT00, -6438,  -500,  8606, 0 }, { SCENE_SPOT00, -6078,  -500,  8258, 0 },
    { SCENE_SPOT00, -6233,  -500,  7613, 0 }, { SCENE_SPOT00, -5035,  -205,  7814, 0 },
    { SCENE_SPOT00, -5971,  -500,  8501, 0 }, { SCENE_SPOT00, -5724,  -498, 10123, 0 },
    { SCENE_SPOT00, -5094,  -392, 11106, 0 }, { SCENE_SPOT00, -5105,  -393, 11312, 0 },
    { SCENE_SPOT00, -4477,  -314, 11132, 0 }, { SCENE_SPOT00, -3867,  -380, 11419, 0 },
    { SCENE_SPOT00, -2952,  -500, 11944, 0 }, { SCENE_SPOT00, -2871,  -488, 11743, 0 },
    { SCENE_SPOT00, -3829,  -372, 11327, 0 }, { SCENE_SPOT00, -4439,  -293, 10989, 0 },
    { SCENE_SPOT00, -5014,  -381, 11086, 0 }, { SCENE_SPOT00, -5113,  -188, 10968, 0 },
    { SCENE_SPOT00, -5269,  -188, 11156, 0 }, { SCENE_SPOT00, -5596,  -178,  9972, 0 },
    { SCENE_SPOT00, -5801,  -288,  8518, 0 }, { SCENE_SPOT00, -4910,  -178,  7931, 0 },
    { SCENE_SPOT00, -3586,    73,  8140, 0 }, { SCENE_SPOT00, -4487,  -106,  9362, 0 },
    { SCENE_SPOT00, -4339,  -112,  6412, 0 }, { SCENE_SPOT00, -3417,   105,  8194, 0 },
    { SCENE_SPOT00, -4505,   -20,  6608, 0 }, { SCENE_SPOT00, -5038,  -199,  6603, 0 },
    { SCENE_SPOT00, -4481,     1,  6448, 0 }, { SCENE_SPOT00, -5032,  -168,  6418, 0 },
    { SCENE_SPOT00, -5256,  -700, 14329, 0 }, { SCENE_SPOT00, -5749,  -820, 15380, 0 },
    { SCENE_SPOT00, -3122,  -700, 13608, 0 }, { SCENE_SPOT00, -3758,  -525, 13228, 0 },
    { SCENE_SPOT00, -3670,  -500, 13123, 0 }, { SCENE_SPOT00, -2924,  -500, 13526, 0 },
    { SCENE_SPOT00,  1389,  -115,  9370, 0 }, { SCENE_SPOT00,   548,  -116,  8889, 0 },
    { SCENE_SPOT00,  -106,  -107,  8530, 0 }, { SCENE_SPOT00, -1608,    85,  7646, 0 },
    { SCENE_SPOT00, -5300,  -700, 13772, 0 }, { SCENE_SPOT00, -5114,  -700, 13400, 0 },
    { SCENE_SPOT00, -4561,  -700, 13700, 0 }, { SCENE_SPOT00, -4762,  -700, 14084, 0 },
    { SCENE_SPOT00, -2954,   100,  8216, 0 }, { SCENE_SPOT00,  1460,  -104,  9246, 0 },
    { SCENE_SPOT00,   629,  -105,  8791, 0 }, { SCENE_SPOT00,   -10,   -90,  8419, 0 },
    { SCENE_SPOT00, -1462,   100,  7504, 0 }, { SCENE_SPOT00, -3018,  -500, 12493, 0 },
    { SCENE_SPOT00, -2994,  -311, 10331, 0 }, { SCENE_SPOT00, -4006,  -700, 14152, 0 },
    { SCENE_SPOT00, -4341,  -500, 12743, 0 }, { SCENE_SPOT00, -5879,  -497,  6799, 0 },
    { SCENE_SPOT00,    22,  -473, 10103, 0 }, { SCENE_SPOT00, -1389,  -192,  8874, 0 },
    { SCENE_SPOT00,    -4,    92,  6866, 0 }, { SCENE_SPOT00,   483,   104,  6637, 0 },
    { SCENE_SPOT00,  1580,   183,  5987, 0 }, { SCENE_SPOT00,  1548,   308,  5077, 0 },
    { SCENE_SPOT00,  1511,   399,  4267, 0 }, { SCENE_SPOT00,  1358,   385,  4271, 0 },
    { SCENE_SPOT00,  1379,   395,  5063, 0 }, { SCENE_SPOT00,  1360,   394,  5870, 0 },
    { SCENE_SPOT00,   813,   283,  6194, 0 }, { SCENE_SPOT00,   -57,   101,  6743, 0 },
    { SCENE_SPOT00,    91,   325,  5143, 0 }, { SCENE_SPOT00,  1425,  -214,  7659, 0 },
    { SCENE_SPOT00,  3487,   -19,   880, 0 }, { SCENE_SPOT00,  2933,   152,  2094, 0 },
    { SCENE_SPOT00,  2888,  -145,  6862, 0 }, { SCENE_SPOT00,  1511,    67,  6471, 0 },
    { SCENE_SPOT00,  4051,   -47,  1722, 0 }, { SCENE_SPOT00, -7335,  -500,  8627, 0 },
    { SCENE_SPOT00, -7728,  -462,  8498, 0 }, { SCENE_SPOT00, -7791,  -446,  8832, 0 },
    { SCENE_SPOT00, -2915,  -435, 11334, 0 }, { SCENE_SPOT00,   165,  -278,  3352, 0 },

    // Lake Hylia
    { SCENE_SPOT06, -2109,  -882,  1724, 0 }, { SCENE_SPOT06,  -328, -1238,  2705, 0 },
    { SCENE_SPOT06, -3092, -1033,  3527, 0 },

    // Gerudo Valley
    { SCENE_SPOT09,  2687,  -269,   753, 0 }, { SCENE_SPOT09,  2066,  -132,   317, 0 },
    { SCENE_SPOT09,   523,    -8,   635, 0 }, { SCENE_SPOT09,   558,    36,  -323, 0 },
    { SCENE_SPOT09,   615,    51,  -839, 0 }, { SCENE_SPOT09,  -614,    32,    29, 0 },
    { SCENE_SPOT09,  -639,    -3,   553, 0 }, { SCENE_SPOT09,  -540,    10,  -889, 0 },
    { SCENE_SPOT09, -1666,    58,   378, 0 }, { SCENE_SPOT09, -3044,   210,  -648, 0 },

    // Gerudo's Fortress
    { SCENE_SPOT12,  -678,    21,  -623, 0 }, { SCENE_SPOT12,   149,   333, -2499, 0 },
    { SCENE_SPOT12,   499,   581,  -547, 0 }, { SCENE_SPOT12,  3187,  1413, -3775, 0 },
    { SCENE_SPOT12,  3198,  1413,   307, 0 }, { SCENE_SPOT12,  3380,  1413, -1200, 0 },
    { SCENE_SPOT12,  -966,     1,   -56, 0 }, { SCENE_SPOT12,  -966,    24,  -761, 0 },
    { SCENE_SPOT12,  -694,   174, -2820, 0 },

    /* Lon Lon Ranch */
    { SCENE_SPOT20,  1039,     0,  2051, 0 }, { SCENE_SPOT20, -1443,     0,  1429, 0 },
    { SCENE_SPOT20,   856,     0,  -918, 0 }, // Hardcoded to always load in lon lon
    { SCENE_SPOT20,   882,     0, -2256, 0 },
    { SCENE_SPOT20, -1003,     0,  -755, 0 }, // Hardcoded to always load in lon lon
    { SCENE_SPOT20, -2254,     0,  -629, 0 },
    { SCENE_SPOT20,   907,     0, -2336, 0 },
};

struct unk_80A665DC {
    s16 zMin;
    s16 zMax;

    s16 xMin;
    s16 xMax;
    s16 xOffset;

    s16 angle;
    s16 angleRange;

    Vec3s pos;
};

struct unk_80A665DC D_80A665DC[] = { { -195, -40,  225,  120,  360, -0x4000, 0x7D0, -270, -52, -117 },
                                     { -195, -40, -240, -120, -360,  0x4000, 0x7D0,  270, -52, -117 } };

struct unk_80A66604 {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
};

struct unk_80A66654 {
    s32 unk_00;
    struct unk_80A66604* unkstruct_04;
};

struct unk_80A66604 D_80A66604[] = {
    { 1056, 1, -1540, 11, 0x2A8D, },
    { 1593, 1, -985, 10, 0xFC27, },
    { 1645, 1, -221, 11, 0xE891, },
    { 985, 1, 193, 10, 0xBB9C, },
    { -1023, 1, 354, 11, 0xA37D, },
    { -1679, 1, -213, 10, 0x889C, },
    { -1552, 1, -1008, 11, 0x638D, },
    { -947, -1, -1604, 10, 0x4002, },
};
struct unk_80A66654 D_80A66654 = { 0x00000008, D_80A66604 };
s32 D_80A6665C[] = { 0, 16 };

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneScale, 600, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 300, ICHAIN_STOP),
};

u8 D_80A6666C[] = { 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0 };

s32 D_80A66678[] = { 0x00000001, 0x00000003, 0x00000000, 0x00000003, 0x00000001, 0x00000000 };

s16 sIngoRiderTable[] = { 7, 6, 2, 2, 1, 1, 0, 0, 0, 0 };

void func_80A60294(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action);
void func_80A605A4(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action);
void func_80A60838(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action);
void func_80A60AFC(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action);
void func_80A60D28(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action);

void (*D_80A666A4[])(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action) = {
    NULL, func_80A60294, func_80A605A4, func_80A60838, func_80A60AFC, func_80A60D28,
};

void func_80A60300(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action);
void func_80A605E0(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action);
void func_80A60954(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action);
void func_80A60BDC(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action);
void func_80A60EB0(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action);

void (*D_80A666BC[])(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action) = {
    NULL, func_80A60300, func_80A605E0, func_80A60954, func_80A60BDC, func_80A60EB0,
};

typedef struct {
    s32 x;
    s32 y;
} Vec2i;

Vec2i D_80A666D4[] = {
    {
        0x00000024,
        0x00000001,
    },
    {
        0x00000025,
        0x00000002,
    },
    {
        0x00000026,
        0x00000003,
    },
    {
        0x00000040,
        0x00000004,
    },
    {
        0x00000041,
        0x00000005,
    },
};

struct unk_80A66604 D_80A666FC[] = {
    {
        0x0E10,
        0x0585,
        0xEC41,
        0x000B,
        0x8001,
    },
    {
        0x0D20,
        0x0585,
        0xEB9C,
        0x0005,
        0xC000,
    },
    {
        0x0C1C,
        0x0585,
        0xECDC,
        0x0005,
        0x0000,
    },
    {
        0x0E10,
        0x0585,
        0xEFFC,
        0x000B,
        0x0000,
    },
    {
        0x0E10,
        0x0585,
        0x0168,
        0x000B,
        0x0000,
    },
};
struct unk_80A66654 D_80A66730 = { 5, D_80A666FC };

void (*sActionFuncs[])(EnHorse* this, GlobalContext* globalCtx) = {
    func_80A5C97C, func_80A5F08C, func_80A5F414, func_80A5F890, func_80A600E8, func_80A5D0A0, func_80A5D2C0,
    func_80A5D468, func_80A5D79C, func_80A5DB58, func_80A5DE38, func_80A5E12C, func_80A5E39C, func_80A5E650,
    func_80A5EB54, func_80A5EE80, func_80A627A4, func_80A610C8, func_80A61778, func_80A61A28,
};

/**
 * TODO
 */
s32 func_80A5B2F0(EnHorse* this, GlobalContext* globalCtx) {
    f32 xMin;
    f32 xMax;
    s32 i;

    if (globalCtx->sceneNum != SCENE_SPOT09) {
        return false;
    }
    if (this->actor.speedXZ < 12.8f) {
        return false;
    }
    if ((gSaveContext.eventChkInf[9] & 0xF) == 0xF) {
        return false;
    }

    for (i = 0; i < 2; i++) {
        xMin = D_80A665DC[i].xMin;
        xMax = (xMin + D_80A665DC[i].xMax) + D_80A665DC[i].xOffset;
        if (xMax < xMin) {
            f32 temp = xMin;
            xMin = xMax;
            xMax = temp;
        }
        if (D_80A665DC[i].zMin < this->actor.world.pos.z && this->actor.world.pos.z < D_80A665DC[i].zMax) {
            if (xMin < this->actor.world.pos.x && this->actor.world.pos.x < xMax) {
                if (D_80A665DC[i].angle - D_80A665DC[i].angleRange < this->actor.world.rot.y &&
                    this->actor.world.rot.y < D_80A665DC[i].angle + D_80A665DC[i].angleRange) {
                    return true;
                }
            }
        }
    }
    return false;
}

void func_80A624AC(EnHorse* this, GlobalContext* globalCtx);

/**
 * TODO
 */
s32 func_80A5B450(EnHorse* this, GlobalContext* globalCtx) {
    f32 min;
    f32 max;
    s32 i;

    if (this->actor.speedXZ < 12.8f) {
        return 0;
    }

    for (i = 0; i != 2; i++) {
        min = D_80A665DC[i].xMin;
        max = D_80A665DC[i].xMax + min;

        if (max < min) {
            f32 temp = min;
            min = max;
            max = temp;
        }

        if (D_80A665DC[i].zMin < this->actor.world.pos.z && this->actor.world.pos.z < D_80A665DC[i].zMax) {
            if (min < this->actor.world.pos.x && this->actor.world.pos.x < max) {
                if (D_80A665DC[i].angle - D_80A665DC[i].angleRange < this->actor.world.rot.y &&
                    this->actor.world.rot.y < D_80A665DC[i].angle + D_80A665DC[i].angleRange) {
                    this->unk_3AC = i;
                    func_80A624AC(this, globalCtx);
                    return 1;
                }
            }
        }
    }

    return 0;
}

/**
 * TODO
 */
void func_80A5B590(struct unk_80A66604* arg0, s32 arg1, Vec3f* vec) {
    vec->x = arg0[arg1].unk_00;
    vec->y = arg0[arg1].unk_02;
    vec->z = arg0[arg1].unk_04;
}

/**
 * TODO
 */
void func_80A5B5E0(EnHorse* this, GlobalContext* globalCtx, Vec3f* endPos, s16 arg3) {
    func_8006DD9C(&this->actor, endPos, arg3);
}

/**
 * TODO
 */
void func_80A5B61C(EnHorse* this, GlobalContext* globalCtx, struct unk_80A66654* arg3) {
    Vec3f sp64;
    Vec3f sp58;
    f32 playerDist;
    f32 sp50;
    s16 sp4E;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    s32 phi_a1;

    func_80A5B590(arg3->unkstruct_04, this->unk_204, &sp64);
    Math3D_RotateXZPlane(&sp64, arg3->unkstruct_04[this->unk_204].unk_08, &sp48, &sp44, &sp40);
    if (((this->actor.world.pos.x * sp48) + (sp44 * this->actor.world.pos.z) + sp40) > 0.0f) {
        this->unk_204++;
        if (this->unk_204 >= arg3->unk_00) {
            this->unk_204 = 0;
        }
    }

    func_80A5B590(arg3->unkstruct_04, this->unk_204, &sp64);

    phi_a1 = this->unk_204 - 1;
    if (phi_a1 < 0) {
        phi_a1 = arg3->unk_00 - 1;
    }
    func_80A5B590(arg3->unkstruct_04, phi_a1, &sp58);
    Math3D_PointDistToLine2D(this->actor.world.pos.x, this->actor.world.pos.z, sp58.x, sp58.z, sp64.x, sp64.z, &sp3C);
    func_80A5B5E0(this, globalCtx, &sp64, 400);

    if (sp3C < 90000.0f) {
        playerDist = this->actor.xzDistToPlayer;
        if ((playerDist < 130.0f) || this->jntSph.elements[0].info.ocElemFlags & 2) {
            if (Math_SinS(this->actor.yawTowardsPlayer - this->actor.world.rot.y) > 0.0f) {
                this->actor.world.rot.y = this->actor.world.rot.y - 280;
            } else {
                this->actor.world.rot.y = this->actor.world.rot.y + 280;
            }
        } else if (playerDist < 300.0f) {
            if (Math_SinS(this->actor.yawTowardsPlayer - this->actor.world.rot.y) > 0.0f) {
                this->actor.world.rot.y = this->actor.world.rot.y + 280;
            } else {
                this->actor.world.rot.y = this->actor.world.rot.y - 280;
            }
        }
        this->actor.shape.rot.y = this->actor.world.rot.y;
    }

    sp50 = Actor_WorldDistXZToActor(&this->actor, PLAYER);
    sp4E = Actor_WorldYawTowardActor(&this->actor, PLAYER) - this->actor.world.rot.y;
    if (sp50 <= 200.0f || (fabsf(Math_SinS(sp4E)) < 0.8f && Math_CosS(sp4E) > 0.0f)) {
        if (this->actor.speedXZ < this->unk_398) {
            this->actor.speedXZ += 0.47f;
        } else {
            this->actor.speedXZ -= 0.47f;
        }
        this->unk_394 |= 1;
        return;
    }

    if (this->actor.speedXZ < arg3->unkstruct_04[this->unk_204].unk_06) {
        this->actor.speedXZ = this->actor.speedXZ + 0.4f;
    } else {
        this->actor.speedXZ = this->actor.speedXZ - 0.4f;
    }
    this->unk_394 = this->unk_394 & 0xFFFE;
}

/**
 * TODO
 */
void func_80A5B9C8(EnHorse* this) {
    if (D_80A6665C[this->unk_218] < this->curFrame) {
        if (this->unk_218 == 0 && (D_80A6665C[1] < this->curFrame)) {
            return;
        }

        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_WALK, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->unk_218++;
        if (this->unk_218 >= 2) {
            this->unk_218 = 0;
        }
    }
}

/**
 * TODO
 */
void func_80A5BA84(EnHorse* this) {
    Audio_PlaySoundGeneral(NA_SE_EV_HORSE_RUN, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

/**
 * TODO
 */
void func_80A5BACC(EnHorse* this) {
    Audio_PlaySoundGeneral(NA_SE_EV_HORSE_RUN, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

/**
 * TODO
 */
f32 func_80A5BB14(EnHorse* this, GlobalContext* globalCtx) {
    f32 sp1C = 1.0f;

    if (Math_CosS(this->actor.shape.rot.x) < 0.939262f && Math_SinS(this->actor.shape.rot.x) < 0.0f) {
        sp1C = 0.7f;
    }
    return sp1C;
}

/**
 * TODO
 */
void func_80A5BB90(GlobalContext* globalCtx, Vec3f* vec, Vec3f* arg2, f32* arg3) {
    SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, vec, arg2, arg3);
}

/**
 * TODO
 */
s32 func_80A5BBBC(GlobalContext* globalCtx, EnHorse* this, Vec3f* vec) {
    Vec3f sp24;
    f32 sp20;
    f32 eyeDist;

    func_80A5BB90(globalCtx, vec, &sp24, &sp20);
    if (fabsf(sp20) < 0.008f) {
        return 0;
    }
    eyeDist = Math3D_Vec3f_DistXYZ(vec, &globalCtx->view.eye);
    return func_800314D4(globalCtx, &this->actor, &sp24, sp20) || eyeDist < 100.0f;
}

/**
 * TODO
 */
void func_80A5BC68(EnHorse* this, GlobalContext* globalCtx) {

    if (this->unk_210 == 0) {
        if ((this->curFrame > 35.0f && this->type == HORSE_EPONA) || (this->curFrame > 28.0f && this->type == HORSE_HNI)) {
            if ((this->flags & 0x1000) == 0) {
                this->flags |= 0x1000;
                Audio_PlaySoundGeneral(NA_SE_EV_HORSE_SANDDUST, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                       &D_801333E8);
                return;
            }
        }
    }
    if (this->unk_210 == 3 && this->curFrame > 25.0f) {
        if (!(this->flags & 0x800)) {
            this->flags |= 0x800;
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_LAND2, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
        }
    }
}

/**
 * TODO
 */
s32 EnHorse_Spawn(EnHorse* this, GlobalContext* globalCtx) {
    f32 minDist = 1e38f;
    s32 spawn = false;
    f32 dist;
    s32 i;
    Player* player;
    Vec3f spawnPos;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_horse.c", 8582);
    gSPSegment(POLY_OPA_DISP++, 0x08, NULL);
    GfxPrint_Init(dprint);
    GfxPrint_Open(dprint, POLY_OPA_DISP);


    for (i = 0; i < 169; i++) {
        if (sHorseSpawns[i].scene == globalCtx->sceneNum) {
            player = PLAYER;
            if (globalCtx->sceneNum != SCENE_SPOT20 ||
                //! Same flag checked twice
                (Flags_GetEventChkInf(0x18) && ((gSaveContext.eventInf[0] & 0xF) != 6 || Flags_GetEventChkInf(0x18))) ||
                // Load two spawns inside the pen thing TODO
                ((sHorseSpawns[i].pos.x ==   856 && sHorseSpawns[i].pos.y == 0 && sHorseSpawns[i].pos.z == -918) ||
                 (sHorseSpawns[i].pos.x == -1003 && sHorseSpawns[i].pos.y == 0 && sHorseSpawns[i].pos.z == -755))) {

                spawnPos.x = sHorseSpawns[i].pos.x;
                spawnPos.y = sHorseSpawns[i].pos.y;
                spawnPos.z = sHorseSpawns[i].pos.z;
                dist = Math3D_Vec3f_DistXYZ(&player->actor.world.pos, &spawnPos);

                if (globalCtx->sceneNum) {}
                if (!(minDist < dist) && !func_80A5BBBC(globalCtx, this, &spawnPos)) {
                    minDist = dist;
                    this->actor.world.pos.x = sHorseSpawns[i].pos.x;
                    this->actor.world.pos.y = sHorseSpawns[i].pos.y;
                    this->actor.world.pos.z = sHorseSpawns[i].pos.z;
                    this->actor.prevPos = this->actor.world.pos;
                    this->actor.world.rot.y = sHorseSpawns[i].angle;
                    this->actor.shape.rot.y = Actor_WorldYawTowardActor(&this->actor, PLAYER);
                    spawn = true;
                    SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &this->actor.world.pos,
                                                 &this->actor.projectedPos, &this->actor.projectedW);
                }
            }
        }
    }

    POLY_OPA_DISP = GfxPrint_Close(dprint);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_horse.c", 8601);
    return spawn;
}

/**
 * TODO
 */
void func_80A5BFD8(EnHorse* this, GlobalContext* globalCtx) {
    this->unk_380 = -1;
    this->unk_384 = 0;
}

/**
 * TODO
 */
void func_80A5BFEC(EnHorse* this, GlobalContext* globalCtx) {
    this->unk_388 = 0;
}

/**
 * TODO
 */
s32 func_80A5BFF8(EnHorse* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if ((player->stateFlags1 & 1) || func_8002DD78(PLAYER) == 1 || (player->stateFlags1 & 0x00100000) ||
        ((this->flags & 0x80000) && this->unk_388 == 0) || this->action == 18 ||
        player->actor.flags & 0x100 || globalCtx->csCtx.state != 0) {
        return 0;
    }
    return 1;
}

/**
 * TODO
 */
void func_80A5C0B4(EnHorse* this, GlobalContext* globalCtx) {
    this->unk_39C = 0;
    this->unk_3A0 = 0;
    this->unk_3A4 = 0;
}

/**
 * TODO
 */
void func_80A5C0C8(u16* arg0) {
    *arg0 = 0;
}

/**
 * TODO
 */
void EnHorse_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnHorse* this = THIS;
    GlobalContext* globalCtx2 = globalCtx;

    AREG(6) = 0;
    Actor_ProcessInitChain(&this->actor, sInitChain);
    func_80A5C0C8(&this->dustSpawn);
    DREG(53) = 0;
    this->unk_258 = this->actor.world.pos;
    this->unk_150 = 0;
    this->unk_154 = 0;
    this->unk_258.y = this->unk_258.y + 70.0f;

    if (DREG(4) == 0) {
        DREG(4) = 70;
    }

    if (this->actor.params & 0x8000) {
        s8 index;
        this->actor.params &= ~0x8000;
        this->type = HORSE_HNI;
        index = Object_GetIndex(&globalCtx2->objectCtx, OBJECT_HNI);
        this->bankIndex = index;
        if (index < 0) {
            Actor_Kill(&this->actor);
            return;
        }

        do {} while (Object_IsLoaded(&globalCtx2->objectCtx, this->bankIndex) == 0);

        this->actor.objBankIndex = this->bankIndex;
        Actor_SetObjectDependency(globalCtx2, &this->actor);
        this->boostSpeed = 12;
    } else {
        this->type = HORSE_EPONA; // Epona
        this->boostSpeed = 14;
    }

    if (this->actor.params == 0x7FFF) {
        this->actor.params = 1;
    }

    if (globalCtx2->sceneNum == SCENE_SOUKO) {
        this->flags = 0x10000;
    } else if (globalCtx2->sceneNum == SCENE_SPOT12 && this->type == HORSE_HNI) {
        this->flags = 0x50000;
    } else {
        if (this->actor.params == 3) {
            this->flags = 0xB0000;
        } else if (this->actor.params == 6) {
            this->flags = 0xA0000;
            if (Flags_GetEventChkInf(0x18) || DREG(1) != 0) {
                this->flags &= ~0x20000;
                this->flags |= 0x4000000;
            } else if (gSaveContext.eventInf[0] & 0x40 && this->type == HORSE_HNI) {
                this->flags |= 0x300000;
            }
        } else if (this->actor.params == 1) {
            this->flags = 0x80;
        } else {
            this->flags = 0;
        }
    }

    if (globalCtx2->sceneNum == SCENE_SPOT20 && (gSaveContext.eventInf[0] & 0xF) == 6 && Flags_GetEventChkInf(0x18) == 0 &&
        DREG(1) == 0) {
        this->flags |= 0x2000000;
    }

    Actor_SetScale(&this->actor, 0.01f);
    this->actor.gravity = -3.5f;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawHorse, 20.0f);
    this->action = 2;
    this->actor.speedXZ = 0.0f;
    Collider_InitCylinder(globalCtx2, &this->cyl1);
    Collider_SetCylinder(globalCtx2, &this->cyl1, &this->actor, &sCylinderInit1);
    Collider_InitCylinder(globalCtx2, &this->cyl2);
    Collider_SetCylinder(globalCtx2, &this->cyl2, &this->actor, &sCylinderInit2);
    Collider_InitJntSph(globalCtx2, &this->jntSph);
    Collider_SetJntSph(globalCtx2, &this->jntSph, &this->actor, &sJntSphInit, &this->jntSphList);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, DamageTable_Get(0xB), &D_80A65F38);
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 70.0f;
    this->unk_20C = 0;

    if ((globalCtx2->sceneNum == SCENE_SPOT20) && (gSaveContext.sceneSetupIndex < 4)) {
        if (this->type == HORSE_HNI) {
            if (this->actor.world.rot.z == 0 || gSaveContext.nightFlag) {
                Actor_Kill(&this->actor);
                return;
            }
            if (Flags_GetEventChkInf(0x18)) {
                Actor_Kill(&this->actor);
                return;
            }
            if (this->actor.world.rot.z != 5) {
                Actor_Kill(&this->actor);
                return;
            }
        } else if (!Flags_GetEventChkInf(0x18) && DREG(1) == 0 && (gSaveContext.nightFlag != 0)) {
            Actor_Kill(&this->actor);
            return;
        }
    } else if (globalCtx2->sceneNum == SCENE_MALON_STABLE) {
        if (gSaveContext.nightFlag == 0 || Flags_GetEventChkInf(0x18) || DREG(1) != 0 || gSaveContext.linkAge != 0) {
            Actor_Kill(&this->actor);
            return;
        }
        this->flags |= 0x10000;
    }

    func_800A663C(globalCtx2, &this->skin, D_80A65E84[this->type], sAnimationHeaders[this->type][0]);
    this->unk_210 = 0;
    Animation_PlayOnce(&this->skin.skelAnime, sAnimationHeaders[this->type][0]);
    this->unk_238 = 6;
    this->unk_37A = this->unk_244 = this->unk_23C = 0;
    func_80A5BFD8(this, globalCtx2);
    func_80A5BFEC(this, globalCtx2);
    func_80A5C0B4(this, globalCtx2);

    if (this->actor.params == 2) {
        func_80A5F044(this);
    } else if (this->actor.params == 3) {
        func_80A5FCAC(this);
        this->rider = Actor_Spawn(&globalCtx2->actorCtx, globalCtx2, 203, this->actor.world.pos.x, this->actor.world.pos.y,
                                  this->actor.world.pos.z, this->actor.shape.rot.x, this->actor.shape.rot.y, 1, 1);
        if (this->rider == NULL) {
            __assert("this->race.rider != NULL", "../z_en_horse.c", 3077);
        }
        if ((gSaveContext.eventInf[0] & 0x40) == 0) {
            this->unk_398 = 12.07f;
        } else {
            this->unk_398 = 12.625f;
        }
    } else if (this->actor.params == 7) {
        func_80A61058(this, globalCtx2);
    } else if (this->actor.params == 8) {
        func_80A6140C(this);
        Interface_InitHorsebackArchery(globalCtx2);
    } else if (globalCtx2->sceneNum == SCENE_SPOT20 && Flags_GetEventChkInf(0x18) == 0 && DREG(1) == 0) {
        func_80A61A04(this);
    } else {
        if (globalCtx2->sceneNum == SCENE_SOUKO) {
            func_80A5F3A8(this);
        } else if (globalCtx2->sceneNum == SCENE_SPOT12 && this->type == HORSE_HNI) {
            func_80A5F3A8(this);
        } else {
            func_80A5F3DC(this);
        }
    }
    this->actor.home.rot.z = this->actor.world.rot.z = this->actor.shape.rot.z = 0;
}

/**
 * TODO
 */
void EnHorse_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnHorse* this = THIS;
    if (this->flags & 0x8000000) {
        func_800F89E8(&this->unk_21C);
    }
    func_800A6888(globalCtx, &this->skin);
    Collider_DestroyCylinder(globalCtx, &this->cyl1);
    Collider_DestroyCylinder(globalCtx, &this->cyl2);
    Collider_DestroyJntSph(globalCtx, &this->jntSph);
}

/**
 * TODO
 */
void func_80A5C888(EnHorse* this, GlobalContext* globalCtx) {
    func_80A5B5E0(this, globalCtx, &PLAYER->actor.world.pos, 400);
    if (this->flags & 0x4000) {
        this->actor.world.rot.y += 800.0f;
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
}

/**
 * TODO
 */
void func_80A5C8FC(EnHorse* this) {
    if (this->action != 17 && this->action != 18) {
        if (D_80A6666C[this->actor.params] != 0 && this->actor.params != 4) {
            this->unk_150 = 0;
            this->unk_154 = 0;
        }
        this->unk_254 = this->action;
        this->action = 0;
        this->cyl1.base.ocFlags1 &= ~OC1_ON;
        this->cyl2.base.ocFlags1 &= ~OC1_ON;
        this->jntSph.base.ocFlags1 &= ~OC1_ON;
        this->unk_210 = 0;
    }
}

void func_80A5F380(EnHorse* this, s32 arg1, f32 arg2);
void func_80A5CF28(EnHorse* this);
void func_80A5CF64(EnHorse* this);
void func_80A5DCB0(EnHorse* this);

/**
 * TODO
 */
void func_80A5C97C(EnHorse* this, GlobalContext* globalCtx) {
    this->actor.speedXZ = 0.0f;
    this->unk_150--;
    if (this->unk_150 < 0) {
        this->cyl1.base.ocFlags1 |= OC1_ON;
        this->cyl2.base.ocFlags1 |= OC1_ON;
        this->jntSph.base.ocFlags1 |= OC1_ON;
        if (this->unk_20C == 1) {
            this->flags &= ~0x80;
            if (this->actor.params == 4) {
                func_80A5CF28(this);
            } else if (this->actor.params == 9) {
                this->actor.params = 5;
                if (globalCtx->csCtx.state != 0) {
                    func_80A5CF64(this);
                } else {
                    this->actor.speedXZ = 8.0f;
                    func_80A5DCB0(this);
                }
            } else if (this->unk_254 == 2) {
                func_80A5CF64(this);
            } else {
                func_80A5CF28(this);
            }
            if (this->actor.params != 0) {
                this->actor.params = 0;
                return;
            }
        } else {
            if (this->unk_254 == 5) {
                func_80A5F380(this, 0, 0);
                return;
            }
            if (this->unk_254 == 6) {
                func_80A5F380(this, 0, 0);
                return;
            }
            func_80A5F380(this, 0, 0);
        }
    }
}

void func_80A63148(Vec2f* vec, f32* arg1, s16* arg2);
f32 func_80A5BB14(EnHorse* this, GlobalContext* globalCtx);

// fake
/**
 * TODO
 */
void func_80A5CAEC(EnHorse* this, GlobalContext* globalCtx, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6,
                   s16 arg7) {
    s16* why_god;
    f32 sp40;
    s16 sp3E;
    f32 temp_f12;
    f32 temp_f14;
    s16 phi_v0;
    if (func_80A5BFF8(this, globalCtx) == 0) {
        if (this->actor.speedXZ > 8) {
            this->actor.speedXZ -= arg5;
        } else if (this->actor.speedXZ < 0) {
            this->actor.speedXZ = 0;
        }

        return;
    }

    why_god = &sp3E;

    arg6 *= func_80A5BB14(this, globalCtx);
    func_80A63148(&this->curStick, &sp40, &sp3E);
    if (Math_CosS(sp3E) <= arg3) {
        this->actor.speedXZ -= arg2;
        this->actor.speedXZ = this->actor.speedXZ < 0.0f ? 0.0f : this->actor.speedXZ;
        return;
    }

    if (sp40 < arg4) {
        this->flags &= ~1;
        this->flags &= ~2;
        this->actor.speedXZ -= arg5;
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ = 0.0f;
            return;
        }

        return;
    }

    if (this->flags & 1) {
        if ((16 - this->unk_240) > 0) {
            this->actor.speedXZ =
                (func_80A5BB14(this, globalCtx) * this->boostSpeed - this->actor.speedXZ) / (0x10 - this->unk_240) + this->actor.speedXZ;
        } else {
            this->actor.speedXZ = func_80A5BB14(this, globalCtx) * this->boostSpeed;
        }

        if ((func_80A5BB14(this, globalCtx) * this->boostSpeed) <= this->actor.speedXZ) {
            this->flags &= ~1;
            this->flags |= 2;
        }

    } else if (this->flags & 2) {
        if (arg6 < this->actor.speedXZ) {
            temp_f12 = this->actor.speedXZ;
            this->actor.speedXZ = temp_f12 - 0.06f;
        } else if (this->actor.speedXZ < arg6) {
            this->actor.speedXZ = arg6;
            this->flags &= ~2;
        }
    } else {
        this->actor.speedXZ += (this->actor.speedXZ <= arg6 * 0.018518519f * sp40 ? 1.0f : -1.0f) * 50.0f * 0.01f;
        if (arg6 < this->actor.speedXZ) {
            this->actor.speedXZ = this->actor.speedXZ - arg5;
            if (this->actor.speedXZ < arg6) {
                this->actor.speedXZ = arg6;
            }
        }
    }

    temp_f12 = *why_god * (1 / 32236.f);
    temp_f14 = 2.2f - (this->actor.speedXZ * (1.0f / this->boostSpeed));
    phi_v0 = *why_god * temp_f12 * temp_f12 * temp_f14;
    phi_v0 = CLAMP(phi_v0, -arg7 * temp_f14, arg7 * temp_f14);
    this->actor.world.rot.y += phi_v0;
    this->actor.shape.rot.y = this->actor.world.rot.y;
}

/**
 * TODO
 */
void func_80A5CF28(EnHorse* this) {
    this->skin.skelAnime.curFrame = 0.0f;
    func_80A5CF64(this);
    this->flags &= ~0x1000;
}

/**
 * TODO
 */
void func_80A5CF64(EnHorse* this) {
    f32 curFrame;

    this->action = 5;
    this->unk_210 = 0;
    if ((this->curFrame > 35.0f && this->type == HORSE_EPONA) || (this->curFrame > 28.0f && this->type == HORSE_HNI)) {
        if ((this->flags & 0x1000) == 0) {
            this->flags |= 0x1000;
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_SANDDUST, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
        }
    }
    curFrame = this->skin.skelAnime.curFrame;
    Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, curFrame,
                     Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, -3.0f);
}

s32 func_80A5BFF8(EnHorse* this, GlobalContext* globalCtx);
void func_80A5E588(EnHorse* this);
void func_80A5D3C0(EnHorse* this);
void func_80A5D628(EnHorse* this);
void func_80A5D1A0(EnHorse* this);
void func_80A5E5AC(EnHorse* this);
void func_80A5D678(EnHorse* this);
void func_80A5D1C4(EnHorse* this);
void func_80A5D69C(EnHorse* this);
void func_80A5BA84(EnHorse* this);

/**
 * TODO
 */
void func_80A5D0A0(EnHorse* this, GlobalContext* globalCtx) {
    f32 sp24;
    s16 yaw = 0;

    this->actor.speedXZ = 0;
    func_80A63148(&this->curStick, &sp24, &yaw);
    if (sp24 > 10.0f && func_80A5BFF8(this, globalCtx) == 1) {
        if (Math_CosS(yaw) <= -0.5f) {
            func_80A5E588(this);
        } else if ((f64)Math_CosS(yaw) <= 0.7071) {
            func_80A5D3C0(this);
        } else {
            func_80A5D628(this);
        }
    }
    if (SkelAnime_Update(&this->skin.skelAnime) != 0) {
        func_80A5D1A0(this);
    }
}

/**
 * TODO
 */
void func_80A5D1A0(EnHorse* this) {
    this->skin.skelAnime.curFrame = 0.0f;
    func_80A5D1C4(this);
}

/**
 * TODO
 */
void func_80A5D1C4(EnHorse* this) {
    f32 curFrame;

    this->action = 6;
    this->unk_210 = 1;
    curFrame = this->skin.skelAnime.curFrame;
    Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, curFrame,
                     Animation_GetLastFrame(sAnimationHeaders[this->type][1]), 2, -3.0f);
    this->unk_21C = this->unk_228;
    if (this->flags & 0x8000000) {
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_GROAN, &this->unk_21C, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

/**
 * TODO
 */
void func_80A5D2C0(EnHorse* this, GlobalContext* globalCtx) {
    f32 sp24;
    s16 yaw = 0;

    this->actor.speedXZ = 0;
    func_80A63148(&this->curStick, &sp24, &yaw);
    if (sp24 > 10.0f && func_80A5BFF8(this, globalCtx) == 1) {
        if (Math_CosS(yaw) <= -0.5f) {
            func_80A5E588(this);
        } else if (Math_CosS(yaw) <= 0.7071) {
            func_80A5D3C0(this);
        } else {
            func_80A5D628(this);
        }
    }
    if (SkelAnime_Update(&this->skin.skelAnime) != 0) {
        func_80A5CF28(this);
    }
}

/**
 * TODO
 */
void func_80A5D3C0(EnHorse* this) {
    this->action = 7;
    this->unk_218 = 0;
    this->unk_210 = 4;
    Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimationHeaders[this->type][4]), 2, -3.0f);
}

/**
 * TODO
 */
void func_80A5D468(EnHorse* this, GlobalContext* globalCtx) {
    f32 sp2C;
    s16 clampedYaw;
    s16 yaw;

    this->actor.speedXZ = 0;
    func_80A5B9C8(this);
    func_80A63148(&this->curStick, &sp2C, &yaw);
    if (sp2C > 10.0f) {
        if (func_80A5BFF8(this, globalCtx) == 0) {
            func_80A5CF28(this);
        } else if (Math_CosS(yaw) <= -0.5f) {
            func_80A5E588(this);
        } else if (Math_CosS(yaw) <= 0.7071) {
            clampedYaw = CLAMP(yaw, -800.0f, 800.0f);
            this->actor.world.rot.y = this->actor.world.rot.y + clampedYaw;
            this->actor.shape.rot.y = this->actor.world.rot.y;
        } else {
            func_80A5D678(this);
        }
    }

    if (SkelAnime_Update(&this->skin.skelAnime) != 0) {
        if (Math_CosS(yaw) <= 0.7071) {
            func_80A5D3C0(this);
        } else {
            func_80A5CF28(this);
        }
    }
}

/**
 * TODO
 */
void func_80A5D628(EnHorse* this) {
    func_80A5D678(this);

    if ((this->flags & 0x100) == 0 && (this->flags & 0x200) == 0) {
        this->flags |= 0x200;
        this->unk_37C = 8;
        return;
    }
    this->unk_37C = 0;
}

/**
 * TODO
 */
void func_80A5D678(EnHorse* this) {
    this->unk_150 = 0;
    this->unk_154 = 0;
    func_80A5D69C(this);
}

/**
 * TODO
 */
void func_80A5D69C(EnHorse* this) {
    this->action = 8;
    this->unk_218 = 0;
    this->unk_210 = 4;
    this->unk_37C = 0;
    Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimationHeaders[this->type][4]), 2, -3.0f);
}

/**
 * TODO
 */
void func_80A5D748(EnHorse* this) {
    this->action = 8;
    this->unk_218 = 0;
    this->unk_210 = 4;
    this->unk_37C = 0;
    Animation_PlayOnce(&this->skin.skelAnime, sAnimationHeaders[this->type][4]);
}

void func_80A5D748(EnHorse* this);
void func_80A5DA68(EnHorse* this);

/**
 * TODO
 */
void func_80A5D79C(EnHorse* this, GlobalContext* globalCtx) {
    f32 sp3C;
    s16 sp3A;

    func_80A5B9C8(this);
    func_80A63148(&this->curStick, &sp3C, &sp3A);
    if (this->unk_154 == 0.0f || (this->unk_150 > 0.0f && this->unk_150 < this->unk_154 - 20.0f)) {
        func_80A5CAEC(this, globalCtx, 0.3f, -0.5f, 10.0f, 0.06f, 3.0f, 0x190);
    } else {
        this->actor.speedXZ = 3.0f;
    }

    if (this->actor.speedXZ == 0.0f) {
        this->flags &= ~0x200;
        func_80A5CF28(this);
        this->unk_150 = 0;
        this->unk_154 = 0;
    } else if (this->actor.speedXZ > 3.0f) {
        this->flags &= ~0x200;
        func_80A5DA68(this);
        this->unk_150 = 0;
        this->unk_154 = 0;
    }

    if (this->unk_150 > 0.0f) {
        this->unk_150--;
        if (this->unk_150 <= 0.0f) {
            this->unk_154 = 0;
        }
    }

    if (this->unk_37C <= 0) {
        this->flags &= ~0x200;
        this->skin.skelAnime.playSpeed = this->actor.speedXZ * 0.75f;
        if ((SkelAnime_Update(&this->skin.skelAnime) != 0) || (this->actor.speedXZ == 0.0f)) {
            if (this->unk_150 <= 0.0f) {
                if ((this->actor.speedXZ > 3.0f)) {
                    func_80A5DA68(this);
                    this->unk_150 = 0;
                    this->unk_154 = 0;
                    return;
                }
                if ((sp3C < 10.0f) || (Math_CosS(sp3A) <= -0.5f)) {
                    func_80A5CF28(this);
                    this->unk_150 = 0;
                    this->unk_154 = 0;

                } else {
                    func_80A5D748(this);
                    return;
                }
            }
        }
    } else {
        this->actor.speedXZ = 0.0f;
        this->unk_37C = this->unk_37C - 1;
    }
}

/**
 * TODO
 */
void func_80A5DA68(EnHorse* this) {
    this->action = 9;
    this->unk_210 = 5;
    Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, -3.0f);
}

/**
 * TODO
 */
void func_80A5DB0C(EnHorse* this) {
    this->action = 9;
    this->unk_210 = 5;
    Animation_PlayOnce(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210]);
}

void func_80A5BA84(EnHorse* this);
void func_80A5DC8C(EnHorse* this);
/**
 * TODO
 */
void func_80A5DB58(EnHorse* this, GlobalContext* globalCtx) {
    f32 sp3C;
    s16 sp3A;

    func_80A5CAEC(this, globalCtx, 0.3f, -0.5f, 10.0f, 0.06f, 6.0f, 0x190);
    func_80A63148(&this->curStick, &sp3C, &sp3A);
    if (this->actor.speedXZ < 3.0f) {
        func_80A5D678(this);
    }

    this->skin.skelAnime.playSpeed = this->actor.speedXZ * 0.375f;
    if (SkelAnime_Update(&this->skin.skelAnime) != 0) {
        func_80A5BA84(this);
        func_800AA000(0.0f, 60, 8, 255);
        if (this->actor.speedXZ >= 6.0f) {
            func_80A5DC8C(this);
            return;
        }
        if (this->actor.speedXZ < 3.0f) {
            func_80A5D678(this);
            return;
        }
        func_80A5DB0C(this);
    }
}

/**
 * TODO
 */
void func_80A5DC8C(EnHorse* this) {
    this->unk_154 = 0;
    this->unk_150 = 0;
    func_80A5DCB0(this);
}

/**
 * TODO
 */
void func_80A5DCB0(EnHorse* this) {
    this->action = 10;
    this->unk_210 = 6;
    this->unk_234 = 0;
    Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimationHeaders[this->type][6]), 2, -3.0f);
}

/**
 * TODO
 */
void func_80A5DD58(EnHorse* this) {
    this->unk_154 = 0;
    this->unk_150 = 0;
    this->action = 10;
    this->unk_210 = 6;
    this->unk_234 = 0;
    Animation_PlayOnce(&this->skin.skelAnime, sAnimationHeaders[this->type][6]);
}

/**
 * TODO
 */
void func_80A5DDB0(EnHorse* this, GlobalContext* globalCtx) {
    Vec3s* jointTable;
    float y;

    this->action = 10;
    this->unk_210 = 6;
    Animation_PlayOnce(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210]);
    jointTable = this->skin.skelAnime.jointTable;
    y = jointTable->y;
    this->unk_258.y += (y * 0.01f);
    this->unk_244 = NULL;
}

void func_80A5DD58(EnHorse* this);
void func_80A5DD58(EnHorse* this);
/**
 * TODO
 */
void func_80A5DE38(EnHorse* this, GlobalContext* globalCtx) {
    f32 sp3C;
    s16 sp3A;

    func_80A63148(&this->curStick, &sp3C, &sp3A);

    if (this->unk_150 <= 0.0f) {
        func_80A5CAEC(this, globalCtx, 0.3f, -0.5f, 10.0f, 0.06f, 8.0f, 0x190);
    } else if (this->unk_150 > 0.0f) {
        this->unk_150 -= 1;
        this->actor.speedXZ = 8.0f;
    }
    if (this->actor.speedXZ < 6.0f) {
        func_80A5DA68(this);
    }

    this->skin.skelAnime.playSpeed = this->actor.speedXZ * 0.3f;
    if (SkelAnime_Update(&this->skin.skelAnime)) {
        func_80A5BACC(this);
        func_800AA000(0, 120, 8, 255);
        if (func_80A5BFF8(this, globalCtx) == 1) {
            if (sp3C >= 10.0f && Math_CosS(sp3A) <= -0.5f) {
                func_80A5E2A8(this, globalCtx);
            } else if (this->actor.speedXZ < 6.0f) {
                func_80A5DA68(this);
            } else {
                func_80A5DD58(this);
            }
            return;
        }
        func_80A5DD58(this);
    }
}

/**
 * TODO
 */
void func_80A5E00C(EnHorse* this) {
    this->action = 11;
    this->unk_210 = 3;
    this->flags &= ~0x800;
    this->unk_21C = this->unk_228;
    if (this->flags & 0x8000000) {
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->unk_21C, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
    func_800AA000(0.0f, 180, 20, 100);
    Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, -3.0f);
}

/**
 * TODO
 */
void func_80A5E12C(EnHorse* this, GlobalContext* globalCtx) {
    f32 dist;
    s16 yaw;

    this->actor.speedXZ = 0;
    if (this->curFrame > 25.0f) {
        if (!(this->flags & 0x800)) {
            this->flags |= 0x800;
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_LAND2, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
            func_800AA000(0, 180, 20, 100);
        }
    }
    func_80A63148(&this->curStick, &dist, &yaw);
    if (SkelAnime_Update(&this->skin.skelAnime) != 0) {
        if (func_80A5BFF8(this, globalCtx) == 1) {
            if (this->flags & 0x10) {
                this->unk_150 = 100;
                this->unk_154 = 100;
                this->flags &= ~0x10;
                func_80A5E5AC(this);
            } else if (this->flags & 0x20) {
                this->unk_150 = 100;
                this->unk_154 = 100;
                this->flags &= ~0x20;
                func_80A5D69C(this);
            } else if ((Math_CosS(yaw) <= -0.5f)) {
                func_80A5E588(this);
            } else {
                func_80A5CF28(this);
            }
            return;
        }
        func_80A5CF28(this);
    }
}

/**
 * TODO
 */
void func_80A5E2A8(EnHorse* this, GlobalContext* globalCtx) {
    this->action = 12;
    this->unk_210 = 2;

    Audio_PlaySoundGeneral(NA_SE_EV_HORSE_SLIP, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.5f, 0.0f,
                     Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, -3.0f);

    this->flags |= 0x400;
    this->flags &= ~1;
}

/**
 * TODO
 */
void func_80A5E39C(EnHorse* this, GlobalContext* globalCtx) {
    if (this->actor.speedXZ > 0.0f) {
        this->actor.speedXZ = this->actor.speedXZ - 0.6f;
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ = 0.0f;
        }
    }

    if (this->flags & 0x400 && this->skin.skelAnime.curFrame > 29.0f) {
        this->actor.speedXZ = 0.0f;
        if (Rand_ZeroOne() > 0.5) {
            this->unk_21C = this->unk_228;
            if (this->flags & 0x8000000) {
                Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->unk_21C, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
            func_800AA000(0.0f, 180, 20, 100);
            this->flags &= ~0x400;
        } else {
            func_80A5CF28(this);
        }
    }

    if (this->skin.skelAnime.curFrame > 29.0f) {
        this->actor.speedXZ = 0.0f;
    } else if (this->actor.speedXZ > 3.0f && this->flags & 0x10) {
        this->actor.speedXZ = 3.0f;
    }

    if (SkelAnime_Update(&this->skin.skelAnime)) {
        if (this->flags & 0x10) {
            this->unk_150 = 100;
            this->unk_154 = 100;
            func_80A5E5AC(this);
            this->flags &= ~0x10;
            return;
        }
        func_80A5CF28(this);
    }
}

/**
 * TODO
 */
void func_80A5E588(EnHorse* this) {
    this->unk_154 = 0;
    this->unk_150 = 0;
    func_80A5E5AC(this);
}

/**
 * TODO
 */
void func_80A5E5AC(EnHorse* this) {
    this->action = 13;
    this->unk_210 = 4;
    this->unk_218 = 0;
    Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimationHeaders[this->type][4]), 0, -3.0f);
}

/**
 * TODO
 */
void func_80A5E650(EnHorse* this, GlobalContext* globalCtx) {
    f32 sp34;
    s16 sp32;
    s16 angle;
    Player* player = PLAYER;

    func_80A5B9C8(this);
    func_80A63148(&this->curStick, &sp34, &sp32);
    if (func_80A5BFF8(this, globalCtx) == 1) {
        if (this->unk_154 == 0.0f || (this->unk_150 > 0.0f && this->unk_150 < this->unk_154 - 20.0f)) {
            if (sp34 < 10.0f && this->unk_150 <= 0.0f) {
                func_80A5CF28(this);
                this->actor.speedXZ = 0.0f;
                return;
            }
            if (sp34 < 10.0f) {
                sp32 = -0x7FFF;
            } else if (Math_CosS(sp32) > -0.5f) {
                this->unk_154 = 0;
                func_80A5CF28(this);
                this->actor.speedXZ = 0.0f;
                return;
            }
        } else if (sp34 < 10.0f) {
            sp32 = -0x7FFF;
        }
    } else if (player->actor.flags & 0x100) {
        func_80A5CF28(this);
        this->actor.speedXZ = 0.0f;
        return;
    } else {
        sp32 = -0x7FFF;
    }

    this->actor.speedXZ = -2.0f;
    angle = 0x7FFF - sp32;
    angle = CLAMP(angle, -1200.0f, 1200.0f);
    this->actor.world.rot.y += angle;
    this->actor.shape.rot.y = this->actor.world.rot.y;

    if (0.0f < this->unk_150) {
        this->unk_150--;
        if (this->unk_150 <= 0.0f) {
            this->unk_154 = 0;
        }
    }
    this->skin.skelAnime.playSpeed = this->actor.speedXZ * 0.5f * 1.5f;
    if (SkelAnime_Update(&this->skin.skelAnime) != 0 && (f32)this->unk_150 <= 0.0f &&
        func_80A5BFF8(this, globalCtx) == 1) {
        if (sp34 > 10.0f && Math_CosS(sp32) <= -0.5f) {
            this->unk_154 = 0;
            func_80A5E588(this);
            return;
        }
        if (sp34 < 10.0f) {
            this->unk_154 = 0;
            func_80A5CF28(this);
            return;
        }
        func_80A5E5AC(this);
    }
}

void func_80A5EA1C(EnHorse* this, GlobalContext* globalCtx);
/**
 * TODO
 */
void func_80A5E9F8(EnHorse* this, GlobalContext* globalCtx) {
    this->skin.skelAnime.curFrame = 0.0f;
    func_80A5EA1C(this, globalCtx);
}

/**
 * TODO
 */
void func_80A5EA1C(EnHorse* this, GlobalContext* globalCtx) {
    f32 sp34;
    Vec3s* jointTable;
    f32 y;

    this->action = 14;
    this->unk_210 = 7;
    sp34 = this->skin.skelAnime.curFrame;
    Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.5f, sp34,
                     Animation_GetLastFrame(sAnimationHeaders[this->type][7]), 2, -3.0f);

    this->unk_244 = NULL;
    this->unk_274 = this->actor.world.pos.y;

    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0;

    jointTable = this->skin.skelAnime.jointTable;
    y = jointTable->y;
    this->unk_258.y -= (y * 0.01f);

    Audio_PlaySoundGeneral(NA_SE_EV_HORSE_JUMP, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    func_800AA000(0.0f, 170, 10, 10);
}

void func_80A5EB4C(EnHorse* this) {
}

// Normal jump
/**
 * TODO
 */
void func_80A5EB54(EnHorse* this, GlobalContext* globalCtx) {
    Vec3f pad;
    Vec3s* jointTable;
    f32 curFrame;
    f32 y;

    curFrame = this->skin.skelAnime.curFrame;
    this->flags |= 4;
    this->actor.speedXZ = 12.0f;
    if (curFrame > 17.0f) {
        this->actor.gravity = -3.5f;
        if (this->actor.velocity.y == 0) {
            this->actor.velocity.y = -6.0f;
        }
        if (this->actor.world.pos.y < this->actor.floorHeight + 90.0f) {
            this->skin.skelAnime.playSpeed = 1.5f;
        } else {
            this->skin.skelAnime.playSpeed = 0;
        }
    } else {
        jointTable = this->skin.skelAnime.jointTable;
        y = jointTable->y;
        this->actor.world.pos.y = this->unk_274 + y * 0.01f;
    }

    if (SkelAnime_Update(&this->skin.skelAnime) ||
        (curFrame > 17.0f && this->actor.world.pos.y < this->actor.floorHeight - this->actor.velocity.y + 80.0f)) {
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_LAND, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800AA000(0.0f, 255, 10, 80);
        this->flags &= ~4;
        this->actor.gravity = -3.5f;
        this->actor.world.pos.y = this->actor.floorHeight;
        func_80028A54(globalCtx, 25.0f, &this->actor.world.pos);
        func_80A5DDB0(this, globalCtx);
    }
}

void func_80A5ED3C(EnHorse* this, GlobalContext* globalCtx);
/**
 * TODO
 */
void func_80A5ED18(EnHorse* this, GlobalContext* globalCtx) {
    this->skin.skelAnime.curFrame = 0.0f;
    func_80A5ED3C(this, globalCtx);
}

/**
 * TODO
 */
void func_80A5ED3C(EnHorse* this, GlobalContext* globalCtx) {
    f32 sp34;
    Vec3s* jointTable;
    f32 y;

    this->action = 15;
    this->unk_210 = 8;
    sp34 = this->skin.skelAnime.curFrame;
    Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.5f, sp34,
                     Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, -3.0f);

    this->unk_274 = this->actor.world.pos.y;
    this->unk_244 = NULL;

    this->actor.gravity = 0;
    this->actor.velocity.y = 0.0f;

    jointTable = this->skin.skelAnime.jointTable;
    y = jointTable->y;
    this->unk_258.y -= y * 0.01f;

    this->flags |= 8;
    Audio_PlaySoundGeneral(NA_SE_EV_HORSE_JUMP, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    func_800AA000(0.0f, 170, 10, 10);
}

void func_80A5EE78(EnHorse* this) {
}

// High jump
/**
 * TODO
 */
void func_80A5EE80(EnHorse* this, GlobalContext* globalCtx) {
    Vec3f pad;
    Vec3s* jointTable;
    f32 curFrame;
    f32 y;

    curFrame = this->skin.skelAnime.curFrame;
    this->flags |= 4;
    this->actor.speedXZ = 13.0f;
    if (curFrame > 23.0f) {
        this->actor.gravity = -3.5f;
        if (this->actor.velocity.y == 0) {
            this->actor.velocity.y = -10.5f;
        }

        if (this->actor.world.pos.y < this->actor.floorHeight + 90.0f) {
            this->skin.skelAnime.playSpeed = 1.5f;
        } else {
            this->skin.skelAnime.playSpeed = 0;
        }
    } else {
        jointTable = this->skin.skelAnime.jointTable;
        y = jointTable->y;
        if (CHECK_BTN_ALL(globalCtx->state.input[0].cur.button, BTN_DUP)) {
            this->actor.world.pos.y = this->unk_274 + y * 0.11f;
        } else {
            this->actor.world.pos.y = this->unk_274 + y * 0.01f;
        }
    }

    if (SkelAnime_Update(&this->skin.skelAnime) ||
        (curFrame > 23.0f && this->actor.world.pos.y < this->actor.floorHeight - this->actor.velocity.y + 80.0f)) {
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_LAND, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800AA000(0.0f, 255, 10, 80);
        this->flags &= ~4;
        this->actor.gravity = -3.5f;
        this->actor.world.pos.y = this->actor.floorHeight;
        func_80028A54(globalCtx, 25.0f, &this->actor.world.pos);
        func_80A5DDB0(this, globalCtx);
    }
}

/**
 * TODO
 */
void func_80A5F044(EnHorse* this) {
    this->cyl1.base.ocFlags1 &= ~OC1_ON;
    this->cyl2.base.ocFlags1 &= ~OC1_ON;
    this->jntSph.base.ocFlags1 &= ~OC1_ON;
    this->action = 1;
    this->unk_210 = 4;
    this->flags |= 0x2000;
    this->unk_250 = 0;
}

s32 EnHorse_Spawn(EnHorse* this, GlobalContext* globalCtx);
void func_80A5F760(EnHorse* this, GlobalContext* globalCtx);

// 1 - ???
/**
 * TODO
 */
void func_80A5F08C(EnHorse* this, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    if (DREG(53) != 0 && this->type == HORSE_EPONA) {
        DREG(53) = 0;
        if (EnHorse_Spawn(this, globalCtx2) != 0) {
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
            this->flags &= ~0x2000;
            gSaveContext.horseData.scene = globalCtx2->sceneNum;

            // Focus the camera on Epona
            Camera_SetParam(globalCtx2->cameraPtrs[0], 8, this);
            Camera_ChangeSetting(globalCtx2->cameraPtrs[0], 0x38);
            Camera_SetCameraData(globalCtx2->cameraPtrs[0], 4, NULL, NULL, 0x51, 0, 0);
        }
    }
    if ((this->flags & 0x2000) == 0) {
        this->unk_250 = 0;
        func_80A5F760(this, globalCtx2);
        this->actor.params = 0;
        this->cyl1.base.ocFlags1 |= OC1_ON;
        this->cyl2.base.ocFlags1 |= OC1_ON;
        this->jntSph.base.ocFlags1 |= OC1_ON;
    }
}

/**
 * TODO
 */
void func_80A5F1B0(EnHorse* this, s32 arg1, f32 arg2, f32 arg3) {
    this->action = 2;
    this->actor.speedXZ = 0.0f;
    if (arg1 != 0 && arg1 != 1 && arg1 != 3) {
        arg1 = 0;
    }
    if (arg1 != this->unk_210) {
        this->unk_210 = arg1;
        if (arg1 == 0) {
            this->flags &= ~0x1000;
        } else if (this->unk_210 == 1) {
            this->unk_21C = this->unk_228;
            if (this->flags & 0x8000000) {
                Audio_PlaySoundGeneral(NA_SE_EV_HORSE_GROAN, &this->unk_21C, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
        } else if (this->unk_210 == 3) {
            this->unk_21C = this->unk_228;
            if (this->flags & 0x8000000) {
                Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->unk_21C, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
            this->flags &= ~0x800;
        }

        Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, arg3,
                         Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, arg2);
    }
}

/**
 * TODO
 */
void func_80A5F380(EnHorse* this, s32 arg1, f32 arg2) {
    func_80A5F1B0(this, arg1, arg2, this->curFrame);
}

/**
 * TODO
 */
void func_80A5F3A8(EnHorse* this) {
    this->unk_210 = 4;
    func_80A5F1B0(this, 4, 0, 0);
}

/**
 * TODO
 */
void func_80A5F3DC(EnHorse* this) {
    func_80A5F3A8(this);
    this->flags &= 0xFFFEFFFF;
}

void func_80A5F5F8(EnHorse* this, s32 arg1, f32 arg2, f32 arg3);

/**
 * TODO
 */
void func_80A5F414(EnHorse* this, GlobalContext* globalCtx) {
    this->actor.speedXZ = 0.0f;
    func_80A5BC68(this, globalCtx);

    if (DREG(53) && this->type == HORSE_EPONA) {
        DREG(53) = 0;
        if (!func_80A5BBBC(globalCtx, this, &this->actor.world.pos)) {
            if (EnHorse_Spawn(this, globalCtx)) {
                Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                       &D_801333E8);
                this->unk_250 = 0;
                func_80A5F760(this, globalCtx);
                Camera_SetParam(globalCtx->cameraPtrs[0], 8, this);
                Camera_ChangeSetting(globalCtx->cameraPtrs[0], 0x38);
                Camera_SetCameraData(globalCtx->cameraPtrs[0], 4, NULL, NULL, 0x51, 0, 0);
            }
        } else {
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
            this->unk_250 = 0;
            func_80A5F5F8(this, 6, -3.0f, 0.0f);
        }
    }

    if (SkelAnime_Update(&this->skin.skelAnime) != 0) {
        s32 phi_v1 = 0;

        if (this->unk_210 != 0) {
            if (this->unk_210 == 1) {
                phi_v1 = 1;
            } else if (this->unk_210 == 3) {
                phi_v1 = 2;
            }
        }
        func_80A5F1B0(this, D_80A66678[(Rand_ZeroOne() > 0.5f ? 0 : 1) + phi_v1 * 2], 0.0f, 0.0f);
    }
}

/**
 * TODO
 */
void func_80A5F5F8(EnHorse* this, s32 arg1, f32 arg2, f32 arg3) {
    this->action = 3;
    this->flags &= ~0x8000;
    if (arg1 != 5 && arg1 != 6 && arg1 != 4) {
        arg1 = 4;
    }
    if (this->unk_210 != arg1) {
        this->unk_210 = arg1;
        Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, arg3,
                         Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, arg2);
    } else {
        Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, arg3,
                         Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, 0.0f);
    }
}

/**
 * TODO
 */
void func_80A5F760(EnHorse* this, GlobalContext* globalCtx) {
    s32 phi_s0 = 4;
    f32 ret;

    ret = Actor_WorldDistXZToActor(&this->actor, PLAYER);
    if (ret > 400.0f) {
        phi_s0 = 6;
    } else if (!(ret <= 300.0f)) {
        if (ret <= 400.0f) {
            phi_s0 = 5;
        }
    }

    if (this->unk_210 == 6) {
        if (ret > 400.0f) {
            phi_s0 = 6;
        } else {
            phi_s0 = 5;
        }
    } else if (this->unk_210 == 5) {
        if (ret > 400.0f) {
            phi_s0 = 6;
        } else if (ret < 300.0f) {
            phi_s0 = 4;
        } else {
            phi_s0 = 5;
        }
    } else if (this->unk_210 == 4) {
        if (300.0f < ret) {
            phi_s0 = 5;
        } else {
            phi_s0 = 4;
        }
    }
    func_80A5F5F8(this, phi_s0, -3.0f, 0.0f);
}

/**
 * TODO
 */
void func_80A5F890(EnHorse* this, GlobalContext* globalCtx) {
    f32 sp3C;
    f32 sp38;

    DREG(53) = 0;
    sp3C = Actor_WorldDistXZToActor(this, PLAYER);
    if ((this->playerDir == PLAYER_DIR_BACK_R || this->playerDir == PLAYER_DIR_BACK_L) && (sp3C > 300.0f && !(this->flags & 0x8000))) {
        this->unk_210 = 3;
        this->flags |= 0x8000;
        this->unk_376 = Actor_WorldYawTowardActor(&this->actor, PLAYER);
        sp38 = (f32)this->unk_376 - (f32)this->actor.world.rot.y;
        if (sp38 > 32767.f) {
            sp38 -= 32767.0f;
        } else if (sp38 < -32767) {
            sp38 += 32767;
        }

        this->unk_378 = sp38 / Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]);
        Animation_PlayOnce(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210]);
        this->skin.skelAnime.playSpeed = 1.0f;
        this->flags &= ~0x800;
        this->unk_21C = this->unk_228;
    } else if (this->flags & 0x8000) {
        this->actor.world.rot.y = this->actor.world.rot.y + this->unk_378;
        this->actor.shape.rot.y = this->actor.world.rot.y;
        if (this->curFrame > 25.0f) {
            if (!(this->flags & 0x800)) {
                this->flags |= 0x800;
                Audio_PlaySoundGeneral(NA_SE_EV_HORSE_LAND2, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                       &D_801333E8);
            }
        }
    } else {
        func_80A5C888(this, globalCtx);
    }

    if (this->unk_210 == 6) {
        this->actor.speedXZ = 8;
        this->skin.skelAnime.playSpeed = this->actor.speedXZ * 0.3f;
    } else if (this->unk_210 == 5) {
        this->actor.speedXZ = 6;
        this->skin.skelAnime.playSpeed = this->actor.speedXZ * 0.375f;
    } else if (this->unk_210 == 4) {
        this->actor.speedXZ = 3;
        func_80A5B9C8(this);
        this->skin.skelAnime.playSpeed = this->actor.speedXZ * 0.75f;
    } else {
        this->actor.speedXZ = 0;
        this->skin.skelAnime.playSpeed = 1.0f;
    }

    if ((this->flags & 0x8000) == 0 && ++this->unk_250 >= 301) {
        func_80A5F3DC(this);
        this->unk_21C = this->unk_228;

        if (this->flags & 0x8000000) {
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->unk_21C, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }

    if (SkelAnime_Update(&this->skin.skelAnime)) {
        if (this->unk_210 == 6) {
            func_80A5BACC(this);
        } else if (this->unk_210 == 5) {
            func_80A5BA84(this);
        }
        this->flags &= ~0x8000;
        if (sp3C < 100.0f) {
            func_80A5F3DC(this);
        } else {
            func_80A5F760(this, globalCtx);
        }
    }
}

void func_80A5FDD4(EnHorse* this);
/**
 * TODO
 */
void func_80A5FCAC(EnHorse* this) {
    this->unk_204 = 0;
    this->unk_218 = 0;
    this->actor.speedXZ = 0.0f;
    func_80A5FDD4(this);
    this->unk_21C = this->unk_228;
    if (this->flags & 0x8000000) {
        Audio_PlaySoundGeneral(NA_SE_IT_INGO_HORSE_NEIGH, &this->unk_21C, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

/**
 * TODO
 */
void func_80A5FD30(s32 idx, f32 curFrame, s32 arg2, s16* arg3, f32* arg4) {

    *arg3 = sIngoRiderTable[idx];
    *arg4 = curFrame;
    if (idx == 3 || idx == 7 || idx == 8 || idx == 4) {
        *arg4 = 0.0f;
    }
    if (arg2 == 1) {
        if (idx == 5) {
            *arg3 = 4;
            *arg4 = curFrame;
        } else if (idx == 6) {
            *arg3 = 3;
            *arg4 = curFrame;
        }
    }
}

/**
 * TODO
 */
void func_80A5FDD4(EnHorse* this) {
    s32 phi_v1 = 0;
    f32 sp30;

    this->action = 4;
    this->flags &= ~0x1000;
    if (this->actor.speedXZ == 0.0f) {
        if (this->unk_210 != 0) {
            phi_v1 = 1;
        }
        this->unk_210 = 0;
    } else if (this->actor.speedXZ <= 3.0f) {
        if (this->unk_210 != 4) {
            phi_v1 = 1;
        }
        this->unk_210 = 4;
    } else if (this->actor.speedXZ <= 6.0f) {
        if (this->unk_210 != 5) {
            phi_v1 = 1;
        }
        this->unk_210 = 5;
    } else {
        if (this->unk_210 != 6) {
            phi_v1 = 1;
        }
        this->unk_210 = 6;
    }

    if (this->unk_210 == 4) {
        sp30 = this->actor.speedXZ * 0.5f;
    } else if (5 == this->unk_210) {
        sp30 = this->actor.speedXZ * 0.25f;
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_RUN, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    } else if (6 == this->unk_210) {
        sp30 = this->actor.speedXZ * 0.2f;
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_RUN, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    } else {
        sp30 = 1.0f;
    }

    if (phi_v1 == 1) {
        Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210],
                         sPlaybackSpeeds[this->unk_210] * sp30 * 1.5f, 0,
                         Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, -3);
    } else {
        Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210],
                         sPlaybackSpeeds[this->unk_210] * sp30 * 1.5f, 0,
                         Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, 0);
    }
}

/**
 * TODO
 */
void func_80A600E8(EnHorse* this, GlobalContext* globalCtx) {
    f32 newSpeed;

    if ((this->unk_210 == 0) || (this->unk_210 == 1)) {
        func_80A5BC68(this, globalCtx);
    } else if (this->unk_210 == 4) {
        func_80A5B9C8(this);
    }
    func_80A5B61C(this, globalCtx, &D_80A66654);
    if (this->unk_388 == 0) {
        this->actor.speedXZ = 0.0f;
        this->rider->speedXZ = 0.0f;
        if (this->unk_210 != 0) {
            func_80A5FDD4(this);
        }
    }

    if (this->unk_210 == 4) {
        newSpeed = this->actor.speedXZ * 0.5f;
    } else if (this->unk_210 == 5) {
        newSpeed = this->actor.speedXZ * 0.25f;
    } else if (this->unk_210 == 6) {
        newSpeed = this->actor.speedXZ * 0.2f;
    } else {
        newSpeed = 1.0f;
    }
    this->skin.skelAnime.playSpeed = newSpeed;
    if (SkelAnime_Update(&this->skin.skelAnime) || (this->unk_210 == 0 && this->actor.speedXZ != 0.0f)) {
        func_80A5FDD4(this);
    }

    if (this->flags & 0x00800000) {
        ((EnIn*)this->rider)->unk_1E6 = 7;
        ((EnIn*)this->rider)->unk_1E0 = 0;
        return;
    }

    func_80A5FD30(this->unk_210, this->skin.skelAnime.curFrame, this->unk_394 & 1, &((EnIn*)this->rider)->unk_1E6,
                  &((EnIn*)this->rider)->unk_1E0);
}

/**
 * TODO
 */
void func_80A60294(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action) {
    this->unk_210 = 6;
    this->unk_380 = 1;
    Animation_PlayOnceSetSpeed(&this->skin.skelAnime, sAnimationHeaders[this->type][6],
                               this->actor.speedXZ * 0.3f);
}

void func_80A6044C(EnHorse* this, GlobalContext* globalCtx);
void func_80A60470(EnHorse* this, GlobalContext* globalCtx);
void func_80A5BACC(EnHorse* this);

/**
 * TODO
 */
void func_80A60300(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action) {
    Vec3f endPos;
    f32 speed = 8.0f;

    endPos.x = action->endPos.x;
    endPos.y = action->endPos.y;
    endPos.z = action->endPos.z;
    if (Math3D_Vec3f_DistXYZ(&endPos, &this->actor.world.pos) > speed) {
        func_80A5B5E0(this, globalCtx, &endPos, 0x190);
        this->actor.speedXZ = speed;
        this->skin.skelAnime.playSpeed = speed * 0.3f;
    } else {
        this->actor.world.pos = endPos;
        this->actor.speedXZ = 0.0f;
    }
    if (SkelAnime_Update(&this->skin.skelAnime) != 0) {
        func_80A5BACC(this);
        func_800AA000(0.0f, 120, 8, 255);
        Animation_PlayOnceSetSpeed(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210],
                                   this->actor.speedXZ * 0.3f);
    }
}

/**
 * TODO
 */
void func_80A6044C(EnHorse* this, GlobalContext* globalCtx) {
    this->skin.skelAnime.curFrame = 0.0f;
    func_80A60470(this, globalCtx);
}

/**
 * TODO
 */
void func_80A60470(EnHorse* this, GlobalContext* globalCtx) {
    f32 curFrame;
    f32 y;
    Vec3s* jointTable;

    this->unk_210 = 8;
    curFrame = this->skin.skelAnime.curFrame;
    Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.5f, curFrame,
                     Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, -3.0f);
    this->unk_244 = NULL;
    this->unk_274 = this->actor.world.pos.y;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0;

    jointTable = this->skin.skelAnime.jointTable;
    y = jointTable->y;
    this->unk_258.y -= (y * 0.01f);

    this->flags |= 8;
    Audio_PlaySoundGeneral(NA_SE_EV_HORSE_JUMP, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    func_800AA000(0.0f, 170, 10, 10);
}

/**
 * TODO
 */
void func_80A605A4(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action) {
    func_80A6044C(this, globalCtx);
    this->unk_380 = 2;
    this->unk_384 &= 0xFFFE;
}

/**
 * TODO
 */
void func_80A605E0(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action) {
    f32 temp_f2;

    if (this->unk_384 & 1) {
        func_80A60300(this, globalCtx, action);
        return;
    }
    temp_f2 = this->skin.skelAnime.curFrame;
    this->flags |= 4;
    this->actor.speedXZ = 13.0f;
    if (temp_f2 > 19.0f) {
        this->actor.gravity = -3.5f;
        if (this->actor.velocity.y == 0.0f) {
            this->actor.velocity.y = -10.5f;
        }
        if (this->actor.world.pos.y < (this->actor.floorHeight + 90.0f)) {
            this->skin.skelAnime.playSpeed = 1.5f;
        } else {
            this->skin.skelAnime.playSpeed = 0.0f;
        }
    } else {
        Vec3s* jointTable;
        float y;

        jointTable = this->skin.skelAnime.jointTable;
        y = jointTable->y;
        this->actor.world.pos.y = this->unk_274 + y * 0.01f;
    }
    if (SkelAnime_Update(&this->skin.skelAnime) ||
        (temp_f2 > 19.0f && this->actor.world.pos.y < (this->actor.floorHeight - this->actor.velocity.y) + 80.0f)) {
        Vec3s* jointTable;
        float y;

        this->unk_384 |= 1;
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_LAND, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800AA000(0.0f, 255, 10, 80);
        this->flags &= ~4;
        this->actor.gravity = -3.5f;
        this->actor.velocity.y = 0;
        this->actor.world.pos.y = this->actor.floorHeight;
        func_80028A54(globalCtx, 25.0f, &this->actor.world.pos);
        this->unk_210 = 6;
        Animation_PlayOnceSetSpeed(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210],
                                   sPlaybackSpeeds[6]);
        jointTable = this->skin.skelAnime.jointTable;
        y = jointTable->y;
        this->unk_258.y += y * 0.01f;
        this->unk_244 = NULL;
    }
}

/**
 * TODO
 */
void func_80A60838(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action) {
    this->unk_210 = 3;
    this->unk_380 = 3;
    this->unk_384 &= 0xFFFB;
    this->flags &= ~0x800;
    this->unk_21C = this->unk_228;
    if (this->flags & 0x8000000) {
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->unk_21C, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
    Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, -3.0f);
}

/**
 * TODO
 */
void func_80A60954(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action) {

    this->actor.speedXZ = 0.0f;
    if (this->curFrame > 25.0f) {
        if (!(this->flags & 0x800)) {
            this->flags |= 0x800;
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_LAND2, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
        }
    }
    if (SkelAnime_Update(&this->skin.skelAnime) != 0) {
        this->unk_210 = 0;
        if ((this->unk_384 & 4) == 0) {
            this->unk_384 |= 4;
            Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, 0.0f,
                             Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, -3.0f);
            return;
        }
        Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, 0.0f,
                         Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 0, 0.0f);
    }
}

/**
 * TODO
 */
void func_80A60AFC(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action) {
    this->actor.world.pos.x = action->startPos.x;
    this->actor.world.pos.y = action->startPos.y;
    this->actor.world.pos.z = action->startPos.z;
    this->actor.prevPos = this->actor.world.pos;
    this->actor.world.rot.y = action->urot.y;
    this->actor.shape.rot = this->actor.world.rot;
    this->unk_210 = 6;
    this->unk_380 = 4;
    Animation_PlayOnceSetSpeed(&this->skin.skelAnime, sAnimationHeaders[this->type][6],
                               this->actor.speedXZ * 0.3f);
}

/**
 * TODO
 */
void func_80A60BDC(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action) {
    Vec3f vec;
    f32 speed = 8.0f;

    vec.x = action->endPos.x;
    vec.y = action->endPos.y;
    vec.z = action->endPos.z;
    if (Math3D_Vec3f_DistXYZ(&vec, &this->actor.world.pos) > speed) {
        func_80A5B5E0(this, globalCtx, &vec, 0x190);
        this->actor.speedXZ = speed;
        this->skin.skelAnime.playSpeed = speed * 0.3f;
    } else {
        this->actor.world.pos = vec;
        this->actor.speedXZ = 0.0f;
    }

    if (SkelAnime_Update(&this->skin.skelAnime) != 0) {
        func_80A5BACC(this);
        func_800AA000(0.0f, 120, 8, 255);
        Animation_PlayOnceSetSpeed(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210],
                                   this->actor.speedXZ * 0.3f);
    }
}

/**
 * TODO
 */
void func_80A60D28(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action) {
    this->actor.world.pos.x = action->startPos.x;
    this->actor.world.pos.y = action->startPos.y;
    this->actor.world.pos.z = action->startPos.z;
    this->actor.prevPos = this->actor.world.pos;
    this->actor.world.rot.y = action->urot.y;
    this->actor.shape.rot = this->actor.world.rot;
    this->unk_210 = 3;
    this->unk_380 = 5;
    this->unk_384 &= 0xFFFB;
    this->flags &= ~0x800;
    this->unk_21C = this->unk_228;
    if (this->flags & 0x8000000) {
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->unk_21C, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
    Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, -3.0f);
}

/**
 * TODO
 */
void func_80A60EB0(EnHorse* this, GlobalContext* globalCtx, CsCmdActorAction* action) {
    this->actor.speedXZ = 0.0f;
    if (this->curFrame > 25.0f) {
        if ((this->flags & 0x800) == 0) {
            this->flags |= 0x800;
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_LAND2, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
        }
    }
    if (SkelAnime_Update(&this->skin.skelAnime) != 0) {
        this->unk_210 = 0;
        if ((this->unk_384 & 4) == 0) {
            this->unk_384 |= 4;
            Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, 0.0f,
                             Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, -3.0f);
        } else {
            Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, 0.0f,
                             Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 0, 0.0f);
        }
    }
}

/**
 * TODO
 */
void func_80A61058(EnHorse* this, GlobalContext* globalCtx) {
    this->unk_20C = 0;
    this->action = 17;
    this->unk_380 = 0;
    this->actor.speedXZ = 0.0f;
}

/**
 * TODO
 */
s32 func_80A61078(s32 arg0) {
    s32 v0 = 5;
    s32 i;
    Vec2i* v;

    for (i = 0, v = D_80A666D4; i < v0; i++, v++) {
        if (arg0 == v->x) {
            return v->y;
        }
        if (arg0 < v->x) {
            return 0;
        }
    }
    return 0;
}

// 17 - Jump out of Lon Lon Ranch, and title screen
/**
 * TODO
 */
void func_80A610C8(EnHorse* this, GlobalContext* globalCtx) {
    s32 index;
    CsCmdActorAction* linkAction = globalCtx->csCtx.linkAction;

    if (globalCtx->csCtx.state == 3) {
        this->unk_20C = 1;
        this->actor.params = 10;
        this->action = 2;
        func_80A5C8FC(this);
        return;
    }
    if (linkAction != 0) {
        index = func_80A61078(linkAction->action);
        if (index != 0) {
            if (index != this->unk_380) {
                if (this->unk_380 == 0) {
                    this->actor.world.pos.x = linkAction->startPos.x;
                    this->actor.world.pos.y = linkAction->startPos.y;
                    this->actor.world.pos.z = linkAction->startPos.z;
                    this->actor.world.rot.y = linkAction->urot.y;
                    this->actor.shape.rot = this->actor.world.rot;
                    this->actor.prevPos = this->actor.world.pos;
                }
                this->unk_380 = index;
                D_80A666A4[index](this, globalCtx, linkAction);
            }
            D_80A666BC[this->unk_380](this, globalCtx, linkAction);
        }
    }
}

/**
 * TODO
 */
s32 func_80A6121C(EnHorse* this, GlobalContext* globalCtx, struct unk_80A66654* D_80A66730) {
    Vec3f sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;

    func_80A5B590(D_80A66730->unkstruct_04, this->unk_204, &sp3C);
    Math3D_RotateXZPlane(&sp3C, D_80A66730->unkstruct_04[this->unk_204].unk_08, &sp38, &sp34, &sp30);
    if (this->unk_204 >= D_80A66730->unk_00 - 1 &&
        Math3D_Vec3f_DistXYZ(&sp3C, &this->actor.world.pos) < DREG(8)) {
        this->unk_3A4 |= 2;
    }
    if (((this->actor.world.pos.x * sp38) + (sp34 * this->actor.world.pos.z) + sp30) > 0.0f) {
        this->unk_204++;
        if (this->unk_204 >= D_80A66730->unk_00) {
            this->unk_3A4 |= 1;
            return 1;
        }
    }
    if ((this->unk_3A4 & 1) == 0) {
        func_80A5B5E0(this, globalCtx, &sp3C, 800);
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
    if (this->actor.speedXZ < D_80A66730->unkstruct_04[this->unk_204].unk_06 && (this->unk_3A4 & 1) == 0) {
        this->actor.speedXZ += 0.4f;
    } else {
        this->actor.speedXZ -= 0.4f;
        if (this->actor.speedXZ < 0.0f) {
            this->actor.speedXZ = 0.0f;
        }
    }
    return 0;
}

void func_80A61440(EnHorse* this);
/**
 * TODO
 */
void func_80A6140C(EnHorse* this) {
    this->unk_3A0 = 0;
    this->unk_218 = 0;
    this->unk_204 = 0;
    this->unk_3A8 = 0;
    this->actor.speedXZ = 0.0f;
    func_80A61440(this);
}

/**
 * TODO
 */
void func_80A61440(EnHorse* this) {
    s32 phi_v1 = 0;
    f32 sp30;

    this->action = 18;
    if (this->actor.speedXZ == 0.0f) {
        if (this->unk_210 != 0) {
            phi_v1 = 1;
        }
        this->unk_210 = 0;
    } else if (this->actor.speedXZ <= 3.0f) {
        if (this->unk_210 != 4) {
            phi_v1 = 1;
        }
        this->unk_210 = 4;
    } else if (this->actor.speedXZ <= 6.0f) {
        if (this->unk_210 != 5) {
            phi_v1 = 1;
        }
        this->unk_210 = 5;
    } else {
        if (this->unk_210 != 6) {
            phi_v1 = 1;
        }
        this->unk_210 = 6;
    }

    if (this->unk_210 == 4) {
        sp30 = this->actor.speedXZ * 0.5f;
    } else if (this->unk_210 == 5) {
        sp30 = this->actor.speedXZ * 0.25f;
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_RUN, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800AA000(0.0f, 60, 8, 255);
    } else if (this->unk_210 == 6) {
        sp30 = this->actor.speedXZ * 0.2f;
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_RUN, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800AA000(0.0f, 120, 8, 255);
    } else {
        sp30 = 1.0f;
    }

    if (phi_v1 == 1) {
        Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210],
                         sPlaybackSpeeds[this->unk_210] * sp30 * 1.5f, 0,
                         Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, -3.0f);
    } else {
        Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210],
                         sPlaybackSpeeds[this->unk_210] * sp30 * 1.5f, 0,
                         Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, 0);
    }
}

/**
 * TODO
 */
void func_80A61778(EnHorse* this, GlobalContext* globalCtx) {
    f32 phi_f0;
    s32 sp20;

    if (this->unk_210 == 4) {
        func_80A5B9C8(this);
    }
    if (globalCtx->interfaceCtx.hbaAmmo == 0) {
        this->unk_3A8++;
    }

    sp20 = func_800F5A58(65, globalCtx);
    func_80A6121C(this, globalCtx, &D_80A66730);
    if (this->unk_3A4 & 1 || this->unk_3A8 >= 46) {
        if (sp20 != 1 && gSaveContext.minigameState != 3) {
            gSaveContext.cutsceneIndex = 0;
            globalCtx->nextEntranceIndex = 0x3B0;
            globalCtx->sceneLoadFlag = 0x14;
            globalCtx->fadeTransition = 0x20;
        }
    }

    if (globalCtx->interfaceCtx.hbaAmmo != 0) {
        if ((this->unk_3A4 & 2) == 0) {
            if (gSaveContext.infTable[25] & 1) {
                if ((s32)gSaveContext.minigameScore >= 1500) {
                    this->unk_3A4 |= 4;
                }
            } else {
                if ((s32)gSaveContext.minigameScore >= 1000) {
                    this->unk_3A4 |= 4;
                }
            }
        }
    }

    if ((globalCtx->interfaceCtx.hbaAmmo == 0) || (this->unk_3A4 & 2)) {
        if (this->unk_3A4 & 4) {
            this->unk_3A4 &= ~4;
            Audio_SetBGM(65);
        }
    }

    if (this->unk_3A0 == 0) {
        this->actor.speedXZ = 0.0f;
        if (this->unk_210 != 0) {
            func_80A61440(this);
        }
    }

    if (this->unk_210 == 4) {
        phi_f0 = this->actor.speedXZ * 0.5f;
    } else if (this->unk_210 == 5) {
        phi_f0 = this->actor.speedXZ * 0.25f;
    } else if (this->unk_210 == 6) {
        phi_f0 = this->actor.speedXZ * 0.2f;
    } else {
        phi_f0 = 1.0f;
    }

    this->skin.skelAnime.playSpeed = phi_f0;
    if (SkelAnime_Update(&this->skin.skelAnime) || (this->unk_210 == 0 && this->actor.speedXZ != 0.0f)) {
        func_80A61440(this);
    }
}

/**
 * TODO
 */
void func_80A61A04(EnHorse* this) {
    this->action = 19;
    this->flags |= 0x10000;
    this->actor.speedXZ = 0.0f;
}

void func_80A62278(EnHorse* this, GlobalContext* globalCtx);
void func_80A5B9C8(EnHorse* this);

/**
 * TODO
 */
void func_80A61A28(EnHorse* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    s32 phi_a2 = this->unk_210; // sp4C
    s32 ret;                    // sp48
    s16 phi_v1;                 // sp46

    if (DREG(53) || this->type == HORSE_HNI) {
        func_80A5F3DC(this);
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }

    sp58 = Math3D_Vec3f_DistXYZ(&this->actor.home.pos, &this->actor.world.pos);
    sp54 = Math3D_Vec3f_DistXYZ(&player->actor.world.pos, &this->actor.home.pos);
    sp50 = Math3D_Vec3f_DistXYZ(&player->actor.world.pos, &this->actor.world.pos);
    if (sp54 > 300.0f) {
        if (sp58 > 150.0f) {
            this->actor.speedXZ += 0.4f;
            if (this->actor.speedXZ > 8.0f) {
                this->actor.speedXZ = 8.0f;
            }
        } else {
            this->actor.speedXZ -= 0.47f;
            if (this->actor.speedXZ < 0.0f) {
                this->actor.speedXZ = 0.0f;
            }
        }
    } else {
        if (sp50 < 300.0f) {
            this->actor.speedXZ += 0.4f;
            if (this->actor.speedXZ > 8.0f) {
                this->actor.speedXZ = 8.0f;
            }
        } else {
            this->actor.speedXZ -= 0.47f;
            if (this->actor.speedXZ < 0.0f) {
                this->actor.speedXZ = 0.0f;
            }
        }
    }

    if (this->actor.speedXZ >= 6.0f) {
        this->skin.skelAnime.playSpeed = this->actor.speedXZ * 0.3f;
        phi_a2 = 6;
    } else if (this->actor.speedXZ >= 3.0f) {
        this->skin.skelAnime.playSpeed = this->actor.speedXZ * 0.375f;
        phi_a2 = 5;
    } else if (this->actor.speedXZ > 0.1f) {
        this->skin.skelAnime.playSpeed = this->actor.speedXZ * 0.75f;
        phi_a2 = 4;
        func_80A5B9C8(this);
    } else {
        phi_a2 = Rand_ZeroOne() > 0.5f ? 1 : 0;
        func_80A5BC68(this, globalCtx);
        this->skin.skelAnime.playSpeed = 1.0f;
    }

    if (phi_a2 == 6 || phi_a2 == 5 || phi_a2 == 4) {
        if (sp54 < 300.0f) {
            phi_v1 = player->actor.shape.rot.y;
            phi_v1 += (Actor_WorldYawTowardActor(this, player) > 0 ? 1 : -1) * 0x3FFF;
        } else {
            phi_v1 = Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos) - this->actor.world.rot.y;
        }

        if (phi_v1 >= 0x191) {
            this->actor.world.rot.y += 0x190;
        } else if (phi_v1 < -0x190) {
            this->actor.world.rot.y -= 0x190;
        } else {
            this->actor.world.rot.y += phi_v1;
        }

        this->actor.shape.rot.y = this->actor.world.rot.y;
    }

    ret = SkelAnime_Update(&this->skin.skelAnime);
    if ((this->unk_210 == 0) || (this->unk_210 == 1)) {
        if (phi_a2 == 6 || phi_a2 == 5 || phi_a2 == 4) {
            this->unk_210 = phi_a2;
            Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, 0.0f,
                             Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, -3.0f);
            if (this->unk_210 == 6) {
                func_80A5BACC(this);
            } else if (this->unk_210 == 5) {
                func_80A5BA84(this);
            }
            return;
        }
    }

    if (ret != 0) {
        if (phi_a2 == 6) {
            func_80A5BACC(this);
        } else if (phi_a2 == 5) {
            func_80A5BA84(this);
        }

        if ((this->unk_210 == 0) || (this->unk_210 == 1)) {
            if (phi_a2 != this->unk_210) {
                this->unk_210 = phi_a2;
                Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, 0.0f,
                                 Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, -3.0f);
                return;
            } else {
                if (Rand_ZeroOne() > 0.5f) {
                    this->unk_210 = 0;
                    this->flags &= ~0x1000;
                } else {
                    this->unk_210 = 1;
                    this->unk_21C = this->unk_228;
                    if (this->flags & 0x8000000) {
                        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_GROAN, &this->unk_21C, 4, &D_801333E0, &D_801333E0,
                                               &D_801333E8);
                    }
                }
                Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, 0.0f,
                                 Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, -3.0f);
                return;
            }
        }

        if (phi_a2 != this->unk_210) {
            this->unk_210 = phi_a2;
            Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, 0.0f,
                             Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, -3.0f);
        } else {
            Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, 0.0f,
                             Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, 0.0f);
        }
        return;
    }

    if (this->unk_210 == 4) {
        if ((phi_a2 == 0) || (phi_a2 == 1)) {
            this->unk_210 = phi_a2;
            Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.0f, 0.0f,
                             Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, -3.0f);
        }
    }
}

/**
 * TODO
 */
void func_80A62278(EnHorse* this, GlobalContext* globalCtx) {
    f32 y;

    func_80028A54(globalCtx, 25.0f, &this->actor.world.pos);
    this->action = 16;
    this->flags |= 4;
    this->unk_210 = 8;
    y = this->skin.skelAnime.jointTable->y;
    y = y * 0.01f;
    this->unk_3B0 = this->actor.world.pos;
    this->unk_3B0.y += y;
    this->unk_3C0 = (((D_80A665DC[this->unk_3AC].pos.y + 48.7f) - this->unk_3B0.y) - -360.0f) / 30.0f;
    this->unk_258.y -= y;
    this->flags |= 8;
    this->unk_3C4 = this->actor.world.rot.y - D_80A665DC[this->unk_3AC].angle;
    this->unk_3BC = 0;
    this->actor.gravity = 0.0f;
    this->actor.speedXZ = 0;
    Animation_Change(&this->skin.skelAnime, sAnimationHeaders[this->type][this->unk_210], 1.5f, 0.0f,
                     Animation_GetLastFrame(sAnimationHeaders[this->type][this->unk_210]), 2, -3.0f);
    this->unk_21C = this->unk_228;
    if (this->flags & 0x8000000) {
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->unk_21C, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
    Audio_PlaySoundGeneral(NA_SE_EV_HORSE_JUMP, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    func_800AA000(0.0f, 170, 10, 10);
    this->unk_244 = NULL;
}

/**
 * TODO
 */
void func_80A624AC(EnHorse* this, GlobalContext* globalCtx) {
    this->unk_244 = func_80A62278;
    if (this->unk_3AC == 0) {
        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(D_02002AC0);
        gSaveContext.cutsceneTrigger = 1;
    } else {
        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(D_02000230);
        gSaveContext.cutsceneTrigger = 1;
    }
}

/**
 * TODO
 */
void func_80A6255C(EnHorse* this, GlobalContext* globalCtx) {
    f32 temp_f14;
    f32 temp_f2;
    s16 temp_a2;

    temp_f14 = this->unk_3BC / 30.0f;
    temp_f2 = (this->unk_3BC * this->unk_3BC);

    this->actor.world.pos.x = ((D_80A665DC[this->unk_3AC].pos.x - this->unk_3B0.x) * temp_f14) + this->unk_3B0.x;
    this->actor.world.pos.z = ((D_80A665DC[this->unk_3AC].pos.z - this->unk_3B0.z) * temp_f14) + this->unk_3B0.z;

    this->actor.world.pos.y = (this->unk_3B0.y + (this->unk_3C0 * this->unk_3BC) + (-0.4f * temp_f2));

    this->actor.world.rot.y = this->actor.shape.rot.y =
        (D_80A665DC[this->unk_3AC].angle + ((1.0f - temp_f14) * this->unk_3C4));
    this->skin.skelAnime.curFrame = 23.0f * temp_f14;
    SkelAnime_Update(&this->skin.skelAnime);
    if (this->unk_3BC < 30) {
        this->flags |= 0x1000000;
    }
}

void func_80028A54(GlobalContext* globalCtx, f32 arg1, Vec3f* vec);
void func_80A5DDB0(EnHorse* this, GlobalContext* globalCtx);

/**
 * TODO
 */
void func_80A626B8(EnHorse* this, GlobalContext* globalCtx) {
    this->actor.speedXZ = 8.0f;
    this->skin.skelAnime.playSpeed = 1.5f;
    if (SkelAnime_Update(&this->skin.skelAnime) != 0) {
        this->flags &= ~4;
        this->actor.gravity = -3.5f;
        this->actor.world.pos.y = D_80A665DC[this->unk_3AC].pos.y;
        func_80028A54(globalCtx, 25.0f, &this->actor.world.pos);
        func_80A5DDB0(this, globalCtx);
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_LAND, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800AA000(0.0f, 255, 10, 80);
    }
}

void func_80A6255C(EnHorse* this, GlobalContext* globalCtx);
void func_80A626B8(EnHorse* this, GlobalContext* globalCtx);


// 16 - Bridge jump
/**
 * TODO
 */
void func_80A627A4(EnHorse* this, GlobalContext* globalCtx) {
    this->unk_3BC++;
    if (this->unk_3BC < 30) {
        func_80A6255C(this, globalCtx);
        return;
    }
    func_80A626B8(this, globalCtx);
}

/**
 * TODO
 */
void func_80A627E8(Vec3f* src, s16 yaw, f32 dist, f32 height, Vec3f* dst) {
    dst->x = src->x + Math_SinS(yaw) * dist;
    dst->y = src->y + height;
    dst->z = src->z + Math_CosS(yaw) * dist;
}

/**
 * TODO
 */
s32 EnHorse_CalcFloorHeight(EnHorse* this, GlobalContext* globalCtx, Vec3f* vec, CollisionPoly** floorPoly, f32* floorHeight) {
    s32 bgId;
    f32 waterY;
    WaterBox* waterBox;

    *floorPoly = NULL;
    *floorHeight = BgCheck_EntityRaycastFloor3(&globalCtx->colCtx, floorPoly, &bgId, vec);

    if (*floorHeight == -32000.0f) {
        return 1;
    }

    if (WaterBox_GetSurfaceImpl(globalCtx, &globalCtx->colCtx, vec->x, vec->z, &waterY, &waterBox) == 1 && *floorHeight < waterY) {
        return 2;
    }

    if ((*floorPoly)->normal.y * 0.00003051851f < 0.81915206f ||
        SurfaceType_IsHorseBlocked(&globalCtx->colCtx, *floorPoly, bgId) ||
        func_80041D4C(&globalCtx->colCtx, *floorPoly, bgId) == 7) {
        return 3;
    }
    return 0;
}

/**
 * TODO
 */
void func_80A629A4(EnHorse* this, GlobalContext* globalCtx, s32 arg3, s32 arg4) {
    if (this->action == 17 || func_80A5B2F0(this, globalCtx)) {
        return;
    }

    this->actor.world.pos = this->lastPos;
    this->actor.shape.rot.y = this->lastYaw;
    this->actor.world.rot.y = this->lastYaw;
    this->flags |= 0x4000;

    if (this->unk_20C == 0) {
        if (this->unk_210 != 3) {
            return;
        }
    } else if (this->action != 11) {
        if (this->flags & 4) {
            this->flags &= ~4;
            this->actor.gravity = -3.5f;
            this->actor.world.pos.y = this->actor.floorHeight;
        }
        if (arg3 == 1 || arg3 == 4) {
            this->flags |= 0x10;
        } else if (arg3 == 2 || arg3 == 5) {
            this->flags |= 0x20;
        }
        if (arg4 == 1) {
            func_80A5E00C(this);
        }
    }
}

/**
 * TODO
 */
void func_80A62ACC(EnHorse* this, GlobalContext* globalCtx) {
    s32 status;
    CollisionPoly* sp80;
    CollisionPoly* sp7C;
    s16 sp7A;
    Vec3f sp6C;
    Vec3f sp60;
    Vec3f sp54;
    f32 nx;
    f32 ny;
    f32 nz;
    s32 sp44 = this->actor.speedXZ > 8;
    f32 dist;
    f32 ySurface;
    WaterBox* waterBox;
    s32 pad;

    if (WaterBox_GetSurfaceImpl(globalCtx, &globalCtx->colCtx, this->actor.world.pos.x, this->actor.world.pos.z,
                                &ySurface, &waterBox) == 1 &&
        this->actor.floorHeight < ySurface) {
        func_80A629A4(this, globalCtx, 1, sp44);
        return;
    }

    func_80A627E8(&this->actor.world.pos, this->actor.shape.rot.y, 30.0f, 60.0f, &sp6C);
    status = EnHorse_CalcFloorHeight(this, globalCtx, &sp6C, &sp80, &this->yFront);
    if (status == 1) {
        this->actor.shape.rot.x = 0;
        func_80A629A4(this, globalCtx, 4, sp44);
        return;
    }
    if (status == 2) {
        func_80A629A4(this, globalCtx, 4, sp44);
        return;
    }
    if (status == 3) {
        func_80A629A4(this, globalCtx, 4, sp44);
        return;
    }

    func_80A627E8(&this->actor.world.pos, this->actor.shape.rot.y, -30.0f, 60.0f, &sp60);
    status = EnHorse_CalcFloorHeight(this, globalCtx, &sp60, &sp7C, &this->yBack);
    if (status == 1) {
        this->actor.shape.rot.x = 0;
        func_80A629A4(this, globalCtx, 5, sp44);
        return;
    }
    if (status == 2) {
        func_80A629A4(this, globalCtx, 5, sp44);
        return;
    }
    if (status == 3) {
        func_80A629A4(this, globalCtx, 5, sp44);
        return;
    }

    sp7A = Math_FAtan2F(this->yBack - this->yFront, 60.0f) * 10430.378f;
    if (this->actor.floorPoly != 0) {
        nx = this->actor.floorPoly->normal.x * COLPOLY_NORMAL_FRAC;
        ny = this->actor.floorPoly->normal.y * COLPOLY_NORMAL_FRAC;
        nz = this->actor.floorPoly->normal.z * COLPOLY_NORMAL_FRAC;
        sp54 = sp6C;
        sp54.y = this->yFront;
        dist = Math3D_DistPlaneToPos(nx, ny, nz, this->actor.floorPoly->dist, &sp54);
        if ((sp80 != this->actor.floorPoly) && (this->actor.speedXZ >= 0.0f)) {
            if (((this->flags & 4) == 0 && dist < -40.0f) || (this->flags & 4 && dist < -200.0f)) {
                func_80A629A4(this, globalCtx, 4, sp44);
                return;
            }
        }

        sp54 = sp60;
        sp54.y = this->yBack;
        dist = Math3D_DistPlaneToPos(nx, ny, nz, this->actor.floorPoly->dist, &sp54);
        if (((sp7C != this->actor.floorPoly) && (this->actor.speedXZ <= 0.0f) && ((this->flags & 4) == 0) &&
             (dist < -40.0f)) ||
            (this->flags & 4 && dist < -200.0f)) {
            func_80A629A4(this, globalCtx, 5, sp44);
            return;
        }

        if (ny < 0.81915206f ||
            SurfaceType_IsHorseBlocked(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorBgId) ||
            func_80041D4C(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorBgId) == 7) {
            if ((this->actor.speedXZ >= 0.0f)) {
                func_80A629A4(this, globalCtx, 4, sp44);
            } else {
                func_80A629A4(this, globalCtx, 5, sp44);
            }
            return;
        }

        if (this->flags & 4) {
            this->actor.shape.rot.x = 0;
            return;
        }

        if (this->actor.floorHeight + 4.0f < this->actor.world.pos.y) {
            this->actor.shape.rot.x = 0;
            return;
        }

        if (fabsf(sp7A) > 8191.0f) {
            return;
        }

        this->actor.shape.rot.x = sp7A;
        this->actor.shape.yOffset =
            (this->yFront + (((this->yBack - this->yFront) * 20.0f) / 45.0f)) - this->actor.floorHeight;
    }
}

s32 func_80A65014(EnHorse* this, GlobalContext* globalCtx);
/**
 * TODO
 */
void func_80A6304C(Actor* thisx, GlobalContext* globalCtx) {
    EnHorse* this = THIS;
    GlobalContext* globalCtx2 = globalCtx;
    s32 mountSide;
    Player* player = PLAYER;
    s32 v1 = 1;

    mountSide = func_80A65014(this, globalCtx2);
    if (mountSide != 0 && !(this->flags & 0x10000) && player->rideActor == NULL) {
        Actor_SetRideActor(globalCtx2, &this->actor, mountSide);
    }

    if (this->unk_20C == 0 && Actor_IsMounted(globalCtx2, &this->actor) == 1) {
        this->unk_150 = 55;
        this->unk_154 = 55;
        this->unk_20C = v1;
        func_80A5C8FC(this);
    } else if (this->unk_20C == 1 && Actor_NotMounted(globalCtx2, &this->actor) == 1) {
        this->unk_150 = 35;
        this->unk_154 = 35;
        this->flags &= ~0x10000;
        this->unk_20C = 0;
        func_80A5C8FC(this);
    }
}

/**
 * TODO
 */
void func_80A63148(Vec2f* vec, f32* arg1, s16* arg2) {
    f32 dist;
    f32 y;
    f32 x;

    x = vec->x;
    y = vec->y;
    dist = sqrtf(SQ(x) + SQ(y));

    *arg1 = dist;
    if (dist > 60.0f) {
        *arg1 = 60.0f;
    } else {
        *arg1 = *arg1;
    }

    *arg2 = Math_FAtan2F(-vec->x, vec->y) * (32768.0f / M_PI);
}

/**
 * TODO
 */
void EnHorse_UpdateStick(EnHorse* this, GlobalContext* globalCtx) {
    this->lastStick = this->curStick;
    this->curStick.x = globalCtx->state.input[0].rel.stick_x;
    this->curStick.y = globalCtx->state.input[0].rel.stick_y;
}

/**
 * TODO
 */
void func_80A63210(EnHorse* this, GlobalContext* globalCtx, CollisionPoly* arg2) {
    f32 dist;
    f32 nx;
    f32 ny;
    f32 nz;
    f32 temp_f2;

    nx = arg2->normal.x * 0.00003051851f;
    ny = arg2->normal.y * 0.00003051851f;
    nz = arg2->normal.z * 0.00003051851f;
    if (Math_CosS(this->actor.world.rot.y - (s16)(Math_FAtan2F(arg2->normal.x, arg2->normal.z) * 10430.378f) - 0x7FFF) <
        0.7071f) {
        return;
    }

    dist = Math3D_DistPlaneToPos(nx, ny, nz, arg2->dist, &this->actor.world.pos);
    temp_f2 = (1.0f / sqrtf(SQ(nx) + SQ(nz)));
    temp_f2 = (30.0f - dist) * temp_f2;
    this->actor.world.pos.x += temp_f2 * nx;
    this->actor.world.pos.z += temp_f2 * nz;
}

/**
 * TODO
 */
void func_80A63364(EnHorse* this, GlobalContext* globalCtx) {
    f32 yOffset;
    Vec3f sp60;
    Vec3f sp54;
    Vec3f sp48;
    CollisionPoly* sp44;
    s32 sp40;

    if (globalCtx->sceneNum == SCENE_SPOT20) {
        yOffset = 19.0f;
    } else {
        yOffset = 40.0f;
    }
    Math_Vec3f_Copy(&sp60, &this->actor.world.pos);
    sp60.y = sp60.y + yOffset;

    Math_Vec3f_Copy(&sp54, &sp60);
    sp54.x += 30.0f * Math_SinS(this->actor.world.rot.y);
    sp54.y += 30.0f * Math_SinS(-this->actor.shape.rot.x);
    sp54.z += 30.0f * Math_CosS(this->actor.world.rot.y);
    if (BgCheck_EntityLineTest1(&globalCtx->colCtx, &sp60, &sp54, &sp48, &sp44, 1, 0, 0, 1, &sp40) != 0) {
        func_80A63210(this, globalCtx, sp44);
    }
}

void func_80A5ED18(EnHorse* this, GlobalContext* globalCtx);
void func_80A5EE78(EnHorse* this);
void func_80A5EB4C(EnHorse* this);

void func_80A63210(EnHorse* this, GlobalContext* globalCtx, CollisionPoly* arg2);

/**
 * TODO
 */
void func_80A634A0(EnHorse* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 pad2;
    Vec3f spAC;
    Vec3f spA0;
    Vec3f sp94;
    f32 pad3;
    f32 sp8C;
    CollisionPoly* sp88 = NULL;
    CollisionPoly* sp84 = NULL;
    s32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 ny;
    s32 sp70;
    s32 pad5;
    Actor* dynaPoly;
    Vec3f sp5C;
    Vec3f sp50;

    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, globalCtx->sceneNum == SCENE_SPOT20 ? 19.0f : 40.0f, 35.0f, 100.0f, 29);

    if (func_80A5B2F0(this, globalCtx)) {
        return;
    }

    if (this->actor.bgCheckFlags & 8 && Math_CosS(this->actor.wallYaw - (0, this->actor.world).rot.y) < -0.3f) {
        if (this->actor.speedXZ > 4.0f) {
            this->actor.speedXZ -= 1.0f;
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_SANDDUST, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
        }
    }

    if (this->flags & 4 || this->unk_20C == 0) {
        return;
    }
    if ((this->actor.speedXZ < 0.0f)) {
        return;
    }
    if ((this->action == 12) || (this->action == 11)) {
        return;
    }

    if ((this->actor.speedXZ > 8.0f)) {
        if (this->actor.speedXZ < 12.8f) {
            sp8C = 160.0f;
            sp70 = 0;
        } else {
            sp8C = 230.0f;
            sp70 = 1;
        }
    } else {
        func_80A63364(this, globalCtx);
        return;
    }

    spAC = this->actor.world.pos;
    spAC.y += 19.0f;
    spA0 = spAC;
    spA0.x += (sp8C * Math_SinS(this->actor.world.rot.y));
    spA0.y += (sp8C * Math_SinS(-this->actor.shape.rot.x));
    spA0.z += (sp8C * Math_CosS(this->actor.world.rot.y));
    sp5C = spA0;
    sp88 = NULL;
    if (BgCheck_EntityLineTest1(&globalCtx->colCtx, &spAC, &spA0, &sp5C, &sp88, 1, 0, 0, 1, &sp80) == 1) {
        sp8C = sqrt(Math3D_Vec3fDistSq(&spAC, &sp5C));
        this->flags |= 0x4000;
    }

    if (sp88 != 0) {
        if (sp8C < 30.0f) {
            func_80A63210(this, globalCtx, sp88);
        }
        if ((Math_CosS(this->actor.world.rot.y - (s16)(Math_FAtan2F(sp88->normal.x, sp88->normal.z) * 10430.378f) -
                       0x7FFF) < 0.5f) ||
            SurfaceType_IsHorseBlocked(&globalCtx->colCtx, sp88, sp80) != 0) {
            return;
        }
        if ((sp70 == 0 && sp8C < 80.0f) || (sp70 == 1 && sp8C < 150.0f)) {
            if (sp70 == 0) {
                this->flags |= 0x10;
            } else if (sp70 == 1) {
                this->flags |= 0x10;
                func_80A5E2A8(this, globalCtx);
            }
            return;
        }
        dynaPoly = DynaPoly_GetActor(&globalCtx->colCtx, sp80);
        if ((this->flags & 0x4000000) && ((dynaPoly && dynaPoly->id != 0x108) || dynaPoly == 0)) {
            if (sp70 == 0) {
                this->flags |= 0x10;
            } else if (sp70 == 1) {
                this->flags |= 0x10;
                func_80A5E2A8(this, globalCtx);
            }
            return;
        }
    }

    sp8C += 5.0f;
    sp94 = spAC;
    sp94.x += sp8C * Math_SinS(this->actor.world.rot.y);
    sp94.y = this->actor.world.pos.y + 120.0f;
    sp94.z += sp8C * Math_CosS(this->actor.world.rot.y);
    sp50 = sp94;
    sp50.y = BgCheck_EntityRaycastFloor3(&globalCtx->colCtx, &sp84, &sp80, &sp94);
    if (sp50.y == -32000.0f) {
        return;
    }
    sp7C = sp50.y - this->actor.world.pos.y;
    if ((this->actor.floorPoly == 0) || (sp84 == 0)) {
        return;
    }

    if (Math3D_DistPlaneToPos(this->actor.floorPoly->normal.x * COLPOLY_NORMAL_FRAC,
                              this->actor.floorPoly->normal.y * COLPOLY_NORMAL_FRAC,
                              this->actor.floorPoly->normal.z * COLPOLY_NORMAL_FRAC, this->actor.floorPoly->dist,
                              &sp50) < -40.0f &&
        Math3D_DistPlaneToPos(sp84->normal.x * COLPOLY_NORMAL_FRAC, sp84->normal.y * COLPOLY_NORMAL_FRAC,
                              sp84->normal.z * COLPOLY_NORMAL_FRAC, sp84->dist, &this->actor.world.pos) > 40.0f) {
        if ((sp70 == 1) && (this->action != 12)) {
            this->flags |= 0x10;
            func_80A5E2A8(this, globalCtx);
        }
        this->flags |= 0x4000;
        return;
    }

    ny = sp84->normal.y * COLPOLY_NORMAL_FRAC;
    if (ny < 0.81915206f || (SurfaceType_IsHorseBlocked(&globalCtx->colCtx, sp84, sp80) != 0) ||
        (func_80041D4C(&globalCtx->colCtx, sp84, sp80) == 7)) {
        if ((sp70 == 1) && (this->action != 12)) {
            this->flags |= 0x10;
            func_80A5E2A8(this, globalCtx);
        }
        return;
    }

    if ((sp88 == 0) || (sp50.y < sp5C.y) || (this->flags & 0x00020000)) {
        return;
    }

    sp94 = spAC;
    sp94.y = this->actor.world.pos.y + 120.0f;
    if (sp70 == 0) {
        sp94.x += (276.0f * Math_SinS(this->actor.world.rot.y));
        sp94.z += (276.0f * Math_CosS(this->actor.world.rot.y));
    } else {
        sp94.x += (390.0f * Math_SinS(this->actor.world.rot.y));
        sp94.z += (390.0f * Math_CosS(this->actor.world.rot.y));
    }

    sp50 = sp94;
    sp50.y = BgCheck_EntityRaycastFloor3(&globalCtx->colCtx, &sp84, &sp80, &sp94);
    if (sp50.y == -32000.0f) {
        return;
    }

    sp78 = sp50.y - this->actor.world.pos.y;

    if (sp84 == 0) {
        return;
    }

    ny = sp84->normal.y * COLPOLY_NORMAL_FRAC;
    if ((ny < 0.81915206f) || SurfaceType_IsHorseBlocked(&globalCtx->colCtx, sp84, sp80) ||
        func_80041D4C(&globalCtx->colCtx, sp84, sp80) == 7) {
        if ((sp70 == 1) && (this->action != 12)) {
            this->flags |= 0x10;
            func_80A5E2A8(this, globalCtx);
        }
    } else if (sp78 < -DREG(4)) {
        if ((sp70 == 1) && (this->action != 12)) {
            this->flags |= 0x10;
            func_80A5E2A8(this, globalCtx);
        }
    } else if ((sp70 == 0) && (sp7C > 19.0f) && (sp7C <= 40.0f)) {
        func_80A5EB4C(this);
        this->unk_244 = &func_80A5E9F8;
    } else if ((sp70 == 1 && this->actor.speedXZ < 13.8f && sp7C > 19.0f && sp7C <= 72.0f) ||
               (this->actor.speedXZ > 13.8f && sp7C <= 112.0f)) {

        func_80A5EE78(this);
        this->unk_244 = &func_80A5ED18;
    }
}

/**
 * TODO
 */
void func_80A63FA8(Actor* thisx, GlobalContext* globalCtx) {
    EnHorse* this = THIS;
    GlobalContext* globalCtx2 = globalCtx;
    s32 pad;

    if ((this->action == 8) || (this->action == 9) || (this->action == 10)) {
        if ((~(globalCtx2->state.input[0].press.button | ~0x8000) == 0) && (globalCtx2->interfaceCtx.unk_1EE == 8)) {
            if (((this->flags & 1) == 0) && ((this->flags & 0x100) == 0) && ((this->flags & 0x200) == 0)) {
                if (this->unk_238 > 0) {
                    func_800AA000(0.0f, 180, 20, 100);
                    this->flags |= 1;
                    this->flags |= 0x400000;
                    this->flags |= 0x100;
                    this->unk_238--;
                    this->unk_240 = 0;
                    if (this->unk_238 == 0) {
                        this->unk_23C = 0x8C;
                        return;
                    }
                    if (this->type == HORSE_EPONA) {
                        if ((this->flags & 0x400000)) {
                            this->unk_23C = 0x3C;
                            this->flags &= ~0x400000;
                        } else {
                            this->unk_23C = 8;
                        }
                    } else {
                        this->unk_23C = 0x46;
                    }
                    return;
                }
                this->unk_21C = this->unk_228;
                if (this->flags & 0x8000000) {
                    if (Rand_ZeroOne() < 0.1f) {
                        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->unk_21C, 4, &D_801333E0, &D_801333E0,
                                               &D_801333E8);
                    }
                }
            }
        }
    }
}

/**
 * TODO
 */
void func_80A64150(EnHorse* this, GlobalContext* globalCtx) {
    s32 phi_v0;

    if (((s32)this->unk_238 < 6) && ((s32)this->unk_238 > 0)) {
        this->unk_23C--;
        this->unk_240 = this->unk_240 + 1;
        if ((s32)this->unk_23C <= 0) {
            this->unk_238 = this->unk_238 + 1;
            if ((this->action == 5 || this->action == 0 || this->action == 6) && !(this->flags & 0x00080000) &&
                !(this->flags & 0x02000000)) {
                phi_v0 = 1;
            } else {
                phi_v0 = 0;
            }
            if (phi_v0 == 0) {
                Audio_PlaySoundGeneral(NA_SE_SY_CARROT_RECOVER, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
            if ((s32)this->unk_238 < 6) {
                this->unk_23C = 0xB;
            }
        }
    } else if (this->unk_238 == 0) {
        this->unk_23C--;
        this->unk_240++;
        if ((s32)this->unk_23C <= 0) {
            this->unk_23C = 0;
            this->unk_238 = 6;
            if ((this->action == 5 || this->action == 0 || this->action == 6) && !(this->flags & 0x00080000) &&
                !(this->flags & 0x02000000)) {
                phi_v0 = 1;
            } else {
                phi_v0 = 0;
            }
            if (phi_v0 == 0) {
                Audio_PlaySoundGeneral(NA_SE_SY_CARROT_RECOVER, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
        }
    }

    if ((this->unk_240 == 8) && (Rand_ZeroOne() < 0.25f)) {
        this->unk_21C = this->unk_228;
        if ((this->flags & 0x8000000)) {
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->unk_21C, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }
    globalCtx->interfaceCtx.unk_23A = this->unk_238;
}

void func_80A62ACC(EnHorse* this, GlobalContext* globalCtx);

/**
 * TODO
 */
void EnHorse_UpdatePlayerDir(EnHorse* this, GlobalContext* globalCtx) {
    EnHorse* pad;
    s16 angle;
    f32 s;
    f32 c;

    angle = Actor_WorldYawTowardActor(this, PLAYER) - this->actor.world.rot.y;
    s = Math_SinS(angle);
    c = Math_CosS(angle);
    if (s > 0.8660254f) {
        this->playerDir = PLAYER_DIR_SIDE_L;
        return;
    }
    if (s < -0.8660254f) {
        this->playerDir = PLAYER_DIR_SIDE_R;
        return;
    }
    if (c > 0.0f) {
        if (s > 0) {
            this->playerDir = PLAYER_DIR_FRONT_L;
        } else {
            this->playerDir = PLAYER_DIR_FRONT_R;
        }
    } else {
        if (s > 0) {
            this->playerDir = PLAYER_DIR_BACK_L;
        } else {
            this->playerDir = PLAYER_DIR_BACK_R;
        }
    }
}

/**
 * TODO
 */
void func_80A64480(EnHorse* this, GlobalContext* globalCtx) {
    f32 spd;
    f32 unk_roll;
    s32 temp;
    s16 v0;

    spd = this->actor.speedXZ / this->boostSpeed;
    v0 = (this->actor.shape.rot.y - this->lastYaw);
    temp = -((s16)((1820.0f * spd) * (v0 / 480.00003f)));
    unk_roll = temp - this->actor.world.rot.z;
    if (fabsf(temp) < 100.0f) {
        this->actor.world.rot.z = 0;
    } else if (fabsf(unk_roll) < 100.0f) {
        this->actor.world.rot.z = temp;
    } else if (unk_roll > 0.0f) {
        this->actor.world.rot.z = this->actor.world.rot.z + 0x64;
    } else {
        this->actor.world.rot.z = this->actor.world.rot.z - 0x64;
    }

    this->actor.shape.rot.z = this->actor.world.rot.z;
}

/**
 * TODO
 */
s32 func_80A64578(EnHorse* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 ret;

    if ((this->actor.floorPoly == NULL) && (this != (EnHorse*)player->rideActor)) {
        return 0;
    }
    ret = SurfaceType_GetConveyorDirection(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorBgId);
    ret = (ret << 0xA) - this->actor.world.rot.y;
    if (ret > 800.0f) {
        this->actor.world.rot.y += 800.0f;
    } else if (ret < -800.0f) {
        this->actor.world.rot.y -= 800.0f;
    } else {
        this->actor.world.rot.y += ret;
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;

    return 1;
}

/**
 * TODO
 */
s32 EnHorse_RandFloat(f32 range) {
    return Rand_ZeroOne() * range;
}

/**
 * TODO
 */
void EnHorse_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnHorse* this = THIS;
    GlobalContext* globalCtx2 = globalCtx;
    Vec3f dustAcc = { 0.0f, 0.0f, 0.0f };
    Vec3f dustVel = { 0.0f, 1.0f, 0.0f };
    Player* player = PLAYER;
    
    dbgY = 1;

    if (!changed && CHECK_BTN_ALL(globalCtx->state.input[0].press.button, BTN_DLEFT))
    {
        horse ^= 1;
        changed = true;
    }
    else if (changed && !CHECK_BTN_ALL(globalCtx->state.input[0].press.button, BTN_DLEFT))
    {
        changed = false;
    }

    this->lastYaw = thisx->shape.rot.y;
    EnHorse_UpdateStick(this, globalCtx2);
    EnHorse_UpdatePlayerDir(this, globalCtx2);

    if (!(this->flags & 0x2000)) {
        func_80A6304C(thisx, globalCtx2);
    }

    if (this->flags & 0x80000) {
        if (this->flags & 0x100000 && this->unk_388 == 1) {
            this->flags &= ~0x100000;
            func_80A5E00C(this);
        } else if (!(this->flags & 0x100000) && this->flags & 0x200000 && this->action != 11 &&
                   this->unk_388 == 1) {
            this->flags &= ~0x200000;
            func_80A5E00C(this);
        }
    }

    if (this->type == horse) {
        if (CHECK_BTN_ALL(globalCtx->state.input[0].press.button, BTN_DDOWN)) {
            DREG(53) = 1;
        }
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_horse.c", 8582);
        gSPSegment(POLY_OPA_DISP++, 0x08, NULL);
        GfxPrint_Init(dprint);
        GfxPrint_Open(dprint, POLY_OPA_DISP);

        GfxPrint_SetColor(dprint, 255, 255, 255, 255);
        GfxPrint_SetPos(dprint, 1, dbgY++);
        GfxPrint_Printf(dprint, "entrance %d", gSaveContext.entranceIndex);
        GfxPrint_SetPos(dprint, 1, dbgY++);
        GfxPrint_Printf(dprint, "scene %d setup %d", globalCtx->sceneNum, gSaveContext.sceneSetupIndex);
        GfxPrint_SetPos(dprint, 1, dbgY++);
        GfxPrint_Printf(dprint, "dreg53 %d", DREG(53));

        GfxPrint_SetColor(dprint, 155, 255, 155, 255);
        GfxPrint_SetPos(dprint, 1, dbgY++);
        GfxPrint_Printf(dprint, "Horse type: %d", this->type);

        GfxPrint_SetColor(dprint, 255, 155, 150, 255);
        GfxPrint_SetPos(dprint, 1, dbgY++);
        GfxPrint_Printf(dprint, "Horse flags %08x", this->flags);

        GfxPrint_SetColor(dprint, 80, 80, 255, 255);
        GfxPrint_SetPos(dprint, 1, dbgY++);
        GfxPrint_Printf(dprint, "action: %d", this->action);

        GfxPrint_SetColor(dprint, 185, 185, 185, 255);
        GfxPrint_SetPos(dprint, 1, dbgY++);
        GfxPrint_Printf(dprint, "Horse x %f", thisx->world.pos.x);
        GfxPrint_SetPos(dprint, 1, dbgY++);
        GfxPrint_Printf(dprint, "Horse y %f", thisx->world.pos.y);
        GfxPrint_SetPos(dprint, 1, dbgY++);
        GfxPrint_Printf(dprint, "Horse z %f", thisx->world.pos.z);

        GfxPrint_SetPos(dprint, 1, dbgY++);
        GfxPrint_Printf(dprint, "unk248 %f", this->yFront);
        GfxPrint_SetPos(dprint, 1, dbgY++);
        GfxPrint_Printf(dprint, "unk24C %f", this->yBack);

        GfxPrint_SetPos(dprint, 1, dbgY++);
        GfxPrint_Printf(dprint, "floorHeight %f", thisx->floorHeight);
        
        GfxPrint_SetPos(dprint, 1, dbgY++);
        GfxPrint_Printf(dprint, "player ride actor %x", PLAYER->rideActor);
        GfxPrint_SetPos(dprint, 1, dbgY++);
        GfxPrint_Printf(dprint, "player mountside %d", PLAYER->mountSide);

        GfxPrint_SetColor(dprint, 185, 255, 185, 255);
        GfxPrint_SetPos(dprint, 1, dbgY++);
        GfxPrint_Printf(dprint, "370 %d", this->playerDir);

        GfxPrint_SetPos(dprint, 1, dbgY++);
        GfxPrint_Printf(dprint, "150 %d", this->unk_150);
        GfxPrint_SetPos(dprint, 1, dbgY++);
        GfxPrint_Printf(dprint, "154 %d", this->unk_154);

        POLY_OPA_DISP = GfxPrint_Close(dprint);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_horse.c", 8601);
    }

    sActionFuncs[this->action](this, globalCtx2);
    this->flags &= ~0x4000;
    this->curFrame = this->skin.skelAnime.curFrame;
    this->lastPos = thisx->world.pos;
    if (!(this->flags & 0x2000)) {
        if (this->action == 10 || this->action == 9 || this->action == 8) {
            func_80A63FA8(this, globalCtx2);
        }
        if (this->unk_20C == 1) {
            func_80A64150(this, globalCtx2);
        }
        Actor_MoveForward(&this->actor);
        if (this->action == 4) {
            if (this->rider != NULL) {
                this->rider->world.pos.x = thisx->world.pos.x;
                this->rider->world.pos.y = thisx->world.pos.y + 10.0f;
                this->rider->world.pos.z = thisx->world.pos.z;
                this->rider->shape.rot.x = thisx->shape.rot.x;
                this->rider->shape.rot.y = thisx->shape.rot.y;
            }
        }
        if (this->jntSph.elements[0].info.ocElemFlags & 2) {
            if (thisx->speedXZ > 6.0f) {
                thisx->speedXZ -= 1.0f;
            }
        }
        if (this->jntSph.base.acFlags & 2) {
            this->unk_21C = this->unk_228;
            if (this->flags & 0x8000000) {
                Audio_PlaySoundGeneral(NA_SE_EV_HORSE_NEIGH, &this->unk_21C, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
        }
        if (this->action != 4) {
            func_80A64480(this, globalCtx2);
        }
        Collider_UpdateCylinder(&this->actor, &this->cyl1);
        Collider_UpdateCylinder(&this->actor, &this->cyl2);
        this->cyl1.dim.pos.x = this->cyl1.dim.pos.x + (s16)(Math_SinS(thisx->shape.rot.y) * 11.0f);
        this->cyl1.dim.pos.z = this->cyl1.dim.pos.z + (s16)(Math_CosS(thisx->shape.rot.y) * 11.0f);
        this->cyl2.dim.pos.x = this->cyl2.dim.pos.x + (s16)(Math_SinS(thisx->shape.rot.y) * -18.0f);
        this->cyl2.dim.pos.z = this->cyl2.dim.pos.z + (s16)(Math_CosS(thisx->shape.rot.y) * -18.0f);
        CollisionCheck_SetAT(globalCtx2, &globalCtx2->colChkCtx, &this->cyl1.base);
        CollisionCheck_SetOC(globalCtx2, &globalCtx2->colChkCtx, &this->cyl1.base);
        CollisionCheck_SetOC(globalCtx2, &globalCtx2->colChkCtx, &this->cyl2.base);
        if (player->stateFlags1 & 1 && player->rideActor != NULL) {
            if (globalCtx2->sceneNum != SCENE_SPOT20 || (globalCtx2->sceneNum == SCENE_SPOT20 && (thisx->world.pos.z < -2400.0f))) {
                func_80A64578(this, globalCtx2);
            }
        }
        if (!(this->flags & 0x01000000)) {
            func_80A634A0(this, globalCtx2);
            func_80A62ACC(this, globalCtx2);
            if (thisx->world.pos.y < this->yFront && thisx->world.pos.y < this->yBack) {

                if (this->yBack < this->yFront) {
                    thisx->world.pos.y = this->yBack;
                } else {
                    thisx->world.pos.y = this->yFront;
                }
            }
            
        } else {
            this->flags &= 0xFEFFFFFF;
        }
        if (globalCtx2->sceneNum == SCENE_SPOT09 && (gSaveContext.eventChkInf[9] & 0xF) != 0xF) {
            func_80A5B450(this, globalCtx2);
        }
        thisx->focus.pos = thisx->world.pos;
        thisx->focus.pos.y += 70.0f;
        if ((Rand_ZeroOne() < 0.025f) && this->unk_37A == 0) {
            this->unk_37A++;
        } else {
            if (this->unk_37A > 0) {
                this->unk_37A++;
                if ((this->unk_37A) >= 4) {
                    this->unk_37A = 0;
                }
            }
        }
        if (thisx->speedXZ == 0.0f && !(this->flags & 0x00080000)) {
            thisx->colChkInfo.mass = 0xFF;
        } else {
            thisx->colChkInfo.mass = 0xFE;
        }
        if (thisx->speedXZ >= 5.0f) {
            this->cyl1.base.atFlags |= 1;
        } else {
            this->cyl1.base.atFlags &= 0xFFFE;
        }
        if (gSaveContext.entranceIndex != 343 || gSaveContext.sceneSetupIndex != 9) {
            if (this->dustSpawn & 1) {
                this->dustSpawn &= ~1;
                func_800287AC(globalCtx2, &this->unk_3CC, &dustVel, &dustAcc, EnHorse_RandFloat(100) + 200, EnHorse_RandFloat(10) + 30,
                              EnHorse_RandFloat(20) + 30);
            } else if (this->dustSpawn & 2) {
                this->dustSpawn &= ~2;
                func_800287AC(globalCtx2, &this->unk_3D8, &dustVel, &dustAcc, EnHorse_RandFloat(100) + 200, EnHorse_RandFloat(10) + 30,
                              EnHorse_RandFloat(20) + 30);
            } else if (this->dustSpawn & 4) {
                this->dustSpawn &= ~4;
                func_800287AC(globalCtx2, &this->unk_3E4, &dustVel, &dustAcc, EnHorse_RandFloat(100) + 200, EnHorse_RandFloat(10) + 30,
                              EnHorse_RandFloat(20) + 30);
            } else if (this->dustSpawn & 8) {
                this->dustSpawn &= ~8;
                func_800287AC(globalCtx2, &this->unk_3F0, &dustVel, &dustAcc, EnHorse_RandFloat(100) + 200, EnHorse_RandFloat(10) + 30,
                              EnHorse_RandFloat(20) + 30);
            }
        }
        this->flags &= ~0x8000000;
    }
}

/**
 * TODO
 */
s32 EnHorse_GetMountSide(EnHorse* this, GlobalContext* globalCtx, Player* player) {
    if (this->playerDir == PLAYER_DIR_SIDE_L) {
        return -1;
    }
    if (this->playerDir == PLAYER_DIR_SIDE_R) {
        return 1;
    }
    return 0;
}

/**
 * TODO
 */
s32 func_80A64F14(EnHorse* this, GlobalContext* globalCtx, Player* player) {
    s32 mountSide;

    if (Actor_WorldDistXZToActor(&this->actor, &player->actor) > 75.0f) {
        return 0;
    } else if (fabsf(this->actor.world.pos.y - player->actor.world.pos.y) > 30.0f) {
        return 0;
    } else if (Math_CosS((s16)(Actor_WorldYawTowardActor((Actor*)player, &this->actor) - player->actor.world.rot.y)) <
               0.17364818f) {
        return 0;
    } else {
        mountSide = EnHorse_GetMountSide(this, globalCtx, player);
        if (mountSide == -1) {
            return -1;
        }
        if (mountSide == 1) {
            return 1;
        }
    }
    return 0;
}

/**
 * TODO
 */
s32 func_80A65014(EnHorse* this, GlobalContext* globalCtx) {
    if (this->action != 2) {
        return 0;
    }
    if ((this->unk_210 != 0) && (this->unk_210 != 1)) {
        return 0;
    }
    return func_80A64F14(this, globalCtx, PLAYER);
}

/**
 * TODO
 */
void func_80A6506C(Vec3f* vec1, f32 arg2, Vec3f* vec2) {
    vec2->x = (Rand_ZeroOne() * (arg2 * 2.0f) + vec1->x) - arg2;
    vec2->y = (Rand_ZeroOne() * (arg2 * 2.0f) + vec1->y) - arg2;
    vec2->z = (Rand_ZeroOne() * (arg2 * 2.0f) + vec1->z) - arg2;
}

/**
 * TODO
 */
void func_80A65108(Actor* thisx, GlobalContext* globalCtx, PSkinAwb* skin) {
    EnHorse* this = THIS;
    s32 pad;
    Vec3f sp94 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp88 = { 5.0f, -4.0f, 5.0f };
    Vec3f sp7C = { 600.0f, -1670.0f, 0.0f };
    Vec3f sp70;
    Vec3f sp64 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp58 = { 0.0f, -1.0f, 0.0f };

    f32 frame = this->skin.skelAnime.curFrame;
    Vec3f center;
    Vec3f newCenter;
    s32 i;
    Vec3f sp2C;
    f32 sp28;

    if ((this->flags & 8) == 0) {
        func_800A6408(skin, 30, &sp7C, &this->unk_258);
        this->unk_258.x = this->unk_258.x - this->actor.world.pos.x;
        this->unk_258.y = this->unk_258.y - this->actor.world.pos.y;
        this->unk_258.z = this->unk_258.z - this->actor.world.pos.z;
    } else {
        this->flags &= ~8;
    }
    func_800A6408(skin, 13, &sp94, &sp2C);
    SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &sp2C, &this->unk_228, &sp28);
    if ((this->unk_210 == 0 && this->action != 0) && ((frame > 40.0f && frame < 45.0f && this->type == HORSE_EPONA) ||
                                                       (frame > 28.0f && frame < 33.0f && this->type == HORSE_HNI))) {
        if (Rand_ZeroOne() < 0.6f) {
            this->dustSpawn |= 1;
            func_800A6408(skin, 28, &sp88, &this->unk_3CC);
            this->unk_3CC.y = this->unk_3CC.y - 5.0f;
        }
    } else {
        if (this->action == 12) {
            if ((frame > 10.0f && frame < 13.0f) || (frame > 25.0f && frame < 33.0f)) {
                if (Rand_ZeroOne() < 0.7f) {
                    this->dustSpawn |= 2;
                    func_800A6408(skin, 20, &sp88, &sp70);
                    func_80A6506C(&sp70, 10.0f, &this->unk_3D8);
                }
                if (Rand_ZeroOne() < 0.7f) {
                    this->dustSpawn |= 1;
                    func_800A6408(skin, 28, &sp88, &sp70);
                    func_80A6506C(&sp70, 10.0f, &this->unk_3CC);
                }
            }

            if ((frame > 6.0f && frame < 10.0f) || (frame > 23.0f && frame < 29.0f)) {
                if (Rand_ZeroOne() < 0.7f) {
                    this->dustSpawn |= 8;
                    func_800A6408(skin, 37, &sp88, &sp70);
                    func_80A6506C(&sp70, 10.0f, &this->unk_3F0);
                }
            }

            if ((frame > 7.0f && frame < 14.0f) || (frame > 26.0f && frame < 30.0f)) {
                if (Rand_ZeroOne() < 0.7f) {
                    this->dustSpawn |= 4;
                    func_800A6408(skin, 45, &sp88, &sp70);
                    func_80A6506C(&sp70, 10.0f, &this->unk_3E4);
                }
            }
        } else if (this->unk_210 == 6) {
            if ((frame > 14.0f) && (frame < 16.0f)) {
                this->dustSpawn |= 1;
                func_800A6408(skin, 28, &sp88, &sp70);
                func_80A6506C(&sp70, 5.0f, &this->unk_3CC);
            } else if (frame > 8.0f && frame < 10.0f) {
                this->dustSpawn |= 2;
                func_800A6408(skin, 20, &sp88, &sp70);
                func_80A6506C(&sp70, 10.0f, &this->unk_3D8);
            } else if (frame > 1.0f && frame < 3.0f) {
                this->dustSpawn |= 4;
                func_800A6408(skin, 45, &sp88, &sp70);
                func_80A6506C(&sp70, 10.0f, &this->unk_3E4);
            } else if ((frame > 26.0f) && (frame < 28.0f)) {
                this->dustSpawn |= 8;
                func_800A6408(skin, 37, &sp88, &sp70);
                func_80A6506C(&sp70, 10.0f, &this->unk_3F0);
            }
        } else if (this->action == 14 && frame > 6.0f && Rand_ZeroOne() < 1.0f - (frame - 6.0f) * 0.05882353f) {
            if (Rand_ZeroOne() < 0.5f) {
                this->dustSpawn |= 8;
                func_800A6408(skin, 37, &sp88, &sp70);
                func_80A6506C(&sp70, 10.0f, &this->unk_3F0);
            }
            if (Rand_ZeroOne() < 0.5f) {
                this->dustSpawn |= 4;
                func_800A6408(skin, 45, &sp88, &sp70);
                func_80A6506C(&sp70, 10.0f, &this->unk_3E4);
            }
        } else if (this->action == 15 && frame > 5.0f && Rand_ZeroOne() < 1.0f - (frame - 5.0f) * 0.04f) {
            if (Rand_ZeroOne() < 0.5f) {
                this->dustSpawn |= 8;
                func_800A6408(skin, 37, &sp88, &sp70);
                func_80A6506C(&sp70, 10.0f, &this->unk_3F0);
            }
            if (Rand_ZeroOne() < 0.5f) {
                this->dustSpawn |= 4;
                func_800A6408(skin, 45, &sp88, &sp70);
                func_80A6506C(&sp70, 10.0f, &this->unk_3E4);
            }
        } else if (this->action == 16 && Rand_ZeroOne() < 0.5f) {
            if (Rand_ZeroOne() < 0.5f) {
                this->dustSpawn |= 8;
                func_800A6408(skin, 37, &sp88, &sp70);
                func_80A6506C(&sp70, 10.0f, &this->unk_3F0);
            } else {
                this->dustSpawn |= 4;
                func_800A6408(skin, 45, &sp88, &sp70);
                func_80A6506C(&sp70, 10.0f, &this->unk_3E4);
            }
        }
    }

    for (i = 0; i < this->jntSph.count; i++) {
        center.x = this->jntSph.elements[i].dim.modelSphere.center.x;
        center.y = this->jntSph.elements[i].dim.modelSphere.center.y;
        center.z = this->jntSph.elements[i].dim.modelSphere.center.z;

        func_800A6408(skin, this->jntSph.elements[i].dim.limb, &center, &newCenter);
        this->jntSph.elements[i].dim.worldSphere.center.x = newCenter.x;
        this->jntSph.elements[i].dim.worldSphere.center.y = newCenter.y;
        this->jntSph.elements[i].dim.worldSphere.center.z = newCenter.z;
        this->jntSph.elements[i].dim.worldSphere.radius =
            this->jntSph.elements[i].dim.modelSphere.radius * this->jntSph.elements[i].dim.scale;
    }

    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->jntSph.base);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->jntSph.base);
}

static s32 unk_80A667DC[] = { 0, 3, 7, 14 };
static UNK_PTR D_80A667EC[] = { 0x06009F80, 0x0600A180, 0x0600A380 };
static u8 D_80A667F8[] = { 0, 1, 2, 1 };

/**
 * TODO
 */
s32 func_80A65C00(Actor* thisx, GlobalContext* globalCtx, s32 arg2, s32 arg3) {
    EnHorse* this = THIS;
    s32 sp48;

    sp48 = 1;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_horse.c", 8582);
    if (arg2 == 13 && this->type == HORSE_EPONA) {
        u8 index = D_80A667F8[this->unk_37A];
        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80A667EC[index]));
    } else if (this->type == HORSE_HNI && this->flags & 0x40000 && arg2 == 30) {
        func_800A5F60(globalCtx->state.gfxCtx, &this->skin, arg2, D_06006530, 0);
        sp48 = 0;
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_horse.c", 8601);
    return sp48;
}

/**
 * TODO
 */
void EnHorse_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnHorse* this = THIS;

    if ((this->flags & 0x2000) == 0) {
        func_80093D18(globalCtx->state.gfxCtx);
        this->flags |= 0x8000000;
        if (this->flags & 4) {
            func_800A6360(this, globalCtx, &this->skin, &func_80A65108, &func_80A65C00, 0);
        } else {
            func_800A6360(this, globalCtx, &this->skin, &func_80A65108, &func_80A65C00, 1);
        }
        if (this->unk_244 != 0) {
            this->unk_244(this, globalCtx);
        }
    }
}
