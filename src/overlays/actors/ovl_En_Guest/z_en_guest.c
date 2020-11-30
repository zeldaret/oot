/*
 * File: z_en_guest.c
 * Overlay: ovl_En_Guest
 * Description: Happy Mask Shop Customer
 */

#include "z_en_guest.h"
#include "vt.h"

#define FLAGS 0x00000019

#define THIS ((EnGuest*)thisx)

void EnGuest_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGuest_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGuest_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGuest_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A50518(EnGuest* this, GlobalContext* globalCtx);
void func_80A5057C(EnGuest* this, GlobalContext* globalCtx);
void func_80A505CC(Actor* thisx, GlobalContext* globalCtx);

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

static ColliderCylinderInit_Set3 sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 10, 60, 0, { 0, 0, 0 } },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(unk_1F, 6, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 500, ICHAIN_STOP),
};

static UNK_PTR D_80A50BA4[] = {
    0x060005FC,
    0x060006FC,
    0x060007FC,
};

extern SkeletonHeader D_060000F0;
extern AnimationHeader D_060042AC;
extern Gfx D_060059B0[];

void EnGuest_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnGuest* this = THIS;

    if (gSaveContext.infTable[7] & 0x40) {
        Actor_Kill(&this->actor);
    } else {
        this->osAnimeBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_OS_ANIME);
        if (this->osAnimeBankIndex < 0) {
            osSyncPrintf(VT_COL(RED, WHITE));
            // No such bank!!
            osSyncPrintf("%s[%d] : バンクが無いよ！！\n", "../z_en_guest.c", 129);
            osSyncPrintf(VT_RST);
            __assert("0", "../z_en_guest.c", 132);
        }
    }
}

void EnGuest_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnGuest* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnGuest_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnGuest* this = THIS;
    s32 pad;

    if (Object_IsLoaded(&globalCtx->objectCtx, this->osAnimeBankIndex) != 0) {
        this->actor.flags &= ~0x10;
        Actor_ProcessInitChain(&this->actor, sInitChain);

        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_060000F0, NULL, this->limbDrawTable, this->transitionDrawTable,
                         16);
        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->osAnimeBankIndex].segment);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_060042AC, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&D_060042AC.genericHeader), 0, 0.0f);

        this->actor.draw = EnGuest_Draw;
        this->actor.update = func_80A505CC;

        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder_Set3(globalCtx, &this->collider, &this->actor, &sCylinderInit);

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
            this->unk_2CA--;
        } else {
            this->unk_30D = 1;
        }
    } else {
        if (this->unk_2CA != 0) {
            this->unk_2CA--;
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
        this->actionFunc = func_80A5057C;
    } else if (this->actor.xzDistFromLink < 100.0f) {
        func_8002F2CC(&this->actor, globalCtx, 100.0f);
    }
}

void func_80A5057C(EnGuest* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 6) {
        if (func_80106BC8(globalCtx) != 0) {
            this->actionFunc = func_80A50518;
        }
    }
}

void func_80A505CC(Actor* thisx, GlobalContext* globalCtx) {
    EnGuest* this = THIS;
    s32 pad;
    Player* player;

    player = PLAYER;
    this->unk_2C8++;

    func_80A5046C(this);
    this->actionFunc(this, globalCtx);

    this->unk_2A0.unk_18 = player->actor.posRot.pos;
    if (LINK_IS_ADULT) {
        this->unk_2A0.unk_14 = 10.0f;
    } else {
        this->unk_2A0.unk_14 = 20.0f;
    }
    func_80034A14(&this->actor, &this->unk_2A0, 6, 2);

    func_80034F54(globalCtx, this->unk_2CC, this->unk_2EC, 16);

    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->osAnimeBankIndex].segment);

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Actor_SetHeight(&this->actor, 60.0f);

    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

Gfx* func_80A50708(GraphicsContext* gfxCtx, u8 r, u8 g, u8 b, u8 a) {
    Gfx* dlist;

    dlist = Graph_Alloc(gfxCtx, 2 * sizeof(Gfx));
    gDPSetEnvColor(dlist, r, g, b, a);
    gSPEndDisplayList(dlist + 1);

    return dlist;
}

s32 EnGuest_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                             Actor* thisx) {
    EnGuest* this = THIS;
    Vec3s sp3C;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_guest.c", 352);

    if (limbIndex == 15) {
        *dList = D_060059B0;
        Matrix_Translate(1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        sp3C = this->unk_2A0.unk_08;
        Matrix_RotateX((sp3C.y / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_RotateZ((sp3C.x / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_Translate(-1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }

    if (limbIndex == 8) {
        sp3C = this->unk_2A0.unk_0E;
        Matrix_RotateX((-sp3C.y / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_RotateZ((sp3C.x / 32768.0f) * M_PI, MTXMODE_APPLY);
    }

    if (limbIndex == 8 || limbIndex == 9 || limbIndex == 12) {
        rot->y += Math_Sins(this->unk_2CC[limbIndex]) * 200.0f;
        rot->z += Math_Coss(this->unk_2EC[limbIndex]) * 200.0f;
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_guest.c", 388);

    return 0;
}

void EnGuest_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnGuest* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_guest.c", 404);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, func_80A50708(globalCtx->state.gfxCtx, 0xFF, 0xFF, 0xFF, 0xFF));
    gSPSegment(POLY_OPA_DISP++, 0x09, func_80A50708(globalCtx->state.gfxCtx, 0xA0, 0x3C, 0xDC, 0xFF));
    gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(D_80A50BA4[this->unk_30E]));

    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                     EnGuest_OverrideLimbDraw, NULL, &this->actor);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_guest.c", 421);
}
