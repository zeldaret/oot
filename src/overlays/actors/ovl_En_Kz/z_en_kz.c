#include "z_en_kz.h"

#define FLAGS 0x00000009

#define THIS ((EnKz*)thisx)

void EnKz_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKz_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKz_Update(Actor* thisx, GlobalContext* globalCtx);
void EnKz_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A9D0C0(EnKz* this, GlobalContext* globalCtx);
void func_80A9D130(EnKz* this, GlobalContext* globalCtx);
void func_80A9D25C(EnKz* this, GlobalContext* globalCtx);
void func_80A9D3C8(EnKz* this, GlobalContext* globalCtx);

void func_80A9D42C(EnKz* this, GlobalContext* globalCtx);
void func_80A9D490(EnKz* this, GlobalContext* globalCtx);
void func_80A9D520(EnKz* this, GlobalContext* globalCtx);

/*
const ActorInit En_Kz_InitVars = {
    ACTOR_EN_KZ,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_KZ,
    sizeof(EnKz),
    (ActorFunc)EnKz_Init,
    (ActorFunc)EnKz_Destroy,
    (ActorFunc)EnKz_Update,
    (ActorFunc)EnKz_Draw,
};
*/

static ColliderCylinderInit cylinderInit =
{
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 80, 120, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 colChkInfoInit = {
    0x00,
    0x0000,
    0x0000,
    0x0000,
    0xFF,
};

static struct_80034EC0_Entry animations[] = {
    { 0x0600075C, 1.0f, 0.0f, -1.0f, 0x00,   0.0f }, 
    { 0x0600075C, 1.0f, 0.0f, -1.0f, 0x00, -10.0f },
    { 0x0600046C, 1.0f, 0.0f, -1.0f, 0x00, -10.0f },
};

static UNK_PTR eyeSegments[] = {
    0x06001470, 
    0x06001870, 
    0x06001C70,
};

typedef enum {
    /* 0x00 */ KZ_WAIT,
    /* 0x01 */ KZ_TALK,
    /* 0x02 */ KZ_SPECIAL, // as child used to setup the mweep cutscene, as adult use to setup get item
} KingZoraBehavior;

extern SkeletonHeader D_060186D0;

//EnKz_GetTextNoMaskChild
u16 func_80A9C550(GlobalContext* globalCtx, EnKz* this) {
    Player* player = PLAYER;

    if (gBitFlags[20] & gSaveContext.questItems) { // has Zora's Sapphire
        return 0x402B; // "So, you saved the Princess, eh? I really appreciate it!"
    } else if (gSaveContext.eventChkInf[3] & 8) {
        return 0x401C; // "Please find my dear Princess Ruto immediately... Zora!"
    } else {
        player->exchangeItemId = 0x1D;
        return 0x401A; // "Oh, my dear, sweet Princess Ruto... Where has she gone? I'm so worried..."
    }
}

//EnKz_GetTextNoMaskAdult
u16 func_80A9C5AC(GlobalContext* globalCtx, EnKz* this) {
    Player* player = PLAYER;

    if (INV_CONTENT(ITEM_POCKET_EGG) >= ITEM_FROG) {
        if (!(gSaveContext.infTable[19] & 0x200)) {
            if ((gBitFlags[2] << gEquipShifts[2]) & gSaveContext.equipment) { 
                return 0x401F; // "Ohhh, I'm revived...I will give you a Zora Tunic...What?! You already have one?..."
            } else {
                return 0x4012; // "Oh--I've come back to life!...I grant you this tunic..."
            }
        } else {
            return (gBitFlags[8] & gSaveContext.questItems) ? 0x4045 : 0x401A;
            // 4045: "Ah, I see... Princess Ruto went to the Water Temple..."
            // 401A: "Oh, my dear, sweet Princess Ruto... Where has she gone? I'm so worried..."
        }
    } else {
        player->exchangeItemId = 0xC;
        return 0x4012; // "Oh--I've come back to life!...I grant you this tunic..."
    }
}

//EnKz_GetText
u16 func_80A9C658(GlobalContext* globalCtx, EnKz* this) {
    u16 reactionText = Text_GetFaceReaction(globalCtx, 0x1E);

    if (reactionText != 0) {
        return reactionText;
    }

    if (LINK_IS_ADULT) {
        return func_80A9C5AC(globalCtx, this);
    } else {
        return func_80A9C550(globalCtx, this);
    }
}

//u16 func_80A9C6C0(GlobalContext* globalCtx, EnKz* this);
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9C6C0.s")

s16 func_80A9C6C0(GlobalContext* globalCtx, EnKz* this) {
    s32 pad;
    s16 ret = 1;
    switch (func_8010BDBC(&globalCtx->msgCtx)) {
        case 6:
            switch (this->actor.textId) {
                case 0x4012:
                    gSaveContext.infTable[19] |= 0x200;
                    ret = 2;
                    break;
                case 0x401B:
                    if (func_80106BC8(globalCtx) == 0) {
                        ret = 1;
                    } else {
                        ret = 2;
                    }
                    break;
                case 0x401F:
                    gSaveContext.infTable[19] |= 0x200;
                    ret = 0;
                    break;
                default:
                    ret = 0;
                    break;
            }
            break;
        case 3:
            if (this->actor.textId != 0x4014) {
                if (this->actor.textId == 0x401B && this->unk_208 == 0) { //might not be an and
                    Audio_PlaySoundGeneral(NA_SE_SY_CORRECT_CHIME, &D_801333D4, 4, &D_801333E0, 
                                           &D_801333E0, &D_801333E8);
                    this->unk_208 = 1;
                    ret = 1;
                }
            } else {
                if (this->unk_208 == 0) {
                    Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, 
                                           &D_801333E0, &D_801333E8);
                    this->unk_208 = 1;
                    ret = 1;
                }
            }
            break;
        case 4:
            if (func_80106BC8(globalCtx) != 0) {
                ret = 1;
                if (this->actor.textId == 0x4014) {
                    switch (globalCtx->msgCtx.choiceIndex) {
                        case 0: // yes
                            func_80A9D490(this, globalCtx);
                            ret = 2;
                        case 1: // no
                            this->actor.textId = 0x4016;
                            func_8010B720(globalCtx, 0x4016);
                            ret = 1;
                    }
                }
            }
            break;
        case 5:
            ret = 1;
            if (func_80106BC8(globalCtx) != 0) {
                ret = 2;
            }
            break;
        case 0: 
        case 1: 
        case 2: 
        case 7:
        case 8:
        case 9:
            break;
    }
    return ret;
}


