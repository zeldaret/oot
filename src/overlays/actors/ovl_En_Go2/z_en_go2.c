#include "z_en_go2.h"
#include "overlays/actors/ovl_En_Bom/z_en_bom.h"

#define FLAGS 0x00000039

#define THIS ((EnGo2*)thisx)

// FLAGS
//
//
//
// gSaveContext.eventChkInf[2] & 8 - DC entrance boulder blown up as child

// InfTable

// gSaveContext.infTable[14] & 1 - Talked to DMT Goron at DC entrance (Before DC is opened as child)
// gSaveContext.infTable[14] & 0x40 - Talked to GC Goron at LW entrance (Before LW shortcut is opened)
// gSaveContext.infTable[15] & 0x100 - Talked to GC Goron outside Darunias door (after opening door, before getting
// goron bracelet) gSaveContext.infTable[14] & 0x800 - Talked to DMT Goron at Bomb Flower with goron bracelet
// gSaveContext.infTable[15] & 1 - Talked to Goron at GC Entrance (Before goron ruby is obtained)
// gSaveContext.infTable[15] & 0x10 - Talked to Goron at GC Island (Before goron ruby is obtained)

// EnGo
// this->actor.params & 0xF
//      - Only checks in func_80A3F300 if (this->actor.params & 0xF == 0xF), if so immediately ends and returns 0 (start
//      of the func)
// this->actor.params & 0xF0

// EnGo2
// (this->actor.params & 0x3E0) >> 5
// (this->actor.params & 0xFC00) >> 0xA
// (s16) this->actor.params & 0x1F
//

void EnGo2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGo2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGo2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGo2_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnGo2_SetUnkEffect(EnGo2* this, Vec3f* pos, Vec3f* velocity, Vec3f* accel, u8 unk_arg1, f32 unk_arg2, f32 unk_arg3);
void EnGo2_UpdateUnkEffect(EnGo2* this);
void EnGo2_DrawUnkEffect(EnGo2* this, GlobalContext* globalCtx);

s32 func_80A4320C(EnGo2* this, u8 unk_arg1, f32 unk_arg2, f32 unk_arg3, s32 unk_arg4, f32 unk_arg5, f32 unk_arg6);
void func_80A43424(EnGo2* this, GlobalContext* globalCtx, s32 getItemID);
s32 func_80A43468(EnGo2* this, GlobalContext* globalCtx);

u16 func_80A434E8(EnGo2* this);

