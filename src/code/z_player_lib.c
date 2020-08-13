#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x00 */ u8 flag;
    /* 0x02 */ u16 textId;
} TextTriggerEntry; // size = 0x04

typedef struct {
    /* 0x00 */ void* dList;
    /* 0x04 */ Vec3f pos;
} struct_80126134; // size = 0x10

SkeletonHeader* D_80125B70[] = { 0x060377F4, 0x0602CF6C };

s16 D_80125B78[][17] = {
    { 200, 1000, 300, 700, 550, 270, 600, 350, 800, 600, -100, 600, 590, 750, 125, 200, 130 },
    { 200, 1000, 300, 700, 550, 270, 1000, 0, 800, 300, -160, 600, 590, 750, 125, 200, 130 },
    { 200, 1000, 300, 700, 550, 270, 600, 600, 800, 550, -100, 600, 540, 270, 25, 0, 130 },
    { 200, 1000, 300, 700, 380, 400, 0, 300, 800, 500, -100, 600, 590, 750, 125, 200, 130 },
    { 80, 800, 150, 700, 480, 270, 600, 50, 800, 550, -40, 400, 540, 270, 25, 0, 80 },
    { 200, 1000, 300, 800, 500, 400, 800, 400, 800, 550, -100, 600, 540, 750, 125, 400, 200 },
};

u8 D_80125C44[] = {
    0x03, 0x0F, 0x0A, 0x02, 0x02, 0x05, 0x0A, 0x0B, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x09,
    0x09, 0x07, 0x07, 0x08, 0x03, 0x03, 0x06, 0x03, 0x03, 0x03, 0x03, 0x0C, 0x0D, 0x0E, 0x0E, 0x0E, 0x0E,
    0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03,
    0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03,
};

TextTriggerEntry sTextTriggers[] = {
    { 1, 0x3040 },
    { 2, 0x401D },
    { 0, 0x0000 },
    { 2, 0x401D },
};

u8 D_80125C98[][5] = {
    { 0x02, 0x00, 0x0A, 0x10, 0x14 }, { 0x01, 0x02, 0x09, 0x13, 0x14 }, { 0x01, 0x02, 0x0A, 0x11, 0x14 },
    { 0x00, 0x00, 0x08, 0x12, 0x14 }, { 0x00, 0x00, 0x08, 0x12, 0x14 }, { 0x03, 0x04, 0x09, 0x13, 0x14 },
    { 0x04, 0x01, 0x0B, 0x12, 0x14 }, { 0x05, 0x00, 0x08, 0x12, 0x14 }, { 0x00, 0x06, 0x08, 0x12, 0x14 },
    { 0x04, 0x00, 0x0F, 0x12, 0x14 }, { 0x03, 0x01, 0x09, 0x12, 0x14 }, { 0x03, 0x05, 0x09, 0x12, 0x14 },
    { 0x00, 0x00, 0x0D, 0x12, 0x14 }, { 0x00, 0x00, 0x0E, 0x12, 0x14 }, { 0x00, 0x07, 0x08, 0x12, 0x14 },
    { 0x00, 0x02, 0x08, 0x13, 0x14 },
};

Gfx* D_80125CE8[] = {
    0x060226E0, 0x06014320, 0x06027690, 0x06016620, 0x060226E0, 0x06014440, 0x06027690, 0x06016740,
    0x06022970, 0x06014320, 0x06027918, 0x06016620, 0x060241C0, 0x06014320, 0x06028B40, 0x06016620,
};

Gfx* D_80125D28[] = {
    0x06023160, 0x06015248, 0x06027F00, 0x06017360, 0x06023160, 0x06014D68, 0x06027F00, 0x06016EE8,
    0x06020A78, 0x060148A8, 0x06025FB8, 0x06016A98, 0x060211B8, 0x06015248, 0x060264F0, 0x06017360,
};

Gfx* D_80125D68[] = {
    NULL, NULL, NULL, NULL, NULL, 0x06022688, NULL, 0x06022688,
};

Gfx* D_80125D88[] = {
    0x060249D8, 0x06015408, 0x06028150, 0x06017500, 0x060249D8, 0x06015010, 0x06028150, 0x06017150,
    0x06020E70, 0x06014B40, 0x060262B8, 0x06016CF8, 0x060216B0, 0x06015408, 0x06026910, 0x06017500,
    NULL,       NULL,       NULL,       NULL,       0x060249D8, 0x06022688, 0x060249D8, 0x06022688,
};

Gfx* D_80125DE8[] = {
    0x060238C8, 0x06015540, 0x060286B8, 0x06015540, 0x06023D50, 0x06015540, 0x060291E8, 0x06015540,
};

Gfx* D_80125E08[] = {
    0x06021AA8,
    0x06013CB0,
    0x06026C58,
    0x06016280,
};

Gfx* D_80125E18[] = {
    0x06021CE8,
    0x06013E18,
    0x06026DF0,
    0x060163C0,
};

Gfx* D_80125E28[] = {
    0x06021F78,
    0x06013F38,
    0x06027078,
    0x06017630,
};

Gfx* D_80125E38[] = {
    0x06021F78,
    0x06013F38,
    0x06027078,
    0x06017630,
};

Gfx* D_80125E48[] = {
    0x06022498,
    0x060141C0,
    0x060274F8,
    0x060164E0,
};

Gfx* D_80125E58[] = {
    0x060226E0,
    0x06014320,
    0x06027690,
    0x06016620,
};

Gfx* D_80125E68[] = {
    0x06022DA8,
    0x06015DF0,
    0x06027B88,
    0x06017D38,
};

Gfx* D_80125E78[] = {
    0x06023160,
    0x06015248,
    0x06027F00,
    0x06017360,
};

Gfx* D_80125E88[] = {
    0x060249D8,
    0x06015408,
    0x06028150,
    0x06017500,
};

Gfx* D_80125E98[] = {
    0x06035330,
    0x060202A8,
    0x0602F530,
    0x0601AEC8,
};

Gfx* D_80125EA8[] = {
    0x06022DA8,
    0x06015DF0,
    0x06027B88,
    0x06017D38,
};

Gfx* D_80125EB8[] = {
    0x06024698,
    0x06015BA8,
    0x06028F58,
    0x06017AF0,
};

Gfx* D_80125EC8[] = {
    0x06024698,
    0x06015958,
    0x06028F58,
    0x060178A0,
};

Gfx* D_80125ED8[] = {
    0x06024D70,
    0x060141C0,
    0x06024D70,
    0x060164E0,
};

Gfx* D_80125EE8[] = {
    0x060233E0,
    0x06013CB0,
    0x06028288,
    0x06016280,
};

Gfx* D_80125EF8[] = {
    0x06021AA8,
    0x06014660,
    0x06026C58,
    0x06016908,
};

Gfx* D_80125F08[] = {
    0x06024B58,
    0x06015FD0,
    0x06024B58,
    0x06015FD0,
};

Gfx* D_80125F18[] = {
    0x06029918,
    NULL,
};

Gfx* D_80125F20[] = {
    0x06029C20,
    NULL,
};

Gfx* D_80125F28[] = {
    0x06036E58,
    0x06021AE8,
};

Gfx* D_80125F30[] = {
    0x06029FA0,
    NULL,
};

Gfx* D_80125F38[] = {
    0x0602A248,
    0x06018048,
};

Gfx** D_80125F40[] = {
    D_80125E08, D_80125E18, D_80125E38, D_80125E28, D_80125DE8, D_80125EE8, D_80125EF8,
    D_80125F08, D_80125E48, D_80125E58, D_80125CE8, D_80125E68, D_80125EA8, D_80125EB8,
    D_80125EC8, D_80125ED8, D_80125E78, D_80125E88, D_80125D28, D_80125D88, D_80125E98,
};

