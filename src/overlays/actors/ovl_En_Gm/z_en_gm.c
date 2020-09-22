#include "z_en_gm.h"
#include <vt.h>

#define FLAGS 0x00000019

#define THIS ((EnGm*)thisx)

void EnGm_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGm_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGm_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGm_DrawProc(Actor* thisx, GlobalContext* globalCtx);

void func_80A3D838(EnGm* this, GlobalContext* globalCtx);
void func_80A3DFBC(EnGm* this, GlobalContext* globalCtx);
void func_80A3DB04(EnGm* this, GlobalContext* globalCtx);
void func_80A3DC44(EnGm* this, GlobalContext* globalCtx);
void func_80A3DBF4(EnGm* this, GlobalContext* globalCtx);
void func_80A3DD7C(EnGm* this, GlobalContext* globalCtx);
void func_80A3DE10(EnGm* this, GlobalContext* globalCtx);
void func_80A3DF00(EnGm* this, GlobalContext* globalCtx);
void func_80A3DF60(EnGm* this, GlobalContext* globalCtx);
void EnGm_UpdateEye(EnGm* this);
void EnGm_SetTextID(EnGm* this);
void func_80A3E090(EnGm* this);

s32 func_80A3D7C8(void);

extern UNK_TYPE D_0600DE80[];
extern SkeletonHeader D_0600FEF0;
extern AnimationHeader D_060002B8;

const ActorInit En_Gm_InitVars = {
    ACTOR_EN_GM,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_OF1D_MAP,
    sizeof(EnGm),
    (ActorFunc)EnGm_Init,
    (ActorFunc)EnGm_Destroy,
    (ActorFunc)EnGm_Update,
    NULL,
};

ColliderCylinderInit_Set3 D_80A3E350 = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 100, 120, 0, { 0, 0, 0 } },
};

InitChainEntry D_80A3E37C[] = {
    ICHAIN_U8(unk_1F, 5, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 30, ICHAIN_STOP),
};

void EnGm_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnGm* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_80A3E37C);
    osSyncPrintf(VT_FGCOL(GREEN) "%s[%d] : 中ゴロン[%d]" VT_RST "\n", "../z_en_gm.c", 133,
                 this->actor.params); // "%s[%d]: Medi Goron [%d]"
    this->objBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_GM);
    if (this->objBankIndex < 0) {
        osSyncPrintf(VT_COL(RED, WHITE));
        osSyncPrintf("モデル バンクが無いよ！！（中ゴロン）\n");
        osSyncPrintf(VT_RST);
        __assert("0", "../z_en_gm.c", 145);
    }
    this->actionFunc = func_80A3D838;
}

void EnGm_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnGm* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

s32 func_80A3D7C8(void) {

    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        return 0;
    }

    if (!(gBitFlags[2] & gSaveContext.equipment)) {
        return 1;
    }

    if (gBitFlags[3] & gSaveContext.equipment) {
        return 2;
    }
    return 3;
}

void func_80A3D838(EnGm* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->objBankIndex)) {
        this->actor.flags &= ~0x10;
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0600FEF0, NULL, this->limbDrawTable, this->transitionDrawTable,
                         18);
        gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->objBankIndex].segment);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_060002B8, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&D_060002B8.genericHeader), 0, 0.0f);
        this->actor.draw = EnGm_DrawProc;
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder_Set3(globalCtx, &this->collider, &this->actor, &D_80A3E350);
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 35.0f);
        Actor_SetScale(&this->actor, 0.05f);
        this->actor.colChkInfo.mass = 0xFF;
        this->eyeIndex = 0;
        this->eyeTimer = 20;
        this->actor.textId = 0x3049;
        this->actionFunc = func_80A3DFBC;
        this->subActionFunc = func_80A3DB04;
        this->actor.speedXZ = 0.0f;
        this->actor.gravity = -1.0f;
        this->actor.velocity.y = 0.0f;
    }
}

void EnGm_UpdateEye(EnGm* this) {
    if (this->eyeTimer != 0) {
        this->eyeTimer--;
    } else if ((u8)(this->eyeIndex += 1) >= 3) {
        this->eyeIndex = 0;
        this->eyeTimer = Math_Rand_ZeroFloat(60.0f) + 20.0f;
    }
}

void EnGm_SetTextID(EnGm *this) {
    switch (func_80A3D7C8()) {
        case 0:
            if (gSaveContext.infTable[11] & 1) {
                this->actor.textId = 0x304B;
            } else {
                this->actor.textId = 0x304A;
            }
            break;
        case 1:
            if (gSaveContext.infTable[11] & 2) {
                this->actor.textId = 0x304F;
            } else {
                this->actor.textId = 0x304C;
            }
            break;
        case 2:
            this->actor.textId = 0x304E;
            break;
        case 3:
            this->actor.textId = 0x304D;
            break;
    }

}


// Gm_Wall_Wait
void func_80A3DB04(EnGm* this, GlobalContext* globalCtx) {
    f32 dx;
    f32 dz;
    Player* player = PLAYER;

    dx = this->talkPos.x - player->actor.posRot.pos.x;
    dz = this->talkPos.z - player->actor.posRot.pos.z;

    if (Flags_GetSwitch(globalCtx, this->actor.params)) {
        EnGm_SetTextID(this);
        this->subActionFunc = func_80A3DC44;
    } else if (func_8002F194(&this->actor, globalCtx)) {
        this->subActionFunc = func_80A3DBF4;
    } else if (this->collider.base.maskA & 2 || (SQ(dx) + SQ(dz)) < 10000.0f) {
        this->collider.base.acFlags &= ~2;
        func_8002F2CC(&this->actor, globalCtx, 415.0f);
    }
}

