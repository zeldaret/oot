#include "z_boss_ganondrof.h"
#include "overlays/actors/ovl_En_fHG/z_en_fhg.h"

#define FLAGS 0x00000035

#define THIS ((BossGanondrof*)thisx)

void BossGanondrof_Init(Actor* thisx, GlobalContext* globalCtx);
void BossGanondrof_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossGanondrof_Update(Actor* thisx, GlobalContext* globalCtx);
void BossGanondrof_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80911294(BossGanondrof* this);
void func_80910D80(BossGanondrof* this, GlobalContext* globalCtx);
void func_80912D2C(BossGanondrof* this, GlobalContext* globalCtx);
void func_809122A4(BossGanondrof* this, GlobalContext* globalCtx);
void func_8091156C(BossGanondrof* this, GlobalContext* globalCtx);
void func_809112D4(BossGanondrof* this, GlobalContext* globalCtx);

void func_80910DCC(BossGanondrof* this, GlobalContext* globalCtx);
void func_80911CB0(BossGanondrof* this, GlobalContext* globalCtx);
void func_809123D4(BossGanondrof* this, GlobalContext* globalCtx);
void func_80912020(BossGanondrof* this, GlobalContext* globalCtx);
void func_80912524(BossGanondrof* this, GlobalContext* globalCtx);
void func_809114E8(BossGanondrof* this, f32 arg1);




extern Gfx D_06004EC0[];
extern SkeletonHeader D_0600C710;
extern AnimationHeader D_06003CA4;
extern AnimationHeader D_06001144;
extern AnimationHeader D_06002684;
extern AnimationHeader D_060019A4;
extern AnimationHeader D_0600D99C;
extern AnimationHeader D_0600DF80;
extern AnimationHeader D_0600189C;
extern AnimationHeader D_06001AB0;
extern AnimationHeader D_060108D8;
extern AnimationHeader D_06000D84;
extern AnimationHeader D_0600090C;
extern AnimationHeader D_0600FAC8;
extern AnimationHeader D_06011BCC;
extern AnimationHeader D_06010060;
extern AnimationHeader D_06011F44;
extern AnimationHeader D_0601267C;
extern AnimationHeader D_06003080;

extern UNK_TYPE D_0600B380;
extern UNK_TYPE D_06003DB0;

typedef struct {
    Actor actor;
    u8 unk_14C;
    u8 unk_14D;
} BossGanondrofFakeStruct;

/*
const ActorInit Boss_Ganondrof_InitVars = {
    ACTOR_BOSS_GANONDROF,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_GND,
    sizeof(BossGanondrof),
    (ActorFunc)BossGanondrof_Init,
    (ActorFunc)BossGanondrof_Destroy,
    (ActorFunc)BossGanondrof_Update,
    (ActorFunc)BossGanondrof_Draw,
};
*/

static ColliderCylinderInit sCylinderInit1 =
{
    { COLTYPE_UNK3, 0x11, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0xFFCFFFFE, 0x00, 0x00 }, 0x01, 0x05, 0x01 },
    { 30, 90, -50, { 0, 0, 0 } },
};

static ColliderCylinderInit sCylinderInit2 =
{
    { COLTYPE_UNK3, 0x11, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x30 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
    { 20, 30, -20, { 0, 0, 0 } },
};

u8 D_80914D28[] = {
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x01, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x01, 
    0x01, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x01, 
    0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 
    0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 
    0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x01, 
    0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x01, 
    0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x01, 
    0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x01, 
    0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x01, 
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
};

u8 D_80914E28[] = {
    0x01, 0x01, 0x01, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 
    0x01, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 
    0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 
    0x01, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
    0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 
    0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 
    0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x01, 0x00, 0x00, 
    0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
    0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 
    0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01
};

u8 D_80914F28[] = {
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
};

UNK_PTR D_80915028[] = {
    0x0600A800, 0x0600AE80, 0x0600AF00, 0x0600C180, 0x0600C400
};

UNK_PTR D_8091503C[] = {
    0x0600B980, 0x0600C480, 0x0600BC80, 0x0600BD80, 0x0600C080
};

UNK_PTR D_80915050[] = {
    0x0600C200, 0x0600A000, 0x0600A200, 0x0600A400, 0x0600A600, 
    0x0600A880, 0x0600B780, 0x0600BA80, 0x0600BE80
};

UNK_PTR D_80915074[] = {
    0x0600AA80, 0x0600AF80
};

UNK_PTR D_8091507C[] = {
    0x0600AA80, 0x0600AF80
};

// D_80915084
static InitChainEntry sInitChain[] = {
    ICHAIN_U8(unk_1F, 5, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 43, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 0, ICHAIN_STOP),
};

Vec3f D_80915094 = { 0.0f, 0.0f, 50.0f };
Vec3f D_809150A0 = { 0.0f, 0.0f, 0.0f };
Vec3f D_809150AC = { 0.0f, 0.0f, 0.0f };
Vec3f D_809150B8 = { 0.0f, 0.0f, 0.0f };
Vec3f D_809150C4 = { 0.0f, 0.0f, 0.0f };
Vec3f D_809150D8 = { 0.0f, 0.0f, 0.0f };
Vec3f D_809150E4 = { 0.0f, 0.0f, 0.0f };
Vec3f D_809150F0 = { 0.0f, 50.0f, 0.0f };
Vec3f D_809150FC = { 0.0f, 0.0f, 0.0f };
Vec3f D_80915108 = { 0.0f, 0.0f, 0.0f };
Vec3f D_80915114 = { 0.0f, -0.5f, 0.0f };
Vec3f D_80915120 = { 0.0f, 0.0f, 0.0f };
Vec3f D_8091512C = { 0.0f, 0.0f, 6000.0f };

void func_80910640(s16* arg0, u8 *arg1, s16 arg2) {
    if (arg1[arg2] != 0) {
        arg0[arg2 / 4] = 0;
    }
}

void func_80910680(s16 *arg0, u8 *arg1, s16 arg2) {
    if (arg1[arg2] != 0) {
        arg0[arg2 / 2] = 0;
    }
}

void func_809106C0(s16 *arg0, u8 *arg1, s16 arg2) {
    if (arg1[arg2] != 0) {
        arg0[arg2] = 0;
    }
}

void func_809106F0(s16 *arg0, u8 *arg1, s16 arg2) {
    s16 tmp;

    if (arg1[arg2] != 0) {
        tmp = (arg2 & 0xF) + ((arg2 & 0xF0) * 2);
        arg0[tmp + 16] = 0;
        arg0[tmp] = 0;
    }
}

void func_80910738(s16 *arg0, u8 *arg1, s16 arg2) {
    s16 tmp;

    if (arg1[arg2] != 0) {
        tmp = ((arg2 & 0xF) * 2) + ((arg2 & 0xF0) * 2);
        arg0[tmp + 1] = 0;
        arg0[tmp] = 0;
    }
}

void func_80910784(u8 *arg0, s16 arg1) {
    s16 i;

    for (i = 0; i < 5; i++) {
        func_80910640(SEGMENTED_TO_VIRTUAL(D_80915028[i]), arg0, arg1);
        func_80910680(SEGMENTED_TO_VIRTUAL(D_8091503C[i]), arg0, arg1);
    }

    for (i = 0; i < 9; i++) {
        func_809106C0(SEGMENTED_TO_VIRTUAL(D_80915050[i]), arg0, arg1);
    }

    for (i = 0; i < 2; i++) {
        func_80910738(SEGMENTED_TO_VIRTUAL(D_80915074[i]), arg0, arg1);
    }

    func_809106F0(SEGMENTED_TO_VIRTUAL(&D_0600B380), arg0, arg1);
    func_80910738(SEGMENTED_TO_VIRTUAL(&D_06003DB0), arg0, arg1);
    
    for (i = 0; i < 2; i++) {
        func_809106C0(SEGMENTED_TO_VIRTUAL(D_8091507C[i]), arg0, arg1);
    }
}

void func_80910A34(Vec3f *arg0, ColliderCylinder *collider) {
    collider->dim.pos.x = arg0->x;
    collider->dim.pos.y = arg0->y;
    collider->dim.pos.z = arg0->z;
}

void BossGanondrof_Init(Actor *thisx, GlobalContext *globalCtx) {
    BossGanondrof* this = THIS;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    Actor_SetScale(&this->actor, 0.01f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_0600C710, &D_06003CA4, NULL, NULL, 0);
    if (this->actor.params < 10) {
        this->actor.params = 1;
        this->actor.colChkInfo.health = 0x1E;
        this->unk_4CC = Lights_Insert(globalCtx, &globalCtx->lightCtx, &this->unk_4D0);
        Lights_InitType0PositionalLight(&this->unk_4D0, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0xFF, 0xFF, 0xFF, 0xFF);
        func_80910D80(this, globalCtx);
    } else {
        func_80911294(this);
    }

    Collider_InitCylinder(globalCtx, &this->collider1);
    Collider_InitCylinder(globalCtx, &this->collider2);
    Collider_SetCylinder(globalCtx, &this->collider1, &this->actor, &sCylinderInit1);
    Collider_SetCylinder(globalCtx, &this->collider2, &this->actor, &sCylinderInit2);
    this->actor.flags &= ~1;
    if (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)) {
        Actor_Kill(&this->actor);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_WARP1, 14.0f, -33.0f, -3315.0f, 0, 0, 0, -1);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, 214.0f, -33.0f, -3315.0f, 0, 0, 0, 0);
    } else {
        Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FHG, 
            this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 
            0, 0, 0, this->actor.params);
    }
}

