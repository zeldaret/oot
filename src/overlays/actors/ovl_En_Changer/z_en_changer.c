/*
 * File: z_en_changer.c
 * Overlay: ovl_En_Changer
 * Description: Treasure Chest Minigame
 */

#include "z_en_changer.h"
#include "vt.h"

#define FLAGS 0x00000000

#define THIS ((EnChanger*)thisx)

void EnChanger_Init(Actor* thisx, GlobalContext* globalCtx);
void EnChanger_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnChanger_Update(Actor* thisx, GlobalContext* globalCtx);

void func_809D2CCC(EnChanger* this, GlobalContext* globalCtx);
void func_809D2D70(EnChanger* this, GlobalContext* globalCtx);
void func_809D2F74(EnChanger* this, GlobalContext* globalCtx);

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

Vec3f D_809D30A0[] = {
    { 0.0f, 0.0f, 0.0f },         { -100.0f, 20.0f, -245.0f },  { -100.0f, 20.0f, -685.0f },
    { -100.0f, 20.0f, -1125.0f }, { -100.0f, 20.0f, -1565.0f }, { -100.0f, 20.0f, -2005.0f },
};

Vec3f D_809D30E8[] = {
    { 0.0f, 0.0f, 0.0f },        { 140.0f, 20.0f, -245.0f },  { 140.0f, 20.0f, -685.0f },
    { 140.0f, 20.0f, -1125.0f }, { 140.0f, 20.0f, -1565.0f }, { 140.0f, 20.0f, -2005.0f },
};

s32 D_809D3130[] = {
    GI_NONE, GI_RUPEE_GREEN_LOSE, GI_RUPEE_GREEN_LOSE, GI_RUPEE_BLUE_LOSE, GI_RUPEE_BLUE_LOSE, GI_RUPEE_RED_LOSE,
};

s32 D_809D3148[] = { 0x00000000, 0x00000008, 0x00000008, 0x00000009, 0x00000009, 0x0000000A };

s32 D_809D3160[] = { 0x00000000, 0x00000002, 0x00000004, 0x00000006, 0x00000008 };

