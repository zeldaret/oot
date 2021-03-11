#include "z_boss_tw.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0x00000035

#define THIS ((BossTw*)thisx)

typedef struct {
    /* 0x0000 */ u8 type;
    /* 0x0001 */ u8 frame;
    /* 0x0004 */ Vec3f pos;
    /* 0x0010 */ Vec3f curSpeed;
    /* 0x001C */ Vec3f accel;
    /* 0x0028 */ Color_RGB8 color;
    /* 0x002C */ s16 alpha;
    /* 0x002E */ s16 args;
    /* 0x0030 */ s16 unk_30;    
    /* 0x0034 */ f32 scale;
    /* 0x0038 */ f32 dist; // dist? 
    /* used as roll for all types except type = 7, which is used as yaw */
    /* 0x003C */ f32 roll; // roll
    /* 0x0040 */ f32 yaw; // yaw
    /* 0x0044 */ Actor* unk_44;
} BossTwEEffect;

typedef enum {
    TW_KOTAKE,
    TW_KOUME,
    TW_TWINROVA,
    TW_FIRE_BLAST = 0x64,
    TW_FIRE_BLAST_GROUND,
    TW_ICE_BLAST,
    TW_ICE_BLAST_GROUND
} TwinrovaType;

typedef enum { BEAM_STATE_CHARGING = -1, BEAM_STATE_SHOOTING, BEAM_STATE_REFLECTING } TwinrovaBeamState;

void BossTw_Init(Actor* thisx, GlobalContext* globalCtx);
void BossTw_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossTw_Update(Actor* thisx, GlobalContext* globalCtx);
void BossTw_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_80949CE4(BossTw* this, GlobalContext* globalCtx, u8 arg2);
void func_8094A1C0(BossTw* this, GlobalContext* globalCtx);
void func_80948668(GlobalContext* globalCtx);
void func_8094A740(BossTw* this, GlobalContext* globalCtx);
void func_8094A398(BossTw* this, GlobalContext* globalCtx);
void func_8094A12C(BossTw* this, GlobalContext* globalCtx);
void func_8094A0C4(BossTw* this, GlobalContext* globalCtx);
void func_8094A6D8(BossTw* this, GlobalContext* globalCtx);
void func_8094A1C0(BossTw* this, GlobalContext* globalCtx);
void func_80949C4C(BossTw* this, GlobalContext* globalCtx);
void func_80949BFC(BossTw* this, GlobalContext* globalCtx);
void func_80949920(BossTw* this, GlobalContext* globalCtx);
void func_809496D0(BossTw* this, GlobalContext* globalCtx);
void func_809495A4(BossTw* this, GlobalContext* globalCtx);
s32 func_809416D0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
void func_80941788(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);
void func_80939070(GlobalContext*, Vec3f*, Vec3f*, Vec3f*, f32, s16);
void func_8093F9E4(BossTw* this, GlobalContext* globalCtx);
void func_8093D5C0(BossTw* this, GlobalContext* globalCtx);
void BossTw_CSWait(BossTw* this, GlobalContext* globalCtx);
void func_8093D444(BossTw* this, GlobalContext* globalCtx);
void func_8093C910(BossTw* this, GlobalContext* globalCtx);
void func_8093C8F4(BossTw* this, GlobalContext* globalCtx);
void func_8093C7E4(BossTw* this, GlobalContext* globalCtx);
void func_8093C700(BossTw* this, GlobalContext* globalCtx);
void func_8093C5F4(BossTw* this, GlobalContext* globalCtx);
void func_8093C58C(BossTw* this, GlobalContext* globalCtx);
void func_8093C1C4(BossTw* this, GlobalContext* globalCtx);
void func_8093C164(BossTw* this, GlobalContext* globalCtx);
void func_8093C25C(BossTw* this, GlobalContext* globalCtx);
void func_8093C25C(BossTw* this, GlobalContext* globalCtx);
void func_8093C2C4(BossTw* this, GlobalContext* globalCtx);
void func_80939338(GlobalContext* globalCtx, f32 arg1, s16 arg2);
void BossTw_AddDotEffect(GlobalContext* globalCtx, Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, s16 arg4, s16 arg5);
void BossTw_TwinrovaWaitForMerge(BossTw* this, GlobalContext* globalCtx);
void BossTw_ShootBeam(BossTw* this, GlobalContext* globalCtx);
void func_8093A2AC(BossTw* this, GlobalContext* globalCtx);
void BossTw_SetupShootBeam(BossTw* this, GlobalContext* globalCtx);
void BossTw_ShootBeam(BossTw* this, GlobalContext* globalCtx);
void func_80939F88(BossTw* this, GlobalContext* globalCtx);
void func_80940D48(Actor* thisx, GlobalContext* globalCtx);
void BossTw_TwinrovaDraw(Actor* thisx, GlobalContext* globalCtx);
void BossTw_TwinrovaSetupWaitForMerge(BossTw* this, GlobalContext* globalCtx);
void BossTw_TwinrovaSetupPlayIntro(BossTw* this, GlobalContext* globalCtx);
void func_8093A0A8(BossTw* this, GlobalContext* globalCtx);
void BossTw_SetupCSWait(BossTw* this, GlobalContext* globalCtx);
void BossTw_BlastUpdate(Actor* thisx, GlobalContext* globalCtx);
void BossTw_BlastDraw(Actor* thisx, GlobalContext* globalCtx);
void func_809453EC(BossTw* this, GlobalContext* globalCtx);
void func_80945D14(BossTw* this, GlobalContext* globalCtx);
void func_8093EE10(BossTw* this, GlobalContext* globalCtx);
void func_80947240(Actor* thisx, GlobalContext* globalCtx);
void func_80949E10(BossTw* this, GlobalContext* globalCtx);
void func_8094A660(BossTw* this, GlobalContext* globalCtx);
void func_809499AC(BossTw* this, GlobalContext* globalCtx);
void func_80949734(BossTw* this, GlobalContext* globalCtx);
void func_8094A608(BossTw* this, GlobalContext* globalCtx);
void func_809477E0(GlobalContext* globalCtx);

const ActorInit Boss_Tw_InitVars = {
    ACTOR_BOSS_TW,
    ACTORCAT_BOSS,
    FLAGS,
    OBJECT_TW,
    sizeof(BossTw),
    (ActorFunc)BossTw_Init,
    (ActorFunc)BossTw_Destroy,
    (ActorFunc)BossTw_Update,
    (ActorFunc)BossTw_Draw,
};

Vec3f D_8094A7D0 = { 0.0f, 0.0f, 1000.0f };
Vec3f sZeroVector = { 0.0f, 0.0f, 0.0f };

ColliderCylinderInit sCylinderInitBlasts = {
    { COLTYPE_NONE, 0x39, 0x09, 0x09, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x30 }, { 0x00100000, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
    { 25, 35, -17, { 0, 0, 0 } },
};

ColliderCylinderInit sCylinderInitKoumeKotake = {
    { COLTYPE_HIT3, 0x11, 0x09, 0x09, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
    { 45, 120, -30, { 0, 0, 0 } },
};

ColliderCylinderInit sCylinderInitTwinrova = {
    { COLTYPE_HIT3, 0x11, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x05, 0x01 },
    { 45, 120, -30, { 0, 0, 0 } },
};

Vec3f D_8094A86C[] = {
    { 580.0f, 380.0f, 0.0f },
    { 0.0f, 380.0f, 580.0f },
    { -580.0f, 380.0f, 0.0f },
    { 0.0f, 380.0f, -580.0f },
};

u8 twInitalized = 0;

InitChainEntry D_8094A8A0[] = {
    ICHAIN_U8(targetMode, 5, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 0, ICHAIN_STOP),
};

Vec3f D_8094A8AC[] = {
    { 600.0f, 400.0f, 0.0f },
    { 0.0f, 400.0f, 600.0f },
    { -600.0f, 400.0f, 0.0f },
    { 0.0f, 400.0f, -600.0f },
};

Vec3f D_8094A8DC = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094A8E8 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094A8F4 = { 0.0f, 0.0f, 0.0f };

s16 D_8094A900[] = {
    0x0000, 0x0001, 0x0002, 0x0002, 0x0001, 0x0000,
};
s16 D_8094A90C[] = {
    0x0000, 0x0001, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0002, 0x0001, 0x0000,
};
Vec3f D_8094A920 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094A92C = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094A938 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094A944 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094A950 = { 0.0f, 2000.0f, -2000.0f };

Vec3f D_8094A95C[] = { { 0.0f, 0.0f, -10000.0f },
                       { 0.0f, 0.0f, -8000.0f },
                       { 0.0f, 0.0f, -9000.0f },
                       { 0.0f, 0.0f, -11000.0f },
                       { 0.0f, 0.0f, -12000.0f } };

UNK_PTR D_8094A998[] = {
    0x0600A438,
    0x0600B238,
    0x0600B638,
};

Vec3f D_8094A9A4 = { 0.0f, 200.0f, 2000.0f };

Gfx* D_8094A9B0[] = {
    0x0602A9B0,
    0x0602A070,
    0x0602A470,
};

Vec3f D_8094A9BC = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094A9C8 = { 0.0f, 2000.0f, -2000.0f };
Vec3f D_8094A9D4 = { 13000.0f, 0.0f, 0.0f };
Vec3f D_8094A9E0 = { 13000.0f, 0.0f, 0.0f };
Vec3f D_8094A9EC = { 0.0f, 200.0f, 2000.0f };
Vec3f D_8094A9F8 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094AA04 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094AA10 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094AA1C = { 0.0f, 0.0f, 0.0f };

Color_RGB8 D_8094AA28[] = {
    { 255, 128, 0 },
    { 255, 0, 0 },
    { 255, 255, 0 },
    { 255, 0, 0 },
    { 100, 100, 100 },
    {
        255,
        255,
        255,
    },
    { 150, 150, 150 },
    { 255, 255, 255 },
};

Vec3f D_8094AA40 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8094AA4C = { 0.0f, 0.0f, 0.0f };

s8 sEnvType;
u8 D_8094C841;
BossTw* kotakePtr;
BossTw* koumePtr;
BossTw* twinrovaPtr;
u8 D_8094C850;
u8 D_8094C851;
f32 D_8094C854;
f32 D_8094C858;
u8 D_8094C85C;
u8 D_8094C85D;
u8 D_8094C85E;
u8 D_8094C85F;
Vec3f D_8094C860;
s16 D_8094C86C;
u8 sBeamDivertTimer;
u8 D_8094C86F;
u8 D_8094C870;
s16 D_8094C872;
u16 D_8094C874;
s16 D_8094C876;
u8 D_8094C878;
s16 D_8094C87A;
s16 D_8094C87C;
s8 D_8094C87E;
BossTwEEffect sTWEffects[150];
s32 D_8094F2B0;
s32 D_8094F2B4;
s32 D_8094F2B8;


extern FlexSkeletonHeader D_060070E0;
extern AnimationHeader D_06006F28;
extern AnimationHeader D_6006F28;
extern FlexSkeletonHeader D_601F888;
extern Gfx D_0602A9B0[];
extern Gfx D_0602A070[];
extern Gfx D_0602A470[];
extern UNK_TYPE D_0600A438;
extern UNK_TYPE D_0600B238;
extern UNK_TYPE D_0600B638;
extern AnimationHeader D_0603A2D0;
extern AnimationHeader D_06032BF8;
extern AnimationHeader D_06032BF8;
extern AnimationHeader D_06032BF8;
extern AnimationHeader D_06035988;
extern AnimationHeader D_060343B4;
extern AnimationHeader D_06035030;
extern AnimationHeader D_060338F0;
extern AnimationHeader D_06024374;
extern AnimationHeader D_06032BF8;
extern AnimationHeader D_06023750;
extern AnimationHeader D_06022700;
extern AnimationHeader D_06036FBC;
extern AnimationHeader D_06032BF8;
extern Gfx D_0601A528[];
extern Gfx D_0601A998[];
extern Gfx D_0601AB00[];
extern Gfx D_0601A430[];
extern Gfx D_0601A790[];
extern Gfx D_0601AA50[];
extern Gfx D_0601A5A8[];
extern Gfx D_0601AB00[];
extern Gfx D_0601A998[];
extern Gfx D_0601A998[];
extern Gfx D_0601ABB0[];
extern Gfx D_0601A430[];
extern Gfx D_0601AB00[];
extern Gfx D_0601F390[];
extern Gfx D_0601F238[];
extern Gfx D_0601EEB0[];
extern Gfx D_0601EC68[];
extern Gfx D_0601E0E0[];
extern Gfx D_0601E020[];
extern Gfx D_0601E3A0[];
extern Gfx D_0601E2C0[];
extern Gfx D_0601E9F0[];
extern Gfx D_0602D940[];
extern Gfx D_0602D890[];
extern Gfx D_0601CEE0[];
extern Gfx D_0601DBE8[];
extern Gfx D_0601A998[];
extern Gfx D_0601A430[];
extern Gfx D_06019D40[];
extern Gfx D_06018FC0[];
extern Gfx D_06019938[];
extern Gfx D_0601BC00[];
extern Gfx D_0601C1C0[];
extern Gfx D_0601A790[];
extern Gfx D_06013E98[];
extern Gfx D_06013F98[];
extern Gfx D_06014070[];
extern Gfx D_06014158[];
extern Gfx D_06013AE8[];
extern Gfx D_06013D68[];
extern Gfx D_06012CE0[];
extern Gfx D_060134B8[];
extern Gfx D_06012B38[];
extern Gfx D_06013310[];
extern AnimationHeader D_060216DC;
extern AnimationHeader D_0600230C;
extern AnimationHeader D_06001D10;
extern AnimationHeader D_060017E0;
extern AnimationHeader D_060012A4;
extern AnimationHeader D_06024374;
extern AnimationHeader D_060004A4;
extern AnimationHeader D_06000AAC;
extern AnimationHeader D_060088C8;
extern AnimationHeader D_06006F28;
extern AnimationHeader D_060004A4;
extern AnimationHeader D_06006F28;
extern AnimationHeader D_060088C8;
extern UNK_TYPE D_0602E170[];
extern AnimationHeader D_060004A4;
extern AnimationHeader D_06038E2C;
extern AnimationHeader D_06032BF8;
extern AnimationHeader D_06006F28;
extern AnimationHeader D_06007CA8;
extern AnimationHeader D_060088C8;
extern AnimationHeader D_06006530;
extern AnimationHeader D_0600578C;
extern AnimationHeader D_06004548;
extern AnimationHeader D_06009398;
extern AnimationHeader D_06003614;
extern AnimationHeader D_06003E34;
extern AnimationHeader D_06007688;
extern FlexSkeletonHeader D_06032020;
extern AnimationHeader D_060244B4;
extern AnimationHeader D_060244B4;

typedef enum { EFF_FREE, EFF_DOT, EFF_FLAME } BossTwParticleType;

// makes a dot.
void BossTw_AddDotEffect(GlobalContext* globalCtx, Vec3f* initalPos, Vec3f* initalSpeed, Vec3f* accel, f32 scale,
                         s16 args, s16 effCnt) {
    s16 i;
    BossTwEEffect* dot;
    for (i = 0, dot = globalCtx->actorEffects; i < effCnt; i++, dot++) {
        if (dot->type == EFF_FREE) {
            dot->type = EFF_DOT;
            dot->pos = *initalPos;
            dot->curSpeed = *initalSpeed;
            dot->accel = *accel;
            dot->scale = scale / 1000.0f;
            dot->alpha = 0xFF;
            dot->frame = (s16)Rand_ZeroFloat(10.0f);
            dot->args = args;
            return;
        }
    }
}

void func_80938DC4(GlobalContext* globalCtx, s16 type, Vec3f* initialPos, Vec3f* initalSpeed, Vec3f* accel, f32 scale,
                   s16 alpha, s16 args, s16 effCnt) {
    s16 i;
    BossTwEEffect* dot;
    for (i = 0, dot = globalCtx->actorEffects; i < effCnt; i++, dot++) {
        if (dot->type == 0) {
            dot->type = type;
            dot->pos = *initialPos;
            dot->curSpeed = *initalSpeed;
            dot->accel = *accel;
            dot->scale = scale / 1000.0f;
            dot->args = args;
            dot->alpha = alpha;
            dot->frame = (s16)Rand_ZeroFloat(100.0f);
            return;
        }
    }
}

// makes an O
void BossTw_AddRingEffect(GlobalContext* globalCtx, Vec3f* initalPos, f32 scale, f32 arg3, s16 alpha, s16 args,
                          s16 arg6, s16 arg7) {
    s16 i;
    BossTwEEffect* dot;

    for (i = 0, dot = globalCtx->actorEffects; i < arg7; i++, dot++) {
        if (dot->type == 0) {
            dot->type = 4;
            dot->pos = *initalPos;
            dot->curSpeed = sZeroVector;
            dot->accel = sZeroVector;
            dot->scale = scale * 0.0025f;
            dot->dist = arg3 * 0.0025f;
            dot->args = args;
            dot->unk_30 = arg6;
            dot->alpha = alpha;
            dot->roll = Rand_ZeroFloat(M_PI);
            dot->frame = 0;
            return;
        }
    }
}

void func_80938FC4(GlobalContext* globalCtx, s32 arg1) {
    BossTwEEffect* dot;
    s16 i;

    for (dot = globalCtx->actorEffects, i = 0; i < ARRAY_COUNT(sTWEffects); i++, dot++) {
        if (dot->type == 0) {
            dot->type = 5;
            dot->curSpeed = sZeroVector;
            dot->accel = sZeroVector;
            dot->frame = 0;
            dot->unk_44 = arg1;
            dot->dist = 0.0f;
            dot->scale = 0.0f;
            dot->roll = 0.0f;
            if (arg1 == 0) {
                dot->args = 0x64;
            } else {
                dot->args = 0x14;
            }
            return;
        }
    }
}

// makes a flame again?
void func_80939070(GlobalContext* globalCtx, Vec3f* initalPos, Vec3f* initalSpeed, Vec3f* accel, f32 scale, s16 args) {
    s16 i;
    BossTwEEffect* dot;
    for (i = 0, dot = globalCtx->actorEffects; i < ARRAY_COUNT(sTWEffects); i++, dot++) {
        if (dot->type == 0) {
            dot->type = 6;
            dot->pos = *initalPos;
            dot->curSpeed = *initalSpeed;
            dot->accel = *accel;
            dot->scale = scale / 1000.0f;
            dot->args = args;
            dot->unk_30 = 0;
            dot->alpha = 0;
            dot->frame = (s16)Rand_ZeroFloat(1000.0f);
            return;
        }
    }
}

void func_80939148(GlobalContext* globalCtx, Vec3f* initialPos, f32 scale, f32 dist, s16 args) {
    s16 i;
    BossTwEEffect* dot;
    for (i = 0, dot = globalCtx->actorEffects; i < ARRAY_COUNT(sTWEffects); i++, dot++) {
        if (dot->type == 0) {
            dot->type = 7;
            dot->pos = *initialPos;
            dot->curSpeed = sZeroVector;
            dot->accel = sZeroVector;
            dot->scale = scale / 1000.0f;
            dot->args = args;
            dot->unk_30 = 0;
            dot->dist = dist;
            dot->roll = Rand_ZeroFloat(2.0f * M_PI);
            dot->alpha = 0;
            dot->frame = (s16)Rand_ZeroFloat(1000.0f);
            return;
        }
    }
}

// more flame
void func_80939250(GlobalContext* globalCtx, Vec3f* initalPos, Vec3f* initalSpeed, Vec3f* accel, f32 scale, f32 arg5,
                   s16 alpha, s16 args) {
    s16 i;
    BossTwEEffect* dot;
    for (i = 0, dot = globalCtx->actorEffects; i < ARRAY_COUNT(sTWEffects); i++, dot++) {
        if (dot->type == 0) {
            dot->type = 8;
            dot->pos = *initalPos;
            dot->curSpeed = *initalSpeed;
            dot->accel = *accel;
            dot->scale = scale / 1000.0f;
            dot->dist = arg5 / 1000.0f;
            dot->args = args;
            dot->unk_30 = 0;
            dot->alpha = alpha;
            dot->frame = (s16)Rand_ZeroFloat(1000.0f);
            return;
        }
    }
}

void func_80939338(GlobalContext* globalCtx, f32 arg1, s16 arg2) {
    s16 i;
    s16 j;
    BossTwEEffect* dot;
    Player* player = PLAYER;

    D_8094C860 = player->bodyPartsPos[15];
    D_8094C86C = player->actor.shape.rot.y;
    for (i = 0; i < 8; i++) {
        for (dot = globalCtx->actorEffects, j = 0; j < ARRAY_COUNT(sTWEffects); j++, dot++) {
            if (dot->type == 0) {
                dot->type = 9;
                dot->pos = D_8094C860;
                dot->curSpeed = sZeroVector;
                dot->accel = sZeroVector;
                dot->roll = i * 0.7853982f;
                dot->yaw = 1.5707964f;
                dot->dist = 0.0f;
                dot->scale = arg1 / 1000.0f;
                dot->args = arg2;
                dot->unk_30 = 0;
                dot->alpha = 0xFF;
                dot->frame = (s16)Rand_ZeroFloat(1000.0f);
                break;
            }
        }
    }
}

void func_809394FC(GlobalContext* globalCtx, f32 arg1, s16 arg2) {
    s16 i, j;
    BossTwEEffect* dot;
    Player* player = PLAYER;

    D_8094C860 = player->bodyPartsPos[15];
    D_8094C86C = player->actor.shape.rot.y;
    for (i = 0; i < 8; i++) {
        for (dot = globalCtx->actorEffects, j = 0; j < ARRAY_COUNT(sTWEffects); j++, dot++) {
            if (dot->type == 0) {
                dot->type = 10;
                dot->pos = D_8094C860;
                dot->curSpeed = sZeroVector;
                dot->accel = sZeroVector;
                dot->roll = i * (2.0f * M_PI / 8.0f);
                dot->yaw = 1.5707964f;
                dot->dist = 0.0f;
                dot->scale = arg1 / 1000.0f;
                dot->args = arg2;
                dot->unk_30 = 0;
                dot->alpha = 0xFF;
                dot->frame = (s16)Rand_ZeroFloat(1000.0f);
                break;
            }
        }
    }
}

#ifdef NON_MATCHING
void BossTw_Init(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    BossTw* this = THIS;
    s16 phi_v0;

    Actor_ProcessInitChain(&this->actor, D_8094A8A0);
    ActorShape_Init(&this->actor.shape, 0, NULL, 0);
    if (this->actor.params >= TW_FIRE_BLAST) {
        // Blasts
        Actor_SetScale(&this->actor, 0.01f);
        this->actor.update = BossTw_BlastUpdate;
        this->actor.draw = BossTw_BlastDraw;
        this->actor.flags &= ~1;

        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInitBlasts);

        if (this->actor.params == TW_FIRE_BLAST || this->actor.params == TW_FIRE_BLAST_GROUND) {
            this->actionFunc = func_809453EC;
            this->collider.info.toucher.effect = 1;
        } else if (this->actor.params == TW_ICE_BLAST || this->actor.params == TW_ICE_BLAST_GROUND) {
            this->actionFunc = func_80945D14;
        } else if (this->actor.params >= 0x68) {
            this->actionFunc = func_8093EE10;
            this->actor.draw = func_80947240;
            this->unk_1AC = 128.0f;
            if (thisx->params == 0x68) {
                thisx->world.rot.y = twinrovaPtr->actor.world.rot.y + 0x4000;
            } else {
                thisx->world.rot.y = twinrovaPtr->actor.world.rot.y - 0x4000;
            }
        }
        this->timers[1] = 150;
        return;
    }

    Actor_SetScale(&this->actor, 0.0249999985099f);
    this->actor.colChkInfo.mass = 255;
    this->actor.colChkInfo.health = 0;
    Collider_InitCylinder(globalCtx, &this->collider);

    if (!twInitalized) {
        twInitalized = 1;
        globalCtx->envCtx.unk_BF = 1;
        globalCtx->envCtx.unk_BE = 1;
        globalCtx->envCtx.unk_BD = 1;
        globalCtx->envCtx.unk_D8 = 0.0f;

        D_8094C874 = D_8094C876 = D_8094C878 = D_8094C87A = D_8094C87C = D_8094C87E = D_8094C851 = D_8094C841 =
            D_8094C85F = D_8094C85C = D_8094C85E = D_8094C850 = D_8094C86F = sBeamDivertTimer = D_8094C872 = sEnvType =
                0;

        D_8094C858 = D_8094C854 = 0.0f;
        D_8094C85D = Rand_ZeroFloat(1.99f);
        globalCtx->actorEffects = sTWEffects;
        for (phi_v0 = 0; phi_v0 < ARRAY_COUNT(sTWEffects); phi_v0++) {
            sTWEffects[phi_v0].type = 0;
        }
    }

    if (this->actor.params == 0) {
        // Kotake
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInitKoumeKotake);
        this->actor.naviEnemyId = 0x33;
        SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_060070E0, &D_06006F28, NULL, NULL, 0);
        if (gSaveContext.eventChkInf[7] & 0x20) {
            // began twinrova battle
            func_8093A0A8(this, globalCtx);
            this->actor.world.pos.x = -600.0f;
            this->actor.world.pos.y = 400.0f;
            this->actor.world.pos.z = 0.0f;
            Audio_SetBGM(0x1B);
        } else {
            BossTw_SetupCSWait(this, globalCtx);
        }
        Animation_MorphToLoop(&this->skelAnime, &D_6006F28, -3.0f);
        this->unk_564 = 1;
    } else if (this->actor.params == 1) {
        // Koume
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInitKoumeKotake);
        this->actor.naviEnemyId = 0x32;
        SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_601F888, &D_6006F28, NULL, NULL, 0);
        if (gSaveContext.eventChkInf[7] & 0x20) {
            // began twinrova battle
            func_8093A0A8(this, globalCtx);
            this->actor.world.pos.x = 600.0f;
            this->actor.world.pos.y = 400.0f;
            this->actor.world.pos.z = 0.0f;
        } else {
            BossTw_SetupCSWait(this, globalCtx);
        }
        Animation_MorphToLoop(&this->skelAnime, &D_6006F28, -3.0f);
        this->unk_564 = 1;
    } else {
        // Twinrova
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInitTwinrova);
        this->actor.naviEnemyId = 0x5B;
        this->actor.colChkInfo.health = 0x18;
        this->actor.update = func_80940D48;
        this->actor.draw = BossTw_TwinrovaDraw;
        SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06032020, &D_060244B4, NULL, NULL, 0);
        Animation_MorphToLoop(&this->skelAnime, &D_060244B4, -3.0f);
        if (gSaveContext.eventChkInf[7] & 0x20) {
            // began twinrova battle
            BossTw_TwinrovaSetupWaitForMerge(this, globalCtx);
        } else {
            BossTw_TwinrovaSetupPlayIntro(this, globalCtx);
            this->actor.world.pos.x = 0.0f;
            this->actor.world.pos.y = 1000.0f;
            this->actor.world.pos.z = 0.0f;
        }
        this->actor.params = 2;
        twinrovaPtr = this;
        if (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) {
            // twinrova has been defeated.
            Actor_Kill(&this->actor);
            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, 600.0f, 230.0f, 0.0f, 0,
                               0, 0, 0xFFFF);
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, -600.0f, 230.0f, 0.0f, 0, 0, 0, 0);
        } else {
            kotakePtr = (BossTw*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_TW,
                                           this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, 0,
                                           0, 0, TW_KOTAKE);
            koumePtr = (BossTw*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_TW,
                                          this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, 0,
                                          0, 0, TW_KOUME);
            kotakePtr->actor.parent = &koumePtr->actor;
            koumePtr->actor.parent = &kotakePtr->actor;
        }
    }
    this->fogR = globalCtx->lightCtx.unk_07;
    this->fogG = globalCtx->lightCtx.unk_08;
    this->fogB = globalCtx->lightCtx.unk_09;
    this->fogMin = globalCtx->lightCtx.unk_0A;
    this->fogMax = 1000.0f;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/BossTw_Init.s")