void BossGanondrof_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    BossGanondrof* this = THIS;

    osSyncPrintf("DT1\n");
    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyCylinder(globalCtx, &this->collider1);
    Collider_DestroyCylinder(globalCtx, &this->collider2);
    if (this->actor.params == 1) {
        Lights_Remove(globalCtx, &globalCtx->lightCtx, this->unk_4CC);
    }

    osSyncPrintf("DT2\n");
}

void func_80910D80(BossGanondrof *this, GlobalContext *globalCtx) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_060019A4);
    this->actionFunc = func_80910DCC;
    this->unk_1A8 = 1;
}

void func_80910DCC(BossGanondrof *this, GlobalContext *globalCtx) {
    s32 pad;
    s16 i;
    EnfHG* horse = (EnfHG*)this->actor.attachedB; //sp94
    Vec3f sp88;
    Vec3f sp7C;
    Vec3f sp70;
    EnfHG* tmpHorse;
    
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->actor.posRot.pos = horse->actor.posRot.pos;
    this->actor.shape.rot.y = this->actor.posRot.rot.y = horse->actor.posRot.rot.y;
    osSyncPrintf("SW %d------------------------------------------------\n", horse->unk_14C);

    if ((this->unk_1BC[1] != 0) && (this->unk_1BC[1] < 0x19)) {
        sp7C = D_809150A0;
        sp70 = D_809150AC;
        sp88.x = Math_Rand_CenteredFloat(10.0f) + this->unk_2C0;
        sp88.y = Math_Rand_ZeroFloat(-5.0f) + this->unk_2C4;
        sp88.z = (Math_Rand_CenteredFloat(10.0f) + this->unk_2C8) + 5.0f;
        sp70.y = 0.03f;
        func_80029DBC(globalCtx, &sp88, &sp7C, &sp70, (s16)Math_Rand_ZeroFloat(10.0f) + 5, 0);
    }

    if (this->unk_1BC[1] == 20) {
        this->unk_1A8 = 0;
    }

    if (this->unk_1BC[1] == 30) {
        func_80078914(&D_80915094, NA_SE_EN_FANTOM_TRANSFORM);
    }

    if (horse->unk_14C == 3) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06001144, 0.5f, 0.0f, SkelAnime_GetFrameCount(&D_06001144.genericHeader), 3, 0.0f);
        this->unk_1BC[1] = 0x28;
    }

    if (horse->unk_14C == 2) {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06002684, -3.0f);
    }

    if (horse->unk_14C == 5) {
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060019A4, -13.0f);
    }

    if (horse->unk_14C == 10) {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600D99C, -7.0f);
        tmpHorse = (EnfHG*)this->actor.attachedB;
        Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FHG_FIRE, 
            this->unk_200.x, this->unk_200.y, this->unk_200.z, 0x32, 0, 0, 0x26);
        this->actor.attachedB = &tmpHorse->actor;
    }

    if (horse->unk_14C == 11) {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600DF80, -5.0f);
    }

    switch (this->unk_1AA) {
        case 1:
            this->unk_1D4[3] += 40.0f;
            if (this->unk_1D4[3] >= 255.0f) {
                this->unk_1D4[3] = 255.0f;
            }
            break;

        case 2:
            this->unk_1D4[0] += 20.0f;
            if (this->unk_1D4[0] > 255.0f) {
                this->unk_1D4[0] = 255.0f;
            }
            break;
    }

    this->unk_3D4 = Math_Sins(this->unk_194 * 1768) * 0;
    this->unk_3D8 = Math_Coss(this->unk_194 * 2268) * 300.0f;
    
    for (i = 0; i < 30; i++) {
        this->unk_454[i] = Math_Sins(this->unk_194 * ((i * 50) + 0x7B0)) * 100.0f;
        this->unk_3DC[i] = Math_Coss(this->unk_194 * ((i * 50) + 0x8DC)) * 100.0f;
    }

    if (horse->unk_14C == 0xFF) {
        func_80911294(this);
        for (i = 0; i < 30; i++) {
            this->unk_3DC[i] = 0.0f;
            this->unk_454[i] = 0.0f;
        }
    }

    horse->unk_14C = 0;
}

void func_80911294(BossGanondrof *this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06003CA4, -5.0f);
    this->actionFunc = func_809112D4;
}

