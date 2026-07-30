#include "z_en_changer.h"
#include "overlays/actors/ovl_En_Box/z_en_box.h"
#include "overlays/actors/ovl_En_Ex_Item/z_en_ex_item.h"
#include "overlays/actors/ovl_Item_Etcetera/z_item_etcetera.h"

#include "printf.h"
#include "rand.h"
#include "regs.h"
#include "terminal.h"
#include "translation.h"
#include "debug_display.h"
#include "play_state.h"
#include "save.h"

#define FLAGS 0

void EnChanger_Init(Actor* thisx, PlayState* play2);
void EnChanger_Destroy(Actor* thisx, PlayState* play);
void EnChanger_Update(Actor* thisx, PlayState* play);

void func_809D2CCC(EnChanger* this, PlayState* play);
void func_809D2D70(EnChanger* this, PlayState* play);
void func_809D2F74(EnChanger* this, PlayState* play);

ActorProfile En_Changer_Profile = {
    /**/ ACTOR_EN_CHANGER,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnChanger),
    /**/ EnChanger_Init,
    /**/ EnChanger_Destroy,
    /**/ EnChanger_Update,
    /**/ NULL,
};
static Vec3f sLeftChestPositions[6] = {
    { 0.0f, 0.0f, 0.0f },         { -100.0f, 20.0f, -245.0f },  { -100.0f, 20.0f, -685.0f },
    { -100.0f, 20.0f, -1125.0f }, { -100.0f, 20.0f, -1565.0f }, { -100.0f, 20.0f, -2005.0f },
};
static Vec3f sRightChestPositions[6] = {
    { 0.0f, 0.0f, 0.0f },        { 140.0f, 20.0f, -245.0f },  { 140.0f, 20.0f, -685.0f },
    { 140.0f, 20.0f, -1125.0f }, { 140.0f, 20.0f, -1565.0f }, { 140.0f, 20.0f, -2005.0f },
};
static s32 D_809D3130[6] = { 0, 0x72, 0x72, 0x73, 0x73, 0x74 };
static s32 D_809D3148[6] = { 0, 8, 8, 9, 9, 0xA };
static s32 sTreasureFlags[6] = { 0, 2, 4, 6, 8, 0xA };

void EnChanger_Destroy(Actor* thisx, PlayState* play) {
}