#endif
#undef NON_MATCHING

void BossTw_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BossTw* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
    if (thisx->params < 0x64) {
        SkelAnime_Free(&this->skelAnime, globalCtx);
    }

    if (thisx->params == 2) {
        twInitalized = 0;
    }
}

void func_80939F40(BossTw* this, GlobalContext* globalCtx) {
    BossTw* parent = (BossTw*)this->actor.parent;

    this->actionFunc = func_80939F88;

    if ((parent != NULL) && (parent->actionFunc == BossTw_ShootBeam)) {
        this->timers[0] = 40;
    } else {
        this->timers[0] = 60;
    }
    this->unk_4C8 = 0.0f;
}

// turn towards link.
void func_80939F88(BossTw* this, GlobalContext* globalCtx) {
    BossTw* parent = (BossTw*)this->actor.parent;

    SkelAnime_Update(&this->skelAnime);
    Math_ApproachF(&this->actor.speedXZ, 0.0f, 1.0f, 1.0f);
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, this->unk_4C8);
    Math_ApproachS(&this->actor.shape.rot.x, 0, 5, this->unk_4C8);
    Math_ApproachF(&this->unk_4C8, 4096.0f, 1.0f, 200.0f);
    func_8002D908(&this->actor);
    func_8002D7EC(&this->actor);
    if (this->timers[0] == 0) {
        if (parent->actionFunc != BossTw_ShootBeam) {
            if (this->unk_15E != 0) {
                this->unk_15E = 0;
                BossTw_SetupShootBeam(this, globalCtx);
                this->actor.speedXZ = 0.0f;
                return;
            }
        }
        func_8093A0A8(this, globalCtx);
    }
}

// decide on action.
void func_8093A0A8(BossTw* this, GlobalContext* globalCtx) {
    BossTw* parent = (BossTw*)this->actor.parent;

    this->unk_5F8 = 1;
    this->actor.flags |= 1;
    this->actionFunc = func_8093A2AC;
    this->unk_4C8 = 0.0f;
    Animation_MorphToLoop(&this->skelAnime, &D_06006F28, -10.0f);
    if ((Rand_ZeroOne() < 0.5f) && (parent != NULL && parent->actionFunc == BossTw_ShootBeam)) {
        this->targetPos.x = parent->actor.world.pos.x + Rand_CenteredFloat(200.0f);
        this->targetPos.y = Rand_ZeroFloat(200.0f) + 340.0f;
        this->targetPos.z = parent->actor.world.pos.z + Rand_CenteredFloat(200.0f);
        this->timers[0] = (s16)Rand_ZeroFloat(50.0f) + 50;
    } else if (Rand_ZeroOne() < 0.5f) {
        this->targetPos.x = Rand_CenteredFloat(800.0f);
        this->targetPos.y = Rand_ZeroFloat(200.0f) + 340.0f;
        this->targetPos.z = Rand_CenteredFloat(800.0f);
        this->timers[0] = (s16)Rand_ZeroFloat(50.0f) + 50;

    } else {
        s16 idx = Rand_ZeroFloat(3.99f);
        this->targetPos = D_8094A8AC[idx];
        this->timers[0] = 200;
        this->unk_15E = 1;
    }
}

// Fly around until timer hits 0
void func_8093A2AC(BossTw* this, GlobalContext* globalCtx) {
    f32 xDiff;
    f32 yDiff;
    f32 zDiff;
    f32 pitch;
    f32 yaw;
    f32 xzDist;

    Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_FLY & ~SFX_FLAG);
    Math_ApproachF(&this->unk_4D0, 0.0f, 1.0f, 10.0f);
    SkelAnime_Update(&this->skelAnime);
    xDiff = this->targetPos.x - this->actor.world.pos.x;
    yDiff = this->targetPos.y - this->actor.world.pos.y;
    zDiff = this->targetPos.z - this->actor.world.pos.z;
    yaw = (s16)(Math_FAtan2F(xDiff, zDiff) * 10430.378f);
    xzDist = sqrtf(SQ(xDiff) + SQ(zDiff));
    pitch = (s16)(Math_FAtan2F(yDiff, xzDist) * 10430.378f);
    Math_ApproachS(&this->actor.world.rot.x, pitch, 0xA, this->unk_4C8);
    Math_ApproachS(&this->actor.world.rot.y, yaw, 0xA, this->unk_4C8);
    Math_ApproachS(&this->actor.shape.rot.y, yaw, 0xA, this->unk_4C8);
    Math_ApproachS(&this->actor.shape.rot.x, pitch, 0xA, this->unk_4C8);
    Math_ApproachF(&this->unk_4C8, 4096.0f, 1.0f, 100.0f);
    Math_ApproachF(&this->actor.speedXZ, 10.0f, 1.0f, 1.0f);
    func_8002D908(&this->actor);
    func_8002D7EC(&this->actor);
    if ((this->timers[0] == 0) || (xzDist < 70.0f)) {
        func_80939F40(this, globalCtx);
    }
}

void BossTw_SetupShootBeam(BossTw* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    this->actionFunc = BossTw_ShootBeam;
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06007688, -5.0f);
    this->animFrameSwitch = Animation_GetLastFrame(&D_06007688.common);
    this->timers[1] = 0x46;
    this->targetPos = player->actor.world.pos;
    this->unk_440 = 0;
    this->beamDist = 0.0f;
    this->beamReflectionDist = 0.0f;
    this->beamShootState = -1;
    this->beamAlpha = 0.01f;
    this->beamReflectionOrigin = this->beamOrigin;
    this->flameAlpha = 0.0f;
    this->spawnPortalAlpha = 0.0f;
    this->spawnPortalScale = 2000.0f;
    this->updateRate1 = 0.0f;
    this->portalRotation = 0.0f;
    this->updateRate2 = 0.0f;
}

void func_8093A5C4(BossTw* this, GlobalContext* globalCtx, s16 arg2) {
    BossTw* temp_v0;
    s16 i;
    Vec3f pos;
    Vec3f velocity;
    Vec3f accel;

    for (i = 0; i < ARRAY_COUNT(sTWEffects); i++) {
        velocity.x = Rand_CenteredFloat(20.0f);
        velocity.y = Rand_ZeroFloat(10.0f);
        velocity.z = Rand_CenteredFloat(20.0f);
        accel.y = 0.2f;
        accel.x = Rand_CenteredFloat(0.25f);
        accel.z = Rand_CenteredFloat(0.25f);
        pos = this->unk_500;
        BossTw_AddDotEffect(globalCtx, &pos, &velocity, &accel, (s16)Rand_ZeroFloat(2.0f) + 8, arg2, 0x4B);
    }

    if (arg2 == 1) {
        D_8094C841 = 1;
        temp_v0 = (BossTw*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_TW,
                                              this->unk_500.x, this->unk_500.y, this->unk_500.z, 0, 0, 0, 0x65);
        if (temp_v0 != NULL) {
            if (twinrovaPtr->actionFunc == BossTw_TwinrovaWaitForMerge) {
                temp_v0->timers[0] = 100;
            } else {
                temp_v0->timers[0] = 50;
            }
            koumePtr->unk_1A8 = koumePtr->unk_1AC = koumePtr->unk_1B0 = 255.0f;
            koumePtr->unk_1B4 = 1.0f;
            koumePtr->unk_1B8 = 0.005f;
            koumePtr->unk_4BC = temp_v0->actor.world.pos;
            sEnvType = 4;
        }
    } else {
        D_8094C841 = 2;
        temp_v0 = (BossTw*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_TW,
                                              this->unk_500.x, this->unk_500.y, this->unk_500.z, 0, 0, 0, 0x67);
        if (temp_v0 != NULL) {
            if (twinrovaPtr->actionFunc == BossTw_TwinrovaWaitForMerge) {
                temp_v0->timers[0] = 100;
            } else {
                temp_v0->timers[0] = 50;
            }

            kotakePtr->unk_1B0 = 50.0f;
            kotakePtr->unk_1A8 = 250.0f;
            kotakePtr->unk_1B4 = 0.005f;
            kotakePtr->unk_1BC = 1.0f;
            kotakePtr->unk_1C4 = 70.0f;
            kotakePtr->unk_4BC = temp_v0->actor.world.pos;
            sEnvType = 3;
        }
    }
}

s32 func_8093A940(BossTw* this, GlobalContext* globalCtx) {
    Vec3f sp44;
    Vec3f sp38;
    Player* player = PLAYER;
    s16 phi_s0;

    sp44.x = player->actor.world.pos.x - this->beamOrigin.x;
    sp44.y = player->actor.world.pos.y - this->beamOrigin.y;
    sp44.z = player->actor.world.pos.z - this->beamOrigin.z;
    Matrix_RotateX(-this->beamPitch, MTXMODE_NEW);
    Matrix_RotateY(-this->beamYaw, MTXMODE_APPLY);
    Matrix_MultVec3f(&sp44, &sp38);
    if (fabsf(sp38.x) < 20.0f && fabsf(sp38.y) < 50.0f && sp38.z > 100.0f && sp38.z <= this->beamDist) {
        if (twinrovaPtr->timers[2] == 0) {
            twinrovaPtr->timers[2] = 150;
            this->beamDist = sqrtf(SQ(sp44.x) + SQ(sp44.y) + SQ(sp44.z));
            func_8002F6D4(globalCtx, &this->actor, 3.0f, this->actor.shape.rot.y, 0.0f, 0x20);
            if (this->actor.params == 0) {
                if (D_8094C85F == 0) {
                    D_8094C85F = 1;
                }
            } else if (!player->isBurning) {
                for (phi_s0 = 0; phi_s0 < ARRAY_COUNT(player->flameTimers); phi_s0++) {
                    player->flameTimers[phi_s0] = Rand_S16Offset(0, 200);
                }
                player->isBurning = true;
                func_8002F7DC(&player->actor, player->ageProperties->unk_92 + NA_SE_VO_LI_DEMO_DAMAGE);
            }
        }

        return true;
    }
    return false;
}

/**
 * Checks if the beam shot by `this shall be reflected
 * returns 0 if the beam shall not be reflected,
 * returns 1 if the beam shall be reflected,
 * and returns 2 if the beam shall be diverted backwards
 */
s32 BossTw_CheckBeamReflection(BossTw* this, GlobalContext* globalCtx) {
    Vec3f offset;
    Vec3f vec;
    Player* player = PLAYER;

    if (player->stateFlags1 & 0x400000 && (s16)(player->actor.shape.rot.y - this->actor.shape.rot.y + 0x8000) < 0x2000 && (s16)(player->actor.shape.rot.y - this->actor.shape.rot.y + 0x8000) >= -0x1FFF) {
        // player is shielding and facing angles are less than 45 degrees in either direction
        offset.x = 0.0f;
        offset.y = 0.0f;
        offset.z = 10.0f;
        // set beam check point to 10 units in front of link.
        Matrix_RotateY(player->actor.shape.rot.y / 32768.0f * M_PI, MTXMODE_NEW);
        Matrix_MultVec3f(&offset, &vec);
        // calculates a vector where the origin is at the beams origin,
        // and the positive z axis is pointing in the direction the beam
        // is shooting
        offset.x = player->actor.world.pos.x + vec.x - this->beamOrigin.x;
        offset.y = player->actor.world.pos.y + vec.y - this->beamOrigin.y;
        offset.z = player->actor.world.pos.z + vec.z - this->beamOrigin.z;
        Matrix_RotateX(-this->beamPitch, MTXMODE_NEW);
        Matrix_RotateY(-this->beamYaw, MTXMODE_APPLY);
        Matrix_MultVec3f(&offset, &vec);
        if (fabsf(vec.x) < 30.0f && fabsf(vec.y) < 70.0f && vec.z > 100.0f && vec.z <= this->beamDist) {
            // if the beam's origin is within 30 x units, 70 y units, is farther than 100 units
            // and the distance from the beams origin to 10 units in front of link is less than the beams
            // current distance (the distance of the beam is equal to or longer than the distance to 10 units
            // in front of link)
            if (Player_HasMirrorShieldEquipped(globalCtx)) {
                // player has mirror shield equipped
                this->beamDist = sqrtf(SQ(offset.x) + SQ(offset.y) + SQ(offset.z));
                return 1;
            }

            if (sBeamDivertTimer >= 11) {
                return 0;
            }

            if (sBeamDivertTimer == 0) {
                // beam hit the shield, normal shield equipped,
                // divert the beam backwards from link's Y rotation
                func_80939338(globalCtx, 10.0f, this->actor.params);
                globalCtx->envCtx.unk_D8 = 1.0f;
                this->timers[0] = 10;
                func_80078884(NA_SE_IT_SHIELD_REFLECT_MG2);
            }

            sBeamDivertTimer++;
            this->beamDist = sqrtf(SQ(offset.x) + SQ(offset.y) + SQ(offset.z));
            return 2;
        }
    }
    return 0;
}

s32 func_8093ADB4(BossTw* this, Vec3f* arg1) {
    Vec3f sp2C;
    Vec3f sp20;

    sp2C.x = arg1->x - this->beamReflectionOrigin.x;
    sp2C.y = arg1->y - this->beamReflectionOrigin.y;
    sp2C.z = arg1->z - this->beamReflectionOrigin.z;
    Matrix_RotateX(-this->beamReflectionPitch, MTXMODE_NEW);
    Matrix_RotateY(-this->beamReflectionYaw, MTXMODE_APPLY);
    Matrix_MultVec3f(&sp2C, &sp20);
    if (fabsf(sp20.x) < 50.0f && fabsf(sp20.y) < 50.0f && sp20.z > 100.0f && sp20.z <= this->beamReflectionDist) {
        this->beamReflectionDist = sqrtf(SQ(sp2C.x) + SQ(sp2C.y) + SQ(sp2C.z)) * 1.1f;
        return 1;
    }
    return 0;
}

f32 func_8093AED8(Vec3f* arg0) {
    Vec3f sp2C;

    if (fabsf(arg0->x) < 350.0f && fabsf(arg0->z) < 350.0f && arg0->y < 240.0f) {
        if (arg0->y > 200.0f) {
            return 240.0f;
        }
        return 35.0f;
    }

    if (fabsf(arg0->x) < 110.0f && ((fabsf(arg0->z - 600.0f) < 110.0f) || (fabsf(arg0->z + 600.0f) < 110.0f)) &&
        (arg0->y < 230.0f)) {
        if (arg0->y > 190.0f) {
            return 230.0f;
        }
        return 35.0f;
    }

    if (fabsf(arg0->z) < 110.0f && ((fabsf(arg0->x - 600.0f) < 110.0f) || (fabsf(arg0->x + 600.0f) < 110.0f)) &&
        (arg0->y < 230.0f)) {
        if (arg0->y > 190.0f) {
            return 230.0f;
        }
        return 35.0f;
    }

    if (arg0->y < -20.0f) {
        return 0.0f;
    }

    if (fabsf(arg0->x) > 1140.0f || fabsf(arg0->z) > 1140.0f) {
        return 35.0f;
    }

    Matrix_Push();
    // 45 Degrees to radians
    Matrix_RotateY((45.0f * (M_PI / 180.0f)), MTXMODE_NEW);
    Matrix_MultVec3f(arg0, &sp2C);
    Matrix_Pop();

    if (fabsf(sp2C.x) > 920.0f || fabsf(sp2C.z) > 920.0f) {
        return 35.0f;
    }

    return -100.0f;
}

//#define NON_MATCHING
#ifdef NON_MATCHING
void BossTw_ShootBeam(BossTw* this, GlobalContext* globalCtx) {
    s16 i;
    f32 temp_f20;
    f32 temp_f24;
    f32 temp_f26;
    f32 pad;
    Vec3f sp130;
    Vec3s sp128;
    Player* player = PLAYER;
    BossTw* parent = this->actor.parent;
    Input* inp = &globalCtx->state.input[0];

    Math_ApproachF(&this->actor.world.pos.y, 400.0f, 0.05f, this->actor.speedXZ);
    Math_ApproachF(&this->actor.speedXZ, 5.0f, 1.0f, 0.25f);
    SkelAnime_Update(&this->skelAnime);
    this->unk_520 += -0.3f;
    if (this->timers[1] != 0) {
        Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, this->unk_4C8);
        if ((player->stateFlags1 & 0x400000) &&
            ((s16)((player->actor.shape.rot.y - this->actor.shape.rot.y) + 0x8000) < 0x2000) &&
            ((s16)((player->actor.shape.rot.y - this->actor.shape.rot.y) + 0x8000) >= -0x1FFF)) {
            Math_ApproachF(&this->targetPos.x, player->bodyPartsPos[15].x, 1.0f, 400.0f);
            Math_ApproachF(&this->targetPos.y, player->bodyPartsPos[15].y, 1.0f, 400.0f);
            Math_ApproachF(&this->targetPos.z, player->bodyPartsPos[15].z, 1.0f, 400.0f);
        } else {
            Math_ApproachF(&this->targetPos.x, player->actor.world.pos.x, 1.0f, 400.0f);
            Math_ApproachF(&this->targetPos.y, player->actor.world.pos.y + 30.0f, 1.0f, 400.0f);
            Math_ApproachF(&this->targetPos.z, player->actor.world.pos.z, 1.0f, 400.0f);
        }
        this->timers[0] = 0x46;
        this->unk_500.x = this->unk_500.y = this->unk_500.z = 0.0f;
        this->portalRotation += this->updateRate2 * 0.0025f;
        Math_ApproachF(&this->spawnPortalAlpha, 255.0f, 1.0f, 10.0f);
        Math_ApproachF(&this->updateRate2, 50.0f, 1.0f, 2.0f);
        if (this->timers[1] < 0x32) {
            if (this->timers[1] < 0xA) {
                if (this->timers[1] == 9) {
                    globalCtx->envCtx.unk_D8 = 0.5f;
                    globalCtx->envCtx.unk_BD = 3 - this->actor.params;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_MASIC_SET);
                }

                if (this->timers[1] == 5) {
                    this->unk_4D0 = 255;
                }

                if (this->timers[1] >= 5) {
                    s16 j;
                    for (j = 0; j < 2; j++) {
                        for (j = 0; j < 5; j++) {
                            Vec3f pos;
                            Vec3f velocity;
                            Vec3f accel;
                            pos.x = this->unk_450[i].x;
                            pos.y = this->unk_450[i].y;
                            pos.z = this->unk_450[i].z;
                            velocity.x = Rand_CenteredFloat(10.0f);
                            velocity.y = Rand_CenteredFloat(10.0f);
                            velocity.z = Rand_CenteredFloat(10.0f);
                            accel.x = 0.0f;
                            accel.y = 0.0f;
                            accel.z = 0.0f;
                            func_80939070(globalCtx, &pos, &velocity, &accel, Rand_ZeroFloat(10.0f) + 25.0f,
                                          this->actor.params);
                        }
                    }
                }
            }

            if (this->timers[1] < 0x14) {
                Math_ApproachF(&this->flameAlpha, 0, 1.0f, 20.0f);
                Math_ApproachF(&this->spawnPortalAlpha, 0, 1.0f, 30.0f);
            } else {
                Math_ApproachF(&this->flameAlpha, 255.0f, 1.0f, 10.0f);
                if (this->actor.params == 1) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_MS_FIRE - SFX_FLAG);
                } else {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_MS_FREEZE - SFX_FLAG);
                }
            }

            this->flameRotation += this->updateRate1 * 0.0025f;
            Math_ApproachF(&this->spawnPortalScale, 0.0f, 0.1f, this->updateRate1);
            Math_ApproachF(&this->updateRate1, 50.0f, 1.0f, 2.0f);
        }
        if (Animation_OnFrame(&this->skelAnime, this->animFrameSwitch)) {
            Animation_MorphToLoop(&this->skelAnime, &D_06009398, 0.0f);
            this->animFrameSwitch = 10000.0f;
        }

        if (this->timers[1] == 1) {
            Animation_MorphToPlayOnce(&this->skelAnime, &D_06003614, 0.0f);
            this->animFrameSwitch = Animation_GetLastFrame(&D_06003614);
            this->unk_4DC = 0.0f;
            this->spawnPortalAlpha = 0.0f;
            this->flameAlpha = 0.0f;
            sBeamDivertTimer = 0;
        }
    } else {
        if (Animation_OnFrame(&this->skelAnime, this->animFrameSwitch)) {
            Animation_MorphToLoop(&this->skelAnime, &D_06003E34, 0.0f);
            this->animFrameSwitch = 10000.0f;
        }
        if (Animation_OnFrame(&this->skelAnime, this->animFrameSwitch - 5.0f)) {
            this->beamShootState = 0;
            sEnvType = this->actor.params + 1;
        }

        if (Animation_OnFrame(&this->skelAnime, this->animFrameSwitch - 13.0f)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_THROW_MASIC);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_SHOOT_VOICE);
        }

        temp_f20 = this->targetPos.x - this->beamOrigin.x;
        temp_f26 = this->targetPos.y - this->beamOrigin.y;
        temp_f24 = this->targetPos.z - this->beamOrigin.z;
        this->beamYaw = Math_FAtan2F(temp_f20, temp_f24);

        this->beamPitch = -Math_FAtan2F(temp_f26, sqrtf(SQ(temp_f20) + SQ(temp_f24)));
        switch (this->beamShootState) {
            case -1:
                break;
            case 0:
                if (this->timers[0] != 0) {
                    s32 temp_v0_4 = BossTw_CheckBeamReflection(this, globalCtx);
                    if (temp_v0_4 == 1) {
                        Vec3f accel = D_8094A8DC;
                        Vec3f velocity;
                        Vec3f pos;
                        for (i = 0; i < ARRAY_COUNT(sTWEffects); i++) {
                            velocity.x = Rand_CenteredFloat(15.0f);
                            velocity.y = Rand_CenteredFloat(15.0f);
                            velocity.z = Rand_CenteredFloat(15.0f);
                            pos = player->bodyPartsPos[15];
                            BossTw_AddDotEffect(globalCtx, &pos, &velocity, &accel, (s16)Rand_ZeroFloat(2.0f) + 5,
                                                this->actor.params, 0x96);
                        }

                        this->beamShootState = 1;
                        func_80078914(&player->actor.projectedPos, NA_SE_IT_SHIELD_REFLECT_MG);
                        func_800D20CC(&player->shieldMf, &sp128, 0);
                        sp128.y += 0x8000;
                        sp128.x = -sp128.x;
                        this->unk_524.x = sp128.x;
                        this->unk_524.y = sp128.y;
                        this->unk_500.x = 0.0f;
                        this->unk_500.y = 0.0f;
                        this->unk_500.z = 0.0f;
                        globalCtx->envCtx.unk_D8 = 1.0f;
                        func_800AA000(0.0f, 0x64, 5, 4);

                    } else if (temp_v0_4 == 0) {
                        func_8093A940(this, globalCtx);
                        if (this->unk_440 == 0) {
                            Math_ApproachF(&this->beamDist, 2.0f * sqrtf(SQ(temp_f20) + SQ(temp_f26) + SQ(temp_f24)),
                                           1.0f, 40.0f);
                        }
                    }
                }
                SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &this->beamReflectionOrigin, &this->unk_54C,
                                             &this->actor.projectedW);
                if (this->actor.params == 1) {
                    Audio_PlaySoundGeneral(NA_SE_EN_TWINROBA_SHOOT_FIRE - SFX_FLAG, &this->unk_54C, 4, &D_801333E0,
                                           &D_801333E0, &D_801333E8);
                } else {
                    Audio_PlaySoundGeneral(NA_SE_EN_TWINROBA_SHOOT_FREEZE - SFX_FLAG, &this->unk_54C, 4, &D_801333E0,
                                           &D_801333E0, &D_801333E8);
                }
                break;
            case 1:
                if (CHECK_BTN_ALL(inp->cur.button, BTN_R)) {
                    Player* player = PLAYER;
                    this->beamDist = sqrtf(SQ(temp_f20) + SQ(temp_f26) + SQ(temp_f24));
                    Math_ApproachF(&this->beamReflectionDist, 2000.0f, 1.0f, 40.0f);
                    Math_ApproachF(&this->targetPos.x, player->bodyPartsPos[15].x, 1.0f, 400.0f);
                    Math_ApproachF(&this->targetPos.y, player->bodyPartsPos[15].y, 1.0f, 400.0f);
                    Math_ApproachF(&this->targetPos.z, player->bodyPartsPos[15].z, 1.0f, 400.0f);
                    if ((this->unk_150 & 3) == 0) {
                        BossTw_AddRingEffect(globalCtx, &player->bodyPartsPos[15], 0.5f, 3.0f, 0xFF, this->actor.params,
                                             1, 0x96);
                    }
                } else {
                    this->beamShootState = 0;
                    this->beamReflectionDist = 0.0f;
                }

                SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &this->beamReflectionAFXPos,
                                             &this->beamReflectionProjectedAFXPos, &this->actor.projectedW);
                if (this->actor.params == 1) {
                    Audio_PlaySoundGeneral(NA_SE_EN_TWINROBA_SHOOT_FIRE - SFX_FLAG,
                                           &this->beamReflectionProjectedAFXPos, 4U, &D_801333E0, &D_801333E0,
                                           &D_801333E8);
                    Audio_PlaySoundGeneral(NA_SE_EN_TWINROBA_REFL_FIRE - SFX_FLAG, &this->beamReflectionProjectedAFXPos,
                                           4U, &D_801333E0, &D_801333E0, &D_801333E8);
                } else {
                    Audio_PlaySoundGeneral(NA_SE_EN_TWINROBA_SHOOT_FREEZE - SFX_FLAG,
                                           &this->beamReflectionProjectedAFXPos, 4, &D_801333E0, &D_801333E0,
                                           &D_801333E8);
                    Audio_PlaySoundGeneral(NA_SE_EN_TWINROBA_REFL_FREEZE - SFX_FLAG,
                                           &this->beamReflectionProjectedAFXPos, 4, &D_801333E0, &D_801333E0,
                                           &D_801333E8);
                }
                break;
        }

        if (this->timers[0] == 0) {
            if (sEnvType == 1 || sEnvType == 2) {
                sEnvType = 0;
            }
        }
        if (this->timers[0] == 0) {
            Math_ApproachF(&this->beamAlpha, 0.0f, 1.0f, 0.0005f);
            if (this->beamAlpha == 0.0f) {
                func_8093C164(this, globalCtx);
                this->beamReflectionDist = 0.0f;
                this->beamDist = 0.0f;
            }
        }
    }
    Matrix_Translate(this->beamOrigin.x, this->beamOrigin.y, this->beamOrigin.z, MTXMODE_NEW);
    Matrix_RotateY(this->beamYaw, MTXMODE_APPLY);
    Matrix_RotateX(this->beamPitch, MTXMODE_APPLY);
    sp130.x = 0.0f;
    sp130.y = 0.0f;
    sp130.z = this->beamDist + -5.0f;
    Matrix_MultVec3f((Vec3f*)&sp130, &this->beamReflectionOrigin);
    if ((this->unk_440 == 0) && (this->beamShootState == 0) && (this->timers[0] != 0)) {
        this->unk_500.y = func_8093AED8(&this->beamReflectionOrigin);
        if (0.0f <= this->unk_500.y) {
            this->unk_440 = 1;
            this->unk_500.x = this->beamReflectionOrigin.x;
            this->unk_500.z = this->beamReflectionOrigin.z;
            func_8093A5C4(this, globalCtx, this->actor.params);
            this->timers[0] = 0x14;
        }
    }
    if (this->beamShootState == 1) {
        if (this->unk_440 == 0) {
            func_800D20CC(&player->shieldMf, &sp128, 0);
            sp128.y += 0x8000;
            sp128.x = -sp128.x;
            Math_ApproachS(&this->unk_524.x, sp128.x, 5, 0x2000);
            Math_ApproachS(&this->unk_524.y, sp128.y, 5, 0x2000);
            this->beamReflectionPitch = (this->unk_524.x / 32768.0f) * M_PI;
            this->beamReflectionYaw = (this->unk_524.y / 32768.0f) * M_PI;
        }

        Matrix_Translate(this->beamReflectionOrigin.x, this->beamReflectionOrigin.y, this->beamReflectionOrigin.z,
                         MTXMODE_NEW);
        Matrix_RotateY(this->beamReflectionYaw, MTXMODE_APPLY);
        Matrix_RotateX(this->beamReflectionPitch, MTXMODE_APPLY);
        sp130.x = 0.0f;
        sp130.y = 0.0f;
        sp130.z = this->beamReflectionDist + -170.0f;
        Matrix_MultVec3f(&sp130, &this->beamReflectionAFXPos);
        if (this->unk_440 == 0) {
            sp130.z = 0.0f;
            i = 0;
            do {
                Vec3f spBC;
                Matrix_MultVec3f(&sp130, &spBC);
                pad = func_8093AED8(&spBC);
                this->unk_500.y = pad;
                i++;
                if (pad >= 0.0f) {
                    if ((this->unk_500.y != 35.0f) && (0.0f < this->beamReflectionPitch) && (this->timers[0] != 0)) {
                        this->unk_440 = 1;
                        this->unk_500.x = spBC.x;
                        this->unk_500.z = spBC.z;
                        func_8093A5C4(this, globalCtx, this->actor.params);
                        this->timers[0] = 20;
                    } else {
                        for (i = 0; i < 5; i++) {
                            Vec3f velocity;
                            Vec3f accel;

                            velocity.x = Rand_CenteredFloat(20.0f);
                            velocity.y = Rand_CenteredFloat(20.0f);
                            velocity.z = Rand_CenteredFloat(20.0f);
                            accel.x = 0.0f;
                            accel.y = 0.0f;
                            accel.z = 0.0f;
                            func_80939070(globalCtx, &this->beamReflectionAFXPos, &velocity, &accel,
                                          Rand_ZeroFloat(10.0f) + 25.0f, this->actor.params);
                        }
                        this->beamReflectionDist = sp130.z;
                        Math_ApproachF(&globalCtx->envCtx.unk_D8, 0.8f, 1.0f, 0.2f);
                    }
                    break;
                }
                sp130.z += 20.0f;
            } while(!(this->beamReflectionDist > sp130.z) && i < 200);
        }

        if (func_8093ADB4(this, &this->actor.world.pos) && (this->unk_150 & 3) == 0) {
            BossTw_AddRingEffect(globalCtx, &this->beamReflectionAFXPos, 0.5f, 3.0f, 0xFF, this->actor.params, 1, 0x96);
        }

        if (func_8093ADB4(this, &parent->actor.world.pos) && parent->actionFunc != func_8093C2C4) {
            for (i = 0; i < 50; i++) {
                Vec3f pos;
                Vec3f velocity;
                Vec3f accel;
                pos.x = parent->actor.world.pos.x + Rand_CenteredFloat(50.0f);
                pos.y = parent->actor.world.pos.y + Rand_CenteredFloat(50.0f);
                pos.z = parent->actor.world.pos.z + Rand_CenteredFloat(50.0f);
                velocity.x = Rand_CenteredFloat(20.0f);
                velocity.y = Rand_CenteredFloat(20.0f);
                velocity.z = Rand_CenteredFloat(20.0f);
                accel.x = 0.0f;
                accel.y = 0.0f;
                accel.z = 0.0f;
                func_80939070(globalCtx, &pos, &velocity, &accel, Rand_ZeroFloat(10.0f) + 25.0f, this->actor.params);
            }
            func_8093C25C(&parent->actor, globalCtx);
            Audio_PlayActorSound2(&parent->actor, NA_SE_EN_TWINROBA_DAMAGE_VOICE);
            globalCtx->envCtx.unk_D8 = 1.0f;
            parent->actor.colChkInfo.health++;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/BossTw_ShootBeam.s")
#endif
#undef NON_MATCHING

void func_8093C164(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8093C1C4;
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06004548, 0.0f);
    this->animFrameSwitch = Animation_GetLastFrame(&D_06004548.common);
}

void func_8093C1C4(BossTw* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    Math_ApproachF(&this->unk_4D0, 0.0f, 1.0f, 10.0f);
    if (Animation_OnFrame(&this->skelAnime, this->animFrameSwitch)) {
        if (twinrovaPtr->timers[2] == 0) {
            func_8093A0A8(this, globalCtx);
        } else {
            func_8093C58C(this, globalCtx);
        }
        this->unk_4D0 = 0.0f;
    }
}

void func_8093C25C(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8093C2C4;
    Animation_MorphToPlayOnce(&this->skelAnime, &D_0600578C, 0.0f);
    this->timers[0] = 0x35;
    this->actor.speedXZ = 0.0f;
    if (this->actor.params == 0) {
        this->fogTimer = 20;
    }
}

void func_8093C2C4(BossTw* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (!(this->unk_150 & 3)) {
        Vec3f pos;
        Vec3f velocity;
        Vec3f accel;
        pos.x = Rand_CenteredFloat(80.0f) + this->actor.world.pos.x;
        pos.y = Rand_CenteredFloat(80.0f) + this->actor.world.pos.y;
        pos.z = Rand_CenteredFloat(80.0f) + this->actor.world.pos.z;
        velocity.x = 0.0f;
        velocity.y = 0.0f;
        velocity.z = 0.0f;
        accel.x = 0.0f;
        accel.y = 0.1f;
        accel.z = 0.0f;
        func_80938DC4(globalCtx, this->actor.params + 2, &pos, &velocity, &accel, Rand_ZeroFloat(10.0f) + 15.0f, 0, 0,
                      0x96);
    }

    if (this->actor.params == 1) {
        Math_ApproachF(&this->fogR, 255.0f, 1.0f, 30.0f);
        Math_ApproachF(&this->fogG, 255.0f, 1.0f, 30.0f);
        Math_ApproachF(&this->fogB, 255.0f, 1.0f, 30.0f);
        Math_ApproachF(&this->fogMin, 900.0f, 1.0f, 30.0f);
        Math_ApproachF(&this->fogMax, 1099.0f, 1.0f, 30.0f);
    }

    Math_ApproachF(&this->actor.world.pos.y, ((Math_SinS(this->unk_150 * 1500) * 20.0f) + 350.0f) + 50.0f, 0.1f,
                   this->actor.speedXZ);
    Math_ApproachF(&this->actor.speedXZ, 5.0f, 1.0f, 1.0f);
    this->actor.world.pos.y -= 50.0f;
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 50.0f, 50.0f, 100.0f, 4);
    this->actor.world.pos.y += 50.0f;
    if (this->actor.bgCheckFlags & 1) {
        this->actor.speedXZ = 0.0f;
    }
    if (this->timers[0] == 1) {
        Animation_MorphToPlayOnce(&this->skelAnime, &D_06006530, 0.0f);
        this->animFrameSwitch = Animation_GetLastFrame(&D_06006530.common);
    }
    if (this->timers[0] == 0) {
        if (Animation_OnFrame(&this->skelAnime, this->animFrameSwitch)) {
            func_8093A0A8(this, globalCtx);
        }
    }
}