// s32 D_809D3174[] = { 0x0000000A, 0x00000000, 0x00000000 };
s32 D_809D3174 = 0x0000000A;

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Changer/EnChanger_Destroy.s")
void EnChanger_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Changer/EnChanger_Init.s")
void EnChanger_Init(Actor* thisx, GlobalContext* globalCtx2) {
    EnChanger* this = THIS;

    GlobalContext* globalCtx = globalCtx2;
    s16 sp6E;
    s16 sp6C;
    s16 sp6A;
    s16 phi_v1;
    s16 sp66;
    s16 sp64;
    s16 temp_v1_3;
    s16 new_var;
    s32 new_var2;

    if (1) {}
    phi_v1 = globalCtx->roomCtx.curRoom.num - 1;
    if (phi_v1 < 0) {
        phi_v1 = 0;
    }
    if (Flags_GetTreasure(globalCtx, D_809D3160[phi_v1]) != 0) {
        this->unk_168 = 1;
    }
    osSyncPrintf("\n\n");
    // Treasure generation (which room is it?)
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 宝発生(部屋はどれ？) %d\n" VT_RST, globalCtx->roomCtx.curRoom.num);
    // How is the Bit?
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ ビットは？ \t     %x\n" VT_RST, globalCtx->actorCtx.flags.chest);
    // How is the Save BIT?
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ セーブＢＩＴは？     %x\n" VT_RST, D_809D3160[phi_v1]);
    // Is it already a zombie?
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ もう、ゾンビ？\t     %d\n" VT_RST, (s16)this->unk_168);
    osSyncPrintf("\n\n");
    phi_v1 *= 2;
    if (globalCtx->roomCtx.curRoom.num >= 6) {
        sp6A = ((gSaveContext.itemGetInf[1] & 0x800) ? (0x4EA0) : (0x4EC0));
        sp6E = 0xFFFF; // Other s16s are an option
        sp6A = (D_809D3174 & sp6E) | sp6A; // Had to do it this way to get it to match
        this->finalChest = (EnBox*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_BOX, 20.0f,
                                                   20.0f, -2500.0f, 0, 0x7FFF, 0, sp6A);
        if (this->finalChest != NULL) {
            if (((s16)this->unk_168) != 0) {
                Flags_SetTreasure(globalCtx, sp6A & 0x1F);
                Actor_Kill(&this->actor);
                return;
            } else {
                new_var2 = ((gSaveContext.itemGetInf[1] & 0x800) ? (0xB) : (0xC)) & 0xFF;
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_ETCETERA, 20.0f, 20.0f, -2500.0f, 0, 0, 0,
                            ((D_809D3174 & 0x1F) << 8) + new_var2);
                // Central treasure instance/occurrence (GREAT)
                osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 中央宝発生(ＧＲＥＡＴ) ☆☆☆☆☆ %x\n" VT_RST, sp6A);
                this->actionFunc = func_809D2F74;
                return;
            }
        }
    }
    temp_v1_3 = phi_v1;
    sp6E = (s16)((D_809D3130[globalCtx->roomCtx.curRoom.num] << 5) | 0x4000);
    new_var = temp_v1_3;
    this->unk_15C = new_var;
    this->unk_160 = (s16)D_809D3130[globalCtx->roomCtx.curRoom.num];
    sp64 = (s16)D_809D3148[globalCtx->roomCtx.curRoom.num];
    sp6E |= new_var;
    sp6C = new_var | 0x4E21;
    this->unk_15E = new_var | 1;
    this->unk_162 = GI_DOOR_KEY;
    sp66 = 0xD;
    if (Math_Rand_ZeroFloat(1.99f) < 1.0f) {
        sp6C = (s16)((D_809D3130[globalCtx->roomCtx.curRoom.num] << 5) | 0x4000);
        this->unk_15E = new_var;
        this->unk_162 = (s16)D_809D3130[globalCtx->roomCtx.curRoom.num];
        sp66 = (s16)D_809D3148[globalCtx->roomCtx.curRoom.num];
        sp6E = new_var | 0x4E21;
        sp6C |= new_var;
        this->unk_15C = temp_v1_3 | 1;
        this->unk_160 = GI_DOOR_KEY;
        sp64 = 0xD;
    }
    this->leftChest = (EnBox*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_BOX,
                                               D_809D30A0[globalCtx->roomCtx.curRoom.num].x,
                                               D_809D30A0[globalCtx->roomCtx.curRoom.num].y,
                                               D_809D30A0[globalCtx->roomCtx.curRoom.num].z, 0, -0x3FFF, 0, sp6E);
    if (this->leftChest != NULL) {
        // Left treasure generation (what does it contain?)
        osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ 左宝発生(ナニがはいってるの？) ☆☆☆☆☆ %x\n" VT_RST, sp6E);
        // What is the room number?
        osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ 部屋番号は？  %x\n" VT_RST, globalCtx->roomCtx.curRoom.num);
        // What is the bit?
        osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ ビットはなぁに？  %x\n" VT_RST, this->unk_15E);
        // Sukesuke-kun (something to do with being invisible)
        osSyncPrintf(VT_FGCOL(PURPLE) "☆☆☆☆☆ すけすけ君？ %x\n" VT_RST, sp66);
        osSyncPrintf("\n\n");
        if (((s16)this->unk_168) != 0) {
            Flags_SetTreasure(globalCtx, this->unk_15C & 0x1F);
        } else {
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_ETCETERA,
                        D_809D30A0[globalCtx->roomCtx.curRoom.num].x, D_809D30A0[globalCtx->roomCtx.curRoom.num].y,
                        D_809D30A0[globalCtx->roomCtx.curRoom.num].z, 0, 0, 0,
                        ((this->unk_15C & 0x1F) << 8) + (sp64 & 0xFF));
        }
    }
    this->rightChest = (EnBox*)Actor_SpawnAsChild(
        &globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_BOX, D_809D30E8[globalCtx->roomCtx.curRoom.num].x,
        D_809D30E8[globalCtx->roomCtx.curRoom.num].y, D_809D30E8[globalCtx->roomCtx.curRoom.num].z, 0, 0x3FFF, 0, sp6C);
    if (this->rightChest != NULL) {
        // Right treasure generation (what does it contain?)
        osSyncPrintf(VT_FGCOL(CYAN) "☆☆☆☆☆ 右宝発生(ナニがはいってるの？) ☆☆☆☆☆ %x\n" VT_RST, sp6C);
        // What is the room number?
        osSyncPrintf(VT_FGCOL(CYAN) "☆☆☆☆☆ 部屋番号は？  %d\n" VT_RST, globalCtx->roomCtx.curRoom.num);
        // What is the bit?
        osSyncPrintf(VT_FGCOL(CYAN) "☆☆☆☆☆ ビットはなぁに？  %x\n" VT_RST, this->unk_15C);
        // Sukesuke-kun (something to do with being invisible)
        osSyncPrintf(VT_FGCOL(CYAN) "☆☆☆☆☆ すけすけ君？ %x\n" VT_RST, sp64);
        osSyncPrintf("\n\n");
        if (((s16)this->unk_168) != 0) {
            Flags_SetTreasure(globalCtx, this->unk_15E & 0x1F);
            Actor_Kill(&this->actor);
            return;
        }
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_ETCETERA, D_809D30E8[globalCtx->roomCtx.curRoom.num].x,
                    D_809D30E8[globalCtx->roomCtx.curRoom.num].y, D_809D30E8[globalCtx->roomCtx.curRoom.num].z, 0, 0, 0,
                    ((this->unk_15E & 0x1F) << 8) + (sp66 & 0xFF));
    }
    this->actor.flags = this->actor.flags & ~1;
    this->actionFunc = func_809D2CCC;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Changer/func_809D2CCC.s")