void EnChanger_Init(Actor* thisx, PlayState* play2) {
    EnChanger* this = (EnChanger*)thisx;
    PlayState* play = play2;
    s16 sp6E_leftChestParams;
    s16 sp6C_rightChestParams;
    s16 sp6A_finalChestParams;
    s16 temp_v1_curRoomIndex;
    s16 sp66_rightChestThing;
    s16 sp64_leftChestThing;
    s32 new_var_someParams;

    temp_v1_curRoomIndex = play->roomCtx.curRoom.num - 1;
    if (temp_v1_curRoomIndex < 0) {
        temp_v1_curRoomIndex = 0;
    }
    if (Flags_GetTreasure(play, sTreasureFlags[temp_v1_curRoomIndex])) {
        this->unk168 = 1;
    }
    PRINTF("\n\n");
    PRINTF("\x1b[32m☆☆☆☆☆ 宝発生(部屋はどれ？) %d\n\x1b[m", play->roomCtx.curRoom.num);
    PRINTF("\x1b[32m☆☆☆☆☆ ビットは？ \t     %x\n\x1b[m", play->actorCtx.flags.chest);
    PRINTF("\x1b[32m☆☆☆☆☆ セーブＢＩＴは？     %x\n\x1b[m", sTreasureFlags[temp_v1_curRoomIndex]);
    PRINTF("\x1b[32m☆☆☆☆☆ もう、ゾンビ？\t     %d\n\x1b[m", this->unk168);
    PRINTF("\n\n");
    temp_v1_curRoomIndex = temp_v1_curRoomIndex * 2;
    if (play->roomCtx.curRoom.num >= 6) {
        sp6A_finalChestParams = GET_ITEMGETINF(ITEMGETINF_1B) ? 0x4EA0 : 0x4EC0;
        sp6A_finalChestParams = sTreasureFlags[5] | sp6A_finalChestParams;
        this->unk158 = (EnBox*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_BOX, 20.0f, 20.0f,
                                                  -2500.0f, 0, 0x7FFF, 0, sp6A_finalChestParams);
        if (this->unk158 != NULL) {
            if (this->unk168 != 0) {
                Flags_SetTreasure(play, sp6A_finalChestParams & 0x1F);
                Actor_Kill(&this->actor);
                return;
            }
            new_var_someParams = ((gSaveContext.save.info.itemGetInf[1] & 0x800) ? 0xB : 0xC) & 0xFF;
            Actor_Spawn(&play->actorCtx, play, ACTOR_ITEM_ETCETERA, 20.0f, 20.0f, -2500.0f, 0, 0, 0,
                        ((sTreasureFlags[5] & 0x1F) << 8) + new_var_someParams);
            PRINTF("\x1b[33m☆☆☆☆☆ 中央宝発生(ＧＲＥＡＴ) ☆☆☆☆☆ %x\n\x1b[m", sp6A_finalChestParams);
            this->unk14C = func_809D2F74;
            return;
        }
    }
    sp6E_leftChestParams = (D_809D3130[play->roomCtx.curRoom.num] << 5) | 0x4000;
    this->unk15C_l = temp_v1_curRoomIndex;
    sp6E_leftChestParams |= temp_v1_curRoomIndex;
    this->unk160 = D_809D3130[play->roomCtx.curRoom.num];
    sp64_leftChestThing = D_809D3148[play->roomCtx.curRoom.num];
    sp6C_rightChestParams = temp_v1_curRoomIndex | 0x4E21;
    this->unk15E_r = temp_v1_curRoomIndex | 1;
    this->unk162 = 0x71;
    sp66_rightChestThing = 0xD;
    if (Rand_ZeroFloat(1.99f) < 1.0f) {
        sp6C_rightChestParams = (D_809D3130[play->roomCtx.curRoom.num] << 5) | 0x4000;
        this->unk15E_r = temp_v1_curRoomIndex;
        this->unk162 = D_809D3130[play->roomCtx.curRoom.num];
        sp66_rightChestThing = D_809D3148[play->roomCtx.curRoom.num];
        sp6E_leftChestParams = temp_v1_curRoomIndex | 0x4E21;
        sp6C_rightChestParams |= temp_v1_curRoomIndex;
        this->unk15C_l = temp_v1_curRoomIndex | 1;
        this->unk160 = 0x71;
        sp64_leftChestThing = 0xD;
    }
    this->unk150 = (EnBox*)Actor_SpawnAsChild(
        &play->actorCtx, &this->actor, play, ACTOR_EN_BOX, sLeftChestPositions[play->roomCtx.curRoom.num].x,
        sLeftChestPositions[play->roomCtx.curRoom.num].y, sLeftChestPositions[play->roomCtx.curRoom.num].z, 0, -0x3FFF,
        0, sp6E_leftChestParams);
    if (this->unk150 != NULL) {
        PRINTF("\x1b[35m☆☆☆☆☆ 左宝発生(ナニがはいってるの？) ☆☆☆☆☆ %x\n\x1b[m", sp6E_leftChestParams);
        PRINTF("\x1b[35m☆☆☆☆☆ 部屋番号は？  %x\n\x1b[m", play->roomCtx.curRoom.num);
        PRINTF("\x1b[35m☆☆☆☆☆ ビットはなぁに？  %x\n\x1b[m", this->unk15E_r);
        PRINTF("\x1b[35m☆☆☆☆☆ すけすけ君？ %x\n\x1b[m", sp66_rightChestThing);
        PRINTF("\n\n");
        if (this->unk168 != 0) {
            Flags_SetTreasure(play, this->unk15C_l & 0x1F);
        } else {
            Actor_Spawn(&play->actorCtx, play, ACTOR_ITEM_ETCETERA, sLeftChestPositions[play->roomCtx.curRoom.num].x,
                        sLeftChestPositions[play->roomCtx.curRoom.num].y,
                        sLeftChestPositions[play->roomCtx.curRoom.num].z, 0, 0, 0,
                        ((this->unk15C_l & 0x1F) << 8) + (sp64_leftChestThing & 0xFF));
        }
    }
    this->unk154 = (EnBox*)Actor_SpawnAsChild(
        &play->actorCtx, &this->actor, play, ACTOR_EN_BOX, sRightChestPositions[play->roomCtx.curRoom.num].x,
        sRightChestPositions[play->roomCtx.curRoom.num].y, sRightChestPositions[play->roomCtx.curRoom.num].z, 0, 0x3FFF,
        0, sp6C_rightChestParams);
    if (this->unk154 != NULL) {
        PRINTF("\x1b[36m☆☆☆☆☆ 右宝発生(ナニがはいってるの？) ☆☆☆☆☆ %x\n\x1b[m", sp6C_rightChestParams);
        PRINTF("\x1b[36m☆☆☆☆☆ 部屋番号は？  %d\n\x1b[m", play->roomCtx.curRoom.num);
        PRINTF("\x1b[36m☆☆☆☆☆ ビットはなぁに？  %x\n\x1b[m", this->unk15C_l);
        PRINTF("\x1b[36m☆☆☆☆☆ すけすけ君？ %x\n\x1b[m", sp64_leftChestThing);
        PRINTF("\n\n");
        if (this->unk168 != 0) {
            Flags_SetTreasure(play, this->unk15E_r & 0x1F);
            Actor_Kill(&this->actor);
            return;
        }
        Actor_Spawn(&play->actorCtx, play, ACTOR_ITEM_ETCETERA, sRightChestPositions[play->roomCtx.curRoom.num].x,
                    sRightChestPositions[play->roomCtx.curRoom.num].y,
                    sRightChestPositions[play->roomCtx.curRoom.num].z, 0, 0, 0,
                    ((this->unk15E_r & 0x1F) << 8) + (sp66_rightChestThing & 0xFF));
    }
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->unk14C = func_809D2CCC;
}