void func_8093C58C(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8093C5F4;
    Animation_MorphToPlayOnce(&this->skelAnime, &D_060088C8, 0.0f);
    this->animFrameSwitch = Animation_GetLastFrame(&D_060088C8.common);
    this->actor.speedXZ = 0.0f;
}

void func_8093C5F4(BossTw* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 10.0f)) {
        if (this->actor.params == 1) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_LAUGH);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_LAUGH2);
        }
    }

    if (Animation_OnFrame(&this->skelAnime, this->animFrameSwitch)) {
        func_8093A0A8(this, globalCtx);
    }
}

void func_8093C684(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8093C700;
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06007CA8, -3.0f);
    this->animFrameSwitch = Animation_GetLastFrame(&D_06007CA8.common);
    this->actor.speedXZ = 0.0f;
    SkelAnime_Update(&this->skelAnime);
    this->timers[0] = 0x14;
}

// hit with hookshot?
void func_8093C700(BossTw* this, GlobalContext* globalCtx) {
    if (this->timers[0] != 0) {
        this->collider.base.colType = COLTYPE_METAL;
        this->actor.shape.rot.y -= 0x3000;
        if (!(this->timers[0] & 3)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_ROLL);
        }
    } else {
        SkelAnime_Update(&this->skelAnime);
        Math_ApproachS(&this->actor.shape.rot.y, this->actor.world.rot.y, 3, 0x2000);
        if (Animation_OnFrame(&this->skelAnime, this->animFrameSwitch)) {
            func_8093A0A8(this, globalCtx);
        }
    }
}

void func_8093C79C(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8093C7E4;
    this->unk_4C8 = 0.0f;
    this->actor.speedXZ = 0.0f;
    Animation_MorphToLoop(&this->skelAnime, &D_06006F28, -10.0f);
}

void func_8093C7E4(BossTw* this, GlobalContext* globalCtx) {
    Math_ApproachF(&this->unk_4D0, 0.0f, 1.0f, 10.0f);
    SkelAnime_Update(&this->skelAnime);
}

void BossTw_TwinrovaSetupWaitForMerge(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = BossTw_TwinrovaWaitForMerge;
    this->unk_564 = 0;
    this->actor.world.pos.y = -2000.0f;
    this->actor.flags &= ~1;
}

void BossTw_TwinrovaWaitForMerge(BossTw* this, GlobalContext* globalCtx) {
    if (this->actor.params == 2 && koumePtr->actionFunc == func_8093A2AC && kotakePtr->actionFunc == func_8093A2AC &&
        (koumePtr->actor.colChkInfo.health + kotakePtr->actor.colChkInfo.health) >= 4) {

        func_8093C8F4(this, globalCtx);
        func_8093C79C(kotakePtr, globalCtx);
        func_8093C79C(koumePtr, globalCtx);
    }
}

void func_8093C8F4(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8093C910;
    this->unk_5FA = 0;
    this->unk_440 = 0;
}

void func_8093C910(BossTw* this, GlobalContext* globalCtx) {
    s16 i;
    Vec3f spB0;
    Vec3f spA4;
    Player* player = PLAYER;

    switch (this->unk_5FA) {
        case 0:
            this->unk_5FA = 1;
            func_80064520(globalCtx, &globalCtx->csCtx);
            func_8002DF54(globalCtx, &this->actor, 0x39);
            this->subCamId = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, CAM_STAT_WAIT);
            Gameplay_ChangeCameraStatus(globalCtx, this->subCamId, CAM_STAT_ACTIVE);
            this->unk_6A4 = 800.0f;
            this->unk_6AC = M_PI;
            koumePtr->actor.world.rot.x = 0;
            koumePtr->actor.shape.rot.x = 0;
            kotakePtr->actor.world.rot.x = 0;
            kotakePtr->actor.shape.rot.x = 0;
            this->unk_1A8 = 0.0f;
            this->unk_1AC = 0.0f;
            this->unk_1B0 = 600.0f;
            Audio_SetBGM(0x10C800FFU);
            this->unk_152 = 0;
        case 1:
            if (this->unk_152 == 20) {
                func_8010B680(globalCtx, 0x6059, NULL);
            }
            if (this->unk_152 == 80) {
                func_8010B680(globalCtx, 0x605A, NULL);
            }
            this->subCamAt.x = 0.0f;
            this->subCamAt.y = 440.0f;
            this->subCamAt.z = 0.0f;
            spB0.x = 0.0f;
            spB0.y = 0.0f;
            spB0.z = this->unk_6A4;
            Matrix_RotateY(this->unk_6AC, MTXMODE_NEW);
            Matrix_MultVec3f(&spB0, &spA4);
            this->subCamEye.x = spA4.x;
            this->subCamEye.y = 300.0f;
            this->subCamEye.z = spA4.z;
            Math_ApproachF(&this->unk_6AC, 0.3f, 0.02f, 0.03f);
            Math_ApproachF(&this->unk_6A4, 200.0f, 0.1f, 5.0f);
            break;
        case 2:
            spB0.x = 0.0f;
            spB0.y = 0.0f;
            spB0.z = this->unk_6A4;
            Matrix_RotateY(this->unk_6AC, MTXMODE_NEW);
            Matrix_MultVec3f(&spB0, &spA4);
            this->subCamEye.x = spA4.x;
            this->subCamEye.z = spA4.z;
            Math_ApproachF(&this->subCamEye.y, 420.0f, 0.1f, this->unk_69C * 20.0f);
            Math_ApproachF(&this->subCamAt.y, 470.0f, 0.1f, this->unk_69C * 6.0f);
            Math_ApproachF(&this->unk_6AC, 0.3f, 0.02f, 0.03f);
            Math_ApproachF(&this->unk_6A4, 60.0f, 0.1f, this->unk_69C * 32.0f);
            Math_ApproachF(&this->unk_69C, 1, 1, 0.1f);
            break;
    }

    if (this->subCamId != 0) {
        if (this->unk_5F9 == 0) {
            Gameplay_CameraSetAtEye(globalCtx, this->subCamId, &this->subCamAt, &this->subCamEye);
        } else {
            Gameplay_CameraSetAtEye(globalCtx, this->subCamId, &this->unk_630, &this->unk_624);
        }
    }

    switch (this->unk_440) {
        case 0:
            Audio_PlayActorSound2(&kotakePtr->actor, NA_SE_EN_TWINROBA_FLY - SFX_FLAG);
            Audio_PlayActorSound2(&koumePtr->actor, NA_SE_EN_TWINROBA_FLY - SFX_FLAG);
            spB0.x = this->unk_1B0;
            spB0.y = 400.0f;
            spB0.z = 0.0f;
            Matrix_RotateY(this->unk_1A8, MTXMODE_NEW);
            Matrix_MultVec3f(&spB0, &spA4);
            koumePtr->actor.world.pos.x = spA4.x;
            koumePtr->actor.world.pos.y = spA4.y;
            koumePtr->actor.world.pos.z = spA4.z;
            koumePtr->actor.shape.rot.y = (this->unk_1A8 / M_PI) * 32768.0f;
            kotakePtr->actor.world.pos.x = -spA4.x;
            kotakePtr->actor.world.pos.y = spA4.y;
            kotakePtr->actor.world.pos.z = -spA4.z;
            kotakePtr->actor.shape.rot.y = ((this->unk_1A8 / M_PI) * 32768.0f) + 32768.0f;
            Math_ApproachF(&this->unk_1B0, 0.0f, 0.1f, 7.0f);
            this->unk_1A8 = this->unk_1A8 - this->unk_1AC;
            Math_ApproachF(&this->unk_1AC, 0.5f, 1, 0.0039999997f);
            if (this->unk_1B0 < 10.0f) {
                if (this->unk_166 == 0) {
                    Audio_PlayActorSound2(&koumePtr->actor, NA_SE_EN_TWINROBA_POWERUP);
                    this->unk_166 = 1;
                }
                Math_ApproachF(&koumePtr->actor.scale.x, 0.00500000081956f, 1, 0.000375000090571f);
                for (i = 0; i < 4; i++) {
                    Vec3f sp94;
                    f32 sp90;
                    f32 temp_f20;

                    temp_f20 = koumePtr->actor.scale.x * 3000.0f;
                    sp90 = Rand_CenteredFloat(temp_f20 * 2.0f);
                    sp94.x = 3000.0f;
                    sp94.y = 400.0f + sp90;
                    sp94.z = 0.0f;
                    func_80939148(globalCtx, &sp94, Rand_ZeroFloat(5.0f) + 10.0f, sqrtf(SQ(temp_f20) - SQ(sp90)),
                                  Rand_ZeroFloat(1.99f));
                }

                if (koumePtr->actor.scale.x <= 0.0051f) {
                    Vec3f pos;
                    Vec3f velocity;
                    Vec3f accel;
                    this->actor.world.pos.y = 400.0f;
                    for (i = 0; i < 50; i++) {
                        pos = this->actor.world.pos;
                        velocity.x = Rand_CenteredFloat(20.0f);
                        velocity.y = Rand_CenteredFloat(20.0f);
                        velocity.z = Rand_CenteredFloat(20.0f);
                        pos.x += velocity.x;
                        pos.y += velocity.y;
                        pos.z += velocity.z;
                        accel.z = accel.y = accel.x = 0.0f;
                        func_80939070(globalCtx, &pos, &velocity, &accel, Rand_ZeroFloat(10.0f) + 25.0f,
                                      velocity.x < 0.0f);
                    }
                    this->unk_440 = 1;
                    this->unk_564 = 1;
                    this->actor.flags |= 1;
                    this->actor.shape.rot.y = 0;
                    BossTw_TwinrovaSetupWaitForMerge(kotakePtr, globalCtx);
                    BossTw_TwinrovaSetupWaitForMerge(koumePtr, globalCtx);
                    Actor_SetScale(&this->actor, 0.0f);
                    Animation_MorphToPlayOnce(&this->skelAnime, &D_06038E2C, 0.0f);
                    this->animFrameSwitch = Animation_GetLastFrame(&D_06038E2C);
                    this->timers[0] = 50;
                    func_8002DF54(globalCtx, &this->actor, 2);
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_TRANSFORM);
                    Audio_SetBGM(0x1B);
                }
            }

            kotakePtr->actor.scale.x = kotakePtr->actor.scale.y = kotakePtr->actor.scale.z = koumePtr->actor.scale.y =
                koumePtr->actor.scale.z = koumePtr->actor.scale.x;
            break;
        case 1:
            if (Animation_OnFrame(&this->skelAnime, this->animFrameSwitch)) {
                Animation_MorphToLoop(&this->skelAnime, &D_06032BF8, -15.0f);
            }
            sEnvType = -1;
            globalCtx->envCtx.unk_BD = 4;
            Math_ApproachF(&globalCtx->envCtx.unk_D8, 1, 1, 0.1f);
        case 2:
            SkelAnime_Update(&this->skelAnime);
            Math_ApproachF(&this->actor.scale.x, 0.0069999993f, 1, 0.0006999999f);
            this->actor.scale.y = this->actor.scale.z = this->actor.scale.x;
            if (this->timers[0] == 1) {
                this->unk_5FA = 2;
                this->unk_69C = 0.0f;
                this->timers[1] = 65;
                this->timers[2] = 90;
                this->timers[3] = 50;
                player->actor.world.pos.x = 0.0f;
                player->actor.world.pos.y = 240.0f;
                player->actor.world.pos.z = 270.0f;
                player->actor.world.rot.y = player->actor.shape.rot.y = -0x8000;
                this->unk_624.x = 0.0f;
                this->unk_624.y = 290.0f;
                this->unk_624.z = 222.0f;
                this->unk_630.x = player->actor.world.pos.x;
                this->unk_630.y = player->actor.world.pos.y + 54.0f;
                this->unk_630.z = player->actor.world.pos.z;
            }
            if (this->timers[3] == 19) {
                func_8002DF54(globalCtx, &this->actor, 5);
            }

            if (this->timers[3] == 0x10) {
                func_8002F7DC(&player->actor, player->ageProperties->unk_92 + NA_SE_VO_LI_SURPRISE);
            }

            if ((this->timers[3] != 0) && (this->timers[3] < 0x14)) {
                this->unk_5F9 = 1;
                Math_ApproachF(&this->unk_624.z, 242.0f, 0.2f, 100.0f);
            } else {
                this->unk_5F9 = 0;
            }

            if (this->timers[1] == 8) {
                this->unk_162 = 8;
                func_80078884(NA_SE_EN_TWINROBA_YOUNG_WINK);
            }
            if (this->timers[2] == 4) {
                sEnvType = 0;
                globalCtx->envCtx.unk_BE = 5;
            }
            if (this->timers[2] == 1) {
                Camera* cam = Gameplay_GetCamera(globalCtx, 0);
                cam->eye = this->subCamEye;
                cam->eyeNext = this->subCamEye;
                cam->at = this->subCamAt;
                func_800C08AC(globalCtx, this->subCamId, 0);
                this->subCamId = 0;
                this->unk_5FA = this->subCamId;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                this->unk_154 = 0;
                this->targetPos = D_8094A86C[0];
                func_8094A1C0(this, globalCtx);
            }
            break;
    }
}

void func_8093D3D8(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8093D444;
    Animation_MorphToLoop(&this->skelAnime, &D_060004A4, -3.0f);
    this->unk_5F8 = 0;
    this->unk_152 = Rand_ZeroFloat(20.0f);
}

void func_8093D444(BossTw* this, GlobalContext* globalCtx) {
    if (this->timers[0] == 0) {
        SkelAnime_Update(&this->skelAnime);
    }
    Math_ApproachS(&this->actor.shape.rot.y, this->unk_164, 5, this->unk_4C8);
    Math_ApproachF(&this->unk_4C8, 20480.0f, 1.0f, 1000.0f);
    if (twinrovaPtr->unk_152 >= 0x8D) {
        Math_ApproachF(&this->fogR, 100.0f, 1.0f, 15.0f);
        Math_ApproachF(&this->fogG, 255.0f, 1.0f, 15.0f);
        Math_ApproachF(&this->fogB, 255.0f, 1.0f, 15.0f);
        Math_ApproachF(&this->fogMin, 850.0f, 1.0f, 15.0f);
        Math_ApproachF(&this->fogMax, 1099.0f, 1.0f, 15.0f);
    }
}

void BossTw_SetupCSWait(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = BossTw_CSWait;
    this->unk_564 = 0;
    this->actor.world.pos.y = -2000.0f;
    this->actor.flags &= ~1;
}

/**
 * NOP for waiting for the inital cutscene to start
 */
void BossTw_CSWait(BossTw* this, GlobalContext* globalCtx) {
}

void BossTw_TwinrovaSetupPlayIntro(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8093D5C0;
    this->unk_564 = 0;
    this->actor.world.pos.y = -2000.0f;
    this->actor.flags &= ~1;
}