Gfx D_80125F98[] = {
    gsSPSetGeometryMode(G_CULL_BACK),
    gsSPEndDisplayList(),
};

Gfx D_80125FA8[] = {
    gsSPSetGeometryMode(G_CULL_FRONT),
    gsSPEndDisplayList(),
};

Vec3f* D_80160000;
s32 D_80160004;
Vec3f D_80160008;
s32 D_80160014;
s32 D_80160018;

void func_8008E750(GlobalContext* globalCtx, Player* player) {
    s32 currentBoots;
    s16* bootRegs;

    REG(27) = 2000;
    REG(48) = 370;

    currentBoots = player->currentBoots;
    if (currentBoots == 0) {
        if (LINK_IS_CHILD) {
            currentBoots = 5;
        }
    } else if (currentBoots == 1) {
        if (player->stateFlags1 & 0x8000000) {
            currentBoots = 4;
        }
        REG(27) = 500;
        REG(48) = 100;
    }

    bootRegs = D_80125B78[currentBoots];
    REG(19) = bootRegs[0];
    REG(30) = bootRegs[1];
    REG(32) = bootRegs[2];
    REG(34) = bootRegs[3];
    REG(35) = bootRegs[4];
    REG(36) = bootRegs[5];
    REG(37) = bootRegs[6];
    REG(38) = bootRegs[7];
    REG(43) = bootRegs[8];
    R_RUN_SPEED_LIMIT = bootRegs[9];
    REG(68) = bootRegs[10];
    REG(69) = bootRegs[11];
    IREG(66) = bootRegs[12];
    IREG(67) = bootRegs[13];
    IREG(68) = bootRegs[14];
    IREG(69) = bootRegs[15];
    MREG(95) = bootRegs[16];

    if (globalCtx->roomCtx.curRoom.unk_03 == 2) {
        R_RUN_SPEED_LIMIT = 500;
    }
}

s32 func_8008E8DC(GlobalContext* globalCtx, Player* player) {
    return (player->stateFlags1 & 0x20000080) || (player->action != 0) || (globalCtx->sceneLoadFlag == 0x14) ||
           (player->stateFlags1 & 1) || (player->unk_692 & 0x80) ||
           ((gSaveContext.unk_13F0 != 0) && (func_8008F0D8(player, player->unk_154) >= 0));
}

s32 func_8008E988(GlobalContext* globalCtx) {
    Player* player = PLAYER;
    return func_8008E8DC(globalCtx, player) || (player->unk_6AD == 4);
}

s32 func_8008E9C4(Player* player) {
    return (player->stateFlags1 & 0x10);
}

s32 func_8008E9D0(Player* player) {
    return LINK_IS_CHILD && (player->currentShield == 2);
}

s32 func_8008E9F8(Player* player, s32 arg1) {
    s32 temp = D_80125C44[arg1];

    if ((temp == 2) && func_8008E9D0(player)) {
        return 1;
    } else {
        return temp;
    }
}

