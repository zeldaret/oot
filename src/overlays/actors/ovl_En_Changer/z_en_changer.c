#include "z_en_changer.h"

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

s32 D_809D3174[] = { 0x0000000A, 0x00000000, 0x00000000 };

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
    s16 sp66;
    s16 sp64;
    s16 temp_v1_3;
    s16 phi_v1;

    phi_v1 = globalCtx->roomCtx.curRoom.num - 1;
    if (phi_v1 < 0) {
        phi_v1 = 0;
    }
    if (Flags_GetTreasure(globalCtx, D_809D3160[phi_v1]) != 0) {
        this->unk_168 = 1;
    }
    temp_v1_3 = phi_v1 * 2;
    osSyncPrintf((const char*)"\n\n");
    osSyncPrintf((const char*)"\x1b[32m☆☆☆☆☆ 宝発生(部屋はどれ？) %d\n\x1b[m", globalCtx->roomCtx.curRoom.num);
    osSyncPrintf((const char*)"\x1b[32m☆☆☆☆☆ ビットは？ \t     %x\n\x1b[m", globalCtx->actorCtx.flags.chest);
    osSyncPrintf((const char*)"\x1b[32m☆☆☆☆☆ セーブＢＩＴは？     %x\n\x1b[m", D_809D3160[phi_v1]);
    osSyncPrintf((const char*)"\x1b[32m☆☆☆☆☆ もう、ゾンビ？\t     %d\n\x1b[m", (s16)this->unk_168);
    osSyncPrintf((const char*)"\n\n");
    if (globalCtx->roomCtx.curRoom.num >= 6) {
        sp6A = *D_809D3174 | ((gSaveContext.itemGetInf[1] & 0x800) ? 0x4EA0 : 0x4EC0);
        this->unk_158 = (EnBox*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_BOX, 20.0f,
                                                   20.0f, -2500.0f, 0, 0x7FFF, 0, sp6A);
        if (this->unk_158 != 0) {
            if ((s16)this->unk_168 != 0) {

                Flags_SetTreasure(globalCtx, sp6A & 0x1F);
                Actor_Kill(&this->actor);
                return;
            } else {
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_ETCETERA, 20.0f, 20.0f, -2500.0f, 0, 0, 0,
                            ((*D_809D3174 & 0x1F) << 8) + (((gSaveContext.itemGetInf[1] & 0x800) ? 0xB : 0xC) & 0xFF));
                osSyncPrintf((const char*)"\x1b[33m☆☆☆☆☆ 中央宝発生(ＧＲＥＡＴ) ☆☆☆☆☆ %x\n\x1b[m", sp6A);
                this->actionFunc = func_809D2F74;
                return;
            }
        }
    }
    this->unk_15C = temp_v1_3;
    this->unk_160 = (s16)D_809D3130[globalCtx->roomCtx.curRoom.num];
    sp6C = temp_v1_3 | 0x4E21;
    sp64 = (s16)D_809D3148[globalCtx->roomCtx.curRoom.num];
    this->unk_15E = temp_v1_3 | 1;
    this->unk_162 = GI_DOOR_KEY;
    sp66 = 0xD;
    sp6E = (s16)((D_809D3130[globalCtx->roomCtx.curRoom.num] << 5) | 0x4000);
    sp6E |= temp_v1_3;
    if (Math_Rand_ZeroFloat(1.99f) < 1.0f) {
        this->unk_15E = temp_v1_3;
        this->unk_162 = (s16)D_809D3130[globalCtx->roomCtx.curRoom.num];
        sp6E = temp_v1_3 | 0x4E21;
        sp66 = (s16)D_809D3148[globalCtx->roomCtx.curRoom.num];
        this->unk_15C = temp_v1_3 | 1;
        this->unk_160 = GI_DOOR_KEY;
        sp64 = 0xD;
        sp6C = (s16)((D_809D3130[globalCtx->roomCtx.curRoom.num] << 5) | 0x4000);
        sp6C |= temp_v1_3;
    }
    this->unk_150 = (EnBox*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_BOX,
                                               D_809D30A0[globalCtx->roomCtx.curRoom.num].x,
                                               D_809D30A0[globalCtx->roomCtx.curRoom.num].y,
                                               D_809D30A0[globalCtx->roomCtx.curRoom.num].z, 0, -0x3FFF, 0, sp6E);
    if (this->unk_150 != 0) {
        osSyncPrintf((const char*)"\x1b[35m☆☆☆☆☆ 左宝発生(ナニがはいってるの？) ☆☆☆☆☆ %x\n\x1b[m", sp6E);
        osSyncPrintf((const char*)"\x1b[35m☆☆☆☆☆ 部屋番号は？  %x\n\x1b[m", globalCtx->roomCtx.curRoom.num);
        osSyncPrintf((const char*)"\x1b[35m☆☆☆☆☆ ビットはなぁに？  %x\n\x1b[m", this->unk_15E);
        osSyncPrintf((const char*)"\x1b[35m☆☆☆☆☆ すけすけ君？ %x\n\x1b[m", sp66);
        osSyncPrintf((const char*)"\n\n");
        if ((s16)this->unk_168 != 0) {
            Flags_SetTreasure(globalCtx, this->unk_15C & 0x1F);
        } else {
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_ITEM_ETCETERA,
                        D_809D30A0[globalCtx->roomCtx.curRoom.num].x, D_809D30A0[globalCtx->roomCtx.curRoom.num].y,
                        D_809D30A0[globalCtx->roomCtx.curRoom.num].z, 0, 0, 0,
                        ((this->unk_15C & 0x1F) << 8) + (sp64 & 0xFF));
        }
    }
    this->unk_154 = (EnBox*)Actor_SpawnAsChild(
        &globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_BOX, D_809D30E8[globalCtx->roomCtx.curRoom.num].x,
        D_809D30E8[globalCtx->roomCtx.curRoom.num].y, D_809D30E8[globalCtx->roomCtx.curRoom.num].z, 0, 0x3FFF, 0, sp6C);
    if (this->unk_154 != 0) {
        osSyncPrintf((const char*)"\x1b[36m☆☆☆☆☆ 右宝発生(ナニがはいってるの？) ☆☆☆☆☆ %x\n\x1b[m", sp6C);
        osSyncPrintf((const char*)"\x1b[36m☆☆☆☆☆ 部屋番号は？  %d\n\x1b[m", globalCtx->roomCtx.curRoom.num);
        osSyncPrintf((const char*)"\x1b[36m☆☆☆☆☆ ビットはなぁに？  %x\n\x1b[m", this->unk_15C);
        osSyncPrintf((const char*)"\x1b[36m☆☆☆☆☆ すけすけ君？ %x\n\x1b[m", sp64);
        osSyncPrintf((const char*)"\n\n");
        if ((s16)this->unk_168 != 0) {
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
/* void EnChanger_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnChanger* this = THIS;

    s16 sp6E;
    s16 sp6C;
    s16 sp6A;
    s16 sp68;
    s16 sp66;
    s16 sp64;
    s32 *sp54;
    s32 sp50;
    ActorContext *sp4C;
    ActorContext *temp_a0;
    EnBox *temp_v0_3;
    EnBox *temp_v0_5;
    EnBox *temp_v0_8;
    Vec3f temp_v0_4;
    Vec3f temp_v0_6;
    Vec3f temp_v0_7;
    Vec3f temp_v0_9;
    s16 temp_a0_2;
    s16 temp_a1;
    s16 temp_v0_2;
    s16 temp_v1;
    s16 temp_v1_2;
    s16 temp_v1_3;
    s16 temp_v1_4;
    s32 *temp_v0;
    s16 phi_v1;
    s32 phi_v0;
    s32 phi_v0_2;

    temp_v1 = globalCtx->roomCtx.curRoom.num - 1;
    phi_v1 = temp_v1;
    if ((s32) temp_v1 < 0) {
        phi_v1 = 0;
    }
    temp_v0 = &D_809D3160[phi_v1];
    sp54 = temp_v0;
    sp68 = phi_v1;
    temp_v1_2 = phi_v1;
    if (Flags_GetTreasure(globalCtx, *temp_v0)) {
    this->unk_168 = 1;
    }
    sp68 = temp_v1_2;
    osSyncPrintf((const char *) "\n\n");
    osSyncPrintf((const char *) "\x1b[32m☆☆☆☆☆ 宝発生(部屋はどれ？) %d\n\x1b[m", globalCtx->roomCtx.curRoom.num);
    osSyncPrintf((const char *) "\x1b[32m☆☆☆☆☆ ビットは？ \t     %x\n\x1b[m", globalCtx->actorCtx.flags.chest);
    osSyncPrintf((const char *) "\x1b[32m☆☆☆☆☆ セーブＢＩＴは？     %x\n\x1b[m", *sp54);
    osSyncPrintf((const char *) "\x1b[32m☆☆☆☆☆ もう、ゾンビ？\t     %d\n\x1b[m", (s16) this->unk_168);
    osSyncPrintf((const char *) "\n\n");
    temp_v1_3 = temp_v1_2 * 2;
    if ((s32) globalCtx->roomCtx.curRoom.num < 6) {
        goto block_15;
    }
    phi_v0 = ((gSaveContext.itemGetInf[1] & 0x800) ? 0x4EA0 : 0x4EC0);
    temp_v0_2 = *D_809D3174 | phi_v0;
    temp_a0 = &globalCtx->actorCtx;
    sp4C = temp_a0;
    sp6A = temp_v0_2;
    sp68 = temp_v1_3;
    temp_v0_3 = Actor_SpawnAsChild(temp_a0, &this->actor, globalCtx, ACTOR_EN_BOX, 20.0f, 20.0f, -2500.0f, 0, 0x7FFF, 0,
temp_v0_2); this->unk_158 = temp_v0_3; if (temp_v0_3 == 0) { goto block_15;
    }
    if ((s16) this->unk_168 == 0) {
        goto block_11;
    }
    Flags_SetTreasure(globalCtx, sp6A & 0x1F);
    Actor_Kill(&this->actor);
    return;
block_11:
    phi_v0_2 = ((gSaveContext.itemGetInf[1] & 0x800) ? 0xB : 0xC);
    Actor_Spawn(sp4C, globalCtx, ACTOR_ITEM_ETCETERA, 20.0f, 20.0f, -2500.0f, 0, 0, 0, ((*D_809D3174 & 0x1F) << 8) +
(phi_v0_2 & 0xFF)); osSyncPrintf((const char *) "\x1b[33m☆☆☆☆☆ 中央宝発生(ＧＲＥＡＴ) ☆☆☆☆☆ %x\n\x1b[m", sp6A);
    this->actionFunc = func_809D2F74;
    return;
block_15:
    this->unk_15C = temp_v1_3;
    temp_a0_2 = temp_v1_3 | 0x4E21;
    temp_a1 = temp_v1_3 | 1;
    this->unk_160 = (s16) D_809D3130[globalCtx->roomCtx.curRoom.num];
    sp6C = temp_a0_2;
    sp64 = (s16) D_809D3148[globalCtx->roomCtx.curRoom.num];
    this->unk_15E = temp_a1;
    this->unk_162 = 0x71;
    sp66 = 0xD;
    sp4C = &globalCtx->actorCtx;
    sp6E = (s16) ((D_809D3130[globalCtx->roomCtx.curRoom.num] << 5) | 0x4000) | temp_v1_3;
    sp50 = (s32) temp_a1;
    sp54 = (s32 *) temp_a0_2;
    sp68 = temp_v1_3;
    temp_v1_4 = temp_v1_3;
    if (!(Math_Rand_ZeroFloat(1.99f) < 1.0f)) {
        goto block_17;
    }
    this->unk_15E = temp_v1_4;
    this->unk_162 = (s16) D_809D3130[globalCtx->roomCtx.curRoom.num];
    sp6E = temp_a0_2;
    sp66 = (s16) D_809D3148[globalCtx->roomCtx.curRoom.num];
    this->unk_15C = temp_a1;
    this->unk_160 = 0x71;
    sp64 = 0xD;
    sp6C = (s16) ((D_809D3130[globalCtx->roomCtx.curRoom.num] << 5) | 0x4000) | temp_v1_4;
block_17:
    temp_v0_4 = D_809D30A0[globalCtx->roomCtx.curRoom.num];
    temp_v0_5 = Actor_SpawnAsChild(sp4C, &this->actor, globalCtx, ACTOR_EN_BOX, temp_v0_4.x, temp_v0_4.y, temp_v0_4.z,
0, -0x3FFF, 0, sp6E); this->unk_150 = temp_v0_5; if (temp_v0_5 == 0) { goto block_21;
    }
    osSyncPrintf((const char *) "\x1b[35m☆☆☆☆☆ 左宝発生(ナニがはいってるの？) ☆☆☆☆☆ %x\n\x1b[m", sp6E);
    osSyncPrintf((const char *) "\x1b[35m☆☆☆☆☆ 部屋番号は？  %x\n\x1b[m", globalCtx->roomCtx.curRoom.num);
    osSyncPrintf((const char *) "\x1b[35m☆☆☆☆☆ ビットはなぁに？  %x\n\x1b[m", this->unk_15E);
    osSyncPrintf((const char *) "\x1b[35m☆☆☆☆☆ すけすけ君？ %x\n\x1b[m", sp66);
    osSyncPrintf((const char *) "\n\n");
    if ((s16) this->unk_168 == 0) {
        goto block_20;
    }
    Flags_SetTreasure(globalCtx, this->unk_15C & 0x1F);
    goto block_21;
block_20:
    temp_v0_6 = D_809D30A0[globalCtx->roomCtx.curRoom.num];
    Actor_Spawn(sp4C, globalCtx, ACTOR_ITEM_ETCETERA, temp_v0_6.x, temp_v0_6.y, temp_v0_6.z, 0, 0, 0, ((this->unk_15C &
0x1F) << 8) + (sp64 & 0xFF)); block_21: temp_v0_7 = D_809D30E8[globalCtx->roomCtx.curRoom.num]; temp_v0_8 =
Actor_SpawnAsChild(sp4C, &this->actor, globalCtx, ACTOR_EN_BOX, temp_v0_7.x, temp_v0_7.y, temp_v0_7.z, 0, 0x3FFF, 0,
sp6C); this->unk_154 = temp_v0_8; if (temp_v0_8 == 0) { goto block_25;
    }
    osSyncPrintf((const char *) "\x1b[36m☆☆☆☆☆ 右宝発生(ナニがはいってるの？) ☆☆☆☆☆ %x\n\x1b[m", sp6C);
    osSyncPrintf((const char *) "\x1b[36m☆☆☆☆☆ 部屋番号は？  %d\n\x1b[m", globalCtx->roomCtx.curRoom.num);
    osSyncPrintf((const char *) "\x1b[36m☆☆☆☆☆ ビットはなぁに？  %x\n\x1b[m", this->unk_15C);
    osSyncPrintf((const char *) "\x1b[36m☆☆☆☆☆ すけすけ君？ %x\n\x1b[m", sp64);
    osSyncPrintf((const char *) "\n\n");
    if ((s16) this->unk_168 == 0) {
        goto block_24;
    }
    Flags_SetTreasure(globalCtx, this->unk_15E & 0x1F);
    Actor_Kill(&this->actor);
    return;
block_24:
    // temp_v0_9 = D_809D30E8[globalCtx->roomCtx.curRoom.num];
    Actor_Spawn(sp4C, globalCtx, ACTOR_ITEM_ETCETERA, D_809D30E8[globalCtx->roomCtx.curRoom.num].x,
D_809D30E8[globalCtx->roomCtx.curRoom.num].y, D_809D30E8[globalCtx->roomCtx.curRoom.num].z, 0, 0, 0, ((this->unk_15E &
0x1F) << 8) + (sp66 & 0xFF)); block_25: this->actor.flags = this->actor.flags & ~1; this->actionFunc = func_809D2CCC;
} */

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Changer/func_809D2CCC.s")
void func_809D2CCC(EnChanger* this, GlobalContext* globalCtx) {
    if (this->unk_150->unk_1F4 != 0) {
        this->unk_166 = 0x50;
        Flags_SetTreasure(globalCtx, this->unk_15E & 0x1F);
        this->actionFunc = func_809D2D70;
    } else if (this->unk_154->unk_1F4 != 0) {
        this->unk_164 = 1;
        this->unk_166 = 0x50;
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

    temp_v0 = this->unk_150;
    temp_v1 = this->unk_154;
    if (this->unk_166 == 0) {
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
                    osSyncPrintf((const char*)"\x1b[32m☆☆☆☆☆ 右宝開く ☆☆☆☆☆ %d\n\x1b[m", temp_s0_2);
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
                    osSyncPrintf((const char*)"\x1b[32m☆☆☆☆☆ 左宝開く ☆☆☆☆☆ %d\n\x1b[m", temp_s0_2);
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
    if (this->unk_158->unk_1F4 != 0) {
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
    if (this->unk_166 != 0) {
        this->unk_166--;
    }
    if (BREG(0)) {
        DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                               this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, 1.0f, 1.0f,
                               1.0f, 0xFF, 0, 0xFF, 0xFF, 4, globalCtx->state.gfxCtx);
    }
}
