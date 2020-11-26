/*
 * File: z_en_changer.c
 * Overlay: ovl_En_Changer
 * Description: Treasure Box Shop Minigame
 */
// This actor spawns in each room of the Treasure Box Shop. It spawns the chests, randomises the items in
// the chests, spawns the items viewable with Lens of Truth, and spawns the items that show you what you what was in the
// other chest.

#include "z_en_changer.h"
#include "vt.h"

#define FLAGS 0x00000000

#define THIS ((EnChanger*)thisx)

void EnChanger_Init(Actor* thisx, GlobalContext* globalCtx);
void EnChanger_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnChanger_Update(Actor* thisx, GlobalContext* globalCtx);

void EnChanger_Wait(EnChanger* this, GlobalContext* globalCtx);
void EnChanger_OpenChests(EnChanger* this, GlobalContext* globalCtx);
void EnChanger_SetHeartPieceFlag(EnChanger* this, GlobalContext* globalCtx);

const ActorInit En_Changer_InitVars = {
    ACTOR_EN_CHANGER,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnChanger),
    (ActorFunc)EnChanger_Init,
    (ActorFunc)EnChanger_Destroy,
    (ActorFunc)EnChanger_Update,
    NULL,
};

// D_809D30A0
static Vec3f sLeftChestPoss[] = {
    { 0.0f, 0.0f, 0.0f },         { -100.0f, 20.0f, -245.0f },  { -100.0f, 20.0f, -685.0f },
    { -100.0f, 20.0f, -1125.0f }, { -100.0f, 20.0f, -1565.0f }, { -100.0f, 20.0f, -2005.0f },
};

// D_809D30E8
static Vec3f sRightChestPoss[] = {
    { 0.0f, 0.0f, 0.0f },        { 140.0f, 20.0f, -245.0f },  { 140.0f, 20.0f, -685.0f },
    { 140.0f, 20.0f, -1125.0f }, { 140.0f, 20.0f, -1565.0f }, { 140.0f, 20.0f, -2005.0f },
};

// D_ 809D3130
static s32 sLoserGetItemIds[] = {
    GI_NONE, GI_RUPEE_GREEN_LOSE, GI_RUPEE_GREEN_LOSE, GI_RUPEE_BLUE_LOSE, GI_RUPEE_BLUE_LOSE, GI_RUPEE_RED_LOSE,
};

// D_809D3148
static s32 sEnItemEtceteraOffsets[] = { 0x00000000, 0x00000008, 0x00000008, 0x00000009, 0x00000009, 0x0000000A };

// D_809D3160 and D_809D3174
static s32 sTreasureFlagOffsets[] = { 0x00000000, 0x00000002, 0x00000004, 0x00000006, 0x00000008, 0x0000000A };