// Gm_Wall_Talk_Start
void func_80A3DBF4(EnGm* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 6 && func_80106BC8(globalCtx)) {
        this->subActionFunc = func_80A3DB04;
    }
}

// Gm_talk_wait
void func_80A3DC44(EnGm* this, GlobalContext* globalCtx) {
    f32 dx;
    f32 dz;
    f32 dist;
    Player* player = PLAYER;

    EnGm_SetTextID(this);

    dx = this->talkPos.x - player->actor.posRot.pos.x;
    dz = this->talkPos.z - player->actor.posRot.pos.z;

    if (func_8002F194(&this->actor, globalCtx)) {
        switch (func_80A3D7C8()) {
            case 0:
                gSaveContext.infTable[11] |= 1;
            case 3:
                this->subActionFunc = func_80A3DD7C;
                return;
            case 1:
                gSaveContext.infTable[11] |= 2;
            case 2:
                this->subActionFunc = func_80A3DE10;
                return;
            default:
                return;
        }

        this->subActionFunc = func_80A3DE10;
    }
    if (this->collider.base.maskA & 2 || (SQ(dx) + SQ(dz)) < 10000.0f) {
        this->collider.base.acFlags &= 0xFFFD;
        func_8002F2CC(&this->actor, globalCtx, 415.0f);
    }
}

// Gm_Talk_Start
void func_80A3DD7C(EnGm* this, GlobalContext* globalCtx) {
    u8 flag = func_8010BDBC(&globalCtx->msgCtx);

    if ((flag == 6 || flag == 5) && func_80106BC8(globalCtx)) {
        this->subActionFunc = func_80A3DC44;
        if (flag == 5) {
            globalCtx->msgCtx.msgMode = 0x36;
            globalCtx->msgCtx.unk_E3E7 = 4;
        }
    }
}

// Gm_talk2_start
void func_80A3DE10(EnGm* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 4 && func_80106BC8(globalCtx)) {
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0:
                if (gSaveContext.rupees < 200) {
                    func_8010B720(globalCtx, 0xC8);
                    this->subActionFunc = func_80A3DD7C;
                } else {
                    func_8002F434(&this->actor, globalCtx, GI_SWORD_KNIFE, 415.0f, 10.0f);
                    this->subActionFunc = func_80A3DF00;
                }
                break;
            case 1:
                func_8010B720(globalCtx, 0x3050);
                this->subActionFunc = func_80A3DD7C;
                break;
        }
    }
}

void func_80A3DF00(EnGm* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actor.parent = NULL;
        this->subActionFunc = func_80A3DF60;
    } else {
        func_8002F434(&this->actor, globalCtx, GI_SWORD_KNIFE, 415.0f, 10.0f);
    }
}

void func_80A3DF60(EnGm* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 6 && func_80106BC8(globalCtx)) {
        Rupees_ChangeBy(-200);
        this->subActionFunc = func_80A3DC44;
    }
}

void func_80A3DFBC(EnGm* this, GlobalContext* globalCtx) {
    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[this->objBankIndex].segment);
    this->count++;
    this->subActionFunc(this, globalCtx);
    this->actor.posRot2.rot.x = this->actor.posRot.rot.x;
    this->actor.posRot2.rot.y = this->actor.posRot.rot.y;
    this->actor.posRot2.rot.z = this->actor.posRot.rot.z;
    EnGm_UpdateEye(this);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

void EnGm_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnGm* this = THIS;
    this->actionFunc(this, globalCtx);
}

void func_80A3E090(EnGm* this) {
    Vec3f vec1;
    Vec3f vec2;

    Matrix_Push();
    Matrix_Translate(0.0f, 0.0f, 2600.0f, MTXMODE_APPLY);
    Matrix_RotateRPY(this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, (u8)1U);
    vec1.x = vec1.y = vec1.z = 0.0f;
    Matrix_MultVec3f(&vec1, &vec2);
    this->collider.dim.pos.x = vec2.x;
    this->collider.dim.pos.y = vec2.y;
    this->collider.dim.pos.z = vec2.z;
    Matrix_Pull();
    Matrix_Push();
    Matrix_Translate(0.0f, 0.0f, 4300.0f, MTXMODE_APPLY);
    Matrix_RotateRPY(this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, (u8)1U);
    vec1.x = vec1.y = vec1.z = 0.0f;
    Matrix_MultVec3f(&vec1, &this->talkPos);
    Matrix_Pull();
    Matrix_Translate(0.0f, 0.0f, 3800.0f, 1);
    Matrix_RotateRPY(this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, (u8)1U);
    vec1.x = vec1.y = vec1.z = 0.0f;
    Matrix_MultVec3f(&vec1, &this->actor.posRot2.pos);
    this->actor.posRot2.pos.y += 100.0f;
}

void EnGm_DrawProc(Actor* thisx, GlobalContext* globalCtx) {

    static UNK_PTR D_80A3E384[] = {
        0x0600CE80,
        0x0600D280,
        0x0600D680,
    };

    EnGm* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_gm.c", 613);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80A3E384[this->eyeIndex]));
    gSPSegment(oGfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(D_0600DE80));
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, NULL,
                     NULL, &this->actor);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_gm.c", 629);
    func_80A3E090(this);
}
