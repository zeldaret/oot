#include "z_en_gb.h"

#define FLAGS 0x00000009

#define THIS ((EnGb*)thisx)

void EnGb_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGb_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGb_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGb_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A2F83C(EnGb* this, GlobalContext* globalCtx);
void func_80A2FC70(EnGb* this, GlobalContext* globalCtx);
void func_80A2FA50(EnGb* this, GlobalContext* globalCtx);
void func_80A2F9C0(EnGb* this, GlobalContext* globalCtx);
void func_80A2F94C(EnGb* this, GlobalContext* globalCtx);
void func_80A2FB40(EnGb* this, GlobalContext* globalCtx);
void func_80A2FBB0(EnGb* this, GlobalContext* globalCtx);
void func_80A2FC0C(EnGb* this, GlobalContext* globalCtx);

void func_80A30350(EnGb *this, GlobalContext *globalCtx);
void func_80A2FFFC(EnGb *this, GlobalContext *globalCtx);

const ActorInit En_Gb_InitVars = {
    ACTOR_EN_GB,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_PS,
    sizeof(EnGb),
    (ActorFunc)EnGb_Init,
    (ActorFunc)EnGb_Destroy,
    (ActorFunc)EnGb_Update,
    (ActorFunc)EnGb_Draw,
};

typedef struct {
    /* 0x00 */ u8 primR;
    /* 0x01 */ u8 primG;
    /* 0x02 */ u8 primB;
    /* 0x03 */ u8 primA;
    /* 0x04 */ u8 envR;
    /* 0x05 */ u8 envG;
    /* 0x06 */ u8 envB;
    /* 0x07 */ u8 envA;
    /* 0x08 */ UNK_TYPE unk_8;
    /* 0x0C */ s32 unk_C;
} Struct_80A30660; // size = 0x10

Struct_80A30660 D_80A30660[] = {
    { 0xFF, 0xFF, 0xAA, 0xFF, 0xFF, 0xC8, 0x00, 0xFF, 0x0600A870, 0xFFF10000 },
    { 0xFF, 0xFF, 0xAA, 0xFF, 0x00, 0x96, 0x00, 0xFF, 0x0600B070, 0xFFF40000 },
    { 0xFF, 0xAA, 0xFF, 0xFF, 0x64, 0x00, 0x96, 0xFF, 0x0600B870, 0xFFF80000 },
};

ColliderCylinderInit_Set3 D_80A30690 = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 40, 75, 0, { 0, 0, 0 } },
};

ColliderCylinderInit_Set3 D_80A306BC[] = {
    {
        { COLTYPE_UNK10, 0x00, 0x00, 0x39, COLSHAPE_CYLINDER },
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
        { 4, 20, 0, { 0, 0, 0 } },
    },
    {
        { COLTYPE_UNK10, 0x00, 0x00, 0x39, COLSHAPE_CYLINDER },
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
        { 4, 20, 0, { 0, 0, 0 } },
    },
    {
        { COLTYPE_UNK10, 0x00, 0x00, 0x39, COLSHAPE_CYLINDER },
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
        { 10, 20, 0, { 0, 0, 0 } },
    },
};

InitChainEntry D_80A30740[] = {
    ICHAIN_U8(unk_1F, 6, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 2200, ICHAIN_STOP),
};

Vec3f D_80A30748[] = {
    { -8.0f, 112.0f, -8.0f },
    { -3.0f, 112.0f, 29.0f },
    { 31.0f, 112.0f, 29.0f },
    { 31.0f, 112.0f, -8.0f },
};

Vec3f D_80A30778[] = {
    { -48.0f, 0.0f, 34.0f },
    { -55.0f, 0.0f, 49.0f },
    { -48.0f, 0.0f, 60.0f },
};

extern AnimationHeader D_0600049C;
extern Gfx D_0600C0B0[];
extern FlexSkeletonHeader D_0600C220;
extern CollisionHeader D_0600C2D0;
extern AnimationHeader D_0600C8EC;