void EnChanger_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnChanger_Init(Actor* thisx, GlobalContext* globalCtx2) {
    EnChanger* this = THIS;

    GlobalContext* globalCtx = globalCtx2;
    s16 leftChestParams;
    s16 rightChestParams;
    s16 displayHeartPieceOffset;
    s16 minigameRoomNum;
    s16 rightItemEtceteraOffset;
    s16 leftItemEtceteraOffset;
    s16 temp_v1_3;
    s16 new_var;
    s32 chestHeartPieceOffset;

    if (1) {}
    minigameRoomNum = globalCtx->roomCtx.curRoom.num - 1;
    if (minigameRoomNum < 0) {
        minigameRoomNum = 0;
    }
    if (Flags_GetTreasure(globalCtx, sTreasureFlagOffsets[minigameRoomNum]) != 0) {
        this->roomChestsOpened = 1;
    }
    osSyncPrintf("\n\n");
    // Treasure generation (which room is it?)
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 宝発生(部屋はどれ？) %d\n" VT_RST, globalCtx->roomCtx.curRoom.num);
    // How is the Bit?
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ ビットは？ \t     %x\n" VT_RST, globalCtx->actorCtx.flags.chest);
    // How is the Save BIT?
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ セーブＢＩＴは？     %x\n" VT_RST, sTreasureFlagOffsets[minigameRoomNum]);
    // Is it already a zombie?
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ もう、ゾンビ？\t     %d\n" VT_RST, this->roomChestsOpened);
    osSyncPrintf("\n\n");
    minigameRoomNum *= 2; // Double to handle chest numbers
    // Spawn Heart Piece in chest (or Purple Rupee if won Heart Piece)
    if (globalCtx->roomCtx.curRoom.num >= 6) {
        displayHeartPieceOffset = ((gSaveContext.itemGetInf[1] & 0x800) ? (0x4EA0) : (0x4EC0));
        displayHeartPieceOffset = sTreasureFlagOffsets[5] | displayHeartPieceOffset;
        // Had to do it this way to get it to match
        this->finalChest = (EnBox*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_BOX,
                                                      20.0f, 20.0f, -2500.0f, 0, 0x7FFF, 0, displayHeartPieceOffset);
        if (this->finalChest != NULL) {
            if (this->roomChestsOpened) {
                Flags_SetTreasure(globalCtx, displayHeartPieceOffset & 0x1F);
                Actor_Kill(&this->actor);
                return;
            } else {
                chestHeartPieceOffset = ((gSaveContext.itemGetInf[1] & 0x800) ? (0xB) : (0xC)) & 0xFF;
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_ETCETERA, 20.0f, 20.0f, -2500.0f, 0, 0, 0,
                            ((sTreasureFlagOffsets[5] & 0x1F) << 8) + chestHeartPieceOffset);
                // Central treasure instance/occurrence (GREAT)
                osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 中央宝発生(ＧＲＥＡＴ) ☆☆☆☆☆ %x\n" VT_RST,
                             displayHeartPieceOffset);
                this->actionFunc = EnChanger_SetHeartPieceFlag;
                return;
            }
        }
    }
    temp_v1_3 = minigameRoomNum;
    // Set up items in chests, swap them round with probability 1/2
    leftChestParams = (sLoserGetItemIds[globalCtx->roomCtx.curRoom.num] << 5) | 0x4000;
    new_var = temp_v1_3;
    this->leftChestNum = new_var;
    this->leftChestGetItemId = sLoserGetItemIds[globalCtx->roomCtx.curRoom.num];
    leftItemEtceteraOffset = sEnItemEtceteraOffsets[globalCtx->roomCtx.curRoom.num];
    leftChestParams |= new_var;
    rightChestParams = new_var | 0x4E21;
    this->rightChestNum = new_var | 1;
    this->rightChestGetItemId = GI_DOOR_KEY;
    rightItemEtceteraOffset = 0xD;
    if (Math_Rand_ZeroFloat(1.99f) < 1.0f) {
        rightChestParams = (sLoserGetItemIds[globalCtx->roomCtx.curRoom.num] << 5) | 0x4000;
        this->rightChestNum = new_var;
        this->rightChestGetItemId = sLoserGetItemIds[globalCtx->roomCtx.curRoom.num];
        rightItemEtceteraOffset = sEnItemEtceteraOffsets[globalCtx->roomCtx.curRoom.num];
        leftChestParams = new_var | 0x4E21;
        rightChestParams |= new_var;
        this->leftChestNum = temp_v1_3 | 1;
        this->leftChestGetItemId = GI_DOOR_KEY;
        leftItemEtceteraOffset = 0xD;
    }
    this->leftChest = (EnBox*)Actor_SpawnAsChild(
        &globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_BOX, sLeftChestPoss[globalCtx->roomCtx.curRoom.num].x,
        sLeftChestPoss[globalCtx->roomCtx.curRoom.num].y, sLeftChestPoss[globalCtx->roomCtx.curRoom.num].z, 0, -0x3FFF,
        0, leftChestParams);
    if (this->leftChest != NULL) {
        // Left treasure generation (what does it contain?)
        osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ 左宝発生(ナニがはいってるの？) ☆☆☆☆☆ %x\n" VT_RST, leftChestParams);
        // What is the room number?
        osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ 部屋番号は？  %x\n" VT_RST, globalCtx->roomCtx.curRoom.num);
        // What is the bit?
        osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ ビットはなぁに？  %x\n" VT_RST, this->rightChestNum);
        // Sukesuke-kun (something to do with being invisible)
        osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ すけすけ君？ %x\n" VT_RST, rightItemEtceteraOffset);
        osSyncPrintf("\n\n");
        if (this->roomChestsOpened) {
            Flags_SetTreasure(globalCtx, this->leftChestNum & 0x1F);
        } else {
            Actor_Spawn(
                &globalCtx->actorCtx, globalCtx, ACTOR_ITEM_ETCETERA, sLeftChestPoss[globalCtx->roomCtx.curRoom.num].x,
                sLeftChestPoss[globalCtx->roomCtx.curRoom.num].y, sLeftChestPoss[globalCtx->roomCtx.curRoom.num].z, 0,
                0, 0, ((this->leftChestNum & 0x1F) << 8) + (leftItemEtceteraOffset & 0xFF));
        }
    }
    this->rightChest = (EnBox*)Actor_SpawnAsChild(
        &globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_BOX, sRightChestPoss[globalCtx->roomCtx.curRoom.num].x,
        sRightChestPoss[globalCtx->roomCtx.curRoom.num].y, sRightChestPoss[globalCtx->roomCtx.curRoom.num].z, 0, 0x3FFF,
        0, rightChestParams);
    if (this->rightChest != NULL) {
        // Right treasure generation (what does it contain?)
        osSyncPrintf(VT_FGCOL(CYAN) "☆☆☆☆☆ 右宝発生(ナニがはいってるの？) ☆☆☆☆☆ %x\n" VT_RST, rightChestParams);
        // What is the room number?
        osSyncPrintf(VT_FGCOL(CYAN) "☆☆☆☆☆ 部屋番号は？  %d\n" VT_RST, globalCtx->roomCtx.curRoom.num);
        // What is the bit?
        osSyncPrintf(VT_FGCOL(CYAN) "☆☆☆☆☆ ビットはなぁに？  %x\n" VT_RST, this->leftChestNum);
        // Sukesuke-kun (something to do with being invisible)
        osSyncPrintf(VT_FGCOL(CYAN) "☆☆☆☆☆ すけすけ君？ %x\n" VT_RST, leftItemEtceteraOffset);
        osSyncPrintf("\n\n");
        if (this->roomChestsOpened) {
            Flags_SetTreasure(globalCtx, this->rightChestNum & 0x1F);
            Actor_Kill(&this->actor);
            return;
        }
        Actor_Spawn(
            &globalCtx->actorCtx, globalCtx, ACTOR_ITEM_ETCETERA, sRightChestPoss[globalCtx->roomCtx.curRoom.num].x,
            sRightChestPoss[globalCtx->roomCtx.curRoom.num].y, sRightChestPoss[globalCtx->roomCtx.curRoom.num].z, 0, 0,
            0, ((this->rightChestNum & 0x1F) << 8) + (rightItemEtceteraOffset & 0xFF));
    }
    this->actor.flags = this->actor.flags & ~1;
    this->actionFunc = EnChanger_Wait;
}

