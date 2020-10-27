#include "z_bg_spot11_oasis.h"

#define FLAGS 0x00000010

#define THIS ((BgSpot11Oasis*)thisx)

void BgSpot11Oasis_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot11Oasis_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot11Oasis_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_808B2970(BgSpot11Oasis* this);
void func_808B2980(BgSpot11Oasis* this, GlobalContext* globalCtx);
void func_808B29E0(BgSpot11Oasis* this);
void func_808B29F0(BgSpot11Oasis* this, GlobalContext* globalCtx);
void func_808B2AA8(BgSpot11Oasis* this);
void func_808B2AB8(BgSpot11Oasis* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot11_Oasis_InitVars = {
    ACTOR_BG_SPOT11_OASIS,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT11_OBJ,
    sizeof(BgSpot11Oasis),
    (ActorFunc)BgSpot11Oasis_Init,
    (ActorFunc)Actor_Noop,
    (ActorFunc)BgSpot11Oasis_Update,
    NULL,
};

s16 D_808B2E10[][2] = {
    { 1260, 2040 }, { 1259, 1947 }, { 1135, 1860 }, { 1087, 1912 }, { 1173, 2044 },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F(scale, 1, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 3000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

Vec3f D_808B2E34[] = {
    { 0.0f, -100.0f, 0.0f },   { 100.0f, -80.0f, -50.0f }, { -50.0f, -80.0f, -100.0f },
    { -75.0f, -90.0f, 90.0f }, { 30.0f, -100.0f, 40.0f },
};

extern Gfx D_06000870[];

void func_808B27F0(GlobalContext* globalCtx, s16 arg1) {
    WaterBox* waterBox = &globalCtx->colCtx.stat.colHeader->waterBoxes[0];

    waterBox->unk_02 = arg1;
}

s32 func_808B280C(GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Vec3f sp58;
    Vec3f sp4C;
    Vec3f sp40;
    s32 i;

    sp58.x = D_808B2E10[0][0];
    sp58.z = D_808B2E10[0][1];
    sp58.y = 0.0f;

    sp4C.y = 0.0f;
    sp40.y = 0.0f;

    for (i = 1; i < ARRAY_COUNT(D_808B2E10) - 1; i++) {
        sp4C.x = D_808B2E10[i][0];
        sp4C.z = D_808B2E10[i][1];
        sp40.x = D_808B2E10[i + 1][0];
        sp40.z = D_808B2E10[i + 1][1];
        if (Math3D_TriChkPointParaYSlopedY(&sp58, &sp4C, &sp40, player->actor.posRot.pos.z,
                                           player->actor.posRot.pos.x)) {
            return 1;
        }
    }
    return 0;
}

void BgSpot11Oasis_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot11Oasis* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    func_808B2970(this);
    this->actor.posRot.pos.y = -100.0f;
    func_808B27F0(globalCtx, -100);
}

void func_808B2970(BgSpot11Oasis* this) {
    this->actionFunc = func_808B2980;
}

void func_808B2980(BgSpot11Oasis* this, GlobalContext* globalCtx) {
    if (Flags_GetEnv(globalCtx, 5) && func_808B280C(globalCtx)) {
        func_800800F8(globalCtx, 0x1036, -99, &this->actor, 0);
        func_808B29E0(this);
    }
}

void func_808B29E0(BgSpot11Oasis* this) {
    this->actionFunc = func_808B29F0;
}

void func_808B29F0(BgSpot11Oasis* this, GlobalContext* globalCtx) {
    if (Math_ApproxF(&this->actor.posRot.pos.y, 0.0f, 0.7f)) {
        func_808B2AA8(this);
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ELF, this->actor.posRot.pos.x,
                    this->actor.posRot.pos.y + 40.0f, this->actor.posRot.pos.z, 0, 0, 0, 4);
        func_80078884(NA_SE_SY_CORRECT_CHIME);
    }
    func_808B27F0(globalCtx, this->actor.posRot.pos.y);
}

void func_808B2AA8(BgSpot11Oasis* this) {
    this->actionFunc = func_808B2AB8;
}

void func_808B2AB8(BgSpot11Oasis* this, GlobalContext* globalCtx) {
}

void BgSpot11Oasis_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot11Oasis* this = THIS;
    s32 pad;
    u32 gameplayFrames;
    Vec3f sp30;

    this->actionFunc(this, globalCtx);
    if (this->actionFunc == func_808B2980) {
        this->actor.draw = NULL;
        return;
    }
    this->actor.draw = BgSpot11Oasis_Draw;
    if (this->unk_150 && (this->actor.projectedPos.z < 400.0f) && (this->actor.projectedPos.z > -40.0f)) {
        gameplayFrames = globalCtx->gameplayFrames;
        if (gameplayFrames & 4) {
            Math_Vec3f_Sum(&this->actor.posRot.pos, &D_808B2E34[this->unk_151], &sp30);
            EffectSsBubble_Spawn(globalCtx, &sp30, 0.0f, 15.0f, 50.0f, (Math_Rand_ZeroOne() * 0.12f) + 0.02f);
            if (Math_Rand_ZeroOne() < 0.3f) {
                this->unk_151 = Math_Rand_ZeroOne() * 4.9f;
            }
        }
    } else {
        this->unk_150 = 1;
    }
}

void BgSpot11Oasis_Draw(Actor* thisx, GlobalContext* globalCtx) {
    u32 gameplayFrames = globalCtx->gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot11_oasis.c", 327);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot11_oasis.c", 331),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - (gameplayFrames % 128), (gameplayFrames * 1) % 128,
                                32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128, 32, 32));
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000870);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot11_oasis.c", 346);
}