#define NON_MATCHING
#ifdef NON_MATCHING
// Struct copy and the scale div
void func_809112D4(BossGanondrof *this, GlobalContext *globalCtx) {
    EnfHG* horse = (EnfHG*)this->actor.attachedB; //sp48;
    Actor* horseActor = &horse->actor;

    osSyncPrintf("RUN 1\n");
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    osSyncPrintf("RUN 2\n");

    if (horse->unk_14C == 1) {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600D99C, -2.0f);
        this->actor.flags |= 1;
        horseActor = this->actor.attachedB;
        Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FHG_FIRE, this->unk_200.x, this->unk_200.y, this->unk_200.z, 0x1E, 0, 0, 0x26);
        this->actor.attachedB = horseActor;
    } else if (horse->unk_14C == 3) {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06003080, -2.0f);
    } else if (horse->unk_14C == 4) {
        SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600DF80, -2.0f);
    } else if (horse->unk_14C == 5) {
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06003CA4, -2.0f);
        this->actor.flags &= ~1;
    }

    osSyncPrintf("RUN 3\n");
    this->actor.posRot.pos = horse->actor.posRot.pos;
    this->actor.posRot.pos.y = horse->actor.posRot.pos.y;
    
    this->actor.shape.rot.y = this->actor.posRot.rot.y = horse->actor.posRot.rot.y;

    if (this->unk_1C9) {
        func_809114E8(this, -20.0f);
        this->unk_1BC[0] = 0x64;
        this->collider1.dim.radius = 0x14;
        this->collider1.dim.height = 0x3C;
        this->collider1.dim.yShift = -0x21;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_LAUGH);
        this->actor.naviEnemyId = 0x1A;
    } else {
        
        horse->actor.scale.x /= 1.15f;
        horse->actor.scale.y /= 1.15f;
        horse->actor.scale.z /= 1.15f;
        
        horse->unk_14C = 0;
        osSyncPrintf("RUN 4\n");
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_809112D4.s")
#endif

void func_809114E8(BossGanondrof *this, f32 arg1) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06010060, arg1);
    this->actionFunc = func_8091156C;
    this->actor.flags |= 1;
    this->unk_1CC = 0.0f;
    this->unk_1BC[0] = (s16)(Math_Rand_ZeroOne() * 64.0f) + 0x1E;
}

void func_8091156C(BossGanondrof *this, GlobalContext *globalCtx) {
    Vec3f sp7C;
    Player* player = PLAYER; //sp78;
    f32 tmpf1;
    f32 tmpf2;
    s16 i;
    s32 pad3;
    Vec3f sp5C;
    Vec3f sp50;
    Vec3f sp44;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    switch (this->unk_1C9) {
        case 1:
            if (this->unk_1BC[0] == 0) {
                this->unk_1BC[0] = (s16)(Math_Rand_ZeroOne() * 64.0f) + 0x1E;
                tmpf1 = Math_Rand_ZeroOne();
                if (this->actor.colChkInfo.health < 5) {
                    if (tmpf1 < 0.25f) {
                        func_80911CB0(this, globalCtx);
                    } else if (tmpf1 >= 0.8f) {
                        this->unk_1C9 = 4;
                        this->unk_1BC[0] = 0x3C;
                        this->unk_1CC = 0.0f;
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_LAUGH);
                    } else {
                        this->unk_1C9 = 2;
                        this->unk_1BC[0] = 0x3C;
                        this->unk_1CC = 0.0f;
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_LAUGH);
                    }
                } else if ((tmpf1 < 0.5f) || (this->unk_1A6 < 5)) {
                    func_80911CB0(this, globalCtx);
                } else {
                    this->unk_1C9 = 2;
                    this->unk_1BC[0] = 0x3C;
                    this->unk_1CC = 0.0f;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_LAUGH);
                }
            }
            if (this->unk_1BC[1] != 0) {
                sp7C.z = 14.0f;
                sp7C.x = -3315.0f;
            } else {
                sp7C.z = (Math_Sins(player->actor.shape.rot.y) * 180.0f) + player->actor.posRot.pos.x;
                sp7C.x = (Math_Coss(player->actor.shape.rot.y) * 180.0f) + player->actor.posRot.pos.z;

                if (sqrtf(SQ(sp7C.z - 14.0f) + SQ(sp7C.x - -3315.0f)) > 280.0f) {
                    this->unk_1BC[1] = 0x32;
                    this->unk_1CC = 0.0f;
                }
            }

            sp7C.y = player->actor.posRot.pos.y + 100.0f;
            sp7C.z += Math_Sins(this->unk_194 * 1280) * 100.0f;
            sp7C.x += Math_Coss(this->unk_194 * 1792) * 100.0f;
            break;

        case 2:
            sp7C.y = (player->actor.posRot.pos.y + 100.0f) + 100.0f;
            sp7C.z = 0;
            sp7C.z += (Math_Sins(this->unk_194 * 1280) * 100.0f);
            sp7C.x = -3050.0f;
            sp7C.x += (Math_Coss(this->unk_194 * 1792) * 100.0f);
            if (this->unk_1BC[0] == 0) {
                this->unk_1C9 = 3;
                this->unk_1CA = 0;
                func_80911CB0(this, globalCtx);
                this->unk_1BC[0] = 0x50;
            }
            break;

        case 3:
            sp7C.y = (player->actor.posRot.pos.y + 100.0f) + 100.0f;
            sp7C.z = 0;
            sp7C.z += (Math_Sins(this->unk_194 * 1280) * 50.0f);
            sp7C.x = -3050.0f;
            sp7C.x += (Math_Coss(this->unk_194 * 1792) * 50.0f);
            if (this->unk_1CA != 0) {
                this->unk_1CA = 0;
                func_80912020(this, globalCtx);
                this->unk_1BC[0] = 0x50;
            }

            if (this->unk_1BC[0] == 0) {
                this->unk_1C9 = 1;
            }
            break;

        case 4:
            sp7C.y = (player->actor.posRot.pos.y + 100.0f) + 50.0f;
            sp7C.z = 0;
            sp7C.z += (Math_Sins(this->unk_194 * 1280) * 100.0f);
            sp7C.x = -3100.0f;
            sp7C.x += (Math_Coss(this->unk_194 * 1792) * 100.0f);
            if (this->unk_1BC[0] == 0) {
                func_80912524(this, globalCtx);
            }
            break;
    }

    Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, sp7C.z, 0.05f, this->unk_1CC);
    if (this->unk_1BC[2] != 0) {
        Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, sp7C.y + 100.0f, 0.1f, 50.0f);
    } else {
        Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, sp7C.y, 0.05f, 10.0f);
    }
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, sp7C.x, 0.05f, this->unk_1CC);
    Math_SmoothScaleMaxF(&this->unk_1CC, 50.0f, 1.0f, 0.5f);
    this->actor.velocity.x = this->actor.posRot.pos.x - this->actor.pos4.x;
    this->actor.velocity.z = this->actor.posRot.pos.z - this->actor.pos4.z;
    tmpf2 = Math_Sins(this->unk_194 * 1500);
    this->actor.posRot.pos.y += (tmpf2 + tmpf2);
    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 5, 0xBB8);
    if ((this->unk_194 & 1) == 0) {
        sp50 = D_809150B8;
        sp44 = D_809150C4;

        for (i = 0; i < 3; i++) {
            sp5C.x = Math_Rand_CenteredFloat(20.0f) + this->unk_200.x;
            sp5C.y = Math_Rand_CenteredFloat(20.0f) + this->unk_200.y;
            sp5C.z = Math_Rand_CenteredFloat(20.0f) + this->unk_200.z;
            sp44.y = -0.08f;
            EffectSsFhgFlash_Spawn(globalCtx, &sp5C, &sp50, &sp44, (s16)(Math_Rand_ZeroOne() * 80.0f) + 0x96, 0);
        }
    }

    if (player->unk_A73 != 0) {
        func_809123D4(this, globalCtx);
    }

    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_FLOAT - SFX_FLAG);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80911CB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80911DD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80912020.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_809120BC.s")