#ifdef NON_MATCHING
// regalloc differences
void func_8008EA40(Player* player) {
    s32 age;

    if ((player->stateFlags1 & 0x400000) &&
        ((player->unk_154 < 0) || (player->unk_154 == player->heldItemActionParam))) {
        if (!func_8008F1A0(player) && !func_8008E9D0(player)) {
            player->unk_15D = 0x0A;
            player->unk_160 = &D_80125F40[0x0A][age = gSaveContext.linkAge];
            if (player->unk_15E == 0x12) {
                player->unk_15E = 0x10;
            } else if (player->unk_15E == 0x13) {
                player->unk_15E = 0x11;
            }
            player->unk_168 = &D_80125F40[player->unk_15E][age = gSaveContext.linkAge];
            player->unk_15B = 2;
            player->unk_154 = -1;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EA40.s")
#endif

#ifdef NON_MATCHING
// regalloc differences
void func_8008EB2C(Player* player, s32 arg1) {
    s32 age;

    player->unk_15C = D_80125C98[arg1][1];
    player->unk_15D = D_80125C98[arg1][2];
    player->unk_15E = D_80125C98[arg1][3];
    player->unk_164 = &D_80125F40[D_80125C98[arg1][1]][age = gSaveContext.linkAge];
    player->unk_160 = &D_80125F40[D_80125C98[arg1][2]][age = gSaveContext.linkAge];
    player->unk_168 = &D_80125F40[D_80125C98[arg1][3]][age = gSaveContext.linkAge];
    player->unk_16C = &D_80125F40[D_80125C98[arg1][4]][age = gSaveContext.linkAge];
    func_8008EA40(player);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EB2C.s")
#endif

void func_8008EC04(Player* player, s32 arg1) {
    player->unk_158 = arg1;

    if (arg1 == 1) {
        player->unk_15B = 0;
    } else {
        player->unk_15B = D_80125C98[arg1][0];
    }

    if ((player->unk_15B < 3) && (player->currentShield == 0)) {
        player->unk_15B = 0;
    }

    func_8008EB2C(player, arg1);
}

void func_8008EC70(Player* player) {
    player->unk_154 = player->heldItemActionParam;
    func_8008EC04(player, func_8008E9F8(player, player->heldItemActionParam));
    player->unk_6AD = 0;
}

void func_8008ECAC(GlobalContext* globalCtx, Player* player) {
    if (player->action != 0x56) {
        player->currentShield = CUR_EQUIP_VALUE(EQUIP_SHIELD);
        player->currentTunic = CUR_EQUIP_VALUE(EQUIP_TUNIC) - 1;
        player->currentBoots = CUR_EQUIP_VALUE(EQUIP_BOOTS) - 1;

        player->currentSword = (gSaveContext.buttonStatus[0] == ITEM_NONE)
                                   ? ITEM_NONE
                                   : (gSaveContext.equips.buttonItems[0] == ITEM_SWORD_KNIFE)
                                         ? ITEM_SWORD_BGS
                                         : gSaveContext.equips.buttonItems[0];

        func_8008EC04(player, func_8008E9F8(player, player->heldItemActionParam));
        func_8008E750(globalCtx, player);
    }
}

void func_8008ED9C(GlobalContext* globalCtx, Player* player, s32 item, s32 actionParam) {
    Inventory_UpdateBottleItem(globalCtx, item, player->heldItemCButtonIdx);

    if (item != ITEM_BOTTLE) {
        player->unk_152 = item;
        player->heldItemActionParam = actionParam;
    }

    player->unk_154 = actionParam;
}

void func_8008EDF0(Player* player) {
    player->unk_664 = NULL;
    player->stateFlags2 &= ~0x2000;
}

void func_8008EE08(Player* player) {
    if ((player->actor.bgCheckFlags & 1) || (player->stateFlags1 & 0x8A00000) ||
        (!(player->stateFlags1 & 0xC0000) && ((player->actor.posRot.pos.y - player->actor.groundY) < 100.0f))) {
        player->stateFlags1 &= ~0x400F8000;
    } else if (!(player->stateFlags1 & 0x2C0000)) {
        player->stateFlags1 |= 0x80000;
    }

    func_8008EDF0(player);
}

void func_8008EEAC(GlobalContext* globalCtx, Actor* actor) {
    Player* player = PLAYER;

    func_8008EE08(player);
    player->unk_664 = actor;
    player->unk_684 = actor;
    player->stateFlags1 |= 0x10000;
    Camera_SetParam(Gameplay_GetCamera(globalCtx, 0), 8, actor);
    func_8005A444(Gameplay_GetCamera(globalCtx, 0), 2);
}

s32 func_8008EF30(GlobalContext* globalCtx) {
    Player* player = PLAYER;
    return (player->stateFlags1 & 0x800000);
}

s32 func_8008EF44(GlobalContext* globalCtx, s32 arg1) {
    globalCtx->unk_11E5C = arg1 + 1;
    return 1;
}

s32 func_8008EF5C(GlobalContext* globalCtx, Vec3f* pos, f32 radius, f32 arg3) {
    Player* player = PLAYER;
    Vec3f diff;
    s32 pad;

    if ((player->heldItemActionParam == 6) && (player->stickFlameTimer != 0)) {
        Math_Vec3f_Diff(&player->swordDimensions.tip, pos, &diff);
        return ((SQ(diff.x) + SQ(diff.z)) <= (radius * radius)) && (0.0f <= diff.y) && (diff.y <= arg3);
    } else {
        return false;
    }
}

s32 func_8008F034(void) {
    s32 strengthUpgrade = CUR_UPG_VALUE(UPG_STRENGTH);

    if (LINK_IS_ADULT) {
        return strengthUpgrade;
    } else if (strengthUpgrade != 0) {
        return 1;
    } else {
        return 0;
    }
}

u8 func_8008F080(GlobalContext* globalCtx) {
    Player* player = PLAYER;
    return player->currentMask;
}

Player* func_8008F08C(GlobalContext* globalCtx) {
    Player* player = PLAYER;
    player->currentMask = 0;
    return player;
}

s32 func_8008F098(GlobalContext* globalCtx) {
    Player* player = PLAYER;
    return (player->currentShield == 3);
}

s32 func_8008F0AC(GlobalContext* globalCtx) {
    Player* player = PLAYER;
    return (player->unk_15D == 0xA) && (player->currentShield == 3);
}

s32 func_8008F0D8(Player* player, s32 actionParam) {
    s32 temp = actionParam - 0x15;

    if ((temp >= 0) && (temp < 6)) {
        return temp;
    } else {
        return -1;
    }
}

s32 func_8008F104(Player* player) {
    return (player->heldItemActionParam == 0x10) || (player->heldItemActionParam == 0x11);
}

s32 func_8008F128(Player* player) {
    return func_8008F104(player) && (player->heldActor == NULL);
}

s32 func_8008F158(s32 actionParam) {
    s32 temp = actionParam - 2;

    if ((temp > 0) && (temp < 6)) {
        return temp;
    } else {
        return 0;
    }
}

s32 func_8008F180(Player* player) {
    return func_8008F158(player->heldItemActionParam);
}

s32 func_8008F1A0(Player* player) {
    if ((player->heldItemActionParam >= 5) && (player->heldItemActionParam < 8)) {
        return 1;
    } else {
        return 0;
    }
}

s32 func_8008F1CC(Player* player) {
    return (player->heldItemActionParam == 5) && (gSaveContext.swordHealth <= 0.0f);
}

s32 func_8008F224(Player* player, s32 actionParam) {
    s32 temp = actionParam - 0x1E;

    if ((temp >= 0) && (temp < 0xD)) {
        return temp;
    } else {
        return -1;
    }
}

s32 func_8008F250(Player* player) {
    return func_8008F224(player, player->heldItemActionParam);
}

s32 func_8008F270(Player* player, s32 actionParam) {
    s32 temp = actionParam - 0x12;

    if ((temp >= 0) && (temp < 2)) {
        return temp;
    } else {
        return -1;
    }
}

s32 func_8008F29C(Player* player) {
    return func_8008F270(player, player->heldItemActionParam);
}

s32 func_8008F2BC(Player* player, s32 actionParam) {
    s32 temp = 0;

    if (actionParam != 1) {
        temp = actionParam - 3;
        if ((temp < 0) || (temp >= 3)) {
            goto return_neg;
        }
    }

    return temp;

return_neg:
    return -1;
}

s32 func_8008F2F8(GlobalContext* globalCtx) {
    Player* player = PLAYER;
    TextTriggerEntry* triggerEntry;
    s32 var;

    if (globalCtx->roomCtx.curRoom.unk_02 == 3) { // Room is hot
        var = 0;
    } else if ((player->unk_840 > 80) && ((player->currentBoots == 1) || (player->unk_840 >= 300))) { // Deep underwater
        var = ((player->currentBoots == 1) && (player->actor.bgCheckFlags & 1)) ? 1 : 3;
    } else if (player->stateFlags1 & 0x8000000) { // Swimming
        var = 2;
    } else {
        return 0;
    }

    // Trigger general textboxes under certain conditions, like "It's so hot in here!"
    if (!func_8008E988(globalCtx)) {
        triggerEntry = &sTextTriggers[var];

        if (0) {} // Necessary to match

        if ((triggerEntry->flag != 0) && !(gSaveContext.textTriggerFlags & triggerEntry->flag) &&
            (((var == 0) && (player->currentTunic != 1)) ||
             (((var == 1) || (var == 3)) && (player->currentBoots == 1) && (player->currentTunic != 2)))) {
            func_8010B680(globalCtx, triggerEntry->textId, NULL);
            gSaveContext.textTriggerFlags |= triggerEntry->flag;
        }
    }

    return var + 1;
}

u8 D_80125FB8[][2] = {
    { 0, 0 }, { 1, 0 }, { 2, 0 }, { 0, 0 }, { 1, 0 }, { 2, 0 }, { 4, 0 }, { 5, 1 },
    { 7, 2 }, { 0, 2 }, { 3, 0 }, { 4, 0 }, { 2, 2 }, { 1, 1 }, { 0, 2 }, { 0, 0 },
};

void* D_80125FD8[] = {
    0x06000000, 0x06000800, 0x06001000, 0x06001800, 0x06002000, 0x06002800, 0x06003000, 0x06003800,
};

void* D_80125FF8[] = {
    0x06004000,
    0x06004400,
    0x06004800,
    0x06004C00,
};

Color_RGB8 D_80126008[] = {
    { 30, 105, 27 },
    { 100, 20, 0 },
    { 0, 60, 100 },
};

Color_RGB8 D_80126014[] = {
    { 255, 255, 255 },
    { 254, 207, 15 },
};

Gfx* D_8012601C[][2] = {
    { 0x06025918, 0x06025A60 },
    { 0x06025BA8, 0x06025DB0 },
};

void func_8008F470(GlobalContext* globalCtx, Skeleton* skeleton, Vec3s* limbDrawTable, s32 dListCount, s32 dListIndex,
                   s32 arg5, s32 arg6, s32 arg7, OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw,
                   Actor* actor) {
    Color_RGB8* color;
    s32 sp80 = (limbDrawTable[22].x & 0xF) - 1;
    s32 sp7C = (limbDrawTable[22].x >> 4) - 1;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 1721);

    if (sp80 < 0) {
        sp80 = D_80125FB8[arg7][0];
    }

    gSPSegment(oGfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80125FD8[sp80]));

    if (sp7C < 0) {
        sp7C = D_80125FB8[arg7][1];
    }

    gSPSegment(oGfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(D_80125FF8[sp7C]));

    color = &D_80126008[arg5];
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, color->r, color->g, color->b, 0x00);

    D_80160004 = dListIndex * 2;

    SkelAnime_LodDrawSV(globalCtx, skeleton, limbDrawTable, dListCount, overrideLimbDraw, postLimbDraw, actor,
                        dListIndex);

    if ((overrideLimbDraw != func_800902F0) && (overrideLimbDraw != func_80090440) && (gSaveContext.gameMode != 3)) {
        if (LINK_IS_ADULT) {
            s32 strengthUpg = CUR_UPG_VALUE(UPG_STRENGTH);

            if (strengthUpg >= 2) {
                gDPPipeSync(oGfxCtx->polyOpa.p++);

                color = &D_80126014[strengthUpg - 2];
                gDPSetEnvColor(oGfxCtx->polyOpa.p++, color->r, color->g, color->b, 0x00);

                gSPDisplayList(oGfxCtx->polyOpa.p++, D_06025218);
                gSPDisplayList(oGfxCtx->polyOpa.p++, D_06025598);
                gSPDisplayList(oGfxCtx->polyOpa.p++, (D_80160014 == 0) ? D_060252D8 : D_06025438);
                gSPDisplayList(oGfxCtx->polyOpa.p++, (D_80160018 == 8) ? D_06025658 : D_060257B8);
            }

            if (arg6 != 0) {
                Gfx** ptr = D_8012601C[arg6 - 1];
                gSPDisplayList(oGfxCtx->polyOpa.p++, ptr[0]);
                gSPDisplayList(oGfxCtx->polyOpa.p++, ptr[1]);
            }
        } else {
            if (func_8008F034() > 0) {
                gSPDisplayList(oGfxCtx->polyOpa.p++, D_06016118);
            }
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 1803);
}

Vec3f D_8012602C = { 0.0f, 0.0f, 0.0f };

Vec3f D_80126038[] = {
    { 1304.0f, 0.0f, 0.0f },
    { 695.0f, 0.0f, 0.0f },
};

f32 D_80126050[] = { 1265.0f, 826.0f };
f32 D_80126058[] = { 170.0415955f, 48.30249786f };
f32 D_80126060[] = { 10.019104f, -19.92510223f };
f32 D_80126068[] = { 5.0f, 3.0f };

Vec3f D_80126070 = { 0.0f, -300.0f, 0.0f };

void func_8008F87C(GlobalContext* globalCtx, Player* player, SkelAnime* skelAnime, Vec3f* pos, Vec3s* rot, s32 arg5,
                   s32 arg6, s32 arg7) {
    Vec3f spA4;
    Vec3f sp98;
    Vec3f sp8C;
    CollisionPoly* sp88;
    UNK_TYPE sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    s16 temp1;
    s16 temp2;
    s32 temp3;

    if ((player->actor.scale.y >= 0.0f) && !(player->stateFlags1 & 0x80) &&
        (func_8008F0D8(player, player->unk_154) < 0)) {
        s32 age;

        sp7C = D_80126058[age = gSaveContext.linkAge];
        sp78 = D_80126060[age = gSaveContext.linkAge];
        sp74 = D_80126068[age = gSaveContext.linkAge] - player->unk_6C4;

        Matrix_Push();
        Matrix_JointPosition(pos, rot);
        Matrix_MultVec3f(&D_8012602C, &spA4);
        Matrix_JointPosition(&D_80126038[age = gSaveContext.linkAge], &skelAnime->limbDrawTbl[arg6]);
        Matrix_Translate(D_80126050[age = gSaveContext.linkAge], 0.0f, 0.0f, MTXMODE_APPLY);
        Matrix_MultVec3f(&D_8012602C, &sp98);
        Matrix_MultVec3f(&D_80126070, &sp8C);
        Matrix_Pull();

        sp8C.y += 15.0f;

        sp80 = func_8003C9A4(&globalCtx->colCtx, &sp88, &sp84, &player->actor, &sp8C) + sp74;

        if (sp98.y < sp80) {
            sp70 = sp98.x - spA4.x;
            sp6C = sp98.y - spA4.y;
            sp68 = sp98.z - spA4.z;

            sp64 = sqrtf(SQ(sp70) + SQ(sp6C) + SQ(sp68));
            sp60 = (SQ(sp64) + sp78) / (2.0f * sp64);

            sp58 = sp7C - SQ(sp60);
            sp58 = (sp7C < SQ(sp60)) ? 0.0f : sqrtf(sp58);

            sp54 = Math_atan2f(sp58, sp60);

            sp6C = sp80 - spA4.y;

            sp64 = sqrtf(SQ(sp70) + SQ(sp6C) + SQ(sp68));
            sp60 = (SQ(sp64) + sp78) / (2.0f * sp64);
            sp5C = sp64 - sp60;

            sp58 = sp7C - SQ(sp60);
            sp58 = (sp7C < SQ(sp60)) ? 0.0f : sqrtf(sp58);

            sp50 = Math_atan2f(sp58, sp60);

            temp1 = (M_PI - (Math_atan2f(sp5C, sp58) + ((M_PI / 2) - sp50))) * 10430.378f;
            temp1 = temp1 - skelAnime->limbDrawTbl[arg6].z;

            if ((s16)(ABS(skelAnime->limbDrawTbl[arg6].x) + ABS(skelAnime->limbDrawTbl[arg6].y)) < 0) {
                temp1 += 0x8000;
            }

            temp2 = (sp50 - sp54) * 10430.378f;
            rot->z -= temp2;

            skelAnime->limbDrawTbl[arg5].z = skelAnime->limbDrawTbl[arg5].z - temp2;
            skelAnime->limbDrawTbl[arg6].z = skelAnime->limbDrawTbl[arg6].z + temp1;
            skelAnime->limbDrawTbl[arg7].z = skelAnime->limbDrawTbl[arg7].z + temp2 - temp1;

            temp3 = func_80041D4C(&globalCtx->colCtx, sp88, sp84);

            if ((temp3 >= 2) && (temp3 < 4) && !func_80042108(&globalCtx->colCtx, sp88, sp84)) {
                sp8C.y = sp80;
                func_80029568(globalCtx, &sp8C);
            }
        }
    }
}

s32 func_8008FCC8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor) {
    Player* player = (Player*)actor;

    if (limbIndex == 1) {
        D_80160014 = player->unk_15C;
        D_80160018 = player->unk_15D;
        D_80160000 = &player->unk_8EC.base;

        if (gSaveContext.linkAge != 0) {
            if (!(player->skelAnime.flags & 4) || (player->skelAnime.flags & 1)) {
                pos->x *= 0.64f;
                pos->z *= 0.64f;
            }

            if (!(player->skelAnime.flags & 4) || (player->skelAnime.flags & 2)) {
                pos->y *= 0.64f;
            }
        }

        pos->y -= player->unk_6C4;
        if (player->unk_6C2 != 0) {
            Matrix_Translate(pos->x, ((Math_Coss(player->unk_6C2) - 1.0f) * 200.0f) + pos->y, pos->z, MTXMODE_APPLY);
            Matrix_RotateX(player->unk_6C2 * 0.0000958738f, MTXMODE_APPLY);
            Matrix_RotateRPY(rot->x, rot->y, rot->z, MTXMODE_APPLY);
            pos->x = pos->y = pos->z = 0.0f;
            rot->x = rot->y = rot->z = 0;
        }
    } else {
        if (*dList != NULL) {
            D_80160000++;
        }

        if (limbIndex == 11) {
            rot->x += player->unk_6BA;
            rot->y -= player->unk_6B8;
            rot->z += player->unk_6B6;
        } else if (limbIndex == 10) {
            if (player->unk_6B0 != 0) {
                Matrix_RotateZ(0.10546118f, MTXMODE_APPLY);
                Matrix_RotateY(player->unk_6B0 * 0.0000958738f, MTXMODE_APPLY);
            }
            if (player->unk_6BE != 0) {
                Matrix_RotateY(player->unk_6BE * 0.0000958738f, MTXMODE_APPLY);
            }
            if (player->unk_6BC != 0) {
                Matrix_RotateX(player->unk_6BC * 0.0000958738f, MTXMODE_APPLY);
            }
            if (player->unk_6C0 != 0) {
                Matrix_RotateZ(player->unk_6C0 * 0.0000958738f, MTXMODE_APPLY);
            }
        } else if (limbIndex == 7) {
            func_8008F87C(globalCtx, player, &player->skelAnime, pos, rot, 7, 8, 9);
        } else if (limbIndex == 4) {
            func_8008F87C(globalCtx, player, &player->skelAnime, pos, rot, 4, 5, 6);
            return 0;
        } else {
            return 0;
        }
    }

    return 0;
}

s32 func_80090014(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor) {
    Player* player = (Player*)actor;
    Gfx** phi_v0;
    Gfx** phi_v1;

    if (func_8008FCC8(globalCtx, limbIndex, dList, pos, rot, actor) == 0) {
        if (limbIndex == 16) {
            phi_v0 = player->unk_164;
            if ((D_80160014 == 4) && (gSaveContext.swordHealth <= 0.0f)) {
                phi_v0 += 4;
            } else if ((D_80160014 == 6) && (player->stateFlags1 & 0x2000000)) {
                phi_v0 = &D_80125E08[gSaveContext.linkAge];
                D_80160014 = 0;
            } else if ((player->unk_15C == 0) && (player->actor.speedXZ > 2.0f) && !(player->stateFlags1 & 0x8000000)) {
                phi_v0 = &D_80125E18[gSaveContext.linkAge];
                D_80160014 = 1;
            }
            *dList = phi_v0[D_80160004];
        } else if (limbIndex == 19) {
            phi_v0 = player->unk_160;
            if (D_80160018 == 10) {
                phi_v0 += player->currentShield * 4;
            } else if ((player->unk_15D == 8) && (player->actor.speedXZ > 2.0f) && !(player->stateFlags1 & 0x8000000)) {
                phi_v0 = &D_80125E58[gSaveContext.linkAge];
                D_80160018 = 9;
            }
            *dList = phi_v0[D_80160004];
        } else if (limbIndex == 20) {
            phi_v1 = player->unk_168;
            if ((player->unk_15E == 0x12) || (player->unk_15E == 0x13)) {
                phi_v1 += player->currentShield * 4;
                if ((LINK_IS_CHILD) && (player->currentShield < 2) &&
                    (gSaveContext.equips.buttonItems[0] != ITEM_SWORD_KOKIRI)) {
                    phi_v1 += 16;
                }
            } else if ((LINK_IS_CHILD) && ((player->unk_15E == 0x10) || (player->unk_15E == 0x11)) &&
                       (gSaveContext.equips.buttonItems[0] != ITEM_SWORD_KOKIRI)) {
                phi_v1 = D_80125D68;
            }
            *dList = phi_v1[D_80160004];
        } else if (limbIndex == 2) {
            *dList = player->unk_16C[D_80160004];
        }
    }

    return 0;
}

s32 func_800902F0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor) {
    Player* player = (Player*)actor;
    s32 age;

    if (func_8008FCC8(globalCtx, limbIndex, dList, pos, rot, actor) == 0) {
        if (player->unk_6AD != 2) {
            *dList = NULL;
        } else if (limbIndex == 15) {
            *dList = D_80125F18[age = gSaveContext.linkAge];
        } else if (limbIndex == 16) {
            *dList = D_80125F20[age = gSaveContext.linkAge];
        } else if (limbIndex == 17) {
            *dList = D_80125F28[age = gSaveContext.linkAge];
        } else if (limbIndex == 18) {
            *dList = D_80125F30[age = gSaveContext.linkAge];
        } else if (limbIndex == 19) {
            *dList = func_8008F104(player) ? D_0602A738 : D_80125F38[age = gSaveContext.linkAge];
        } else {
            *dList = NULL;
        }
    }

    return 0;
}

