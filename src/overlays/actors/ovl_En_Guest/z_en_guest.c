#include "z_en_guest.h"
#include <vt.h>

#define FLAGS 0x00000019

#define THIS ((EnGuest*)thisx)

void EnGuest_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGuest_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGuest_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80A5046C(EnGuest* this);
void func_80A50518(EnGuest* this, GlobalContext* globalCtx);
void func_80A5057C(EnGuest* this, GlobalContext* globalCtx);
void func_80A505CC(Actor* thisx, GlobalContext* globalCtx);
s32 func_80A50774(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor);
void EnGuest_Draw(Actor* thisx, GlobalContext* globalCtx);

extern SkeletonHeader D_060000F0;
extern AnimationHeader D_060042AC;
extern UNK_TYPE D_060005FC;
extern UNK_TYPE D_060006FC;
extern UNK_TYPE D_060007FC;
extern Gfx D_060059B0;

const ActorInit En_Guest_InitVars = {
    ACTOR_EN_GUEST,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_BOJ,
    sizeof(EnGuest),
    (ActorFunc)EnGuest_Init,
    (ActorFunc)EnGuest_Destroy,
    (ActorFunc)EnGuest_Update,
    NULL,
};

static ColliderCylinderInit_Set3 colliderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 10, 60, 0, { 0, 0, 0 } },
};

static InitChainEntry initChain[] = {
    ICHAIN_U8(unk_1F, 6, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 500, ICHAIN_STOP),
};

UNK_PTR D_80A50BA4[] = {
    &D_060005FC,
    &D_060006FC,
    &D_060007FC,
};

void EnGuest_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnGuest* this = THIS;

    if ((gSaveContext.infTable[7] & 0x40) != 0) {
        Actor_Kill(&this->actor);
    } else {
        this->objBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_OS_ANIME);
        if (this->objBankIndex < 0) {
            osSyncPrintf(VT_COL(RED, WHITE));
            osSyncPrintf("%s[%d] : バンクが無いよ！！\n", "../z_en_guest.c", 129); // No such bank!!
            osSyncPrintf(VT_RST);
            __assert("0", "../z_en_guest.c", 132);
        }
    }
}

void EnGuest_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnGuest* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->colliderCylinder);
}

void EnGuest_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnGuest* this = THIS;
    u32 padding;

    if (Object_IsLoaded(&globalCtx->objectCtx, this->objBankIndex) != 0) {
        this->actor.flags &= ~0x10;
        Actor_ProcessInitChain(&this->actor, initChain);

        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_060000F0, NULL, this->limbDrawTable, this->transitionDrawTable,
                         0x10);
        gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->objBankIndex].segment);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_060042AC, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&D_060042AC.genericHeader), 0, 0.0f);

        this->actor.draw = &EnGuest_Draw;
        this->actor.update = &func_80A505CC;

        Collider_InitCylinder(globalCtx, &this->colliderCylinder);
        Collider_SetCylinder_Set3(globalCtx, &this->colliderCylinder, &this->actor, &colliderInit);

        Actor_SetHeight(&this->actor, 60.0f);

        this->unk_30E = 0;
        this->unk_30D = 0;
        this->unk_2CA = 0;
        this->actor.textId = 0x700D;
        this->actionFunc = func_80A50518;
    }
}

void func_80A5046C(EnGuest* this) {
    if (this->unk_30D == 0) {
        if (this->unk_2CA != 0) {
            this->unk_2CA -= 1;
        } else {
            this->unk_30D = 1;
        }
    } else {
        if (this->unk_2CA != 0) {
            this->unk_2CA -= 1;
        } else {
            this->unk_30E += 1;
            if (this->unk_30E >= 3) {
                this->unk_30E = 0;
                this->unk_30D = 0;
                this->unk_2CA = (s32)Math_Rand_ZeroFloat(60.0f) + 20;
            } else {
                this->unk_2CA = 1;
            }
        }
    }
}

void func_80A50518(EnGuest* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        this->actionFunc = &func_80A5057C;
    } else if (this->actor.xzDistanceFromLink < 100.0f) {
        func_8002F2CC(&this->actor, globalCtx, 100.0f);
    }
}

void func_80A5057C(EnGuest* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 6) {
        if (func_80106BC8(globalCtx) != 0) {
            this->actionFunc = &func_80A50518;
        }
    }
}

void func_80A505CC(Actor* thisx, GlobalContext* globalCtx) {
    EnGuest* this = THIS;
    u32 padding;
    Player* player;

    player = PLAYER;
    this->unk_2C8 += 1;

    func_80A5046C(this);
    this->actionFunc(this, globalCtx);

    this->unk_2A0.unk_18 = player->actor.posRot.pos;
    if (gSaveContext.linkAge == 0) {
        this->unk_2A0.unk_14 = 10.0f;
    } else {
        this->unk_2A0.unk_14 = 20.0f;
    }
    func_80034A14(&this->actor, &this->unk_2A0, 6, 2);

    func_80034F54(globalCtx, this->unk_2CC, this->unk_2EC, 16);

    gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->objBankIndex].segment);

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Actor_SetHeight(&this->actor, 60.0f);

    Collider_CylinderUpdate(&this->actor, &this->colliderCylinder);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderCylinder.base);
}

Gfx* func_80A50708(GraphicsContext* globalCtx, u8 r, u8 g, u8 b, u8 a) {
    Gfx* temp_ret;

    temp_ret = Graph_Alloc(globalCtx, 0x10);
    gDPSetEnvColor(temp_ret, r, g, b, a);
    gSPEndDisplayList(temp_ret + 1);

    return temp_ret;
}

s32 func_80A50774(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnGuest* this = THIS;
    Vec3s sp3C;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_guest.c", 352);

    if (limbIndex == 15) {
        *dList = &D_060059B0;
        Matrix_Translate(1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        sp3C = this->unk_2A0.unk_08;
        Matrix_RotateX((sp3C.y / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_RotateZ((sp3C.x / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_Translate(-1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }

    if (limbIndex == 8) {
        sp3C = this->unk_2A0.unk_0E;
        Matrix_RotateX(((0 - sp3C.y) / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_RotateZ((sp3C.x / 32768.0f) * M_PI, MTXMODE_APPLY);
    }

    if (limbIndex == 8 || limbIndex == 9 || limbIndex == 12) {
        rot->y += Math_Sins(this->unk_2CC[limbIndex]) * 200.0f;
        rot->z += Math_Coss(this->unk_2EC[limbIndex]) * 200.0f;
    }

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_guest.c", 388);

    return 0;
}

void EnGuest_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnGuest* this = THIS;
    GraphicsContext* gfxCtxTemp = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_guest.c", 404);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtxTemp->polyOpa.p++, 0x08, func_80A50708(globalCtx->state.gfxCtx, 0xFF, 0xFF, 0xFF, 0xFF));
    gSPSegment(gfxCtxTemp->polyOpa.p++, 0x09, func_80A50708(globalCtx->state.gfxCtx, 0xA0, 0x3C, 0xDC, 0xFF));
    gSPSegment(gfxCtxTemp->polyOpa.p++, 0x0A, SEGMENTED_TO_VIRTUAL(D_80A50BA4[this->unk_30E]));

    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                     func_80A50774, NULL, &this->actor);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_guest.c", 421);
}