void func_80A2F180(EnGb* this) {
    if (gSaveContext.infTable[0xB] & 0x40) {
        this->unk_37E = 0x70F5;
    } else {
        this->unk_37E = 0x70F4;
    }
}

#ifdef NON_MATCHING
// Regalloc differences
void EnGb_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnGb* this = THIS;
    s32 pad;
    CollisionHeader* sp84;
    Vec3f sp70;
    f32 temp_f0;
    s32 i;

    sp84 = NULL;
    Actor_ProcessInitChain(&this->dyna.actor, D_80A30740);
    DynaPolyActor_Init(&this->dyna, DPM_UNK);
    CollisionHeader_GetVirtual(&D_0600C2D0, &sp84);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp84);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600C220, &D_0600049C, this->unk_1A8, this->unk_1F0, 12);
    Collider_InitCylinder(globalCtx, &this->unk_23C);
    Collider_SetCylinder_Set3(globalCtx, &this->unk_23C, &this->dyna.actor, &D_80A30690);

    for (i = 0; i < ARRAY_COUNT(D_80A306BC); i++) {
        Collider_InitCylinder(globalCtx, &this->unk_288[i]);
        Collider_SetCylinder_Set3(globalCtx, &this->unk_288[i], &this->dyna.actor, &D_80A306BC[i]);
    }

    this->unk_36C = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &this->unk_370);
    Lights_PointNoGlowSetInfo(&this->unk_370,
                            this->dyna.actor.initPosRot.pos.x,
                            this->dyna.actor.initPosRot.pos.y,
                            this->dyna.actor.initPosRot.pos.z,
                            255, 255, 255, 200);

    ActorShape_Init(&this->dyna.actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 35.0f);
    Actor_SetScale(&this->dyna.actor, 0.01f);
    this->dyna.actor.colChkInfo.mass = 0xFF;
    this->dyna.actor.speedXZ = 0.0f;
    this->dyna.actor.velocity.y = 0.0f;
    this->dyna.actor.gravity = -1.0f;
    this->unk_382 = (s32)Rand_ZeroFloat(100.0f) + 0x64;

    for (i = 0; i < ARRAY_COUNT(D_80A30748); i++) {
        this->unk_388[i].unk_0 = (s32)Rand_ZeroFloat(30.0f) % 3;
        this->unk_388[i].unk_14.x = this->unk_388[i].unk_8.x = D_80A30748[i].x + this->dyna.actor.posRot.pos.x;
        this->unk_388[i].unk_14.y = this->unk_388[i].unk_8.y = D_80A30748[i].y + this->dyna.actor.posRot.pos.y;
        this->unk_388[i].unk_14.z = this->unk_388[i].unk_8.z = D_80A30748[i].z + this->dyna.actor.posRot.pos.z;
        this->unk_388[i].unk_1 = 1;
        this->unk_388[i].unk_3 = this->unk_388[i].unk_2 = 0;
        this->unk_388[i].unk_20 = 0.0f;
        this->unk_388[i].unk_24 = 0.0f;
        this->unk_388[i].unk_6 = Rand_ZeroFloat(40.0f);
        this->unk_388[i].unk_4 = this->unk_388[i].unk_6 & 1;
        this->unk_388[i].unk_28 = 0.2f;
    }

    temp_f0 = Rand_ZeroOne();
    this->unk_384 = (s8)(temp_f0 * 30.0f) + 0xE1;
    this->unk_385 = (s8)(temp_f0 * 100.0f) + 0x9B;
    this->unk_386 = (s8)(temp_f0 * 160.0f) + 0x5F;
    this->unk_387 = 0xC8;
    Matrix_Translate(this->dyna.actor.posRot.pos.x, this->dyna.actor.posRot.pos.y, this->dyna.actor.posRot.pos.z, MTXMODE_NEW);
    Matrix_RotateRPY(this->dyna.actor.posRot.rot.x, this->dyna.actor.posRot.rot.y, this->dyna.actor.posRot.rot.z, MTXMODE_APPLY);
    sp70.x = 0.0f;
    sp70.y = 0.0f;
    sp70.z = 44.0f;
    Matrix_MultVec3f(&sp70, &this->dyna.actor.posRot2.pos);
    this->dyna.actor.posRot2.pos.y += 62.5f;
    func_80A2F180(this);
    this->actionFunc = func_80A2F83C;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/EnGb_Init.s")