s32 func_80090440(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor) {
    if (func_8008FCC8(globalCtx, limbIndex, dList, pos, rot, actor) == 0) {
        *dList = NULL;
    }

    return 0;
}

u8 func_80090480(GlobalContext* globalCtx, ColliderQuad* collider, struct_80090480_arg2* arg2, Vec3f* arg3,
                 Vec3f* arg4) {
    if (arg2->active == 0) {
        if (collider != NULL) {
            Collider_QuadSetAT(globalCtx, &collider->base);
        }
        Math_Vec3f_Copy(&arg2->tip, arg3);
        Math_Vec3f_Copy(&arg2->base, arg4);
        arg2->active = 1;
        return 1;
    } else if ((arg2->tip.x == arg3->x) && (arg2->tip.y == arg3->y) && (arg2->tip.z == arg3->z) &&
               (arg2->base.x == arg4->x) && (arg2->base.y == arg4->y) && (arg2->base.z == arg4->z)) {
        if (collider != NULL) {
            Collider_QuadSetAT(globalCtx, &collider->base);
        }
        return 0;
    } else {
        if (collider != NULL) {
            func_80062734(collider, arg4, arg3, &arg2->base, &arg2->tip);
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &collider->base);
        }
        Math_Vec3f_Copy(&arg2->base, arg4);
        Math_Vec3f_Copy(&arg2->tip, arg3);
        arg2->active = 1;
        return 1;
    }
}