void func_809D2CCC(EnChanger* this, GlobalContext* globalCtx) {
    if (this->leftChest->unk_1F4 != 0) {
        this->timer = 80;
        Flags_SetTreasure(globalCtx, this->unk_15E & 0x1F);
        this->actionFunc = func_809D2D70;
    } else if (this->rightChest->unk_1F4 != 0) {
        this->unk_164 = 1;
        this->timer = 80;
        Flags_SetTreasure(globalCtx, this->unk_15C & 0x1F);
        this->actionFunc = func_809D2D70;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Changer/func_809D2D70.s")
void func_809D2D70(EnChanger* this, GlobalContext* globalCtx) {
    f32 temp_f12;
    f32 temp_f2;
    f32 temp_f0;
    s16 temp_s0;
    s16 temp_s0_2;
    EnBox* temp_v0;
    EnBox* temp_v1;

    temp_v0 = this->leftChest;
    temp_v1 = this->rightChest;
    if (this->timer == 0) {
        temp_s0_2 = temp_s0 = this->unk_164; // Required to use the right registers
        switch (temp_s0_2) {
            case 0:
                temp_f0 = temp_v1->dyna.actor.posRot.pos.x;
                temp_f2 = temp_v1->dyna.actor.posRot.pos.y;
                temp_f12 = temp_v1->dyna.actor.posRot.pos.z;
                if (this->unk_162 == GI_DOOR_KEY) {
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_EX_ITEM, temp_f0, temp_f2, temp_f12, 0, 0, 0,
                                0xF);
                    Flags_SetSwitch(globalCtx, 0x32);
                    break;
                } else {
                    temp_s0_2 = (s16)(this->unk_162 - 0x72) + 0xA; // Seems real
                    // Open right treasure (chest)
                    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 右宝開く ☆☆☆☆☆ %d\n" VT_RST, temp_s0_2);
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_EX_ITEM, temp_f0, temp_f2, temp_f12, 0, 0, 0,
                                temp_s0_2);
                    break;
                }
            case 1:
                temp_f0 = temp_v0->dyna.actor.posRot.pos.x;
                temp_f2 = temp_v0->dyna.actor.posRot.pos.y;
                temp_f12 = temp_v0->dyna.actor.posRot.pos.z;
                if (this->unk_160 == GI_DOOR_KEY) {
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_EX_ITEM, temp_f0, temp_f2, temp_f12, 0, 0, 0,
                                0xF);
                    Flags_SetSwitch(globalCtx, 0x32);
                    break;
                } else {
                    temp_s0_2 = (s16)(this->unk_160 - 0x72) + 0xA; // Seems real
                    // Open left treasure (chest)
                    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 左宝開く ☆☆☆☆☆ %d\n" VT_RST, temp_s0_2);
                    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_EX_ITEM, temp_f0, temp_f2, temp_f12, 0, 0, 0,
                                temp_s0_2);
                    break;
                }
        }
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Changer/func_809D2F74.s")
void func_809D2F74(EnChanger* this, GlobalContext* globalCtx) {
    if (this->finalChest->unk_1F4 != 0) {
        if (!(gSaveContext.itemGetInf[1] & 0x800)) {
            gSaveContext.itemGetInf[1] |= 0x800;
        }
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Changer/EnChanger_Update.s")
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