#endif

void EnGb_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnGb* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->unk_23C);
    LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, this->unk_36C);
    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void func_80A2F608(EnGb* this) {
    s32 i;
    Vec3f sp48;
    Vec3f sp3C;

    Matrix_Translate(this->dyna.actor.posRot.pos.x, this->dyna.actor.posRot.pos.y, this->dyna.actor.posRot.pos.z, MTXMODE_NEW);
    Matrix_RotateRPY(this->dyna.actor.posRot.rot.x, this->dyna.actor.posRot.rot.y, this->dyna.actor.posRot.rot.z, MTXMODE_APPLY);
    sp48.x = sp48.y = 0.0f;
    sp48.z = 25.0f;
    Matrix_MultVec3f(&sp48, &sp3C);
    this->unk_23C.dim.pos.x = sp3C.x;
    this->unk_23C.dim.pos.y = sp3C.y;
    this->unk_23C.dim.pos.z = sp3C.z;

    for (i = 0; i < ARRAY_COUNT(D_80A30778); i++) {
        Matrix_Translate(this->dyna.actor.posRot.pos.x, this->dyna.actor.posRot.pos.y, this->dyna.actor.posRot.pos.z, MTXMODE_NEW);
        Matrix_RotateRPY(this->dyna.actor.posRot.rot.x, this->dyna.actor.posRot.rot.y, this->dyna.actor.posRot.rot.z, MTXMODE_APPLY);
        Matrix_MultVec3f(&D_80A30778[i], &sp3C);
        this->unk_288[i].dim.pos.x = sp3C.x;
        this->unk_288[i].dim.pos.y = sp3C.y;
        this->unk_288[i].dim.pos.z = sp3C.z;
    }
}

s32 func_80A2F760(EnGb* this) {
    s32 i;
    for (i = 0; i < ARRAY_COUNT(this->unk_388); i++) {
        if (this->unk_388[i].unk_3 != 0) {
            return 1;
        }
    }
    return 0;
}

void func_80A2F7C0(EnGb* this) {
    Animation_Change(&this->skelAnime, &D_0600C8EC, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600C8EC), ANIMMODE_ONCE, 0.0f);
    Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_NALE_MAGIC);
    this->actionFunc = func_80A2FC70;
}

void func_80A2F83C(EnGb *this, GlobalContext *globalCtx) {
    Player *player = PLAYER;

    if (func_80A2F760(this) == 0) {
        if (this->unk_382 != 0) {
            this->unk_382--;
        } else {
            func_80A2F7C0(this);
            return;
        }
    }
    if (func_8002F194(&this->dyna.actor, globalCtx) != 0) {
        switch (func_8002F368(globalCtx)) {
            case 0:
                func_80A2F180(this);
                this->actionFunc = func_80A2F94C;
                break;
            case 0x1B:
                player->actor.textId = 0x70F6;
                this->actionFunc = func_80A2F9C0;
                break;
            case 0x1C:
                player->actor.textId = 0x70F7;
                this->actionFunc = func_80A2FA50;
                break;
        }
        return;
    }
    if (this->dyna.actor.xzDistToLink < 100.0f) {
        func_8002F298(&this->dyna.actor, globalCtx, 100.0f, 0x1B);
    }
}

void func_80A2F94C(EnGb *this, GlobalContext *globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 6 && func_80106BC8(globalCtx)) {
        if (!(gSaveContext.infTable[0xB] & 0x40)) {
            gSaveContext.infTable[0xB] |= 0x40;
        }
        func_80A2F180(this);
        this->actionFunc = func_80A2F83C;
    }
}