void func_80090604(GlobalContext* globalCtx, Player* player, ColliderQuad* collider, Vec3f* quadSrc) {
    static u8 D_8012607C[] = { 9, 11, 9, 9 };
    Vec3f quadDest[4];

    if (player->stateFlags1 & 0x400000) {
        player->quads[2].base.type = D_8012607C[player->currentShield];
        Matrix_MultVec3f(&quadSrc[0], &quadDest[0]);
        Matrix_MultVec3f(&quadSrc[1], &quadDest[1]);
        Matrix_MultVec3f(&quadSrc[2], &quadDest[2]);
        Matrix_MultVec3f(&quadSrc[3], &quadDest[3]);
        func_80062734(collider, &quadDest[0], &quadDest[1], &quadDest[2], &quadDest[3]);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &collider->base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &collider->base);
    }
}

Vec3f D_80126080 = { 5000.0f, 400.0f, 0.0f };
Vec3f D_8012608C = { 5000.0f, -400.0f, 1000.0f };
Vec3f D_80126098 = { 5000.0f, 1400.0f, -1000.0f };

Vec3f D_801260A4 = { 0.0f, 400.0f, 0.0f };
Vec3f D_801260B0 = { 0.0f, 1400.0f, -1000.0f };
Vec3f D_801260BC = { 0.0f, -400.0f, 1000.0f };

void func_800906D4(GlobalContext* globalCtx, Player* player, Vec3f* vecs) {
    Vec3f sp44;
    Vec3f sp38;
    Vec3f sp2C;

    Matrix_MultVec3f(&D_801260A4, &sp2C);
    Matrix_MultVec3f(&D_801260B0, &sp38);
    Matrix_MultVec3f(&D_801260BC, &sp44);

    if (func_80090480(globalCtx, NULL, &player->swordDimensions, &vecs[0], &sp2C) &&
        !(player->stateFlags1 & 0x400000)) {
        EffectBlure_AddVertex(Effect_GetByIndex(player->swordEffectIndex), &player->swordDimensions.tip,
                              &player->swordDimensions.base);
    }

    if ((player->swordState > 0) && ((player->swordAnimation < 0x18) || (player->stateFlags2 & 0x20000))) {
        func_80090480(globalCtx, &player->quads[0], &player->unk_8D0, &vecs[1], &sp38);
        func_80090480(globalCtx, &player->quads[1], &player->unk_8EC, &vecs[2], &sp44);
    }
}

void func_800907E4(GlobalContext* globalCtx, Player* player, Vec3f* arg2, s32 arg3) {
    f32 sp4C;

    sp4C = (player->exchangeItemId != 0) ? 6.0f : 14.0f;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2401);

    gSegments[6] = VIRTUAL_TO_PHYSICAL(player->giObjectSegment);

    gSPSegment(oGfxCtx->polyOpa.p++, 0x06, player->giObjectSegment);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x06, player->giObjectSegment);

    Matrix_Translate(arg2->x + (3.3f * Math_Sins(player->actor.shape.rot.y)), arg2->y + sp4C,
                     arg2->z + ((3.3f + (IREG(90) / 10.0f)) * Math_Coss(player->actor.shape.rot.y)), MTXMODE_NEW);
    Matrix_RotateRPY(0, globalCtx->gameplayFrames * 1000, 0, MTXMODE_APPLY);
    Matrix_Scale(0.2f, 0.2f, 0.2f, MTXMODE_APPLY);
    func_800694A0(globalCtx, arg3 - 1);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2421);
}

