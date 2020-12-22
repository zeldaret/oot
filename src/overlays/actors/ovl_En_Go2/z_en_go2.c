#include "z_en_go2.h"
#include "overlays/actors/ovl_En_Bom/z_en_bom.h"

#define FLAGS 0x00000039

#define THIS ((EnGo2*)thisx)

// FLAGS
//
//
//
// gSaveContext.eventChkInf[2] & 0x8 - DC entrance boulder blown up as child

// InfTable

// gSaveContext.infTable[11] & 0x10
// gSaveContext.infTable[14] & 0x1 - Talked to DMT Goron at DC entrance (Before DC is opened as child)
// gSaveContext.infTable[14] & 0x8 - Talked to GC Goron in bottom level stairwell
// gSaveContext.infTable[14] & 0x40 - Talked to GC Goron at LW entrance (Before LW shortcut is opened)
// gSaveContext.infTable[14] & 0x800 - Talked to DMT Goron at Bomb Flower with goron bracelet
// gSaveContext.infTable[15] & 0x1 - Talked to Goron at GC Entrance (Before goron ruby is obtained)
// gSaveContext.infTable[15] & 0x10 - Talked to Goron at GC Island (Before goron ruby is obtained)
// gSaveContext.infTable[15] & 0x100 - (not on cloud modding) Talked to GC Goron outside Darunias door (after opening door, before getting goron bracelet) 
// gSaveContext.infTable[16] & 0x200 - Obtained Fire Tunic from Goron Link
// gSaveContext.infTable[16] & 0x400 - (not on cloud modding)
// gSaveContext.infTable[16] & 0x800 - Spoke to Goron Link About Volvagia
// gSaveContext.infTable[16] & 0x1000 - Stopped Goron Link's Rolling
// gSaveContext.infTable[16] & 0x2000 - EnGo Exclusive
// gSaveContext.infTable[16] & 0x4000 - Spoke to Goron Link
// gSaveContext.infTable[16] & 0x8000 - (not on cloud modding)

// gSaveContext.infTable[17] & 0x4000 - Bomb bag upgrade obtained from rolling Goron

// EnGo
// this->actor.params & 0xF
//      - pathIndex
// this->actor.params & 0xF0
//      - Goron

// EnGo2
// (this->actor.params & 0x3E0) >> 5
// (this->actor.params & 0xFC00) >> 0xA - Gorons in Fire Temple
// (s16) this->actor.params & 0x1F
//
// Gorons only move when this->unk_194.unk_00 == 0

void EnGo2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGo2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGo2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGo2_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnGo2_AddDust(EnGo2* this, Vec3f* pos, Vec3f* velocity, Vec3f* accel, u8 initialTimer, f32 scale, f32 scaleStep);
void EnGo2_UpdateDust(EnGo2* this);
void EnGo2_DrawDust(EnGo2* this, GlobalContext* globalCtx);
s32 EnGo2_SpawnDust(EnGo2* this, u8 initialTimer, f32 scale, f32 scaleStep, s32 numDustEffects, f32 radius, f32 yAccel);
void EnGo2_GetDustData(EnGo2* this, s32 index2);

void EnGo2_GetItem(EnGo2* this, GlobalContext* globalCtx, s32 getItemID);
s32 EnGo2_GetDialogState(EnGo2* this, GlobalContext* globalCtx);

// EnGo2_getTextIdGoronFireGeneric (too identical)
u16 EnGo2_GoronFireGenericGetTextId(EnGo2* this);

