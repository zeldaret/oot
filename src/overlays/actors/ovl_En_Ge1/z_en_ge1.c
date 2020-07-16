#include "z_en_ge1.h"
#include "overlays/actors/ovl_En_Horse/z_en_horse.h"
#include <vt.h>

#define FLAGS 0x00000009

#define THIS ((EnGe1*)thisx)

void EnGe1_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGe1_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGe1_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGe1_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A323B0(EnGe1* this);
s32 func_80A30DCC(void);

void func_80A30F48(EnGe1* this, GlobalContext* globalCtx);
void func_80A31094(EnGe1* this, GlobalContext* globalCtx);
void func_80A310C4(EnGe1* this, GlobalContext* globalCtx);
void func_80A3118C(EnGe1* this, GlobalContext* globalCtx);
void func_80A31514(EnGe1* this, GlobalContext* globalCtx);
void func_80A317C0(EnGe1* this, GlobalContext* globalCtx);
void func_80A31880(EnGe1* this, GlobalContext* globalCtx);
void func_80A31E2C(EnGe1* this, GlobalContext* globalCtx);
void func_80A31FE0(EnGe1* this, GlobalContext* globalCtx);

void func_80A30EE8(EnGe1* this, GlobalContext* globalCtx);

void func_80A32078(EnGe1* this, GlobalContext* globalCtx);
void func_80A32190(EnGe1* this, GlobalContext* globalCtx);

void func_80A323EC(EnGe1* this);

extern AnimationHeader D_06000228;
extern SkeletonHeader D_06000330;
extern AnimationHeader D_0600A048;
extern AnimationHeader D_0600A498;

const ActorInit En_Ge1_InitVars = {
    ACTOR_EN_GE1,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_GE1,
    sizeof(EnGe1),
    (ActorFunc)EnGe1_Init,
    (ActorFunc)EnGe1_Destroy,
    (ActorFunc)EnGe1_Update,
    (ActorFunc)EnGe1_Draw,
};

static ColliderCylinderInit D_80A32770 = {
    { COLTYPE_UNK10, 0x00, 0x11, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000702, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 20, 40, 0, { 0, 0, 0 } },
};

u32 D_80A3279C[] = { 0x06009198, 0x06009430, 0x06009690 };

Vec3f D_80A327A8 = { 600.0f, 700.0f, 0.0f };

u32 D_80A327B4[] = { 0x06000708, 0x06000F08, 0x06001708 };

void EnGe1_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnGe1* this = THIS;
    ColliderCylinder* collider = &this->collider;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06000330, &D_06000228, &this->limbDrawTbl, &this->unk_23C, 0x10);
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06000228);
    Collider_InitCylinder(globalCtx, collider);
    Collider_SetCylinder(globalCtx, collider, &this->actor, &D_80A32770);
    this->actor.colChkInfo.mass = 0xFF;
    this->unk_2B0 = &D_06000228;
    this->unk_2B8 = func_80A323B0;
    this->actor.unk_1F = 6;
    Actor_SetScale(&this->actor, 0.01f);

    if (globalCtx->sceneNum == 0x5A) {
        this->actor.uncullZoneForward = 1000.0f;
    } else {
        this->actor.uncullZoneForward = 1200.0f;
    }

    switch (this->actor.params & 0xFF) {
        case 0:
            this->unk_2AE = 2;
            this->actionFunc = func_80A31880;
            break;
        case 1:
            this->unk_2AE = 1;
            if (func_80A30DCC()) {
                this->actionFunc = func_80A317C0;
            } else {
                this->actionFunc = func_80A30F48;
            }
            break;
        case 4:
            this->unk_2AE = 1;
            if (func_80A30DCC()) {
                this->actionFunc = func_80A31094;
            } else {
                this->actionFunc = func_80A310C4;
            }
            break;
        case 5:
            if (gSaveContext.linkAge == 0) {
                osSyncPrintf(VT_FGCOL(CYAN) "谷底 ゲルド 撤退 \n" VT_RST);
                Actor_Kill(&this->actor);
                return;
            }
            this->unk_2AE = 0;
            this->actionFunc = func_80A3118C;
            break;
        case 0x45:
            if (gSaveContext.items[gItemSlots[3]] == 0xFF) {
                Actor_Kill(&this->actor);
                return;
            }
            this->actor.unk_1F = 3;
            this->unk_2AE = 0;
            osSyncPrintf(VT_FGCOL(CYAN) "やぶさめ ゲルド EVENT_INF(0) = %x\n" VT_RST, gSaveContext.eventInf[0]);
            if (gSaveContext.eventInf[0] & 0x100) {
                this->actionFunc = func_80A31E2C;
            } else if (func_80A30DCC()) {
                this->actionFunc = func_80A31FE0;
            } else {
                this->actionFunc = func_80A30F48;
            }
            break;
        case 0x46:
            this->unk_2AE = 1;
            if (func_80A30DCC()) {
                this->actionFunc = func_80A31514;
            } else {
                this->actionFunc = func_80A30F48;
            }
            break;
    }

    this->unk_2AC = 0;
}

