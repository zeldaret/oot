#include "z_en_ge1.h"
#include "vt.h"

#define FLAGS 0x00000009

#define THIS ((EnGe1*)thisx)

typedef enum {
    /* 0x00 */ GE1_TYPE_BRIDGE_GUARD,
    /* 0x01 */ GE1_TYPE_GATE_OPERATOR,
    /* 0x04 */ GE1_TYPE_NORMAL = 4,
    /* 0x05 */ GE1_TYPE_VALLEY_FLOOR,
    /* 0x45 */ GE1_TYPE_HORSEBACK_ARCHERY = 0x45,
    /* 0x46 */ GE1_TYPE_TRAINING_GROUNDS_GUARD
} EnGe1Tye;

typedef enum {
    /* 00 */ GE1_LIMB_NONE,
    /* 01 */ GE1_LIMB_HIPS,
    /* 02 */ GE1_LIMB_LEFT_THIGH,
    /* 03 */ GE1_LIMB_LEFT_LOWER_LEG,
    /* 04 */ GE1_LIMB_LEFT_FOOT,
    /* 05 */ GE1_LIMB_RIGHT_THIGH,
    /* 06 */ GE1_LIMB_RIGHT_LOWER_LEG,
    /* 07 */ GE1_LIMB_RIGHT_FOOT,
    /* 08 */ GE1_LIMB_TORSO,
    /* 09 */ GE1_LIMB_LEFT_UPPER_ARM,
    /* 10 */ GE1_LIMB_LEFT_FOREARM,
    /* 11 */ GE1_LIMB_LEFT_HAND,
    /* 12 */ GE1_LIMB_RIGHT_UPPER_ARM,
    /* 13 */ GE1_LIMB_RIGHT_FOREARM,
    /* 14 */ GE1_LIMB_RIGHT_HAND,
    /* 15 */ GE1_LIMB_HEAD
} EnGe1Limbs;

typedef enum {
    /* 00 */ GE1_HAIR_0,
    /* 01 */ GE1_HAIR_1,
    /* 02 */ GE1_HAIR_2
} EnGe1Hairstyle;

void EnGe1_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGe1_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGe1_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGe1_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 EnGe1_CheckCarpentersFreed(void);
void func_80A30F48(EnGe1* this, GlobalContext* globalCtx);
void func_80A31094(EnGe1* this, GlobalContext* globalCtx);
void func_80A310C4(EnGe1* this, GlobalContext* globalCtx);
void func_80A3118C(EnGe1* this, GlobalContext* globalCtx);
void EnGe1_CheckForCard(EnGe1* this, GlobalContext* globalCtx);
void func_80A317C0(EnGe1* this, GlobalContext* globalCtx);
void func_80A31880(EnGe1* this, GlobalContext* globalCtx);
void func_80A31E2C(EnGe1* this, GlobalContext* globalCtx);
void func_80A31FE0(EnGe1* this, GlobalContext* globalCtx);
void func_80A323B0(EnGe1* this);
void func_80A323EC(EnGe1* this);

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

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x11, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000702, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 20, 40, 0, { 0, 0, 0 } },
};

static Gfx* sHairstyleDLists[] = {
    0x06009198, // Bob
    0x06009430, // Shoulder-length
    0x06009690, // Spikey
};

static Vec3f D_80A327A8 = { 600.0f, 700.0f, 0.0f };

static u64* sEyeTextures[] = {
    0x06000708, // Mostly Open
    0x06000F08, // Half
    0x06001708, // Closed
};