// BossTw_TwinrovaPlayIntro
void func_8093D5C0(BossTw* this, GlobalContext* globalCtx) {
    u8 sp9F = 0;
    s16 i;
    Vec3f sp90;
    Vec3f sp84;
    Player* player = PLAYER;

    if (this->unk_5FE > 220 && this->unk_5FE < 630) {
        func_80078884(0x3120);
    }

    if (this->unk_5FE == 180) {
        func_80078914(&D_8094A7D0, NA_SE_EN_TWINROBA_LAUGH);
        func_80078914(&D_8094A7D0, NA_SE_EN_TWINROBA_LAUGH2);
        Audio_SetBGM(0x61);
    }

    this->unk_5FE++;

    switch (this->unk_5FA) {
        case 0:
            this->unk_5FE = 0;
            if (SQ(player->actor.world.pos.x) + SQ(player->actor.world.pos.z) < 22500.0f) {
                player->actor.world.pos.x = player->actor.world.pos.z = .0f;
                this->unk_5FA = 1;
                func_80064520(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 0x39);
                this->subCamId = Gameplay_CreateSubCamera(globalCtx);
                Gameplay_ChangeCameraStatus(globalCtx, 0, CAM_STAT_WAIT);
                Gameplay_ChangeCameraStatus(globalCtx, this->subCamId, CAM_STAT_ACTIVE);
                this->subCamEye.x = 0.0f;
                this->subCamEye.y = 350;
                this->subCamEye.z = 200;

                this->unk_66C.x = 450;
                this->unk_66C.y = 900;

                this->subCamAt.x = 0;
                this->subCamAt.y = 270;
                this->subCamAt.z = 0;

                this->unk_684.x = 0;
                this->unk_684.y = 240;
                this->unk_684.z = 140;

                this->unk_66C.z = 530;
                this->unk_654.x = fabsf(this->unk_66C.x - this->subCamEye.x);
                this->unk_654.y = fabsf(this->unk_66C.y - this->subCamEye.y);
                this->unk_654.z = fabsf(this->unk_66C.z - this->subCamEye.z);
                this->unk_660.x = fabsf(this->unk_684.x - this->subCamAt.x);
                this->unk_660.y = fabsf(this->unk_684.y - this->subCamAt.y);
                this->unk_660.z = fabsf(this->unk_684.z - this->subCamAt.z);

                this->unk_6A0 = 0.05f;
                this->unk_150 = 0;
            }
            break;
        case 1:
            sp9F = 1;
            if (this->unk_150 == 30) {
                func_8010B680(globalCtx, 0x6048U, NULL);
            }
            Math_ApproachF(&this->unk_69C, 0.01f, 1.0f, 0.0001f);
            if (this->unk_150 > 100) {
                globalCtx->envCtx.unk_BD = 0;
                Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.03f);
            }
            if (this->unk_150 == 180) {
                func_80078884(NA_SE_EN_TWINROBA_APPEAR_MS);
            }
            if (this->unk_150 > 180) {
                this->spawnPortalScale = 0.05f;
                Math_ApproachF(&this->spawnPortalAlpha, 255.0f, 1.0f, 5.f);
                if (this->unk_150 >= 236) {
                    this->unk_5FA = 2;
                    koumePtr->unk_564 = 1;
                    Animation_MorphToLoop(&koumePtr->skelAnime, &D_060004A4, 0.0f);
                    koumePtr->actor.world.pos.x = 0.0f;
                    koumePtr->actor.world.pos.y = 80.0f;
                    koumePtr->actor.world.pos.z = 600.0f;
                    koumePtr->actor.shape.rot.y = koumePtr->actor.world.rot.y = -0x8000;

                    this->subCamEye.x = -30;
                    this->subCamEye.y = 260;
                    this->subCamEye.z = 470;

                    this->subCamAt.x = 0.0F;
                    this->subCamAt.y = 270;
                    this->subCamAt.z = 600.0F;

                    this->unk_150 = 0;

                    Actor_SetScale(&koumePtr->actor, 0.014999999f);
                }
            }
            break;
        case 2:
            SkelAnime_Update(&koumePtr->skelAnime);
            Math_ApproachF(&koumePtr->actor.world.pos.y, 240.0f, 0.05f, 5.0f);
            this->subCamEye.x -= 0.2f;
            this->subCamEye.z += 0.2f;
            if (this->unk_150 > 50) {
                this->unk_5FA = 3;

                this->unk_66C.x = -30;
                this->unk_66C.y = 260;
                this->unk_66C.z = 530;

                this->unk_684.x = 0.0f;
                this->unk_684.y = 265;
                this->unk_684.z = 580;

                this->unk_654.x = fabsf(this->unk_66C.x - this->subCamEye.x);
                this->unk_654.y = fabsf(this->unk_66C.y - this->subCamEye.y);
                this->unk_654.z = fabsf(this->unk_66C.z - this->subCamEye.z);
                this->unk_660.x = fabsf(this->unk_684.x - this->subCamAt.x);
                this->unk_660.y = fabsf(this->unk_684.y - this->subCamAt.y);
                this->unk_660.z = fabsf(this->unk_684.z - this->subCamAt.z);
                this->unk_69C = 0;
                this->unk_6A0 = 0.1f;
                this->unk_150 = 0;
            }
            break;
        case 3:
            SkelAnime_Update(&koumePtr->skelAnime);
            sp9F = 1;
            Math_ApproachF(&koumePtr->actor.world.pos.y, 240.0f, 0.05f, 5.0f);
            Math_ApproachF(&this->unk_69C, 1.0f, 1.0f, 0.02f);
            if (this->unk_150 == 0x1E) {
                func_8010B680(globalCtx, 0x6049, NULL);
            }
            if (this->unk_150 > 80) {
                this->unk_5FA = 4;
                this->actor.speedXZ = 0;

                this->unk_66C.x = -80.0f;
                this->unk_66C.y = 260.0f;
                this->unk_66C.z = 430.0f;

                this->unk_684.x = koumePtr->actor.world.pos.x;
                this->unk_684.y = koumePtr->actor.world.pos.y + 20.0f;
                this->unk_684.z = koumePtr->actor.world.pos.z;

                this->unk_654.x = fabsf(this->unk_66C.x - this->subCamEye.x);
                this->unk_654.y = fabsf(this->unk_66C.y - this->subCamEye.y);
                this->unk_654.z = fabsf(this->unk_66C.z - this->subCamEye.z);
                this->unk_660.x = fabsf(this->unk_684.x - this->subCamAt.x);
                this->unk_660.y = fabsf(this->unk_684.y - this->subCamAt.y);
                this->unk_660.z = fabsf(this->unk_684.z - this->subCamAt.z);
                this->unk_69C = 0.0f;
                this->unk_6A0 = 0.05f;
                Animation_MorphToPlayOnce(&koumePtr->skelAnime, &D_06000AAC, 0.0f);
                this->animFrameSwitch = Animation_GetLastFrame(&D_06000AAC);
                this->unk_150 = 0;
            }
            break;
        case 4:
            sp9F = 1;
            SkelAnime_Update(&koumePtr->skelAnime);
            this->unk_684.y = 20.0f + koumePtr->actor.world.pos.y;
            Math_ApproachF(&koumePtr->actor.world.pos.y, 350, 0.1f, this->actor.speedXZ);
            Math_ApproachF(&this->actor.speedXZ, 9.0f, 1.0f, 0.9f);
            Math_ApproachF(&this->unk_69C, 1.0f, 1.0f, 0.02f);
            if (this->unk_150 >= 30) {
                if (this->unk_150 < 45) {
                    globalCtx->envCtx.unk_BE = 0;
                    globalCtx->envCtx.unk_BD = 2;
                    globalCtx->envCtx.unk_D8 = 1.0f;
                } else {
                    Math_ApproachZeroF(&globalCtx->envCtx.unk_D8, 1.0f, 0.1f);
                }

                if (this->unk_150 == 30) {
                    for (i = 0; i < 50; i++) {
                        Vec3f pos;
                        Vec3f velocity;

                        pos.x = koumePtr->actor.world.pos.x + Rand_CenteredFloat(50.0f);
                        pos.y = koumePtr->actor.world.pos.y + Rand_CenteredFloat(50.0f);
                        pos.z = koumePtr->actor.world.pos.z + Rand_CenteredFloat(50.0f);
                        velocity.x = Rand_CenteredFloat(20.0f);
                        velocity.y = Rand_CenteredFloat(20.0f);
                        velocity.z = Rand_CenteredFloat(20.0f);
                        func_80939070(globalCtx, &pos, &velocity, &sZeroVector, Rand_ZeroFloat(10.0f) + 25.0f, 1);
                    }
                    Audio_PlayActorSound2(&koumePtr->actor, NA_SE_EN_TWINROBA_TRANSFORM);
                    globalCtx->envCtx.unk_D8 = 0;
                }
                if (this->unk_150 >= 35) {
                    if (this->unk_150 < 50) {
                        Math_ApproachF(&koumePtr->actor.scale.x,
                                       ((Math_SinS(this->unk_150 * 0x4200) * 20.0f) / 10000.0f) + 0.024999999f, 1.0f,
                                       0.005f);
                    } else {
                        if (this->unk_150 == 50) {
                            Animation_MorphToPlayOnce(&koumePtr->skelAnime, &D_060088C8, -5);
                            this->animFrameSwitch = Animation_GetLastFrame(&D_060088C8);
                        }
                        if (this->unk_150 == 60) {
                            Audio_PlayActorSound2(&koumePtr->actor, NA_SE_EN_TWINROBA_LAUGH);
                        }
                        if (Animation_OnFrame(&koumePtr->skelAnime, this->animFrameSwitch)) {
                            Animation_MorphToLoop(&koumePtr->skelAnime, &D_06006F28, 0.f);
                            this->animFrameSwitch = 1000.0f;
                        }
                        Math_ApproachF(&koumePtr->actor.scale.x, 0.024999999f, 0.1f, 0.005f);
                    }
                    Actor_SetScale(&koumePtr->actor, koumePtr->actor.scale.x);
                    koumePtr->actor.shape.rot.y = -0x8000;
                    koumePtr->unk_5F8 = 1;
                    if (this->unk_150 == 0x64) {
                        this->unk_5FA = 10;
                        this->unk_150 = 0;
                        this->unk_6B0 = 0.0f;
                        kotakePtr->unk_564 = 1;
                        Animation_MorphToLoop(&kotakePtr->skelAnime, &D_060004A4, 0.0f);
                        kotakePtr->actor.world.pos.x = 0.0f;
                        kotakePtr->actor.world.pos.y = 80.0f;
                        kotakePtr->actor.world.pos.z = -600.0f;
                        kotakePtr->actor.shape.rot.y = kotakePtr->actor.world.rot.y = 0;
                        this->unk_150 = 0;

                        this->subCamEye.x = -30.0f;
                        this->subCamEye.y = 260.0f;
                        this->subCamEye.z = -470.0f;

                        this->subCamAt.x = 0;
                        this->subCamAt.y = 270.0f;
                        this->subCamAt.z = -600.0f;
                        Actor_SetScale(&kotakePtr->actor, 0.014999999f);
                    }
                } else {
                    koumePtr->actor.shape.rot.y = koumePtr->actor.shape.rot.y + (s16)this->unk_6B0;
                }
            } else {
                if ((this->unk_150 & 7) == 0) {
                    Audio_PlayActorSound2(&koumePtr->actor, NA_SE_EN_TWINROBA_ROLL);
                }
                koumePtr->actor.shape.rot.y = koumePtr->actor.shape.rot.y + (s16)this->unk_6B0;
                Math_ApproachF(&this->unk_6B0, 12288.0f, 1.0f, 384.0f);
                if (Animation_OnFrame(&koumePtr->skelAnime, this->animFrameSwitch)) {
                    Animation_MorphToLoop(&koumePtr->skelAnime, &D_06006F28, 0.0f);
                    this->animFrameSwitch = 1000.0f;
                }
            }
            break;
        case 10:
            SkelAnime_Update(&kotakePtr->skelAnime);
            Math_ApproachF(&kotakePtr->actor.world.pos.y, 240.0f, 0.05f, 5.0f);
            this->subCamEye.x -= 0.2f;
            this->subCamEye.z -= 0.2f;
            if (this->unk_150 >= 0x33) {
                this->unk_5FA = 11;
                this->unk_66C.x = -30;
                this->unk_66C.y = 260;
                this->unk_66C.z = -530;
                this->unk_684.x = 0;
                this->unk_684.y = 265;
                this->unk_684.z = -580;
                this->unk_654.x = fabsf(this->unk_66C.x - this->subCamEye.x);
                ;
                this->unk_654.y = fabsf(this->unk_66C.y - this->subCamEye.y);
                ;
                this->unk_654.z = fabsf(this->unk_66C.z - this->subCamEye.z);
                ;
                this->unk_660.x = fabsf(this->unk_684.x - this->subCamAt.x);
                ;
                this->unk_660.y = fabsf(this->unk_684.y - this->subCamAt.y);
                this->unk_660.z = fabsf(this->unk_684.z - this->subCamAt.z);
                this->unk_69C = 0;
                this->unk_6A0 = 0.1f;
                this->unk_150 = 0;
            }
            break;
        case 11:
            SkelAnime_Update(&kotakePtr->skelAnime);
            sp9F = 1;
            Math_ApproachF(&kotakePtr->actor.world.pos.y, 240.0f, 0.05f, 5.0f);
            Math_ApproachF(&this->unk_69C, 1.0f, 1.0f, 0.02f);
            if (this->unk_150 == 30) {
                func_8010B680(globalCtx, 0x604A, NULL);
            }
            if (this->unk_150 > 80) {
                this->unk_5FA = 12;
                this->actor.speedXZ = 0;

                this->unk_66C.y = 260.0f;
                this->unk_66C.x = -80.0f;
                this->unk_66C.z = -430.0f;

                this->unk_684.x = kotakePtr->actor.world.pos.x;
                this->unk_684.y = kotakePtr->actor.world.pos.y + 20.0f;
                this->unk_684.z = kotakePtr->actor.world.pos.z;

                this->unk_654.x = fabsf(this->unk_66C.x - this->subCamEye.x);
                this->unk_654.y = fabsf(this->unk_66C.y - this->subCamEye.y);
                this->unk_654.z = fabsf(this->unk_66C.z - this->subCamEye.z);
                this->unk_660.x = fabsf(this->unk_684.x - this->subCamAt.x);
                this->unk_660.y = fabsf(this->unk_684.y - this->subCamAt.y);
                this->unk_660.z = fabsf(this->unk_684.z - this->subCamAt.z);
                this->unk_69C = 0;
                this->unk_6A0 = 0.05f;
                Animation_MorphToPlayOnce(&kotakePtr->skelAnime, &D_06000AAC, 0);
                this->animFrameSwitch = Animation_GetLastFrame(&D_06000AAC);
                this->unk_150 = 0;
            }
            break;
        case 12:
            sp9F = 1;
            SkelAnime_Update(&kotakePtr->skelAnime);
            this->unk_684.y = kotakePtr->actor.world.pos.y + 20.0f;
            Math_ApproachF(&kotakePtr->actor.world.pos.y, 350, 0.1f, this->actor.speedXZ);
            Math_ApproachF(&this->actor.speedXZ, 9.0f, 1.0f, 0.9f);
            Math_ApproachF(&this->unk_69C, 1.0f, 1.0f, 0.02f);
            if (this->unk_150 >= 30) {
                if (this->unk_150 < 45) {
                    globalCtx->envCtx.unk_BD = 3;
                    globalCtx->envCtx.unk_D8 = 1.0f;
                } else {
                    Math_ApproachZeroF(&globalCtx->envCtx.unk_D8, 1.0f, 0.1f);
                }
                if (this->unk_150 == 30) {
                    for (i = 0; i < 50; i++) {
                        Vec3f pos;
                        Vec3f velocity;
                        pos.x = kotakePtr->actor.world.pos.x + Rand_CenteredFloat(50.0f);
                        pos.y = kotakePtr->actor.world.pos.y + Rand_CenteredFloat(50.0f);
                        pos.z = kotakePtr->actor.world.pos.z + Rand_CenteredFloat(50.0f);
                        velocity.x = Rand_CenteredFloat(20.0f);
                        velocity.y = Rand_CenteredFloat(20.0f);
                        velocity.z = Rand_CenteredFloat(20.0f);
                        func_80939070(globalCtx, &pos, &velocity, &sZeroVector, Rand_ZeroFloat(10.f) + 25.0f, 0);
                    }
                    Audio_PlayActorSound2(&kotakePtr->actor, NA_SE_EN_TWINROBA_TRANSFORM);
                    globalCtx->envCtx.unk_D8 = 0.0f;
                }
                if (this->unk_150 >= 35) {
                    if (this->unk_150 < 50) {
                        Math_ApproachF(&kotakePtr->actor.scale.x,
                                       ((Math_SinS(this->unk_150 * 0x4200) * 20.0f) / 10000.0f) + 0.024999999f, 1.0f,
                                       0.005f);
                    } else {
                        if (this->unk_150 == 50) {
                            Animation_MorphToPlayOnce(&kotakePtr->skelAnime, &D_060088C8, -5.0f);
                            this->animFrameSwitch = Animation_GetLastFrame(&D_060088C8);
                        }
                        if (this->unk_150 == 60) {
                            Audio_PlayActorSound2(&kotakePtr->actor, NA_SE_EN_TWINROBA_LAUGH2);
                        }
                        if (Animation_OnFrame(&kotakePtr->skelAnime, this->animFrameSwitch)) {
                            Animation_MorphToLoop(&kotakePtr->skelAnime, &D_06006F28, 0.0f);
                            this->animFrameSwitch = 1000.0f;
                        }
                        Math_ApproachF(&kotakePtr->actor.scale.x, 0.024999999f, .1f, 0.005f);
                    }

                    Actor_SetScale(&kotakePtr->actor, kotakePtr->actor.scale.x);
                    kotakePtr->actor.shape.rot.y = 0;
                    kotakePtr->unk_5F8 = 1;
                    if (this->unk_150 == 0x64) {
                        this->unk_5FA = 20;
                        this->unk_150 = 0;

                        this->unk_1B0 = 600.0f;

                        this->subCamEye.x = 800.0f;
                        this->subCamEye.y = 300.0f;
                        this->subCamEye.z = 0;

                        this->subCamAt.x = 0.0f;
                        this->subCamAt.y = 400.0f;
                        this->subCamAt.z = 0;

                        this->unk_1A8 = -1.5707964f;
                        this->unk_1AC = 0.0f;

                        this->unk_654.x = 0.0f;
                        this->spawnPortalAlpha = 0.0f;
                    }
                } else {
                    kotakePtr->actor.shape.rot.y = kotakePtr->actor.shape.rot.y + (s16)this->unk_6B0;
                }
            } else {
                if ((this->unk_150 & 7) == 0) {
                    Audio_PlayActorSound2(&kotakePtr->actor, NA_SE_EN_TWINROBA_ROLL);
                }
                kotakePtr->actor.shape.rot.y = kotakePtr->actor.shape.rot.y + (s16)this->unk_6B0;
                Math_ApproachF(&this->unk_6B0, 12288.0f, 1.0f, 384.0f);
                if (Animation_OnFrame(&kotakePtr->skelAnime, this->animFrameSwitch)) {
                    Animation_MorphToLoop(&kotakePtr->skelAnime, &D_06006F28, 0.0f);
                    this->animFrameSwitch = 1000.0f;
                }
            }
            break;
        case 20:
            if (this->unk_150 > 20 && this->unk_150 < 120) {
                globalCtx->envCtx.unk_BD = 1;
                Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.015f);
            }
            if (this->unk_150 == 90) {
                Audio_SetBGM(0x105A00FF);
            }
            if (this->unk_150 == 120) {
                sEnvType = 0;
                globalCtx->envCtx.unk_BE = 1;
                globalCtx->envCtx.unk_BD = 1;
                globalCtx->envCtx.unk_D8 = 0.0f;
                TitleCard_InitBossName(globalCtx, &globalCtx->actorCtx.titleCtx, SEGMENTED_TO_VIRTUAL(D_0602E170), 0xA0,
                                       0xB4, 0x80, 0x28);
                gSaveContext.eventChkInf[7] |= 0x20;
                Audio_SetBGM(0x1B);
            }

            if (this->unk_150 >= 160) {
                if (this->unk_150 == 160) {
                    this->unk_654.x = 0.0f;
                }
                Math_ApproachF(&this->subCamEye.x, 0.0f, 0.05f, this->unk_654.x * 0.5f);
                Math_ApproachF(&this->subCamEye.z, 1000.0f, 0.05f, this->unk_654.x);
                Math_ApproachF(&this->unk_654.x, 40.0f, 1.0f, 1);
            } else {
                Math_ApproachF(&this->subCamEye.x, 300.0f, 0.05f, this->unk_654.x);
                Math_ApproachF(&this->unk_654.x, 5.0f, 1.0f, 0.5f);
            }
            if (this->unk_150 < 200) {
                Audio_PlayActorSound2(&koumePtr->actor, NA_SE_EN_TWINROBA_FLY - SFX_FLAG);
                Audio_PlayActorSound2(&kotakePtr->actor, NA_SE_EN_TWINROBA_FLY - SFX_FLAG);
                sp90.x = this->unk_1B0;
                sp90.y = 400.0f;
                sp90.z = 0.0f;
                Matrix_RotateY(this->unk_1A8, MTXMODE_NEW);
                Matrix_MultVec3f(&sp90, &sp84);
                koumePtr->actor.world.pos.x = sp84.x;
                koumePtr->actor.world.pos.y = sp84.y;
                koumePtr->actor.world.pos.z = sp84.z;
                koumePtr->actor.world.rot.y = koumePtr->actor.shape.rot.y = (this->unk_1A8 / M_PI) * 32768.0f;
                kotakePtr->actor.world.pos.x = -sp84.x;
                kotakePtr->actor.world.pos.y = sp84.y;
                kotakePtr->actor.world.pos.z = -sp84.z;
                kotakePtr->actor.shape.rot.y = kotakePtr->actor.world.rot.y =
                    ((this->unk_1A8 / M_PI) * 32768.0f) + 32768.0f;
                Math_ApproachF(&this->unk_1B0, 80.0f, 0.1f, 5.0f);
                this->unk_1A8 -= this->unk_1AC;
                Math_ApproachF(&this->unk_1AC, 0.19999999f, 1.0f, 0.0019999994f);
            }

            if (this->unk_150 == 200) {
                koumePtr->actionFunc = func_8093A2AC;
                kotakePtr->actionFunc = func_8093A2AC;
                koumePtr->targetPos.x = 600.0f;
                koumePtr->targetPos.y = 400.0f;
                koumePtr->targetPos.z = 0.0f;
                koumePtr->timers[0] = 100;
                kotakePtr->targetPos.x = -600.0f;
                kotakePtr->targetPos.y = 400.0f;
                kotakePtr->targetPos.z = 0.0f;
                kotakePtr->timers[0] = 100;
            }

            if (this->unk_150 == 260) {
                Camera* cam = Gameplay_GetCamera(globalCtx, 0);
                cam->eye = this->subCamEye;
                cam->eyeNext = this->subCamEye;
                cam->at = this->subCamAt;
                func_800C08AC(globalCtx, this->subCamId, 0);
                this->subCamId = 0;
                this->unk_5FA = this->subCamId;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                BossTw_TwinrovaSetupWaitForMerge(this, globalCtx);
            }
            break;
    }

    if (this->subCamId != 0) {
        if (sp9F) {
            Math_ApproachF(&this->subCamEye.x, this->unk_66C.x, this->unk_6A0, this->unk_654.x * this->unk_69C);
            Math_ApproachF(&this->subCamEye.y, this->unk_66C.y, this->unk_6A0, this->unk_654.y * this->unk_69C);
            Math_ApproachF(&this->subCamEye.z, this->unk_66C.z, this->unk_6A0, this->unk_654.z * this->unk_69C);
            Math_ApproachF(&this->subCamAt.x, this->unk_684.x, this->unk_6A0, this->unk_660.x * this->unk_69C);
            Math_ApproachF(&this->subCamAt.y, this->unk_684.y, this->unk_6A0, this->unk_660.y * this->unk_69C);
            Math_ApproachF(&this->subCamAt.z, this->unk_684.z, this->unk_6A0, this->unk_660.z * this->unk_69C);
        }

        Gameplay_CameraSetAtEye(globalCtx, this->subCamId, &this->subCamAt, &this->subCamEye);
    }
}

void func_8093EE10(BossTw* this, GlobalContext* globalCtx) {
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    s32 pad;
    s16 phi_v0;
    s16 sp24;
    f32 temp_f14_2;

    if (!(this->unk_150 & 0xF)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_FB_FLY);
    }

    if (twinrovaPtr->unk_5FA < 2) {
        if (this->timers[0] == 0) {
            this->timers[0] = 0x14;
            this->targetPos.x = Rand_CenteredFloat(100.0f) + twinrovaPtr->actor.world.pos.x;
            this->targetPos.y = Rand_CenteredFloat(50.0f) + 400.0f;
            this->targetPos.z = Rand_CenteredFloat(100.0f) + twinrovaPtr->actor.world.pos.z;
        }
        this->timers[1] = 0xA;
        this->unk_4C8 = 8192.0f;
        this->actor.speedXZ = 5.0f;
    } else {
        if (this->timers[1] == 9) {
            this->targetPos.y = 413.0f;
            this->actor.world.pos.z = 0.0f;
            this->actor.world.pos.x = 0.0f;
            for (phi_v0 = 0; phi_v0 < 0x32; phi_v0++) {
                this->blastTailPos[phi_v0] = this->actor.world.pos;
            }
        }
        if (this->actor.params == 0x69) {
            this->targetPos.x = koumePtr->actor.world.pos.x;
            this->targetPos.z = koumePtr->actor.world.pos.z;
        } else {
            this->targetPos.x = kotakePtr->actor.world.pos.x;
            this->targetPos.z = kotakePtr->actor.world.pos.z;
        }
        Math_ApproachF(&this->targetPos.y, 263.0f, 1.0f, 2.0f);
        if (this->targetPos.y == 263.0f) {
            Math_ApproachF(&this->actor.speedXZ, 0.0f, 1.0f, 0.2f);
            if (twinrovaPtr->unk_5FA == 3) {
                Actor_Kill(&this->actor);
            }
        }
    }
    sp34 = this->targetPos.x - this->actor.world.pos.x;
    sp30 = this->targetPos.y - this->actor.world.pos.y;
    sp2C = this->targetPos.z - this->actor.world.pos.z;
    sp24 = Math_FAtan2F(sp34, sp2C) * 10430.378f;
    Math_ApproachS(&this->actor.world.rot.x, Math_FAtan2F(sp30, sqrtf(SQ(sp34) + SQ(sp2C))) * 10430.378f, 5,
                   this->unk_4C8);
    Math_ApproachS(&this->actor.world.rot.y, sp24, 5, this->unk_4C8);
    func_8002D908(&this->actor);
    func_8002D7EC(&this->actor);
}

void func_8093F108(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8093F9E4;
    Animation_MorphToLoop(&this->skelAnime, &D_06024374, -3.0f);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->actor.flags &= ~1;
    this->unk_5FA = this->unk_440 = 0;
    this->unk_150 = this->unk_152 = 0;
    this->invincibilityTimer = 10000;
    func_8093D3D8(koumePtr, globalCtx);
    func_8093D3D8(kotakePtr, globalCtx);
    kotakePtr->timers[0] = 8;
    this->unk_1D0 = 1.0f;
}