void EnChanger_Wait(EnChanger* this, GlobalContext* globalCtx) {
    if (this->leftChest->unk_1F4 != 0) {
        this->timer = 80;
        Flags_SetTreasure(globalCtx, this->rightChestNum & 0x1F);
        this->actionFunc = EnChanger_OpenChests;
    } else if (this->rightChest->unk_1F4 != 0) {
        this->openingRightChest = 1;
        this->timer = 80;
        Flags_SetTreasure(globalCtx, this->leftChestNum & 0x1F);
        this->actionFunc = EnChanger_OpenChests;
    }
}

// Spawns the EnExItem showing what was in the other chest
void EnChanger_OpenChests(EnChanger* this, GlobalContext* globalCtx) {
    f32 zpos;
    f32 ypos;
    f32 xpos;
    s16 temp_s0;
    s16 temp_s0_2;
    EnBox* left;
    EnBox* right;

    left = this->leftChest;
    right = this->rightChest;
    if (this->timer == 0) {
        temp_s0_2 = temp_s0 = this->openingRightChest; // Required to use the right registers
        switch (temp_s0_2) {
            case 0: // open left
                xpos = right->dyna.actor.posRot.pos.x;
                ypos = right->dyna.actor.posRot.pos.y;
                zpos = right->dyna.actor.posRot.pos.z;
                if (this->rightChestGetItemId == GI_DOOR_KEY) {
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_EX_ITEM, xpos, ypos, zpos, 0, 0, 0, 0xF);
                    Flags_SetSwitch(globalCtx, 0x32);
                    break;
                } else {
                    temp_s0_2 = (s16)(this->rightChestGetItemId - 0x72) + 0xA; // Conversion to EnExItem params
                    // Open right treasure (chest)
                    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 右宝開く ☆☆☆☆☆ %d\n" VT_RST, temp_s0_2);
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_EX_ITEM, xpos, ypos, zpos, 0, 0, 0,
                                temp_s0_2);
                    break;
                }
            case 1: // open right
                xpos = left->dyna.actor.posRot.pos.x;
                ypos = left->dyna.actor.posRot.pos.y;
                zpos = left->dyna.actor.posRot.pos.z;
                if (this->leftChestGetItemId == GI_DOOR_KEY) {
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_EX_ITEM, xpos, ypos, zpos, 0, 0, 0, 0xF);
                    Flags_SetSwitch(globalCtx, 0x32);
                    break;
                } else {
                    temp_s0_2 = (s16)(this->leftChestGetItemId - 0x72) + 0xA; // Conversion to EnExItem params
                    // Open left treasure (chest)
                    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 左宝開く ☆☆☆☆☆ %d\n" VT_RST, temp_s0_2);
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_EX_ITEM, xpos, ypos, zpos, 0, 0, 0,
                                temp_s0_2);
                    break;
                }
        }
        Actor_Kill(&this->actor);
    }
}

void EnChanger_SetHeartPieceFlag(EnChanger* this, GlobalContext* globalCtx) {
    if (this->finalChest->unk_1F4 != 0) {
        if (!(gSaveContext.itemGetInf[1] & 0x800)) {
            gSaveContext.itemGetInf[1] |= 0x800;
        }
        Actor_Kill(&this->actor);
    }
}

void EnChanger_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnChanger* this = THIS;

    this->actionFunc(this, globalCtx);
    if (this->timer != 0) {
        this->timer--;
    }
    if (BREG(0)) {
        DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                               this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, 1.0f, 1.0f,
                               1.0f, 0xFF, 0, 0xFF, 0xFF, 4, globalCtx->state.gfxCtx);
    }
}