extern AnimationHeader D_06000228; // Idle, arms crossed
extern FlexSkeletonHeader D_06000330;
extern AnimationHeader D_0600A048; // Clap
extern AnimationHeader D_0600A498; // Dismissive gesture

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/EnGe1_Init.s")
void EnGe1_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnGe1* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06000330, &D_06000228, this->jointTable, this->morphTable, 16);
    Animation_PlayOnce(&this->skelAnime, &D_06000228);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    this->actor.colChkInfo.mass = 0xFF;
    this->animation = &D_06000228;
    this->unk_func = func_80A323B0;
    this->actor.unk_1F = 6;
    Actor_SetScale(&this->actor, 0.01f);

    if (globalCtx->sceneNum == 0x5A) {
        this->actor.uncullZoneForward = 1000.0f;
    } else {
        this->actor.uncullZoneForward = 1200.0f;
    }

    switch (this->actor.params & 0xFF) {

        case GE1_TYPE_BRIDGE_GUARD:
            this->hairstyle = GE1_HAIR_2;
            this->actionFunc = func_80A31880;
            break;

        case GE1_TYPE_GATE_OPERATOR:
            this->hairstyle = GE1_HAIR_1;
            if (EnGe1_CheckCarpentersFreed()) {
                this->actionFunc = func_80A317C0;
            } else {
                this->actionFunc = func_80A30F48;
            }
            break;

        case GE1_TYPE_NORMAL:
            this->hairstyle = GE1_HAIR_1;
            if (EnGe1_CheckCarpentersFreed()) {
                this->actionFunc = func_80A31094;
            } else {
                this->actionFunc = func_80A310C4;
            }
            break;

        case GE1_TYPE_VALLEY_FLOOR:
            if (LINK_IS_ADULT) {
                // Valley floor Gerudo withdrawal
                osSyncPrintf(VT_FGCOL(CYAN) "谷底 ゲルド 撤退 \n" VT_RST);
                Actor_Kill(&this->actor);
                return;
            }
            this->hairstyle = GE1_HAIR_0;
            this->actionFunc = func_80A3118C;
            break;

        case GE1_TYPE_HORSEBACK_ARCHERY:
            if (INV_CONTENT(SLOT_BOW) == ITEM_NONE) {
                Actor_Kill(&this->actor);
                return;
            }
            this->actor.unk_1F = 3;
            this->hairstyle = GE1_HAIR_0;
            // Horsback archery Gerudo EVENT_INF(0) =
            osSyncPrintf(VT_FGCOL(CYAN) "やぶさめ ゲルド EVENT_INF(0) = %x\n" VT_RST, gSaveContext.eventInf[0]);

            if ((gSaveContext.eventInf[0] & 0x100)) {
                this->actionFunc = func_80A31E2C;
            } else if (EnGe1_CheckCarpentersFreed()) {
                this->actionFunc = func_80A31FE0;
            } else {
                this->actionFunc = func_80A30F48;
            }
            break;

        case GE1_TYPE_TRAINING_GROUNDS_GUARD:
            this->hairstyle = GE1_HAIR_1;

            if (EnGe1_CheckCarpentersFreed()) {
                this->actionFunc = EnGe1_CheckForCard;
            } else {
                this->actionFunc = func_80A30F48;
            }
            break;
    }
    this->unk_2AC = 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/EnGe1_Destroy.s")
void EnGe1_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnGe1* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A30C70.s")
s32 func_80A30C70(EnGe1* this, GlobalContext* globalCtx, u16 textId, f32 arg3, EnGe1ActionFunc actionFunc) {
    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = actionFunc;
        this->unk_func = func_80A323EC;
        this->unk_2AC &= ~4;
        this->animation = &D_06000228;
        Animation_Change(&this->skelAnime, &D_06000228, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000228), ANIMMODE_ONCE,
                         -8.0f);
        return 1;
    }
    this->actor.textId = textId;
    if (this->actor.xzDistToLink < arg3) {
        func_8002F2CC(&this->actor, globalCtx, arg3);
    }
    return 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A30D48.s")