#ifdef NON_MATCHING
// minor reordering.
void func_8093F1C4(BossTw* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 pad2;
    s32 pad4;
    s16 sp3A;
    s16 sp38;
    u8 sp37;
    u8 sp36;
    u8 sp35;
    s32 pad3;

    sp3A = 0;
    sp38 = 0;
    sp37 = 0;
    sp36 = 0;
    sp35 = 0;

    if (this->unk_152 == 0x50) {
        sp36 = 1;
    }

    if (this->unk_152 == 0x50) {
        sp3A = 0x604B;
        sp35 = 0x32;
    }

    if (this->unk_152 == 0x8C) {
        sp37 = sp36 = 2;
    }
    if (this->unk_152 == 0xAA) {
        sp37 = 3;
        kotakePtr->unk_164 = -0x4000;
        kotakePtr->unk_4C8 = 0.0f;
        Audio_PlayActorSound2(&kotakePtr->actor, 0x39B4);
        sp3A = 0x604C;
    }
    if (this->unk_152 == 0xD2) {
        D_8094C874 = 0x1E;
    }
    if (this->unk_152 == 0x10E) {
        sp36 = 3;
        koumePtr->unk_164 = 0x4000;
        koumePtr->unk_4C8 = 0.0f;
        Audio_PlayActorSound2(&koumePtr->actor, 0x39B4);
    }
    if (this->unk_152 == 0x122) {
        sp3A = 0x604D;
        sp35 = 0x23;
    }
    if (this->unk_152 == 0x15E) {
        sp36 = sp37 = 2;
        koumePtr->unk_164 = kotakePtr->unk_164 = 0;
        koumePtr->unk_4C8 = kotakePtr->unk_4C8 = 0.0f;
    }
    if (this->unk_152 == 0x17C) {
        sp36 = sp37 = 3;
    }
    if (this->unk_152 == 0x190) {
        sp36 = sp37 = 2;
    }
    if (this->unk_152 == 0x1AE) {
        sp36 = 4;
        D_8094C874 = 0x1B3;
        D_8094C878 = 1;
    }
    if (this->unk_152 >= 0x1B9 && this->unk_152 < 0x35C) {
        func_80078884(0x31E7U);
    }
    if (this->unk_152 == 0x1AE) {
        sp3A = 0x604E;
    }
    if (this->unk_152 == 0x1E0) {
        sp37 = 4;
        kotakePtr->unk_164 = -0x4000;
    }
    if (this->unk_152 == 0x1F4) {
        sp36 = 2;
    }
    if (this->unk_152 == 0x1E0) {
        sp38 = 0x604F;
    }
    if (this->unk_152 == 0x212) {
        sp36 = 4;
        koumePtr->unk_164 = 0x4000;
        D_8094C87A = 0x14F;
        D_8094C87E = 1;
    }
    if (this->unk_152 == 0x212) {
        sp3A = 0x6050;
    }
    if (this->unk_152 == 0x244) {
        sp38 = 0x6051;
    }
    if (this->unk_152 == 0x26C) {
        sp3A = 0x6052;
    }
    if (this->unk_152 == 0x294) {
        sp38 = 0x6053;
    }
    if (this->unk_152 == 0x2BC) {
        sp3A = 0x6054;
    }
    if (this->unk_152 == 0x2E4) {
        sp38 = 0x6055;
    }
    if (this->unk_152 == 0x30C) {
        sp3A = 0x6056;
    }
    if (this->unk_152 == 0x334) {
        sp38 = 0x6057;
        Audio_SetBGM(0x105000FFU);
    }
    if (this->unk_152 == 0x35C) {
        sp36 = sp37 = 3;
    }
    if (this->unk_152 == 0x384) {
        Audio_PlayActorSound2(&koumePtr->actor, 0x39B5);
        Audio_PlayActorSound2(&kotakePtr->actor, 0x39B5);
    }
    if (this->unk_152 == 0x3A2) {
        sp3A = 0x6058;
    }

    if (sp3A != 0) {
        func_8010B680(globalCtx, sp3A, NULL);
        if (sp35 != 0) {
            D_8094C876 = 0xA;
            D_8094C874 = sp35;
            D_8094C878 = 0;
        }
    }

    if (sp38 != 0) {
        func_8010B680(globalCtx, sp38, NULL);
    }

    switch (sp37) {
        case 1:
            Animation_MorphToLoop(&kotakePtr->skelAnime, &D_0600230C, -5.0f);
            break;
        case 2:
            Animation_MorphToLoop(&kotakePtr->skelAnime, &D_06001D10, -5.0f);
            break;
        case 3:
            Animation_MorphToLoop(&kotakePtr->skelAnime, &D_060017E0, -5.0f);
            break;
        case 4:
            Animation_MorphToLoop(&kotakePtr->skelAnime, &D_060012A4, -5.0f);
            break;
    }

    switch (sp36) {
        case 1:
            Animation_MorphToLoop(&koumePtr->skelAnime, &D_0600230C, -5.0f);
            break;
        case 2:
            Animation_MorphToLoop(&koumePtr->skelAnime, &D_06001D10, -5.0f);
            break;
        case 3:
            Animation_MorphToLoop(&koumePtr->skelAnime, &D_060017E0, -5.0f);
            break;
        case 4:
            Animation_MorphToLoop(&koumePtr->skelAnime, &D_060012A4, -5.0f);
            break;
    }

    if (this->unk_152 >= 0x78 && this->unk_152 < 0x1F4) {
        Math_ApproachF(&this->unk_1CC, 255.0f, 0.1f, 5.0f);
    }

    if (this->unk_152 >= 0x96) {
        Math_ApproachF(&koumePtr->unk_1C8, (Math_SinS(this->unk_150 * 2000) * 0.05f) + 0.4f, 0.1f, 0.01f);
        Math_ApproachF(&kotakePtr->unk_1C8, (Math_CosS(this->unk_150 * 1700) * 0.05f) + 0.4f, 0.1f, 0.01f);
        if (this->unk_152 >= 0x370) {
            Math_ApproachF(&kotakePtr->actor.world.pos.y, 2000.0f, 1.0f, this->actor.speedXZ);
            Math_ApproachF(&koumePtr->actor.world.pos.y, 2000.0f, 1.0f, this->actor.speedXZ);
            Math_ApproachF(&this->actor.speedXZ, 10.0f, 1.0f, 0.25f);
            if (this->unk_152 >= 0x3A2) {
                Math_ApproachF(&this->unk_1D0, 5.0f, 1.0f, 0.05f);
                Math_ApproachF(&this->unk_1CC, 0.0f, 1.0f, 3.0f);
            }
            Audio_PlayActorSound2(&this->actor, 0x2086);
            return;
        } else {
            // reordering here.
            Math_ApproachF(&kotakePtr->actor.world.pos.y, 20.0f + (263.0f + (Math_CosS(this->unk_152 * 1700) * 4.0f)),
                           0.1f, this->actor.speedXZ);
            Math_ApproachF(&koumePtr->actor.world.pos.y, 20.0f + (263.0f + (Math_SinS(this->unk_152 * 1500) * 4.0f)),
                           0.1f, this->actor.speedXZ);
            Math_ApproachF(&this->actor.speedXZ, 1.0f, 1.0f, 0.05f);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093F1C4.s")
#endif

#ifdef NON_MATCHING
void func_8093F9E4(BossTw* this, GlobalContext* globalCtx) {
    s16 i;
    f32 spD8;
    f32 spD4;
    f32 spD0;
    Player* player = PLAYER;
    Camera* mainCam = Gameplay_GetCamera(globalCtx, 0);

    SkelAnime_Update(&this->skelAnime);
    this->unk_160 += 20;
    if (this->unk_160 >= 0x100) {
        this->unk_160 = 0xFF;
    }
    Math_ApproachF(&this->unk_1B4, 0.0f, 1.0f, 0.05f);
    this->unk_5F8 = 1;
    switch (this->unk_440) {
        case 0:
            if (this->unk_150 == 0xF) {
                Animation_MorphToPlayOnce(&this->skelAnime, &D_060216DC, -3.0f);
            }
            if (this->unk_150 >= 0xF) {
                Math_ApproachF(&this->actor.world.pos.y, 400.0f, 0.05f, 10.0f);
            }
            if (this->unk_150 >= 0x37) {
                if (this->unk_150 == 0x37) {
                    globalCtx->envCtx.unk_D8 = 0.0f;
                }
                sEnvType = -1;
                globalCtx->envCtx.unk_BE = 5;
                globalCtx->envCtx.unk_BD = 0;
                Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.015f);
                Math_ApproachF(&this->actor.scale.x, 0.00024999998f, 0.1f, 0.00005f);
                this->actor.shape.rot.y = this->actor.shape.rot.y + (s16)this->actor.speedXZ;
                this->unk_1B8 += this->actor.speedXZ;
                if (this->unk_1B8 > 65536.0f) {
                    this->unk_1B8 -= 65536.0f;
                    Audio_PlayActorSound2(&this->actor, 0x3921);
                }

                Math_ApproachF(&this->actor.speedXZ, 12288.0f, 1.0f, 256.0f);
                if (this->unk_150 == 0x87) {
                    Vec3f spBC;
                    Vec3f spB0;
                    Vec3f spA4;
                    spA4 = D_8094A8E8;
                    func_80078884(0x390D);
                    for (i = 0; i < 100; i++) {
                        spB0.x = Rand_CenteredFloat(5.0f);
                        spB0.y = Rand_CenteredFloat(5);
                        spB0.z = Rand_CenteredFloat(5);
                        spBC = this->actor.world.pos;
                        spBC.x += spB0.x;
                        spBC.y += spB0.y;
                        spBC.z += spB0.z;
                        func_80939070(globalCtx, &spBC, &spB0, &spA4, Rand_ZeroFloat(2.0f) + 5, Rand_ZeroFloat(1.99f));
                    }
                    this->unk_440 = 1;
                    this->unk_564 = 0;
                    this->actor.scale.x = 0.0f;
                    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_TW,
                                       this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, 0, 0,
                                       0, 0x69);
                    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_TW,
                                       this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z, 0, 0,
                                       0, 0x68);
                    this->actor.flags &= ~1;
                }
            }
            Actor_SetScale(&this->actor, this->actor.scale.x);
        case 1:
            break;
    }

    switch (this->unk_5FA) {
        case 0:
            this->unk_5FA = 1;
            func_80064520(globalCtx, &globalCtx->csCtx);
            func_8002DF54(globalCtx, &this->actor, 8);
            this->subCamId = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, CAM_STAT_WAIT);
            Gameplay_ChangeCameraStatus(globalCtx, this->subCamId, CAM_STAT_ACTIVE);
            this->subCamEye = mainCam->eye;
            this->subCamAt = mainCam->at;
            Audio_SetBGM(0x100100FF);
            break;
        case 1:
            spD0 = Math_SinS(this->actor.world.rot.y) * 200.0f;
            spD8 = Math_CosS(this->actor.world.rot.y) * 200.0f;
            Math_ApproachF(&this->subCamEye.x, this->actor.world.pos.x + spD0, 0.1f, 50.0f);
            Math_ApproachF(&this->subCamEye.y, 300.0f, 0.1f, 50.0f);
            Math_ApproachF(&this->subCamEye.z, this->actor.world.pos.z + spD8, 0.1f, 50.0f);
            Math_ApproachF(&this->subCamAt.x, this->actor.world.pos.x, 0.1f, 50.0f);
            Math_ApproachF(&this->subCamAt.y, this->actor.world.pos.y, 0.1f, 50.0f);
            Math_ApproachF(&this->subCamAt.z, this->actor.world.pos.z, 0.1f, 50.0f);
            if (this->unk_150 == 0xAA) {
                this->unk_5FA = 2;
                this->unk_152 = 0;
                this->subCamEye.x = 0.0f;
                this->subCamEye.y = 260.0f;
                this->subCamEye.z = 170.0f;
                this->subCamAt.x = 0.0f;
                this->subCamAt.z = 0.0f;
                this->unk_6A4 = 170.0f;
                player->actor.shape.rot.y = -0x8000;
                player->actor.world.pos.x = -40.0f;
                player->actor.world.pos.y = 240.0f;
                player->actor.world.pos.z = 90.0f;
                koumePtr->actor.world.pos.x = -37.0f;
                kotakePtr->actor.world.pos.x = 37.0f;
                koumePtr->actor.world.pos.y = kotakePtr->actor.world.pos.y = 263.0f;
                this->subCamAt.y = koumePtr->actor.world.pos.y + 17.0f;
                koumePtr->actor.world.pos.z = kotakePtr->actor.world.pos.z = 0.0f;
                kotakePtr->actor.shape.rot.y = 0;

                koumePtr->unk_164 = kotakePtr->unk_164 = koumePtr->actor.shape.rot.x = kotakePtr->actor.shape.rot.x =
                    koumePtr->actor.shape.rot.y = kotakePtr->actor.shape.rot.y;

                func_8002DF54(globalCtx, &koumePtr->actor, 1);
                koumePtr->actor.flags |= 1;
            }
            break;
        case 2:
            if (this->unk_152 == 100) {
                Vec3f sp98;
                Vec3f sp8C;
                Vec3f sp80;
                sp80 = D_8094A8F4;
                for (i = 0; i < 50; i++) {
                    sp8C.x = Rand_CenteredFloat(3.0f);
                    sp8C.y = Rand_CenteredFloat(3.0f);
                    sp8C.z = Rand_CenteredFloat(3.0f);
                    sp98 = koumePtr->actor.world.pos;
                    sp98.x += (2.0f * sp8C.x);
                    sp98.y += (2.0f * sp8C.y);
                    sp98.z += (2.0f * sp8C.z);
                    func_80939070(globalCtx, &sp98, &sp8C, &sp80, Rand_ZeroFloat(2.0f) + 5.0f, 1);
                    sp8C.x = Rand_CenteredFloat(3.0f);
                    sp8C.y = Rand_CenteredFloat(3.0f);
                    sp8C.z = Rand_CenteredFloat(3.0f);
                    sp98 = kotakePtr->actor.world.pos;
                    sp98.x += 2.0f * sp8C.x;
                    sp98.y += 2.0f * sp8C.y;
                    sp98.z += 2.0f * sp8C.z;
                    func_80939070(globalCtx, &sp98, &sp8C, &sp80, Rand_ZeroFloat(2.0f) + 5.0f, 0);
                }
                Actor_SetScale(&koumePtr->actor, 0.0f);
                Actor_SetScale(&kotakePtr->actor, 0.0f);
                koumePtr->unk_564 = 1;
                kotakePtr->unk_564 = 1;
                func_80078884(0x390D);
                Audio_SetBGM(0x61);
                this->unk_5FA = 3;
                this->unk_152 = 0;
                this->unk_6A0 = 0.0f;
                this->actor.speedXZ = 0.0f;
                this->unk_6B0 = 0.0f;
                this->unk_6AC = 0.0f;
            }
            break;
        case 3:
            func_8093F1C4(this, globalCtx);
            if (this->unk_152 < 0x96) {
                globalCtx->envCtx.unk_BE = 1;
                globalCtx->envCtx.unk_BD = 0;
                Math_ApproachZeroF(&globalCtx->envCtx.unk_D8, 1.0f, 0.1f);
            } else {
                globalCtx->envCtx.unk_BE = 1;
                globalCtx->envCtx.unk_BD = 6;
                Math_ApproachF(&globalCtx->envCtx.unk_D8, (Math_SinS(this->unk_152 * 4096) * 0.25f) + 0.75f, 1.0f,
                               0.1f);
            }

            Math_ApproachF(&this->subCamAt.y, koumePtr->actor.world.pos.y + 17.0f, 0.05f, 10.0f);

            if (this->unk_152 >= 50) {
                Math_ApproachF(&this->unk_6A4, 110.0f, 0.05f, this->unk_6A0);
                Math_ApproachF(&this->unk_6A0, 1.0f, 1.0f, 0.025f);
                this->subCamEye.x = sinf(this->unk_6AC) * this->unk_6A4;
                this->subCamEye.z = cosf(this->unk_6AC) * this->unk_6A4;
                if (this->unk_152 >= 0x97) {
                    this->unk_6AC += this->unk_6B0;
                    if (this->unk_152 >= 0x320) {
                        Math_ApproachF(&this->unk_6B0, 0.0f, 1.0f, 0.0001f);
                    } else {
                        Math_ApproachF(&this->unk_6B0, 0.015f, 1.0f, 0.0001f);
                    }
                }
            }

            Math_ApproachF(&koumePtr->actor.scale.x, 0.009999999f, 0.1f, 0.001f);
            Actor_SetScale(&koumePtr->actor, koumePtr->actor.scale.x);
            Actor_SetScale(&kotakePtr->actor, koumePtr->actor.scale.x);
            if (this->unk_152 >= 0x3FC) {
                Camera* cam = Gameplay_GetCamera(globalCtx, 0);
                s32 pad[2];
                cam->eye = this->subCamEye;
                cam->eyeNext = this->subCamEye;
                cam->at = this->subCamAt;
                func_800C08AC(globalCtx, this->subCamId, 0);
                this->unk_5FA = 4;
                this->subCamId = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                Audio_SetBGM(0x21);
                Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, 600.0f, 230.0f,
                                   0.0f, 0, 0, 0, -1);
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, -600.0f, 230, 0.0f, 0, 0, 0, 0);
                this->actor.world.pos.y = -2000.0f;
                this->unk_1CC = 0.0f;
                koumePtr->unk_564 = kotakePtr->unk_564 = 0;
                // Fake
                if (&this->subCamEye) {}
                Flags_SetClear(globalCtx, globalCtx->roomCtx.curRoom.num);
            }
            break;
        case 4:
            sEnvType = 0;
            break;
        default:
            break;
    }

    if (this->subCamId != 0) {
        do {
            Gameplay_CameraSetAtEye(globalCtx, this->subCamId, &this->subCamAt, &this->subCamEye);
        } while (0);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_8093F9E4.s")
#endif
#undef NON_MATCHING

void BossTw_Update(Actor* thisx, GlobalContext* globalCtx) {
    BossTw* this = THIS;
    Player* player = PLAYER;
    s16 i;
    s32 pad;
    Vec3f sp74;
    Vec3f sp68;
    Vec3f sp5C;

    this->collider.base.colType = COLTYPE_HIT3;
    Math_ApproachF(&this->fogR, globalCtx->lightCtx.unk_07, 1.0f, 10.0f);
    Math_ApproachF(&this->fogG, globalCtx->lightCtx.unk_08, 1.0f, 10.0f);
    Math_ApproachF(&this->fogB, globalCtx->lightCtx.unk_09, 1.0f, 10.0f);
    Math_ApproachF(&this->fogMin, globalCtx->lightCtx.unk_0A, 1.0f, 10.0f);
    Math_ApproachF(&this->fogMax, 1000.0f, 1.0f, 10.0f);
    this->unk_150++;
    this->unk_152++;
    if (++this->unk_156 >= 50) {
        this->unk_156 = 0;
    }

    this->blastTailPos[this->unk_156] = this->actor.world.pos;

    for (i = 0; i < 5; i++) {
        DECR(this->timers[i]);
    }

    DECR(this->invincibilityTimer);
    DECR(this->fogTimer);

    if (this->actionFunc == func_8093A2AC || this->actionFunc == func_8093C700 || this->actionFunc == func_80939F88) {
        if ((s16)(player->actor.shape.rot.y - this->actor.yawTowardsPlayer + 0x8000) < 0x1000 &&
            (s16)(player->actor.shape.rot.y - this->actor.yawTowardsPlayer + 0x8000) >= -0xFFF && player->unk_A73) {
            func_8093C684(this, globalCtx);
        }
    }

    this->actionFunc(this, globalCtx);
    if (this->actionFunc != BossTw_TwinrovaWaitForMerge) {
        this->collider.dim.radius = 0x2D;
        if (this->actionFunc == func_8093C700) {
            this->collider.dim.radius *= 2;
        }
        this->collider.dim.height = 0x78;
        this->collider.dim.yShift = -0x1E;
        if (this->invincibilityTimer == 0) {
            if (this->collider.base.acFlags & 2) {
                this->collider.base.acFlags &= ~2;
            }
            Collider_UpdateCylinder(&this->actor, &this->collider);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }

        if (this->actor.params == 0) {
            this->unk_188 += 1.0f;
            this->unk_198 -= 7.0f;
            this->unk_19C += 1.0f;
        } else {
            this->unk_188 = this->unk_188;
            this->unk_190 = this->unk_190;
            this->unk_198 = this->unk_198 + -15.0f;
            this->unk_1A0 = this->unk_1A0 + -10.0f;
        }

        if ((this->unk_152 & 0x1F) == 0) {
            if (Rand_ZeroOne() < 0.3f) {
                this->unk_158 = 4;
            }
        }
        this->unk_4CC = D_8094A900[this->unk_158];
        if (this->unk_158 != 0) {
            this->unk_158--;
        }
        if (this->actionFunc != func_8093C7E4) {
            if (this->unk_5F8 != 0) {
                sp68 = D_8094A920;
                sp5C = D_8094A92C;

                if (0.0f < this->unk_4D0) {
                    for (i = 0; i <= 0; i++) {
                        sp74 = this->unk_450[0];
                        sp74.x += Rand_CenteredFloat(70.0f);
                        sp74.y += Rand_CenteredFloat(70.0f);
                        sp74.z += Rand_CenteredFloat(70.0f);
                        sp5C.y = 0.4f;
                        sp5C.x = Rand_CenteredFloat(0.5f);
                        sp5C.z = Rand_CenteredFloat(0.5f);
                        BossTw_AddDotEffect(globalCtx, &sp74, &sp68, &sp5C, (s16)Rand_ZeroFloat(2.0f) + 8,
                                            this->actor.params, 0x25);
                    }
                }

                for (i = 0; i <= 0; i++) {
                    sp74 = this->unk_444;
                    sp74.x += Rand_CenteredFloat(70.0f);
                    sp74.y += Rand_CenteredFloat(70.0f);
                    sp74.z += Rand_CenteredFloat(70.0f);
                    sp5C.y = 0.4f;
                    sp5C.x = Rand_CenteredFloat(0.5f);
                    sp5C.z = Rand_CenteredFloat(0.5f);
                    BossTw_AddDotEffect(globalCtx, &sp74, &sp68, &sp5C, (s16)Rand_ZeroFloat(2.0f) + 8,
                                        this->actor.params, 0x25);
                }
            }
        }
    }
}

#ifdef NON_MATCHING
// BossTw_TwinrovaUpdate

void func_80940D48(Actor* thisx, GlobalContext* globalCtx2) {
    s16 i;
    GlobalContext* globalCtx = globalCtx2;
    BossTw* this = THIS;
    Player* player = PLAYER;

    this->actor.flags &= ~0x400;
    this->unk_5F8 = 0;
    this->collider.base.colType = COLTYPE_HIT3;

    Math_ApproachF(&this->fogR, globalCtx->lightCtx.unk_07, 1.0f, 10.0f);
    Math_ApproachF(&this->fogG, globalCtx->lightCtx.unk_08, 1.0f, 10.0f);
    Math_ApproachF(&this->fogB, globalCtx->lightCtx.unk_09, 1.0f, 10.0f);
    Math_ApproachF(&this->fogMin, globalCtx->lightCtx.unk_0A, 1.0f, 10.0f);
    Math_ApproachF(&this->fogMax, 1000.0f, 1.0f, 10.0f);

    this->unk_150++;
    this->unk_152++;

    for (i = 0; i < 5; i++) {
        if (this->timers[i] != 0) {
            this->timers[i]--;
        }
    }

    if (this->invincibilityTimer != 0) {
        this->invincibilityTimer--;
    }

    if (this->fogTimer != 0) {
        this->fogTimer--;
    }

    this->actionFunc(this, globalCtx);

    if (this->actionFunc != func_809499AC && this->actionFunc != func_80949734 && this->unk_564 != 0 &&
        this->unk_5F8 == 0 && (s16)(player->actor.shape.rot.y - this->actor.yawTowardsPlayer + 0x8000) < 0x1000 &&
        (s16)(player->actor.shape.rot.y - this->actor.yawTowardsPlayer + 0x8000) >= -4095 && player->unk_A73 != 0) {
        func_8094A608(this, globalCtx);
    }

    this->unk_4CC = D_8094A900[this->unk_158];
    if (this->unk_158 != 0) {
        this->unk_158--;
    }

    if ((this->unk_152 % 32) == 0) {
        if (this->actionFunc != func_8093C910) {
            if (Rand_ZeroOne() < 0.3f) {
                this->unk_158 = 4;
            }
        }
    }

    if (this->actionFunc == func_8093C910) {
        this->unk_4CE = D_8094A90C[this->unk_162];
        if (this->unk_162 != 0) {
            this->unk_162--;
        }
    } else {
        if (this->actionFunc == func_80949E10) {
            this->unk_4CC = 1;
        }

        if (this->actionFunc == func_8093F9E4) {
            this->unk_4CC = 2;
        }

        this->unk_4CE = this->unk_4CC;
    }

    if (this->unk_564 != 0) {
        if (this->unk_5F8 == 0) {
            Vec3f sp7C;
            Vec3f sp70;
            Vec3f sp64;
            sp70 = D_8094A938;
            if (this->unk_160 != 0) {
                this->unk_160 -= 20;
                if (this->unk_160 < 0) {
                    this->unk_160 = 0;
                }
            }

            Math_ApproachF(&this->unk_1B4, 1.0f, 1.0f, 0.05f);
            sp64.y = 0.4f;
            for (i = 0; i < 2; i++) {
                sp7C = this->unk_498;
                sp7C.x += Rand_CenteredFloat(30.0f);
                sp7C.y += Rand_CenteredFloat(30.0f);
                sp7C.z += Rand_CenteredFloat(30.0f);
                sp64.x = Rand_CenteredFloat(0.5f);
                sp64.z = Rand_CenteredFloat(0.5f);
                BossTw_AddDotEffect(globalCtx, &sp7C, &sp70, &sp64, (s16)Rand_ZeroFloat(2.0f) + 7, 0, 0x4B);
            }

            for (i = 0; i < 2; i++) {
                sp7C = this->unk_4A4;
                sp7C.x += Rand_CenteredFloat(30.0f);
                sp7C.y += Rand_CenteredFloat(30.0f);
                sp7C.z += Rand_CenteredFloat(30.0f);
                sp64.x = Rand_CenteredFloat(0.5f);
                sp64.z = Rand_CenteredFloat(0.5f);
                BossTw_AddDotEffect(globalCtx, &sp7C, &sp70, &sp64, (s16)Rand_ZeroFloat(2.0f) + 7, 1, 0x4B);
            }
        }
    }

    this->collider.dim.radius = 35;
    if (this->actionFunc == func_8094A660) {
        this->collider.dim.radius *= 2;
    }
    this->collider.dim.height = 150;
    this->collider.dim.yShift = -60;
    Collider_UpdateCylinder(&this->actor, &this->collider);
    if (this->invincibilityTimer == 0) {
        if (this->actionFunc != func_80949E10) {
            if (this->twinrovaStun != 0) {
                this->twinrovaStun = 0;
                this->fogTimer = 10;
                func_80949CE4(this, globalCtx, 0);
                Audio_PlayActorSound2(&this->actor, 0x391A);
            } else if (this->collider.base.acFlags & AC_HIT) {
                ColliderInfo* info = this->collider.info.acHitInfo;
                this->collider.base.acFlags &= ~AC_HIT;
                if (info->toucher.dmgFlags & (DMG_SLINGSHOT | DMG_ARROW))
                    ;
            }
        } else if (this->collider.base.acFlags & AC_HIT) {
            u8 phi_a2;
            u8 phi_s1;
            ColliderInfo* info = this->collider.info.acHitInfo;
            this->collider.base.acFlags &= ~AC_HIT;
            phi_s1 = 0;
            phi_a2 = CollisionCheck_GetSwordDamage(info->toucher.dmgFlags);
            if (phi_a2 == 0) {
                phi_a2 = 2;
            } else {
                phi_s1 = true;
            }

            if (!(info->toucher.dmgFlags & DMG_HOOKSHOT)) {
                if (((s8)this->actor.colChkInfo.health < 3) && !phi_s1) {
                    phi_a2 = 0;
                }

                func_80949CE4(this, globalCtx, phi_a2);
            }
        }
    }

    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    osSyncPrintf("OooooooooooooooooooooooooooooooooCC\n");
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);

    globalCtx->envCtx.unk_DC = 2;

    switch (sEnvType) {
        case 0:
            Math_ApproachZeroF(&globalCtx->envCtx.unk_D8, 1.0f, 0.02f);
            break;
        case 1:
            globalCtx->envCtx.unk_BD = 3;
            Math_ApproachF(&globalCtx->envCtx.unk_D8, 0.5f, 1.0f, 0.05f);
            break;
        case 2:
            globalCtx->envCtx.unk_BD = 2;
            Math_ApproachF(&globalCtx->envCtx.unk_D8, (Math_SinS(this->unk_150 * 0x3000) * 0.03f) + 0.5f, 1.0f, 0.05f);
            break;
        case 3:
            globalCtx->envCtx.unk_BD = 3;
            Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.1f);
            break;
        case 4:
            globalCtx->envCtx.unk_BD = 2;
            Math_ApproachF(&globalCtx->envCtx.unk_D8, (Math_SinS(this->unk_150 * 0x3E00) * 0.05f) + 0.95f, 1.0f, 0.1f);
            break;
        case 5:
            globalCtx->envCtx.unk_BD = 0;
            Math_ApproachF(&globalCtx->envCtx.unk_D8, 1.0f, 1.0f, 0.05f);
            break;
        case -1:
            break;
    }

    func_809477E0(globalCtx);
    if (D_8094C85F == 1) {
        D_8094C85F = 2;
        func_80938FC4(globalCtx, 0);
        func_80078914(&player->actor.projectedPos, 0x6806);
        func_80078914(&player->actor.projectedPos, 0x86E);
        if (D_8094C850 != 0) {
            D_8094C850 = 4;
        }
    }
    if ((player->isBurning) && (D_8094C851 != 0)) {
        D_8094C851 = 4;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80940D48.s")
#endif

s32 func_809416D0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    BossTw* this = THIS;

    if (limbIndex == 0x15) {
        if (this->unk_5F8 == 0) {
            if (this->actor.params == 0) {
                *dList = D_06012CE0;
            } else {
                *dList = D_060134B8;
            }
        }
    }
    if (limbIndex == 0xE) {
        if (this->actionFunc == func_8093D444) {
            *dList = NULL;
        } else if (this->unk_4D0 == 0.0f) {
            if (this->actor.params == 0) {
                *dList = D_06012B38;
            } else {
                *dList = D_06013310;
            }
        }
    }
    return 0;
}

void func_80941788(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    BossTw* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6168);
    switch (limbIndex) {
        case 0x15:
            Matrix_MultVec3f(&D_8094A944, &this->actor.focus.pos);
            Matrix_MultVec3f(&D_8094A950, &this->unk_444);
            if (this->unk_5F8 != 0) {
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6190),
                          G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
                if (this->actor.params == 0) {
                    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_06013AE8));
                } else {
                    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_06013D68));
                }
            }
            break;
        case 0xE:
            Matrix_MultVec3f(&D_8094A95C[0], &this->unk_450[0]);
            Matrix_MultVec3f(&D_8094A95C[1], &this->unk_450[1]);
            Matrix_MultVec3f(&D_8094A95C[2], &this->unk_450[2]);
            Matrix_MultVec3f(&D_8094A95C[3], &this->unk_450[3]);
            Matrix_MultVec3f(&D_8094A95C[4], &this->unk_450[4]);
            if (this->unk_4D0 > 0.0f) {
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6221),
                          G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
                if (this->actor.params == 0) {
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 225, 255, (s16)this->unk_4D0);
                    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_06013E98));
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, (s16)this->unk_4D0);
                    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_06013F98));
                } else {
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 100, 20, 0, (s16)this->unk_4D0);
                    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_06014070));
                    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 70, 0, (s16)this->unk_4D0);
                    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_06014158));
                }
            }
            break;
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6236);
}

void func_80941BC0(Actor* thisx, GlobalContext* globalCtx) {
    BossTw* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6341);
    Matrix_Push();
    func_80093D84(globalCtx->state.gfxCtx);
    Matrix_Translate(this->unk_4BC.x, this->unk_4BC.y, this->unk_4BC.z, MTXMODE_NEW);
    Matrix_Scale(this->unk_1B4, this->unk_1B4, this->unk_1B4, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6358),
              G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, (s16)this->unk_1B0);
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 40, 30, 80);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601BC00));
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 215, 215, 215, (u32)(this->unk_1BC * (s16)this->unk_1B0));
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, 128);
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, (u32)this->unk_1C4 & 0x3F,
                                (this->unk_152 * 4) & 0x3F, 0x10, 0x10));
    Matrix_Push();
    Matrix_RotateY(this->unk_1C0, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6423),
              G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601C1C0));
    Matrix_Pop();
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6427),
              G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPSegment(POLY_XLU_DISP++, 0xD,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, this->unk_152 & 0x7F, (u8)(this->unk_152 * 8), 0x20, 0x40,
                                1, (-this->unk_152 * 2) & 0x3F, 0, 0x10, 0x10));
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, (s16)this->unk_1A8);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, 128);
    gDPSetRenderMode(POLY_XLU_DISP++,
                     Z_CMP | IM_RD | CVG_DST_SAVE | ZMODE_DEC | FORCE_BL |
                         GBL_c1(G_BL_CLR_FOG, G_BL_A_SHADE, G_BL_CLR_IN, G_BL_1MA),
                     G_RM_ZB_OVL_SURF2);
    gSPSetGeometryMode(POLY_XLU_DISP++, G_CULL_BACK | G_FOG);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601A790));
    Matrix_Pop();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6461);
}