//EnKz_UpdateEyes
void func_80A9C8E4(EnKz* this) {
    if (DECR(this->blinkTimer) == 0) {
        this->eyeIdx += 1;
        if (this->eyeIdx >= 3) {
            this->blinkTimer = Math_Rand_S16Offset(30, 30);
            this->eyeIdx = 0;
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9C95C.s")
//s32 func_80A9C95C(GlobalContext* globalCtx, EnKz* this, s16* nextBehavior, f32 unkf, ActorFunc callback1, ActorFunc callback2);

// this function has a conditional with a call to 5c above, which takes 58 (gettext) and c0 as args
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9CB18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9CCD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Kz/func_80A9CE44.s")

void EnKz_Init(Actor* thisx, GlobalContext* globalCtx){
    EnKz* this = THIS;
    s32 pad1;
    
    SkelAnime_InitSV(globalCtx, &this->skelanime, &D_060186D0, NULL, &this->limbDrawTable, 
                     &this->transitionDrawTable, 12);
    ActorShape_Init(&this->actor.shape, 0.0, NULL, 0.0);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &cylinderInit);
    func_80061EFC(&this->actor.colChkInfo, NULL, &colChkInfoInit);
    Actor_SetScale(&this->actor, 0.01);
    this->actor.unk_1F = 3;
    this->nextBehavior = KZ_WAIT;
    func_80034EC0(&this->skelanime, animations, 0);
    if (gSaveContext.eventChkInf[3] & 8) {
        func_80A9CE44(this, globalCtx);
    }

    if (LINK_IS_ADULT) {
        if (!(gSaveContext.infTable[19] & 0x100)) {
            Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_BG_ICE_SHELTER, 
                                this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 
                                0, 0, 0, 0x04FF);
        }
        this->actionFunc = func_80A9D42C;
    } else {
        this->actionFunc = func_80A9D0C0;
    }
}

void EnKz_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnKz* this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

//EnKz_PreMweepWait
void func_80A9D0C0(EnKz* this, GlobalContext* globalCtx){
    if (this->nextBehavior == KZ_SPECIAL) {
        func_80034EC0(&this->skelanime, animations, KZ_SPECIAL);
        this->nextBehavior = KZ_WAIT;
        this->actionFunc = func_80A9D130;
    } else {
        func_80034F54(globalCtx, &this->unk_2A6, &this->unk_2BE, 12);
    }
}

//EnKz_SetupMweep
void func_80A9D130(EnKz* this, GlobalContext* globalCtx) {
    s32 unused[] = {0, 0, 0};
    Vec3f pos;
    Vec3f initPos;

    this->cutsceneCamera = Gameplay_CreateSubCamera(globalCtx);
    this->gameplayCamera = globalCtx->activeCamera;
    Gameplay_ChangeCameraStatus(globalCtx, this->gameplayCamera, 1);
    Gameplay_ChangeCameraStatus(globalCtx, this->cutsceneCamera, 7);
    pos = this->actor.posRot.pos;
    initPos = this->actor.initPosRot.pos;
    pos.y += 60.0f;
    initPos.y += -100.0f;
    initPos.z += 260.0f;
    func_800C04D8(globalCtx, this->cutsceneCamera, &pos, &initPos);
    func_8002DF54(globalCtx, &this->actor, 8);
    this->actor.speedXZ = 0.1f;
    this->actionFunc = func_80A9D25C;
}

//EnKz_Mweep
void func_80A9D25C(EnKz* this, GlobalContext* globalCtx) {
    s32 unused[] = {0, 0, 0};
    Vec3f pos;
    Vec3f initPos;

    pos = this->actor.posRot.pos;
    initPos = this->actor.initPosRot.pos;
    pos.y += 60.0f;
    initPos.y += -100.0f;
    initPos.z += 260.0f;
    func_800C04D8(globalCtx, this->cutsceneCamera, &pos, &initPos);
    if (func_80A9CCD8(this, globalCtx) == 1) {
        if (this->unk_20A == 0) {
            func_80034EC0(&this->skelanime, animations, 1);
            Inventory_ReplaceItem(globalCtx, ITEM_LETTER_RUTO, ITEM_BOTTLE);
            func_80A9CE44(this, globalCtx);
            gSaveContext.eventChkInf[3] |= 8;
            this->actor.speedXZ = 0.0;
            this->actionFunc = &func_80A9D3C8;
        }
    }
    if (this->skelanime.animCurrentFrame == 13.0f) {
        Audio_PlayActorSound2(&this->actor, NA_SE_VO_KZ_MOVE);
    }
}

//EnKz_StopMweep
void func_80A9D3C8(EnKz* this, GlobalContext* globalCtx) {
    Gameplay_ChangeCameraStatus(globalCtx, this->gameplayCamera, 7);
    Gameplay_ClearCamera(globalCtx, this->cutsceneCamera);
    func_8002DF54(globalCtx, &this->actor, 7);
    this->actionFunc = func_80A9D42C;
}

//EnKz_Wait
void func_80A9D42C(EnKz* this, GlobalContext* globalCtx) {
    if (this->nextBehavior == KZ_SPECIAL) {
        this->actionFunc = func_80A9D490;
        func_80A9D490(this, globalCtx);
    } else {
        func_80034F54(globalCtx, &this->unk_2A6, &this->unk_2BE, 12);
    }
}

//EnKz_SetupGetItem
void func_80A9D490(EnKz* this, GlobalContext* globalCtx) {
    s32 getItemID;
    f32 xzRange;
    f32 yRange;

    if (func_8002F410(this, globalCtx)) {
        this->actor.attachedA = NULL;
        this->nextBehavior = KZ_TALK;
        this->actionFunc = func_80A9D520;
    } else {
        getItemID = this->unk_209 == 1 ? GI_FROG : GI_TUNIC_ZORA;
        yRange = fabsf(this->actor.yDistanceFromLink) + 1.0f;
        xzRange = this->actor.xzDistanceFromLink + 1.0f;
        func_8002F434(&this->actor, globalCtx, getItemID, xzRange, yRange);
    }
}

//EnKz_StartTimer
void func_80A9D520(EnKz* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && (func_80106BC8(globalCtx))) {
        if (INV_CONTENT(ITEM_POCKET_EGG) == ITEM_FROG) {
            func_80088AA0(180); // start timer2 with 3 minutes
            gSaveContext.eventInf[1] &= ~1;
        }
        this->nextBehavior = KZ_WAIT;
        this->actionFunc = func_80A9D42C;
    }
}