void func_809121E0(BossGanondrof *this, GlobalContext *globalCtx) {
    if (this->actionFunc != func_809122A4) {
        this->unk_1D0 = SkelAnime_GetFrameCount(&D_060108D8.genericHeader);
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060108D8, 0.0f);
        this->unk_1BC[0] = 0x32;
        this->unk_1C8 = 0x3C;
    } else {
        this->unk_1D0 = SkelAnime_GetFrameCount(&D_0600FAC8.genericHeader);
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600FAC8, 0.0f);
    }

    this->actionFunc = func_809122A4;
    this->unk_1A2 = 0;
    this->actor.velocity.x = 0.0f;
    this->actor.velocity.z = 0.0f;
    
}

void func_809122A4(BossGanondrof *this, GlobalContext *globalCtx) {
    osSyncPrintf("DAMAGE   .................................\n");
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->actor.gravity = -0.2f;
    if (this->actor.posRot.pos.y <= 5.0f) {
        if (this->unk_1A2 == 0) {
            this->unk_1D0 = SkelAnime_GetFrameCount(&D_06011BCC.genericHeader);
            SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06011BCC, -10.0f);
            this->unk_1A2 = 1;
        }

        this->actor.velocity.y = 0.0f;
        this->actor.gravity = 0.0f;
        if (func_800A56C8(&this->skelAnime, this->unk_1D0) != 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_DAMAGE2);
        }

        this->actor.flags |= 0x400;
    }

    osSyncPrintf("TIME0 %d ********************************************\n", this->unk_1BC[0]);
    if (this->unk_1BC[0] == 0) {
        func_809114E8(this, -5.0f);
        this->unk_1BC[0] = 0x1E;
        this->unk_1BC[2] = 0x1E;
        this->unk_1C9 = 1;
        this->actor.velocity.y = 0.0f;
        this->actor.gravity = 0.0f;
    }
    Actor_MoveForward(&this->actor);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_809123D4.s")

void func_80912448(BossGanondrof *this, GlobalContext *globalCtx) {
    f32 tmpf1;

    this->collider1.base.type = 9;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->actor.posRot.pos.x += this->actor.velocity.x;
    this->actor.posRot.pos.z += this->actor.velocity.z;
    Math_SmoothDownscaleMaxF(&this->actor.velocity.x, 1.0f, 0.5f);
    Math_SmoothDownscaleMaxF(&this->actor.velocity.z, 1.0f, 0.5f);
    tmpf1 = Math_Sins(this->unk_194 * 1500);
    this->actor.posRot.pos.y += (tmpf1 + tmpf1);
    if (this->unk_1BC[0] == 0) {
        func_809114E8(this, -5.0f);
        this->unk_1BC[0] = 0xA;
        this->unk_1C9 = 1;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80912524.s")

void func_80912594(BossGanondrof *this, GlobalContext *globalCtx) {
    s32 pad;
    s32 pad2;
    Player* player = PLAYER;
    EnfHG* horse;
    Vec3f tmpVec;
    f32 tmpf3;
    s16 i;
    Vec3f spB0;
    Vec3f spA4;
    Vec3f sp98;
    Vec3f sp8C;
    Vec3f sp80;
    f32 tmpf1 = this->actor.posRot.pos.x - 14.0f;
    f32 tmpf2 = this->actor.posRot.pos.z - -3315.0f;

    this->collider1.base.type = 9;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    switch (this->unk_1A2) {
        case 0:
            if (this->unk_1BC[0] == 0xDA) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_STICK);
            }

            if (this->unk_1BC[0] == 0x13) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_ATTACK);
            }

            this->actor.posRot.pos.x += this->actor.velocity.x;
            this->actor.posRot.pos.z += this->actor.velocity.z;
            Math_SmoothDownscaleMaxF(&this->actor.velocity.x, 1.0f, 0.5f);
            Math_SmoothDownscaleMaxF(&this->actor.velocity.z, 1.0f, 0.5f);
            if (this->unk_1BC[0] == 0) {
                this->unk_1A2 = 1;
                this->unk_1BC[0] = 0xA;
                this->actor.speedXZ = 0.0f;
                this->unk_1D0 = SkelAnime_GetFrameCount(&D_06011F44.genericHeader);
                SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06011F44, 0.0f);
            }
            Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 5, 0x7D0);
            break;

        case 1:
            if (func_800A56C8(&this->skelAnime, this->unk_1D0) != 0) {
                this->unk_1D0 = SkelAnime_GetFrameCount(&D_0601267C.genericHeader);
                SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0601267C, 0.0f);
                this->unk_1A2 = 2;
            }

        case 2:
            if (this->unk_1BC[0] != 0) {
                Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 5, 0x7D0);
                tmpVec.x = player->actor.posRot.pos.x - this->actor.posRot.pos.x;
                tmpVec.y = (player->actor.posRot.pos.y + 40.0f) - this->actor.posRot.pos.y;
                tmpVec.z = player->actor.posRot.pos.z - this->actor.posRot.pos.z;
                
                this->actor.posRot.rot.y = this->actor.shape.rot.y;

                tmpf3 = sqrtf(SQ(tmpVec.x) + SQ(tmpVec.z));
                this->actor.posRot.rot.x = Math_atan2f(tmpVec.y, tmpf3) * 10430.378f;
            }

            func_8002D908(&this->actor);
            func_8002D7EC(&this->actor);
            Math_SmoothScaleMaxF(&this->actor.speedXZ, 10.0f, 1.0f, 0.5f);
            if ((sqrtf(SQ(tmpf1) + SQ(tmpf2)) > 280.0f) || 
                (this->actor.xyzDistFromLinkSq < 10000.0f)) {
                    this->unk_1A2 = 3;
                    this->unk_1BC[0] = 0x14;
            }
            break;

        case 3:
            this->actor.gravity = 0.2f;
            Actor_MoveForward(&this->actor);
            osSyncPrintf("YP %f @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n", this->actor.posRot.pos.y);
            if (this->actor.posRot.pos.y < 5.0f) {
                this->actor.posRot.pos.y = 5.0f;
                this->actor.velocity.y = 0.0f;
            }

            if (sqrtf(SQ(tmpf1) + SQ(tmpf2)) > 280.0f) {
                Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 1.0f, 2.0f);
                this->unk_1BC[0] = 0;
            }

            if (this->unk_1BC[0] == 0) {
                Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 1.0f, 2.0f);
                Math_SmoothDownscaleMaxF(&this->actor.velocity.y, 1.0f, 2.0f);
                Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 5, 0x7D0);
                if ((this->actor.speedXZ <= 0.5f) && (fabsf(this->actor.velocity.y) <= 0.1f)) {
                    func_809114E8(this, -10.0f);
                    this->unk_1BC[0] = 0x1E;
                    this->unk_1C9 = 1;
                }
            }
            break;
    }

    if (50.0f < this->actor.posRot.pos.y) {
        tmpf1 = Math_Sins(this->unk_194 * 1500);
        this->actor.posRot.pos.y += tmpf1 + tmpf1;
    }

    spA4 = D_809150D8;
    sp98 = D_809150E4;
    sp8C = D_809150F0;
    sp8C.y = 10.0f;

    for (i = 0; i < 10; i++) {
        Matrix_Push();
        Matrix_RotateY((this->actor.shape.rot.y / 32768.0f) * M_PI, 0);
        Matrix_RotateX((this->actor.shape.rot.x / 32768.0f) * M_PI, 1);
        Matrix_RotateZ((this->unk_1AC / 32768.0f) * M_PI, 1);
        Matrix_MultVec3f(&sp8C, &sp80);
        Matrix_Pull();
        spB0.x = this->unk_200.x + sp80.x;
        spB0.y = this->unk_200.y + sp80.y;
        spB0.z = this->unk_200.z + sp80.z;
        spA4.x = (sp80.x * 500.0f) / 1000.0f;
        spA4.y = (sp80.y * 500.0f) / 1000.0f;
        spA4.z = (sp80.z * 500.0f) / 1000.0f;
        sp98.x = (sp80.x * -50.0f) / 1000.0f;
        sp98.y = (sp80.y * -50.0f) / 1000.0f;
        sp98.z = (sp80.z * -50.0f) / 1000.0f;
        EffectSsFhgFlash_Spawn(globalCtx, &spB0, &spA4, &sp98, 0x96, i % 7);
        this->unk_1AC += 0x1A5C;
    }

    if (!(this->unk_194 & 7)) {
        horse = (EnfHG*)this->actor.attachedB;
        Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FHG_FIRE, 
            this->unk_200.x, this->unk_200.y, this->unk_200.z, 8, 1, 0, 0x26);
        this->actor.attachedB = &horse->actor;
    }
}