void EnGe1_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnGe1* this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

s32 func_80A30C70(EnGe1* this, GlobalContext* globalCtx, u16 arg2, f32 arg3, EnGe1ActionFunc funcPtr) {
    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = funcPtr;
        this->unk_2B8 = func_80A323EC;
        this->unk_2AC &= ~4;
        this->unk_2B0 = &D_06000228;
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06000228, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&D_06000228.genericHeader), 2, -8.0f);
        return 1;
    } else {
        this->actor.textId = arg2;
        if (this->actor.xzDistFromLink < arg3) {
            func_8002F2CC(&this->actor, globalCtx, arg3);
        }
        return 0;
    }
}

void func_80A30D48(EnGe1* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000228, -1.0f, SkelAnime_GetFrameCount(&D_06000228.genericHeader), 0.0f,
                         2, 8.0f);
    this->unk_2B0 = &D_06000228;
    this->unk_2B8 = func_80A323B0;
}

s32 func_80A30DCC(void) {
    if ((!(gSaveContext.eventChkInf[9] & 1)) || (!(gSaveContext.eventChkInf[9] & 2)) ||
        (!(gSaveContext.eventChkInf[9] & 4)) || (!(gSaveContext.eventChkInf[9] & 8))) {
        return 0;
    }
    return 1;
}

void func_80A30E08(EnGe1* this, GlobalContext* globalCtx) {
    this->unk_2AC |= 1;
    if (this->unk_2AF > 0) {
        this->unk_2AF--;
        return;
    }
    func_8006D074(globalCtx);
    if ((gSaveContext.items[gItemSlots[0xA]] == 0xFF) || (gSaveContext.items[gItemSlots[0xB]] == 0xFF)) {
        globalCtx->nextEntranceIndex = 0x1A5;
    } else if (gSaveContext.eventChkInf[12] & 0x80) {
        globalCtx->nextEntranceIndex = 0x5F8;
    } else {
        globalCtx->nextEntranceIndex = 0x3B4;
    }
    globalCtx->fadeTransition = 0x26;
    globalCtx->sceneLoadFlag = 0x14;
}

void func_80A30EE8(EnGe1* this, GlobalContext* globalCtx) {
    this->unk_2AF = 0x1E;
    this->actionFunc = func_80A30E08;

    func_8002DF54(globalCtx, &this->actor, 0x5F);
    func_80078884(0x482C);
    func_8010B680(globalCtx, 0x6000, &this->actor);
}

