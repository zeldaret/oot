#include <ultra64.h>
#include <global.h>

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008E750.s")

UNK_TYPE func_8008E8DC(GlobalContext* globalCtx, Player* player)
{
    return (
            player->stateFlags1 & 0x20000080 ||
            player->action ||
            globalCtx->sceneLoadFlag == 0x14 ||
            player->stateFlags1 & 1 ||
            player->unk_692 & 0x80 ||
            gSaveContext.unk_13F0 &&
            func_8008F0D8(player, player->unk_154) >= 0
    );

}

UNK_TYPE func_8008E988(GlobalContext* globalCtx)
{
    Player* player = PLAYER;
    return func_8008E8DC(globalCtx, player) || player->unk_6AD == 4;
}

UNK_TYPE func_8008E9C4(Player* player)
{
    return player->stateFlags1 & 0x10;
}

UNK_TYPE func_8008E9D0(Player* player)
{
    return LINK_IS_CHILD && player->currentShield == 2;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008E9F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EA40.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EB2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EC04.s")

void func_8008EC70(Player* player)
{
    player->unk_154 = player->unk_151;
    func_8008EC04(player, func_8008E9F8(player, player->unk_151));
    player->unk_6AD = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008ECAC.s")

void func_8008ED9C(GlobalContext* globalCtx, Player* player, UNK_TYPE item, UNK_TYPE arg2)
{
    Inventory_UpdateBottleItem(globalCtx, item, player->unk_150);
    if (item != ITEM_BOTTLE)
    {
        player->unk_152 = item;
        player->unk_151 = arg2;
    }
    player->unk_154 = arg2;
}

void func_8008EDF0(Player* player)
{
    player->unk_664 = NULL;
    player->stateFlags2 &= ~0x2000;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EE08.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EEAC.s")

UNK_TYPE func_8008EF44(GlobalContext* globalCtx, UNK_TYPE arg1)
{
    globalCtx->unk_11E5C = (arg1 + 1);
    return 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008EF5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F034.s")

u8 func_8008F080(GlobalContext* globalCtx)
{
    Player* player = PLAYER;
    return player->currentMask;
}

void func_8008F08C(GlobalContext* globalCtx)
{
    Player* player = PLAYER;
    player->currentMask = 0;
}

UNK_TYPE func_8008F098(GlobalContext* globalCtx)
{
    Player* player = PLAYER;
    return player->currentShield == 3;
}

UNK_TYPE func_8008F0AC(GlobalContext* globalCtx)
{
    Player* player = PLAYER;
    return player->unk_15D == 0xa && player->currentShield == 3;
}

s32 func_8008F0D8(Player* player, UNK_TYPE arg1)
{
    s32 temp_v0 = arg1 - 0x15;
    if (temp_v0 >= 0 && temp_v0 < 6)
    {
        return temp_v0;
    }
    return -1;
}

UNK_TYPE func_8008F104(Player* player)
{
    return player->unk_151 == 0x10 || player->unk_151 == 0x11;
}

UNK_TYPE func_8008F128(Player* player)
{
    return func_8008F104(player) && player->heldActor == NULL;
}

s32 func_8008F158(UNK_TYPE arg0)
{
    s32 temp_v0 = arg0 - 2;
    if (temp_v0 > 0 && temp_v0 < 6)
    {
        return temp_v0;
    }
    return 0;
}

void func_8008F180(Player* player)
{
    func_8008F158(player->unk_151);
}

UNK_TYPE func_8008F1A0(Player* player)
{
    if (player->unk_151 >= 5 && player->unk_151 < 8)
    {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F1CC.s")

s32 func_8008F224(Player* player, UNK_TYPE arg1)
{
    s32 temp_v0 = arg1 - 0x1E;
    if (temp_v0 >= 0 && temp_v0 < 0xD)
    {
        return temp_v0;
    }
    return -1;
}

void func_8008F250(Player* player)
{
    func_8008F224(player, player->unk_151);
}

s32 func_8008F270(Player* player, UNK_TYPE arg1)
{
    s32 temp_v0 = arg1 - 0x12;
    if (temp_v0 >= 0 && temp_v0 < 2)
    {
        return temp_v0;
    }
    return -1;
}

s32 func_8008F29C(Player* player)
{
    return func_8008F270(player, player->unk_151);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F2BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F2F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F470.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008F87C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8008FCC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_800902F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80090440.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80090480.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80090604.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_800906D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_800907E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_800909B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80090A28.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80090AFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80090D20.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80091738.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80091880.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80091A24.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_8009214C.s")