void func_80912C94(BossGanondrof *this, GlobalContext *globalCtx) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600090C);
    this->unk_1D0 = SkelAnime_GetFrameCount(&D_0600090C.genericHeader);
    this->actionFunc = func_80912D2C;
    Audio_SetBGM(0x100100FF);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_DEAD);
    this->unk_35E = 1;
    this->actor.flags &= ~1;
    this->unk_194 = 0;
    this->unk_1C8 = 0x32;
}

#ifdef NON_MATCHING
// Loop near the bottom, horse/player stuff definitely wrong
void func_80912D2C(BossGanondrof *this, GlobalContext *globalCtx) {
    u8 spBF = 0;
    u8 spBE = 0;
    f32 spB8;
    f32 spB4;
    f32 frames;
    s16 i;
    EnfHG* horse;
    Actor* player = &PLAYER->actor;
    Camera* camera = Gameplay_GetCamera(globalCtx, 0);
    Vec3f sp94;
    Vec3f sp88;
    Vec3f sp7C;
    Vec3f sp70;
    s16 sp6E;


    osSyncPrintf("PYP %f\n", player->groundY);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->unk_1B6++;
    if (((this->unk_1B6 >= 0x3D) && (this->unk_1B6 <= 0x1F3)) || 
        ((this->unk_1B6 >= 0x1F6) && (this->unk_1B6 <= 0x26B))) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_LAST - SFX_FLAG);
    }

    switch (this->unk_35E) {
        case 1:
            func_80064520(globalCtx, &globalCtx->csCtx);
            func_8002DF54(globalCtx, &this->actor, 1);
            this->unk_35C = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
            osSyncPrintf("7\n");
            Gameplay_ChangeCameraStatus(globalCtx, this->unk_35C, 7);
            osSyncPrintf("8\n");
            this->unk_35E = 2;
            player->speedXZ = 0.0f;
            this->unk_1BC[0] = 0x32;
            this->unk_360 = camera->eye;
            this->unk_36C = camera->at;
            this->unk_398 = (this->unk_20C[0].z + 100.0f) + 50.0f;
            this->unk_394 = 50.0f;
            this->unk_3AC = this->unk_20C[0].y - 10.0f;
            this->unk_3B0 = this->unk_20C[0].z;
            this->unk_390 = this->unk_20C[0].x;
            this->unk_3A8 = this->unk_20C[0].x;
            this->unk_378 = fabsf(camera->eye.x - this->unk_390);
            this->unk_37C = fabsf(camera->eye.y - this->unk_394);
            this->unk_380 = fabsf(camera->eye.z - this->unk_398);
            this->unk_384 = fabsf(camera->at.x - this->unk_3A8);
            this->unk_388 = fabsf(camera->at.y - this->unk_3AC);
            this->unk_38C = fabsf(camera->at.z - this->unk_3B0);
            this->unk_3C4 = 0.02f;
            this->unk_39C = this->unk_3A0 = this->unk_3A4 = 0.05f;
            this->unk_1A2 = 0;
            this->unk_1BC[0] = 0x96;
            this->unk_3B4 = 0.2f;
            this->unk_3B8 = 0.2f;
            this->unk_3BC = 0.2f;

        case 2:
            switch (this->unk_1A2) {
                case 0:
                    if (func_800A56C8(&this->skelAnime,this->unk_1D0) != 0) {
                        frames = SkelAnime_GetFrameCount(&D_060108D8.genericHeader);
                        this->unk_1D0 = frames;
                        SkelAnime_ChangeAnim(&this->skelAnime, &D_060108D8, 0.5f, 0.0f, frames, 3, 0.0f);
                        this->unk_1A2 = 1;
                    }
                    break;

                case 1:
                    if (func_800A56C8(&this->skelAnime, this->unk_1D0) != 0) {
                        this->unk_1D0 = SkelAnime_GetFrameCount(&D_06000D84.genericHeader);
                        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000D84, -20.0f);
                        this->unk_1A2 = 2;
                    }

                case 2:
                    spBE = 1;
                    break;
            }

            Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->unk_194 * -100, 5, 0xBB8);
            Math_SmoothScaleMaxF(&this->unk_398, this->unk_20C[0].z + 60.0f, 0.02f, 0.5f);
            Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, 100.0f, 0.05f, 100.0f);
            this->actor.posRot.pos.y += Math_Sins(this->unk_194 * 1500);
            this->unk_3A8 = this->unk_20C[0].x;
            this->unk_3AC = this->unk_20C[0].y - 10.0f;
            this->unk_3B0 = this->unk_20C[0].z;
            if (this->unk_1BC[0] == 0) {

                this->unk_35E = 3;
                this->unk_1BC[0] = 0x15E;
                this->unk_1BC[1] = 0x32;
                
                this->unk_1D4[1] = 300.0f;
                this->unk_394 = 200.0f;
                player->posRot.pos.x = -186.0f;
                player->posRot.pos.z = -3315.0f;

                spBF = 1;
                spBE = 1;
            }
            break;

        case 3:
            if (this->unk_1BC[1] == 1) {
                player = this->actor.attachedB;
                Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_FHG_FIRE, 14.0f, -30.0f, -3315.0f, 0x4000, 0, 0, 0x29);
                this->actor.attachedB = player;
                // Hey kid, you did quite well...
                // It looks like you may be gaining
                // some slight skill...But you have defeated only my
                // phantom...
                // When you fight the real me, it
                // won't be so easy!What a worthless creation that
                // ghost was! I will banish it to
                // the gap between dimensions!! 
                func_8010B680(globalCtx, 0x108E, NULL);
            }

            this->actor.shape.rot.y -= 0xC8;
            this->actor.posRot.pos.y += Math_Sins(this->unk_194 * 1500);

            this->unk_1D4[2] += 120.0f;
            spB8 = Math_Sins(this->unk_1D4[2]) * this->unk_1D4[1];
            spB4 = Math_Coss(this->unk_1D4[2]) * this->unk_1D4[1];
            this->unk_360.x = 14.0f + spB8;
            this->unk_360.y = this->unk_394;
            this->unk_360.z = -3315.0f + spB4;
            this->unk_36C.x = 14.0f;
            this->unk_36C.y = -10.0f;
            this->unk_36C.z = -3315.0f;

            Math_SmoothScaleMaxF(&this->unk_394, 0.0f, 0.05f, 0.5f);
            Math_SmoothScaleMaxF(&this->unk_1D4[1], 170.0f, 0.05f, 1.0f);
            Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, 14.0f, 0.05f, 1.5f);
            Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, 50.0f, 0.05f, 1.0f);
            Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, -3315.0f, 0.05f, 1.5f);
            if (this->unk_1BC[0] == 0) {
                this->unk_35E = 4;
                this->unk_1BC[0] = 0x32;
                SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_0600189C, -10.0f);
                this->actor.posRot.pos.x = 14.0f;
                this->actor.posRot.pos.y = 50.0f;
                this->actor.posRot.pos.z = -3315.0f;
                this->actor.shape.rot.y = 0;
                this->unk_1AE = 0;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_LAST);
            }

            spBF = 1;
            spBE = 1;
            break;

        case 4:
            spBF = 1;
            spBE = 2;
            this->actor.posRot.pos.y = 50.0f;
            this->unk_360.y = 50.0f;
            this->unk_360.x = 14.0f;
            this->unk_360.z = -3265.0f;
            this->unk_36C.x = 14.0f;
            this->unk_36C.y = 70.0f;
            this->unk_36C.z = -3315.0f;
            if (this->unk_1BC[0] == 0) {
                this->unk_35E = 5;
                SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06001AB0, -10.0f);
                this->unk_1AE = 0;
                this->unk_1BC[0] = 0x28;
            }
            break;

        case 5:
            spBF = 1;
            spBE = 3;
            Math_SmoothDownscaleMaxF(&this->unk_360.y, 0.05f, 1.0f);
            Math_SmoothScaleMaxF(&this->unk_360.z, -3145.0f, 0.05f, 2.0f);
            Math_SmoothScaleMaxF(&this->unk_36C.y, 20.0f, 0.05f, 1.0f);
            if (this->unk_1BC[0] == 0) {
                this->unk_1BC[0] = 0xFA;
                this->unk_35E = 6;
            }
            break;

        case 6:
            spBF = 1;
            spBE = 10;
            if (this->unk_1BC[0] == 0x96) {
                Audio_SetBGM(0x21);
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DOOR_WARP1, 14.0f, -33.0f, -3315.0f, 0, 0, 0, -1);
            }

            Math_SmoothDownscaleMaxF(&this->unk_360.y, 0.05f, 1.0f);
            Math_SmoothScaleMaxF(&this->unk_360.z, -3145.0f, 0.05f, 2.0f);
            Math_SmoothScaleMaxF(&this->unk_36C.y, 20.0f, 0.05f, 1.0f);
            if (this->unk_1BC[0] == 0) {
                horse = (EnfHG*)this->actor.attachedB;

                camera->eye = this->unk_360;
                camera->eyeNext = this->unk_360;
                camera->at = this->unk_36C;
                func_800C08AC(globalCtx, this->unk_35C, 0);
                this->unk_35C = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);

                
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_B_HEART, 14.0f, -33.0f, -3115.0f, 0, 0, 0, 0);
                this->actor.attachedB = &horse->actor;

                this->unk_1C6 = 1;
                horse->unk_14E = 1;
                Flags_SetClear(globalCtx, globalCtx->roomCtx.curRoom.num);
                Flags_SetSwitch(globalCtx, 0x22);
            }
            break;
    }

    if (spBE) {
        sp88 = D_809150FC;
        sp7C = D_80915108;
        sp70 = D_80915114;
        sp88.x = this->actor.posRot.pos.x - this->actor.pos4.x;
        sp88.z = this->actor.posRot.pos.z - this->actor.pos4.z;
        if (spBE < 10) {
            if (this->unk_1B4 == 0) {
                if (globalCtx->envCtx.unk_BF == 0) {
                    globalCtx->envCtx.unk_BF = 3;
                    
                    this->unk_1B4 = (s16)Math_Rand_ZeroFloat(5.0f) + 4.0f;
                    globalCtx->envCtx.unk_D6 = 0x28;
                } else {
                    globalCtx->envCtx.unk_BF = 0;
                    
                    this->unk_1B4 = (s16)Math_Rand_ZeroFloat(2.0f) + 2.0f;
                    globalCtx->envCtx.unk_D6 = 0x14;
                }
            } else {
                this->unk_1B4--;
            }

            for (i = 0; i <= 0; i++) {
                sp6E = this->unk_1B2;
                this->unk_1B2++;
                this->unk_1B2 %= 25;
                sp94.x = this->unk_20C[sp6E + 1].x + Math_Rand_CenteredFloat(5.0f);
                sp94.y = this->unk_20C[sp6E + 1].y + Math_Rand_CenteredFloat(5.0f);
                sp94.z = this->unk_20C[sp6E + 1].z + Math_Rand_CenteredFloat(5.0f);
                sp7C.y = 0.0f;

                if (spBE == 3) {

                    sp7C.y = -0.2f;
                    sp7C.x = (14.0f - sp94.x) * 0.002f;
                    sp7C.z = (-3315.0f - sp94.z) * 0.002f;
                    
                    sp70.y = -1.0f;
                    sp70.x = (14.0f - sp94.x) * 0.001f;
                    sp70.z = (-3315.0f - sp94.z) * 0.001f;

                }

                func_80029DBC(globalCtx, &sp94, &sp88, &sp7C, (s16)Math_Rand_ZeroFloat(20.0f) + 0xF, spBE);
                if ((Math_Rand_ZeroOne() < 0.5f) || (spBE == 3)) {
                    func_80029724(globalCtx, &sp94, &sp88, &sp70, 0, (s16)Math_Rand_ZeroFloat(4.0f) + 7, -1, 0xA, 0);
                }
            }
        } else {
            globalCtx->envCtx.unk_BF = 0;
            globalCtx->envCtx.unk_D6 = 0x14;
        }

        this->unk_1B0 = 1;


        for (i = 0; i < 5; i++) {
            if (spBE == 1) {
                func_80910784(D_80914E28, this->unk_1AE);
            } else if (spBE == 2) {
                func_80910784(D_80914D28, this->unk_1AE);
            } else {
                func_80910784(D_80914F28, this->unk_1AE);
            }

            if (this->unk_1AE < 0x100) {
                this->unk_1AE++;
            }
        }
    }

    if (this->unk_35C != 0) {
        if (spBF == 0) {
            Math_SmoothScaleMaxF(&this->unk_360.x, this->unk_390, this->unk_39C, this->unk_378 * this->unk_3C0);
            Math_SmoothScaleMaxF(&this->unk_360.y, this->unk_394, this->unk_3A0, this->unk_37C * this->unk_3C0);
            Math_SmoothScaleMaxF(&this->unk_360.z, this->unk_398, this->unk_3A4, this->unk_380 * this->unk_3C0);
            Math_SmoothScaleMaxF(&this->unk_36C.x, this->unk_3A8, this->unk_3B4, this->unk_384 * this->unk_3C0);
            Math_SmoothScaleMaxF(&this->unk_36C.y, this->unk_3AC, this->unk_3B8, this->unk_388 * this->unk_3C0);
            Math_SmoothScaleMaxF(&this->unk_36C.z, this->unk_3B0, this->unk_3BC, this->unk_38C * this->unk_3C0);
            Math_SmoothScaleMaxF(&this->unk_3C0, 1.0f, 1.0f, this->unk_3C4);
        }
        func_800C04D8(globalCtx, this->unk_35C, &this->unk_36C, &this->unk_360);
    }
}
#else
void func_80912D2C(BossGanondrof* this, GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80912D2C.s")
#endif

#ifdef NON_MATCHING
// Branching
void func_80913C54(BossGanondrof *this, GlobalContext *globalCtx) {
    ColliderBody* collider;
    EnfHG* horse = (EnfHG*)this->actor.attachedB;
    s32 pad;
    u8 dmg;
    u8 sp22;
    u8 flags;
    
    
    if (this->unk_1A0 != 0) {
        this->unk_1A0--;
        this->unk_1C7 = 0;
        this->collider1.base.acFlags &= ~2;
        return;
    }

    
    flags = this->collider1.base.acFlags;
    if (((flags & 2) && ((s8)this->actor.colChkInfo.health > 0)) || (this->unk_1C7 != 0)) {

        collider = this->collider1.body.acHitItem;
        if (flags & 2) {
            this->collider1.base.acFlags &= ~2;
        }


        if (this->unk_1C9 != 0) {
            if ((flags & 2) && (this->actionFunc != func_809122A4) && 
                (collider->toucher.flags & 0x1F8A4)) {
                Audio_PlayActorSound2(&this->actor, NA_SE_PL_WALK_GROUND - SFX_FLAG);
                osSyncPrintf("hit != 0 \n");
                this->unk_1C7 = 0;
            } else if (this->actionFunc != func_80912594) {
                if (this->unk_1C7 == 0) {
                    if (collider->toucher.flags & 0x80) {
                        return;
                    }

                    sp22 = 0;
                    dmg = func_800635D0(collider->toucher.flags);
                    if (dmg == 0) {
                        dmg = 2;
                    } else {
                        sp22 = 1;
                    }

                    if (((s8)this->actor.colChkInfo.health >= 3) || (sp22 != 0)) {
                        this->actor.colChkInfo.health -= dmg;
                    }

                    if ((s8)this->actor.colChkInfo.health <= 0) {
                        func_80912C94(this, globalCtx);
                        func_80032C7C(globalCtx, &this->actor);
                        return;
                    }
                }

                func_809121E0(this, globalCtx);
                if (this->unk_1C7 >= 2) {
                    this->unk_1BC[0] = 0x78;
                }
                this->unk_1A0 = 0xA;
                horse->unk_1DE = 0x14;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_DAMAGE);
                
            } else {
                Audio_PlayActorSound2(&this->actor, NA_SE_PL_WALK_GROUND - SFX_FLAG);
            }
            this->unk_1C7 = 0;
        } else {
            if ((flags & 2) && (collider->toucher.flags & 0x1F8A4)) {
                this->unk_1A0 = 0xA;
                this->actor.colChkInfo.health -= 2;
                horse->unk_1DE = 0x14;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_FANTOM_DAMAGE);
            }
            this->unk_1C7 = 0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganondrof/func_80913C54.s")
#endif

void BossGanondrof_Update(Actor *thisx, GlobalContext *globalCtx) {
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 tmpf1;
    s32 pad;
    s32 pad2;
    s16 i;
    BossGanondrofFakeStruct* refActor;
    BossGanondrof* this = THIS;
    s16 j;

    osSyncPrintf("MOVE START %d\n", this->actor.params);
    this->actor.flags &= ~0x400;
    this->collider1.base.type = 3;
    if (this->unk_1C6 != 0) {
        Actor_Kill(&this->actor);
        return;
    }
    
    this->unk_194++;
    refActor = (BossGanondrofFakeStruct*)this->actor.attachedB;

    osSyncPrintf("MOVE START EEEEEEEEEEEEEEEEEEEEEE%d\n", this->actor.params);

    this->actionFunc(this, globalCtx);

    for (i = 0; i < 5; i++) {
        if (this->unk_1BC[i] != 0) {
            this->unk_1BC[i]--;
        }
    }

    if (this->unk_19C != 0) {
        this->unk_19C--;
    }

    if (this->unk_19E != 0) {
        this->unk_19E--;
    }

    if (this->actionFunc != func_80912D2C) {
        func_80913C54(this, globalCtx);
    }

    osSyncPrintf("MOVE END\n");
    func_80910A34(&this->unk_20C[0], &this->collider1);
    func_80910A34(&this->unk_200, &this->collider2);
    if ((this->unk_1C9 == 0) && (refActor->unk_14D == 0)) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }

    if ((this->actionFunc == func_809122A4) && (this->unk_1BC[0] >= 2)) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    } else if (this->actionFunc == func_80912448) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    } else if (this->actionFunc == func_80912594) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
    }

    this->actor.posRot2.pos = this->unk_20C[0];
    sp70 = Math_Sins(-this->actor.shape.rot.y);
    sp74 = Math_Coss(-this->actor.shape.rot.y);
    sp6C = ((this->actor.velocity.z * sp70) + (sp74 * this->actor.velocity.x)) * 300.0f;
    sp68 = ((-sp70 * this->actor.velocity.x) + (sp74 * this->actor.velocity.z)) * 300.0f;
    Math_SmoothScaleMaxF(&this->unk_3C8, sp6C, 1.0f, 600.0f);
    Math_SmoothScaleMaxF(&this->unk_3CC, sp68, 1.0f, 600.0f);
    if ((this->unk_1C9 != 0) && (this->actionFunc != func_809122A4) && (this->unk_35E == 0)) {
        tmpf1 = (Math_Sins(this->unk_194 * 2268) * -500.0f) - 500.0f;
    } else {
        tmpf1 = 0.0f;
    }

    Math_SmoothScaleMaxF(&this->unk_3D0, tmpf1, 1.0f, 100.0f);
    if (this->unk_1C8 != 0) {
        this->unk_1C8--;
        osSyncPrintf("F 1\n");
        for (j = 0; j < 7; j++) {
            osSyncPrintf("F 15\n");
            EffectSsFhgFlash_Spawn2(globalCtx, &this->actor, &this->actor.posRot.pos, 0x2D, 2);
        }
        osSyncPrintf("F 2\n");
    }

    if (this->actor.params == 1) {
        Lights_InitType0PositionalLight(&this->unk_4D0, this->unk_200.x, this->unk_200.y, this->unk_200.z, 0xFF, 0xFF, 0xFF, 0xC8);
    }
}