void func_80942180(BossTw* this, GlobalContext* globalCtx) {
    s32 pad;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6468);
    Matrix_Push();
    func_80093D84(globalCtx->state.gfxCtx);
    Matrix_Translate(this->unk_4BC.x, this->unk_4BC.y, this->unk_4BC.z, MTXMODE_NEW);
    Matrix_Scale(this->unk_1B8, this->unk_1B8, this->unk_1B8, MTXMODE_APPLY);
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (-this->unk_150) & 0x7F, 0, 0x20, 0x20, 1,
                                (this->unk_150 * 2) & 0x7F, 0, 0x20, 0x20));
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6497),
              G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 100, 40, 00, (s16)this->unk_1B0);
    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 245, 255, 128);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_06019D40));
    func_800D1FD4(&globalCtx->mf_11DA0);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6514),
              G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, this->unk_150 & 0x7F, (-this->unk_150 * 6) & 0xFF, 0x20,
                                0x40, 1, (this->unk_150 * 2) & 0x7F, (-this->unk_150 * 6) & 0xFF, 0x20, 0x40));
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 80, 0, 0, (s16)this->unk_1AC);
    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, 100);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_06018FC0));
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (-this->unk_150 * 3) & 0x7F, 0, 0x20, 0x20, 1, 0,
                                (-this->unk_150 * 0xA) & 0xFF, 0x20, 0x40));
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 100, 50, 0, (s16)(this->unk_1A8 * 0.7f));
    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 200, 235, 240, 128);
    Matrix_Scale(this->unk_1B4, this->unk_1B4, this->unk_1B4, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6575),
              G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_06019938));
    Matrix_Pop();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6579);
}

void func_809426F0(BossTw* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 phi_s1;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6587);
    gSPSegment(
        POLY_XLU_DISP++, 8,
        Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (u8)(-this->unk_152 * 15), 0x20, 0x40, 1, 0, 0, 0x40, 0x40));
    Matrix_Push();
    Matrix_Translate(0.0f, 0.0f, 5000.0f, MTXMODE_APPLY);
    Matrix_Scale(this->spawnPortalScale / 2000.0f, this->spawnPortalScale / 2000.0f, this->spawnPortalScale / 2000.0f,
                 MTXMODE_APPLY);
    Matrix_RotateZ(this->portalRotation, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6614),
              G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    if (this->actor.params == 0) {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 135, 175, 165, (s16)this->spawnPortalAlpha);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601CEE0));
    } else {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 0, (s16)this->spawnPortalAlpha);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601DBE8));
    }
    Matrix_Pop();
    if (this->actor.params == 0) {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, (s16)this->flameAlpha);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601A998));
    } else {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 200, 20, 0, (s16)this->flameAlpha);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 215, 255, 128);
    }
    for (phi_s1 = 0; phi_s1 < 8; phi_s1++) {
        Matrix_Push();
        Matrix_Translate(0.0f, 0.0f, 5000.0f, MTXMODE_APPLY);
        Matrix_RotateZ(((phi_s1 * M_PI) * 2.0f * 0.125f) + this->flameRotation, MTXMODE_APPLY);
        Matrix_Translate(0.0f, this->spawnPortalScale * 1.5f, 0.0f, MTXMODE_APPLY);
        gSPSegment(POLY_XLU_DISP++, 8,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, ((this->unk_152 * 3) + (phi_s1 * 10)) & 0x7F,
                                    (u8)((-this->unk_152 * 0xF) + (phi_s1 * 50)), 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
        Matrix_Scale(0.4f, 0.4f, 0.4f, MTXMODE_APPLY);
        func_800D1FD4(&globalCtx->mf_11DA0);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6751),
                  G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601A430));
        Matrix_Pop();
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6756);
}

extern Gfx D_0601DDF0[];
void func_80942C70(Actor* thisx, GlobalContext* globalCtx) {
    BossTw* this = THIS;
    s16 temp_a0;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6765);
    if (this->beamDist != 0.0f) {
        Matrix_Push();
        gSPSegment(POLY_XLU_DISP++, 0xC,
                   Gfx_TexScroll(globalCtx->state.gfxCtx, 0, (u8)(this->unk_150 * -0xF), 0x20, 0x40));
        temp_a0 = this->beamAlpha * 100.0f * 255.0f;
        if (this->actor.params == 1) {
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 60, temp_a0);
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 128);
        } else {
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, temp_a0);
            gDPSetEnvColor(POLY_XLU_DISP++, 100, 100, 255, 128);
        }
        Matrix_Translate(this->beamOrigin.x, this->beamOrigin.y, this->beamOrigin.z, MTXMODE_NEW);
        Matrix_RotateY(this->beamYaw, MTXMODE_APPLY);
        Matrix_RotateX(this->beamPitch, MTXMODE_APPLY);
        Matrix_RotateZ(this->unk_520, MTXMODE_APPLY);
        Matrix_Scale(this->beamAlpha, this->beamAlpha, (this->beamDist * 0.01f * 98.0f) / 20000.0f, MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, (char*)"../z_boss_tw.c", 6846),
                  G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601DDF0));
        if (this->beamReflectionDist > 10.0f) {
            Matrix_Translate(this->beamReflectionOrigin.x, this->beamReflectionOrigin.y, this->beamReflectionOrigin.z,
                             MTXMODE_NEW);
            Matrix_RotateY(this->beamReflectionYaw, MTXMODE_APPLY);
            Matrix_RotateX(this->beamReflectionPitch, MTXMODE_APPLY);
            Matrix_RotateZ(this->unk_520, MTXMODE_APPLY);
            Matrix_Scale(this->beamAlpha, this->beamAlpha, (this->beamReflectionDist * 0.01f * 100.0f) / 20000.0f,
                         MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, (char*)"../z_boss_tw.c", 6870),
                      G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601DDF0));
        }
        Matrix_Pop();
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6878);
}

extern Gfx D_0601F608[];
void func_80943028(Actor* thisx, GlobalContext* globalCtx) {
    BossTw* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6885);
    Matrix_Push();
    Matrix_Translate(this->actor.world.pos.x, this->actor.world.pos.y + 57.0f, this->actor.world.pos.z, MTXMODE_NEW);
    Matrix_Scale(this->unk_1C8, this->unk_1C8, this->unk_1C8, MTXMODE_APPLY);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 255);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6908),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601F608));
    func_80094044(globalCtx->state.gfxCtx);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 0, 0, 200);
    Matrix_Translate(this->actor.world.pos.x, 240.0f, this->actor.world.pos.z, MTXMODE_NEW);
    Matrix_Scale((this->actor.scale.x * 4000.0f) / 100.0f, 1.0f, (this->actor.scale.x * 4000.0f) / 100.0f,
                 MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, (char*)"../z_boss_tw.c", 6926),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(gCircleShadowDL));
    Matrix_Pop();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6933);
}

void BossTw_Draw(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    BossTw* this = THIS;
    Player* player = PLAYER;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 6947);
    if (this->unk_564 != 0) {
        gSPSegment(POLY_OPA_DISP++, 10, SEGMENTED_TO_VIRTUAL(D_8094A998[this->unk_4CC]));
        gSPSegment(POLY_XLU_DISP++, 10, SEGMENTED_TO_VIRTUAL(D_8094A998[this->unk_4CC]));
        gSPSegment(POLY_XLU_DISP++, 8,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (s16)this->unk_184 & 0x7F, (s16)this->unk_194 & 0x7F,
                                    0x20, 0x20, 1, (s16)this->unk_188 & 0x7F, (s16)this->unk_198 & 0xFF, 0x20, 0x40));
        if (this->actor.params == 0) {
            gSPSegment(POLY_XLU_DISP++, 9,
                       Gfx_TexScroll(globalCtx->state.gfxCtx, (s16)this->unk_18C & 0x7F, (s16)this->unk_19C & 0xFF,
                                     0x20, 0x40));
        } else {
            gSPSegment(POLY_XLU_DISP++, 9,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (s16)this->unk_18C & 0x7F,
                                        (s16)this->unk_19C & 0x7F, 0x20, 0x20, 1, (s16)this->unk_190 & 0x7F,
                                        (s16)this->unk_1A0 & 0xFF, 0x20, 0x40));
        }

        func_80093D18(globalCtx->state.gfxCtx);
        func_80093D84(globalCtx->state.gfxCtx);

        if (this->fogTimer & 2) {
            POLY_OPA_DISP = Gfx_SetFog(POLY_OPA_DISP, 255, 50, 0, 0, 900, 1099);
        } else {
            POLY_OPA_DISP = Gfx_SetFog(POLY_OPA_DISP, (u32)this->fogR, (u32)this->fogG, (u32)this->fogB, 0,
                                       this->fogMin, this->fogMax);
        }

        Matrix_Push();
        SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                              this->skelAnime.dListCount, func_809416D0, func_80941788, this);
        Matrix_Pop();
        POLY_OPA_DISP = func_800BC8A0(globalCtx, POLY_OPA_DISP);
    }

    if (this->actor.params == 0) {
        if (this->unk_1A8 > 0.0f) {
            if (this->unk_1B0 > 0.0f) {
                Vec3f diff;
                diff.x = this->unk_4BC.x - player->actor.world.pos.x;
                diff.y = this->unk_4BC.y - player->actor.world.pos.y;
                diff.z = this->unk_4BC.z - player->actor.world.pos.z;
                if ((fabsf(diff.y) < 10.0f) && ((player->actor.bgCheckFlags & 1) != 0) &&
                    (sqrtf(SQ(diff.x) + SQ(diff.z)) < (this->unk_1B4 * 4600.0f)) && (D_8094C85F == 0) &&
                    (this->unk_1B0 > 200.0f)) {
                    D_8094C85F = 1;
                    twinrovaPtr->timers[2] = 100;
                }
            }
            func_80941BC0(&this->actor, globalCtx);
        }
    } else {
        func_80942180(this, globalCtx);
    }

    if (this->unk_564 != 0) {
        if (this->actionFunc == func_8093D444) {
            func_80943028(&this->actor, globalCtx);
        } else {
            func_809426F0(this, globalCtx);
            Matrix_MultVec3f(&D_8094A9A4, &this->beamOrigin);
            func_80942C70(&this->actor, globalCtx);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7123);
}

// BossTw_TwinRovaOverrideLimbDraw
s32 func_80943950(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    BossTw* this = THIS;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_tw.c", 7139);
    switch (limbIndex) {
        case 21:
            gSPSegment(gfxCtx->polyOpa.p++, 0xC,
                       Gfx_TexScroll(globalCtx->state.gfxCtx, 0U, (s16)(f32)this->unk_150, 8, 8));
            gSPSegment(gfxCtx->polyOpa.p++, 8, SEGMENTED_TO_VIRTUAL(D_8094A9B0[this->unk_4CC]));
            gSPSegment(gfxCtx->polyOpa.p++, 9, SEGMENTED_TO_VIRTUAL(D_8094A9B0[this->unk_4CE]));
            gDPSetEnvColor(gfxCtx->polyOpa.p++, 255, 255, 255, (s32)this->unk_160);
            break;
        case 17:
        case 41:
            *dList = NULL;
            gSPSegment(gfxCtx->polyXlu.p++, 0xA,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0U, 0U, 0x20, 0x20, 1, 0, -this->unk_150 * 0xF,
                                        0x20, 0x40));
            break;
        case 18:
        case 42:
            *dList = NULL;
            gSPSegment(gfxCtx->polyXlu.p++, 0xB,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0U, 0U, 0x20, 0x20, 1, 0, -this->unk_150 * 0xA,
                                        0x20, 0x40));
            break;
        case 16:
        case 32:
            *dList = NULL;
            gSPSegment(gfxCtx->polyXlu.p++, 8,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0U, 0U, 0x20, 0x20, 1, this->unk_150,
                                        -this->unk_150 * 7, 0x20, 0x40));
            break;
        case 15:
        case 31:
            *dList = NULL;
            gSPSegment(gfxCtx->polyXlu.p++, 9, Gfx_TexScroll(globalCtx->state.gfxCtx, 0U, this->unk_150, 0x20, 0x40));
            break;
        case 19:
            if (this->unk_5F8 != 0) {
                *dList = D_0602D940;
            }
            break;

        case 20:
            if (this->unk_5F8 != 0) {
                *dList = D_0602D890;
            }
            break;
    }
    if (this->unk_5F8 != 0 && ((limbIndex == 0x22) || (limbIndex == 0x28))) {
        *dList = NULL;
    }
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_tw.c", 7251);
    return 0;
}

// BossTw_TwinrovaPostLimbDraw
void func_80943D90(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    BossTw* this = THIS;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_tw.c", 7262);
    switch (limbIndex) {
        case 34:
            Matrix_MultVec3f(&D_8094A9D4, &this->unk_498);
            break;
        case 40:
            Matrix_MultVec3f(&D_8094A9E0, &this->unk_4A4);
            break;
        case 21:
            Matrix_MultVec3f(&D_8094A9BC, &this->actor.focus.pos);
            Matrix_MultVec3f(&D_8094A9C8, &this->unk_444);
            break;
        case 15:
        case 16:
        case 17:
        case 18:
        case 31:
        case 32:
        case 41:
        case 42:
            Matrix_Push();
            Matrix_Scale(this->unk_1B4, this->unk_1B4, this->unk_1B4, MTXMODE_APPLY);
            gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7295),
                      G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
            Matrix_Pop();
            gSPDisplayList(gfxCtx->polyXlu.p++, *dList);
            break;
    }

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_tw.c", 7301);
}

void func_80943F08(BossTw* this, GlobalContext* globalCtx) {
    s32 pad;
    Player* spB0 = PLAYER;
    s16 temp_t0;
    s16 temp_a0;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 0x1C8F);
    Matrix_Push();

    temp_t0 = D_8094C850 | D_8094C851;
    if (temp_t0 == 1) {
        func_80078884(NA_SE_IT_SHIELD_CHARGE_LV1 & ~SFX_FLAG);
    } else if (temp_t0 == 2) {
        func_80078884(NA_SE_IT_SHIELD_CHARGE_LV2 & ~SFX_FLAG);
    } else if (temp_t0 == 3) {
        func_80078884(NA_SE_IT_SHIELD_CHARGE_LV3 & ~SFX_FLAG);
    }

    if ((temp_t0 != 0) && (temp_t0 < 4)) {
        Math_ApproachF(&D_8094C854, 255.0f, 1.0f, 20.0f);
        if (temp_t0 == 3) {
            temp_t0 *= 3;
        }
    } else if (temp_t0 == 0) {
        D_8094C854 = 0.0f;
    } else {
        Math_ApproachF(&D_8094C854, 0.0f, 1.0f, 10.0f);
        if (D_8094C854 == 0.0f) {
            D_8094C851 = 0;
            D_8094C850 = 0;
        }
        temp_t0 = 1;
    }

    if (Player_HasMirrorShieldEquipped(globalCtx)) {
        if (temp_t0 != 0) {
            Matrix_Mult(&spB0->shieldMf, MTXMODE_NEW);
            Matrix_RotateX(1.5707964f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7362),
                      G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
            temp_a0 = (Math_SinS(this->unk_150 * 0xAAA * temp_t0) * D_8094C854 * 0.5f) + (D_8094C854 * 0.5f);
            if (D_8094C850 != 0) {
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 245, 255, temp_a0);
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601E0E0));
                gSPSegment(POLY_XLU_DISP++, 8,
                           Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (this->unk_150 * 2) * temp_t0, 0U, 0x20, 0x20,
                                            1, (-this->unk_150 * 2) * temp_t0, 0, 0x20, 0x20));
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 100, 20, 0, (s16)D_8094C854);
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601E020));
            } else {
                gDPSetEnvColor(POLY_XLU_DISP++, 225, 255, 255, temp_a0);
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601E3A0));
                gSPSegment(POLY_XLU_DISP++, 8,
                           Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0U, (-this->unk_150 * 5) * temp_t0, 0x20, 0x40,
                                            1, (this->unk_150 * 4) * temp_t0, 0, 0x20, 0x20));
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 175, 205, 195, (s16)D_8094C854);
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601E2C0));
            }
        }
    }

    {

        if (D_8094C86F != 0) {
            f32 t = D_8094C872 > 0 ? 100.0f : 60.0f;
            D_8094C86F--;
            Math_ApproachF(&D_8094C858, 255.0f, 1.0f, t);
        } else {
            f32 t = D_8094C872 > 0 ? 40.0f : 20.0f;
            Math_ApproachF(&D_8094C858, 0.0f, 1.0f, t);
        }
    }

    if (Player_HasMirrorShieldEquipped(globalCtx) && D_8094C858 > 0.0f) {
        f32 sp60 = D_8094C872 > 0 ? 1.3f : 1.0f;
        Matrix_Mult(&spB0->shieldMf, MTXMODE_NEW);
        Matrix_RotateX(M_PI / 2.0f, MTXMODE_APPLY);
        Matrix_Scale(sp60, sp60, sp60, MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7486),
                  G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
        if (D_8094C850 != 0) {
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 220, 20, (s16)D_8094C858);
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 20, 110);
        } else {
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, (s16)D_8094C858);
            gDPSetEnvColor(POLY_XLU_DISP++, 185, 225, 205, 150);
        }
        gSPSegment(POLY_XLU_DISP++, 8,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0U, this->unk_150 * D_8094C872, 0x20, 0x40, 1, 0,
                                    this->unk_150 * D_8094C872, 0x20, 0x20));
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601E9F0));
    }

    Matrix_Pop();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7531);
}

// BossTw_SpawnPortalsDraw
void func_809447BC(BossTw* this, GlobalContext* globalCtx) {
    s32 pad;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7546);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, -this->unk_150 * 0xF, 0x20, 0x40, 1, 0, 0, 0x40, 0x40));
    Matrix_Push();
    Matrix_Translate(0.0f, 232.0f, -600.0f, MTXMODE_NEW);
    Matrix_Scale(this->spawnPortalScale, this->spawnPortalScale, this->spawnPortalScale, MTXMODE_APPLY);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 0, 0, (s16)this->spawnPortalAlpha);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7582),
              G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601EC68));
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 135, 175, 165, (s16)this->spawnPortalAlpha);
    Matrix_Translate(0.0f, 2.0f, 0.0f, MTXMODE_APPLY);
    Matrix_RotateX(1.5707964f, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7596),
              G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601CEE0));
    Matrix_Translate(0.0f, 232.0f, 600.0f, MTXMODE_NEW);
    Matrix_Scale(this->spawnPortalScale, this->spawnPortalScale, this->spawnPortalScale, MTXMODE_APPLY);
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0, 0, 0, (s16)this->spawnPortalAlpha);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7617),
              G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601EC68));
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 0, (s16)this->spawnPortalAlpha);
    Matrix_Translate(0.0f, 2.0f, 0.0f, MTXMODE_APPLY);
    Matrix_RotateX(1.5707964f, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7631),
              G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601DBE8));
    Matrix_Pop();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7635);
}

// BossTw_DrawGotoHeavenCylinder
void func_80944C50(BossTw* this, GlobalContext* globalCtx) {
    s32 pad;
    f32 phi_f12;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7645);
    Matrix_Push();
    Matrix_Translate(0.0f, 750.0f, 0.0f, MTXMODE_NEW);
    Matrix_Scale(0.35f, 0.35f, 0.35f, MTXMODE_APPLY);
    Matrix_Push();
    Matrix_Scale(this->unk_1D0, this->unk_1D0, this->unk_1D0, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7671),
              G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601F390));
    Matrix_Pop();
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, -koumePtr->unk_150 * 2, 0, 0x20, 0x20, 1,
                                -koumePtr->unk_150 * 2, 0, 0x20, 0x40));
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, (s16)this->unk_1CC / 2);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7694),
              G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601F238));
    gSPSegment(POLY_XLU_DISP++, 8,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, -koumePtr->unk_150 * 5, -koumePtr->unk_150 * 2, 0x20, 0x40,
                                1, 0, -koumePtr->unk_150 * 2, 0x10, 0x10));
    gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, (s16)(this->unk_1CC * 0.3f));
    phi_f12 = this->unk_1CC / 150.0f;
    if (phi_f12 > 1.0f) {
        phi_f12 = 1.0f;
    }
    Matrix_Scale(phi_f12, 1.0f, phi_f12, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7728),
              G_MTX_LOAD | G_MTX_MODELVIEW | G_MTX_NOPUSH);
    gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601EEB0));
    Matrix_Pop();
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7732);
}

void BossTw_TwinrovaDraw(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    BossTw* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7748);
    if (this->unk_564 != 0) {
        func_80093D18(globalCtx->state.gfxCtx);
        func_80093D84(globalCtx->state.gfxCtx);

        POLY_OPA_DISP = (this->fogTimer & 2) ? Gfx_SetFog2(POLY_OPA_DISP, 255, 50, 0, 0, 0x384, 0x44B)
                                             : Gfx_SetFog2(POLY_OPA_DISP, (u32)this->fogR, (u32)this->fogG,
                                                           (u32)this->fogB, 0, this->fogMin, this->fogMax);

        Matrix_Push();
        SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                              this->skelAnime.dListCount, func_80943950, func_80943D90, thisx);
        Matrix_Pop();

        Matrix_MultVec3f(&D_8094A9EC, &this->beamOrigin);
        POLY_OPA_DISP = Gfx_SetFog2(POLY_OPA_DISP, globalCtx->lightCtx.unk_07, globalCtx->lightCtx.unk_08,
                                    globalCtx->lightCtx.unk_09, 0, globalCtx->lightCtx.unk_0A, 0x3E8);
    }
    func_80948668(globalCtx);
    func_80943F08(this, globalCtx);
    if (this->spawnPortalAlpha > 0.0f) {
        func_809447BC(this, globalCtx);
    }
    if (this->unk_1CC > 0.0f) {
        func_80944C50(this, globalCtx);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 7804);
}

#ifdef NON_MATCHING
void func_809453EC(BossTw* this, GlobalContext* globalCtx) {
    f32 distXZ;
    f32 spC4;
    f32 spC0;
    Player* player = PLAYER;
    Vec3f spA8;
    Vec3f sp9C;
    Vec3s sp94;
    Vec3f sp84;
    Vec3f sp78;
    Vec3f sp6C;
    s16 sp52;
    f32 sp4C;
    f32 yDiff;
    f32 temp_f20;
    f32 temp_f2;
    s16 phi_v1;
    s16 phi_v0;
    s16 phi_s0;

    switch (this->actor.params) {
        case TW_FIRE_BLAST:
            // case 0x64
            switch (this->unk_440) {
                case 0:
                    Actor_SetScale(&this->actor, 0.03f);
                    this->unk_440 = 1;
                    temp_f20 = player->actor.world.pos.x - this->actor.world.pos.x;
                    spC4 = (player->actor.world.pos.y + 30.0f) - this->actor.world.pos.y;
                    spC0 = player->actor.world.pos.z - this->actor.world.pos.z;
                    // yaw
                    this->actor.world.rot.y = Math_FAtan2F(temp_f20, spC0) * 10430.378f;
                    // pitch
                    distXZ = sqrtf(SQ(temp_f20) + SQ(spC0));
                    this->actor.world.rot.x = Math_FAtan2F(spC4, distXZ) * 10430.378f;
                    this->actor.speedXZ = 20.0f;

                    for (phi_s0 = 0; phi_s0 < 50; phi_s0++) {
                        this->blastTailPos[phi_s0] = this->actor.world.pos;
                    }
                    this->unk_1AC = 255.0f;
                case 1:
                case 0xA:
                    this->unk_565 = 1;
                    if (this->timers[0] == 0) {
                        func_8002D908(&this->actor);
                        func_8002D7EC(&this->actor);
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_SHOOT_FIRE & ~SFX_FLAG);
                    } else {
                        this->actor.world.pos = player->bodyPartsPos[15];
                        this->actor.world.pos.y = -2000.0f;
                        func_800D20CC(&player->shieldMf, &sp94, MTXMODE_NEW);
                        sp94.x = -sp94.x;
                        sp94.y = sp94.y + 0x8000;
                        Math_ApproachS(&this->unk_524.x, sp94.x, 0xA, 0x800);
                        Math_ApproachS(&this->unk_524.y, sp94.y, 0xA, 0x800);
                        if (this->timers[0] == 0x32) {
                            D_8094C86F = 0xA;
                            D_8094C872 = 7;
                            globalCtx->envCtx.unk_D8 = 1.0f;
                        }

                        if (this->timers[0] < 0x33) {
                            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_SHOOT_FIRE & ~SFX_FLAG);
                            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_REFL_FIRE & ~SFX_FLAG);
                            Matrix_RotateY((this->unk_524.y / 32678.0f) * M_PI, MTXMODE_NEW);
                            Matrix_RotateX((this->unk_524.x / 32678.0f) * M_PI, MTXMODE_APPLY);
                            sp9C.x = 0.0f;
                            sp9C.y = 0.0f;
                            sp9C.z = 50.0f;
                            Matrix_MultVec3f(&sp9C, &spA8);
                            phi_v0 = this->timers[0] * 10;
                            if (phi_v0 >= 256) {
                                phi_v0 = 255;
                            }
                            func_80939250(globalCtx, &player->bodyPartsPos[15], &spA8, &sZeroVector, 10.0f, 80.0f,
                                          phi_v0, 1);
                        }

                        if (this->timers[0] == 1) {
                            sEnvType = 0;
                            D_8094C850++;
                            Actor_Kill(&this->actor);
                            return;
                        }
                    }

                    this->unk_500.y = func_8093AED8(&this->actor.world.pos);
                    if (0.0f <= this->unk_500.y) {
                        if (35.0f != this->unk_500.y) {
                            this->unk_500.x = this->actor.world.pos.x;
                            this->unk_500.z = this->actor.world.pos.z;
                            func_8093A5C4(this, globalCtx, 1);
                        } else {
                            for (phi_s0 = 0; phi_s0 < 50; phi_s0++) {
                                sp84.x = Rand_CenteredFloat(20.0f);
                                sp84.y = Rand_CenteredFloat(20.0f);
                                sp84.z = Rand_CenteredFloat(20.0f);
                                sp78.x = 0.0f;
                                sp78.y = 0.0f;
                                sp78.z = 0.0f;
                                func_80939070(globalCtx, &this->actor.world.pos, &sp84, &sp78,
                                              Rand_ZeroFloat(10.0f) + 25.0f, this->unk_566);
                            }
                            globalCtx->envCtx.unk_D8 = 0.5f;
                        }

                        this->unk_440 = 2;
                        this->timers[0] = 0x14;
                        return;
                    } else {
                        Vec3f sp60 = { 0.0f, 0.0f, 0.0f };
                        Vec3f sp54 = { 0.0f, 0.0f, 0.0f };
                        for (phi_s0 = 0; phi_s0 < 10; phi_s0++) {
                            sp6C = this->blastTailPos[(s16)Rand_ZeroFloat(29.9f)];
                            sp6C.x += Rand_CenteredFloat(40.0f);
                            sp6C.y += Rand_CenteredFloat(40.0f);
                            sp6C.z += Rand_CenteredFloat(40.0f);
                            sp54.y = 0.4f;
                            sp54.x = Rand_CenteredFloat(0.5f);
                            sp54.z = Rand_CenteredFloat(0.5f);
                            BossTw_AddDotEffect(globalCtx, &sp6C, &sp60, &sp54, (s16)Rand_ZeroFloat(2.0f) + 8, 1, 0x4B);
                        }
                        return;
                    }

                    return;
                case 2:
                    Math_ApproachF(&this->unk_1AC, 0.0f, 1.0f, 15.0f);
                    if (this->timers[0] == 0) {
                        Actor_Kill(&this->actor);
                    }
                    return;
            }
            break;
        case TW_FIRE_BLAST_GROUND:
            if (this->timers[0] != 0) {
                if (this->timers[0] == 1) {
                    sEnvType = 0;
                }

                if (D_8094C841 == 2) {
                    this->timers[0] = 0;
                }

                Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_FIRE_EXP & ~SFX_FLAG);

                temp_f20 = koumePtr->unk_4BC.x - player->actor.world.pos.x;
                yDiff = koumePtr->unk_4BC.y - player->actor.world.pos.y;
                temp_f2 = koumePtr->unk_4BC.z - player->actor.world.pos.z;

                if ((player->isBurning == 0) && (player->actor.bgCheckFlags & 1) && (fabsf(yDiff) < 10.0f) &&
                    (sqrtf(SQ(temp_f20) + SQ(temp_f2)) < (koumePtr->unk_1B8 * 4550.0f))) {

                    for (phi_v1 = 0; phi_v1 < 18; phi_v1++) {
                        player->flameTimers[phi_v1] = Rand_S16Offset(0, 0xC8);
                    }

                    player->isBurning = 1;

                    if (this->unk_168 == 0) {
                        func_8002F7DC(&player->actor, ((u16*)player->ageProperties)[0x49] +
                                                          0x681E); // todo fix when ageProperties is figured out.
                        this->unk_168 = 0x28;
                    }

                    twinrovaPtr->timers[2] = 0x64;
                }

                Math_ApproachF(&koumePtr->unk_1B8, 0.04f, 0.1f, 0.002f);
                return;
            }

            sp4C = D_8094C841 == 2 ? 3.0f : 1.0f;
            Math_ApproachF(&koumePtr->unk_1A8, 0.0f, 1.0f, 10.0f * sp4C);
            Math_ApproachF(&koumePtr->unk_1B4, 0.0f, 1.0f, 0.03f * sp4C);
            Math_ApproachF(&koumePtr->unk_1AC, 0.0f, 1.0f, 3.0f * sp4C);
            Math_ApproachF(&koumePtr->unk_1B0, 0.0f, 1.0f, 6.0f * sp4C);

            if (koumePtr->unk_1AC <= 0.0f) {
                Actor_Kill(&this->actor);
            }
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_809453EC.s")
#endif