void func_80A30D48(EnGe1* this) {
    Animation_Change(&this->skelAnime, &D_06000228, -1.0f, Animation_GetLastFrame(&D_06000228), 0.0f, 2, 8.0f);
    this->animation = &D_06000228;
    this->unk_func = func_80A323B0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A30DCC.s")
s32 EnGe1_CheckCarpentersFreed(void) {
    u16 carpenterFlags = gSaveContext.eventChkInf[9];

    if (!((carpenterFlags & 1) && (carpenterFlags & 2) && (carpenterFlags & 4) && (carpenterFlags & 8))) {
        return 0;
    }
    return 1;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A30E08.s")
/**
 * Send player to different places depending on if has hookshot, and if this is the first time captured
 */
void EnGe1_KickPlayer(EnGe1* this, GlobalContext* globalCtx) {
    this->unk_2AC |= 1;

    if (this->unk_2AF > 0) {
        this->unk_2AF--;
    } else {
        func_8006D074(globalCtx);

        if ((INV_CONTENT(ITEM_HOOKSHOT) == ITEM_NONE) || (INV_CONTENT(ITEM_LONGSHOT) == ITEM_NONE)) {
            globalCtx->nextEntranceIndex = 0x1A5;
        } else if (gSaveContext.eventChkInf[12] & 0x80) {
            globalCtx->nextEntranceIndex = 0x5F8;
        } else {
            globalCtx->nextEntranceIndex = 0x3B4;
        }

        globalCtx->fadeTransition = 0x26;
        globalCtx->sceneLoadFlag = 0x14;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A30EE8.s")
void EnGe1_SpotPlayer(EnGe1* this, GlobalContext* globalCtx) {
    this->unk_2AF = 30;
    this->actionFunc = EnGe1_KickPlayer;
    func_8002DF54(globalCtx, &this->actor, 0x5F);
    func_80078884(NA_SE_SY_FOUND);
    func_8010B680(globalCtx, 0x6000, &this->actor);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A30F48.s")
void func_80A30F48(EnGe1* this, GlobalContext* globalCtx) {
    s16 angleDiff;

    angleDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;

    if ((ABS(angleDiff) <= 0x4300) && (this->actor.xzDistToLink < 100.0f)) {
        EnGe1_SpotPlayer(this, globalCtx);
    }

    if (this->collider.base.acFlags & 2) {
        EnGe1_SpotPlayer(this, globalCtx);
    }
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A31000.s")
void func_80A31000(EnGe1* this, GlobalContext* globalCtx) {
    this->unk_2AC |= 1;

    if (func_8002F334(&this->actor, globalCtx)) {
        switch (this->actor.textId) {
            case 0x6001:
                this->actionFunc = func_80A31094;
                break;
            case 0x601A:
            case 0x6019:
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

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A31094.s")
void func_80A31094(EnGe1* this, GlobalContext* globalCtx) {
    func_80A30C70(this, globalCtx, 0x6001, 100.0f, func_80A31000);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A310C4.s")
void func_80A310C4(EnGe1* this, GlobalContext* globalCtx) {
    s16 angleDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;

    if ((this->actor.xzDistToLink < 50.0f) || ((ABS(angleDiff) <= 0x4300) && (this->actor.xzDistToLink < 400.0f))) {
        EnGe1_SpotPlayer(this, globalCtx);
    }

    if (this->collider.base.acFlags & 2) {
        EnGe1_SpotPlayer(this, globalCtx);
    }
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A3118C.s")
void func_80A3118C(EnGe1* this, GlobalContext* globalCtx) {
    u16 reactionText;

    reactionText = Text_GetFaceReaction(globalCtx, 0x22);
    if (reactionText == 0) {
        reactionText = 0x6019;
    }
    func_80A30C70(this, globalCtx, reactionText, 100.0f, func_80A31000);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A311E0.s")
void func_80A311E0(EnGe1* this, GlobalContext* globalCtx) {
    if (this->unk_2AF > 0) {
        this->unk_2AF--;
    } else {
        func_80A30D48(this);
        this->actionFunc = func_80A31094;
    }
    this->unk_2AC |= 8;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A31234.s")
void func_80A31234(EnGe1* this, GlobalContext* globalCtx) {
    if (this->unk_2AC & 4) {
        this->actionFunc = func_80A311E0;
        Flags_SetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F);
        this->unk_2AF = 50;
        func_80106CCC(globalCtx);
    } else if ((this->skelAnime.curFrame == 15.0f) || (this->skelAnime.curFrame == 19.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_IT_HAND_CLAP);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A312E4.s")
void func_80A312E4(EnGe1* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
        this->actionFunc = func_80A31234;
        Animation_Change(&this->skelAnime, &D_0600A048, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600A048), 2, -3.0f);
        this->animation = &D_0600A048;
        this->unk_func = func_80A323EC;
        this->unk_2AC &= ~4;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A313A0.s")
void func_80A313A0(EnGe1* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        this->actionFunc = EnGe1_CheckForCard;
        func_80A30D48(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A313E0.s")
void func_80A313E0(EnGe1* this, GlobalContext* globalCtx) {
    this->unk_2AC |= 1;
    if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
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
                this->actionFunc = EnGe1_CheckForCard;
                func_80A30D48(this);
                break;
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A314D0.s")
void func_80A314D0(EnGe1* this, GlobalContext* globalCtx) {
    this->unk_2AC |= 1;
    if (func_8002F334(&this->actor, globalCtx)) {
        this->actionFunc = EnGe1_CheckForCard;
        func_80A30D48(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A31514.s")
void EnGe1_CheckForCard(EnGe1* this, GlobalContext* globalCtx) {
    if (CHECK_QUEST_ITEM(QUEST_GERUDO_CARD)) {
        func_80A30C70(this, globalCtx, 0x6014, 100.0f, func_80A313E0);
    } else {
        func_80A30C70(this, globalCtx, 0x6013, 100.0f, func_80A314D0);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A3157C.s")
void func_80A3157C(EnGe1* this, GlobalContext* globalCtx) {
    this->unk_2AC |= 1;

    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
        func_80106CCC(globalCtx);
        this->actionFunc = func_80A317C0;
        func_80A30D48(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A315F0.s")
void func_80A315F0(EnGe1* this, GlobalContext* globalCtx) {
    if (this->unk_2AF > 0) {
        this->unk_2AF--;
    } else {
        func_80A30D48(this);
        this->actionFunc = func_80A317C0;
    }
    this->unk_2AC |= 8;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A31644.s")
void func_80A31644(EnGe1* this, GlobalContext* globalCtx) {
    if (this->unk_2AC & 4) {
        this->actionFunc = func_80A315F0;
        Flags_SetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F);
        this->unk_2AF = 50;
        func_80106CCC(globalCtx);
    } else if ((this->skelAnime.curFrame == 15.0f) || (this->skelAnime.curFrame == 19.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_IT_HAND_CLAP);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A316F4.s")
void func_80A316F4(EnGe1* this, GlobalContext* globalCtx) {
    this->unk_2AC = this->unk_2AC | 1;

    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
        this->actionFunc = func_80A31644;
        Animation_Change(&this->skelAnime, &D_0600A048, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600A048), 2, -3.0f);
        this->animation = &D_0600A048;
        this->unk_func = func_80A323EC;
        this->unk_2AC &= ~4;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A317C0.s")
void func_80A317C0(EnGe1* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, (this->actor.params >> 8) & 0x3F)) {
        func_80A30C70(this, globalCtx, 0x6018, 100.0f, func_80A3157C);
    } else {
        func_80A30C70(this, globalCtx, 0x6017, 100.0f, func_80A316F4);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A3183C.s")
void func_80A3183C(EnGe1* this, GlobalContext* globalCtx) {
    this->unk_2AC |= 1;
    if (func_8002F334(&this->actor, globalCtx)) {
        this->actionFunc = func_80A31880;
        func_80A30D48(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A31880.s")
void func_80A31880(EnGe1* this, GlobalContext* globalCtx) {
    u16 reactionText;

    reactionText = Text_GetFaceReaction(globalCtx, 0x22);
    if (reactionText == 0) {
        reactionText = 0x6069;
    }
    if (func_80A30C70(this, globalCtx, reactionText, 100.0f, func_80A3183C)) {
        this->unk_func = func_80A323B0;
        this->animation = &D_0600A498;
        Animation_Change(&this->skelAnime, &D_0600A498, 1.0f, 0.0f, Animation_GetLastFrame(&D_0600A498), 2, -8.0f);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A31934.s")
void func_80A31934(EnGe1* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx)) {
        this->actionFunc = func_80A31FE0;
        func_80A30D48(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A3196C.s")
// void func_80A3196C(EnGe1 *this, GlobalContext *globalCtx);
void func_80A3196C(EnGe1* this, GlobalContext* globalCtx) {
    s32 getItemId;

    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actionFunc = func_80A31934;
        if ((this->unk_2AC & 2)) {
            gSaveContext.itemGetInf[0] |= 0x8000;
        } else {
            gSaveContext.infTable[25] |= 1;
        }
    } else {
        if (this->unk_2AC & 2) {
            switch (CUR_UPG_VALUE(UPG_QUIVER)) {
                //! @bug Asschest
                case 1:
                    getItemId = GI_QUIVER_40;
                    break;
                case 2:
                    getItemId = GI_QUIVER_50;
                    break;
            }
        } else {
            getItemId = GI_HEART_PIECE;
        }
        func_8002F434(&this->actor, globalCtx, getItemId, 10000.0f, 50.0f);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A31A5C.s")
void func_80A31A5C(EnGe1* this, GlobalContext* globalCtx) {
    s32 getItemId;

    if (func_8002F334(&this->actor, globalCtx)) {
        this->actor.flags = this->actor.flags & ~0x10000;
        this->actionFunc = func_80A3196C;
    }
    if (this->unk_2AC & 2) {
        switch (CUR_UPG_VALUE(UPG_QUIVER)) {
            //! @bug Asschest: the compiler inserts a default assigning sp+0x24 to getItemId
            case 1:
                getItemId = GI_QUIVER_40;
                break;
            case 2:
                getItemId = GI_QUIVER_50;
                break;
        }
    } else {
        getItemId = GI_HEART_PIECE;
    }
    func_8002F434(&this->actor, globalCtx, getItemId, 10000.0f, 50.0f);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A31B20.s")
void func_80A31B20(EnGe1* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = func_80A31A5C;
        this->actor.flags &= ~0x10000;
    } else {
        func_8002F2CC(&this->actor, globalCtx, 200.0f);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A31B7C.s")
void func_80A31B7C(EnGe1* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
        func_80106CCC(globalCtx);
        this->actionFunc = func_80A31FE0;
        func_80A30D48(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A31BDC.s")
void func_80A31BDC(EnGe1* this, GlobalContext* globalCtx) {
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A31BE8.s")
void func_80A31BE8(EnGe1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Actor* horse;

    if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
        this->actor.flags &= ~0x10000;

        switch (globalCtx->msgCtx.choiceIndex) {
            case 0:
                if (gSaveContext.rupees < 20) {
                    func_8010B720(globalCtx, 0x85);
                    this->actionFunc = func_80A31B7C;
                } else {
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
                        horse = Actor_FindNearby(globalCtx, &player->actor, ACTOR_EN_HORSE, ACTORTYPE_BG, 1200.0f);
                        player->actor.freezeTimer = 1200;

                        if (horse != NULL) {
                            horse->freezeTimer = 1200;
                        }
                    }
                    this->actionFunc = func_80A31BDC;
                }
                break;
            case 1:
                this->actionFunc = func_80A31FE0;
                func_80106CCC(globalCtx);
                break;
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A31D88.s")
void func_80A31D88(EnGe1* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
        func_8010B720(globalCtx, 0x6041);
        this->actionFunc = func_80A31BE8;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A31DE4.s")
void func_80A31DE4(EnGe1* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = func_80A31D88;
    } else {
        func_8002F2CC(&this->actor, globalCtx, 300.0f);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A31E2C.s")
void func_80A31E2C(EnGe1* this, GlobalContext* globalCtx) {
    gSaveContext.eventInf[0] &= ~0x100;
    LOG_NUM("z_common_data.yabusame_total", gSaveContext.minigameScore, "../z_en_ge1.c", 1110);
    LOG_NUM("z_common_data.memory.information.room_inf[127][ 0 ]", gSaveContext.highscores[0], "../z_en_ge1.c", 1111);
    this->actor.flags |= 0x10000;

    if (gSaveContext.highscores[0] < gSaveContext.minigameScore) {
        gSaveContext.highscores[0] = gSaveContext.minigameScore;
    }

    if (gSaveContext.minigameScore < 1000) {
        this->actor.textId = 0x6045;
        this->actionFunc = func_80A31DE4;
    } else if (!(gSaveContext.infTable[25] & 1)) {
        this->actor.textId = 0x6046;
        this->actionFunc = func_80A31B20;
        this->unk_2AC &= ~2;
    } else if (gSaveContext.minigameScore < 1500) {
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

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A31F9C.s")
void func_80A31F9C(EnGe1* this, GlobalContext* globalCtx) {
    this->unk_2AC |= 1;
    if (func_8002F334(&this->actor, globalCtx)) {
        this->actionFunc = func_80A31FE0;
        func_80A30D48(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A31FE0.s")
void func_80A31FE0(EnGe1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    u16 textId;

    if (!(player->stateFlags1 & 0x800000)) {
        func_80A30C70(this, globalCtx, 0x603F, 100.0f, func_80A31F9C);
    } else {
        if (gSaveContext.eventChkInf[6] & 0x100) {
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
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A32078.s")
void EnGe1_TurnToFacePlayer(EnGe1* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 angleDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;

    if (ABS(angleDiff) <= 0x4000) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 6, 4000, 100);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        func_80038290(globalCtx, &this->actor, &this->headRot, &this->unk_2A2, this->actor.posRot2.pos);
    } else {
        if (angleDiff < 0) {
            Math_SmoothStepToS(&this->headRot.y, -0x2000, 6, 6200, 0x100);
        } else {
            Math_SmoothStepToS(&this->headRot.y, 0x2000, 6, 6200, 0x100);
        }

        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 12, 1000, 100);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A32190.s")
void EnGe1_LookAtPlayer(EnGe1* this, GlobalContext* globalCtx) {
    s16 angleDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;

    if ((ABS(angleDiff) <= 0x4300) && (this->actor.xzDistToLink < 100.0f)) {
        func_80038290(globalCtx, &this->actor, &this->headRot, &this->unk_2A2, this->actor.posRot2.pos);
    } else {
        Math_SmoothStepToS(&this->headRot.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->headRot.y, 0, 6, 6200, 100);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/EnGe1_Update.s")
void EnGe1_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnGe1* this = THIS;

    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 40.0f, 25.0f, 40.0f, 5);
    this->unk_func(this);
    this->actionFunc(this, globalCtx);

    if (this->unk_2AC & 1) {
        EnGe1_TurnToFacePlayer(this, globalCtx);
        this->unk_2AC &= ~1;
    } else {
        EnGe1_LookAtPlayer(this, globalCtx);
    }
    this->unk_2A2.x = this->unk_2A2.y = this->unk_2A2.z = 0;

    if (DECR(this->blinkTimer) == 0) {
        this->blinkTimer = Rand_S16Offset(60, 60);
    }
    this->eyeIndex = this->blinkTimer;

    if (this->eyeIndex >= 3) {
        this->eyeIndex = 0;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A323B0.s")
void func_80A323B0(EnGe1* this) {
    if (SkelAnime_Update(&this->skelAnime)) {
        Animation_PlayOnce(&this->skelAnime, this->animation);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A323EC.s")
void func_80A323EC(EnGe1* this) {
    if (!(this->unk_2AC & 4)) {
        if (SkelAnime_Update(&this->skelAnime)) {
            this->unk_2AC |= 4;
        }
        this->unk_2AC |= 8;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A32444.s")
s32 EnGe1_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    s32 pad;
    EnGe1* this = THIS;

    if (limbIndex == GE1_LIMB_HEAD) {
        rot->x += this->headRot.y;
        rot->z += this->headRot.x;
    }
    if (this->unk_2AC & 8) {
        this->unk_2AC &= ~8;
        return 0;
    }
    if ((limbIndex == GE1_LIMB_TORSO) || (limbIndex == GE1_LIMB_LEFT_FOREARM) ||
        (limbIndex == GE1_LIMB_RIGHT_FOREARM)) {
        rot->y += Math_SinS(globalCtx->state.frames * (limbIndex * 50 + 0x814)) * 200.0f;
        rot->z += Math_CosS(globalCtx->state.frames * (limbIndex * 50 + 0x940)) * 200.0f;
    }
    return 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/func _80A32598.s")
void EnGe1_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnGe1* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ge1.c", 1419);
    if (limbIndex == GE1_LIMB_HEAD) {
        gSPDisplayList(POLY_OPA_DISP++, sHairstyleDLists[this->hairstyle]);
        Matrix_MultVec3f(&D_80A327A8, &this->actor.posRot2.pos);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ge1.c", 1427);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ge1/EnGe1_Draw.s")
void EnGe1_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnGe1* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ge1.c", 1442);
    func_800943C8(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeIndex]));
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnGe1_OverrideLimbDraw, EnGe1_PostLimbDraw, this);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ge1.c", 1459);
}