void func_80A30F48(EnGe1* this, GlobalContext* globalCtx) {
    s32 tmp = (s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y);

    if ((ABS(tmp) < 0x4301) && (this->actor.xzDistFromLink < 100.0f)) {
        func_80A30EE8(this, globalCtx);
    }

    if (this->collider.base.acFlags & 2) {
        func_80A30EE8(this, globalCtx);
    }
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

void func_80A31000(EnGe1* this, GlobalContext* globalCtx) {
    this->unk_2AC |= 1;
    if (func_8002F334(&this->actor, globalCtx)) {
        switch (this->actor.textId) {
            case 0x6001:
                this->actionFunc = func_80A31094;
                break;
            case 0x6019:
            case 0x601A:
                this->actionFunc = func_80A3118C;
                break;
            case 0x6018:
                this->actionFunc = func_80A317C0;
                break;
            default:
                this->actionFunc = func_80A3118C;
                break;
        }
    }
}

void func_80A31094(EnGe1* this, GlobalContext* globalCtx) {
    func_80A30C70(this, globalCtx, 0x6001, 100.0f, func_80A31000);
}

void func_80A310C4(EnGe1* this, GlobalContext* globalCtx) {
    s32 tmp = (s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y);

    if ((this->actor.xzDistFromLink < 50.0f) || ((ABS(tmp) < 0x4301) && (this->actor.xzDistFromLink < 400.0f))) {
        func_80A30EE8(this, globalCtx);
    }
    if (this->collider.base.acFlags & 2) {
        func_80A30EE8(this, globalCtx);
    }
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

void func_80A3118C(EnGe1* this, GlobalContext* globalCtx) {
    u16 textId = Text_GetFaceReaction(globalCtx, 0x22);
    if (textId == 0) {
        textId = 0x6019;
    }
    func_80A30C70(this, globalCtx, textId, 100.0f, func_80A31000);
}

void func_80A311E0(EnGe1* this, GlobalContext* globalCtx) {
    if (this->unk_2AF > 0) {
        this->unk_2AF--;
    } else {
        func_80A30D48(this);
        this->actionFunc = func_80A31094;
    }
    this->unk_2AC |= 8;
}

void func_80A31234(EnGe1* this, GlobalContext* globalCtx) {
    if (this->unk_2AC & 4) {
        this->actionFunc = func_80A311E0;
        Flags_SetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F);
        this->unk_2AF = 0x32;
        func_80106CCC(globalCtx);
    } else {
        if ((this->skelAnime.animCurrentFrame == 15.0f) || (this->skelAnime.animCurrentFrame == 19.0f)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_IT_HAND_CLAP);
        }
    }
}

void func_80A312E4(EnGe1* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80106BC8(globalCtx)) {
            this->actionFunc = func_80A31234;
            SkelAnime_ChangeAnim(&this->skelAnime, &D_0600A048, 1.0f, 0.0f,
                                 SkelAnime_GetFrameCount(&D_0600A048.genericHeader), 2, -3.0f);
            this->unk_2B0 = &D_0600A048;
            this->unk_2B8 = func_80A323EC;
            this->unk_2AC &= ~4;
        }
    }
}

void func_80A313A0(EnGe1* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        this->actionFunc = func_80A31514;
        func_80A30D48(this);
    }
}

void func_80A313E0(EnGe1* this, GlobalContext* globalCtx) {
    this->unk_2AC |= 1;
    if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && (func_80106BC8(globalCtx))) {
        func_80106CCC(globalCtx);
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0:
                if (gSaveContext.rupees < 10) {
                    func_8010B720(globalCtx, 0x6016);
                    this->actionFunc = func_80A313A0;
                } else {
                    Rupees_ChangeBy(-10);
                    func_8010B720(globalCtx, 0x6015);
                    this->actionFunc = func_80A312E4;
                }
                break;
            case 1:
                this->actionFunc = func_80A31514;
                func_80A30D48(this);
                break;
        }
    }
}

void func_80A314D0(EnGe1* this, GlobalContext* globalCtx) {
    this->unk_2AC |= 1;
    if (func_8002F334(&this->actor, globalCtx)) {
        this->actionFunc = func_80A31514;
        func_80A30D48(this);
    }
}

void func_80A31514(EnGe1* this, GlobalContext* globalCtx) {
    if (CHECK_QUEST_ITEM(22)) {
        func_80A30C70(this, globalCtx, 0x6014, 100.0f, func_80A313E0);
    } else {
        func_80A30C70(this, globalCtx, 0x6013, 100.0f, func_80A314D0);
    }
}

void func_80A3157C(EnGe1* this, GlobalContext* globalCtx) {
    this->unk_2AC |= 1;
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80106BC8(globalCtx) != 0) {
            func_80106CCC(globalCtx);
            this->actionFunc = func_80A317C0;
            func_80A30D48(this);
        }
    }
}

void func_80A315F0(EnGe1* this, GlobalContext* globalCtx) {
    if (this->unk_2AF > 0) {
        this->unk_2AF--;
    } else {
        func_80A30D48(this);
        this->actionFunc = func_80A317C0;
    }
    this->unk_2AC |= 8;
}

void func_80A31644(EnGe1* this, GlobalContext* globalCtx) {
    if (this->unk_2AC & 4) {
        this->actionFunc = func_80A315F0;
        Flags_SetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F);
        this->unk_2AF = 50;
        func_80106CCC(globalCtx);
        return;
    }
    if ((this->skelAnime.animCurrentFrame == 15.0f) || (this->skelAnime.animCurrentFrame == 19.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_IT_HAND_CLAP);
    }
}