u16 EnGo2_getTextIdGoronCityRollingBig(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getStateGoronCityRollingBig(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronDmtBombFlower(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getStateGoronDmtBombFlower(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronDmtRollingSmall(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getStateGoronDmtRollingSmall(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronDmtDcEntrance(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getStateGoronDmtDcEntrance(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronCityEntrance(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getStateGoronCityEntrance(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronCityIsland(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getStateGoronCityIsland(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronCityLowestFloor(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getStateGoronCityLowestFloor(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronCityLink(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getStateGoronCityLink(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronDmtBiggoron(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getStateGoronDmtBiggoron(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronFireGeneric(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getStateGoronFireGeneric(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronCityStairwell(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getStateGoronCityStairwell(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronMarketBazaar(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getStateGoronMarketBazaar(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronCityLostWoods(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getStateGoronCityLostWoods(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronDmtFairyHint(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getStateGoronDmtFairyHint(GlobalContext* globalCtx, EnGo2* this);

u16 EnGo2_getTextId(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getState(GlobalContext* globalCtx, EnGo2* this);

s32 func_80A44790(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_SetColliderDim(EnGo2* this);
void EnGo2_SetShape(EnGo2* this);

void EnGo2_CheckCollision(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_SwapInitialFrameAnimFrameCount(EnGo2* this);

s32 func_80A44AB0(EnGo2* this, GlobalContext* globalCtx);
s32 EnGo2_UpdateWaypoint(EnGo2* this, GlobalContext* globalCtx);
s32 EnGo2_Orient(EnGo2* this, GlobalContext* globalCtx);

s32 func_80A44D84(EnGo2* this);
s32 EnGo2_IsWakingUp(EnGo2* this);

s32 EnGo2_IsRollingOnGround(EnGo2* this, s16 arg1, f32 arg2, s16 arg3);

void EnGo2_BiggoronSetTextId(EnGo2* this, GlobalContext* globalCtx, Player* player);

void func_80A45288(EnGo2* this, GlobalContext* globalCtx);
void func_80A45360(EnGo2* this, f32* alpha);
void EnGo2_RollForward(EnGo2* this);
void func_80A454CC(EnGo2* this);
f32 EnGo2_GetTargetXZSpeed(EnGo2* this);
s32 EnGo2_IsCameraModified(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_DefaultWakingUp(EnGo2* this);
void EnGo2_WakingUp(EnGo2* this);
void EnGo2_BiggoronWakingUp(EnGo2* this);
void EnGo2_SelectGoronWakingUp(EnGo2* this);
void EnGo2_EyeMouthTexState(EnGo2* this);
void EnGo2_SitDownAnimation(EnGo2* this);
void EnGo2_RollingAnimation(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_WakeUp(EnGo2* this, GlobalContext* globalCtx);

void EnGo2_GetItemAnimation(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_BeginRolling(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_StopRolling(EnGo2* this, GlobalContext* globalCtx);

s32 EnGo2_IsFreeingGoronInFire(EnGo2* this, GlobalContext* globalCtx);
s32 EnGo2_IsGoronDmtBombFlower(EnGo2* this);
s32 EnGo2_IsGoronRollingBig(EnGo2* this, GlobalContext* globalCtx);
s32 EnGo2_IsGoronFireGeneric(EnGo2* this);
s32 EnGo2_IsGoronLinkReversing(EnGo2* this);
s32 EnGo2_IsRolling(EnGo2* this);

void EnGo2_GoronLinkAnimation(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_GoronFireCamera(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_GoronFireClearCamera(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_BiggoronAnimation(EnGo2* this);

void EnGo2_CurledUp(EnGo2* this, GlobalContext* globalCtx);
void func_80A46B40(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_GoronDmtBombFlowerAnimation(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_GoronRollingBigContinueRolling(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_ContinueRolling(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_SlowRolling(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_GroundRolling(EnGo2* this, GlobalContext* globalCtx);

void EnGo2_ReverseRolling(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_InitGetItem(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_SetGetItem(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_BiggoronEyedrops(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_GoronLinkStopRolling(EnGo2* this, GlobalContext* globalCtx);
void EnGo2_GoronFireGenericAction(EnGo2* this, GlobalContext* globalCtx);

s32 EnGo2_DrawCurledUp(EnGo2* this, GlobalContext* globalCtx);
s32 EnGo2_DrawRolling(EnGo2* this, GlobalContext* globalCtx);
s32 EnGo2_OverrideLimbDraw(GlobalContext* globalCtx, s32 limb, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
void EnGo2_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);

extern AnimationHeader D_06000750;
extern AnimationHeader D_06000D5C;
extern AnimationHeader D_0600161C;
extern AnimationHeader D_06001A00;
extern AnimationHeader D_060021D0;
extern AnimationHeader D_060029A8;
extern AnimationHeader D_06002D80;
extern AnimationHeader D_06003768;
extern AnimationHeader D_060038E4;
extern AnimationHeader D_06004930;
extern AnimationHeader D_06010590;
extern Gfx* D_0600BD80;
extern Gfx* D_0600C140;
extern Gfx* D_0600CE80;
extern Gfx* D_0600D280;
extern Gfx* D_0600D680;
extern Gfx* D_0600DA80;
extern Gfx* D_0600DE80;
extern Gfx* D_0600E680;
extern Gfx* D_0600FD40;
extern Gfx* D_0600FD50;


extern FlexSkeletonHeader D_0600FEF0;

static Gfx* sDLists[] = {
    0x040539B0, 0x040535B0, 0x040531B0, 0x04052DB0, 0x040529B0, 0x040525B0, 0x040521B0, 0x04051DB0
};

static Vec3f sPos = { 0.0f, 0.0f, 0.0f };
static Vec3f sVelocity = { 0.0f, 0.0f, 0.0f };
static Vec3f sAccel = { 0.0f, 0.3f, 0.0f };

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000008, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 40, 65, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = {
    0x00, 0x0000, 0x0000, 0x0000, 0xFF,
};

const ActorInit En_Go2_InitVars = {
    ACTOR_EN_GO2,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_OF1D_MAP,
    sizeof(EnGo2),
    (ActorFunc)EnGo2_Init,
    (ActorFunc)EnGo2_Destroy,
    (ActorFunc)EnGo2_Update,
    (ActorFunc)EnGo2_Draw,
};

static EnGo2DataStruct1 D_80A4816C[14] = { { 0, 0, 0, 68, 148 }, { 0, 0, 0, 24, 52 }, { 0, 320, 380, 400, 120 },
                                           { 0, 0, 0, 30, 68 },  { 0, 0, 0, 46, 90 }, { 0, 0, 0, 30, 68 },
                                           { 0, 0, 0, 30, 68 },  { 0, 0, 0, 30, 68 }, { 0, 0, 0, 30, 68 },
                                           { 0, 0, 0, 30, 68 },  { 0, 0, 0, 30, 68 }, { 0, 0, 0, 30, 68 },
                                           { 0, 0, 0, 30, 68 },  { 0, 0, 0, 30, 68 } };

static EnGo2DataStruct2 D_80A481F8[14] = { { 30.0f, 0.026f, 6, 60.0f }, { 24.0f, 0.008f, 6, 30.0f },
                                           { 28.0f, 0.16f, 5, 380.0f }, { 28.0f, 0.01f, 7, 40.0f },
                                           { 30.0f, 0.015f, 6, 30.0f }, { 28.0f, 0.01f, 6, 30.0f },
                                           { 28.0f, 0.01f, 6, 30.0f },  { 28.0f, 0.01f, 6, 30.0f },
                                           { 28.0f, 0.01f, 6, 30.0f },  { 28.0f, 0.01f, 6, 30.0f },
                                           { 28.0f, 0.01f, 6, 30.0f },  { 28.0f, 0.01f, 6, 30.0f },
                                           { 28.0f, 0.01f, 6, 30.0f },  { 28.0f, 0.01f, 6, 30.0f } };

static f32 D_80A482D8[14][2] = { { 80.0f, 80.0f }, { -10.0f, -10.0f }, { 800.0f, 800.0f }, { 0.0f, 0.0f },
                                 { 20.0f, 40.0f }, { 20.0f, 20.0f },   { 20.0f, 20.0f },   { 20.0f, 20.0f },
                                 { 20.0f, 20.0f }, { 20.0f, 20.0f },   { 20.0f, 20.0f },   { 20.0f, 20.0f },
                                 { 20.0f, 20.0f }, { 20.0f, 20.0f } };

static struct_80034EC0_Entry sAnimations[] = {
    { &D_06004930, 0.0f, 0.0f, -1.0f, 0x00, 0.0f },  { &D_06004930, 0.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { &D_060029A8, 1.0f, 0.0f, -1.0f, 0x00, -8.0f }, { &D_06010590, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { &D_06003768, 1.0f, 0.0f, -1.0f, 0x00, -8.0f }, { &D_060038E4, 1.0f, 0.0f, -1.0f, 0x02, -8.0f },
    { &D_06002D80, 1.0f, 0.0f, -1.0f, 0x02, -8.0f }, { &D_0600161C, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { &D_06001A00, 1.0f, 0.0f, -1.0f, 0x00, -8.0f }, { &D_060021D0, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { &D_06004930, 0.0f, 0.0f, -1.0f, 0x01, -8.0f }, { &D_06000750, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { &D_06000D5C, 1.0f, 0.0f, -1.0f, 0x00, -8.0f }
};

static EnGo2DustEffectData sDustEffectData[2][4] = { { { 12, 0.2f, 0.2f, 1, 18.0f, 0.0f },
                                                       { 12, 0.1f, 0.2f, 12, 26.0f, 0.0f },
                                                       { 12, 0.1f, 0.3f, 4, 10.0f, 0.0f },
                                                       { 12, 0.2f, 0.2f, 1, 18.0f, 0.0f } },
                                                     { { 12, 0.5f, 0.4f, 3, 42.0f, 0.0f },
                                                       { 12, 0.5f, 0.4f, 3, 42.0f, 0.0f },
                                                       { 12, 0.5f, 0.4f, 3, 42.0f, 0.0f },
                                                       { 12, 0.5f, 0.4f, 3, 42.0f, 0.0f } } };

static s32 unusedPadding[] = { 0, 0, 0 };

void EnGo2_AddDust(EnGo2* this, Vec3f* pos, Vec3f* velocity, Vec3f* accel, u8 initialTimer, f32 scale, f32 scaleStep) {
    EnGoEffect* dustEffect = this->dustEffects;
    s16 i;
    s16 timer;

    for (i = 0; i < ARRAY_COUNT(this->dustEffects); i++, dustEffect++) {
        if (dustEffect->type != 1) {
            dustEffect->scale = scale;
            dustEffect->scaleStep = scaleStep;
            if (1) {}
            timer = initialTimer;
            dustEffect->timer = timer;
            dustEffect->type = 1;
            dustEffect->initialTimer = initialTimer;
            dustEffect->pos = *pos;
            dustEffect->accel = *accel;
            dustEffect->velocity = *velocity;
            return;
        }
    }
}

void EnGo2_UpdateDust(EnGo2* this) {
    EnGoEffect* dustEffect = this->dustEffects;
    f32 randomNumber;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(this->dustEffects); i++, dustEffect++) {
        if (dustEffect->type) {
            dustEffect->timer--;

            if (dustEffect->timer == 0) {
                dustEffect->type = 0;
            }

            dustEffect->accel.x = (Math_Rand_ZeroOne() * 0.4f) - 0.2f;
            randomNumber = Math_Rand_ZeroOne() * 0.4f;
            dustEffect->accel.z = randomNumber - 0.2f;
            dustEffect->pos.x += dustEffect->velocity.x;
            dustEffect->pos.y += dustEffect->velocity.y;
            dustEffect->pos.z += dustEffect->velocity.z;
            dustEffect->velocity.x += dustEffect->accel.x;
            dustEffect->velocity.y += dustEffect->accel.y;
            dustEffect->velocity.z += randomNumber - 0.2f;
            dustEffect->scale += dustEffect->scaleStep;
        }
    }
}

void EnGo2_DrawDust(EnGo2* this, GlobalContext* globalCtx) {
    EnGoEffect* dustEffect = this->dustEffects;
    s16 alpha;
    s16 firstDone;
    s16 index;
    s16 i;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_go2_eff.c", 111);

    firstDone = false;
    func_80093D84(globalCtx->state.gfxCtx);
    if (1) {}

    for (i = 0; i < ARRAY_COUNT(this->dustEffects); i++, dustEffect++) {
        if (dustEffect->type) {
            if (!firstDone) {
                POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 0);
                gSPDisplayList(POLY_XLU_DISP++, &D_0600FD40);
                gDPSetEnvColor(POLY_XLU_DISP++, 100, 60, 20, 0);
                firstDone = true;
            }

            alpha = dustEffect->timer * (255.0f / dustEffect->initialTimer);
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 170, 130, 90, alpha);
            gDPPipeSync(POLY_XLU_DISP++);
            Matrix_Translate(dustEffect->pos.x, dustEffect->pos.y, dustEffect->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(dustEffect->scale, dustEffect->scale, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_go2_eff.c", 137),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            index = dustEffect->timer * (8.0f / dustEffect->initialTimer);
            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sDLists[index]));
            gSPDisplayList(POLY_XLU_DISP++, &D_0600FD50);
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_go2_eff.c", 151);
}

s32 EnGo2_SpawnDust(EnGo2* this, u8 initialTimer, f32 scale, f32 scaleStep, s32 numDustEffects, f32 radius,
                    f32 yAccel) {
    Vec3f pos;
    Vec3f velocity;
    Vec3f accel;
    s32 i;
    s16 angle;

    pos = sPos;
    velocity = sVelocity;
    accel = sAccel;
    pos = this->actor.posRot.pos;
    pos.y = this->actor.groundY;
    angle = (Math_Rand_ZeroOne() - 0.5f) * 0x10000;

    i = numDustEffects;
    while (i >= 0) {
        accel.y += Math_Rand_ZeroOne() * yAccel;
        pos.x = (Math_Sins(angle) * radius) + this->actor.posRot.pos.x;
        pos.z = (Math_Coss(angle) * radius) + this->actor.posRot.pos.z;
        EnGo2_AddDust(this, &pos, &velocity, &accel, initialTimer, scale, scaleStep);
        angle += (s16)(0x10000 / numDustEffects);
        i--;
    }

    return 0;
}

void EnGo2_GetItem(EnGo2* this, GlobalContext* globalCtx, s32 getItemID) {
    this->getItemID = getItemID;
    func_8002F434(&this->actor, globalCtx, getItemID, this->actor.xzDistFromLink + 1.0f,
                  fabsf(this->actor.yDistFromLink) + 1.0f);
}

s32 EnGo2_GetDialogState(EnGo2* this, GlobalContext* globalCtx) {
    s16 dialogState;

    dialogState = func_8010BDBC(&globalCtx->msgCtx);

    if ((this->dialogState == 10) || (this->dialogState == 5) || (this->dialogState == 2) || (this->dialogState == 1)) {
        if (dialogState != this->dialogState) {
            this->unk_20C++;
        }
    }

    this->dialogState = dialogState;
    return dialogState;
}

u16 EnGo2_GoronFireGenericGetTextId(EnGo2* this) {
    switch ((this->actor.params & 0xFC00) >> 0xA) {
        case 3:
            return 0x3069;
        case 5:
            return 0x306A;
        case 4:
            return 0x306B;
        case 2:
            return 0x306C;
        case 10:
            return 0x306D;
        case 8:
            return 0x306E;
        case 11:
            return 0x306F;
        case 1:
            return 0x3070;
        default:
             return 0x3052;
    }
}

u16 EnGo2_getTextIdGoronCityRollingBig(GlobalContext* globalCtx, EnGo2* this) {
    if (gSaveContext.infTable[17] & 0x4000) {
        return 0x3013;
    } else if (CUR_CAPACITY(UPG_BOMB_BAG) >= 20 && this->waypoint > 7 && this->waypoint < 12) {
        return 0x3012;
    } else {
        return 0x3011;
    }
}

u16 EnGo2_getStateGoronCityRollingBig(GlobalContext* globalCtx, EnGo2* this) {
    s32 bombBagUpgrade;

    switch (func_8010BDBC(&globalCtx->msgCtx)) {
        case 2:
            return 2;
        case 5:
            if (func_80106BC8(globalCtx)) {
                if (this->actor.textId == 0x3012) {
                    this->actionFunc = EnGo2_InitGetItem;
                    bombBagUpgrade = CUR_CAPACITY(UPG_BOMB_BAG) == 30 ? GI_BOMB_BAG_40 : GI_BOMB_BAG_30;
                    EnGo2_GetItem(this, globalCtx, bombBagUpgrade);
                    func_80106CCC(globalCtx);
                    gSaveContext.infTable[17] |= 0x4000;
                    return 2;
                } else {
                    return 2;
                }
            }
        default:
            return 1;
    }
}

u16 EnGo2_getTextIdGoronDmtBombFlower(GlobalContext* globalCtx, EnGo2* this) {
    return CHECK_QUEST_ITEM(QUEST_GORON_RUBY) ? 0x3027 : 0x300A;
}

// DMT Goron by Bomb Flower Choice
u16 EnGo2_getStateGoronDmtBombFlower(GlobalContext* globalCtx, EnGo2* this) {
    switch (func_8010BDBC(&globalCtx->msgCtx)) {
        case 2:
            if ((this->actor.textId == 0x300B) && (gSaveContext.infTable[14] & 0x800) == 0) {
                gSaveContext.infTable[14] |= 0x800;
                return 2;
            } else {
                return 0;
            }
        case 4:
            if (func_80106BC8(globalCtx)) {
                // Ask question to DMT Goron by bomb flower
                if (this->actor.textId == 0x300A) {
                    if (globalCtx->msgCtx.choiceIndex == 0) {
                        this->actor.textId = CUR_UPG_VALUE(UPG_STRENGTH) ? 0x300B : 0x300C;
                    } else {
                        this->actor.textId = 0x300D;
                    }
                    func_8010B720(globalCtx, this->actor.textId);
                }
                return 1;
            }
        default:
            return 1;
    }
}

u16 EnGo2_getTextIdGoronDmtRollingSmall(GlobalContext* globalCtx, EnGo2* this) {
    if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return 0x3027;
    } else {
        return (gSaveContext.eventChkInf[2] & 0x8) ? 0x3026 : 0x3009;
    }
}

u16 EnGo2_getStateGoronDmtRollingSmall(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        return 0;
    } else {
        return 1;
    }
}

u16 EnGo2_getTextIdGoronDmtDcEntrance(GlobalContext* globalCtx, EnGo2* this) {
    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && LINK_IS_ADULT) {
        return 0x3043;
    } else if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return 0x3027;
    } else {
        return gSaveContext.eventChkInf[2] & 0x8 ? 0x3021 : gSaveContext.infTable[14] & 0x1 ? 0x302A : 0x3008;
    }
}

u16 EnGo2_getStateGoronDmtDcEntrance(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        if (this->actor.textId == 0x3008) {
            gSaveContext.infTable[14] |= 0x1;
        }
        return 0;
    } else {
        return 1;
    }
}

u16 EnGo2_getTextIdGoronCityEntrance(GlobalContext* globalCtx, EnGo2* this) {
    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && LINK_IS_ADULT) {
        return 0x3043;
    } else if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return 0x3027;
    } else {
        return gSaveContext.infTable[15] & 0x1 ? 0x3015 : 0x3014;
    }
}

u16 EnGo2_getStateGoronCityEntrance(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        if (this->actor.textId == 0x3014) {
            gSaveContext.infTable[15] |= 0x1;
        }
        return 0;
    } else {
        return 1;
    }
}

u16 EnGo2_getTextIdGoronCityIsland(GlobalContext* globalCtx, EnGo2* this) {
    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && LINK_IS_ADULT) {
        return 0x3043;
    } else if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return 0x3067;
    } else {
        return gSaveContext.infTable[15] & 0x10 ? 0x3017 : 0x3016;
    }
}

u16 EnGo2_getStateGoronCityIsland(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        if (this->actor.textId == 0x3016) {
            gSaveContext.infTable[15] |= 0x10;
        }
        return 0;
    } else {
        return 1;
    }
}

u16 EnGo2_getTextIdGoronCityLowestFloor(GlobalContext* globalCtx, EnGo2* this) {
    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && LINK_IS_ADULT) {
        return 0x3043;
    } else if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        return 0x3027;
    } else {
        return CUR_UPG_VALUE(UPG_STRENGTH)
                   ? 0x302C
                   : Flags_GetSwitch(globalCtx, 0x1B) == 0 ? 0x3017
                                                           : gSaveContext.infTable[15] & 0x100 ? 0x3019 : 0x3018;
    }
}

u16 EnGo2_getStateGoronCityLowestFloor(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        if (this->actor.textId == 0x3018) {
            gSaveContext.infTable[15] |= 0x100;
        }
        return 0;
    } else {
        return 1;
    }
}

u16 EnGo2_getTextIdGoronCityLink(GlobalContext* globalCtx, EnGo2* this) {
    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE)) {
        return gSaveContext.infTable[16] & 0x8000 ? 0x3042 : 0x3041;
    } else if (CHECK_OWNED_EQUIP(EQUIP_TUNIC, 1)) {
        return gSaveContext.infTable[16] & 0x4000 ? 0x3038 : 0x3037;
    } else if (gSaveContext.infTable[16] & 0x1000) {
        this->unk_20C = 0;
        this->dialogState = 0;
        return gSaveContext.infTable[16] & 0x400 ? 0x3033 : 0x3032;
    } else {
        return 0x3030;
    }
}

u16 EnGo2_getStateGoronCityLink(GlobalContext* globalCtx, EnGo2* this) {
    switch (EnGo2_GetDialogState(this, globalCtx)) {
        case 2:
            switch (this->actor.textId) {
                case 0x3036:
                    EnGo2_GetItem(this, globalCtx, GI_TUNIC_GORON);
                    this->actionFunc = EnGo2_InitGetItem;
                    return 2;
                case 0x3037:
                    gSaveContext.infTable[16] |= 0x4000;
                default:
                    return 0;
            }
        case 4:
            if (func_80106BC8(globalCtx)) {
                if (this->actor.textId == 0x3034) {
                    if (globalCtx->msgCtx.choiceIndex == 0) {
                        this->actor.textId = gSaveContext.infTable[16] & 0x800 ? 0x3033 : 0x3035;
                        if (this->actor.textId == 0x3035) {
                            func_800F8D04(0x39EB);
                        }
                    } else {
                        this->actor.textId = gSaveContext.infTable[16] & 0x800 ? 0x3036 : 0x3033;
                        if (this->actor.textId == 0x3036) {
                            func_800F8D04(0x39EB);
                        }
                    }
                    func_8010B720(globalCtx, this->actor.textId);
                    this->unk_20C = 0;
                }
            } else {
                break;
            }
            return 1;
        case 5:
            if (func_80106BC8(globalCtx)) {
                switch (this->actor.textId) {
                    case 0x3035:
                        gSaveContext.infTable[16] |= 0x800;
                    case 0x3032:
                    case 0x3033:
                        this->actor.textId = 0x3034;
                        func_8010B720(globalCtx, this->actor.textId);
                        return 1;
                    default:
                        return 2;
                }
            }
    }
    return 1;
}

u16 EnGo2_getTextIdGoronDmtBiggoron(GlobalContext* globalCtx, EnGo2* this) {
    Player* player = PLAYER;

    if (gSaveContext.bgsFlag) {
        player->exchangeItemId = EXCH_ITEM_CLAIM_CHECK;
        return 0x305E;
    } else if (INV_CONTENT(ITEM_POCKET_EGG) >= ITEM_CLAIM_CHECK) {
        player->exchangeItemId = EXCH_ITEM_CLAIM_CHECK;
        return 0x305E;
    } else if (INV_CONTENT(ITEM_POCKET_EGG) >= ITEM_PRESCRIPTION) {
        player->exchangeItemId = EXCH_ITEM_EYEDROPS;
        return 0x3058;
    } else {
        player->exchangeItemId = EXCH_ITEM_SWORD_BROKEN;
        return 0x3053;
    }
}

u16 EnGo2_getStateGoronDmtBiggoron(GlobalContext* globalCtx, EnGo2* this) {
    s32 unusedPad;
    u8 dialogState = this->dialogState;

    switch (EnGo2_GetDialogState(this, globalCtx)) {
        case 6:
            if (this->actor.textId == 0x305E) {
                if (gSaveContext.bgsFlag == 0) {
                    EnGo2_GetItem(this, globalCtx, GI_SWORD_BGS);
                    this->actionFunc = EnGo2_InitGetItem;
                    return 2;
                } else {
                    return 0;
                }
            } else {
                return 0;
            }
        case 3:
            switch (this->actor.textId) {
                case 0x305E:
                    if (func_8002F368(globalCtx) != EXCH_ITEM_CLAIM_CHECK) {
                        break;
                    }
                case 0x3059:
                    if (dialogState == 0) {
                        func_800F4524(&D_801333D4, NA_SE_EN_GOLON_WAKE_UP, 60);
                    }
                case 0x3054:
                    if (dialogState == 0) {
                        Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                               &D_801333E8);
                    }
            }
            return 1;
        case 4:
            if (func_80106BC8(globalCtx)) {
                if ((this->actor.textId == 0x3054) || (this->actor.textId == 0x3055)) {
                    if (globalCtx->msgCtx.choiceIndex == 0) {
                        EnGo2_GetItem(this, globalCtx, GI_PRESCRIPTION);
                        this->actionFunc = EnGo2_InitGetItem;
                        return 2;
                    }
                    this->actor.textId = 0x3056;
                    func_8010B720(globalCtx, this->actor.textId);
                }
                return 1;
            }
            break;
        case 5:
            if (func_80106BC8(globalCtx) != 0) {
                if (this->actor.textId == 0x3059) {
                    globalCtx->msgCtx.msgMode = 0x37;
                    this->actionFunc = EnGo2_BiggoronEyedrops;
                }
                return 2;
            }
    }
    return 1;
}

u16 EnGo2_getTextIdGoronFireGeneric(GlobalContext* globalCtx, EnGo2* this) {
    if (Flags_GetSwitch(globalCtx, (this->actor.params & 0xFC00) >> 0xA)) {
        return 0x3071;
    } else {
        return 0x3051;
    }
}

u16 EnGo2_getStateGoronFireGeneric(GlobalContext* globalCtx, EnGo2* this) {
    switch (func_8010BDBC(&globalCtx->msgCtx)) {
        case 2:
            return 0;
        case 5:
            if (func_80106BC8(globalCtx)) {
                if (this->actor.textId == 0x3071) {
                    this->actor.textId = EnGo2_GoronFireGenericGetTextId(this);
                    func_8010B720(globalCtx, this->actor.textId);
                }
                return 1;
            }
        default:
            return 1;
    }
}

u16 EnGo2_getTextIdGoronCityStairwell(GlobalContext* globalCtx, EnGo2* this) {
    return LINK_IS_CHILD ? gSaveContext.infTable[14] & 0x8 ? 0x3022 : 0x300E : 0x3043;
}

u16 EnGo2_getStateGoronCityStairwell(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        if (this->actor.textId == 0x300E) {
            gSaveContext.infTable[14] |= 0x8;
        }
        return 0;
    } else {
        return 1;
    }
}

// Goron in child market bazaar after obtaining Goron Ruby
u16 EnGo2_getTextIdGoronMarketBazaar(GlobalContext* globalCtx, EnGo2* this) {
    return 0x7122;
}

u16 EnGo2_getStateGoronMarketBazaar(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        return 0;
    } else {
        return 1;
    }
}

u16 EnGo2_getTextIdGoronCityLostWoods(GlobalContext* globalCtx, EnGo2* this) {
    if (LINK_IS_CHILD) {
        if (Flags_GetSwitch(globalCtx, 0x1C)) {
            return 0x302F;
        } else {
            return gSaveContext.infTable[14] & 0x40 ? 0x3025 : 0x3024;
        }
    } else {
        return 0x3043;
    }
}

u16 EnGo2_getStateGoronCityLostWoods(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        if (this->actor.textId == 0x3024) {
            gSaveContext.infTable[14] |= 0x40;
        }
        return 0;
    } else {
        return 1;
    }
}

// Goron at base of DMT summit
u16 EnGo2_getTextIdGoronDmtFairyHint(GlobalContext* globalCtx, EnGo2* this) {
    if (LINK_IS_CHILD) {
        return CHECK_QUEST_ITEM(QUEST_GORON_RUBY) ? 0x3065 : 0x3064;
    } else {
        return 0x3043;
    }
}

u16 EnGo2_getStateGoronDmtFairyHint(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        return 0;
    } else {
        return 1;
    }
}

u16 EnGo2_getTextId(GlobalContext* globalCtx, EnGo2* this) {
    u16 faceReaction;

    faceReaction = Text_GetFaceReaction(globalCtx, 0x20);

    if (faceReaction) {
        return faceReaction;
    } else {
        switch (this->actor.params & 0x1F) {
            case GORON_CITY_ROLLING_BIG:
                return EnGo2_getTextIdGoronCityRollingBig(globalCtx, this);
            case GORON_CITY_LINK:
                return EnGo2_getTextIdGoronCityLink(globalCtx, this);
            case GORON_DMT_BIGGORON:
                return EnGo2_getTextIdGoronDmtBiggoron(globalCtx, this);
            case GORON_FIRE_GENERIC:
                return EnGo2_getTextIdGoronFireGeneric(globalCtx, this);
            case GORON_DMT_BOMB_FLOWER:
                return EnGo2_getTextIdGoronDmtBombFlower(globalCtx, this);
            case GORON_DMT_ROLLING_SMALL:
                return EnGo2_getTextIdGoronDmtRollingSmall(globalCtx, this);
            case GORON_DMT_DC_ENTRANCE:
                return EnGo2_getTextIdGoronDmtDcEntrance(globalCtx, this);
            case GORON_CITY_ENTRANCE:
                return EnGo2_getTextIdGoronCityEntrance(globalCtx, this);
            case GORON_CITY_ISLAND:
                return EnGo2_getTextIdGoronCityIsland(globalCtx, this);
            case GORON_CITY_LOWEST_FLOOR:
                return EnGo2_getTextIdGoronCityLowestFloor(globalCtx, this);
            case GORON_CITY_STAIRWELL:
                return EnGo2_getTextIdGoronCityStairwell(globalCtx, this);
            case GORON_CITY_LOST_WOODS:
                return EnGo2_getTextIdGoronCityLostWoods(globalCtx, this);
            case GORON_DMT_FAIRY_HINT:
                return EnGo2_getTextIdGoronDmtFairyHint(globalCtx, this);
            case GORON_MARKET_BAZAAR:
                return EnGo2_getTextIdGoronMarketBazaar(globalCtx, this);
        }
    }
}

u16 EnGo2_getState(GlobalContext* globalCtx, EnGo2* this) {
    switch (this->actor.params & 0x1F) {
        case GORON_CITY_ROLLING_BIG:
            return EnGo2_getStateGoronCityRollingBig(globalCtx, this);
        case GORON_CITY_LINK:
            return EnGo2_getStateGoronCityLink(globalCtx, this);
        case GORON_DMT_BIGGORON:
            return EnGo2_getStateGoronDmtBiggoron(globalCtx, this);
        case GORON_FIRE_GENERIC:
            return EnGo2_getStateGoronFireGeneric(globalCtx, this);
        case GORON_DMT_BOMB_FLOWER:
            return EnGo2_getStateGoronDmtBombFlower(globalCtx, this);
        case GORON_DMT_ROLLING_SMALL:
            return EnGo2_getStateGoronDmtRollingSmall(globalCtx, this);
        case GORON_DMT_DC_ENTRANCE:
            return EnGo2_getStateGoronDmtDcEntrance(globalCtx, this);
        case GORON_CITY_ENTRANCE:
            return EnGo2_getStateGoronCityEntrance(globalCtx, this);
        case GORON_CITY_ISLAND:
            return EnGo2_getStateGoronCityIsland(globalCtx, this);
        case GORON_CITY_LOWEST_FLOOR:
            return EnGo2_getStateGoronCityLowestFloor(globalCtx, this);
        case GORON_CITY_STAIRWELL:
            return EnGo2_getStateGoronCityStairwell(globalCtx, this);
        case GORON_CITY_LOST_WOODS:
            return EnGo2_getStateGoronCityLostWoods(globalCtx, this);
        case GORON_DMT_FAIRY_HINT:
            return EnGo2_getStateGoronDmtFairyHint(globalCtx, this);
        case GORON_MARKET_BAZAAR:
            return EnGo2_getStateGoronMarketBazaar(globalCtx, this);
    }
}

s32 func_80A44790(EnGo2* this, GlobalContext* globalCtx) {
    if ((this->actor.params & 0x1F) != GORON_DMT_BIGGORON && (this->actor.params & 0x1F) != GORON_CITY_ROLLING_BIG) {
        return func_800343CC(globalCtx, &this->actor, &this->unk_194, this->unk_218, EnGo2_getTextId, EnGo2_getState);
    } else if (((this->actor.params & 0x1F) == GORON_DMT_BIGGORON) && ((this->collider.base.maskB & 1) == 0)) {
        return false;
    } else {
        if (func_8002F194(&this->actor, globalCtx)) {
            this->unk_194.unk_00 = 1;
            return true;
        } else if (this->unk_194.unk_00 != 0) {
            this->unk_194.unk_00 = EnGo2_getState(globalCtx, this);
            return false;
        } else if (func_8002F2CC(&this->actor, globalCtx, this->unk_218)) {
            this->actor.textId = EnGo2_getTextId(globalCtx, this);
        }
        return false;
    }
}

void EnGo2_SetColliderDim(EnGo2* this) {
    u8 index = this->actor.params & 0x1F;

    this->collider.dim.radius = (&D_80A4816C[index])->radius;
    this->collider.dim.height = (&D_80A4816C[index])->height;
}

void EnGo2_SetShape(EnGo2* this) {
    u8 index = this->actor.params & 0x1F;

    this->actor.shape.unk_10 = (&D_80A481F8[index])->shape_unk_10;
    Actor_SetScale(&this->actor, (&D_80A481F8[index])->scale);
    this->actor.unk_1F = (&D_80A481F8[index])->actor_unk_1F;
    this->unk_218 = (&D_80A481F8[index])->unk_218;
    this->unk_218 += this->collider.dim.radius;
}

void EnGo2_CheckCollision(EnGo2* this, GlobalContext* globalCtx) {
    Vec3s pos;
    f32 xzDist;

    pos.x = this->actor.posRot.pos.x;
    pos.y = this->actor.posRot.pos.y;
    pos.z = this->actor.posRot.pos.z;

    xzDist = D_80A4816C[this->actor.params & 0x1F].xzDist;
    pos.x += (s16)(xzDist * Math_Sins(this->actor.shape.rot.y));
    pos.z += (s16)(xzDist * Math_Coss(this->actor.shape.rot.y));

    pos.y += D_80A4816C[this->actor.params & 0x1F].yDist;

    this->collider.dim.pos = pos;

    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
}

void EnGo2_SwapInitialFrameAnimFrameCount(EnGo2* this) {
    f32 initialFrame;

    initialFrame = this->skelAnime.initialFrame;
    this->skelAnime.initialFrame = this->skelAnime.animFrameCount;
    this->skelAnime.animFrameCount = initialFrame;
}

s32 func_80A44AB0(EnGo2* this, GlobalContext* globalCtx) {
    Player* player;
    f32 arg2;

    player = PLAYER;
    if ((this->actor.params & 0x1F) == GORON_DMT_BIGGORON) {
        return false;
    } else {
        if ((this->actionFunc != EnGo2_SlowRolling) && (this->actionFunc != EnGo2_ReverseRolling) &&
            (this->actionFunc != EnGo2_ContinueRolling)) {
            return false;
        } else {
            if (this->collider.base.acFlags & 2) {
                Audio_PlaySoundGeneral(NA_SE_SY_CORRECT_CHIME, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->actor.flags &= ~0x1000000;
                this->collider.base.acFlags &= ~0x2;
                EnGo2_StopRolling(this, globalCtx);
                return true;
            }
            if (player->invincibilityTimer <= 0) {
                this->collider.base.maskA |= 8;
            } else {
                return false;
            }
            if (this->collider.base.maskB & 1) {
                this->collider.base.maskB &= ~1;

                arg2 = this->actionFunc == EnGo2_ContinueRolling ? 1.5f : this->actor.speedXZ * 1.5f;

                globalCtx->damagePlayer(globalCtx, -4);
                func_8002F71C(globalCtx, &this->actor, arg2, this->actor.yawTowardsLink, 6.0f);
                Audio_PlayActorSound2(player, NA_SE_PL_BODY_HIT);
                this->collider.base.maskA &= ~0x8;
            }
        }
    }
    return false;
}

s32 EnGo2_UpdateWaypoint(EnGo2* this, GlobalContext* globalCtx) {
    s32 change;

    if (this->path == NULL) {
        return 0;
    } else {
        change = (u8)(this->path->count - 1);
        if (this->reverse) {
            this->waypoint--;
            if (this->waypoint < 0) {
                this->waypoint = change - 1;
            }
        } else {
            this->waypoint++;
            if (this->waypoint >= change) {
                this->waypoint = 0;
            }
        }
        return 1;
    }
}

s32 EnGo2_Orient(EnGo2* this, GlobalContext* globalCtx) {
    s16 targetYaw;
    f32 waypointDistSq;

    waypointDistSq = Path_OrientAndGetDistSq(&this->actor, this->path, this->waypoint, &targetYaw);
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, targetYaw, 6, 4000, 1);

    if (waypointDistSq > 0.0f && waypointDistSq < 900.0f) {
        return EnGo2_UpdateWaypoint(this, globalCtx);
    } else {
        return 0;
    }
}

s32 func_80A44D84(EnGo2* this) {
    s16 targetYaw;

    Path_OrientAndGetDistSq(&this->actor, this->path, this->waypoint, &targetYaw);
    this->actor.posRot.rot.y = targetYaw;
    return 1;
}

s32 EnGo2_IsWakingUp(EnGo2* this) {
    s16 yawDiff;
    f32 xyzDist;
    f32 yDist;
    s16 yawDiffAbs;

    xyzDist = (this->actor.params & 0x1F) == GORON_DMT_BIGGORON ? 800.0f : 200.0f;
    yDist = (this->actor.params & 0x1F) == GORON_DMT_BIGGORON ? 400.0f : 60.0f;

    if ((this->actor.params & 0x1F) == GORON_DMT_BIGGORON) {
        if ((this->collider.base.maskB & 1) == 0) {
            this->actor.flags &= ~1;
            return false;
        } else {
            this->actor.flags |= 1;
            return true;
        }
    }

    xyzDist = SQ(xyzDist);

    yawDiff = (f32)this->actor.yawTowardsLink - (f32)this->actor.shape.rot.y;
    yawDiffAbs = ABS(yawDiff);

    if (this->actor.xyzDistFromLinkSq <= xyzDist && fabsf(this->actor.yDistFromLink) < yDist && yawDiffAbs < 0x2AA8) {
        return true;
    } else {
        return false;
    }
}

s32 EnGo2_IsRollingOnGround(EnGo2* this, s16 arg1, f32 arg2, s16 arg3) {
    s32 sound;

    if ((this->actor.bgCheckFlags & 1) == 0 || this->actor.velocity.y > 0.0f) {
        return false;
    } else {
        if (DECR(this->unk_590)) {
            if (!arg3) {
                return true;
            } else {
                if (this->unk_590 & 1) {
                    this->actor.posRot.pos.y += 1.5f;
                } else {
                    this->actor.posRot.pos.y -= 1.5f;
                }
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_BIGBALL_ROLL - SFX_FLAG);
            }
            return true;
        } else {
            if (this->unk_59C >= 2) {
                if ((this->actor.params & 0x1F) == GORON_CITY_ROLLING_BIG) {
                    sound = NA_SE_EN_GOLON_LAND_BIG;
                } else {
                    sound = NA_SE_EN_DODO_M_GND;
                }
                if (this->unk_590) {}
                Audio_PlayActorSound2(&this->actor, sound);
            }

            this->unk_59C--;

            if (this->unk_59C <= 0) {
                if (this->unk_59C == 0) {
                    this->unk_590 = Math_Rand_S16Offset(60, 30);
                    this->unk_59C = 0;
                    this->actor.velocity.y = 0.0f;
                    return true;
                } else {
                    this->unk_59C = arg1;
                }
            }

            this->actor.velocity.y = ((f32)this->unk_59C / (f32)arg1) * arg2;
            return true;
        }
    }
}

void EnGo2_BiggoronSetTextId(EnGo2* this, GlobalContext* globalCtx, Player* player) {
    u16 textId;

    if ((this->actor.params & 0x1F) == GORON_DMT_BIGGORON) {
        if (gSaveContext.bgsFlag) {
            if (func_8002F368(globalCtx) == EXCH_ITEM_CLAIM_CHECK) {
                this->actor.textId = 0x3003;
            } else {
                this->actor.textId = 0x305E;
            }
            player->actor.textId = this->actor.textId;

        } else if ((gSaveContext.bgsFlag == 0) && (INV_CONTENT(ITEM_POCKET_EGG) == ITEM_CLAIM_CHECK)) {
            if (func_8002F368(globalCtx) == EXCH_ITEM_CLAIM_CHECK) {
                if (func_800775CC() >= 3) {
                    textId = 0x305E;
                } else {
                    textId = 0x305D;
                }
                this->actor.textId = textId;
            } else {
                if (func_800775CC() >= 3) {
                    textId = 0x3002;
                } else {
                    textId = 0x305D;
                }
                this->actor.textId = textId;
            }
            player->actor.textId = this->actor.textId;

        } else if ((INV_CONTENT(ITEM_POCKET_EGG) >= ITEM_PRESCRIPTION) &&
                   (INV_CONTENT(ITEM_POCKET_EGG) <= ITEM_CLAIM_CHECK)) {
            if (func_8002F368(globalCtx) == EXCH_ITEM_EYEDROPS) {
                this->actor.textId = 0x3059;
            } else {
                this->actor.textId = 0x3058;
            }
            if (this->actor.textId == 0x3059) {
                gSaveContext.timer2State = 0;
            }
            player->actor.textId = this->actor.textId;

        } else if (INV_CONTENT(ITEM_POCKET_EGG) <= ITEM_SWORD_BROKEN) {
            if (func_8002F368(globalCtx) == EXCH_ITEM_SWORD_BROKEN) {
                if (gSaveContext.infTable[11] & 0x10) {
                    textId = 0x3055;
                } else {
                    textId = 0x3054;
                }
                this->actor.textId = textId;
            } else {
                this->actor.textId = 0x3053;
            }
            player->actor.textId = this->actor.textId;
        } else {
            this->actor.textId = 0x3053;
            player->actor.textId = this->actor.textId;
        }
    }
}

void func_80A45288(EnGo2* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 linkAge;

    if (this->actionFunc != EnGo2_GoronFireGenericAction) {
        this->unk_194.unk_18 = player->actor.posRot.pos;
        linkAge = gSaveContext.linkAge;
        this->unk_194.unk_14 = D_80A482D8[this->actor.params & 0x1F][linkAge];
        func_80034A14(&this->actor, &this->unk_194, 4, this->unk_26E);
    }
    if ((this->actionFunc != EnGo2_SetGetItem) && (this->isAwake == true)) {
        if (func_80A44790(this, globalCtx)) {
            EnGo2_BiggoronSetTextId(this, globalCtx, player);
        }
    }
}

void func_80A45360(EnGo2* this, f32* alpha) {
    f32 alpha_Target;

    if ((this->skelAnime.animation == &D_06004930) && (this->skelAnime.animCurrentFrame <= 32.0f)) {
        alpha_Target = 0.0f;
    } else {
        alpha_Target = 255.0f;
    }
    Math_SmoothScaleMaxF(alpha, alpha_Target, 0.4f, 100.0f);
    this->actor.shape.unk_14 = (u8)(u32)*alpha;
}

void EnGo2_RollForward(EnGo2* this) {
    f32 speedXZ;

    speedXZ = this->actor.speedXZ;

    if (this->unk_194.unk_00 != 0) {
        this->actor.speedXZ = 0.0f;
    }

    if (this->actionFunc != EnGo2_ContinueRolling) {
        Actor_MoveForward(&this->actor);
    }

    this->actor.speedXZ = speedXZ;
}

void func_80A454CC(EnGo2* this) {
    switch (this->actor.params & 0x1F) {
        case GORON_CITY_ROLLING_BIG:
        case GORON_DMT_DC_ENTRANCE:
        case GORON_CITY_ENTRANCE:
        case GORON_CITY_STAIRWELL:
        case GORON_DMT_FAIRY_HINT:
            func_80034EC0(&this->skelAnime, sAnimations, 9);
            break;
        case GORON_DMT_BIGGORON:
            if (INV_CONTENT(ITEM_POCKET_EGG) >= ITEM_SWORD_BROKEN && INV_CONTENT(ITEM_POCKET_EGG) <= ITEM_EYEDROPS) {
                func_80034EC0(&this->skelAnime, sAnimations, 4);
                break;
            }
        default:
            this->skelAnime.animPlaybackSpeed = 0.0f;
    }
}

f32 EnGo2_GetTargetXZSpeed(EnGo2* this) {
    f32 yDist;
    s32 index;

    yDist = (this->actor.params & 0x1F) == GORON_DMT_BIGGORON ? 400.0f : 60.0f;

    index = this->actor.params & 0x1F;

    if (index == 1 && (fabsf(this->actor.yDistFromLink) < yDist) && (this->actor.xzDistFromLink < 400.0f)) {
        return 9.0f;
    } else {
        return index == 0 ? 3.6000001f : 6.0f;
    }
}

s32 EnGo2_IsCameraModified(EnGo2* this, GlobalContext* globalCtx) {
    Camera* camera;

    camera = globalCtx->cameraPtrs[0];
    if ((this->actor.params & 0x1F) == GORON_DMT_BIGGORON) {
        if (EnGo2_IsWakingUp(this)) {
            Camera_ChangeSetting(camera, CAM_SET_TEPPEN);
            func_8005AD1C(camera, 4);
        } else if ((EnGo2_IsWakingUp(this) == false) && (camera->setting == CAM_SET_TEPPEN)) {
            Camera_ChangeSetting(camera, CAM_SET_DUNGEON1);
            func_8005ACFC(camera, 4);
        }
    }

    if ((this->actor.params & 0x1F) == GORON_FIRE_GENERIC || (this->actor.params & 0x1F) == GORON_CITY_ROLLING_BIG ||
        (this->actor.params & 0x1F) == GORON_CITY_STAIRWELL || (this->actor.params & 0x1F) == GORON_DMT_BIGGORON ||
        (this->actor.params & 0x1F) == GORON_MARKET_BAZAAR) {
        return true;
    } else if ((CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) == 0) && (CHECK_OWNED_EQUIP(EQUIP_TUNIC, 1))) {
        return true;
    } else {
        return false;
    }
}

void EnGo2_DefaultWakingUp(EnGo2* this) {
    if (EnGo2_IsWakingUp(this)) {
        this->unk_26E = 2;
    } else {
        this->unk_26E = 1;
    }

    if (this->unk_194.unk_00 != 0) {
        this->unk_26E = 4;
    }

    this->isAwake = true;
}

void EnGo2_WakingUp(EnGo2* this) {
    f32 xyzDist;
    s32 isTrue;

    if ((this->actor.params & 0x1F) == GORON_DMT_BIGGORON) {
        xyzDist = 800.0f;
    } else {
        xyzDist = 200.0f;
    }

    xyzDist = SQ(xyzDist);
    isTrue = true;

    this->unk_26E = 1;

    if ((this->actor.xyzDistFromLinkSq <= xyzDist) || (this->unk_194.unk_00 != 0)) {
        this->unk_26E = 4;
    }

    this->isAwake = isTrue;
}

void EnGo2_BiggoronWakingUp(EnGo2* this) {
    if (EnGo2_IsWakingUp(this) || this->unk_194.unk_00 != 0) {
        this->unk_26E = 2;
        this->isAwake = true;
    } else {
        this->unk_26E = 1;
        this->isAwake = false;
    }
}

void EnGo2_SelectGoronWakingUp(EnGo2* this) {
    switch (this->actor.params & 0x1F) {
        case GORON_DMT_BOMB_FLOWER:
            this->isAwake = true;
            this->unk_26E = EnGo2_IsWakingUp(this) ? 2 : 1;
            break;
        case GORON_FIRE_GENERIC:
            EnGo2_WakingUp(this);
            break;
        case GORON_DMT_BIGGORON:
            EnGo2_BiggoronWakingUp(this);
            break;
        case GORON_CITY_LINK:
            if ((CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) == 0) && CHECK_OWNED_EQUIP(EQUIP_TUNIC, 1)) {
                EnGo2_WakingUp(this);
                break;
            }
        default:
            EnGo2_DefaultWakingUp(this);
    }
}

void EnGo2_EyeMouthTexState(EnGo2* this) {
    switch (this->eyeMouthTexState) {
        case 1:
            this->blinkTimer = 0;
            this->eyeTexIndex = 0;
            this->mouthTexIndex = 0;
            break;
        case 2:
            this->blinkTimer = 0;
            this->eyeTexIndex = 1;
            this->mouthTexIndex = 0;
            break;
        // case 3 only when biggoron is given eyedrops. Biggoron smiles. (only use of second mouth texture)
        case 3:
            this->blinkTimer = 0;
            this->eyeTexIndex = 0;
            this->mouthTexIndex = 1;
            break;
        default:
            if (DECR(this->blinkTimer) == 0) {
                this->eyeTexIndex++;
                if (this->eyeTexIndex >= 4) {
                    this->blinkTimer = Math_Rand_S16Offset(30, 30);
                    this->eyeTexIndex = 1;
                }
            }
    }
}

void EnGo2_SitDownAnimation(EnGo2* this) {
    if ((this->skelAnime.animPlaybackSpeed != 0.0f) && (this->skelAnime.animation == &D_06004930)) {
        if (this->skelAnime.animPlaybackSpeed > 0.0f && this->skelAnime.animCurrentFrame == 14.0f) {
            if ((this->actor.params & 0x1F) != GORON_DMT_BIGGORON) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOLON_SIT_DOWN);
            } else {
                func_800F4524(&D_801333D4, NA_SE_EN_GOLON_SIT_DOWN, 60);
            }
        }
        if (this->skelAnime.animPlaybackSpeed < 0.0f) {
            if (this->skelAnime.animCurrentFrame == 1.0f) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
            }
            if (this->skelAnime.animCurrentFrame == 40.0f) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOLON_SIT_DOWN);
            }
        }
    }
}

void EnGo2_GetDustData(EnGo2* this, s32 index2) {
    EnGo2DustEffectData* dustEffectData;
    s32 index1;

    if ((this->actor.params & 0x1F) == GORON_CITY_ROLLING_BIG) {
        index1 = 1;
    } else {
        index1 = 0;
    }

    dustEffectData = &sDustEffectData[index1][index2];
    EnGo2_SpawnDust(this, dustEffectData->initialTimer, dustEffectData->scale, dustEffectData->scaleStep,
                    dustEffectData->numDustEffects, dustEffectData->radius, dustEffectData->yAccel);
}

void EnGo2_RollingAnimation(EnGo2* this, GlobalContext* globalCtx) {
    if ((this->actor.params & 0x1F) == GORON_DMT_BIGGORON) {
        this->actor.flags &= ~1;
        func_80034EC0(&this->skelAnime, sAnimations, 10);
        this->skelAnime.animPlaybackSpeed = -0.5f;
    } else {
        func_80034EC0(&this->skelAnime, sAnimations, 1);
        this->skelAnime.animPlaybackSpeed = -1.0f;
    }
    EnGo2_SwapInitialFrameAnimFrameCount(this);
    this->unk_26E = 1;
    this->unk_211 = false;
    this->isAwake = false;
    this->actionFunc = EnGo2_CurledUp;
}

void EnGo2_WakeUp(EnGo2* this, GlobalContext* globalCtx) {
    if (this->skelAnime.animPlaybackSpeed == 0.0f) {
        if ((this->actor.params & 0x1F) != GORON_DMT_BIGGORON) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOLON_WAKE_UP);
        } else {
            func_800F4524(&D_801333D4, NA_SE_EN_GOLON_WAKE_UP, 60);
        }
    }
    if ((this->actor.params & 0x1F) == GORON_DMT_BIGGORON) {
        func_800800F8(globalCtx, 0x1068, -0x63, &this->actor, 0);
        func_80034EC0(&this->skelAnime, sAnimations, 10);
        this->skelAnime.animPlaybackSpeed = 0.5f;
    } else {
        func_80034EC0(&this->skelAnime, sAnimations, 1);
        this->skelAnime.animPlaybackSpeed = 1.0f;
    }
    this->actionFunc = func_80A46B40;
}

void EnGo2_GetItemAnimation(EnGo2* this, GlobalContext* globalCtx) {
    func_80034EC0(&this->skelAnime, sAnimations, 1);
    this->unk_211 = true;
    this->actionFunc = func_80A46B40;
    this->skelAnime.animPlaybackSpeed = 0.0f;
    this->actor.speedXZ = 0.0f;
    this->skelAnime.animCurrentFrame = this->skelAnime.animFrameCount;
}

void EnGo2_BeginRolling(EnGo2* this, GlobalContext* globalCtx) {
    if ((this->actor.params & 0x1F) == GORON_CITY_ROLLING_BIG || (this->actor.params & 0x1F) == GORON_CITY_LINK) {
        this->collider.body.bumperFlags = 1;
        if (gSaveContext.infTable[17] & 0x4000) {
            this->actor.speedXZ = 6.0f;
        } else {
            this->actor.speedXZ = 3.6000001f;
        }
    } else {
        this->actor.speedXZ = 6.0f;
    }
    this->actor.flags |= 0x1000000;
    this->animTimer = 10;
    this->actor.shape.unk_08 = 1800.0f;
    this->actor.speedXZ += this->actor.speedXZ; // Speeding up
    this->actionFunc = EnGo2_ContinueRolling;
}

void EnGo2_StopRolling(EnGo2* this, GlobalContext* globalCtx) {
    EnBom* bomb;

    if (((this->actor.params & 0x1F) != GORON_CITY_ROLLING_BIG) && ((this->actor.params & 0x1F) != GORON_CITY_LINK)) {
        if ((this->actor.params & 0x1F) == GORON_DMT_ROLLING_SMALL) {
            bomb = (EnBom*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOM, this->actor.posRot.pos.x,
                                       this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
            if (bomb != NULL) {
                bomb->timer = 0;
            }
        }
    } else {
        this->collider.body.bumperFlags = 0;
    }

    this->actor.shape.rot = this->actor.posRot.rot;
    this->unk_59C = 0;
    this->unk_590 = 0;
    this->actionFunc = EnGo2_GroundRolling;
    this->actor.shape.unk_08 = 0.0f;
    this->actor.speedXZ = 0.0f;
}

s32 EnGo2_IsFreeingGoronInFire(EnGo2* this, GlobalContext* globalCtx) {
    if ((this->actor.params & 0x1F) != GORON_FIRE_GENERIC) {
        return false;
    } else {
        // shaking curled up
        this->actor.posRot.pos.x += (globalCtx->state.frames & 1) ? 1.0f : -1.0f;
        if (Flags_GetSwitch(globalCtx, (this->actor.params & 0xFC00) >> 0xA)) {
            return true;
        } else {
            return false;
        }
    }
}

s32 EnGo2_IsGoronDmtBombFlower(EnGo2* this) {
    if ((this->actor.params & 0x1F) != GORON_DMT_BOMB_FLOWER || this->unk_194.unk_00 != 2) {
        return false;
    } else {
        func_80034EC0(&this->skelAnime, sAnimations, 3);
        this->unk_194.unk_00 = 0;
        this->isAwake = false;
        this->unk_26E = 1;
        this->actionFunc = EnGo2_GoronDmtBombFlowerAnimation;
        return true;
    }
}

s32 EnGo2_IsGoronRollingBig(EnGo2* this, GlobalContext* globalCtx) {
    if ((this->actor.params & 0x1F) != GORON_CITY_ROLLING_BIG || (this->unk_194.unk_00 != 2)) {
        return false;
    } else {
        this->unk_194.unk_00 = 0;
        EnGo2_RollingAnimation(this, globalCtx);
        this->actionFunc = EnGo2_GoronRollingBigContinueRolling;
        return true;
    }
}

s32 EnGo2_IsGoronFireGeneric(EnGo2* this) {
    if ((this->actor.params & 0x1F) != GORON_FIRE_GENERIC || this->unk_194.unk_00 == 0) {
        return false;
    } else {
        this->actionFunc = EnGo2_GoronFireGenericAction;
        return true;
    }
}

s32 EnGo2_IsGoronLinkReversing(EnGo2* this) {
    if ((this->actor.params & 0x1F) != GORON_CITY_LINK || (this->waypoint >= this->unk_216) ||
        EnGo2_IsWakingUp(this) == false) {
        return false;
    } else {
        return true;
    }
}

s32 EnGo2_IsRolling(EnGo2* this) {
    if (this->unk_194.unk_00 == 0 || this->actor.speedXZ < 1.0f) {
        return false;
    } else {
        if (EnGo2_IsRollingOnGround(this, 2, 20.0 / 3.0f, 0)) {
            if ((this->unk_590 >= 9) && (this->unk_59C == 0)) {
                this->unk_590 = 8;
            }
            EnGo2_GetDustData(this, 0);
        }
        return true;
    }
}

void EnGo2_GoronLinkAnimation(EnGo2* this, GlobalContext* globalCtx) {
    s32 animation;

    animation = 13;
    if ((this->actor.params & 0x1F) == GORON_CITY_LINK) {
        if ((this->actor.textId == 0x3035 && this->unk_20C == 0) ||
            (this->actor.textId == 0x3036 && this->unk_20C == 0)) {
            if (this->skelAnime.animation != &D_06000D5C) {
                animation = 12;
                this->eyeMouthTexState = 0;
            }
        }

        if ((this->actor.textId == 0x3032 && this->unk_20C == 12) || (this->actor.textId == 0x3033) ||
            (this->actor.textId == 0x3035 && this->unk_20C == 6)) {
            if (this->skelAnime.animation != &D_06000750) {
                animation = 11;
                this->eyeMouthTexState = 1;
            }
        }

        if (this->skelAnime.animation == &D_06000750) {
            if (this->skelAnime.animCurrentFrame == 20.0f) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOLON_CRY);
            }
        }

        if (animation != 13) {
            func_80034EC0(&this->skelAnime, sAnimations, animation);
        }
    }
}

void EnGo2_GoronFireCamera(EnGo2* this, GlobalContext* globalCtx) {
    s16 yaw;

    this->camID = Gameplay_CreateSubCamera(globalCtx);
    Gameplay_ChangeCameraStatus(globalCtx, 0, CAM_STAT_WAIT);
    Gameplay_ChangeCameraStatus(globalCtx, this->camID, CAM_STAT_ACTIVE);
    Path_CopyLastPoint(this->path, &this->at);
    yaw = Math_Vec3f_Yaw(&this->actor.posRot, &this->at) + 0xE38;
    this->eye.x = Math_Sins(yaw) * 100.0f + this->actor.posRot.pos.x;
    this->eye.z = Math_Coss(yaw) * 100.0f + this->actor.posRot.pos.z;
    this->eye.y = this->actor.posRot.pos.y + 20.0f;
    this->at.x = this->actor.posRot.pos.x;
    this->at.y = this->actor.posRot.pos.y + 40.0f;
    this->at.z = this->actor.posRot.pos.z;
    Gameplay_CameraSetAtEye(globalCtx, this->camID, &this->at, &this->eye);
}

void EnGo2_GoronFireClearCamera(EnGo2* this, GlobalContext* globalCtx) {
    Gameplay_ChangeCameraStatus(globalCtx, 0, CAM_STAT_ACTIVE);
    Gameplay_ClearCamera(globalCtx, this->camID);
}

void EnGo2_BiggoronAnimation(EnGo2* this) {
    if (INV_CONTENT(ITEM_POCKET_EGG) >= ITEM_SWORD_BROKEN && INV_CONTENT(ITEM_POCKET_EGG) <= ITEM_EYEDROPS &&
        (this->actor.params & 0x1F) == GORON_DMT_BIGGORON && this->unk_194.unk_00 == 0) {
        if (DECR(this->animTimer) == 0) {
            this->animTimer = Math_Rand_S16Offset(30, 30);
            func_800F4524(&D_801333D4, NA_SE_EN_GOLON_EYE_BIG, 60);
        }
    }
}

void EnGo2_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnGo2* this = THIS;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 28.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600FEF0, NULL, &this->limbDrawTable, &this->transitionDrawTable,
                       18);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    func_80061EFC(&this->actor.colChkInfo, NULL, &sColChkInfoInit);

    // Not GORON_CITY_ROLLING_BIG, GORON_CITY_LINK, GORON_DMT_BIGGORON
    switch (this->actor.params & 0x1F) {
        case GORON_FIRE_GENERIC:
        case GORON_DMT_BOMB_FLOWER:
        case GORON_DMT_ROLLING_SMALL:
        case GORON_DMT_DC_ENTRANCE:
        case GORON_CITY_ENTRANCE:
        case GORON_CITY_ISLAND:
        case GORON_CITY_LOWEST_FLOOR:
        case GORON_CITY_STAIRWELL:
        case GORON_CITY_LOST_WOODS:
        case GORON_DMT_FAIRY_HINT:
        case GORON_MARKET_BAZAAR:
            this->actor.flags &= ~0x10;
            this->actor.flags &= ~0x20;
    }

    EnGo2_SetColliderDim(this);
    EnGo2_SetShape(this);
    func_80034EC0(&this->skelAnime, sAnimations, 0);
    this->actor.gravity = -1.0f;
    this->alpha = this->actor.shape.unk_14 = 0;
    this->reverse = 0;
    this->isAwake = false;
    this->unk_211 = false;
    this->goronState = 0;
    this->waypoint = 0;
    this->unk_216 = this->actor.shape.rot.z;
    this->unk_26E = 1;
    this->path = Path_GetByIndex(globalCtx, (this->actor.params & 0x3E0) >> 5, 0x1F);

    switch (this->actor.params & 0x1F) {
        case GORON_CITY_ENTRANCE:
        case GORON_CITY_ISLAND:
        case GORON_CITY_LOWEST_FLOOR:
        case GORON_CITY_STAIRWELL:
        case GORON_CITY_LOST_WOODS:
            if ((CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) == 0) && LINK_IS_ADULT) {
                Actor_Kill(&this->actor);
            }
            this->actionFunc = EnGo2_CurledUp;
            break;
        case GORON_MARKET_BAZAAR:
            if ((LINK_IS_ADULT) || (CHECK_QUEST_ITEM(QUEST_GORON_RUBY) == 0)) {
                Actor_Kill(&this->actor);
            }
            EnGo2_GetItemAnimation(this, globalCtx);
            break;
        case GORON_CITY_LINK:
            if ((gSaveContext.infTable[16] & 0x200)) {
                Path_CopyLastPoint(this->path, &this->actor.posRot.pos);
                this->actor.initPosRot.pos = this->actor.posRot.pos;
                if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) == 0 && (CHECK_OWNED_EQUIP(EQUIP_TUNIC, 1))) {
                    EnGo2_GetItemAnimation(this, globalCtx);
                } else {
                    this->actionFunc = EnGo2_CurledUp;
                }
            } else {
                gSaveContext.infTable[16] &= ~0x1000;
                this->collider.dim.height = ((&D_80A4816C[this->actor.params & 0x1F])->height * 0.6f);
                EnGo2_BeginRolling(this, globalCtx);
                this->isAwake = true;
            }
            break;
        case GORON_CITY_ROLLING_BIG:
        case GORON_DMT_ROLLING_SMALL:
            this->collider.dim.height = ((&D_80A4816C[this->actor.params & 0x1F])->height * 0.6f);
            EnGo2_BeginRolling(this, globalCtx);
            break;
        case GORON_FIRE_GENERIC:
            if (Flags_GetSwitch(globalCtx, (this->actor.params & 0xFC00) >> 0xA)) {
                Actor_Kill(&this->actor);
            } else {
                this->isAwake = true;
                this->actionFunc = EnGo2_CurledUp;
            }
            break;
        case GORON_DMT_BIGGORON:
            this->actor.shape.shadowDrawFunc = NULL;
            this->actor.flags &= ~1;
            if ((INV_CONTENT(ITEM_POCKET_EGG) >= ITEM_SWORD_BROKEN) &&
                (INV_CONTENT(ITEM_POCKET_EGG) <= ITEM_EYEDROPS)) {
                this->eyeMouthTexState = 1;
            }
            this->collider.base.acFlags = 0;
            this->collider.base.maskA = 0xD; // OC_PLAYER | OC_NO_PUSH | OC_ON
            this->actionFunc = EnGo2_CurledUp;
            break;
        case GORON_DMT_BOMB_FLOWER:
            if (gSaveContext.infTable[14] & 0x800) {
                Path_CopyLastPoint(this->path, &this->actor.posRot.pos);
                this->actor.initPosRot.pos = this->actor.posRot.pos;
            }
        case GORON_DMT_DC_ENTRANCE:
        case GORON_DMT_FAIRY_HINT:
        default:
            this->actionFunc = EnGo2_CurledUp;
    }
}

void EnGo2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnGo2_CurledUp(EnGo2* this, GlobalContext* globalCtx) {
    u8 index;
    s16 height;
    s32 quake;

    index = this->actor.params & 0x1F;

    if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
        if ((this->actor.params & 0x1F) == GORON_DMT_BIGGORON) {
            quake = Quake_Add(ACTIVE_CAM, 3);
            Quake_SetSpeed(quake, -0x3CB0);
            Quake_SetQuakeValues(quake, 8, 0, 0, 0);
            Quake_SetCountdown(quake, 16);
        } else {
            EnGo2_GetDustData(this, 1);
        }
        this->skelAnime.animPlaybackSpeed = 0.0f;
    }

    if ((s32)this->skelAnime.animCurrentFrame == 0) {
        this->collider.dim.height = ((&D_80A4816C[index])->height * 0.6f);
    } else {
        height = (&D_80A4816C[index])->height;
        this->collider.dim.height =
            (((&D_80A4816C[index])->height * 0.4f * (this->skelAnime.animCurrentFrame / this->skelAnime.initialFrame)) +
             (height * 0.6f));
    }
    if (EnGo2_IsFreeingGoronInFire(this, globalCtx)) {
        this->isAwake = false;
        EnGo2_WakeUp(this, globalCtx);
    }
    if (((this->actor.params & 0x1F) != GORON_FIRE_GENERIC) && EnGo2_IsWakingUp(this)) {
        EnGo2_WakeUp(this, globalCtx);
    }
}

void func_80A46B40(EnGo2* this, GlobalContext* globalCtx) {
    u8 index;
    f32 height;

    index = (this->actor.params & 0x1F);
    if (this->unk_211 == true) {
        EnGo2_BiggoronAnimation(this);
        EnGo2_GoronLinkAnimation(this, globalCtx);
        EnGo2_SelectGoronWakingUp(this);

        if ((EnGo2_IsGoronRollingBig(this, globalCtx) == false) && (EnGo2_IsGoronFireGeneric(this) == false)) {
            if (EnGo2_IsGoronDmtBombFlower(this)) {
                return;
            }
        } else {
            return;
        }

    } else {
        if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
            if ((this->actor.params & 0x1F) == GORON_DMT_BIGGORON) {
                this->actor.flags |= 1;
            }
            func_80A454CC(this);
            this->unk_211 = true;
            this->collider.dim.height = (&D_80A4816C[index])->height;
        } else {
            height = (&D_80A4816C[index])->height;
            this->collider.dim.height =
                (s16)((height * 0.4f * (this->skelAnime.animCurrentFrame / this->skelAnime.animFrameCount)) +
                      (height * 0.6f));
        }
    }
    if ((EnGo2_IsCameraModified(this, globalCtx) == 0) && (EnGo2_IsWakingUp(this) == false)) {
        EnGo2_RollingAnimation(this, globalCtx);
    }
}

void EnGo2_GoronDmtBombFlowerAnimation(EnGo2* this, GlobalContext* globalCtx) {
    f32 float1;
    f32 float2;

    float1 = this->skelAnime.animFrameCount;
    float2 = this->skelAnime.animCurrentFrame * (32768.0f / float1);
    this->actor.speedXZ = Math_Sins(float2);
    if ((EnGo2_Orient(this, globalCtx)) && (this->waypoint == 0)) {
        EnGo2_GetItemAnimation(this, globalCtx);
    }
}

void EnGo2_GoronRollingBigContinueRolling(EnGo2* this, GlobalContext* globalCtx) {
    if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
        EnGo2_GetDustData(this, 1);
        this->skelAnime.animPlaybackSpeed = 0.0f;
        EnGo2_BeginRolling(this, globalCtx);
    }
}

void EnGo2_ContinueRolling(EnGo2* this, GlobalContext* globalCtx) {
    f32 float1 = 1000.0f;

    if (((this->actor.params & 0x1F) != GORON_DMT_ROLLING_SMALL || !(this->actor.xyzDistFromLinkSq > SQ(float1))) &&
        DECR(this->animTimer) == 0) {
        this->actionFunc = EnGo2_SlowRolling;
        this->actor.speedXZ *= 0.5f; // slowdown
    }
    EnGo2_GetDustData(this, 2);
}

void EnGo2_SlowRolling(EnGo2* this, GlobalContext* globalCtx) {
    s32 orientation;
    s32 index;

    if (EnGo2_IsRolling(this) == false) {
        if (EnGo2_IsRollingOnGround(this, 4, 8.0f, 1) == 1) {
            if (EnGo2_IsGoronLinkReversing(this)) {
                this->actionFunc = EnGo2_ReverseRolling;
                return;
            }
            EnGo2_GetDustData(this, 3);
        }
        orientation = EnGo2_Orient(this, globalCtx);
        index = this->actor.params & 0x1F;
        if (index != GORON_CITY_LINK) {
            if ((index == GORON_DMT_ROLLING_SMALL) && (orientation == 1) && (this->waypoint == 0)) {
                EnGo2_StopRolling(this, globalCtx);
                return;
            }
        } else if ((orientation == 2) && (this->waypoint == 1)) {
            EnGo2_StopRolling(this, globalCtx);
            return;
        }
        Math_SmoothScaleMaxF(&this->actor.speedXZ, EnGo2_GetTargetXZSpeed(this), 0.4f, 0.6f);
        this->actor.shape.rot = this->actor.posRot.rot;
    }
}

void EnGo2_GroundRolling(EnGo2* this, GlobalContext* globalCtx) {
    if (EnGo2_IsRollingOnGround(this, 4, 8.0f, 0)) {
        EnGo2_GetDustData(this, 0);
        if (this->unk_59C == 0) {
            switch (this->actor.params & 0x1F) {
                case GORON_CITY_LINK:
                    this->goronState = 0;
                    this->actionFunc = EnGo2_GoronLinkStopRolling;
                    break;
                case GORON_CITY_ROLLING_BIG:
                    EnGo2_WakeUp(this, globalCtx);
                    break;
                default:
                    this->actionFunc = EnGo2_CurledUp;
            }
        }
    }
}

void EnGo2_ReverseRolling(EnGo2* this, GlobalContext* globalCtx) {
    if (EnGo2_IsRolling(this) == false) {
        Math_SmoothScaleMaxF(&this->actor.speedXZ, 0.0f, 0.6f, 0.8f);
        if (this->actor.speedXZ >= 1.0f) {
            EnGo2_GetDustData(this, 3);
        }
        if ((s32)this->actor.speedXZ == 0) {
            this->actor.posRot.rot.y ^= 0x8000;
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
            this->reverse ^= 1;
            EnGo2_UpdateWaypoint(this, globalCtx);
            EnGo2_BeginRolling(this, globalCtx);
        }
    }
}

void EnGo2_InitGetItem(EnGo2* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actor.parent = NULL;
        this->actionFunc = EnGo2_SetGetItem;
    } else {
        func_8002F434(&this->actor, globalCtx, this->getItemID, this->actor.xzDistFromLink + 1.0f,
                      fabsf(this->actor.yDistFromLink) + 1.0f);
    }
}

void EnGo2_SetGetItem(EnGo2* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && func_80106BC8(globalCtx)) {
        this->unk_194.unk_00 = 0;
        switch (this->getItemID) {
            case GI_CLAIM_CHECK:
                func_800775D8();
                EnGo2_GetItemAnimation(this, globalCtx);
                return;
            case GI_TUNIC_GORON:
                gSaveContext.infTable[16] |= 0x200;
                EnGo2_GetItemAnimation(this, globalCtx);
                return;
            case GI_SWORD_BGS:
                gSaveContext.bgsFlag = 1;
                break;
            case GI_BOMB_BAG_30:
            case GI_BOMB_BAG_40:
                EnGo2_RollingAnimation(this, globalCtx);
                this->actionFunc = EnGo2_GoronRollingBigContinueRolling;
                return;
        }
        this->actionFunc = func_80A46B40;
    }
}

void EnGo2_BiggoronEyedrops(EnGo2* this, GlobalContext* globalCtx) {
    switch (this->goronState) {
        case 0:
            func_80034EC0(&this->skelAnime, sAnimations, 5);
            this->actor.flags &= ~1;
            this->actor.shape.rot.y += 0x5B0;
            this->unk_26E = 1;
            this->animTimer = this->skelAnime.animFrameCount + 60.0f + 60.0f; // eyeDrops animation timer
            this->eyeMouthTexState = 2;
            this->unk_20C = 0;
            this->goronState++;
            func_800F483C(0x28, 5);
            func_800800F8(globalCtx, 0x105E, -0x63, &this->actor, 0);
            break;
        case 1:
            if (DECR(this->animTimer)) {
                if (this->animTimer == 60 || this->animTimer == 120) {
                    func_8005B1A4(ACTIVE_CAM);
                    func_800F4524(&D_801333D4, NA_SE_EV_GORON_WATER_DROP, 60);
                }
            } else {
                func_800F4524(&D_801333D4, NA_SE_EN_GOLON_GOOD_BIG, 60);
                func_80034EC0(&this->skelAnime, sAnimations, 6);
                func_8010B720(globalCtx, 0x305A);
                this->eyeMouthTexState = 3;
                this->goronState++;
                func_800F483C(0x7F, 5);
            }
            break;
        case 2:
            if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
                this->eyeMouthTexState = 0;
            }
            if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
                func_80034EC0(&this->skelAnime, sAnimations, 1);
                this->actor.flags |= 1;
                this->unk_26E = 2;
                this->skelAnime.animPlaybackSpeed = 0.0f;
                this->skelAnime.animCurrentFrame = this->skelAnime.animFrameCount;
                EnGo2_GetItem(this, globalCtx, GI_CLAIM_CHECK);
                this->actionFunc = EnGo2_InitGetItem;
                this->goronState = 0;
            }
            break;
    }
}

void EnGo2_GoronLinkStopRolling(EnGo2* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    switch (this->goronState) {
        case 0:
            if (func_8010BDBC(&globalCtx->msgCtx)) {
                return;
            } else {
                func_8010B680(globalCtx, 0x3031, NULL);
                player->actor.freezeTimer = 10;
                this->goronState++;
            }
        case 1:
            break;
        default:
            return;
    }

    if (func_8010BDBC(&globalCtx->msgCtx) != 2) {
        player->actor.freezeTimer = 10;
    } else {
        gSaveContext.infTable[16] |= 0x1000;
        this->unk_26E = 1;
        this->unk_211 = false;
        this->isAwake = false;
        this->actionFunc = EnGo2_CurledUp;
    }
}

void EnGo2_GoronFireGenericAction(EnGo2* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    Vec3s D_80A4854C = { 0x00, 0x00, 0x00 };

    switch (this->goronState) {
        // Wake up???
        case 0:
            if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
                EnGo2_GoronFireCamera(this, globalCtx);
                globalCtx->msgCtx.msgMode = 0x37;
                func_80034EC0(&this->skelAnime, sAnimations, 2);
                this->waypoint = 1;
                this->skelAnime.animPlaybackSpeed = 2.0f;
                func_80A44D84(this);

                this->actor.shape.rot = this->actor.posRot.rot;
                this->animTimer = 60;
                this->actor.gravity = 0.0f;
                this->actor.speedXZ = 2.0f;
                this->unk_194.unk_08 = D_80A4854C;
                this->unk_194.unk_0E = D_80A4854C;
                this->goronState++;
                this->goronState++;
                player->actor.posRot.rot.y = this->actor.posRot.rot.y;
                player->actor.shape.rot.y = this->actor.posRot.rot.y;
                player->actor.posRot.pos.x =
                    (f32)((Math_Sins(this->actor.posRot.rot.y) * -30.0f) + this->actor.posRot.pos.x);
                player->actor.posRot.pos.z =
                    (f32)((Math_Coss(this->actor.posRot.rot.y) * -30.0f) + this->actor.posRot.pos.z);
                func_8002DF54(globalCtx, &this->actor, 8);
                func_800F5C64(0x51);
            }
            break;
        // Walking away
        case 2:
            if (DECR(this->animTimer)) {
                if (!(this->animTimer % 8)) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_WALK);
                }
                Actor_MoveForward(&this->actor);
            } else {
                this->animTimer = 0;
                this->actor.speedXZ = 0.0f;
                if ((((this->actor.params & 0xFC00) >> 0xA) != 1) && (((this->actor.params & 0xFC00) >> 0xA) != 2) &&
                    (((this->actor.params & 0xFC00) >> 0xA) != 4) && (((this->actor.params & 0xFC00) >> 0xA) != 5) &&
                    (((this->actor.params & 0xFC00) >> 0xA) != 9) && (((this->actor.params & 0xFC00) >> 0xA) != 11)) {
                    this->goronState++;
                }
                this->goronState++;
            }
            break;
        // Walking away
        case 3:
            this->animTimer++;

            if (!(this->animTimer % 8) && (this->animTimer < 10)) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_WALK);
            }
            if (this->animTimer == 10) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_IRON_DOOR_OPEN);
            }
            if (this->animTimer > 44) {
                Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot, 20, NA_SE_EV_IRON_DOOR_CLOSE);
            } else {
                break;
            }
        // Finalize walking away
        case 4:
            func_80106CCC(globalCtx);
            EnGo2_GoronFireClearCamera(this, globalCtx);
            func_8002DF54(globalCtx, &this->actor, 7);
            Actor_Kill(&this->actor);
            break;
        case 1:
            break;
    }
}