// Remove
u16 EnGo2_getTextIdGoronCityRollingBig(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A435E8(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronDmtBombFlower(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A43714(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronDmtRollingSmall(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A4387C(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronDmtDcEntrance(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A43950(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronCityEntrance(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A43A2C(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronCityIsland(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A43B08(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronCityLowestFloor(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A43C40(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronCityLink(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A43D78(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronDmtBiggoron(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A44010(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronFireGeneric(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A44258(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronCityStairwell(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A4433C(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronMarketBazaar(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A443A8(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronCityLostWoods(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A4444C(GlobalContext* globalCtx, EnGo2* this);
u16 EnGo2_getTextIdGoronDmtFairyHint(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A444FC(GlobalContext* globalCtx, EnGo2* this);
// Unremove

u16 func_80A44534(GlobalContext* globalCtx, EnGo2* this);
u16 func_80A44678(GlobalContext* globalCtx, EnGo2* this);

s32 func_80A44790(EnGo2* this, GlobalContext* globalCtx);
void func_80A4488C(EnGo2* this);
void func_80A448C4(EnGo2* this);

void func_80A44940(EnGo2* this, GlobalContext* globalCtx);
void func_80A44A9C(EnGo2* this);

s32 func_80A44AB0(EnGo2* this, GlobalContext* globalCtx);
s32 EnGo2_UpdateWaypoint(EnGo2* this, GlobalContext* globalCtx);
s32 EnGo2_Orient(EnGo2* this, GlobalContext* globalCtx);

s32 func_80A44D84(EnGo2* this);
s32 func_80A44DC0(EnGo2* this);

s32 func_80A44EF0(EnGo2* this, s16 arg1, f32 arg2, s16 arg3);

void func_80A45088(EnGo2* this, GlobalContext* globalCtx, Actor* arg2);
void func_80A45288(EnGo2* this, GlobalContext* globalCtx);
void func_80A45360(EnGo2* this, f32* arg1);
void func_80A4546C(EnGo2* this);
void func_80A454CC(EnGo2* this);
f32 func_80A45578(EnGo2* this);
s32 func_80A4561C(EnGo2* this, GlobalContext* globalCtx);
void func_80A45734(EnGo2* this);
void func_80A4578C(EnGo2* this);
void func_80A457F8(EnGo2* this);
void func_80A45848(EnGo2* this);
void EnGo2_BlinkMouth(EnGo2* this);
void func_80A45A00(EnGo2* this);
void func_80A45B14(EnGo2* this, s32 unk_arg);
void func_80A45B9C(EnGo2* this, GlobalContext* globalCtx);
void func_80A45C50(EnGo2* this, GlobalContext* globalCtx);

void func_80A45D40(EnGo2* this, GlobalContext* globalCtx);
void func_80A45DA4(EnGo2* this, GlobalContext* globalCtx);
void func_80A45E48(EnGo2* this, GlobalContext* globalCtx);

s32 func_80A45F08(EnGo2* this, GlobalContext* globalCtx);

s32 func_80A45F9C(EnGo2* this);

s32 func_80A4601C(EnGo2* this, GlobalContext* globalCtx);
s32 func_80A4607C(EnGo2* this);
s32 func_80A460B8(EnGo2* this);
s32 func_80A46114(EnGo2* this);

void func_80A461A8(EnGo2* this, GlobalContext* globalCtx);
void func_80A462D8(EnGo2* this, GlobalContext* globalCtx);
void func_80A463D8(EnGo2* this, GlobalContext* globalCtx);
void func_80A46418(EnGo2* this);

void func_80A4696C(EnGo2* this, GlobalContext* globalCtx);
void func_80A46B40(EnGo2* this, GlobalContext* globalCtx);
void func_80A46CD8(EnGo2* this, GlobalContext* globalCtx);
void func_80A46D5C(EnGo2* this, GlobalContext* globalCtx);
void func_80A46DBC(EnGo2* this, GlobalContext* globalCtx);
void func_80A46E54(EnGo2* this, GlobalContext* globalCtx);
void func_80A46F88(EnGo2* this, GlobalContext* globalCtx);

void func_80A47024(EnGo2* this, GlobalContext* globalCtx);
void func_80A470E8(EnGo2* this, GlobalContext* globalCtx);
void func_80A47158(EnGo2* this, GlobalContext* globalCtx);
void func_80A4725C(EnGo2* this, GlobalContext* globalCtx);
void func_80A47490(EnGo2* this, GlobalContext* globalCtx);
void func_80A47578(EnGo2* this, GlobalContext* globalCtx);

s32 func_80A479B0(EnGo2* this, GlobalContext* globalCtx);
s32 func_80A47AB0(EnGo2* this, GlobalContext* globalCtx);

// Remove
s32 EnGo2_OverrideLimbDraw(GlobalContext* globalCtx, s32 limb, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx);
void EnGo2_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);
// Unremove


extern AnimationHeader D_06000750;
extern AnimationHeader D_06000D5C;
extern AnimationHeader D_06004930;
extern Gfx* D_0600BD80;
extern Gfx* D_0600C140;
extern Gfx* D_0600FD40;
extern Gfx* D_0600FD50;
extern FlexSkeletonHeader D_0600FEF0;

Gfx* D_80A480D0[] = { 0x040539B0, 0x040535B0, 0x040531B0, 0x04052DB0, 0x040529B0, 0x040525B0, 0x040521B0, 0x04051DB0 };

Vec3f D_80A480F0 = { 0.0f, 0.0f, 0.0f };
Vec3f D_80A480FC = { 0.0f, 0.0f, 0.0f };
Vec3f D_80A48108 = { 0.0f, 0.3f, 0.0f };

// static ColliderCylinderInit sCylinderInit =
ColliderCylinderInit D_80A48114 = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000008, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 40, 65, 0, { 0, 0, 0 } },
};

// static CollisionCheckInfoInit2 sColChkInfoInit
CollisionCheckInfoInit2 D_80A48140 = {
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

typedef struct {
    s16 unused;
    s16 yDist;
    s16 xzDist;
    s16 radius;
    s16 height;
} EnGo2DataStruct1; // size 0xA

typedef struct {
    f32 shape_unk_10;
    f32 scale;
    s8 actor_unk_1F;
    f32 unk_218;
} EnGo2DataStruct2; // size 0x10

typedef struct {
    u8 unk_0;
    f32 unk_4;
    f32 unk_8;
    s32 unk_C;
    f32 unk_10;
    f32 unk_14;
} EnGo2DataStruct3; // size 0x18

EnGo2DataStruct1 D_80A4816C[14] = {
    { 0x0000, 0x0000, 0x0000, 0x0044, 0x0094 }, { 0x0000, 0x0000, 0x0000, 0x0018, 0x0034 },
    { 0x0000, 0x0140, 0x017C, 0x0190, 0x0078 }, { 0x0000, 0x0000, 0x0000, 0x001E, 0x0044 },
    { 0x0000, 0x0000, 0x0000, 0x002E, 0x005A }, { 0x0000, 0x0000, 0x0000, 0x001E, 0x0044 },
    { 0x0000, 0x0000, 0x0000, 0x001E, 0x0044 }, { 0x0000, 0x0000, 0x0000, 0x001E, 0x0044 },
    { 0x0000, 0x0000, 0x0000, 0x001E, 0x0044 }, { 0x0000, 0x0000, 0x0000, 0x001E, 0x0044 },
    { 0x0000, 0x0000, 0x0000, 0x001E, 0x0044 }, { 0x0000, 0x0000, 0x0000, 0x001E, 0x0044 },
    { 0x0000, 0x0000, 0x0000, 0x001E, 0x0044 }, { 0x0000, 0x0000, 0x0000, 0x001E, 0x0044 }
};

EnGo2DataStruct2 D_80A481F8[14] = { { 30.0f, 0.026f, 0x06, 60.0f }, { 24.0f, 0.008f, 0x06, 30.0f },
                                    { 28.0f, 0.16f, 0x05, 380.0f }, { 28.0f, 0.01f, 0x07, 40.0f },
                                    { 30.0f, 0.015f, 0x06, 30.0f }, { 28.0f, 0.01f, 0x06, 30.0f },
                                    { 28.0f, 0.01f, 0x06, 30.0f },  { 28.0f, 0.01f, 0x06, 30.0f },
                                    { 28.0f, 0.01f, 0x06, 30.0f },  { 28.0f, 0.01f, 0x06, 30.0f },
                                    { 28.0f, 0.01f, 0x06, 30.0f },  { 28.0f, 0.01f, 0x06, 30.0f },
                                    { 28.0f, 0.01f, 0x06, 30.0f },  { 28.0f, 0.01f, 0x06, 30.0f } };

f32 D_80A482D8[14][2] = { { 80.0f, 80.0f }, { -10.0f, -10.0f }, { 800.0f, 800.0f }, { 0.0f, 0.0f },   { 20.0f, 40.0f },
                          { 20.0f, 20.0f }, { 20.0f, 20.0f },   { 20.0f, 20.0f },   { 20.0f, 20.0f }, { 20.0f, 20.0f },
                          { 20.0f, 20.0f }, { 20.0f, 20.0f },   { 20.0f, 20.0f },   { 20.0f, 20.0f } };

// sAnimations
struct_80034EC0_Entry D_80A48348[] = {
    { 0x06004930, 0.0f, 0.0f, -1.0f, 0x00, 0.0f },  { 0x06004930, 0.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { 0x060029A8, 1.0f, 0.0f, -1.0f, 0x00, -8.0f }, { 0x06010590, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { 0x06003768, 1.0f, 0.0f, -1.0f, 0x00, -8.0f }, { 0x060038E4, 1.0f, 0.0f, -1.0f, 0x02, -8.0f },
    { 0x06002D80, 1.0f, 0.0f, -1.0f, 0x02, -8.0f }, { 0x0600161C, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { 0x06001A00, 1.0f, 0.0f, -1.0f, 0x00, -8.0f }, { 0x060021D0, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { 0x06004930, 0.0f, 0.0f, -1.0f, 0x01, -8.0f }, { 0x06000750, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { 0x06000D5C, 1.0f, 0.0f, -1.0f, 0x00, -8.0f }
};

EnGo2DataStruct3 D_80A48480[2][4] = { { { 0x0C, 0.2f, 0.2f, 0x00000001, 18.0f, 0.0f },
                                        { 0x0C, 0.1f, 0.2f, 0x0000000C, 26.0f, 0.0f },
                                        { 0x0C, 0.1f, 0.3f, 0x00000004, 10.0f, 0.0f },
                                        { 0x0C, 0.2f, 0.2f, 0x00000001, 18.0f, 0.0f } },
                                      { { 0x0C, 0.5f, 0.4f, 0x00000003, 42.0f, 0.0f },
                                        { 0x0C, 0.5f, 0.4f, 0x00000003, 42.0f, 0.0f },
                                        { 0x0C, 0.5f, 0.4f, 0x00000003, 42.0f, 0.0f },
                                        { 0x0C, 0.5f, 0.4f, 0x00000003, 42.0f, 0.0f } } };

s32 D_80A48540[] = { 0x00000000, 0x00000000, 0x00000000 }; // unused padding from D_80A48480

void EnGo2_SetUnkEffect(EnGo2* this, Vec3f* pos, Vec3f* velocity, Vec3f* accel, u8 unk_arg1, f32 unk_arg2, f32 unk_arg3) {
    EnGoEffects* unkEffect;
    s16 i;
    s16 arg1;

    unkEffect = this->unk_270;

    for (i = 0; i < 10; i++) {
        if (unkEffect->unk_0 != 1) {
            unkEffect->unk_4 = unk_arg2;
            unkEffect->unk_8 = unk_arg3;
            if (1) {}
            arg1 = unk_arg1;
            unkEffect->unk_1 = arg1;
            unkEffect->unk_0 = 1;
            unkEffect->unk_2 = unk_arg1;
            unkEffect->pos = *pos;
            unkEffect->accel = *accel;
            unkEffect->velocity = *velocity;
            return;
        }
        unkEffect++;
    }
}

void EnGo2_UpdateUnkEffect(EnGo2* this) {
    EnGoEffects* unkEffect;
    f32 randomNumber;
    s16 i;

    unkEffect = this->unk_270;

    for (i = 0; i < 10; i++) {
        if (unkEffect->unk_0) {
            unkEffect->unk_1--;

            if ((unkEffect->unk_1) == 0) {
                unkEffect->unk_0 = 0;
            }

            unkEffect->accel.x = (Math_Rand_ZeroOne() * 0.4f) - 0.2f;
            randomNumber = Math_Rand_ZeroOne() * 0.4f;
            unkEffect->accel.z = randomNumber - 0.2f;
            unkEffect->pos.x += unkEffect->velocity.x;
            unkEffect->pos.y += unkEffect->velocity.y;
            unkEffect->pos.z += unkEffect->velocity.z;
            unkEffect->velocity.x += unkEffect->accel.x;
            unkEffect->velocity.y += unkEffect->accel.y;
            unkEffect->velocity.z += randomNumber - 0.2f;
            unkEffect->unk_4 += unkEffect->unk_8;
        }
        unkEffect++;
    }
}

void EnGo2_DrawUnkEffect(EnGo2* this, GlobalContext* globalCtx) {
    EnGoEffects* unkEffect;
    s16 alpha;
    s16 phi_s7;
    s16 alphaIndex;
    s16 i;

    unkEffect = this->unk_270;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_go2_eff.c", 0x6F);

    phi_s7 = 0;
    func_80093D84(globalCtx->state.gfxCtx);

    if (1) {}
    for (i = 0; i < 10; i++) {
        if (unkEffect->unk_0) {
            if (phi_s7 == 0) {
                POLY_XLU_DISP = Gfx_CallSetupDL(POLY_XLU_DISP, 0);
                gSPDisplayList(POLY_XLU_DISP++, &D_0600FD40);
                gDPSetEnvColor(POLY_XLU_DISP++, 0x64, 0x3C, 0x14, 0x00);
                phi_s7 = 1;
            }

            alpha = (s16)(unkEffect->unk_1 * (255.0f / unkEffect->unk_2));
            gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 0xAA, 0x82, 0x5A, alpha);
            gDPPipeSync(POLY_XLU_DISP++);
            Matrix_Translate(unkEffect->pos.x, unkEffect->pos.y, unkEffect->pos.z, MTXMODE_NEW);
            func_800D1FD4(&globalCtx->mf_11DA0);
            Matrix_Scale(unkEffect->unk_4, unkEffect->unk_4, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_go2_eff.c", 0x89),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            alphaIndex = (s16)(unkEffect->unk_1 * (8.0f / unkEffect->unk_2));
            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80A480D0[alphaIndex]));
            gSPDisplayList(POLY_XLU_DISP++, &D_0600FD50);
        }
        unkEffect++;
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_go2_eff.c", 0x97);
}

s32 func_80A4320C(EnGo2* this, u8 unk_arg1, f32 unk_arg2, f32 unk_arg3, s32 unk_arg4, f32 unk_arg5, f32 unk_arg6) {
    Vec3f pos;
    Vec3f velocity;
    Vec3f accel;
    s32 i;
    s16 angle;

    pos = D_80A480F0;
    velocity = D_80A480FC;
    accel = D_80A48108;
    pos = this->actor.posRot.pos;
    pos.y = this->actor.groundY;
    angle = (s16)((Math_Rand_ZeroOne() - 0.5f) * 65536.0f);

    // has to be in one line to match???
    for (i = unk_arg4; i >= 0; i--) {accel.y += (Math_Rand_ZeroOne()) * unk_arg6; pos.x = (Math_Sins(angle) * unk_arg5) + this->actor.posRot.pos.x; pos.z = (Math_Coss(angle) * unk_arg5) + this->actor.posRot.pos.z; EnGo2_SetUnkEffect(this, &pos, &velocity, &accel, unk_arg1, unk_arg2, unk_arg3); angle += (s16)(0x10000 / unk_arg4);
    }

    return 0;
}

void func_80A43424(EnGo2* this, GlobalContext* globalCtx, s32 getItemID) {
    this->getItemID = getItemID;
    func_8002F434(&this->actor, globalCtx, getItemID, this->actor.xzDistFromLink + 1.0f,
                  fabsf(this->actor.yDistFromLink) + 1.0f);
}

s32 func_80A43468(EnGo2* this, GlobalContext* globalCtx) {
    s16 dialogState;

    dialogState = func_8010BDBC(&globalCtx->msgCtx);

    if ((this->dialogState == 0xA) || (this->dialogState == 5) || (this->dialogState == 2) || (this->dialogState == 1)) {
        if (dialogState != this->dialogState) {
            this->unk_20C++;
        }
    }

    this->dialogState = dialogState;
    return dialogState;
}

u16 func_80A434E8(EnGo2* this) {

    switch ((this->actor.params & 0xFC00) >> 0xA) {
        case 3:
            // "I'll tell you a secret for saving me!
            // In this temple, there are doors that fall down when you try to  open them.
            // When one of these doors starts to fall, move!
            // If you use a sample of the Goron \"special crop,\" you can break it..."
            return 0x3069;
        case 5:
            // "Let me tell you a secret as a reward for releasing me!
            // When you are on fire, you can put it out by swinging your sword, or by rolling forward...
            // Did you know that?"
            return 0x306A;
        case 4:
            // "Here's a tip for rescuing me!
            // Somewhere in this temple, you're sure to meet up with some creatures that dance as they attack.
            // Arrows won't hurt them!
            // Looks like you might need some of the Goron \"special crop!\" That's all I have to tell you!"
            return 0x306B;
        case 2:
            // "I'll tell you a secret for saving me!
            // There are switches in this temple that you have to cut to activate.
            // But, you can also use the Goron \"special crop\" to do the job."
            return 0x306C;
        case 10:
            // "I'll tell you a secret for saving me!
            // If you find a place that you can see on the map, but can't reach, try playing your Ocarina!"
            return 0x306D;
        case 8:
            // "I'll tell you a secret for saving me!
            // In order to get into the room where Darunia went, you have to do something about the pillar stuck in the
            // ceiling. Find a path that leads to a room above the ceiling right away!"
            return 0x306E;
        case 11:
            // "I'll tell you a secret for saving me!
            // A door is hidden inside the statue at the entrance to this temple.
            // But, the Goron \"special crop\" won't work on it... Don't you have anything stronger?"
            return 0x306F;
        case 1:
            // "Here's a secret for saving me!
            // A wall that you can destroy with the Goron's \"special crop\"
            // will sound different than a regular wall if you hit it with your sword."
            return 0x3070;
        default:
            // "Oh, I see. Big Brother Darunia asked you to rescue me. I owe you big time!  Please help Big Brother!"
            return 0x3052;
    }
}

u16 EnGo2_getTextIdGoronCityRollingBig(GlobalContext* globalCtx, EnGo2* this) {

    if (gSaveContext.infTable[17] & 0x4000) {
        // "Thank you! Let me express my joy with more wild rolling!"
        return 0x3013;
    }
    if (CUR_CAPACITY(UPG_BOMB_BAG) >= 20) {
        if ((this->waypoint >= 8) && (this->waypoint < 0xC)) {
            // "All right! I'll give you this in praise of your courage!"
            return 0x3012;
        }
    }
    // "Why did you stop me? Don't stop me here!
    // You can't stop my wild rolling!
    // This wild rolling is the only way to relieve my stress!
    // Now stand in awe of my wild, wild rolling!!"
    return 0x3011;
}

u16 func_80A435E8(GlobalContext* globalCtx, EnGo2* this) {

    s32 bombBagUpgrade;

    switch (func_8010BDBC(&globalCtx->msgCtx)) {

        case 2:
            return 2;

        case 5:
            if (func_80106BC8(globalCtx)) {
                if (this->actor.textId == 0x3012) {
                    this->actionFunc = func_80A470E8;
                    bombBagUpgrade = CUR_CAPACITY(UPG_BOMB_BAG) == 30 ? GI_BOMB_BAG_40 : GI_BOMB_BAG_30;
                    func_80A43424(this, globalCtx, bombBagUpgrade);
                    func_80106CCC(globalCtx);
                    gSaveContext.infTable[17] |= 0x4000;
                    return 2;
                }
                return 2;
            }

        default:
            return 1;
    }
}

// DMT Goron by bomb flower
u16 EnGo2_getTextIdGoronDmtBombFlower(GlobalContext* globalCtx, EnGo2* this) {

    // 0x3027
    // "You are incredible, destroying  the Dodongos! Do you mind if I  call you Big Brother?"

    // 0x300A
    // "I'm standing here to shade the Bomb Flowers from the sun.
    // Do you have a question for me?  Ask about Bomb Flowers Ask about Dodongo's Cavern"

    return CHECK_QUEST_ITEM(QUEST_GORON_RUBY) ? 0x3027 : 0x300A;
}

// DMT Goron by Bomb Flower Choice
u16 func_80A43714(GlobalContext* globalCtx, EnGo2* this) {

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
                        // 0x300B
                        // "Those plants growing over there  are Bomb Flowers.
                        // They are \"mining plants\" that grow only on this mountain.
                        // The flower's fruit is the raw  material for bombs.
                        // But a non-Goron amateur should  never pick the Bomb Flowers'  fruit!
                        // They usually grow only in dark  places, so Bomb Flowers that grow in a place like this are
                        // extremely rare."
                        //
                        // 0x300C
                        // "Those plants growing over there  are Bomb Flowers.
                        // They are \"mining plants\" that grow only on this mountain.
                        // They usually grow only in dark  places, like caves, so Bomb  Flowers that grow in a place
                        // like this are extremely rare. If you have the Goron's Bracelet, even a little kid like you
                        // could easily pick it with [A]."
                        this->actor.textId = CUR_UPG_VALUE(UPG_STRENGTH) ? 0x300B : 0x300C;
                    } else {
                        // "Did you see the cavern on your  way here? That is the Dodongo's  Cavern.
                        // Because the light inside is very  dim, the Bomb Flowers,
                        // a plant  unique to this mountain, grow like crazy in there!" },
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

// DMT Small Rolling Goron
u16 EnGo2_getTextIdGoronDmtRollingSmall(GlobalContext* globalCtx, EnGo2* this) {

    if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        // "You are incredible, destroying  the Dodongos! Do you mind if I  call you Big Brother?"
        return 0x3027;
    } else {

        // 0x3026
        // "Oh, I see... We should have thrown the  Bomb from the cliff..."

        // 0x3009
        // "I wish I could roll down the  mountain like a rock, with a Bomb Flower and...  BOOOOOOM!
        // If I could do that with a Bomb  Flower, I could become a real man."
        return (gSaveContext.eventChkInf[2] & 8) ? 0x3026 : 0x3009;
    }
}

u16 func_80A4387C(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        return 0;
    } else {
        return 1;
    }
}

// Goron in front of DC Entrance
u16 EnGo2_getTextIdGoronDmtDcEntrance(GlobalContext* globalCtx, EnGo2* this) {
    s32 phi_v1;
    s32 phi_v0;

    // temp_v0 = gSaveContext.inventory.questItems;
    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && LINK_IS_ADULT) {
        // "Thank you, [Link]!!"
        return 0x3043;
    }
    if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        // "You are incredible, destroying  the Dodongos! Do you mind if I  call you Big Brother?"
        return 0x3027;
    }
    if (gSaveContext.eventChkInf[2] & 8) {
        // "Oh, now we can enter the cavern. You're so smart!"
        phi_v1 = 0x3021;
    } else {
        if (gSaveContext.infTable[14] & 1) {
            // "If you want to hear more Goron gossip, head up to our city!
            // Goron City is just a little way up the trail. It won't take much longer to get there, even on foot."
            phi_v0 = 0x302A;
        } else {
            // "I am one of the Gorons, the stone-eating people who live on Death Mountain.
            // Look at that huge boulder over there!
            // It blocks the entrance to the Dodongo's Cavern, which was once a very important place for us Gorons...
            // But one day, many Dodongos suddenly appeared inside the  cavern. It became a very  dangerous place!
            // On top of that, a Gerudo in black armor used his magic to seal the entrance with that boulder!
            // [goto 302A]
            phi_v0 = 0x3008;
            //
        }
        phi_v1 = phi_v0;
    }
    return phi_v1;
}

u16 func_80A43950(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        if (this->actor.textId == 0x3008) {
            gSaveContext.infTable[14] |= 1;
        }
        return 0;
    } else {
        return 1;
    }
}

// Goron at GC Entrance
u16 EnGo2_getTextIdGoronCityEntrance(GlobalContext* globalCtx, EnGo2* this) {

    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && LINK_IS_ADULT) {
        // "Thank you, [Link]!!"
        return 0x3043;

    } else if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        // "You are incredible, destroying  the Dodongos! Do you mind if I  call you Big Brother?"
        return 0x3027;

    } else {
        // 3014
        // "Oh...I'm so hungry...  Everyone feels faint from hunger because of the food shortage in  this town.
        // We are in danger of  extinction!  It's all because we can't enter our quarry, the Dodongo's Cavern.
        // We Gorons live on a diet of  rocks...  And the most delicious and  nutritious rocks around are found  in the
        // Dodongo's Cavern! But that  seems like ancient history now...  We've become such gourmets that  we can't
        // stand to eat rocks from anywhere else! [goto 3015]" },

        // 3015
        // "Sigh... I want to eat the top sirloin rocks from the Dodongo's  Cavern!"
        return gSaveContext.infTable[15] & 1 ? 0x3015 : 0x3014;
    }
}

u16 func_80A43A2C(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        if (this->actor.textId == 0x3014) {
            gSaveContext.infTable[15] |= 1;
        }
        return 0;
    } else {
        return 1;
    }
}

// Goron in GC in stranded island
u16 EnGo2_getTextIdGoronCityIsland(GlobalContext* globalCtx, EnGo2* this) {

    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && LINK_IS_ADULT) {
        // "Thank you, [Link]!!"
        return 0x3043;
    } else if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        // "Did you get the red stone? Let me get one little lick!  No? Booooo!"
        return 0x3067;
    } else {
        // 0x3016
        // "Hey!  It's dangerous for a little kid like you to come out here. You might  fall down!
        // If I'm not mistaken, you came out here to eat the red stone! Well, too bad! It's not here!  What? That's not
        // why you're here? You're looking for a \"Spiritual Stone ? \" You must mean that  delicious-looking red stone
        // that was once displayed here! I was so hungry that I thought it would be OK to just give it one tiny little
        // lick...so I snuck out here. But, it was already gone! I think Big Brother took it away.  He always says that
        // everyone is after that red stone! [goto 3017]"

        // 0x3017
        // "Big Brother has shut himself up in his room saying, \"I will wait in here for the  Royal Family's
        // messenger!\""

        return gSaveContext.infTable[15] & 0x10 ? 0x3017 : 0x3016;
    }
}

u16 func_80A43B08(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        if (this->actor.textId == 0x3016) {
            gSaveContext.infTable[15] |= 0x10;
        }
        return 0;
    } else {
        return 1;
    }
}

// Goron in GC outside Darunia's door
u16 EnGo2_getTextIdGoronCityLowestFloor(GlobalContext* globalCtx, EnGo2* this) {
    u32 temp_v0;
    s32 phi_v1;
    s32 phi_v0;
    s32 phi_v1_2;

    temp_v0 = gSaveContext.inventory.questItems;
    if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) && LINK_IS_ADULT) {
        // "Thank you, [Link]!!"
        return 0x3043;
    }
    if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        // "You are incredible, destroying  the Dodongos! Do you mind if I  call you Big Brother?"
        return 0x3027;
    }
    if (CUR_UPG_VALUE(UPG_STRENGTH)) {
        // "When all the torches on this floor are lit, Goron City is really lively!"
        phi_v1 = 0x302C;
    } else {
        if (Flags_GetSwitch(globalCtx, 0x1B) == 0) {
            // "Big Brother has shut himself up in his room saying, \"I will wait in here for the  Royal Family's
            // messenger!\""
            phi_v0 = 0x3017;
        } else {
            if (gSaveContext.infTable[15] & 0x100) {
                // "I remember Big Brother used to always listen to the music that comes from the forest...
                // Ah yes, the good old days... That music makes me feel nostalgic, too...
                // [goto 302C]"
                phi_v1_2 = 0x3019;
            } else {
                // "I'm so hungry that I can't think about anything but food!  Ask Big Brother about complicated things.
                // If he's in a bad mood, he'll  probably get mad at you...it can be pretty scary. But...  I know his
                // SECRET. He may not look like the type, but Big Brother loves to dance! If he gets in a rhythm, he'll
                // surely... [goto 3019]"
                phi_v1_2 = 0x3018;
            }
            phi_v0 = phi_v1_2;
        }
        phi_v1 = phi_v0;
    }
    return phi_v1;
}

u16 func_80A43C40(GlobalContext* globalCtx, EnGo2* this) {
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
        // 0x3041
        // "Brother [Link]! Everybody has come back!  Dad and you destroyed the dragon together, didn't you![goto 3042]"

        // 0x3042
        // "When I grow up, I want to be a strong man like you,  [Link]!"
        return gSaveContext.infTable[16] & 0x8000 ? 0x3042 : 0x3041;
    } else if (CHECK_OWNED_EQUIP(EQUIP_TUNIC, 1)) {
        // 0x3037
        // "Dad told me not to let anybody  follow him to the temple, but...  Only you, [Link], can save everyone!
        // I'm sure that the shop owner, who is hiding somewhere right now, will also help you!
        // Now, I'll tell you about the secret passage to the Fire Temple![goto 3038]"

        // 0x3038
        // "Try to move the statue inside Dad's room!"
        return gSaveContext.infTable[16] & 0x4000 ? 0x3038 : 0x3037;
    } else if (gSaveContext.infTable[16] & 0x1000) {
        this->unk_20C = 0;
        this->dialogState = 0;
        // 0x3032
        // What?  Your name is also [Link]?  Then you must be the legendary Dodongo Buster and Hero,  [Link]!
        // My dad is Darunia... Do you remember him?  Dad named me [Link] after you, because you're so  brave!  It's a
        // cool name! I really like it!  [Link], you're a hero to  us Gorons!  I'm so glad to meet you!  Please give me
        // your autograph! Sign it: \"To my friend,[Link] of the Gorons\"  Oh...  I guess it's not a good time to ask
        // you for this... Please help everyone!  My dad, Darunia, went to the Fire Temple. A dragon is inside! If we
        // don't hurry up, even my dad will be eaten by the dragon!! [goto 3033]"

        // 0x3033
        // "B-b-b-boooo hooooo!"
        return gSaveContext.infTable[16] & 0x400 ? 0x3033 : 0x3032;
    } else {
        // "I won't let you get me!  You probably work for Ganondorf!"
        return 0x3030;
    }
}

u16 func_80A43D78(GlobalContext* globalCtx, EnGo2* this) {

    switch (func_80A43468(this, globalCtx)) {
        case 2:
            switch (this->actor.textId) {
                // 0x3036
                // "Everybody was taken to the  Fire Temple...  While my dad was out... Ganondorf's followers
                // came and took them all away! All of them will be eaten by Volvagia!  Dad said that Ganondorf
                // has revived Volvagia... As a warning to those who might oppose him, Ganondorf is going to
                // feed them all to Volvagia! Dad went to the Fire Temple all by himself to try to save
                // everyone... Please help, [Link]! I'll give you this heat-resistant tunic!"
                case 0x3036:
                    func_80A43424(this, globalCtx, 0x2C);
                    this->actionFunc = func_80A470E8;
                    return 2;

                // "Dad told me not to let anybody  follow him to the temple, but...  Only you, [Link], can save everyone!  
                // I'm sure that the shop owner, who is hiding somewhere right now, will also help you! 
                // Now, I'll tell you about the secret passage to the Fire Temple![goto 3038]"
                case 0x3037:
                    gSaveContext.infTable[16] |= 0x4000;
                default:
                    return 0;
            }

        case 4:
            if (func_80106BC8(globalCtx)) {

                // "You'd better try to calm him down if you can... 
                // Maybe he will calm down if you  talk to him?  What do you want to ask him?  About the dragon About the Gorons"
                if (this->actor.textId == 0x3034) {
                    if (globalCtx->msgCtx.choiceIndex == 0) {
                        // 0x3035
                        // "A long time ago there was an evil dragon named Volvagia living  in this mountain.
                        // That dragon was very scary! He ate Gorons!  Using a huge hammer, the hero of the Gorons...
                        // BOOOM! Destroyed it just like that. This is  a myth from long ago, but it's  true! I know,
                        // because my dad is a descendant of the hero! [goto 3033]"

                        // 0x3033
                        // "B-b-b-boooo hooooo!"
                        this->actor.textId = gSaveContext.infTable[16] & 0x800 ? 0x3033 : 0x3035;
                        if (this->actor.textId == 0x3035) {
                            func_800F8D04(0x39EB);
                        }
                    } else {
                        // 0x3036
                        // "Everybody was taken to the  Fire Temple...  While my dad was out... Ganondorf's followers
                        // came and took them all away! All of them will be eaten by Volvagia!  Dad said that Ganondorf
                        // has revived Volvagia... As a warning to those who might oppose him, Ganondorf is going to
                        // feed them all to Volvagia! Dad went to the Fire Temple all by himself to try to save
                        // everyone... Please help, [Link]! I'll give you this heat-resistant tunic!"

                        // 0x3033
                        // "B-b-b-boooo hooooo!"
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
                    // 0x3035
                    // "A long time ago there was an evil dragon named Volvagia living  in this mountain.  
                    // That dragon was very scary! He ate Gorons!  Using a huge hammer, the hero of the Gorons... BOOOM!  
                    // Destroyed it just like that. This is  a myth from long ago, but it's  true!  
                    // I know, because my dad is a descendant of the hero![goto 3033]" },
                    case 0x3035:
                        gSaveContext.infTable[16] |= 0x800;

                    // 0x3032
                    // "What?  Your name is also [Link]?  Then you must be the legendary Dodongo Buster and Hero,  [Link]!  
                    // My dad is Darunia... Do you remember him?  Dad named me [Link] after you, because you're so  brave!  It's a cool name! 
                    // I really like it!  [Link], you're a hero to  us Gorons!  I'm so glad to meet you!  Please give me your autograph! 
                    // Sign it: \"To my friend,[Link] of the Gorons\"  Oh...  I guess it's not a good time to ask you for this... 
                    // Please help everyone!  My dad, Darunia, went to the Fire Temple. A dragon is inside!  
                    // If we don't hurry up, even my dad will be eaten by the dragon!![goto 3033]" 

                    // 0x3033
                    // "B-b-b-boooo hooooo!"
                    case 0x3032:
                    case 0x3033:

                        // "You'd better try to calm him down if you can... 
                        // Maybe he will calm down if you  talk to him?  What do you want to ask him?  About the dragon About the Gorons"
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
    Player* player;

    player = PLAYER;
    if (gSaveContext.bgsFlag) {
        player->exchangeItemId = EXCH_ITEM_CLAIM_CHECK;
        // "That sworrrrd is my finest  worrrrk!"
        return 0x305E;
    }

    if (INV_CONTENT(ITEM_POCKET_EGG) >= ITEM_CLAIM_CHECK) {
        player->exchangeItemId = EXCH_ITEM_CLAIM_CHECK;
        // "That sworrrrd is my finest  worrrrk!"
        return 0x305E;
    }
    if (INV_CONTENT(ITEM_POCKET_EGG) >= ITEM_PRESCRIPTION) {
        player->exchangeItemId = EXCH_ITEM_EYEDROPS;
        // "I've been waiting forrrrr you, with tearrrrrrs in my eyes... Please say hello to Kinnng Zorrra!"
        return 0x3058;
    }
    player->exchangeItemId = EXCH_ITEM_SWORD_BROKEN;
    // "My Brotherrrr... Opened a new storrrre... It's Medigoron's Blade Storrrrrrrre...  Howeverrrrr...
    // I am betterrrrrr at making bladessssss.  Hylian carpenterrrrrs praise me forrrrrr my skillssssss. I'm not
    // lyinnnnng..."
    return 0x3053;
}

u16 func_80A44010(GlobalContext* globalCtx, EnGo2* this) {

    s32 pad;
    u8 dialogState;
    dialogState = this->dialogState;

    switch (func_80A43468(this, globalCtx)) {

        case 6:
            // "That sworrrrd is my finest  worrrrk!"
            if (this->actor.textId == 0x305E) {
                if (gSaveContext.bgsFlag == 0) {
                    func_80A43424(this, globalCtx, 0x57);
                    this->actionFunc = func_80A470E8;
                    return 2;
                } else {
                    return 0;
                }
            } else {
                return 0;
            }

        case 3:
            switch (this->actor.textId) {

                // "That sworrrrd is my finest  worrrrk!"
                case 0x305E:
                    if (func_8002F368(globalCtx) != 0xF) {
                        break;
                    }

                case 0x3059:
                    if (dialogState == 0) {
                        func_800F4524(&D_801333D4, NA_SE_EN_GOLON_WAKE_UP, 60);
                    }

                case 0x3054:
                    if (dialogState == 0) {
                        Audio_PlaySoundGeneral(0x4807, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    }
            }
            return 1;

        case 4:
            if (func_80106BC8(globalCtx)) {
                if ((this->actor.textId == 0x3054) || (this->actor.textId == 0x3055)) {
                    if (globalCtx->msgCtx.choiceIndex == 0) {
                        func_80A43424(this, globalCtx, 0x23);
                        this->actionFunc = func_80A470E8;
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
                    this->actionFunc = func_80A4725C;
                }
                return 2;
            }
    }
    return 1;
}

u16 EnGo2_getTextIdGoronFireGeneric(GlobalContext* globalCtx, EnGo2* this) {
    if (Flags_GetSwitch(globalCtx, (this->actor.params & 0xFC00) >> 0xA)) {
        // "Are you releasing me? Am I free to go?"
        return 0x3071;
    } else {
        // "Please...Don't...Eat me... If you eat something like me, you'll get a stomach ache!  You'll be sorry!!"
        return 0x3051;
    }
}

u16 func_80A44258(GlobalContext* globalCtx, EnGo2* this) {

    switch (func_8010BDBC(&globalCtx->msgCtx)) {
        case 2:
            return 0;

        case 5:
            if (func_80106BC8(globalCtx)) {
                // // "Are you releasing me? Am I free to go?"
                if (this->actor.textId == 0x3071) {
                    this->actor.textId = func_80A434E8(this);
                    func_8010B720(globalCtx, this->actor.textId);
                }
                return 1;
            }

        default:
            return 1;
    }
}

// Goron in GC stairwell
u16 EnGo2_getTextIdGoronCityStairwell(GlobalContext* globalCtx, EnGo2* this) {
    s32 phi;
    s32 phi2;

    if (LINK_IS_CHILD) {
        if (gSaveContext.infTable[14] & 8) {
            // "I know a trick to conserve sticks! If you light a stick on fire, it will  burn to ashes.
            // Press [A] to put it away before it completely burns!  By the way, I hid a stick somewhere... Hehehee..."
            phi = 0x3022;
        } else {
            // "Oh?  We don't get many visitors way up here. Where are you from?  The forest?
            // What's a \"forest\"?  Eh?  It's where a lot of \"trees\" and  \"plants\" grow?  Now I'm even more
            // confused! Nothing grows around here besides the Bomb Flowers...  We don't have \"seeds\" or \"nuts\"
            // around here either. Even Deku Sticks are very scarce around here! [goto 3022]"
            phi = 0x300E;
        }
        phi2 = phi;
    } else {
        // "Thank you, [Link]!!"
        phi2 = 0x3043;
    }
    return phi2;
}

u16 func_80A4433C(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        if (this->actor.textId == 0x300E) {
            gSaveContext.infTable[14] |= 0x8;
        }
        return 0;
    }
    return 1;
}

// Goron in market after ruby
u16 EnGo2_getTextIdGoronMarketBazaar(GlobalContext* globalCtx, EnGo2* this) {
    // "I came here to sell bombs... Please buy some!"
    return 0x7122;
}

u16 func_80A443A8(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        return 0;
    }
    return 1;
}

// Goron in GC in front of Lost Woods
u16 EnGo2_getTextIdGoronCityLostWoods(GlobalContext* globalCtx, EnGo2* this) {
    s32 phi;
    if (LINK_IS_CHILD) {
        if (Flags_GetSwitch(globalCtx, 0x1C)) {
            // "How was Big Brother? I see...  By the way, do you know the music coming from deep inside of this tunnel?
            // We all like this music!"
            return 0x302F;
        } else {
            if (gSaveContext.infTable[14] & 0x40) {
                // "I want you to bring fire from Big Brother's room back here."
                phi = 0x3025;
            } else {
                // "I'm so hungry that I can't think about anything but food!  \"Spiritual Stone ? \"
                // That red stone that was lighting up our city?  Big Brother Darunia took it away.
                // Then, he shut himself up in his room and won't come out.
                // Since then, it feels like all the lights in the city have gone  out... Everyone seems so...
                // depressed... [goto 3025]"
                phi = 0x3024;
            }
            return phi;
        }
    }

    // "Thank you, [Link]!!"
    return 0x3043;
}

u16 func_80A4444C(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        if (this->actor.textId == 0x3024) {
            gSaveContext.infTable[14] |= 0x40;
        }
        return 0;
    }
    return 1;
}

// Goron at base of DMT summit to fairy
u16 EnGo2_getTextIdGoronDmtFairyHint(GlobalContext* globalCtx, EnGo2* this) {
    s32 phi;
    if (LINK_IS_CHILD) {
        if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
            // "They say that a fairy lives on top of Death Mountain.
            // If you want to make it to the top, you'd better take a big shield with you..."
            phi = 0x3065;
        } else {
            // "They say that a beautiful fairy lives on top of Death Mountain!  Don't you want to see her?"
            phi = 0x3064;
        }
        return phi;
    }
    // "Thank you, [Link]!!"
    return 0x3043;
}

u16 func_80A444FC(GlobalContext* globalCtx, EnGo2* this) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        return 0;
    }
    return 1;
}

u16 func_80A44534(GlobalContext* globalCtx, EnGo2* this) {
    u16 temp_ret;

    temp_ret = Text_GetFaceReaction(globalCtx, 0x20);

    if (temp_ret) {
        return temp_ret;
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

u16 func_80A44678(GlobalContext* globalCtx, EnGo2* this) {

    switch (this->actor.params & 0x1F) {
        case GORON_CITY_ROLLING_BIG:
            return func_80A435E8(globalCtx, this);
        case GORON_CITY_LINK:
            return func_80A43D78(globalCtx, this);
        case GORON_DMT_BIGGORON:
            return func_80A44010(globalCtx, this);
        case GORON_FIRE_GENERIC:
            return func_80A44258(globalCtx, this);
        case GORON_DMT_BOMB_FLOWER:
            return func_80A43714(globalCtx, this);
        case GORON_DMT_ROLLING_SMALL:
            return func_80A4387C(globalCtx, this);
        case GORON_DMT_DC_ENTRANCE:
            return func_80A43950(globalCtx, this);
        case GORON_CITY_ENTRANCE:
            return func_80A43A2C(globalCtx, this);
        case GORON_CITY_ISLAND:
            return func_80A43B08(globalCtx, this);
        case GORON_CITY_LOWEST_FLOOR:
            return func_80A43C40(globalCtx, this);
        case GORON_CITY_STAIRWELL:
            return func_80A4433C(globalCtx, this);
        case GORON_CITY_LOST_WOODS:
            return func_80A4444C(globalCtx, this);
        case GORON_DMT_FAIRY_HINT:
            return func_80A444FC(globalCtx, this);
        case GORON_MARKET_BAZAAR:
            return func_80A443A8(globalCtx, this);
    }
}

s32 func_80A44790(EnGo2* this, GlobalContext* globalCtx) {

    if ((this->actor.params & 0x1F) != GORON_DMT_BIGGORON && (this->actor.params & 0x1F) != GORON_CITY_ROLLING_BIG) {
        return func_800343CC(globalCtx, &this->actor, &this->unk_194, this->unk_218, func_80A44534, func_80A44678);
    }
    if (((this->actor.params & 0x1F) == GORON_DMT_BIGGORON) && ((this->collider.base.maskB & 1) == 0)) {
        return false;
    } else {
        if (func_8002F194(&this->actor, globalCtx)) {
            this->unk_194.unk_00 = 1;
            return true;
        }
        if (this->unk_194.unk_00) {
            this->unk_194.unk_00 = func_80A44678(globalCtx, this);
            return false;
        } else if (func_8002F2CC(&this->actor, globalCtx, this->unk_218)) {
            this->actor.textId = func_80A44534(globalCtx, this);
        }
    }
    return false;
}

void func_80A4488C(EnGo2* this) {
    u8 index;

    index = this->actor.params & 0x1F;

    this->collider.dim.radius = (&D_80A4816C[index])->radius;
    this->collider.dim.height = (&D_80A4816C[index])->height;
}

void func_80A448C4(EnGo2* this) {
    u8 index;

    index = this->actor.params & 0x1F;
    this->actor.shape.unk_10 = (&D_80A481F8[index])->shape_unk_10;
    Actor_SetScale(&this->actor, (&D_80A481F8[index])->scale);
    this->actor.unk_1F = (&D_80A481F8[index])->actor_unk_1F;
    this->unk_218 = (&D_80A481F8[index])->unk_218;
    this->unk_218 += this->collider.dim.radius;
}

void func_80A44940(EnGo2* this, GlobalContext* globalCtx) {

    Vec3s vec1;
    f32 new_var;

    vec1.x = this->actor.posRot.pos.x;
    vec1.y = this->actor.posRot.pos.y;
    vec1.z = this->actor.posRot.pos.z;

    new_var = (&(D_80A4816C)[(this->actor.params & 0x1F)])->xzDist;

    vec1.x += (s16)(new_var * Math_Sins(this->actor.shape.rot.y));
    vec1.z += (s16)(new_var * Math_Coss(this->actor.shape.rot.y));

    vec1.y += (&(D_80A4816C)[this->actor.params & 0x1F])->yDist;

    this->collider.dim.pos = vec1;

    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
}

void func_80A44A9C(EnGo2* this) {
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
        return 0;
    } else {
        if ((this->actionFunc != func_80A46E54) && (this->actionFunc != func_80A47024) &&
            (this->actionFunc != func_80A46DBC)) {
            return 0;
        } else {
            if (this->collider.base.acFlags & 2) {
                Audio_PlaySoundGeneral(0x4802, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->actor.flags &= ~0x1000000;
                this->collider.base.acFlags &= ~0x2;
                func_80A45E48(this, globalCtx);
                return 1;
            }
            if (player->invincibilityTimer <= 0) {
                this->collider.base.maskA |= 8;
            } else {
                return 0;
            }
            if (this->collider.base.maskB & 1) {
                this->collider.base.maskB &= ~1;

                arg2 = this->actionFunc == func_80A46DBC ? 1.5f : this->actor.speedXZ * 1.5f;

                globalCtx->damagePlayer(globalCtx, -4);
                func_8002F71C(globalCtx, &this->actor, arg2, this->actor.yawTowardsLink, 6.0f);
                Audio_PlayActorSound2(player, NA_SE_PL_BODY_HIT);
                this->collider.base.maskA &= ~0x8;
            }
        }
    }
    return 0;
}

s32 EnGo2_UpdateWaypoint(EnGo2* this, GlobalContext* globalCtx) {
    s32 change;

    if (this->path == NULL) {
        return 0;
    }

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

s32 func_80A44DC0(EnGo2* this) {
    s16 yawDiff;
    f32 xyzDist;
    f32 yDist;
    s16 yawDiffAbs;

    xyzDist = (this->actor.params & 0x1F) == GORON_DMT_BIGGORON ? 800.0f : 200.0f;
    yDist = (this->actor.params & 0x1F) == GORON_DMT_BIGGORON ? 400.0f : 60.0f;


    if ((this->actor.params & 0x1F) == GORON_DMT_BIGGORON) {
        if ((this->collider.base.maskB & 1) == 0) {
            this->actor.flags &= ~1;
            return 0;
        }
        else {
            this->actor.flags |= 1;
            return 1;
        }
    }

    xyzDist = SQ(xyzDist);

    yawDiff = (f32)this->actor.yawTowardsLink - (f32)this->actor.shape.rot.y;
    yawDiffAbs = ABS(yawDiff);

    if (this->actor.xyzDistFromLinkSq <= xyzDist && fabsf(this->actor.yDistFromLink) < yDist && yawDiffAbs < 0x2AA8) {
        return 1;
    } else {
        return 0;
    }
}

// func_80A3F7C0 EnGo
s32 func_80A44EF0(EnGo2* this, s16 arg1, f32 arg2, s16 arg3) {
    s32 sound;

    if ((this->actor.bgCheckFlags & 1) == 0 || this->actor.velocity.y > 0.0f) {
        return 0;
    } else {
        if (DECR(this->unk_590)) {
            if (!arg3) {
                return 1;
            } else {
                if (this->unk_590 & 1) {
                    this->actor.posRot.pos.y += 1.5f;
                } else {
                    this->actor.posRot.pos.y -= 1.5f;
                }
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_BIGBALL_ROLL - SFX_FLAG);
            }
            return 1;
        }
    }

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
            return 1;
        }
        this->unk_59C = arg1;
    }

    this->actor.velocity.y = ((f32)this->unk_59C / (f32)arg1) * arg2;
    return 1;
}

void func_80A45088(EnGo2* this, GlobalContext* globalCtx, Actor* arg2) {
    u16 textId;

    if ((this->actor.params & 0x1F) == GORON_DMT_BIGGORON) {
        if (gSaveContext.bgsFlag) {
            if (func_8002F368(globalCtx) == 0xF) {
                // "I giiiive thissss to yoooou forrr a souvenirrrrr."
                this->actor.textId = 0x3003;
            } else {
                // "That sworrrrd is my finest  worrrrk!"
                this->actor.textId = 0x305E;
            }

            arg2->textId = this->actor.textId;
            return;
        }

        if ((gSaveContext.bgsFlag == 0) && (INV_CONTENT(ITEM_POCKET_EGG) == ITEM_CLAIM_CHECK)) {
            if (func_8002F368(globalCtx) == 0xF) {
                if (func_800775CC() >= 3) {
                    // "That sworrrrd is my finest  worrrrk!"
                    textId = 0x305E;
                } else {
                    // "Not yet... Hey you... You arrrre impatient..."
                    textId = 0x305D;
                }
                this->actor.textId = textId;
            } else {
                if (func_800775CC() >= 3) {
                    // "I maaaade thissss... Trrrrade for claimmm checkkk..."
                    textId = 0x3002;
                } else {
                    // "Not yet... Hey you... You arrrre impatient..."
                    textId = 0x305D;
                }
                this->actor.textId = textId;
            }

            arg2->textId = this->actor.textId;
            return;
        }

        if ((INV_CONTENT(ITEM_POCKET_EGG) >= ITEM_PRESCRIPTION) && (INV_CONTENT(ITEM_POCKET_EGG) <= ITEM_CLAIM_CHECK)) {
            if (func_8002F368(globalCtx) == 0xE) {
                // "Rrrrreally? You brrrrought the eye drops? I'm so rrrrrelieved! I'm going to use them rrrrrright
                // now!"
                this->actor.textId = 0x3059;
            } else {
                // "I've been waiting forrrrr you, with tearrrrrrs in my eyes... Please say hello to Kinnng Zorrra!"
                this->actor.textId = 0x3058;
            }

            // "Rrrrreally? You brrrrought the eye drops? I'm so rrrrrelieved! I'm going to use them rrrrrright now!"
            if (this->actor.textId == 0x3059) {
                gSaveContext.timer2State = 0;
            }

            arg2->textId = this->actor.textId;
            return;
        }

        if (INV_CONTENT(ITEM_POCKET_EGG) < ITEM_PRESCRIPTION) {
            if (func_8002F368(globalCtx) == 0xB) {
                if (gSaveContext.infTable[11] & 0x10) {
                    // "Please go get the eyedrrrrrrops...  Yes No"
                    textId = 0x3055;
                } else {
                    // "That broken knife is surely my  worrrrrrrrrrk... I really want to repairrrrr it, but...
                    // But because of yesterrrrrday's errrrruption, my eyes are  irrrrrrrritated...
                    // There are fine eyedrops in Zora's Domain... You will find them if you go to see Kinnnnnng
                    // Zorrrrrra... [goto 3055]"
                    textId = 0x3054;
                }
                this->actor.textId = textId;
            } else {
                // "My Brotherrrr... Opened a new storrrre... It's Medigoron's Blade Storrrrrrrre...  Howeverrrrr...
                // I am betterrrrrr at making bladessssss.  Hylian carpenterrrrrs praise me forrrrrr my skillssssss. I'm
                // not lyinnnnng..."
                this->actor.textId = 0x3053;
            }

            arg2->textId = this->actor.textId;
        } else {
            // "My Brotherrrr... Opened a new storrrre... It's Medigoron's Blade Storrrrrrrre...  Howeverrrrr...
            // I am betterrrrrr at making bladessssss.  Hylian carpenterrrrrs praise me forrrrrr my skillssssss. I'm not
            // lyinnnnng..."
            this->actor.textId = 0x3053;
            arg2->textId = this->actor.textId;
        }
    }
}

void func_80A45288(EnGo2* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 linkAge;

    if (this->actionFunc != func_80A47578) {
        this->unk_194.unk_18 = player->actor.posRot.pos;
        linkAge = gSaveContext.linkAge;
        this->unk_194.unk_14 = D_80A482D8[this->actor.params & 0x1F][linkAge];
        func_80034A14(&this->actor, &this->unk_194, 4, this->unk_26E);
    }
    if ((this->actionFunc != func_80A47158) && (this->unk_20F == true)) {
        if (func_80A44790(this, globalCtx)) {
            func_80A45088(this, globalCtx, player);
        }
    }
}

void func_80A45360(EnGo2* this, f32* arg1) { 
    f32 phi_f0;

    if ((this->skelAnime.animation == &D_06004930) && (this->skelAnime.animCurrentFrame <= 32.0f)) {
        phi_f0 = 0.0f;
    } else {
        phi_f0 = 255.0f;
    }
    Math_SmoothScaleMaxF(arg1, phi_f0, 0.4f, 100.0f);
    this->actor.shape.unk_14 = (u8)(u32)*arg1;
}

void func_80A4546C(EnGo2* this) {
    f32 initSpeedXZ;

    initSpeedXZ = this->actor.speedXZ;

    if (this->unk_194.unk_00) {
        this->actor.speedXZ = 0.0f;
    }

    if (this->actionFunc != func_80A46DBC) {
        Actor_MoveForward(&this->actor);
    }

    this->actor.speedXZ = initSpeedXZ;

    return;
}

void func_80A454CC(EnGo2* this) {

    switch (this->actor.params & 0x1F) {
        case GORON_CITY_ROLLING_BIG:
        case GORON_DMT_DC_ENTRANCE:
        case GORON_CITY_ENTRANCE:
        case GORON_CITY_STAIRWELL:
        case GORON_DMT_FAIRY_HINT:
            func_80034EC0(&this->skelAnime, D_80A48348, 9);
            break;
        case GORON_DMT_BIGGORON:
            if (INV_CONTENT(ITEM_POCKET_EGG) >= ITEM_SWORD_BROKEN && INV_CONTENT(ITEM_POCKET_EGG) < ITEM_CLAIM_CHECK) {
                func_80034EC0(&this->skelAnime, D_80A48348, 4);
                break;
            }
        default:
            this->skelAnime.animPlaybackSpeed = 0.0f;
    }
}

f32 func_80A45578(EnGo2* this) {
    f32 phi_f2;
    s32 index;

    phi_f2 = (this->actor.params & 0x1F) == GORON_DMT_BIGGORON ? 400.0f : 60.0f;

    index = this->actor.params & 0x1F;

    if (index == 1 && (fabsf(this->actor.yDistFromLink) < phi_f2) && (this->actor.xzDistFromLink < 400.0f)) {
        return 9.0f;
    }

    return index == 0 ? 3.6000001f : 6.0f;
}

s32 func_80A4561C(EnGo2* this, GlobalContext* globalCtx) {
    Camera* camera;

    camera = globalCtx->cameraPtrs[0];
    if ((this->actor.params & 0x1F) == GORON_DMT_BIGGORON) {
        if (func_80A44DC0(this)) {
            Camera_ChangeSetting(camera, CAM_SET_TEPPEN);
            func_8005AD1C(camera, 4);

        } else if ((func_80A44DC0(this) == 0) && (camera->setting == CAM_SET_TEPPEN)) {
            Camera_ChangeSetting(camera, CAM_SET_DUNGEON1);
            func_8005ACFC(camera, 4);
        }
    }

    if ((this->actor.params & 0x1F) == GORON_FIRE_GENERIC || (this->actor.params & 0x1F) == GORON_CITY_ROLLING_BIG ||
        (this->actor.params & 0x1F) == GORON_CITY_STAIRWELL || (this->actor.params & 0x1F) == GORON_DMT_BIGGORON ||
        (this->actor.params & 0x1F) == GORON_MARKET_BAZAAR) {
        return 1;
    }

    if ((CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) == 0) && (CHECK_OWNED_EQUIP(EQUIP_TUNIC, 1))) {
        return 1;
    }
    return 0;
}

void func_80A45734(EnGo2* this) {
    if (func_80A44DC0(this)) {
        this->unk_26E = 2;
    } else {
        this->unk_26E = 1;
    }

    if (this->unk_194.unk_00) {
        this->unk_26E = 4;
    }

    this->unk_20F = true;
}

void func_80A4578C(EnGo2* this) {
    f32 phi_f0;
    s32 isTrue;

    if ((this->actor.params & 0x1F) == GORON_DMT_BIGGORON) {
        phi_f0 = 800.0f;
    } else {
        phi_f0 = 200.0f;
    }

    phi_f0 = SQ(phi_f0);
    isTrue = true;

    this->unk_26E = 1;

    if ((this->actor.xyzDistFromLinkSq <= phi_f0) || (this->unk_194.unk_00)) {
        this->unk_26E = 4;
    }

    this->unk_20F = isTrue;
}

void func_80A457F8(EnGo2* this) {
    if (func_80A44DC0(this) || this->unk_194.unk_00) {
        this->unk_26E = 2;
        this->unk_20F = true;
        return;
    } else {
        this->unk_26E = 1;
        this->unk_20F = false;
    }
}

void func_80A45848(EnGo2* this) {

    switch (this->actor.params & 0x1F) {
        case GORON_DMT_BOMB_FLOWER:
            this->unk_20F = true;
            this->unk_26E = func_80A44DC0(this) ? 2 : 1;
            break;

        case GORON_FIRE_GENERIC:
            func_80A4578C(this);
            break;

        case GORON_DMT_BIGGORON:
            func_80A457F8(this);
            break;

        case GORON_CITY_LINK:
            if ((CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) == 0) && CHECK_OWNED_EQUIP(EQUIP_TUNIC, 1)) {
                func_80A4578C(this);
                break;
            } else {
                // Continue
            }
        default:
            func_80A45734(this);
    }
}

void EnGo2_BlinkMouth(EnGo2* this) {

    switch (this->unk_213) {
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

void func_80A45A00(EnGo2* this) {

    if ((this->skelAnime.animPlaybackSpeed != 0.0f) && (this->skelAnime.animation == &D_06004930)) {
        if (this->skelAnime.animPlaybackSpeed > 0.0f) {
            if (this->skelAnime.animCurrentFrame == 14.0f) {
                if ((this->actor.params & 0x1F) != GORON_DMT_BIGGORON) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOLON_SIT_DOWN);
                } else {
                    func_800F4524(&D_801333D4, NA_SE_EN_GOLON_SIT_DOWN, 60);
                }
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

void func_80A45B14(EnGo2* this, s32 unk_arg) {
    EnGo2DataStruct3* temp_v0;
    s32 phi_v1;

    if ((this->actor.params & 0x1F) == GORON_CITY_ROLLING_BIG) {
        phi_v1 = 1;
    } else {
        phi_v1 = 0;
    }

    temp_v0 = &D_80A48480[phi_v1][unk_arg];
    func_80A4320C(this, temp_v0->unk_0, temp_v0->unk_4, temp_v0->unk_8, temp_v0->unk_C, temp_v0->unk_10,
                  temp_v0->unk_14);
}

void func_80A45B9C(EnGo2* this, GlobalContext* globalCtx) {
    if ((this->actor.params & 0x1F) == GORON_DMT_BIGGORON) {
        this->actor.flags &= ~1;
        func_80034EC0(&this->skelAnime, D_80A48348, 0xA);
        this->skelAnime.animPlaybackSpeed = -0.5f;
    } else {
        func_80034EC0(&this->skelAnime, D_80A48348, 1);
        this->skelAnime.animPlaybackSpeed = -1.0f;
    }
    func_80A44A9C(this);
    this->unk_26E = 1;
    this->unk_211 = false;
    this->unk_20F = false;
    this->actionFunc = func_80A4696C;
}

void func_80A45C50(EnGo2* this, GlobalContext* globalCtx) {
    if (this->skelAnime.animPlaybackSpeed == 0.0f) {
        if ((this->actor.params & 0x1F) != GORON_DMT_BIGGORON) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOLON_WAKE_UP);
        } else {
            func_800F4524(&D_801333D4, NA_SE_EN_GOLON_WAKE_UP, 60);
        }
    }
    if ((this->actor.params & 0x1F) == GORON_DMT_BIGGORON) {
        func_800800F8(globalCtx, 0x1068, -0x63, &this->actor, 0);
        func_80034EC0(&this->skelAnime, D_80A48348, 0xA);
        this->skelAnime.animPlaybackSpeed = 0.5f;
    } else {
        func_80034EC0(&this->skelAnime, D_80A48348, 1);
        this->skelAnime.animPlaybackSpeed = 1.0f;
    }
    this->actionFunc = func_80A46B40;
}

void func_80A45D40(EnGo2* this, GlobalContext* globalCtx) {
    func_80034EC0(&this->skelAnime, D_80A48348, 1);
    this->unk_211 = true;
    this->actionFunc = func_80A46B40;
    this->skelAnime.animPlaybackSpeed = 0.0f;
    this->actor.speedXZ = 0.0f;
    this->skelAnime.animCurrentFrame = this->skelAnime.animFrameCount;
}

void func_80A45DA4(EnGo2* this, GlobalContext* globalCtx) {

    if (((this->actor.params & 0x1F) == GORON_CITY_ROLLING_BIG) || ((this->actor.params & 0x1F) == GORON_CITY_LINK)) {
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
    this->unk_592 = 0xA;
    this->actor.shape.unk_08 = 1800.0f;
    this->actor.speedXZ += this->actor.speedXZ;
    this->actionFunc = func_80A46DBC;
}

void func_80A45E48(EnGo2* this, GlobalContext* globalCtx) {
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
    this->actionFunc = func_80A46F88;
    this->actor.shape.unk_08 = 0.0f;
    this->actor.speedXZ = 0.0f;
}

s32 func_80A45F08(EnGo2* this, GlobalContext* globalCtx) {
    f32 phi_f0;

    if ((this->actor.params & 0x1F) != GORON_FIRE_GENERIC) {
        return 0;
    } else {
        if (globalCtx->state.frames & 1) {
            phi_f0 = 1.0f;
        } else {
            phi_f0 = -1.0f;
        }
        this->actor.posRot.pos.x += phi_f0;
        if (Flags_GetSwitch(globalCtx, (this->actor.params & 0xFC00) >> 0xA)) {
            return 1;
        }
    }
    return 0;
}

s32 func_80A45F9C(EnGo2* this) {

    if ((this->actor.params & 0x1F) != GORON_DMT_BOMB_FLOWER || this->unk_194.unk_00 != 2) {
        return 0;
    } else {
        func_80034EC0(&this->skelAnime, D_80A48348, 3);
        this->unk_194.unk_00 = 0;
        this->unk_20F = false;
        this->unk_26E = 1;
        this->actionFunc = func_80A46CD8;
        return 1;
    }
}

s32 func_80A4601C(EnGo2* this, GlobalContext* globalCtx) {
    if ((this->actor.params & 0x1F) != GORON_CITY_ROLLING_BIG || (this->unk_194.unk_00 != 2)) {
        return 0;
    } else {
        this->unk_194.unk_00 = 0;
        func_80A45B9C(this, globalCtx);
        this->actionFunc = func_80A46D5C;
        return 1;
    }
}

s32 func_80A4607C(EnGo2* this) {
    if ((this->actor.params & 0x1F) != GORON_FIRE_GENERIC || this->unk_194.unk_00 == 0) {
        return 0;
    } else {
        this->actionFunc = func_80A47578;
        return 1;
    }
}

s32 func_80A460B8(EnGo2* this) {
    if ((this->actor.params & 0x1F) != GORON_CITY_LINK || (this->waypoint >= this->unk_216) ||
        func_80A44DC0(this) == 0) {
        return 0;
    } else {
        return 1;
    }
}

s32 func_80A46114(EnGo2* this) {

    if (this->unk_194.unk_00 == 0 || this->actor.speedXZ < 1.0f) {
        return 0;
    } else {
        if (func_80A44EF0(this, 2, 20.0 / 3.0f, 0)) {
            if ((this->unk_590 >= 9) && (this->unk_59C == 0)) {
                this->unk_590 = 8;
            }
            func_80A45B14(this, 0);
        }
        return 1;
    }
}

void func_80A461A8(EnGo2* this, GlobalContext* globalCtx) {
    s32 animation;

    animation = 0xD;
    if ((this->actor.params & 0x1F) == GORON_CITY_LINK) {

        // 0x3035
        // "A long time ago there was an evil dragon named Volvagia living  in this mountain.  
        // That dragon was very scary! He ate Gorons!  Using a huge hammer, the hero of the Gorons... BOOOM!  
        // Destroyed it just like that. This is  a myth from long ago, but it's  true!  
        // I know, because my dad is a descendant of the hero![goto 3033]" },

        // 0x3036
        // "Everybody was taken to the  Fire Temple...  While my dad was out... 
        // Ganondorf's followers came and took them all away!  All of them will be eaten by Volvagia!  
        // Dad said that Ganondorf has revived Volvagia...  As a warning to those who might oppose him, 
        // Ganondorf is going to feed them all to Volvagia!  Dad went to the Fire Temple all by himself to try to save  everyone...  
        // Please help, [Link]! I'll give you this heat-resistant tunic!" },
        if ((this->actor.textId == 0x3035 && this->unk_20C == 0) ||
            (this->actor.textId == 0x3036 && this->unk_20C == 0)) {
            if (this->skelAnime.animation != &D_06000D5C) {
                animation = 0xC;
                this->unk_213 = 0;
            }
        }

        // 0x3032
        // "What?  Your name is also [Link]?  Then you must be the legendary Dodongo Buster and Hero,  [Link]!  
        // My dad is Darunia... Do you remember him?  Dad named me [Link] after you, because you're so  brave!  It's a cool name! 
        // I really like it!  [Link], you're a hero to  us Gorons!  I'm so glad to meet you!  Please give me your autograph! 
        // Sign it: \"To my friend,[Link] of the Gorons\"  Oh...  I guess it's not a good time to ask you for this... 
        // Please help everyone!  My dad, Darunia, went to the Fire Temple. A dragon is inside!  
        // If we don't hurry up, even my dad will be eaten by the dragon!![goto 3033]" 

        // 0x3033
        // "B-b-b-boooo hooooo!"
        if ((this->actor.textId == 0x3032 && this->unk_20C == 0xC) || (this->actor.textId == 0x3033) ||
            (this->actor.textId == 0x3035 && this->unk_20C == 6)) {
            if (this->skelAnime.animation != &D_06000750) {
                animation = 0xB;
                this->unk_213 = 1;
            }
        }

        if (this->skelAnime.animation == &D_06000750) {
            if (this->skelAnime.animCurrentFrame == 20.0f) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOLON_CRY);
            }
        }

        if (animation != 0xD) {
            func_80034EC0(&this->skelAnime, D_80A48348, animation);
        }
    }
}

void func_80A462D8(EnGo2* this, GlobalContext* globalCtx) {
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

void func_80A463D8(EnGo2* this, GlobalContext* globalCtx) {
    Gameplay_ChangeCameraStatus(globalCtx, 0, CAM_STAT_ACTIVE);
    Gameplay_ClearCamera(globalCtx, this->camID);
}

void func_80A46418(EnGo2* this) {

    if (INV_CONTENT(ITEM_POCKET_EGG) >= ITEM_SWORD_BROKEN && INV_CONTENT(ITEM_POCKET_EGG) < ITEM_CLAIM_CHECK &&
        (this->actor.params & 0x1F) == GORON_DMT_BIGGORON && this->unk_194.unk_00 == 0) {
        if (DECR(this->unk_592) == 0) {
            this->unk_592 = Math_Rand_S16Offset(30, 30);
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
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80A48114);
    func_80061EFC(&this->actor.colChkInfo, NULL, &D_80A48140);

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

    func_80A4488C(this);
    func_80A448C4(this);
    func_80034EC0(&this->skelAnime, D_80A48348, 0);
    this->actor.gravity = -1.0f;
    this->unk_220 = this->actor.shape.unk_14 = 0;
    this->reverse = 0;
    this->unk_20F = false;
    this->unk_211 = false;
    this->unk_212 = 0;
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
            this->actionFunc = func_80A4696C;
            break;

        case GORON_MARKET_BAZAAR:
            if ((LINK_IS_ADULT) || (CHECK_QUEST_ITEM(QUEST_GORON_RUBY) == 0)) {
                Actor_Kill(&this->actor);
            }
            func_80A45D40(this, globalCtx);
            break;

        case GORON_CITY_LINK:
            if ((gSaveContext.infTable[16] & 0x200)) {
                Path_CopyLastPoint(this->path, &this->actor.posRot.pos);
                this->actor.initPosRot.pos = this->actor.posRot.pos;
                if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FIRE) == 0 && (CHECK_OWNED_EQUIP(EQUIP_TUNIC, 1))) {
                    func_80A45D40(this, globalCtx);
                } else {
                    this->actionFunc = func_80A4696C;
                }
            } else {
                gSaveContext.infTable[16] &= ~0x1000;
                this->collider.dim.height = ((&D_80A4816C[this->actor.params & 0x1F])->height * 0.6f);
                func_80A45DA4(this, globalCtx);
                this->unk_20F = true;
            }
            break;

        case GORON_CITY_ROLLING_BIG:
        case GORON_DMT_ROLLING_SMALL:

            this->collider.dim.height = ((&D_80A4816C[this->actor.params & 0x1F])->height * 0.6f);
            func_80A45DA4(this, globalCtx);
            break;

        case GORON_FIRE_GENERIC:
            if (Flags_GetSwitch(globalCtx, (this->actor.params & 0xFC00) >> 0xA)) {
                Actor_Kill(&this->actor);
            } else {
                this->unk_20F = true;
                this->actionFunc = func_80A4696C;
            }
            break;

        case GORON_DMT_BIGGORON:
            this->actor.shape.shadowDrawFunc = NULL;
            this->actor.flags &= ~1;
            if ((INV_CONTENT(ITEM_POCKET_EGG) >= ITEM_SWORD_BROKEN) &&
                (INV_CONTENT(ITEM_POCKET_EGG) < ITEM_CLAIM_CHECK)) {
                this->unk_213 = 1;
            }
            this->collider.base.acFlags = 0;
            this->collider.base.maskA = 0xD; // OC_PLAYER | OC_NO_PUSH | OC_ON
            this->actionFunc = func_80A4696C;
            break;

        case GORON_DMT_BOMB_FLOWER:
            // dest1 = this->actor.posRot;
            if (gSaveContext.infTable[14] & 0x800) {
                Path_CopyLastPoint(this->path, &this->actor.posRot.pos);
                this->actor.initPosRot.pos = this->actor.posRot.pos;
            }

        case GORON_DMT_DC_ENTRANCE:
        case GORON_DMT_FAIRY_HINT:
        default:
            this->actionFunc = func_80A4696C;
    }
}

void EnGo2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void func_80A4696C(EnGo2* this, GlobalContext* globalCtx) {
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
            func_80A45B14(this, 1);
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
    if (func_80A45F08(this, globalCtx)) {
        this->unk_20F = false;
        func_80A45C50(this, globalCtx);
    }
    if (((this->actor.params & 0x1F) != GORON_FIRE_GENERIC) && func_80A44DC0(this)) {
        func_80A45C50(this, globalCtx);
    }
}

void func_80A46B40(EnGo2* this, GlobalContext* globalCtx) {
    u8 index;
    f32 height;

    index = (this->actor.params & 0x1F);
    if (this->unk_211 == true) {
        func_80A46418(this);
        func_80A461A8(this, globalCtx);
        func_80A45848(this);

        if ((func_80A4601C(this, globalCtx) == 0) && (func_80A4607C(this) == 0)) {
            if (func_80A45F9C(this)) {
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
    if ((func_80A4561C(this, globalCtx) == 0) && (func_80A44DC0(this) == 0)) {
        func_80A45B9C(this, globalCtx);
    }
}

void func_80A46CD8(EnGo2* this, GlobalContext* globalCtx) {
    f32 float1;
    f32 float2;
    f32 float3;

    float1 = this->skelAnime.animFrameCount;
    float2 = 32768.0f / float1;
    float3 = this->skelAnime.animCurrentFrame * float2;
    this->actor.speedXZ = Math_Sins(float3);
    if ((EnGo2_Orient(this, globalCtx)) && (this->waypoint == 0)) {
        func_80A45D40(this, globalCtx);
    }
}

void func_80A46D5C(EnGo2* this, GlobalContext* globalCtx) {

    if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
        func_80A45B14(this, 1);
        this->skelAnime.animPlaybackSpeed = 0.0f;
        func_80A45DA4(this, globalCtx);
    }
}

void func_80A46DBC(EnGo2* this, GlobalContext* globalCtx) {
    f32 float1 = 1000.0f;

    if (((this->actor.params & 0x1F) != GORON_DMT_ROLLING_SMALL) || !(this->actor.xyzDistFromLinkSq > SQ(float1))) {
        if (DECR(this->unk_592) == 0) {
            this->actionFunc = func_80A46E54;
            this->actor.speedXZ *= 0.5f;
        }
    }
    func_80A45B14(this, 2);
}

void func_80A46E54(EnGo2* this, GlobalContext* globalCtx) {
    s32 orientation;
    s32 index;

    if (func_80A46114(this) == 0) {
        if (func_80A44EF0(this, 4, 8.0f, 1) == 1) {
            if (func_80A460B8(this)) {
                this->actionFunc = func_80A47024;
                return;
            }
            func_80A45B14(this, 3);
        }
        orientation = EnGo2_Orient(this, globalCtx);
        index = this->actor.params & 0x1F;
        if (index != 1) {
            if ((index == 5) && (orientation == 1) && (this->waypoint == 0)) {
                func_80A45E48(this, globalCtx);
                return;
            }
        } else if ((orientation == 2) && (this->waypoint == 1)) {
            func_80A45E48(this, globalCtx);
            return;
        }
        Math_SmoothScaleMaxF(&this->actor.speedXZ, func_80A45578(this), 0.4f, 0.6f);
        this->actor.shape.rot = this->actor.posRot.rot;
    }
}

void func_80A46F88(EnGo2* this, GlobalContext* globalCtx) {
    if (func_80A44EF0(this, 4, 8.0f, 0)) {
        func_80A45B14(this, 0);
        if (this->unk_59C == 0) {
            switch (this->actor.params & 0x1F) {
                case GORON_CITY_LINK:
                    this->unk_212 = 0;
                    this->actionFunc = func_80A47490;
                    break;
                case GORON_CITY_ROLLING_BIG:
                    func_80A45C50(this, globalCtx);
                    break;
                default:
                    this->actionFunc = func_80A4696C;
            }
        }
    }
}

void func_80A47024(EnGo2* this, GlobalContext* globalCtx) {
    if (func_80A46114(this) == 0) {
        Math_SmoothScaleMaxF(&this->actor.speedXZ, 0.0f, 0.6f, 0.8f);
        if (this->actor.speedXZ >= 1.0f) {
            func_80A45B14(this, 3);
        }

        if ((s32)this->actor.speedXZ == 0) {
            this->actor.posRot.rot.y ^= 0x8000;
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
            this->reverse ^= 1;
            EnGo2_UpdateWaypoint(this, globalCtx);
            func_80A45DA4(this, globalCtx);
        }
    }
}

void func_80A470E8(EnGo2* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actor.parent = NULL;
        this->actionFunc = func_80A47158;
    } else {
        func_8002F434(&this->actor, globalCtx, this->getItemID, this->actor.xzDistFromLink + 1.0f,
                      fabsf(this->actor.yDistFromLink) + 1.0f);
    }
}

void func_80A47158(EnGo2* this, GlobalContext* globalCtx) {

    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && func_80106BC8(globalCtx)) {
        this->unk_194.unk_00 = 0;
        switch (this->getItemID) {
            case 0x26:
                func_800775D8();
                func_80A45D40(this, globalCtx);
                return;
            case 0x2C:
                gSaveContext.infTable[16] |= 0x200;
                func_80A45D40(this, globalCtx);
                return;
            case 0x57:
                gSaveContext.bgsFlag = 1;
                break;
            case 0x33:
            case 0x34:
                func_80A45B9C(this, globalCtx);
                this->actionFunc = func_80A46D5C;
                return;
        }
        this->actionFunc = func_80A46B40;
    }
}

void func_80A4725C(EnGo2* this, GlobalContext* globalCtx) {

    switch (this->unk_212) {
        case 0:
            func_80034EC0(&this->skelAnime, D_80A48348, 5);
            this->actor.flags &= ~1;
            this->actor.shape.rot.y += 0x5B0;
            this->unk_26E = 1;
            this->unk_592 = this->skelAnime.animFrameCount + 60.0f + 60.0f;
            this->unk_213 = 2;
            this->unk_20C = 0;
            this->unk_212++;
            func_800F483C(0x28, 5);
            func_800800F8(globalCtx, 0x105E, -0x63, &this->actor, 0);
            break;

        case 1:

            if (DECR(this->unk_592)) {
                if (this->unk_592 == 0x3C || this->unk_592 == 0x78) {
                    func_8005B1A4(globalCtx->cameraPtrs[globalCtx->activeCamera]);
                    func_800F4524(&D_801333D4, 0x28B5, 60);
                }
            } else {
                func_800F4524(&D_801333D4, NA_SE_EN_GOLON_GOOD_BIG, 60);
                func_80034EC0(&this->skelAnime, D_80A48348, 6);
                // "Wowwwwwwwwwwwwww!!  This is stimulating! It's worrrrrking grrrrreat!
                // Now I can get back to my blade business! My worrrrrk is not  verrrry consistent,
                // so I'll give this  to you so you won't forrrrrget.[goto 305C]"
                func_8010B720(globalCtx, 0x305A);
                this->unk_213 = 3;
                this->unk_212++;
                func_800F483C(0x7F, 5);
            }

            break;

        case 2:
            if (func_800A56C8(&this->skelAnime, this->skelAnime.animFrameCount)) {
                this->unk_213 = 0;
            }
            if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
                func_80034EC0(&this->skelAnime, D_80A48348, 1);
                this->actor.flags |= 1;
                this->unk_26E = 2;
                this->skelAnime.animPlaybackSpeed = 0.0f;
                this->skelAnime.animCurrentFrame = this->skelAnime.animFrameCount;
                func_80A43424(this, globalCtx, 0x26);
                this->actionFunc = func_80A470E8;
                this->unk_212 = 0;
            }
            break;
    }
}

void func_80A47490(EnGo2* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    switch (this->unk_212) {
        case 0:
            if (func_8010BDBC(&globalCtx->msgCtx)) {
                return;
            } else {
                func_8010B680(globalCtx, 0x3031, NULL);
                player->actor.freezeTimer = 0xA;
                this->unk_212++;
            }
        case 1:
            break;

        default:
            return;
    }

    if (func_8010BDBC(&globalCtx->msgCtx) != 2) {
        player->actor.freezeTimer = 0xA;
    } else {
        gSaveContext.infTable[16] |= 0x1000;
        this->unk_26E = 1;
        this->unk_211 = false;
        this->unk_20F = false;
        this->actionFunc = func_80A4696C;
    }
}

void func_80A47578(EnGo2* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    Vec3s D_80A4854C = { 0x00, 0x00, 0x00 };

    switch (this->unk_212) {
        case 0:
            if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
                func_80A462D8(this, globalCtx);
                globalCtx->msgCtx.msgMode = 0x37;
                func_80034EC0(&this->skelAnime, D_80A48348, 2);
                this->waypoint = 1;
                this->skelAnime.animPlaybackSpeed = 2.0f;
                func_80A44D84(this);

                this->actor.shape.rot = this->actor.posRot.rot;
                this->unk_592 = 0x3C;
                this->actor.gravity = 0.0f;
                this->actor.speedXZ = 2.0f;
                this->unk_194.unk_08 = D_80A4854C;
                this->unk_194.unk_0E = D_80A4854C;
                this->unk_212++;
                this->unk_212++;
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

        case 2:

            if (DECR(this->unk_592)) {
                if (!(this->unk_592 % 8)) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_WALK);
                }

                Actor_MoveForward(&this->actor);

            } else {
                this->unk_592 = 0;
                this->actor.speedXZ = 0.0f;
                if ((((this->actor.params & 0xFC00) >> 0xA) != 1) && (((this->actor.params & 0xFC00) >> 0xA) != 2) &&
                    (((this->actor.params & 0xFC00) >> 0xA) != 4) && (((this->actor.params & 0xFC00) >> 0xA) != 5) &&
                    (((this->actor.params & 0xFC00) >> 0xA) != 9) && (((this->actor.params & 0xFC00) >> 0xA) != 0xB)) {
                    this->unk_212++;
                }
                this->unk_212++;
            }

            //
            return;
            // break;

        case 3:

            this->unk_592++;

            if (!(this->unk_592 % 8) && (this->unk_592 < 0xA)) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_WALK);
            }

            if (this->unk_592 == 0xA) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_IRON_DOOR_OPEN);
            }

            if (this->unk_592 >= 0x2D) {
                Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot, 0x14, NA_SE_EV_IRON_DOOR_CLOSE);
            } else {
                break;
            }

        case 4:
            func_80106CCC(globalCtx);
            func_80A463D8(this, globalCtx);
            func_8002DF54(globalCtx, &this->actor, 7);
            Actor_Kill(&this->actor);
            break;

        case 1:
            return;
    }
}

void EnGo2_Update(Actor* thisx, GlobalContext* globalCtx) {

    EnGo2* this = THIS;

    func_80A45360(this, &this->unk_220);
    func_80A45A00(this);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    func_80A4546C(this);
    func_8002E4B4(globalCtx, &this->actor, (f32)this->collider.dim.height * 0.5f, (f32)this->collider.dim.radius * 0.6f,
                  0.0f, 5);
    if (this->unk_194.unk_00 == 0) {
        func_80A44AB0(this, globalCtx);
    }
    this->actionFunc(this, globalCtx);
    if (this->unk_211 == true) {
        func_80034F54(globalCtx, &this->unk_226, &this->unk_24A, 0x12);
    }
    func_80A45288(this, globalCtx);
    EnGo2_BlinkMouth(this);
    func_80A44940(this, globalCtx);
}

s32 func_80A479B0(EnGo2* this, GlobalContext* globalCtx) {

    Vec3f D_80A48554 = { 0.0f, 0.0f, 0.0f };

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_go2.c", 0xB41);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_go2.c", 0xB44),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, &D_0600BD80);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_go2.c", 0xB49);

    Matrix_MultVec3f(&D_80A48554, &this->actor.posRot2);

    return 1;
}

s32 func_80A47AB0(EnGo2* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f D_80A48560 = { 0.0f, 0.0f, 0.0f };
    f32 speedXZ;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_go2.c", 0xB62);
    func_80093D18(globalCtx->state.gfxCtx);

    if (this->actionFunc == func_80A47024) {
        speedXZ = 0.0f;
    } else {
        speedXZ = this->actor.speedXZ;
    }

    Matrix_RotateRPY((globalCtx->state.frames * ((s16)speedXZ * 0x578)), 0, this->actor.shape.rot.z, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_go2.c", 0xB6E),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, &D_0600C140);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_go2.c", 0xB72);
    Matrix_MultVec3f(&D_80A48560, &this->actor.posRot2);
    return 1;
}

s32 EnGo2_OverrideLimbDraw(GlobalContext* globalCtx, s32 limb, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnGo2* this = THIS;
    Vec3s vec1;
    f32 float1;

    if (limb == 0x11) {
        Matrix_Translate(2800.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        vec1 = this->unk_194.unk_08;
        float1 = (vec1.y / 32768.0f) * M_PI;
        Matrix_RotateX(float1, MTXMODE_APPLY);
        float1 = (vec1.x / 32768.0f) * M_PI;
        Matrix_RotateZ(float1, MTXMODE_APPLY);
        Matrix_Translate(-2800.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }
    if (limb == 0xA) {
        vec1 = this->unk_194.unk_0E;
        float1 = (vec1.y / 32768.0f) * M_PI;
        Matrix_RotateY(float1, MTXMODE_APPLY);
        float1 = (vec1.x / 32768.0f) * M_PI;
        Matrix_RotateX(float1, MTXMODE_APPLY);
    }
    if ((limb == 0xA) || (limb == 0xB) || (limb == 0xE)) {
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

    if (limbIndex == 0x11) {
        Matrix_MultVec3f(&D_80A4856C, &this->actor.posRot2.pos);
    }
}

void EnGo2_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnGo2* this = THIS;

    u8* sEyeTextures[] = { 0x0600DA80, 0x0600CE80, 0x0600D280, 0x0600D680 };
    u8* sMouthTextures[] = { 0x0600DE80, 0x0600E680 };

    EnGo2_UpdateUnkEffect(this);
    Matrix_Push();
    EnGo2_DrawUnkEffect(this, globalCtx);
    Matrix_Pull();

    if ((this->actionFunc == func_80A4696C) && (this->skelAnime.animPlaybackSpeed == 0.0f) &&
        (this->skelAnime.animCurrentFrame == 0.0f)) {
        if (1) {}
        func_80A479B0(this, globalCtx);
        return;
    }

    if (this->actionFunc == func_80A46E54 || this->actionFunc == func_80A47024 || this->actionFunc == func_80A46DBC) {
        func_80A47AB0(this, globalCtx);
        return;
    }

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_go2.c", 0xBF7);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeTexIndex]));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sMouthTextures[this->mouthTexIndex]));

    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                          EnGo2_OverrideLimbDraw, EnGo2_PostLimbDraw, this);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_go2.c", 0xC09);
}