void func_80A316F4(EnGe1* this, GlobalContext* globalCtx) {
    this->unk_2AC |= 1;
    if (func_8010BDBC(&globalCtx->msgCtx) == 5) {
        if (func_80106BC8(globalCtx)) {
            this->actionFunc = func_80A31644;
            SkelAnime_ChangeAnim(&this->skelAnime, &D_0600A048, 1.0f, 0.0f,
                                 SkelAnime_GetFrameCount(&D_0600A048.genericHeader), 2, -3.0f);
            this->unk_2B0 = &D_0600A048;
            this->unk_2B8 = func_80A323EC;
            this->unk_2AC &= ~4;
        }
    }
}

void func_80A317C0(EnGe1* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F)) {
        func_80A30C70(this, globalCtx, 0x6018, 100.0f, func_80A3157C);
    } else {
        func_80A30C70(this, globalCtx, 0x6017, 100.0f, func_80A316F4);
    }
}

void func_80A3183C(EnGe1* this, GlobalContext* globalCtx) {
    this->unk_2AC |= 1;
    if (func_8002F334(&this->actor, globalCtx)) {
        this->actionFunc = func_80A31880;
        func_80A30D48(this);
    }
}

void func_80A31880(EnGe1* this, GlobalContext* globalCtx) {
    u16 textId = Text_GetFaceReaction(globalCtx, 0x22);

    if (textId == 0) {
        textId = 0x6069;
    }
    if (func_80A30C70(this, globalCtx, textId, 100.0f, func_80A3183C) != 0) {
        this->unk_2B8 = func_80A323B0;
        this->unk_2B0 = &D_0600A498;
        SkelAnime_ChangeAnim(&this->skelAnime, &D_0600A498, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&D_0600A498.genericHeader), 2, -8.0f);
    }
}

void func_80A31934(EnGe1* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx)) {
        this->actionFunc = func_80A31FE0;
        func_80A30D48(this);
    }
}

#ifdef NON_MATCHING
// very weird, 0x24(sp) not even valid? Looks like un-assigned stack var
// can't get the load the right way around either
void func_80A3196C(EnGe1* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 tmp;
    s32 tmp3;
    u8 tmp8;

    if (func_8002F410(&this->actor, globalCtx)) {
        this->actionFunc = func_80A31934;
        if (this->unk_2AC & 2) {
            gSaveContext.itemGetInf[0] |= 0x8000;
        } else {
            gSaveContext.infTable[25] |= 1;
        }
        return;
    } else {
        tmp = 0x3E;
        if (this->unk_2AC & 2) {
            tmp8 = gUpgradeShifts[0];
            tmp = (s32)(gSaveContext.upgrades & gUpgradeMasks[0]) >> tmp8;
            switch (tmp) {
                case 1:
                    tmp = 0x30;
                    break;
                case 2:
                    tmp = 0x31;
                    break;
                default:
                    tmp = pad;
            }
        }
        func_8002F434(&this->actor, globalCtx, tmp, 10000.0f, 50.0f);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A3196C.s")
#endif

void func_80A3196C(EnGe1* this, GlobalContext* globalCtx);

#ifdef NON_MATCHING
// Same weird pattern as above
void func_80A31A5C(EnGe1* this, GlobalContext* globalCtx) {
    s32 sp24;
    s32 phi_a2;

    if (func_8002F334(&this->actor, globalCtx)) {
        this->actor.flags &= ~0x10000;
        this->actionFunc = func_80A3196C;
    }
    phi_a2 = 0x3E;
    if (this->unk_2AC & 2) {
        switch (CUR_UPG_VALUE(0)) {
            case 1:
                phi_a2 = 0x30;
                break;
            case 2:
                phi_a2 = 0x31;
                break;
            default:
                phi_a2 = sp24;
        }
    }
    func_8002F434(&this->actor, globalCtx, phi_a2, 10000.0f, 50.0f);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func_80A31A5C.s")
#endif

void func_80A31A5C(EnGe1* this, GlobalContext* globalCtx);

void func_80A31B20(EnGe1* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = func_80A31A5C;
        this->actor.flags &= ~0x10000;
    } else {
        func_8002F2CC(&this->actor, globalCtx, 200.0f);
    }
}

void func_80A31B7C(EnGe1* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx))) {
        func_80106CCC(globalCtx);
        this->actionFunc = func_80A31FE0;
        func_80A30D48(this);
    }
}