void EnGo2_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnGo2* this = THIS;

    func_80A45360(this, &this->alpha);
    EnGo2_SitDownAnimation(this);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    EnGo2_RollForward(this);
    func_8002E4B4(globalCtx, &this->actor, (f32)this->collider.dim.height * 0.5f, (f32)this->collider.dim.radius * 0.6f,
                  0.0f, 5);
    if (this->unk_194.unk_00 == 0) {
        func_80A44AB0(this, globalCtx);
    }
    this->actionFunc(this, globalCtx);
    if (this->unk_211 == true) {
        func_80034F54(globalCtx, &this->unk_226, &this->unk_24A, 18);
    }
    func_80A45288(this, globalCtx);
    EnGo2_EyeMouthTexState(this);
    EnGo2_CheckCollision(this, globalCtx);
}

s32 EnGo2_DrawCurledUp(EnGo2* this, GlobalContext* globalCtx) {
    Vec3f D_80A48554 = { 0.0f, 0.0f, 0.0f };

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_go2.c", 2881);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_go2.c", 2884),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, &D_0600BD80);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_go2.c", 2889);

    Matrix_MultVec3f(&D_80A48554, &this->actor.posRot2);

    return 1;
}

s32 EnGo2_DrawRolling(EnGo2* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f D_80A48560 = { 0.0f, 0.0f, 0.0f };
    f32 speedXZ;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_go2.c", 2914);

    func_80093D18(globalCtx->state.gfxCtx);

    speedXZ = this->actionFunc == EnGo2_ReverseRolling ? 0.0f : this->actor.speedXZ;

    Matrix_RotateRPY((globalCtx->state.frames * ((s16)speedXZ * 1400)), 0, this->actor.shape.rot.z, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_go2.c", 2926),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, &D_0600C140);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_go2.c", 2930);
    Matrix_MultVec3f(&D_80A48560, &this->actor.posRot2);
    return 1;
}