void func_800909B4(GlobalContext* globalCtx, Player* player) {
    if (!player->giObjectLoading || !osRecvMesg(&player->giObjectLoadQueue, NULL, OS_MESG_NOBLOCK)) {
        player->giObjectLoading = false;
        func_800907E4(globalCtx, player, &D_80160008, ABS(player->unk_862));
    }
}

void func_80090A28(Player* player, Vec3f* vecs) {
    D_8012608C.x = D_80126080.x;
    if (player->unk_845 >= 3) {
        player->unk_845 += 1;
        D_8012608C.x *= 1.0f + ((9 - player->unk_845) * 0.1f);
    }
    D_8012608C.x += 1200.0f;
    D_80126098.x = D_8012608C.x;
    Matrix_MultVec3f(&D_80126080, &vecs[0]);
    Matrix_MultVec3f(&D_8012608C, &vecs[1]);
    Matrix_MultVec3f(&D_80126098, &vecs[2]);
}

void func_80090AFC(GlobalContext* globalCtx, Player* player, f32 arg2) {
    static Vec3f D_801260C8 = { -500.0f, -100.0f, 0.0f };
    f32 sp9C;
    f32 sp98;
    Vec3f sp8C;
    Vec3f sp80;
    Vec3f sp74;
    Vec3f sp68;
    f32 sp64;
    f32 sp60;

    D_801260C8.z = 0.0f;
    Matrix_MultVec3f(&D_801260C8, &sp8C);
    D_801260C8.z = arg2;
    Matrix_MultVec3f(&D_801260C8, &sp80);

    if (1) {} // Necessary to match

    if (func_8003E188(&globalCtx->colCtx, &sp8C, &sp80, &sp74, &sp9C, 1, 1, 1, 1, &sp98) != 0) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2572);

        oGfxCtx->overlay.p = Gfx_CallSetupDL(oGfxCtx->overlay.p, 0x07);

        SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &sp74, &sp68, &sp64);

        sp60 = (sp64 < 200.0f) ? 0.08f : (sp64 / 200.0f) * 0.08f;

        Matrix_Translate(sp74.x, sp74.y, sp74.z, MTXMODE_NEW);
        Matrix_Scale(sp60, sp60, sp60, MTXMODE_APPLY);

        gSPMatrix(oGfxCtx->overlay.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_player_lib.c", 2587),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPSegment(oGfxCtx->overlay.p++, 0x06, globalCtx->objectCtx.status[player->actor.objBankIndex].segment);
        gSPDisplayList(oGfxCtx->overlay.p++, &D_0602CB48);

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2592);
    }
}

Vec3f D_801260D4 = { 1100.0f, -700.0f, 0.0f };

f32 D_801260E0[] = {
    0.0f, 4000.0f, 3000.0f, 5500.0f, 0.0f, 2500.0f,
};

Gfx* D_801260F8[] = { 0x0602AD58, 0x06018478 };

Color_RGB8 D_80126100[] = {
    { 255, 255, 255 }, { 80, 80, 255 }, { 255, 100, 255 }, { 0, 0, 255 }, { 255, 0, 255 },
    { 255, 0, 255 }, { 200, 200, 100 }, { 255, 0, 0 }, { 0, 0, 255 }, { 0, 255, 0 },
    { 255, 255, 255 }, { 255, 255, 255 }, { 80, 80, 255 },
};

Vec3f D_80126128 = { 398.0f, 1419.0f, 244.0f };

struct_80126134 D_80126134[] = {
    { 0x0602B108, { 0.0f, -360.4f, 0.0f } },
    { 0x060221A8, { 606.0f, 236.0f, 0.0f } },
};

Vec3f D_80126154[] = {
    { -4500.0f, -3000.0f, -600.0f },
    { 1500.0f, -3000.0f, -600.0f },
    { -4500.0f, 3000.0f, -600.0f },
    { 1500.0f, 3000.0f, -600.0f },
};

Vec3f D_80126184 = { 100.0f, 1500.0f, 0.0f };
Vec3f D_80126190 = { 100.0f, 1640.0f, 0.0f };

Vec3f D_8012619C[] = {
    { -3000.0f, -3000.0f, -900.0f },
    { 3000.0f, -3000.0f, -900.0f },
    { -3000.0f, 3000.0f, -900.0f },
    { 3000.0f, 3000.0f, -900.0f },
};

Vec3f D_801261CC = { 630.0f, 100.0f, -30.0f };
Vec3s D_801261D8 = { 0, 0, 0x7FFF };

Vec3f D_801261E0[] = {
    { 200.0f, 300.0f, 0.0f },
    { 200.0f, 200.0f, 0.0f },
};