void func_80A31BDC(EnGe1* this, GlobalContext* globalCtx) {
}

void func_80A31BE8(EnGe1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    EnHorse* horseyneighneigh;

    if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && (func_80106BC8(globalCtx))) {
        this->actor.flags &= ~0x10000;
        switch (globalCtx->msgCtx.choiceIndex) {
            case 0:
                if (gSaveContext.rupees < 20) {
                    func_8010B720(globalCtx, 0x85);
                    this->actionFunc = func_80A31B7C;
                    return;
                }
                Rupees_ChangeBy(-20);
                globalCtx->nextEntranceIndex = 0x129;
                gSaveContext.nextCutsceneIndex = 0xFFF0;
                globalCtx->fadeTransition = 0x26;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.eventInf[0] |= 0x100;
                gSaveContext.eventChkInf[6] |= 0x100;
                if (!(player->stateFlags1 & 0x800000)) {
                    func_8002DF54(globalCtx, &this->actor, 1);
                } else {
                    horseyneighneigh =
                        (EnHorse*)Actor_FindNearby(globalCtx, &player->actor, ACTOR_EN_HORSE, 1, 1200.0f);
                    player->actor.freezeTimer = 0x4B0;
                    if (horseyneighneigh != NULL) {
                        horseyneighneigh->actor.freezeTimer = 0x4B0;
                    }
                }
                this->actionFunc = func_80A31BDC;
                break;
            case 1:
                this->actionFunc = func_80A31FE0;
                func_80106CCC(globalCtx);
                break;
        }
    }
}

void func_80A31D88(EnGe1* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
        func_8010B720(globalCtx, 0x6041);
        this->actionFunc = func_80A31BE8;
    }
}

void func_80A31DE4(EnGe1* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = func_80A31D88;
    } else {
        func_8002F2CC(&this->actor, globalCtx, 300.0f);
    }
}

void func_80A31E2C(EnGe1* this, GlobalContext* globalCtx) {
    u16* tmp;

    gSaveContext.eventInf[0] &= ~0x100;
    LogUtils_LogThreadId("../z_en_ge1.c", 0x456);
    osSyncPrintf("z_common_data.yabusame_total = %d\n", gSaveContext.minigameScore);
    if (1) {}
    LogUtils_LogThreadId("../z_en_ge1.c", 0x457);
    osSyncPrintf("z_common_data.memory.information.room_inf[127][ 0 ] = %d\n", gSaveContext.unk_EB8);

    this->actor.flags |= 0x10000;

    if (gSaveContext.unk_EB8 < gSaveContext.minigameScore) {
        tmp = &gSaveContext.minigameScore;
        gSaveContext.unk_EB8 = *tmp;
    }

    if (gSaveContext.minigameScore < 1000) {
        this->actor.textId = 0x6045;
        this->actionFunc = func_80A31DE4;
        if (1) {}
    } else if (!(gSaveContext.infTable[25] & 1)) {
        this->actor.textId = 0x6046;
        this->actionFunc = func_80A31B20;
        this->unk_2AC &= ~2;
    } else if (gSaveContext.minigameScore < 0x5DC) {
        this->actor.textId = 0x6047;
        this->actionFunc = func_80A31DE4;
    } else if (gSaveContext.itemGetInf[0] & 0x8000) {
        this->actor.textId = 0x6047;
        this->actionFunc = func_80A31DE4;
    } else {
        this->actor.textId = 0x6044;
        this->actionFunc = func_80A31B20;
        this->unk_2AC |= 2;
    }
}

void func_80A31F9C(EnGe1* this, GlobalContext* globalCtx) {
    this->unk_2AC |= 1;
    if (func_8002F334(&this->actor, globalCtx)) {
        this->actionFunc = func_80A31FE0;
        func_80A30D48(this);
    }
}

void func_80A31FE0(EnGe1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    u16 textId;

    if (!(player->stateFlags1 & 0x800000)) {
        func_80A30C70(this, globalCtx, 0x603F, 100.0f, func_80A31F9C);
        return;
    } else if (gSaveContext.eventChkInf[6] & 0x100) {
        if (gSaveContext.infTable[25] & 1) {
            textId = 0x6042;
        } else {
            textId = 0x6043;
        }
    } else {
        textId = 0x6040;
    }
    func_80A30C70(this, globalCtx, textId, 200.0f, func_80A31D88);
}