s32 func_809142E0(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, Actor *thisx) {
    BossGanondrof* this = THIS;

    switch (limbIndex) {
        case 15:
            if ((this->actionFunc == func_80910DCC) && (this->unk_1A8 != 0)) {
                *dList = D_06004EC0;
            }
            rot->y += this->unk_454[limbIndex];
            rot->z += this->unk_3DC[limbIndex];
            break;
        case 19:
            rot->y += this->unk_3C8 + this->unk_3D0;
            rot->z += this->unk_3CC;
            break;
        case 20:
            rot->y += this->unk_3C8 + this->unk_3D0;
            rot->z += this->unk_3CC;
            break;
        case 21:
            rot->y += this->unk_3C8 + this->unk_3D0;
            rot->z += this->unk_3CC;
            break;
        case 23:
            rot->y += this->unk_3C8 - this->unk_3D0;
            rot->z += this->unk_3CC;
            break;
        case 24:
            rot->y += this->unk_3C8 - this->unk_3D0;
            rot->z += this->unk_3CC;
            break;
        case 25:
            rot->y += this->unk_3C8 - this->unk_3D0;
            rot->z += this->unk_3CC;
            break;
        case 5:
        case 6:
        case 7:
            rot->y += this->unk_3D4;
            rot->z += this->unk_3D8;
            break;
        case 8:
        case 9:
        case 10:
            rot->y += this->unk_3D4;
            rot->z += this->unk_3D8;
            break;
        case 13:
            if (this->unk_35E != 0) {
                *dList = NULL;
            }
        default:
            rot->y += this->unk_454[limbIndex];
            rot->z += this->unk_3DC[limbIndex];
            break;
    }
    return 0;
}