void func_80A2F9C0(EnGb *this, GlobalContext *globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 6 && func_80106BC8(globalCtx)) {
        if (!(gSaveContext.infTable[0xB] & 0x40)) {
            gSaveContext.infTable[0xB] |= 0x40;
        }
        func_80A2F180(this);
        Player_UpdateBottleHeld(globalCtx, PLAYER, ITEM_BOTTLE, PLAYER_AP_BOTTLE);
        Rupees_ChangeBy(10);
        this->actionFunc = func_80A2F83C;
    }
}

void func_80A2FA50(EnGb *this, GlobalContext *globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 6 && func_80106BC8(globalCtx)) {
        if (!(gSaveContext.infTable[0xB] & 0x40)) {
            gSaveContext.infTable[0xB] |= 0x40;
        }
        func_80A2F180(this);
        Player_UpdateBottleHeld(globalCtx, PLAYER, ITEM_BOTTLE, PLAYER_AP_BOTTLE);
        Rupees_ChangeBy(0x32);
        HIGH_SCORE(HS_POE_POINTS) += 100;
        if (HIGH_SCORE(HS_POE_POINTS) != 1000) {
            if (HIGH_SCORE(HS_POE_POINTS) > 1100) {
                HIGH_SCORE(HS_POE_POINTS) = 1100;
            }
            this->actionFunc = func_80A2F83C;
        } else {
            Player* player = PLAYER;

            player->exchangeItemId = 0;
            this->unk_37E = 0x70F8;
            func_8010B720(globalCtx, this->unk_37E);
            this->actionFunc = func_80A2FB40;
        }
    }
}

void func_80A2FB40(EnGb *this, GlobalContext *globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 6 && func_80106BC8(globalCtx)) {
        func_8002F434(&this->dyna.actor, globalCtx, GI_BOTTLE, 100.0f, 10.0f);
        this->actionFunc = func_80A2FBB0;
    }
}

void func_80A2FBB0(EnGb *this, GlobalContext *globalCtx) {
    if (Actor_HasParent(&this->dyna.actor, globalCtx)) {
        this->dyna.actor.parent = NULL;
        this->actionFunc = func_80A2FC0C;
    } else {
        func_8002F434(&this->dyna.actor, globalCtx, GI_BOTTLE, 100.0f, 10.0f);
    }
}

void func_80A2FC0C(EnGb *this, GlobalContext *globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 6 && func_80106BC8(globalCtx)) {
        func_8002F194(&this->dyna.actor, globalCtx);
        func_80A2F180(this);
        this->actionFunc = func_80A2F83C;
    }
}

#ifdef NON_MATCHING
// Regalloc differences
void func_80A2FC70(EnGb *this, GlobalContext *globalCtx) {
    if (this->skelAnime.curFrame == Animation_GetLastFrame(&D_0600C8EC)) {
        Animation_Change(&this->skelAnime, &D_0600049C, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600049C), 0, 0.0f);
        this->actionFunc = func_80A2F83C;
    } else if (this->skelAnime.curFrame == 18.0f) {
        this->unk_388[1].unk_1 = 3;
        this->unk_388[1].unk_3 = 1;
        this->unk_388[2].unk_1 = 3;
        this->unk_388[2].unk_3 = 1;
        this->unk_388[3].unk_1 = 3;
        this->unk_388[3].unk_3 = 1;
        this->unk_388[0].unk_1 = 3;
        this->unk_388[0].unk_3 = 1;
        this->unk_382 = (s32)Rand_ZeroFloat(600.0f) + 0x258;
        Audio_PlayActorSound2(&this->dyna.actor, 0x2873);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2FC70.s")
#endif

#ifdef NON_MATCHING
// Saved regs usage
void EnGb_Update(Actor *thisx, GlobalContext *globalCtx) {
    EnGb* this = THIS;
    f32 rand;
    s32 i;

    this->unk_380++;
    SkelAnime_Update(&this->skelAnime);
    this->actionFunc(this, globalCtx);
    this->dyna.actor.textId = this->unk_37E;
    func_80A2F608(this);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->unk_23C.base);

    for (i = 0; i < ARRAY_COUNT(this->unk_288); i++) {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->unk_288[i].base);
    }

    rand = Rand_ZeroOne();
    this->unk_384 = (s8)(rand * 30.0f) + 0xE1;
    this->unk_385 = (s8)(rand * 100.0f) + 0x9B;
    this->unk_386 = (s8)(rand * 160.0f) + 0x5F;
    this->unk_387 = 0xC8;
    func_80A2FFFC(this, globalCtx);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/EnGb_Update.s")