void func_80A32078(EnGe1* this, GlobalContext* globalCtx) {
    s32 tmp = (s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y);
    s32 pad;

    if (ABS(tmp) < 0x4001) {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 6, 0xFA0, 0x64);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        func_80038290(globalCtx, &this->actor, &this->unk_29C, &this->unk_2A2, this->actor.posRot2.pos);
    } else {
        if (tmp < 0) {
            Math_SmoothScaleMaxMinS(&this->unk_29C.y, -0x2000, 6, 0x1838, 0x100);
        } else {
            Math_SmoothScaleMaxMinS(&this->unk_29C.y, 0x2000, 6, 0x1838, 0x100);
        }
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 0xC, 0x3E8, 0x64);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
    }
}

void func_80A32190(EnGe1* this, GlobalContext* globalCtx) {
    s32 tmp = (s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y);

    if ((ABS(tmp) < 0x4301) && (this->actor.xzDistFromLink < 100.0f)) {
        func_80038290(globalCtx, &this->actor, &this->unk_29C, &this->unk_2A2, this->actor.posRot2.pos);
    } else {
        Math_SmoothScaleMaxMinS(&this->unk_29C.x, 0, 6, 0x1838, 0x64);
        Math_SmoothScaleMaxMinS(&this->unk_29C.y, 0, 6, 0x1838, 0x64);
    }
}

void EnGe1_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnGe1* this = THIS;
    ColliderCylinder* collider = &this->collider;

    Collider_CylinderUpdate(&this->actor, collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &collider->base);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 40.0f, 25.0f, 40.0f, 5);
    this->unk_2B8(this);
    this->actionFunc(this, globalCtx);
    if (this->unk_2AC & 1) {
        func_80A32078(this, globalCtx);
        this->unk_2AC &= ~1;
    } else {
        func_80A32190(this, globalCtx);
    }

    this->unk_2A2.x = this->unk_2A2.y = this->unk_2A2.z = 0;

    if (DECR(this->unk_2AA) == 0) {
        this->unk_2AA = Math_Rand_S16Offset(0x3C, 0x3C);
    }
    this->unk_2A8 = this->unk_2AA;
    if (this->unk_2A8 >= 3) {
        this->unk_2A8 = 0;
    }
}

void func_80A323B0(EnGe1* this) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, this->unk_2B0);
    }
}

void func_80A323EC(EnGe1* this) {
    if (!(this->unk_2AC & 4)) {
        if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
            this->unk_2AC |= 4;
        }
        this->unk_2AC |= 8;
    }
}

s32 func_80A32444(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnGe1* this = THIS;
    s32 limbIdx;

    if (limbIndex == 0xF) {
        rot->x += this->unk_29C.y;
        rot->z += this->unk_29C.x;
    }
    if (this->unk_2AC & 8) {
        this->unk_2AC &= ~8;
        return 0;
    }
    if ((limbIndex == 8) || (limbIndex == 0xA) || (limbIndex == 0xD)) {
        limbIdx = limbIndex * 50;
        rot->y += Math_Sins(globalCtx->state.frames * (limbIdx + 0x814)) * 200.0f;
        rot->z += Math_Coss(globalCtx->state.frames * (limbIdx + 0x940)) * 200.0f;
    }
    return 0;
}

void func_80A32598(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    EnGe1* this = THIS;

    {
        GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
        Gfx* dispRefs[4];

        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ge1.c", 0x58B);
        if (limbIndex == 0xF) {
            gSPDisplayList(gfxCtx->polyOpa.p++, D_80A3279C[this->unk_2AE]);
            Matrix_MultVec3f(&D_80A327A8, &this->actor.posRot2.pos);
        }
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ge1.c", 0x593);
    }
}

void EnGe1_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnGe1* this = THIS;
    s32 pad;

    {
        GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
        Gfx* dispRefs[4];

        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ge1.c", 0x5A2);
        func_800943C8(globalCtx->state.gfxCtx);

        gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80A327B4[this->unk_2A8]));

        SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                         func_80A32444, func_80A32598, &this->actor);
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ge1.c", 0x5B3);
    }
}