// BossTw_IceBlastBegin
#ifdef NON_MATCHING
void func_80945D14(BossTw* this, GlobalContext* globalCtx) {
    f32 sp11C;
    f32 sp118;
    Player* player = PLAYER;
    Vec3f sp100;
    Vec3f spF4;
    Vec3s spEC;
    Vec3f spDC;
    Vec3f spD0;
    Vec3f spC4;
    Vec3f spB8;
    Vec3f spAC;
    Vec3f sp9C;
    Vec3f sp90;
    Vec3f sp84;
    f32 sp80;
    Vec3f sp74;
    Vec3f sp68;
    Vec3f sp5C;
    s16 i;
    f32 temp_f0;
    f32 temp_f20;
    s16 phi_v0;

    switch (this->actor.params) {
        case 0x66:
            switch (this->unk_440) {
                case 0:
                    Actor_SetScale(&this->actor, 0.03f);
                    this->unk_440 = 1;
                    temp_f20 = player->actor.world.pos.x - this->actor.world.pos.x;
                    sp11C = (player->actor.world.pos.y + 30.0f) - this->actor.world.pos.y;
                    sp118 = player->actor.world.pos.z - this->actor.world.pos.z;
                    this->actor.world.rot.y = Math_FAtan2F(temp_f20, sp118) * 10430.378f;
                    this->actor.world.rot.x = Math_FAtan2F(sp11C, sqrtf(SQ(temp_f20) + SQ(sp118))) * 10430.378f;
                    this->actor.speedXZ = 20.0f;
                    for (i = 0; i < 50; i++) {
                        this->blastTailPos[i] = this->actor.world.pos;
                    }

                    this->unk_1AC = 255.0f;
                case 1:
                case 10:
                    this->unk_565 = 1;
                    if (this->timers[0] == 0) {
                        func_8002D908(&this->actor);
                        func_8002D7EC(&this->actor);
                        Audio_PlayActorSound2(&this->actor, 0x3111);
                    } else {
                        this->actor.world.pos = player->bodyPartsPos[15];
                        this->actor.world.pos.y = -2000.0f;
                        func_800D20CC(&player->shieldMf, &spEC, 0);
                        spEC.y += 0x8000;
                        spEC.x = -spEC.x;
                        Math_ApproachS(&this->unk_524.x, spEC.x, 0xA, 0x800);
                        Math_ApproachS(&this->unk_524.y, spEC.y, 0xA, 0x800);
                        if (this->timers[0] == 0x32) {
                            D_8094C86F = 0xA;
                            D_8094C872 = 7;
                            globalCtx->envCtx.unk_D8 = 1.0f;
                        }

                        if (this->timers[0] < 0x33) {
                            Audio_PlayActorSound2(&this->actor, 0x3111U);
                            Audio_PlayActorSound2((Actor*)this, (u16)0x3118U);
                            Matrix_RotateY((this->unk_524.y / 32678.0f) * M_PI, MTXMODE_NEW);
                            Matrix_RotateX((this->unk_524.x / 32678.0f) * M_PI, MTXMODE_APPLY);
                            spF4.x = 0.0f;
                            spF4.y = 0.0f;
                            spF4.z = 50.0f;
                            Matrix_MultVec3f(&spF4, &sp100);
                            phi_v0 = this->timers[0] * 10;
                            if (phi_v0 >= 0x100) {
                                phi_v0 = 0xFF;
                            }
                            func_80939250(globalCtx, &player->bodyPartsPos[15], &sp100, &sZeroVector, 10.0f, 80.0f,
                                          phi_v0, 0);
                        }

                        if (this->timers[0] == 1) {
                            sEnvType = 0;
                            D_8094C851++;
                            Actor_Kill(&this->actor);
                            return;
                        }
                    }

                    this->unk_500.y = temp_f0 = func_8093AED8(&this->actor.world.pos);
                    if (temp_f0 >= 0) {
                        if (this->unk_500.y != 35.0f) {
                            this->unk_500.x = this->actor.world.pos.x;
                            this->unk_500.z = this->actor.world.pos.z;
                            func_8093A5C4(this, globalCtx, 0);
                        } else {
                            for (i = 0; i < 50; i++) {
                                spDC.x = Rand_CenteredFloat(20.0f);
                                spDC.y = Rand_CenteredFloat(20.0f);
                                spDC.z = Rand_CenteredFloat(20.0f);
                                spD0.x = 0.0f;
                                spD0.y = 0.0f;
                                spD0.z = 0.0f;
                                func_80939070(globalCtx, &this->actor.world.pos, &spDC, &spD0,
                                              Rand_ZeroFloat(10.0f) + 25.0f, this->unk_566);
                            }
                            globalCtx->envCtx.unk_D8 = 0.5f;
                        }
                        this->unk_440 = 2;
                        this->timers[0] = 20;
                    } else {
                        spB8 = D_8094AA10;
                        spAC = D_8094AA1C;
                        for (i = 0; i < 10; i++) {
                            spC4 = this->blastTailPos[(s16)Rand_ZeroFloat(29.9f)];
                            spC4.x += Rand_CenteredFloat(40.0f);
                            spC4.y += Rand_CenteredFloat(40.0f);
                            spC4.z += Rand_CenteredFloat(40.0f);
                            spAC.y = 0.4f;
                            spAC.x = Rand_CenteredFloat(0.5f);
                            spAC.z = Rand_CenteredFloat(0.5f);
                            BossTw_AddDotEffect(globalCtx, &spC4, &spB8, &spAC, ((s16)Rand_ZeroFloat(2.0f) + 8), 0,
                                                0x4B);
                        }
                    }
                    break;
                case 2:
                    Math_ApproachF(&this->unk_1AC, 0.0f, 1.0f, 15.0f);
                    if (this->timers[0] == 0) {
                        Actor_Kill(&this->actor);
                    }
                    break;
            }
            break;
        case 0x67:
            if (this->timers[0] != 0) {
                if (this->timers[0] == 1) {
                    sEnvType = 0;
                }

                if (D_8094C841 == 1) {
                    this->timers[0] = 0;
                }

                Audio_PlayActorSound2(&this->actor, 0x20B2);
                phi_v0 = twinrovaPtr->actionFunc == BossTw_TwinrovaWaitForMerge ? 0x46 : 0x14;

                if (this->timers[0] > phi_v0) {
                    sp9C.x = kotakePtr->unk_4BC.x + Rand_CenteredFloat(320.0f);
                    sp9C.z = kotakePtr->unk_4BC.z + Rand_CenteredFloat(320.0f);
                    sp90.x = 0.0f;
                    sp90.y = 0.0f;
                    sp90.z = 0.0f;
                    sp84.x = 0.0f;
                    sp84.y = 0.13f;
                    sp84.z = 0.0f;
                    sp9C.y = kotakePtr->unk_4BC.y;
                    func_80938DC4(globalCtx, 3, &sp9C, &sp90, &sp84, Rand_ZeroFloat(5.0f) + 20.0f, 0, 0, 0x50);
                    sp90.x = Rand_CenteredFloat(10.0f);
                    sp90.z = Rand_CenteredFloat(10.0f);
                    sp90.y = Rand_ZeroFloat(3.0f) + 3.0f;
                    sp9C.x = kotakePtr->unk_4BC.x + (sp90.x * 0.5f);
                    sp9C.z = kotakePtr->unk_4BC.z + (sp90.z * 0.5f);
                    func_80938DC4(globalCtx, 3, &sp9C, &sp90, &sp84, Rand_ZeroFloat(5.0f) + 15.0f, 255, 2, 0x82);
                }
                Math_ApproachF(&kotakePtr->unk_1A8, 80.0f, 1.0f, 3.0f);
                Math_ApproachF(&kotakePtr->unk_1B0, 255.0f, 1.0f, 10.0f);
                Math_ApproachF(&kotakePtr->unk_1B4, 0.04f, 0.1f, 0.002f);
                Math_ApproachF(&kotakePtr->unk_1C4, 70.0f, 1.0f, 5.0f);
                if ((this->timers[0] == 0x46) || (this->timers[0] == 0x1E)) {
                    kotakePtr->unk_1C4 = 10.0f;
                }

                if ((this->timers[0] & 3) == 0) {
                    kotakePtr->unk_1C0 = (2.0f * (s16)Rand_ZeroFloat(9.9f) * M_PI) / 10.0f;
                }
            } else {
                if (D_8094C841 == 1) {
                    if (kotakePtr->unk_1B0 > 1.0f) {
                        for (i = 0; i < 3; i++) {
                            sp74.x = Rand_CenteredFloat(280.0f) + kotakePtr->unk_4BC.x;
                            sp74.z = Rand_CenteredFloat(280.0f) + kotakePtr->unk_4BC.z;
                            sp68.x = 0.0f;
                            sp68.y = 0.0f;
                            sp68.z = 0.0f;
                            sp5C.x = 0.0f;
                            sp5C.y = 0.13f;
                            sp5C.y = 0.0f;
                            sp74.y = kotakePtr->unk_4BC.y + 30.0f;
                            func_80938DC4(globalCtx, 3, &sp74, &sp68, &sp5C, Rand_ZeroFloat(5.0f) + 20, 0, 0, 0x50);
                        }
                    }
                    sp80 = 3.0f;
                } else {
                    sp80 = 1.0f;
                }
                Math_ApproachF(&kotakePtr->unk_1BC, 0.0f, 1.0f, 0.2f * sp80);
                Math_ApproachF(&kotakePtr->unk_1B0, 0.0f, 1.0f, 5.0f * sp80);
                Math_ApproachF(&kotakePtr->unk_1A8, 0.0f, 1.0f, sp80);
                if (kotakePtr->unk_1A8 <= 0.0f) {
                    Actor_Kill(&this->actor);
                }
            }
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Tw/func_80945D14.s")
#endif

s32 func_8094687C(BossTw* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 phi_a2 = 0;
    ColliderInfo* info;

    if (1) {}
    if (this->unk_440 == 1) {
        if (this->collider.base.acFlags & AC_HIT) {
            this->collider.base.acFlags &= ~AC_HIT;
            this->collider.base.atFlags &= ~AT_HIT;
            info = this->collider.info.acHitInfo;
            if (info->toucher.dmgFlags & DMG_SHIELD) {
                this->invincibilityTimer = 7;
                globalCtx->envCtx.unk_D8 = 1.0f;
                func_800AA000(0.0f, 100, 5, 4);
                if (Player_HasMirrorShieldEquipped(globalCtx)) {
                    if (this->unk_566 == 1) {
                        if (D_8094C851 != 0) {
                            D_8094C851 = 0;
                            func_80939338(globalCtx, 10.0f, 1);
                        } else {
                            func_809394FC(globalCtx, 10.0f, 1);
                            D_8094C850++;
                            D_8094C86F = (D_8094C850 * 2) + 8;
                            D_8094C872 = -7;
                        }
                    } else if (D_8094C850 != 0) {
                        D_8094C850 = 0;
                        do {
                        } while (0);
                        func_80939338(globalCtx, 10.0f, 0);
                    } else {
                        func_809394FC(globalCtx, 10.0f, 0);
                        D_8094C851++;
                        D_8094C86F = (D_8094C851 * 2) + 8;
                        D_8094C872 = -7;
                    }
                    if ((D_8094C851 >= 3) || (D_8094C850 >= 3)) {
                        this->timers[0] = 0x50;
                        this->unk_440 = 0xA;
                        func_800D20CC(&player->shieldMf, &this->unk_524, 0);
                        this->unk_524.y += 0x8000;
                        this->unk_524.x = -this->unk_524.x;
                        D_8094C86F = 8;
                    } else {
                        this->unk_440 = 2;
                        this->timers[0] = 0x14;
                        sEnvType = 0;
                    }
                } else {
                    func_80939338(globalCtx, 10.0f, this->unk_566);
                    this->unk_440 = 2;
                    this->timers[0] = 0x14;
                    sEnvType = 0;
                    D_8094C851 = 0;
                    D_8094C850 = 0;
                    func_80078884(0x1838);
                }

                phi_a2 = 1;
            }
        }
    }

    return phi_a2;
}

void BossTw_BlastUpdate(Actor* thisx, GlobalContext* globalCtx) {
    BossTw* this = THIS;
    ColliderCylinder* collider;
    s16 i;

    this->unk_150++;
    this->unk_152++;
    this->unk_156++;

    if (this->unk_156 > 29) {
        this->unk_156 = 0;
    }

    this->blastTailPos[this->unk_156] = this->actor.world.pos;

    this->actionFunc(this, globalCtx);

    for (i = 0; i < 5; i++) {
        DECR(this->timers[i]);
    }

    DECR(this->invincibilityTimer);
    DECR(this->unk_168);

    this->actor.focus.pos = this->actor.world.pos;
    collider = &this->collider;
    Collider_UpdateCylinder(&this->actor, collider);

    if (this->unk_565 != 0 && this->invincibilityTimer == 0 && !func_8094687C(this, globalCtx)) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &collider->base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &collider->base);
    }

    this->unk_565 = 0;
}

void BossTw_BlastDraw(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    BossTw* this = THIS;
    f32 temp_f0;
    s16 temp_v1_4;
    s16 i;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 8818);
    func_80093D84(globalCtx->state.gfxCtx);
    switch (this->actor.params) {
        case 0x64:
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 200, 20, 0, (s8)this->unk_1AC);
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 215, 255, 128);
            for (i = 9; i >= 0; i--) {
                gSPSegment(POLY_XLU_DISP++, 8,
                           Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, ((this->unk_150 * 3) + (i * 0xA)) & 0x7F,
                                            (u8)((-this->unk_150 * 0xF) + (i * 50)), 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
                temp_v1_4 = ((this->unk_156 - i) + 0x1E) % 0x1E;
                Matrix_Translate(this->blastTailPos[temp_v1_4].x, this->blastTailPos[temp_v1_4].y,
                                 this->blastTailPos[temp_v1_4].z, MTXMODE_NEW);
                temp_f0 = 1.0f - (i * 0.09f);
                Matrix_Scale(this->actor.scale.x * temp_f0, this->actor.scale.y * temp_f0,
                             this->actor.scale.z * temp_f0, MTXMODE_APPLY);
                func_800D1FD4(&globalCtx->mf_11DA0);
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 8865),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601A430));
            }
            break;
        case 0x65:
            break;
        case 0x66:
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, (s8)this->unk_1AC);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601A998));
            for (i = 9; i >= 0; i--) {
                gSPSegment(POLY_XLU_DISP++, 8,
                           Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, ((this->unk_150 * 3) + (i * 0xA)) & 0x7F,
                                            (u8)((-this->unk_150 * 0xF) + (i * 50)), 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
                temp_v1_4 = ((this->unk_156 - i) + 0x1E) % 0x1E;
                Matrix_Translate(this->blastTailPos[temp_v1_4].x, this->blastTailPos[temp_v1_4].y,
                                 this->blastTailPos[temp_v1_4].z, MTXMODE_NEW);
                temp_f0 = 1.0f - (i * 0.09f);
                Matrix_Scale(this->actor.scale.x * temp_f0, this->actor.scale.y * temp_f0,
                             this->actor.scale.z * temp_f0, MTXMODE_APPLY);
                func_800D1FD4(&globalCtx->mf_11DA0);
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 0x232C),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601AB00));
            }
            break;
        case 0x67:
            break;
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 9013);
}