void func_809146DC(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3s *rot, Actor *thisx) {
    BossGanondrof* this = THIS;

    if (limbIndex == 14) {
        Matrix_MultVec3f(&D_80915120, &this->unk_20C[0]);
    } else if (limbIndex == 13) {
        Matrix_MultVec3f(&D_8091512C, &this->unk_200);
    }

    if (((this->unk_1C9 != 0) || (this->actionFunc == func_80910DCC)) && (limbIndex < 26)) {
        Matrix_MultVec3f(&D_80915120, &this->unk_20C[limbIndex]);
    }
}

Gfx *func_809147A0(GraphicsContext *gfxCtx) {
    Gfx* displayListHead;
    Gfx* displayList;

    displayList = displayListHead = (Gfx*)Graph_Alloc(gfxCtx, 4 * sizeof(Gfx));

    gDPPipeSync(displayListHead++);
    gDPSetRenderMode(displayListHead++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2);
    if (0){};
    gSPClearGeometryMode(displayListHead++, G_CULL_BACK);
    gSPEndDisplayList(displayListHead++);

    return displayList;
}

Gfx *func_80914818(GraphicsContext *gfxCtx) {
    Gfx* displayListHead;
    Gfx* displayList;

    displayListHead = displayList = (Gfx*)Graph_Alloc(gfxCtx, 1 * sizeof(Gfx));
    gSPEndDisplayList(displayListHead++);
    return displayList;
}