void func_809D2CCC(EnChanger* this, PlayState* play) {
    if (this->unk150->unk_1F4 != 0) {
        this->unk166 = 0x50;
        Flags_SetTreasure(play, this->unk15E_r & 0x1F);
        this->unk14C = func_809D2D70;
    } else if (this->unk154->unk_1F4 != 0) {
        this->unk164 = 1;
        this->unk166 = 0x50;
        Flags_SetTreasure(play, this->unk15C_l & 0x1F);
        this->unk14C = func_809D2D70;
    }
}

void func_809D2D70(EnChanger* this, PlayState* play) {
    Vec3f pos;
    EnBox* temp_v0;
    EnBox* temp_v1;
    s16 temp_s0;

    temp_v0 = this->unk150;
    temp_v1 = this->unk154;
    if (this->unk166 == 0) {
        switch (this->unk164) {
            case 0:
                pos.x = temp_v1->dyna.actor.world.pos.x;
                pos.y = temp_v1->dyna.actor.world.pos.y;
                pos.z = temp_v1->dyna.actor.world.pos.z;
                if (this->unk162 == 0x71) {
                    Actor_Spawn(&play->actorCtx, play, ACTOR_EN_EX_ITEM, pos.x, pos.y, pos.z, 0, 0, 0, 0xF);
                    Flags_SetSwitch(play, 0x32);
                } else {
                    temp_s0 = (s16)(this->unk162 - GI_RUPEE_GREEN_LOSE) + EXITEM_GREEN_RUPEE_CHEST;
                    PRINTF("\x1b[32m☆☆☆☆☆ 右宝開く ☆☆☆☆☆ %d\n\x1b[m", temp_s0);
                    Actor_Spawn(&play->actorCtx, play, ACTOR_EN_EX_ITEM, pos.x, pos.y, pos.z, 0, 0, 0, temp_s0);
                }
                break;
            case 1:
                pos.x = temp_v0->dyna.actor.world.pos.x;
                pos.y = temp_v0->dyna.actor.world.pos.y;
                pos.z = temp_v0->dyna.actor.world.pos.z;
                if (this->unk160 == 0x71) {
                    Actor_Spawn(&play->actorCtx, play, ACTOR_EN_EX_ITEM, pos.x, pos.y, pos.z, 0, 0, 0, 0xF);
                    Flags_SetSwitch(play, 0x32);
                } else {
                    temp_s0 = (s16)(this->unk160 - GI_RUPEE_GREEN_LOSE) + EXITEM_GREEN_RUPEE_CHEST;
                    PRINTF("\x1b[32m☆☆☆☆☆ 左宝開く ☆☆☆☆☆ %d\n\x1b[m", temp_s0);
                    Actor_Spawn(&play->actorCtx, play, ACTOR_EN_EX_ITEM, pos.x, pos.y, pos.z, 0, 0, 0, temp_s0);
                }
                break;
        }
        Actor_Kill(&this->actor);
    }
}

void func_809D2F74(EnChanger* this, PlayState* play) {
    if (this->unk158->unk_1F4 != 0) {
        if (!GET_ITEMGETINF(ITEMGETINF_1B)) {
            SET_ITEMGETINF(ITEMGETINF_1B);
        }
        Actor_Kill(&this->actor);
    }
}

void EnChanger_Update(Actor* thisx, PlayState* play) {
    EnChanger* this = (EnChanger*)thisx;

    this->unk14C(this, play);
    if (this->unk166 != 0) {
        this->unk166--;
    }
    if (DEBUG_FEATURES && gRegEditor->data[0x960] != 0) {
        DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                               this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f, 1.0f,
                               1.0f, 255, 0, 255, 255, 4, play->state.gfxCtx);
    }
}