#endif

void EnGb_Draw(Actor *thisx, GlobalContext *globalCtx) {
    EnGb* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_gb.c", 763);

    func_80093D18(globalCtx->state.gfxCtx);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, this->unk_384, this->unk_385, this->unk_386, 255);

    Lights_PointNoGlowSetInfo(&this->unk_370,
                            this->dyna.actor.posRot.pos.x,
                            this->dyna.actor.posRot.pos.y,
                            this->dyna.actor.posRot.pos.z,
                            this->unk_384, this->unk_385, this->unk_386, this->unk_387);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount, NULL, NULL, &this->dyna.actor);
    func_80A30350(this, globalCtx);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_gb.c", 796);
}

#ifdef NON_MATCHING
// Single regalloc in case 3
void func_80A2FFFC(EnGb *this, GlobalContext *globalCtx) {
    f32 temp_f20;
    s16 temp_s1;
    s32 phi_s2;

    for (phi_s2 = 0; phi_s2 < 4; phi_s2++) {
        switch (this->unk_388[phi_s2].unk_1) {
            case 0:
                Math_ApproachF(&this->unk_388[phi_s2].unk_20, 1.0f, 0.02f, this->unk_388[phi_s2].unk_24);
                Math_ApproachF(&this->unk_388[phi_s2].unk_24, 1.0f, 0.001f, 1.0f);
                if ((this->unk_388[phi_s2].unk_28 - .01f) <= this->unk_388[phi_s2].unk_20) {
                    this->unk_388[phi_s2].unk_20 = this->unk_388[phi_s2].unk_28;
                    this->unk_388[phi_s2].unk_24 = 0.0f;
                    this->unk_388[phi_s2].unk_1 = 1;
                    this->unk_388[phi_s2].unk_2 = 2;
                    this->unk_388[phi_s2].unk_6 = 0;
                }
                break;
            case 1:
                if (this->unk_388[phi_s2].unk_6 != 0) {
                    this->unk_388[phi_s2].unk_6--;
                } else {
                    this->unk_388[phi_s2].unk_3 = 0;
                    this->unk_388[phi_s2].unk_24 = 0.0f;
                    this->unk_388[phi_s2].unk_1 = this->unk_388[phi_s2].unk_2;
                }
                break;
            case 2:
                Math_ApproachF(&this->unk_388[phi_s2].unk_20, 0.0f, 0.02f, this->unk_388[phi_s2].unk_24);
                Math_ApproachF(&this->unk_388[phi_s2].unk_24, 1.0f, 0.001f, 1.0f);
                if (this->unk_388[phi_s2].unk_20 <= 0.01f) {
                    this->unk_388[phi_s2].unk_28 = this->unk_388[phi_s2].unk_28 + 0.2f;
                    if (this->unk_388[phi_s2].unk_28 > 1.0f) {
                        this->unk_388[phi_s2].unk_28 = 1.0f;
                    }
                    this->unk_388[phi_s2].unk_20 = 0.0f;
                    this->unk_388[phi_s2].unk_24 = 0.0f;
                    this->unk_388[phi_s2].unk_1 = 1;
                    this->unk_388[phi_s2].unk_2 = 0;
                    this->unk_388[phi_s2].unk_6 = 0;
                }
                break;
            case 3:
                Math_ApproachF(&this->unk_388[phi_s2].unk_20, 0.0f, 0.5f, 1.0f);
                if (this->unk_388[phi_s2].unk_20 <= 0.01f) {
                    this->unk_388[phi_s2].unk_28 = 0.2f;
                    this->unk_388[phi_s2].unk_20 = 0.0f;
                    this->unk_388[phi_s2].unk_24 = 0.0f;
                    this->unk_388[phi_s2].unk_1 = 1;
                    this->unk_388[phi_s2].unk_2 = 0;
                    this->unk_388[phi_s2].unk_6 = (s32)Rand_ZeroFloat(60.0f) + 0x3C;
                }
                break;
        }

        temp_f20 = this->unk_388[phi_s2].unk_20 * 60.0f;
        if ((phi_s2 == 0) || (phi_s2 == 3)) {
            this->unk_388[phi_s2].unk_8.x = this->unk_388[phi_s2].unk_14.x;
            this->unk_388[phi_s2].unk_8.y = this->unk_388[phi_s2].unk_14.y + temp_f20;
            this->unk_388[phi_s2].unk_8.z = this->unk_388[phi_s2].unk_14.z;
        } else if (phi_s2 == 1) {
            temp_s1 = this->dyna.actor.posRot.rot.y - 0x4000;
            this->unk_388[phi_s2].unk_8.x = this->unk_388[phi_s2].unk_14.x + Math_SinS(temp_s1) * temp_f20;
            this->unk_388[phi_s2].unk_8.z = this->unk_388[phi_s2].unk_14.z + Math_CosS(temp_s1) * temp_f20;
            this->unk_388[phi_s2].unk_8.y = this->unk_388[phi_s2].unk_14.y;
        } else {
            temp_s1 = this->dyna.actor.posRot.rot.y + 0x4000;
            this->unk_388[phi_s2].unk_8.x = this->unk_388[phi_s2].unk_14.x + Math_SinS(temp_s1) * temp_f20;
            this->unk_388[phi_s2].unk_8.z = this->unk_388[phi_s2].unk_14.z + Math_CosS(temp_s1) * temp_f20;
            this->unk_388[phi_s2].unk_8.y = this->unk_388[phi_s2].unk_14.y;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2FFFC.s")
#endif

#ifdef NON_MATCHING
// Lots of regalloc, some reorderings particularly near Gfx_TwoTexScroll
void func_80A30350(EnGb *this, GlobalContext *globalCtx) {
    s32 i;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_gb.c", 914);

    func_80093D84(globalCtx->state.gfxCtx);

    for (i = 0; i < 4; i++) {
        Struct_80A30660 *temp_s0 = &D_80A30660[this->unk_388[i].unk_0];

        gSPSegment(POLY_XLU_DISP++, 0x08, 
                    Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 64, 1, 0, (temp_s0->unk_C * this->unk_380) & 0x1FF, 32, 64));
        gSPSegment(POLY_XLU_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(temp_s0->unk_8));
        gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, temp_s0->primR, temp_s0->primG, temp_s0->primB, temp_s0->primA);
        gDPSetEnvColor(POLY_XLU_DISP++, temp_s0->envR, temp_s0->envG, temp_s0->envB, temp_s0->envA);

        Matrix_Push();
        Matrix_Translate(this->unk_388[i].unk_8.x, this->unk_388[i].unk_8.y, this->unk_388[i].unk_8.z, MTXMODE_NEW);
        func_800D1FD4(&globalCtx->mf_11DA0);

        if (this->unk_388[i].unk_4 != 0) {
            Matrix_RotateRPY(0, -0x8000, 0, MTXMODE_APPLY);
        }
        Matrix_Scale(0.007f, 0.007f, 1.0f, MTXMODE_APPLY);

        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_gb.c", 955), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_0600C0B0);

        Matrix_Pull();
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_gb.c", 962);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A30350.s")
#endif