void BossGanondrof_Draw(Actor* thisx, GlobalContext *globalCtx) {
    BossGanondrof *this = THIS;
    s32 pad;
    EnfHG* horse;

    GraphicsContext *gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];
    

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_ganondrof.c", 0xE84);


    osSyncPrintf("MOVE P = %x\n", this->actor.update);
    osSyncPrintf("STOP TIMER = %d ==============\n", this->actor.freezeTimer);

    horse = (EnfHG*)this->actor.attachedB;
    if (this->unk_1C9 == 0) {
        Matrix_RotateY((horse->unk_1E0 * M_PI) / 32768.0f, 1);
    }

    osSyncPrintf("YP %f\n", this->actor.posRot.pos.y);
    func_80093D18(globalCtx->state.gfxCtx);

    if ((this->unk_1A0 & 4) != 0) {
        gfxCtx->polyOpa.p = Gfx_SetFog(gfxCtx->polyOpa.p, 0xFF, 0x32, 0, 0, 0x384, 0x44B);
    } else {
        gfxCtx->polyOpa.p = Gfx_SetFog(gfxCtx->polyOpa.p, horse->unk_1E8, horse->unk_1EC, horse->unk_1F0, 0, (s32)horse->unk_1F4 + 0x3E3, (s32)horse->unk_1F8 + 0x3E8);
    }

    osSyncPrintf("DRAW 11\n");
    osSyncPrintf("EYE_COL %d\n", (s16)this->unk_1D4[0]);

    gDPSetEnvColor(gfxCtx->polyOpa.p++, (s16)this->unk_1D4[0], 
        (s16)this->unk_1D4[0], (s16)this->unk_1D4[0], (s16)this->unk_1D4[3]);

    if (this->unk_1B0 != 0) {
        gSPSegment(gfxCtx->polyOpa.p++, 0x08, func_809147A0(globalCtx->state.gfxCtx));
    } else {
        gSPSegment(gfxCtx->polyOpa.p++, 0x08, func_80914818(globalCtx->state.gfxCtx));
    }

    SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_809142E0, func_809146DC, &this->actor);
    osSyncPrintf("DRAW 22\n");

    gfxCtx->polyOpa.p = func_800BC8A0(globalCtx, gfxCtx->polyOpa.p);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_ganondrof.c", 0xEE6);

    osSyncPrintf("DRAW END %d\n", this->actor.params);
}