void func_80947240(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    BossTw* this = THIS;
    f32 temp_f0;
    s16 temp_v1_2;
    s16 i;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 9028);
    func_80093D84(globalCtx->state.gfxCtx);
    if (this->actor.params == 0x69) {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 200, 20, 0, (s8)this->unk_1AC);
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 215, 255, 128);
        for (i = 9; i >= 0; i--) {
            gSPSegment(POLY_XLU_DISP++, 8,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (((this->unk_150 * 3) + (i * 0xA))) & 0x7F,
                                        (u8)((-this->unk_150 * 0xF) + (i * 50)), 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
            temp_v1_2 = ((this->unk_156 - i) + 0x1E) % 0x1E;
            Matrix_Translate(this->blastTailPos[temp_v1_2].x, this->blastTailPos[temp_v1_2].y,
                             this->blastTailPos[temp_v1_2].z, MTXMODE_NEW);
            temp_f0 = (1.0f - (i * 0.09f));
            Matrix_Scale(this->actor.scale.x * temp_f0, this->actor.scale.y * temp_f0, this->actor.scale.z * temp_f0,
                         MTXMODE_APPLY);
            func_800D1FD4(&globalCtx->mf_11DA0);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 9071),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601A430));
        }
    } else {
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, (s8)this->unk_1AC);
        gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601A998));
        for (i = 9; i >= 0; i--) {
            gSPSegment(POLY_XLU_DISP++, 8,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (((this->unk_150 * 3) + (i * 0xA))) & 0x7F,
                                        (u8)((-this->unk_150 * 0xF) + (i * 50)), 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
            temp_v1_2 = ((this->unk_156 - i) + 0x1E) % 0x1E;
            Matrix_Translate(this->blastTailPos[temp_v1_2].x, this->blastTailPos[temp_v1_2].y,
                             this->blastTailPos[temp_v1_2].z, MTXMODE_NEW);
            temp_f0 = (1.0f - (i * 0.09f));
            Matrix_Scale(this->actor.scale.x * temp_f0, this->actor.scale.y * temp_f0, this->actor.scale.z * temp_f0,
                         MTXMODE_APPLY);
            func_800D1FD4(&globalCtx->mf_11DA0);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_tw.c", 9107),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601AB00));
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_boss_tw.c", 9111);
}

void func_809477E0(GlobalContext* globalCtx) {
    Vec3f sp11C;
    BossTwEEffect* phi_s1 = globalCtx->actorEffects;
    Player* player = PLAYER;
    u8 sp113;
    s16 i;
    s16 j;
    s16 phi_v1;
    Vec3f off;
    Vec3f spF4;
    Vec3f spE8;
    Vec3f spDC;
    Vec3f spD0;
    f32 phi_f22;
    Vec3f spC0;
    Vec3f spB4;
    Vec3f spA8;
    s16 spA6;
    f32 phi_f0;
    Actor* unk44;

    sp113 = 0;
    for (i = 0; i < ARRAY_COUNT(sTWEffects); i++) {
        if (phi_s1->type != 0) {
            phi_s1->pos.x += phi_s1->curSpeed.x;
            phi_s1->pos.y += phi_s1->curSpeed.y;
            phi_s1->pos.z += phi_s1->curSpeed.z;
            phi_s1->frame++;
            phi_s1->curSpeed.x += phi_s1->accel.x;
            phi_s1->curSpeed.y += phi_s1->accel.y;
            phi_s1->curSpeed.z += phi_s1->accel.z;
            if (phi_s1->type == 1) {
                phi_v1 = phi_s1->frame % 4;
                if (phi_s1->args == 0) {
                    phi_v1 += 4;
                }

                phi_s1->color.r = D_8094AA28[phi_v1].r;
                phi_s1->color.g = D_8094AA28[phi_v1].g;
                phi_s1->color.b = D_8094AA28[phi_v1].b;
                phi_s1->alpha -= 20;
                if (phi_s1->alpha <= 0) {
                    phi_s1->alpha = 0;
                    phi_s1->type = 0;
                }
            } else if ((phi_s1->type == 3) || (phi_s1->type == 2)) {
                if (phi_s1->args == 2) {
                    phi_s1->alpha -= 20;
                    if (phi_s1->alpha <= 0) {
                        phi_s1->alpha = 0;
                        phi_s1->type = 0;
                    }
                } else if (phi_s1->args == 0) {
                    phi_s1->alpha += 10;
                    if (phi_s1->alpha >= 100) {
                        phi_s1->args++;
                    }
                } else {
                    phi_s1->alpha -= 3;
                    if (phi_s1->alpha <= 0) {
                        phi_s1->alpha = 0;
                        phi_s1->type = 0;
                    }
                }
            } else if (phi_s1->type == 6) {
                if (phi_s1->unk_30 != 0) {
                    phi_s1->alpha = (phi_s1->alpha - (i & 7)) - 0xD;
                    if (phi_s1->alpha <= 0) {
                        phi_s1->alpha = 0;
                        phi_s1->type = 0;
                    }
                } else {
                    phi_s1->alpha += 300;
                    if (phi_s1->alpha >= 255) {
                        phi_s1->alpha = 255;
                        phi_s1->unk_30++;
                    }
                }
            } else if (phi_s1->type == 8) {
                D_8094C870 = 1;
                phi_s1->unk_30++;
                if (phi_s1->unk_30 >= 31) {
                    phi_s1->alpha -= 10;
                    if (phi_s1->alpha <= 0) {
                        phi_s1->alpha = 0;
                        phi_s1->type = 0;
                    }
                }
                Math_ApproachF(&phi_s1->scale, phi_s1->dist, 0.1f, 0.003f);
                off.x = twinrovaPtr->actor.world.pos.x - phi_s1->pos.x;
                off.y = (twinrovaPtr->actor.world.pos.y - phi_s1->pos.y) * 0.5f;
                off.z = twinrovaPtr->actor.world.pos.z - phi_s1->pos.z;
                if (twinrovaPtr->actionFunc != func_80949E10) {
                    if ((SQ(off.x) + SQ(off.y) + SQ(off.z)) < 3600.0f) {
                        for (j = 0; j < 50; j++) {
                            spF4.x = Rand_CenteredFloat(35.0f) + twinrovaPtr->actor.world.pos.x;
                            spF4.y = Rand_CenteredFloat(70.0f) + twinrovaPtr->actor.world.pos.y;
                            spF4.z = Rand_CenteredFloat(35.0f) + twinrovaPtr->actor.world.pos.z;
                            spE8.x = Rand_CenteredFloat(20.0f);
                            spE8.y = Rand_CenteredFloat(20.0f);
                            spE8.z = Rand_CenteredFloat(20.0f);
                            spDC.x = 0.0f;
                            spDC.y = 0.0f;
                            spDC.z = 0.0f;
                            func_80939070(globalCtx, &spF4, &spE8, &spDC, Rand_ZeroFloat(10.0f) + 25.0f, phi_s1->args);
                        }
                        twinrovaPtr->twinrovaStun = 1;
                        globalCtx->envCtx.unk_D8 = 1.0f;
                        phi_s1->type = 0;
                    }
                }
            } else if (phi_s1->type == 7) {
                sp11C.x = 0.0f;
                sp11C.y = phi_s1->pos.y;
                sp11C.z = phi_s1->dist;
                Matrix_RotateY(phi_s1->roll + twinrovaPtr->unk_1A8, MTXMODE_NEW);
                Matrix_MultVec3f(&sp11C, &phi_s1->pos);
                if (phi_s1->unk_30 != 0) {
                    phi_s1->alpha -= 60;
                    if (phi_s1->alpha <= 0) {
                        phi_s1->alpha = 0;
                        phi_s1->type = 0;
                    }
                } else {
                    phi_s1->alpha += 60;
                    if (phi_s1->alpha >= 255) {
                        phi_s1->alpha = 255;
                        phi_s1->unk_30++;
                    }
                }
            } else if (phi_s1->type == 9) {
                phi_s1->unk_30++;
                sp11C.x = 0.0f;
                sp11C.y = 0.0f;
                sp11C.z = -phi_s1->dist;
                Matrix_RotateY((D_8094C86C / 32768.0f) * M_PI, MTXMODE_NEW);
                Matrix_RotateX(-0.2f, MTXMODE_APPLY);
                Matrix_RotateZ(phi_s1->roll, MTXMODE_APPLY);
                Matrix_RotateY(phi_s1->yaw, MTXMODE_APPLY);
                Matrix_MultVec3f(&sp11C, &phi_s1->pos);
                phi_s1->pos.x += D_8094C860.x;
                phi_s1->pos.y += D_8094C860.y;
                phi_s1->pos.z += D_8094C860.z;
                if (phi_s1->unk_30 < 10) {
                    Math_ApproachF(&phi_s1->dist, 50.0f, 0.5f, 100.0f);
                } else {
                    Math_ApproachF(&phi_s1->yaw, 0.0f, 0.5f, 10.0f);
                    Math_ApproachF(&phi_s1->dist, 1000.0f, 1.0f, 10.0f);
                    if (phi_s1->unk_30 >= 0x10) {
                        if ((phi_s1->unk_30 == 0x10) && (sp113 == 0)) {
                            sp113 = 1;
                            spD0 = phi_s1->pos;
                            if (phi_s1->pos.y > 40.0f) {
                                spD0.y = 220.0f;
                            } else {
                                spD0.y = -50.0f;
                            }
                            twinrovaPtr->unk_500.y = phi_f0 = func_8093AED8(&spD0);
                            if (phi_f0 >= 0.0f) {
                                if (twinrovaPtr->unk_500.y != 35.0f) {
                                    twinrovaPtr->unk_500.x = phi_s1->pos.x;
                                    twinrovaPtr->unk_500.z = phi_s1->pos.z;
                                    func_8093A5C4(twinrovaPtr, globalCtx, phi_s1->args);
                                }
                            }
                        }
                        phi_s1->alpha -= 300;
                        if (phi_s1->alpha <= 0) {
                            phi_s1->alpha = 0;
                            phi_s1->type = 0;
                        }
                    }
                }
                func_80939070(globalCtx, &phi_s1->pos, &sZeroVector, &sZeroVector, 10, phi_s1->args);
            } else if (phi_s1->type == 0xA) {
                phi_s1->unk_30++;
                sp11C.x = 0.0f;
                sp11C.y = 0.0f;
                sp11C.z = -phi_s1->dist;
                Matrix_RotateY((D_8094C86C / 32768.0f) * M_PI, MTXMODE_NEW);
                Matrix_RotateX(-0.2f, MTXMODE_APPLY);
                Matrix_RotateZ(phi_s1->roll, MTXMODE_APPLY);
                Matrix_RotateY(phi_s1->yaw, MTXMODE_APPLY);
                Matrix_MultVec3f(&sp11C, &phi_s1->pos);
                phi_s1->pos.x += D_8094C860.x;
                phi_s1->pos.y += D_8094C860.y;
                phi_s1->pos.z += D_8094C860.z;
                if (phi_s1->unk_30 < 5) {
                    Math_ApproachF(&phi_s1->dist, 40.0f, 0.5f, 100.0f);
                } else {
                    Math_ApproachF(&phi_s1->dist, 0.0f, 0.2f, 5.0f);
                    if (phi_s1->unk_30 >= 11) {
                        phi_s1->alpha -= 30;
                        if (phi_s1->alpha <= 0) {
                            phi_s1->alpha = 0;
                            phi_s1->type = 0;
                        }
                    }
                }
                func_80939070(globalCtx, &phi_s1->pos, &sZeroVector, &sZeroVector, 10, phi_s1->args);
            } else if (phi_s1->type == 4) {
                if (phi_s1->unk_30 == 0) {
                    Math_ApproachF(&phi_s1->scale, phi_s1->dist, 0.05f, 1.0f);
                    if (phi_s1->frame >= 16) {
                        phi_s1->alpha -= 10;
                        if (phi_s1->alpha <= 0) {
                            phi_s1->alpha = 0;
                            phi_s1->type = 0;
                        }
                    }
                } else {
                    Math_ApproachF(&phi_s1->scale, phi_s1->dist, 0.1f, 2.0f);
                    phi_s1->alpha -= 15;
                    if (phi_s1->alpha <= 0) {
                        phi_s1->alpha = 0;
                        phi_s1->type = 0;
                    }
                }
            } else if (phi_s1->type == 5) {
                if (phi_s1->args < phi_s1->frame) {
                    phi_f0 = 1.0f;
                    if (phi_s1->unk_44 != NULL || D_8094C841 == 1) {
                        phi_f0 *= 3.0f;
                    }

                    Math_ApproachF(&phi_s1->scale, 0.0f, 1.0f, 0.0005f * phi_f0);
                    if (phi_s1->scale == 0.0f) {
                        phi_s1->type = 0;
                        if (phi_s1->unk_44 == NULL) {
                            player->stateFlags2 &= ~0x8000;
                            D_8094C85F = 0;
                        }
                    }
                } else {
                    if (D_8094C841 == 1) {
                        phi_s1->frame = 100;
                        ;
                    }
                    Math_ApproachF(&phi_s1->dist, 0.8f, 0.2f, 0.04f);
                    if (phi_s1->unk_44 == NULL) {
                        Math_ApproachF(&phi_s1->scale, 0.012f, 1.0f, 0.002f);
                        phi_s1->roll += phi_s1->dist;
                        if (phi_s1->roll >= 0.8f) {
                            phi_s1->roll -= 0.8f;
                            player->stateFlags2 |= 0x8000;
                        } else {
                            player->stateFlags2 &= ~0x8000;
                        }

                        if ((kotakePtr->unk_1B0 > 10.0f) && (kotakePtr->unk_1B0 < 200.0f)) {
                            phi_s1->frame = 100;
                        }
                        if (!(globalCtx->gameplayFrames & 1)) {
                            globalCtx->damagePlayer(globalCtx, -1);
                        }
                    } else {
                        Math_ApproachF(&phi_s1->scale, 0.042f, 1.0f, 0.002f);
                    }
                    if ((phi_s1->dist > 0.4f) && ((phi_s1->frame & 7) == 0)) {
                        spA6 = Rand_ZeroFloat(17.9f);
                        if (phi_s1->unk_44 == NULL) {
                            spC0.x = player->bodyPartsPos[spA6].x + Rand_CenteredFloat(5.0f);
                            spC0.y = player->bodyPartsPos[spA6].y + Rand_CenteredFloat(5.0f);
                            spC0.z = player->bodyPartsPos[spA6].z + Rand_CenteredFloat(5.0f);
                            phi_f22 = 10.0f;
                        } else {
                            unk44 = phi_s1->unk_44;
                            spC0.x = unk44->world.pos.x + Rand_CenteredFloat(40.0f);
                            spC0.y = unk44->world.pos.y + Rand_CenteredFloat(40.0f);
                            spC0.z = unk44->world.pos.z + Rand_CenteredFloat(40.0f);
                            phi_f22 = 20.0f;
                        }
                        spB4.x = 0.0f;
                        spB4.y = 0.0f;
                        spB4.z = 0.0f;
                        spA8.x = 0.0f;
                        spA8.y = 0.1f;
                        spA8.z = 0.0f;
                        func_80938DC4(globalCtx, 3, &spC0, &spB4, &spA8, phi_f22 + Rand_ZeroFloat(phi_f22 * 0.5f), 0, 0,
                                      0x96);
                    }
                }
            }
        }
        phi_s1++;
    }
}

void func_80948528(s32 arg0, s32 arg1, s32 arg2) {
    D_8094F2B0 = arg0;
    D_8094F2B4 = arg1;
    D_8094F2B8 = arg2;
}

f32 func_80948544(void) {
    f32 phi_f2;

    D_8094F2B0 = (D_8094F2B0 * 0xAB) % 0x763D;
    ;
    D_8094F2B4 = (D_8094F2B4 * 0xAC) % 0x7663;
    D_8094F2B8 = (D_8094F2B8 * 0xAA) % 0x7673;

    phi_f2 = D_8094F2B0 / 30269.0f + D_8094F2B4 / 30307.0f + D_8094F2B8 / 30323.0f;

    while (1.0f <= phi_f2) {
        phi_f2 = phi_f2 - 1.0f;
    }
    return fabsf(phi_f2);
}

void func_80948668(GlobalContext* globalCtx) {
    u8 sp18F = 0;
    s16 i;
    s16 j;
    s32 pad;
    Player* player = PLAYER;
    s16 phi_s4;
    BossTwEEffect* phi_s5 = globalCtx->actorEffects;
    BossTwEEffect* eff;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;

    eff = phi_s5;
    OPEN_DISPS(gfxCtx, "../z_boss_tw.c", 0x2578);
    func_80093D84(globalCtx->state.gfxCtx);
    for (i = 0; i < ARRAY_COUNT(sTWEffects); i++) {
        if (phi_s5->type == 1) {
            if (sp18F == 0) {
                gSPDisplayList(POLY_XLU_DISP++, D_0601A528);
                sp18F++;
            }
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, phi_s5->color.r, phi_s5->color.g, phi_s5->color.b, phi_s5->alpha);
            Matrix_Translate(phi_s5->pos.x, phi_s5->pos.y, phi_s5->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(phi_s5->scale, phi_s5->scale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_tw.c", 0x2591),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_0601A5A8);
        }
        phi_s5++;
    }

    sp18F = 0;
    phi_s5 = eff;
    for (i = 0; i < ARRAY_COUNT(sTWEffects); i++) {
        if (phi_s5->type == 3) {
            if (sp18F == 0) {
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601A998));
                sp18F++;
            }
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, phi_s5->alpha);
            gSPSegment(POLY_XLU_DISP++, 8,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (phi_s5->frame * 3) & 0x7F,
                                        (phi_s5->frame * 15) & 0xFF, 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
            Matrix_Translate(phi_s5->pos.x, phi_s5->pos.y, phi_s5->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(phi_s5->scale, phi_s5->scale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_tw.c", 0x25BC),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601AB00));
        }
        phi_s5++;
    }

    sp18F = 0;
    phi_s5 = eff;
    for (i = 0; i < ARRAY_COUNT(sTWEffects); i++) {
        if (phi_s5->type == 2) {
            if (sp18F == 0) {
                gDPPipeSync(POLY_XLU_DISP++);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 215, 255, 128);
                sp18F++;
            }
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 200, 20, 0, phi_s5->alpha);
            gSPSegment(POLY_XLU_DISP++, 8,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (phi_s5->frame * 3) & 0x7F,
                                        (phi_s5->frame * 15) & 0xFF, 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
            Matrix_Translate(phi_s5->pos.x, phi_s5->pos.y, phi_s5->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(phi_s5->scale, phi_s5->scale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_tw.c", 0x25ED),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601A430));
        }

        phi_s5++;
    }

    sp18F = 0;
    phi_s5 = eff;
    for (i = 0; i < ARRAY_COUNT(sTWEffects); i++) {
        if (phi_s5->type == 4) {
            if (sp18F == 0) {
                sp18F++;
            }
            gSPSegment(POLY_XLU_DISP++, 0xD,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, phi_s5->frame & 0x7F, (phi_s5->frame * 8) & 0xFF,
                                        0x20, 0x40, 1, (phi_s5->frame * -2) & 0x7F, 0, 0x10, 0x10));
            if (phi_s5->args == 1) {
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 65, 0, phi_s5->alpha);
                gDPPipeSync(POLY_XLU_DISP++);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 0, 128);
            } else {
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, phi_s5->alpha);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, 128);
            }
            Matrix_Translate(phi_s5->pos.x, phi_s5->pos.y, phi_s5->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            if (phi_s5->unk_30 == 0) {
                Matrix_Translate(0.0f, 0.0f, 60.0f, MTXMODE_APPLY);
            } else {
                Matrix_Translate(0.0f, 0.0f, 0.0f, MTXMODE_APPLY);
            }
            Matrix_RotateZ(phi_s5->roll, MTXMODE_APPLY);
            Matrix_RotateX(1.5707964f, MTXMODE_APPLY);
            Matrix_Scale(phi_s5->scale, 1.0f, phi_s5->scale, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_tw.c", 0x262F),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gDPSetRenderMode(POLY_XLU_DISP++, G_RM_PASS, G_RM_AA_ZB_XLU_SURF2);
            gSPClearGeometryMode(POLY_XLU_DISP++, G_CULL_BACK | G_FOG);
            gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601A790));
        }

        phi_s5++;
    }

    sp18F = 0;
    phi_s5 = eff;
    for (i = 0; i < ARRAY_COUNT(sTWEffects); i++) {
        Actor* actor;
        Vec3f off;
        if (phi_s5->type == 5) {
            if (sp18F == 0) {
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601AA50));
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, 255);
                gSPSegment(POLY_XLU_DISP++, 8,
                           Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
                sp18F++;
                func_80948528(1, 0x71AC, 0x263A);
            }

            actor = phi_s5->unk_44;
            phi_s4 = actor == NULL ? 0x46 : 0x14;

            for (j = 0; j < phi_s4; j++) {
                off.x = (func_80948544() - 0.5f) * 30.0f;
                off.y = phi_s5->dist * j;
                off.z = (func_80948544() - 0.5f) * 30.0f;
                if (actor != NULL) {
                    Matrix_Translate(actor->world.pos.x + off.x, actor->world.pos.y + off.y, actor->world.pos.z + off.z,
                                     MTXMODE_NEW);
                } else {
                    Matrix_Translate(player->actor.world.pos.x + off.x, player->actor.world.pos.y + off.y,
                                     player->actor.world.pos.z + off.z, MTXMODE_NEW);
                }

                Matrix_Scale(phi_s5->scale, phi_s5->scale, phi_s5->scale, MTXMODE_APPLY);
                Matrix_RotateY(func_80948544() * M_PI, MTXMODE_APPLY);
                Matrix_RotateX((func_80948544() - 0.5f) * M_PI * 0.5f, MTXMODE_APPLY);
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_tw.c", 0x267F),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601AB00));
            }
        }

        phi_s5++;
    }

    sp18F = 0;
    phi_s5 = eff;
    for (i = 0; i < ARRAY_COUNT(sTWEffects); i++) {
        if (phi_s5->type >= 6) {
            if (phi_s5->args == 0) {
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 195, 225, 235, phi_s5->alpha);
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601A998));
            } else {
                gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 200, 20, 0, phi_s5->alpha);
                gDPPipeSync(POLY_XLU_DISP++);
                gDPSetEnvColor(POLY_XLU_DISP++, 255, 215, 255, 128);
            }
            gSPSegment(POLY_XLU_DISP++, 8,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (phi_s5->frame * 3) & 0x7F,
                                        (-phi_s5->frame * 15) & 0xFF, 0x20, 0x40, 1, 0, 0, 0x20, 0x20));
            Matrix_Translate(phi_s5->pos.x, phi_s5->pos.y, phi_s5->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(phi_s5->scale, phi_s5->scale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(gfxCtx, "../z_boss_tw.c", 0x26B7),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            if (phi_s5->args == 0) {
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601AB00));
            } else {
                gSPDisplayList(POLY_XLU_DISP++, SEGMENTED_TO_VIRTUAL(D_0601A430));
            }
        }

        phi_s5++;
    }

    CLOSE_DISPS(gfxCtx, "../z_boss_tw.c", 0x26C0);
}

void func_80949530(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_809495A4;
    Animation_MorphToLoop(&this->skelAnime, &D_06032BF8, -3.0f);
    this->unk_150 = Rand_ZeroFloat(100.0f);
    this->timers[1] = 0x19;
    this->unk_4C8 = 0.0f;
}

void func_809495A4(BossTw* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    Math_ApproachF(&this->actor.world.pos.x, this->targetPos.x, 0.1f, fabsf(this->actor.velocity.x) * 1.5f);
    Math_ApproachF(&this->actor.world.pos.y, this->targetPos.y, 0.1f, fabsf(this->actor.velocity.y) * 1.5f);
    Math_ApproachF(&this->targetPos.y, 380.0f, 1.0f, 2.0f);
    Math_ApproachF(&this->actor.world.pos.z, this->targetPos.z, 0.1f, fabsf(this->actor.velocity.z) * 1.5f);
    if (this->timers[1] == 1) {
        func_809496D0(this, globalCtx);
    }
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, this->unk_4C8);
    Math_ApproachF(&this->unk_4C8, 4096.0f, 1.0f, 350.0f);
}

void func_809496D0(BossTw* this, GlobalContext* globalCtx) {
    f32 temp_f6;

    this->actionFunc = func_80949734;
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06036FBC, -5.0f);
    this->animFrameSwitch = Animation_GetLastFrame(&D_06036FBC.common);
    this->unk_440 = 0;
}

void func_80949734(BossTw* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    Math_ApproachF(&this->actor.world.pos.x, this->targetPos.x, 0.03f, fabsf(this->actor.velocity.x) * 1.5f);
    Math_ApproachF(&this->actor.world.pos.y, this->targetPos.y, 0.03f, fabsf(this->actor.velocity.y) * 1.5f);
    Math_ApproachF(&this->actor.world.pos.z, this->targetPos.z, 0.03f, fabsf(this->actor.velocity.z) * 1.5f);
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 0x1000);
    if (Animation_OnFrame(&this->skelAnime, this->animFrameSwitch)) {
        if ((s8)this->actor.colChkInfo.health < 10) {
            D_8094C85C = Rand_ZeroFloat(1.99f);
        } else {
            if (++D_8094C85E >= 4) {
                D_8094C85E = 1;
                D_8094C85D = !D_8094C85D;
            }
            D_8094C85C = D_8094C85D;
        }
        func_80949920(this, globalCtx);
    }
}

void func_80949920(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_809499AC;
    if (D_8094C85C == 0) {
        Animation_MorphToPlayOnce(&this->skelAnime, &D_06022700, 0.0f);
    } else {
        Animation_MorphToPlayOnce(&this->skelAnime, &D_06023750, 0.0f);
    }
    this->animFrameSwitch = Animation_GetLastFrame(&D_06023750.common);
}

void func_809499AC(BossTw* this, GlobalContext* globalCtx) {
    BossTw* twMagic;
    Vec3f* magicSpawnPos;
    s32 magicParams;
    s16 i;
    Vec3f sp7C;
    Vec3f sp70;

    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 8.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_THROW_MASIC);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_YOUNG_SHOOTVC);
    }

    if (Animation_OnFrame(&this->skelAnime, 12.0f)) {
        // magic type?
        if (D_8094C85C != 0) {
            magicParams = 0x64;
            magicSpawnPos = &this->unk_4A4;
        } else {
            magicParams = 0x66;
            magicSpawnPos = &this->unk_498;
        }

        twMagic =
            (BossTw*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BOSS_TW, magicSpawnPos->x,
                                        magicSpawnPos->y, magicSpawnPos->z, 0, 0, 0, magicParams);
        if (twMagic != NULL) {
            twMagic->unk_566 = magicParams == 0x66 ? 0 : 1;
        }
        sEnvType = twMagic->unk_566 + 1;
        sp7C = D_8094AA40;
        sp70 = D_8094AA4C;
        for (i = 0; i < 0x64; i++) {
            sp7C.x = Rand_CenteredFloat(30.0f);
            sp7C.y = Rand_CenteredFloat(30.0f);
            sp7C.z = Rand_CenteredFloat(30.0f);
            BossTw_AddDotEffect(globalCtx, magicSpawnPos, &sp7C, &sp70, (s16)Rand_ZeroFloat(2.0f) + 11,
                                twMagic->unk_566, 0x4B);
        }
    }

    if (Animation_OnFrame(&this->skelAnime, this->animFrameSwitch)) {
        func_80949BFC(this, globalCtx);
    }

    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 0x1000);
}

void func_80949BFC(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_80949C4C;
    Animation_MorphToLoop(&this->skelAnime, &D_06032BF8, -10.0f);
    this->timers[1] = 0x3C;
}

void func_80949C4C(BossTw* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (this->timers[1] == 0 && D_8094C870 == 0) {
        if (twinrovaPtr->timers[2] == 0) {
            func_8094A1C0(this, globalCtx);
        } else {
            func_8094A6D8(this, globalCtx);
        }
    }
    D_8094C870 = 0;
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 0x1000);
}

// Twinrova_TakeDamage
void func_80949CE4(BossTw* this, GlobalContext* globalCtx, u8 damage) {
    if (this->actionFunc != func_80949E10) {
        Animation_MorphToPlayOnce(&this->skelAnime, &D_060338F0, -15.0f);
        this->timers[0] = 0x96;
        this->timers[1] = 0x14;
        this->unk_440 = 0;
        this->actor.velocity.y = 0.0f;
    } else {
        this->fogTimer = 10;
        this->invincibilityTimer = 20;
        Animation_MorphToPlayOnce(&this->skelAnime, &D_06024374, -3.0f);
        this->animFrameSwitch = Animation_GetLastFrame(&D_06024374);
        this->unk_440 = 1;

        if ((s8)(this->actor.colChkInfo.health -= damage) < 0) {
            this->actor.colChkInfo.health = 0;
        }

        if ((s8)this->actor.colChkInfo.health <= 0) {
            func_8093F108(this, globalCtx);
            func_80032C7C(globalCtx, &this->actor);
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_YOUNG_DEAD);
            return;
        }
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_YOUNG_DAMAGE2);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_CUTBODY);
    }

    this->actionFunc = func_80949E10;
}

void func_80949E10(BossTw* this, GlobalContext* globalCtx) {
    s16 sp66;
    Vec3f sp58;
    Vec3f sp4C;
    Vec3f sp40;

    this->unk_5F8 = 1;
    this->actor.flags |= 0x400;

    sp66 = D_8094C85C == 0 ? 3 : 2;

    if (!(this->unk_150 & 7)) {
        sp58.x = Rand_CenteredFloat(20.0f) + this->actor.world.pos.x;
        sp58.y = Rand_CenteredFloat(40.0f) + this->actor.world.pos.y + 20;
        sp58.z = Rand_CenteredFloat(20.0f) + this->actor.world.pos.z;
        sp4C.x = 0.0f;
        sp4C.y = 0.0f;
        sp4C.z = 0.0f;
        sp40.x = 0.0f;
        sp40.y = 0.1f;
        sp40.z = 0.0f;
        func_80938DC4(globalCtx, sp66, &sp58, &sp4C, &sp40, Rand_ZeroFloat(5.0f) + 10.0f, 0, 0, 0x96);
    }
    SkelAnime_Update(&this->skelAnime);
    this->unk_160 += 0x14;
    if (this->unk_160 >= 0x100) {
        this->unk_160 = 0xFF;
    }
    Math_ApproachF(&this->unk_1B4, 0.0f, 1.0f, 0.05f);
    this->actor.world.pos.y += this->actor.velocity.y;
    Math_ApproachF(&this->actor.velocity.y, -5.0f, 1.0f, 0.5f);
    this->actor.world.pos.y -= 30.0f;
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 50.0f, 50.0f, 100.0f, 4);
    this->actor.world.pos.y += 30.0f;
    if (this->unk_440 == 0) {
        if (this->timers[1] == 0) {
            this->unk_440 = 1;
            this->animFrameSwitch = Animation_GetLastFrame(&D_060343B4.common);
            Animation_Change(&this->skelAnime, &D_060343B4, 1.0f, 0.0f, this->animFrameSwitch, 3, 0.0f);
        }
    } else {
        if (Animation_OnFrame(&this->skelAnime, this->animFrameSwitch)) {
            this->animFrameSwitch = 1000.0f;
            Animation_MorphToLoop(&this->skelAnime, &D_06035030, 0.0f);
        }
    }
    if (this->actor.bgCheckFlags & 1) {
        this->actor.velocity.y = 0.0f;
    }
    if (this->timers[0] == 0) {
        func_8094A0C4(this, globalCtx);
    }
}

void func_8094A0C4(BossTw* this, GlobalContext* globalCtx) {
    Animation_MorphToPlayOnce(&this->skelAnime, &D_06035988, 0.0f);
    this->animFrameSwitch = Animation_GetLastFrame(&D_06035988.common);
    this->actionFunc = func_8094A12C;
    this->timers[0] = 0x32;
}

void func_8094A12C(BossTw* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    Math_ApproachF(&this->actor.world.pos.y, this->targetPos.y, 0.05f, 5.0f);
    if (Animation_OnFrame(&this->skelAnime, this->animFrameSwitch)) {
        this->animFrameSwitch = 1000.0f;
        Animation_MorphToLoop(&this->skelAnime, &D_06032BF8, 0.0f);
    }
    if (this->timers[0] == 0) {
        func_8094A1C0(this, globalCtx);
    }
}

void func_8094A1C0(BossTw* this, GlobalContext* globalCtx) {
    f32 xDiff;
    f32 zDiff;
    f32 yDiff;
    f32 xzDist;
    Player* player = PLAYER;

    do {
        this->unk_154 += (s16)(((s16)Rand_ZeroFloat(2.99f)) + 1);
        this->unk_154 %= 4;
        this->targetPos = D_8094A86C[this->unk_154];
        xDiff = this->targetPos.x - player->actor.world.pos.x;
        zDiff = this->targetPos.z - player->actor.world.pos.z;
        xzDist = SQ(xDiff) + SQ(zDiff);
    } while (!(90000.0f < xzDist));

    this->targetPos.y = 480.0f;
    xDiff = this->targetPos.x - this->actor.world.pos.x;
    yDiff = this->targetPos.y - this->actor.world.pos.y;
    zDiff = this->targetPos.z - this->actor.world.pos.z;
    this->actionFunc = func_8094A398;
    this->unk_4C8 = 0.0f;
    this->actor.speedXZ = 0.0f;
    this->actor.world.rot.y = Math_FAtan2F(xDiff, zDiff) * 10430.378f;
    xzDist = sqrtf(SQ(xDiff) + SQ(zDiff));
    this->actor.world.rot.x = Math_FAtan2F(yDiff, xzDist) * 10430.378f;
    Animation_MorphToLoop(&this->skelAnime, &D_06032BF8, -10.0f);
}

void func_8094A398(BossTw* this, GlobalContext* globalCtx) {
    f32 xDiff;
    f32 yDiff;
    f32 zDiff;
    s32 pad;
    f32 yaw;
    f32 xzDist;

    Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_FLY & ~SFX_FLAG);
    SkelAnime_Update(&this->skelAnime);
    xDiff = this->targetPos.x - this->actor.world.pos.x;
    yDiff = this->targetPos.y - this->actor.world.pos.y;
    zDiff = this->targetPos.z - this->actor.world.pos.z;
    // Convert from radians to degrees, then degrees to binary angle
    yaw = (s16)(Math_FAtan2F(xDiff, zDiff) * ((180.0f / M_PI) * (65536.0f / 360.0f)));
    xzDist = sqrtf(SQ(xDiff) + SQ(zDiff));
    Math_ApproachS(&this->actor.world.rot.x,
                   (f32)(s16)(Math_FAtan2F(yDiff, xzDist) * ((180.0f / M_PI) * (65536.0f / 360.0f))), 0xA,
                   this->unk_4C8);
    Math_ApproachS(&this->actor.world.rot.y, yaw, 0xA, this->unk_4C8);
    Math_ApproachS(&this->actor.shape.rot.y, yaw, 0xA, this->unk_4C8);
    Math_ApproachF(&this->unk_4C8, 2000.0f, 1.0f, 100.0f);
    Math_ApproachF(&this->actor.speedXZ, 30.0f, 1.0f, 2.0f);
    func_8002D908(&this->actor);
    Math_ApproachF(&this->actor.world.pos.x, this->targetPos.x, 0.1f, fabsf(this->actor.velocity.x) * 1.5f);
    Math_ApproachF(&this->actor.world.pos.y, this->targetPos.y, 0.1f, fabsf(this->actor.velocity.y) * 1.5f);
    Math_ApproachF(&this->targetPos.y, 380.0f, 1.0f, 2.0f);
    Math_ApproachF(&this->actor.world.pos.z, this->targetPos.z, 0.1f, fabsf(this->actor.velocity.z) * 1.5f);
    if (xzDist < 200.0f) {
        func_80949530(this, globalCtx);
    }
}

void func_8094A608(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8094A660;
    Animation_MorphToLoop(&this->skelAnime, &D_06032BF8, 0.0f);
    this->timers[0] = 0x14;
    this->actor.speedXZ = 0.0f;
}

void func_8094A660(BossTw* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (this->timers[0] != 0) {
        this->collider.base.colType = COLTYPE_METAL;
        this->actor.shape.rot.y = this->actor.shape.rot.y - 0x3000;
        if (!(this->timers[0] & 3)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_ROLL);
        }
    } else {
        func_8094A1C0(this, globalCtx);
    }
}

void func_8094A6D8(BossTw* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8094A740;
    Animation_MorphToPlayOnce(&this->skelAnime, &D_0603A2D0, 0.0f);
    this->animFrameSwitch = Animation_GetLastFrame(&D_0603A2D0.common);
    this->actor.speedXZ = 0.0f;
}

void func_8094A740(BossTw* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 10.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_TWINROBA_YOUNG_LAUGH);
    }
    if (Animation_OnFrame(&this->skelAnime, this->animFrameSwitch)) {
        func_8094A1C0(this, globalCtx);
    }
}