s32 EnGo2_OverrideLimbDraw(GlobalContext* globalCtx, s32 limb, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnGo2* this = THIS;
    Vec3s vec1;
    f32 float1;

    if (limb == 17) {
        Matrix_Translate(2800.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        vec1 = this->unk_194.unk_08;
        float1 = (vec1.y / 32768.0f) * M_PI;
        Matrix_RotateX(float1, MTXMODE_APPLY);
        float1 = (vec1.x / 32768.0f) * M_PI;
        Matrix_RotateZ(float1, MTXMODE_APPLY);
        Matrix_Translate(-2800.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }
    if (limb == 10) {
        vec1 = this->unk_194.unk_0E;
        float1 = (vec1.y / 32768.0f) * M_PI;
        Matrix_RotateY(float1, MTXMODE_APPLY);
        float1 = (vec1.x / 32768.0f) * M_PI;
        Matrix_RotateX(float1, MTXMODE_APPLY);
    }
    if ((limb == 10) || (limb == 11) || (limb == 14)) {
        float1 = Math_Sins(this->unk_226[limb]);
        rot->y += float1 * 200.0f;
        float1 = Math_Coss(this->unk_24A[limb]);
        rot->z += float1 * 200.0f;
    }
    return 0;
}

void EnGo2_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnGo2* this = THIS;
    Vec3f D_80A4856C = { 600.0f, 0.0f, 0.0f };

    if (limbIndex == 17) {
        Matrix_MultVec3f(&D_80A4856C, &this->actor.posRot2.pos);
    }
}

void EnGo2_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnGo2* this = THIS;

    u8* sEyeTextures[] = { &D_0600DA80, &D_0600CE80, &D_0600D280, &D_0600D680 };
    u8* sMouthTextures[] = { &D_0600DE80, &D_0600E680 };

    EnGo2_UpdateDust(this);
    Matrix_Push();
    EnGo2_DrawDust(this, globalCtx);
    Matrix_Pull();

    if ((this->actionFunc == EnGo2_CurledUp) && (this->skelAnime.animPlaybackSpeed == 0.0f) &&
        (this->skelAnime.animCurrentFrame == 0.0f)) {
        if (1) {}
        EnGo2_DrawCurledUp(this, globalCtx);
        return;
    } else if (this->actionFunc == EnGo2_SlowRolling || this->actionFunc == EnGo2_ReverseRolling ||
               this->actionFunc == EnGo2_ContinueRolling) {
        EnGo2_DrawRolling(this, globalCtx);
        return;
    } else {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_go2.c", 3063);
        func_80093D18(globalCtx->state.gfxCtx);

        gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeTexIndex]));
        gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sMouthTextures[this->mouthTexIndex]));

        SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                              this->skelAnime.dListCount, EnGo2_OverrideLimbDraw, EnGo2_PostLimbDraw, this);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_go2.c", 3081);
    }
}