#ifdef NON_MATCHING
// regalloc differences
void func_80090D20(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* actor) {
    Player* player = (Player*)actor;
    MtxF sp14C;
    Actor* sp148;

    if (*dList != NULL) {
        Matrix_MultVec3f(&D_8012602C, D_80160000);
    }

    if (limbIndex == 16) {
        Math_Vec3f_Copy(&player->unk_3B0, D_80160000);

        if (player->unk_154 == 6) {
            Vec3f sp124[3];

            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2633);

            if (player->actor.scale.y >= 0.0f) {
                D_80126080.x = player->stickLength * 5000.0f;
                func_80090A28(player, sp124);
                if (player->swordState != 0) {
                    func_800906D4(globalCtx, player, sp124);
                } else {
                    Math_Vec3f_Copy(&player->swordDimensions.tip, &sp124[0]);
                }
            }

            Matrix_Translate(-428.26f, 267.2f, -33.82f, MTXMODE_APPLY);
            Matrix_RotateRPY(-0x8000, 0, 0x4000, MTXMODE_APPLY);
            Matrix_Scale(1.0f, player->stickLength, 1.0f, MTXMODE_APPLY);

            gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_player_lib.c", 2653),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(oGfxCtx->polyOpa.p++, D_06006CC0);

            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2656);
        } else if ((player->actor.scale.y >= 0.0f) && (player->swordState != 0)) {
            Vec3f spE4[3];

            if (func_8008F1CC(player) != 0) {
                D_80126080.x = 1500.0f;
            } else {
                D_80126080.x = D_801260E0[func_8008F180(player)];
            }

            func_80090A28(player, spE4);
            func_800906D4(globalCtx, player, spE4);
        } else if ((*dList != NULL) && (player->unk_15C == 7)) {
            Color_RGB8* spE0 = &D_80126100[func_8008F224(player, player->unk_154)];

            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2710);

            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_player_lib.c", 2712),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gDPSetEnvColor(oGfxCtx->polyXlu.p++, spE0->r, spE0->g, spE0->b, 0);
            gSPDisplayList(oGfxCtx->polyXlu.p++, D_801260F8[gSaveContext.linkAge]);

            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2717);
        }

        if (player->actor.scale.y >= 0.0f) {
            if (!func_8008F104(player) && ((sp148 = player->heldActor) != NULL)) {
                if (player->stateFlags1 & 0x200) {
                    Matrix_MultVec3f(&D_80126128, &sp148->posRot.pos);
                    Matrix_RotateRPY(0x69E8, -0x5708, 0x458E, MTXMODE_APPLY);
                    Matrix_Get(&sp14C);
                    func_800D20CC(&sp14C, &sp148->posRot.rot, 0);
                    sp148->shape.rot = sp148->posRot.rot;
                } else if (player->stateFlags1 & 0x800) {
                    Vec3s spB8;

                    Matrix_Get(&sp14C);
                    func_800D20CC(&sp14C, &spB8, 0);

                    if (sp148->flags & 0x20000) {
                        sp148->posRot.rot.x = sp148->shape.rot.x = spB8.x - player->unk_3BC.x;
                    } else {
                        sp148->posRot.rot.y = sp148->shape.rot.y = player->actor.shape.rot.y + player->unk_3BC.y;
                    }
                }
            } else {
                Matrix_Get(&player->mf_9E0);
                func_800D20CC(&player->mf_9E0, &player->unk_3BC, 0);
            }
        }
    } else if (limbIndex == 19) {
        Actor* spB4 = player->heldActor;

        if (player->unk_15D == 0xFF) {
            Matrix_Get(&player->mf_A20);
        } else if ((player->unk_15D == 0xB) || (player->unk_15D == 0xC)) {
            struct_80126134* spB0 = &D_80126134[gSaveContext.linkAge];

            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2783);

            Matrix_Push();
            Matrix_Translate(spB0->pos.x, spB0->pos.y, spB0->pos.z, MTXMODE_APPLY);

            if ((player->stateFlags1 & 0x200) && (player->stickFlameTimer >= 0) && (player->unk_834 <= 10)) {
                Vec3f sp90;
                f32 distXYZ;

                Matrix_MultVec3f(&D_8012602C, &sp90);
                distXYZ = Math_Vec3f_DistXYZ(D_80160000, &sp90);

                player->unk_858 = distXYZ - 3.0f;
                if (distXYZ < 3.0f) {
                    player->unk_858 = 0.0f;
                } else {
                    player->unk_858 *= 1.6f;
                    if (player->unk_858 > 1.0f) {
                        player->unk_858 = 1.0f;
                    }
                }

                player->stickLength = -0.5f;
            }

            Matrix_Scale(1.0f, player->unk_858, 1.0f, MTXMODE_APPLY);

            if (LINK_IS_CHILD) {
                Matrix_RotateZ(player->unk_858 * -0.2f, MTXMODE_APPLY);
            }

            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_player_lib.c", 2804),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(oGfxCtx->polyXlu.p++, spB0->dList);

            Matrix_Pull();

            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 2809);
        } else if ((player->actor.scale.y >= 0.0f) && (player->unk_15D == 0xA)) {
            Matrix_Get(&player->mf_A20);
            func_80090604(globalCtx, player, &player->quads[2], D_80126154);
        }

        if (player->actor.scale.y >= 0.0f) {
            if ((player->heldItemActionParam == 0x10) || (player->heldItemActionParam == 0x11)) {
                Matrix_MultVec3f(&D_80126184, &player->unk_3C8);

                if (spB4 != NULL) {
                    MtxF sp44;
                    s32 pad;

                    Matrix_MultVec3f(&D_80126190, &spB4->posRot.pos);
                    Matrix_RotateRPY(0, -0x4000, -0x4000, MTXMODE_APPLY);
                    Matrix_Get(&sp44);
                    func_800D20CC(&sp44, &spB4->posRot.rot, 0);
                    spB4->shape.rot = spB4->posRot.rot;

                    if (func_8002DD78(player) != 0) {
                        Matrix_Translate(500.0f, 300.0f, 0.0f, MTXMODE_APPLY);
                        func_80090AFC(globalCtx, player, (player->heldItemActionParam == 0x10) ? 38600.0f : 77600.0f);
                    }
                }
            }

            if ((player->unk_862 != 0) || ((func_8002DD6C(player) == 0) && (spB4 != NULL))) {
                if (!(player->stateFlags1 & 0x400) && (player->unk_862 != 0) && (player->exchangeItemId != 0)) {
                    Math_Vec3f_Copy(&D_80160008, &player->unk_3B0);
                } else {
                    D_80160008.x = (player->unk_908[15].x + player->unk_3B0.x) * 0.5f;
                    D_80160008.x = (player->unk_908[15].y + player->unk_3B0.y) * 0.5f;
                    D_80160008.z = (player->unk_908[15].z + player->unk_3B0.z) * 0.5f;
                }

                if (player->unk_862 == 0) {
                    Math_Vec3f_Copy(&spB4->posRot.pos, &D_80160008);
                }
            }
        }
    } else if (player->actor.scale.y >= 0.0f) {
        if (limbIndex == 20) {
            if ((player->unk_15D != 0xA) && (player->unk_15D != 0xFF)) {
                if (func_8008E9D0(player)) {
                    func_80090604(globalCtx, player, &player->quads[2], D_8012619C);
                }

                Matrix_JointPosition(&D_801261CC, &D_801261D8);
                Matrix_Get(&player->mf_A20);
            }
        } else if (limbIndex == 11) {
            Matrix_MultVec3f(&D_801260D4, &player->actor.posRot2.pos);
        } else {
            Vec3f* vec = &D_801261E0[gSaveContext.linkAge];
            func_8002BDB0(&player->actor, limbIndex, 9, vec, 6, vec);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80090D20.s")
#endif

#ifdef NON_MATCHING
// regalloc and stack usage differences
u32 func_80091738(GlobalContext* globalCtx, u8* segment, SkelAnime* skelAnime) {
    s16 sp46;
    u32 size;
    void* ptr1;
    void* ptr2;
    void* ptr;

    sp46 = gLinkObjectIds[gSaveContext.linkAge];
    ptr1 = segment + 0x3800;
    ptr2 = segment + 0x8800;

    size = gObjectTable[OBJECT_GAMEPLAY_KEEP].vromEnd - gObjectTable[OBJECT_GAMEPLAY_KEEP].vromStart;
    DmaMgr_SendRequest1(ptr1, gObjectTable[OBJECT_GAMEPLAY_KEEP].vromStart, size, "../z_player_lib.c", 2982);

    size = gObjectTable[sp46].vromEnd - gObjectTable[sp46].vromStart;
    DmaMgr_SendRequest1(ptr2, gObjectTable[sp46].vromStart, size, "../z_player_lib.c", 2988);

    ptr = (void*)ALIGN16((u32)ptr2 + size);

    if (ptr) {}

    gSegments[4] = PHYSICAL_TO_VIRTUAL(segment + 0x3800);
    gSegments[6] = PHYSICAL_TO_VIRTUAL(segment + 0x8800);

    SkelAnime_InitLinkAnimetion(globalCtx, skelAnime, D_80125B70[gSaveContext.linkAge], &D_04003238, 9, ptr, ptr, 22);

    return (u32)size + 0x8890;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80091738.s")
#endif

u8 D_801261F8[] = { 2, 2, 5 };

#ifdef NON_MATCHING
// regalloc differences
s32 func_80091880(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* pos, Vec3s* rot, u8* arg5) {
    u8 phi_v0 = D_801261F8[arg5[0] - 1];
    s32 phi_v1 = 0;
    s32 phi_a2;
    s32 age;

    if ((phi_v0 == 2) && LINK_IS_CHILD && (arg5[1] == 2)) {
        phi_v0 = 1;
    }

    if (limbIndex == 16) {
        phi_a2 = D_80125C98[phi_v0][0];
        D_80160014 = phi_a2;
        if ((phi_a2 == 4) && (gSaveContext.swordHealth <= 0.0f)) {
            phi_v1 = 4;
        }
    } else if (limbIndex == 19) {
        phi_a2 = D_80125C98[phi_v0][2];
        D_80160018 = phi_a2;
        if (phi_a2 == 0xA) {
            phi_v1 = arg5[1] * 4;
        }
    } else if (limbIndex == 20) {
        phi_a2 = D_80125C98[phi_v0][3];
        if ((phi_a2 == 0x12) || (phi_a2 == 0x13)) {
            phi_v1 = arg5[1] * 4;
        }
    } else if (limbIndex == 2) {
        phi_a2 = D_80125C98[phi_v0][4];
    } else {
        return 0;
    }

    *dList = D_80125F40[phi_a2][phi_v1 + (age = gSaveContext.linkAge)];

    return 0;
}
#else
s32 func_80091880(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* pos, Vec3s* rot, u8* arg5);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80091880.s")
#endif

Vp D_80126200 = { 128, 224, 511, 0, 128, 224, 511, 0 };
Lights1 D_80126210 = gdSPDefLights1(80, 80, 80, 255, 255, 255, 84, 84, 172);
Vec3f D_80126228 = { 89.8f, 0.0f, 89.8f };

void func_80091A24(GlobalContext* globalCtx, void* seg04, void* seg06, struct_80091A24_arg3* arg3, Vec3f* pos,
                   Vec3s* rot, f32 scale, s32 arg7, s32 arg8, s32 arg9, s32 arg10, s32 width, s32 height, Vec3f* eye,
                   Vec3f* at, f32 fovy, void* img1, void* img2) {
    u8 sp12C[2];
    Gfx* opaRef;
    Gfx* xluRef;
    u16 perspNorm;
    Mtx* perspMtx;
    Mtx* lookAtMtx;

    perspMtx = Graph_Alloc(globalCtx->state.gfxCtx, sizeof(Mtx));
    lookAtMtx = Graph_Alloc(globalCtx->state.gfxCtx, sizeof(Mtx));

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 3129);

    { s32 pad[2]; }

    opaRef = oGfxCtx->polyOpa.p;
    oGfxCtx->polyOpa.p++;

    xluRef = oGfxCtx->polyXlu.p;
    oGfxCtx->polyXlu.p++;

    gSPDisplayList(oGfxCtx->work.p++, oGfxCtx->polyOpa.p);
    gSPDisplayList(oGfxCtx->work.p++, oGfxCtx->polyXlu.p);

    gSPSegment(oGfxCtx->polyOpa.p++, 0x00, NULL);

    gDPPipeSync(oGfxCtx->polyOpa.p++);

    gSPLoadGeometryMode(oGfxCtx->polyOpa.p++, 0);
    gSPTexture(oGfxCtx->polyOpa.p++, 0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_OFF);
    gDPSetCombineMode(oGfxCtx->polyOpa.p++, G_CC_SHADE, G_CC_SHADE);
    gDPSetOtherMode(oGfxCtx->polyOpa.p++,
                    G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_PERSP | G_CYC_FILL | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PIXEL | G_RM_NOOP | G_RM_NOOP2);
    gSPLoadGeometryMode(oGfxCtx->polyOpa.p++, G_ZBUFFER | G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH);
    gDPSetScissorFrac(oGfxCtx->polyOpa.p++, G_SC_NON_INTERLACE, 0, 0, width * 4.0f, height * 4.0f);
    gSPClipRatio(oGfxCtx->polyOpa.p++, FRUSTRATIO_1);

    gDPSetColorImage(oGfxCtx->polyOpa.p++, G_IM_FMT_RGBA, G_IM_SIZ_16b, width, img2);
    gDPSetCycleType(oGfxCtx->polyOpa.p++, G_CYC_FILL);
    gDPSetRenderMode(oGfxCtx->polyOpa.p++, G_RM_NOOP, G_RM_NOOP2);
    gDPSetFillColor(oGfxCtx->polyOpa.p++,
                    (GPACK_RGBA5551(255, 255, 240, 0) << 16) | GPACK_RGBA5551(255, 255, 240, 0));
    gDPFillRectangle(oGfxCtx->polyOpa.p++, 0, 0, width - 1, height - 1);

    gDPPipeSync(oGfxCtx->polyOpa.p++);

    gDPSetColorImage(oGfxCtx->polyOpa.p++, G_IM_FMT_RGBA, G_IM_SIZ_16b, width, img1);
    gDPSetCycleType(oGfxCtx->polyOpa.p++, G_CYC_FILL);
    gDPSetRenderMode(oGfxCtx->polyOpa.p++, G_RM_NOOP, G_RM_NOOP2);
    gDPSetFillColor(oGfxCtx->polyOpa.p++,
                    (GPACK_RGBA5551(0, 0, 0, 1) << 16) | GPACK_RGBA5551(0, 0, 0, 1));
    gDPFillRectangle(oGfxCtx->polyOpa.p++, 0, 0, width - 1, height - 1);

    gDPPipeSync(oGfxCtx->polyOpa.p++);

    gDPSetDepthImage(oGfxCtx->polyOpa.p++, img2);

    D_80126200.vp.vscale[0] = D_80126200.vp.vtrans[0] = width * 2;
    D_80126200.vp.vscale[1] = D_80126200.vp.vtrans[1] = height * 2;
    gSPViewport(oGfxCtx->polyOpa.p++, &D_80126200);

    guPerspective(perspMtx, &perspNorm, fovy, (f32)width / (f32)height, 10.0f, 4000.0f, 1.0f);

    gSPPerspNormalize(oGfxCtx->polyOpa.p++, perspNorm);
    gSPMatrix(oGfxCtx->polyOpa.p++, perspMtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

    guLookAt(lookAtMtx, eye->x, eye->y, eye->z, at->x, at->y, at->z, 0.0f, 1.0f, 0.0f);

    gSPMatrix(oGfxCtx->polyOpa.p++, lookAtMtx, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);

    sp12C[0] = arg7;
    sp12C[1] = arg9;

    func_800D1694(pos->x, pos->y, pos->z, rot);
    Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);

    gSPSegment(oGfxCtx->polyOpa.p++, 0x04, seg04);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x06, seg06);

    gSPSetLights1(oGfxCtx->polyOpa.p++, D_80126210);

    func_80093C80(globalCtx);

    oGfxCtx->polyOpa.p = Gfx_SetFog2(oGfxCtx->polyOpa.p++, 0, 0, 0, 0, 997, 1000);

    func_8002EABC(pos, &globalCtx->view.eye, &D_80126228, globalCtx->state.gfxCtx);

    gSPSegment(oGfxCtx->polyOpa.p++, 0x0C, D_80125F98);

    func_8008F470(globalCtx, arg3->skeleton, arg3->limbDrawTable, arg3->dListCount, 0, arg8, arg10, 0, func_80091880,
                  NULL, &sp12C);

    gSPEndDisplayList(oGfxCtx->polyOpa.p++);
    gSPEndDisplayList(oGfxCtx->polyXlu.p++);

    gSPBranchList(opaRef, oGfxCtx->polyOpa.p);
    gSPBranchList(xluRef, oGfxCtx->polyXlu.p);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_player_lib.c", 3288);
}

void func_8009214C(GlobalContext* globalCtx, u8* segment, struct_80091A24_arg3* arg2, Vec3f* pos, Vec3s* rot, f32 scale,
                   s32 arg6, s32 arg7, s32 arg8, s32 arg9) {
    static Vec3f D_80126234 = { 0.0f, 0.0f, -400.0f };
    static Vec3f D_80126240 = { 0.0f, 0.0f, 0.0f };
    Vec3s* destTable;
    Vec3s* srcTable;
    s32 i;

    gSegments[4] = PHYSICAL_TO_VIRTUAL(segment + 0x3800);
    gSegments[6] = PHYSICAL_TO_VIRTUAL(segment + 0x8800);

    if (LINK_IS_CHILD) {
        if (arg8 == 1) {
            srcTable = D_040020D0;
        } else {
            srcTable = D_04002040;
        }
    } else {
        if (arg6 == 3) {
            srcTable = D_04002160;
        } else if (arg8 != 0) {
            srcTable = D_04002280;
        } else {
            srcTable = D_040021F0;
        }
    }

    srcTable = SEGMENTED_TO_VIRTUAL(srcTable);
    destTable = arg2->limbDrawTable;
    for (i = 0; i < arg2->limbCount; i++) {
        *destTable++ = *srcTable++;
    }

    func_80091A24(globalCtx, segment + 0x3800, segment + 0x8800, arg2, pos, rot, scale, arg6, arg7, arg8, arg9, 64, 112,
                  &D_80126234, &D_80126240, 60.0f, globalCtx->state.gfxCtx->curFrameBuffer,
                  globalCtx->state.gfxCtx->curFrameBuffer + 0x1C00);
}
