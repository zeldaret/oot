#include <ultra64.h>
#include <global.h>

void func_800BC450(GlobalContext* globalCtx) {
    func_8005A7A8(globalCtx->cameraCtx.activeCameraPtrs[globalCtx->cameraCtx.unk_5C0], globalCtx->unk_1242B - 1,
                  globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800BC490.s")

s32 func_800BC56C(GlobalContext* globalCtx, s16 arg1) {
    return arg1 == globalCtx->unk_1242B;
}

void func_800BC590(GlobalContext* globalCtx) {
    osSyncPrintf("Game_play_shop_pr_vr_switch_set()\n");
    if (YREG(15) == 0x10) {
        globalCtx->unk_1242B = 2;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800BC5E0.s")

void func_800BC88C(GlobalContext* globalCtx) {
    globalCtx->unk_123F0 = -1;
}

Gfx* func_800BC8A0(GlobalContext* globalCtx, Gfx* a1) {
    func_80093708(a1, globalCtx->lightCtx.unk_07, globalCtx->lightCtx.unk_08, globalCtx->lightCtx.unk_09, 0,
                  globalCtx->lightCtx.unk_0A, 1000);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800BC8EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800BCA64.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800BD314.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800BED40.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800BEDD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800BFAE4.s")

s32 func_800BFC84(GlobalContext* globalCtx) {
    return globalCtx->csCtx.state != 0 || func_8008E988(globalCtx) != 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800BFCB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800BFE5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800BFEC4.s")

void func_800BFF0C(GlobalContext* globalCtx, s32 a1) {
    globalCtx->curSpawn = a1;
    globalCtx->linkActorEntry = NULL;
    globalCtx->unk_11DFC = NULL;
    globalCtx->setupEntranceList = NULL;
    globalCtx->setupExitList = NULL;
    globalCtx->naviMsgSegment = NULL;
    globalCtx->setupPathList = NULL;
    globalCtx->nbSetupActors = 0;
    Object_InitBank(globalCtx, &globalCtx->objectCtx);
    func_8007A614(globalCtx, &globalCtx->lightCtx);
    func_80098CBC(globalCtx, &globalCtx->nbTransitionActors);
    func_80096FD4(globalCtx, &globalCtx->roomCtx);
    YREG(15) = 0;
    gSaveContext.world_map_area = 0;
    Scene_ExecuteCommands(globalCtx, globalCtx->unk_B0);
    func_800BFEC4(globalCtx, globalCtx->skyboxId);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/Area_Spawn.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C016C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C0230.s")

s16 func_800C030C(GlobalContext* globalCtx) {
    return globalCtx->cameraCtx.unk_5C0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C0314.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C0384.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C0438.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C04A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C04D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C05E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C0704.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C0744.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C078C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C0808.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C0874.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C08AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C0A44.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C0A88.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C0AF4.s")

void func_800C0B60(GlobalContext* globalCtx) {
    gSaveContext.respawn[RESPAWN_MODE_DOWN].temp_swch_flags = globalCtx->actorCtx.flags.tempSwch;
    gSaveContext.respawn[RESPAWN_MODE_DOWN].temp_collect_flags = globalCtx->actorCtx.flags.tempCollect;
    gSaveContext.respawn_flag = 1;
    globalCtx->sceneLoadFlag = 0x14;
    globalCtx->nextEntranceIndex = gSaveContext.respawn[0].entrance_index;
    globalCtx->fadeOutTransition = 2;
}

void func_800C0BB4(GlobalContext* globalCtx) {
    gSaveContext.respawn_flag = -1;
    globalCtx->sceneLoadFlag = 0x14;

    if (globalCtx->sceneNum == SCENE_GANON_SONOGO || globalCtx->sceneNum == SCENE_GANON_FINAL ||
        globalCtx->sceneNum == SCENE_GANONTIKA_SONOGO || globalCtx->sceneNum == SCENE_GANON_DEMO) {
        globalCtx->nextEntranceIndex = 0x043F;
        Item_Give(globalCtx, ITEM_SWORD_MASTER);
    } else if (gSaveContext.entrance_index == 0x028A || gSaveContext.entrance_index == 0x028E ||
               gSaveContext.entrance_index == 0x0292 || gSaveContext.entrance_index == 0x0476) {
        globalCtx->nextEntranceIndex = 0x01F9;
    } else {
        globalCtx->nextEntranceIndex = gSaveContext.entrance_index;
    }

    globalCtx->fadeOutTransition = 2;
}

void func_800C0C88(GlobalContext* globalCtx) {
    func_800C0AF4(globalCtx, 0, 0xDFF);
    func_800C0BB4(globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C0CB8.s")

s32 func_800C0D28(GlobalContext* globalCtx) {
    return globalCtx->unk_7B8 != 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C0D34.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/func_800C0DB4.s")