void EnKz_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnKz* this = THIS;
    s32 pad2;

    if (LINK_IS_ADULT && !(gSaveContext.infTable[19] & 0x100)) {
        gSaveContext.infTable[19] |= 0x100;
    }
    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
    SkelAnime_FrameUpdateMatrix(&this->skelanime);
    func_80A9C8E4(this);
    Actor_MoveForward(&this->actor);
    if (this->actionFunc != func_80A9D520) {
        func_80A9CB18(this, globalCtx);
    }
    this->actionFunc(this, globalCtx);
}

//EnKz_OverrideLimbDraw
s32 func_80A9D670(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    s32 limb = limbIndex;

    if (limb == 8 || limb == 9 || limb == 10) {
        rot->y += (Math_Sins(THIS->unk_2A6[limb]) * 200.0f);
        rot->z += (Math_Coss(THIS->unk_2BE[limb]) * 200.0f);
    }
    return 0;
}

//EnKz_PostLimbDraw
void func_80A9D744(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    s32 limb = limbIndex;
    Vec3f mult = { 2600.0f, 0.0f, 0.0f };

    if (limb == 11) {
        Matrix_MultVec3f(&mult, &THIS->actor.posRot2.pos);
    }
}

void EnKz_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnKz* this = THIS;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_kz.c", 1259);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(eyeSegments[this->eyeIdx]));
    func_800943C8(globalCtx->state.gfxCtx);
    SkelAnime_DrawSV(globalCtx, this->skelanime.skeleton, this->skelanime.limbDrawTbl, 
                     this->skelanime.dListCount, func_80A9D670, func_80A9D744, &this->actor);
    Graph_CloseDisps(&dispRefs, globalCtx->state.gfxCtx, "../z_en_kz.c", 1281);
}

