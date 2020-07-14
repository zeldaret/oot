#include <ultra64.h>
#include <global.h>
#include <vt.h>

RomFile sNaviMsgFiles[];

s32 Object_Spawn(ObjectContext* objectCtx, s16 objectId) {
    u32 size;

    objectCtx->status[objectCtx->num].id = objectId;
    size = gObjectTable[objectId].vromEnd - gObjectTable[objectId].vromStart;

    osSyncPrintf("OBJECT[%d] SIZE %fK SEG=%x\n", objectId, (f64)(size / 1024.0f),
                 objectCtx->status[objectCtx->num].segment);

    osSyncPrintf("num=%d adrs=%x end=%x\n", objectCtx->num, (s32)objectCtx->status[objectCtx->num].segment + size,
                 objectCtx->spaceEnd);

    if (!((objectCtx->num < OBJECT_EXCHANGE_BANK_MAX) &&
          (((s32)objectCtx->status[objectCtx->num].segment + size) < (s32)objectCtx->spaceEnd))) {
        __assert("this->num < OBJECT_EXCHANGE_BANK_MAX && (this->status[this->num].Segment + size) < this->endSegment",
                 "../z_scene.c", 142);
    }

    DmaMgr_SendRequest1(objectCtx->status[objectCtx->num].segment, gObjectTable[objectId].vromStart, size,
                        "../z_scene.c", 145);

    if (objectCtx->num < OBJECT_EXCHANGE_BANK_MAX - 1) {
        objectCtx->status[objectCtx->num + 1].segment =
            (void*)ALIGN16((s32)objectCtx->status[objectCtx->num].segment + size);
    }

    objectCtx->num++;
    objectCtx->unk_09 = objectCtx->num;

    return objectCtx->num - 1;
}

void Object_InitBank(GlobalContext* globalCtx, ObjectContext* objectCtx) {
    GlobalContext* globalCtx2 = globalCtx; // Needs to be a new variable to match (possibly a sub struct?)
    u32 spaceSize;
    s32 i;

    if (globalCtx2->sceneNum == SCENE_SPOT00) {
        spaceSize = 1024000;
    } else if (globalCtx2->sceneNum == SCENE_GANON_DEMO) {
        if (gSaveContext.sceneSetupIndex != 4) {
            spaceSize = 1177600;
        } else {
            spaceSize = 1024000;
        }
    } else if (globalCtx2->sceneNum == SCENE_JYASINBOSS) {
        spaceSize = 1075200;
    } else if (globalCtx2->sceneNum == SCENE_KENJYANOMA) {
        spaceSize = 1075200;
    } else if (globalCtx2->sceneNum == SCENE_GANON_BOSS) {
        spaceSize = 1075200;
    } else {
        spaceSize = 1024000;
    }

    objectCtx->num = objectCtx->unk_09 = 0;
    objectCtx->mainKeepIndex = objectCtx->subKeepIndex = 0;

    for (i = 0; i < OBJECT_EXCHANGE_BANK_MAX; i++) {
        objectCtx->status[i].id = 0;
    }

    osSyncPrintf(VT_FGCOL(GREEN));
    // Translates to: "OBJECT EXCHANGE BANK DATA %8.3fKB"
    osSyncPrintf("オブジェクト入れ替えバンク情報 %8.3fKB\n", (f64)(spaceSize / 1024.0f));
    osSyncPrintf(VT_RST);

    objectCtx->spaceStart = objectCtx->status[0].segment =
        GameState_Alloc(&globalCtx->state, spaceSize, "../z_scene.c", 219);
    objectCtx->spaceEnd = (void*)((s32)objectCtx->spaceStart + spaceSize);

    objectCtx->mainKeepIndex = Object_Spawn(objectCtx, OBJECT_GAMEPLAY_KEEP);
    gSegments[4] = PHYSICAL_TO_VIRTUAL(objectCtx->status[objectCtx->mainKeepIndex].segment);
}

void Object_UpdateBank(ObjectContext* objectCtx) {
    s32 i;
    ObjectStatus* status;
    RomFile* objectFile;
    u32 size;

    status = &objectCtx->status[0];
    for (i = 0; i < objectCtx->num; i++) {
        if (status->id < 0) {
            if (status->dmaRequest.vromAddr == 0) {
                osCreateMesgQueue(&status->loadQueue, &status->loadMsg, 1);
                objectFile = &gObjectTable[-status->id];
                size = objectFile->vromEnd - objectFile->vromStart;
                osSyncPrintf("OBJECT EXCHANGE BANK-%2d SIZE %8.3fK SEG=%08x\n", i, (f64)(size / 1024.0f),
                             status->segment);
                DmaMgr_SendRequest2(&status->dmaRequest, status->segment, objectFile->vromStart, size, 0,
                                    &status->loadQueue, NULL, "../z_scene.c", 266);
            } else if (!osRecvMesg(&status->loadQueue, NULL, OS_MESG_NOBLOCK)) {
                status->id = -status->id;
            }
        }
        status++;
    }
}

s32 Object_GetIndex(ObjectContext* objectCtx, s16 objectId) {
    s32 i;

    for (i = 0; i < objectCtx->num; i++) {
        if (ABS(objectCtx->status[i].id) == objectId) {
            return i;
        }
    }

    return -1;
}

s32 Object_IsLoaded(ObjectContext* objectCtx, s32 bankIndex) {
    if (objectCtx->status[bankIndex].id > 0) {
        return 1;
    } else {
        return 0;
    }
}

void func_800981B8(ObjectContext* objectCtx) {
    s32 i;
    s32 id;
    u32 size;

    for (i = 0; i < objectCtx->num; i++) {
        id = objectCtx->status[i].id;
        size = gObjectTable[id].vromEnd - gObjectTable[id].vromStart;
        osSyncPrintf("OBJECT[%d] SIZE %fK SEG=%x\n", objectCtx->status[i].id, (f64)(size / 1024.0f),
                     objectCtx->status[i].segment);
        osSyncPrintf("num=%d adrs=%x end=%x\n", objectCtx->num, (s32)objectCtx->status[i].segment + size,
                     objectCtx->spaceEnd);
        DmaMgr_SendRequest1(objectCtx->status[i].segment, gObjectTable[id].vromStart, size, "../z_scene.c", 342);
    }
}

void* func_800982FC(ObjectContext* objectCtx, s32 bankIndex, s16 objectId) {
    ObjectStatus* status = &objectCtx->status[bankIndex];
    RomFile* objectFile = &gObjectTable[objectId];
    u32 size;
    void* nextPtr;

    status->id = -objectId;
    status->dmaRequest.vromAddr = 0;

    size = objectFile->vromEnd - objectFile->vromStart;
    osSyncPrintf("OBJECT EXCHANGE NO=%2d BANK=%3d SIZE=%8.3fK\n", bankIndex, objectId, (f64)(size / 1024.0f));

    if (1) { // Necessary to match
        nextPtr = (void*)ALIGN16((s32)status->segment + size);
    }

    if (nextPtr >= objectCtx->spaceEnd) {
        __assert("nextptr < this->endSegment", "../z_scene.c", 381);
    }

    // Translates to: "OBJECT EXCHANGE FREE SIZE=%08x"
    osSyncPrintf("オブジェクト入れ替え空きサイズ=%08x\n", (s32)objectCtx->spaceEnd - (s32)nextPtr);

    return nextPtr;
}

s32 Scene_ExecuteCommands(GlobalContext* globalCtx, SceneCmd* sceneCmd) {
    u32 cmdCode;

    while (1) {
        cmdCode = sceneCmd->base.code;
        osSyncPrintf("*** Scene_Word = { code=%d, data1=%02x, data2=%04x } ***\n", cmdCode, sceneCmd->base.data1,
                     sceneCmd->base.data2);

        if (cmdCode == 0x14) {
            break;
        }

        if (cmdCode <= 0x19) {
            gSceneCmdHandlers[cmdCode](globalCtx, sceneCmd);
        } else {
            osSyncPrintf(VT_FGCOL(RED));
            // Translates to: "code VARIABLE IS ABNORMAL"
            osSyncPrintf("code の値が異常です\n");
            osSyncPrintf(VT_RST);
        }

        sceneCmd++;
    }

    return 0;
}

// Scene Command 0x00: Link Spawn List
#ifdef NON_MATCHING
// regalloc differences
void func_80098508(GlobalContext* globalCtx, SceneCmd* cmd) {
    ActorEntry* linkEntry = (ActorEntry*)SEGMENTED_TO_VIRTUAL(cmd->spawnList.segment) +
                            globalCtx->setupEntranceList[globalCtx->curSpawn].spawn;
    s16 linkObjectId;
    s32 linkAge;

    globalCtx->linkActorEntry = linkEntry;
    globalCtx->linkAgeOnLoad = gSaveContext.linkAge;

    linkAge = gSaveContext.linkAge;
    linkObjectId = gLinkObjectIds[linkAge];

    gActorOverlayTable[linkEntry->id].initInfo->objectId = linkObjectId;
    Object_Spawn(&globalCtx->objectCtx, linkObjectId);
}
#else
void func_80098508(GlobalContext* globalCtx, SceneCmd* cmd);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_scene/func_80098508.s")
#endif

// Scene Command 0x01: Actor List
void func_800985DC(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->nbSetupActors = cmd->actorList.num;
    globalCtx->setupActorList = SEGMENTED_TO_VIRTUAL(cmd->actorList.segment);
}

// Scene Command 0x02: Cutscene Camera List
void func_80098630(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->unk_11DFC = SEGMENTED_TO_VIRTUAL(cmd->csCameraList.segment);
}

// Scene Command 0x03: Collision Header
void func_80098674(GlobalContext* globalCtx, SceneCmd* cmd) {
    CollisionHeader* colHeader;

    colHeader = SEGMENTED_TO_VIRTUAL(cmd->colHeader.segment);

    colHeader->vertexArray = SEGMENTED_TO_VIRTUAL(colHeader->vertexArray);
    colHeader->polygonArray = SEGMENTED_TO_VIRTUAL(colHeader->polygonArray);
    colHeader->polygonTypes = SEGMENTED_TO_VIRTUAL(colHeader->polygonTypes);
    colHeader->cameraData = SEGMENTED_TO_VIRTUAL(colHeader->cameraData);
    colHeader->waterBoxes = SEGMENTED_TO_VIRTUAL(colHeader->waterBoxes);

    func_8003C078(&globalCtx->colCtx, globalCtx, colHeader);
}

// Scene Command 0x04: Room List
void func_800987A4(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->nbRooms = cmd->roomList.num;
    globalCtx->roomList = SEGMENTED_TO_VIRTUAL(cmd->roomList.segment);
}

// Scene Command 0x06: Entrance List
void func_800987F8(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->setupEntranceList = SEGMENTED_TO_VIRTUAL(cmd->entranceList.segment);
}

// Scene Command 0x07: Special Files
void func_8009883C(GlobalContext* globalCtx, SceneCmd* cmd) {
    if (cmd->specialFiles.keepObjectId != 0) {
        globalCtx->objectCtx.subKeepIndex = Object_Spawn(&globalCtx->objectCtx, cmd->specialFiles.keepObjectId);
        gSegments[5] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[globalCtx->objectCtx.subKeepIndex].segment);
    }

    if (cmd->specialFiles.cUpElfMsgNum != 0) {
        globalCtx->cUpElfMsgs = Gameplay_LoadFile(globalCtx, &sNaviMsgFiles[cmd->specialFiles.cUpElfMsgNum - 1]);
    }
}

// Scene Command 0x08: Room Behavior
void func_80098904(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->roomCtx.curRoom.unk_03 = cmd->roomBehavior.gpFlag1;
    globalCtx->roomCtx.curRoom.unk_02 = cmd->roomBehavior.gpFlag2 & 0xFF;
    globalCtx->roomCtx.curRoom.showInvisActors = (cmd->roomBehavior.gpFlag2 >> 8) & 1;
    globalCtx->msgCtx.unk_E40C = (cmd->roomBehavior.gpFlag2 >> 0xA) & 1;
}

// Scene Command 0x0A: Mesh Header
void func_80098958(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->roomCtx.curRoom.mesh = SEGMENTED_TO_VIRTUAL(cmd->mesh.segment);
}

// Scene Command 0x0B: Object List
void func_8009899C(GlobalContext* globalCtx, SceneCmd* cmd) {
    s32 i, j, k;
    ObjectStatus* status;
    ObjectStatus* status2;
    ObjectStatus* firstStatus;
    s16* objectEntry;
    void* nextPtr;

    objectEntry = SEGMENTED_TO_VIRTUAL(cmd->objectList.segment);
    k = 0;
    i = globalCtx->objectCtx.unk_09;
    firstStatus = &globalCtx->objectCtx.status[0];
    status = &globalCtx->objectCtx.status[i];

    while (i < globalCtx->objectCtx.num) {
        if (status->id != *objectEntry) {
            status2 = &globalCtx->objectCtx.status[i];
            for (j = i; j < globalCtx->objectCtx.num; j++) {
                status2->id = 0;
                status2++;
            }
            globalCtx->objectCtx.num = i;
            func_80031A28(globalCtx, &globalCtx->actorCtx);

            continue;
        }

        i++;
        k++;
        objectEntry++;
        status++;
    }

    if (cmd->objectList.num > OBJECT_EXCHANGE_BANK_MAX) {
        __assert("scene_info->object_bank.num <= OBJECT_EXCHANGE_BANK_MAX", "../z_scene.c", 705);
    }

    if (1) {}

    while (k < cmd->objectList.num) {
        nextPtr = func_800982FC(&globalCtx->objectCtx, i, *objectEntry);
        if (i < OBJECT_EXCHANGE_BANK_MAX - 1) {
            firstStatus[i + 1].segment = nextPtr;
        }
        i++;
        k++;
        objectEntry++;
    }

    globalCtx->objectCtx.num = i;
}

// Scene Command 0x0C: Light List
void func_80098B74(GlobalContext* globalCtx, SceneCmd* cmd) {
    s32 i;
    LightInfo* lightInfo;

    lightInfo = SEGMENTED_TO_VIRTUAL(cmd->lightList.segment);
    for (i = 0; i < cmd->lightList.num; i++) {
        Lights_Insert(globalCtx, &globalCtx->lightCtx, lightInfo);
        lightInfo++;
    }
}

// Scene Command 0x0D: Path List
void func_80098C24(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->setupPathList = SEGMENTED_TO_VIRTUAL(cmd->pathList.segment);
}

// Scene Command 0x0E: Transition Actor List
void func_80098C68(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->nbTransitionActors = cmd->transiActorList.num;
    globalCtx->transitionActorList = SEGMENTED_TO_VIRTUAL(cmd->transiActorList.segment);
}

void func_80098CBC(GlobalContext* globalCtx, u8* nbTransitionActors) {
    *nbTransitionActors = 0;
}

// Scene Command 0x0F: Light Setting List
void func_80098CC8(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->envCtx.nbLightSettings = cmd->lightSettingList.num;
    globalCtx->envCtx.lightSettingsList = SEGMENTED_TO_VIRTUAL(cmd->lightSettingList.segment);
}

// Scene Command 0x11: Skybox Settings
void func_80098D1C(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->skyboxId = cmd->skyboxSettings.skyboxId;
    globalCtx->envCtx.gloomySky = globalCtx->envCtx.unk_18 = cmd->skyboxSettings.unk_05;
    globalCtx->envCtx.unk_1E = cmd->skyboxSettings.unk_06;
}

// Scene Command 0x12: Skybox Disables
void func_80098D5C(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->envCtx.skyDisabled = cmd->skyboxDisables.unk_04;
    globalCtx->envCtx.sunMoonDisabled = cmd->skyboxDisables.unk_05;
}

// Scene Command 0x10: Time Settings
void func_80098D80(GlobalContext* globalCtx, SceneCmd* cmd) {
    u32 dayTime;

    if ((cmd->timeSettings.hour != 0xFF) && (cmd->timeSettings.min != 0xFF)) {
        gSaveContext.environmentTime = gSaveContext.dayTime =
            ((cmd->timeSettings.hour + (cmd->timeSettings.min / 60.0f)) * 60.0f) / 0.021972656f;
    }

    if (cmd->timeSettings.unk_06 != 0xFF) {
        globalCtx->envCtx.unk_02 = cmd->timeSettings.unk_06;
    } else {
        globalCtx->envCtx.unk_02 = 0;
    }

    if (gSaveContext.unk_1422 == 0) {
        D_8011FB40 = globalCtx->envCtx.unk_02;
    }

    dayTime = gSaveContext.dayTime;
    globalCtx->envCtx.unk_04.x = -(Math_Sins(dayTime - 0x8000) * 120.0f) * 25.0f;
    dayTime = gSaveContext.dayTime;
    globalCtx->envCtx.unk_04.y = (Math_Coss(dayTime - 0x8000) * 120.0f) * 25.0f;
    dayTime = gSaveContext.dayTime;
    globalCtx->envCtx.unk_04.z = (Math_Coss(dayTime - 0x8000) * 20.0f) * 25.0f;

    if (((globalCtx->envCtx.unk_02 == 0) && (gSaveContext.cutsceneIndex < 0xFFF0)) ||
        (gSaveContext.entranceIndex == 0x0604)) {
        gSaveContext.environmentTime = gSaveContext.dayTime;
        if ((gSaveContext.environmentTime >= 0x2AAC) && (gSaveContext.environmentTime < 0x4555)) {
            gSaveContext.environmentTime = 0x3556;
        } else if ((gSaveContext.environmentTime >= 0x4555) && (gSaveContext.environmentTime < 0x5556)) {
            gSaveContext.environmentTime = 0x5556;
        } else if ((gSaveContext.environmentTime >= 0xAAAB) && (gSaveContext.environmentTime < 0xB556)) {
            gSaveContext.environmentTime = 0xB556;
        } else if ((gSaveContext.environmentTime >= 0xC001) && (gSaveContext.environmentTime < 0xCAAC)) {
            gSaveContext.environmentTime = 0xCAAC;
        }
    }
}

// Scene Command 0x05: Wind Settings
void func_80099090(GlobalContext* globalCtx, SceneCmd* cmd) {
    s8 temp1 = cmd->windSettings.unk_04;
    s8 temp2 = cmd->windSettings.unk_05;
    s8 temp3 = cmd->windSettings.unk_06;

    globalCtx->envCtx.unk_A8 = temp1;
    globalCtx->envCtx.unk_AA = temp2;
    globalCtx->envCtx.unk_AC = temp3;
    globalCtx->envCtx.unk_B0 = cmd->windSettings.unk_07;
}

// Scene Command 0x13: Exit List
void func_800990F0(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->setupExitList = SEGMENTED_TO_VIRTUAL(cmd->exitList.segment);
}

// Scene Command 0x09: Undefined
void func_80099134(GlobalContext* globalCtx, SceneCmd* cmd) {
}

// Scene Command 0x15: Sound Settings
void func_80099140(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->soundCtx.seqIndex = cmd->soundSettings.seqIndex;
    globalCtx->soundCtx.nightSeqIndex = cmd->soundSettings.nightSeqIndex;

    if (gSaveContext.seqIndex == 0xFF) {
        Audio_SetBGM(cmd->soundSettings.bgmId | 0xF0000000);
    }
}

// Scene Command 0x16: Echo Setting
void func_8009918C(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->roomCtx.curRoom.echo = cmd->echoSettings.echo;
}

// Scene Command 0x18: Alternate Headers
#ifdef NON_MATCHING
// minor ordering and regalloc differences
void func_800991A0(GlobalContext* globalCtx, SceneCmd* cmd) {
    SceneCmd** altHeaders;
    SceneCmd* altHeader;

    osSyncPrintf("\n[ZU]sceneset age    =[%X]", gSaveContext.linkAge);
    osSyncPrintf("\n[ZU]sceneset time   =[%X]", gSaveContext.cutsceneIndex);
    osSyncPrintf("\n[ZU]sceneset counter=[%X]", gSaveContext.sceneSetupIndex);

    if (gSaveContext.sceneSetupIndex != 0) {
        altHeaders = SEGMENTED_TO_VIRTUAL(cmd->altHeaders.segment);
        altHeader = altHeaders[gSaveContext.sceneSetupIndex - 1];

        if (altHeader != NULL) {
            Scene_ExecuteCommands(globalCtx, SEGMENTED_TO_VIRTUAL(altHeader));
            (cmd + 1)->base.code = 0x14;
        } else {
            // Translates to: "COUGHH! THERE IS NO SPECIFIED DATAAAAA!"
            osSyncPrintf("\nげぼはっ！ 指定されたデータがないでええっす！");

            if (gSaveContext.sceneSetupIndex == 3) {
                altHeaders = SEGMENTED_TO_VIRTUAL(cmd->altHeaders.segment);
                altHeader = altHeaders[gSaveContext.sceneSetupIndex - 2];

                // Translates to: "USING ADULT DAY DATA THERE!"
                osSyncPrintf("\nそこで、大人の昼データを使用するでええっす！！");

                if (altHeader != NULL) {
                    Scene_ExecuteCommands(globalCtx, SEGMENTED_TO_VIRTUAL(altHeader));
                    (cmd + 1)->base.code = 0x14;
                }
            }
        }
    }
}
#else
void func_800991A0(GlobalContext* globalCtx, SceneCmd* cmd);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_scene/func_800991A0.s")
#endif

// Scene Command 0x17: Cutscene Data
void func_8009934C(GlobalContext* globalCtx, SceneCmd* cmd) {
    osSyncPrintf("\ngame_play->demo_play.data=[%x]", globalCtx->csCtx.segment);
    globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(cmd->cutsceneData.segment);
}

// Scene Command 0x19: Misc. Settings (Camera & World Map Area)
void func_800993C0(GlobalContext* globalCtx, SceneCmd* cmd) {
    YREG(15) = cmd->miscSettings.cameraMovement;
    gSaveContext.worldMapArea = cmd->miscSettings.area;

    if ((globalCtx->sceneNum == SCENE_SHOP1) || (globalCtx->sceneNum == SCENE_SYATEKIJYOU)) {
        if (LINK_AGE_IN_YEARS == YEARS_ADULT) {
            gSaveContext.worldMapArea = 1;
        }
    }

    if (((globalCtx->sceneNum >= SCENE_SPOT00) && (globalCtx->sceneNum <= SCENE_GANON_TOU)) ||
        ((globalCtx->sceneNum >= SCENE_ENTRA) && (globalCtx->sceneNum <= SCENE_SHRINE_R))) {
        if (gSaveContext.cutsceneIndex < 0xFFF0) {
            gSaveContext.worldMapAreaData |= gBitFlags[gSaveContext.worldMapArea];
            osSyncPrintf("０００  ａｒｅａ＿ａｒｒｉｖａｌ＝%x (%d)\n", gSaveContext.worldMapAreaData,
                         gSaveContext.worldMapArea);
        }
    }
}

void (*gSceneCmdHandlers[])(GlobalContext*, SceneCmd*) = {
    func_80098508, func_800985DC, func_80098630, func_80098674, func_800987A4, func_80099090, func_800987F8,
    func_8009883C, func_80098904, func_80099134, func_80098958, func_8009899C, func_80098B74, func_80098C24,
    func_80098C68, func_80098CC8, func_80098D80, func_80098D1C, func_80098D5C, func_800990F0, NULL,
    func_80099140, func_8009918C, func_8009934C, func_800991A0, func_800993C0,
};

#define ROM_FILE(name) \
    { (u32) _##name##SegmentRomStart, (u32)_##name##SegmentRomEnd }
#define ROM_FILE_EMPTY(name) \
    { (u32) _##name##SegmentRomStart, (u32)_##name##SegmentRomStart }
#define ROM_FILE_UNSET \
    { 0 }

RomFile sNaviMsgFiles[] = {
    ROM_FILE(elf_message_field),
    ROM_FILE(elf_message_ydan),
    ROM_FILE_UNSET,
};

s16 gLinkObjectIds[] = { OBJECT_LINK_BOY, OBJECT_LINK_CHILD };

u32 gObjectTableSize = 402;

RomFile gObjectTable[] = {
    ROM_FILE_UNSET,
    ROM_FILE(gameplay_keep),
    ROM_FILE(gameplay_field_keep),
    ROM_FILE(gameplay_dangeon_keep),
    ROM_FILE_UNSET,
    ROM_FILE_UNSET,
    ROM_FILE(object_human),
    ROM_FILE(object_okuta),
    ROM_FILE(object_crow),
    ROM_FILE(object_poh),
    ROM_FILE(object_dy_obj),
    ROM_FILE(object_wallmaster),
    ROM_FILE(object_dodongo),
    ROM_FILE(object_firefly),
    ROM_FILE(object_box),
    ROM_FILE(object_fire),
    ROM_FILE_UNSET,
    ROM_FILE_UNSET,
    ROM_FILE(object_bubble),
    ROM_FILE(object_niw),
    ROM_FILE(object_link_boy),
    ROM_FILE(object_link_child),
    ROM_FILE(object_tite),
    ROM_FILE(object_reeba),
    ROM_FILE(object_peehat),
    ROM_FILE(object_kingdodongo),
    ROM_FILE(object_horse),
    ROM_FILE(object_zf),
    ROM_FILE(object_goma),
    ROM_FILE(object_zl1),
    ROM_FILE(object_gol),
    ROM_FILE(object_dodojr),
    ROM_FILE(object_torch2),
    ROM_FILE(object_bl),
    ROM_FILE(object_tp),
    ROM_FILE(object_oA1),
    ROM_FILE(object_st),
    ROM_FILE(object_bw),
    ROM_FILE(object_ei),
    ROM_FILE(object_horse_normal),
    ROM_FILE(object_oB1),
    ROM_FILE(object_o_anime),
    ROM_FILE(object_spot04_objects),
    ROM_FILE(object_ddan_objects),
    ROM_FILE(object_hidan_objects),
    ROM_FILE(object_horse_ganon),
    ROM_FILE(object_oA2),
    ROM_FILE(object_spot00_objects),
    ROM_FILE(object_mb),
    ROM_FILE(object_bombf),
    ROM_FILE(object_sk2),
    ROM_FILE(object_oE1),
    ROM_FILE(object_oE_anime),
    ROM_FILE(object_oE2),
    ROM_FILE(object_ydan_objects),
    ROM_FILE(object_gnd),
    ROM_FILE(object_am),
    ROM_FILE(object_dekubaba),
    ROM_FILE_UNSET,
    ROM_FILE(object_oA3),
    ROM_FILE(object_oA4),
    ROM_FILE(object_oA5),
    ROM_FILE(object_oA6),
    ROM_FILE(object_oA7),
    ROM_FILE(object_jj),
    ROM_FILE(object_oA8),
    ROM_FILE(object_oA9),
    ROM_FILE(object_oB2),
    ROM_FILE(object_oB3),
    ROM_FILE(object_oB4),
    ROM_FILE(object_horse_zelda),
    ROM_FILE(object_opening_demo1),
    ROM_FILE(object_warp1),
    ROM_FILE(object_b_heart),
    ROM_FILE(object_dekunuts),
    ROM_FILE(object_oE3),
    ROM_FILE(object_oE4),
    ROM_FILE(object_menkuri_objects),
    ROM_FILE(object_oE5),
    ROM_FILE(object_oE6),
    ROM_FILE(object_oE7),
    ROM_FILE(object_oE8),
    ROM_FILE(object_oE9),
    ROM_FILE(object_oE10),
    ROM_FILE(object_oE11),
    ROM_FILE(object_oE12),
    ROM_FILE(object_vali),
    ROM_FILE(object_oA10),
    ROM_FILE(object_oA11),
    ROM_FILE(object_mizu_objects),
    ROM_FILE(object_fhg),
    ROM_FILE(object_ossan),
    ROM_FILE(object_mori_hineri1),
    ROM_FILE(object_Bb),
    ROM_FILE(object_toki_objects),
    ROM_FILE(object_yukabyun),
    ROM_FILE(object_zl2),
    ROM_FILE(object_mjin),
    ROM_FILE(object_mjin_flash),
    ROM_FILE(object_mjin_dark),
    ROM_FILE(object_mjin_flame),
    ROM_FILE(object_mjin_ice),
    ROM_FILE(object_mjin_soul),
    ROM_FILE(object_mjin_wind),
    ROM_FILE(object_mjin_oka),
    ROM_FILE(object_haka_objects),
    ROM_FILE(object_spot06_objects),
    ROM_FILE(object_ice_objects),
    ROM_FILE(object_relay_objects),
    ROM_FILE(object_po_field),
    ROM_FILE(object_po_composer),
    ROM_FILE(object_mori_hineri1a),
    ROM_FILE(object_mori_hineri2),
    ROM_FILE(object_mori_hineri2a),
    ROM_FILE(object_mori_objects),
    ROM_FILE(object_mori_tex),
    ROM_FILE(object_spot08_obj),
    ROM_FILE(object_warp2),
    ROM_FILE(object_hata),
    ROM_FILE(object_bird),
    ROM_FILE_UNSET,
    ROM_FILE_UNSET,
    ROM_FILE_UNSET,
    ROM_FILE_UNSET,
    ROM_FILE(object_wood02),
    ROM_FILE_UNSET,
    ROM_FILE_UNSET,
    ROM_FILE_UNSET,
    ROM_FILE_UNSET,
    ROM_FILE(object_lightbox),
    ROM_FILE(object_pu_box),
    ROM_FILE_UNSET,
    ROM_FILE_UNSET,
    ROM_FILE(object_trap),
    ROM_FILE(object_vase),
    ROM_FILE(object_im),
    ROM_FILE(object_ta),
    ROM_FILE(object_tk),
    ROM_FILE(object_xc),
    ROM_FILE(object_vm),
    ROM_FILE(object_bv),
    ROM_FILE(object_hakach_objects),
    ROM_FILE(object_efc_crystal_light),
    ROM_FILE(object_efc_fire_ball),
    ROM_FILE(object_efc_flash),
    ROM_FILE(object_efc_lgt_shower),
    ROM_FILE(object_efc_star_field),
    ROM_FILE(object_god_lgt),
    ROM_FILE(object_light_ring),
    ROM_FILE(object_triforce_spot),
    ROM_FILE(object_bdan_objects),
    ROM_FILE(object_sd),
    ROM_FILE(object_rd),
    ROM_FILE(object_po_sisters),
    ROM_FILE(object_heavy_object),
    ROM_FILE(object_gndd),
    ROM_FILE(object_fd),
    ROM_FILE(object_du),
    ROM_FILE(object_fw),
    ROM_FILE(object_medal),
    ROM_FILE(object_horse_link_child),
    ROM_FILE(object_spot02_objects),
    ROM_FILE(object_haka),
    ROM_FILE(object_ru1),
    ROM_FILE(object_syokudai),
    ROM_FILE(object_fd2),
    ROM_FILE(object_dh),
    ROM_FILE(object_rl),
    ROM_FILE(object_efc_tw),
    ROM_FILE(object_demo_tre_lgt),
    ROM_FILE(object_gi_key),
    ROM_FILE(object_mir_ray),
    ROM_FILE(object_brob),
    ROM_FILE(object_gi_jewel),
    ROM_FILE(object_spot09_obj),
    ROM_FILE(object_spot18_obj),
    ROM_FILE(object_bdoor),
    ROM_FILE(object_spot17_obj),
    ROM_FILE(object_shop_dungen),
    ROM_FILE(object_nb),
    ROM_FILE(object_mo),
    ROM_FILE(object_sb),
    ROM_FILE(object_gi_melody),
    ROM_FILE(object_gi_heart),
    ROM_FILE(object_gi_compass),
    ROM_FILE(object_gi_bosskey),
    ROM_FILE(object_gi_medal),
    ROM_FILE(object_gi_nuts),
    ROM_FILE(object_sa),
    ROM_FILE(object_gi_hearts),
    ROM_FILE(object_gi_arrowcase),
    ROM_FILE(object_gi_bombpouch),
    ROM_FILE(object_in),
    ROM_FILE(object_tr),
    ROM_FILE(object_spot16_obj),
    ROM_FILE(object_oE1s),
    ROM_FILE(object_oE4s),
    ROM_FILE(object_os_anime),
    ROM_FILE(object_gi_bottle),
    ROM_FILE(object_gi_stick),
    ROM_FILE(object_gi_map),
    ROM_FILE(object_oF1d_map),
    ROM_FILE(object_ru2),
    ROM_FILE(object_gi_shield_1),
    ROM_FILE(object_dekujr),
    ROM_FILE(object_gi_magicpot),
    ROM_FILE(object_gi_bomb_1),
    ROM_FILE(object_oF1s),
    ROM_FILE(object_ma2),
    ROM_FILE(object_gi_purse),
    ROM_FILE(object_hni),
    ROM_FILE(object_tw),
    ROM_FILE(object_rr),
    ROM_FILE(object_bxa),
    ROM_FILE(object_anubice),
    ROM_FILE(object_gi_gerudo),
    ROM_FILE(object_gi_arrow),
    ROM_FILE(object_gi_bomb_2),
    ROM_FILE(object_gi_egg),
    ROM_FILE(object_gi_scale),
    ROM_FILE(object_gi_shield_2),
    ROM_FILE(object_gi_hookshot),
    ROM_FILE(object_gi_ocarina),
    ROM_FILE(object_gi_milk),
    ROM_FILE(object_ma1),
    ROM_FILE(object_ganon),
    ROM_FILE(object_sst),
    ROM_FILE_EMPTY(object_ny), // unused duplicate with size 0
    ROM_FILE_UNSET,
    ROM_FILE(object_ny),
    ROM_FILE(object_fr),
    ROM_FILE(object_gi_pachinko),
    ROM_FILE(object_gi_boomerang),
    ROM_FILE(object_gi_bow),
    ROM_FILE(object_gi_glasses),
    ROM_FILE(object_gi_liquid),
    ROM_FILE(object_ani),
    ROM_FILE(object_demo_6k),
    ROM_FILE(object_gi_shield_3),
    ROM_FILE(object_gi_letter),
    ROM_FILE(object_spot15_obj),
    ROM_FILE(object_jya_obj),
    ROM_FILE(object_gi_clothes),
    ROM_FILE(object_gi_bean),
    ROM_FILE(object_gi_fish),
    ROM_FILE(object_gi_saw),
    ROM_FILE(object_gi_hammer),
    ROM_FILE(object_gi_grass),
    ROM_FILE(object_gi_longsword),
    ROM_FILE(object_spot01_objects),
    ROM_FILE_EMPTY(object_md), // unused duplicate with size 0
    ROM_FILE(object_md),
    ROM_FILE(object_km1),
    ROM_FILE(object_kw1),
    ROM_FILE(object_zo),
    ROM_FILE(object_kz),
    ROM_FILE(object_umajump),
    ROM_FILE(object_masterkokiri),
    ROM_FILE(object_masterkokirihead),
    ROM_FILE(object_mastergolon),
    ROM_FILE(object_masterzoora),
    ROM_FILE(object_aob),
    ROM_FILE(object_ik),
    ROM_FILE(object_ahg),
    ROM_FILE(object_cne),
    ROM_FILE(object_gi_niwatori),
    ROM_FILE(object_skj),
    ROM_FILE(object_gi_bottle_letter),
    ROM_FILE(object_bji),
    ROM_FILE(object_bba),
    ROM_FILE(object_gi_ocarina_0),
    ROM_FILE(object_ds),
    ROM_FILE(object_ane),
    ROM_FILE(object_boj),
    ROM_FILE(object_spot03_object),
    ROM_FILE(object_spot07_object),
    ROM_FILE(object_fz),
    ROM_FILE(object_bob),
    ROM_FILE(object_ge1),
    ROM_FILE(object_yabusame_point),
    ROM_FILE(object_gi_boots_2),
    ROM_FILE(object_gi_seed),
    ROM_FILE(object_gnd_magic),
    ROM_FILE(object_d_elevator),
    ROM_FILE(object_d_hsblock),
    ROM_FILE(object_d_lift),
    ROM_FILE(object_mamenoki),
    ROM_FILE(object_goroiwa),
    ROM_FILE_UNSET,
    ROM_FILE(object_toryo),
    ROM_FILE(object_daiku),
    ROM_FILE_UNSET,
    ROM_FILE(object_nwc),
    ROM_FILE(object_blkobj),
    ROM_FILE(object_gm),
    ROM_FILE(object_ms),
    ROM_FILE(object_hs),
    ROM_FILE(object_ingate),
    ROM_FILE(object_lightswitch),
    ROM_FILE(object_kusa),
    ROM_FILE(object_tsubo),
    ROM_FILE(object_gi_gloves),
    ROM_FILE(object_gi_coin),
    ROM_FILE(object_kanban),
    ROM_FILE(object_gjyo_objects),
    ROM_FILE(object_owl),
    ROM_FILE(object_mk),
    ROM_FILE(object_fu),
    ROM_FILE(object_gi_ki_tan_mask),
    ROM_FILE(object_gi_redead_mask),
    ROM_FILE(object_gi_skj_mask),
    ROM_FILE(object_gi_rabit_mask),
    ROM_FILE(object_gi_truth_mask),
    ROM_FILE(object_ganon_objects),
    ROM_FILE(object_siofuki),
    ROM_FILE(object_stream),
    ROM_FILE(object_mm),
    ROM_FILE(object_fa),
    ROM_FILE(object_os),
    ROM_FILE(object_gi_eye_lotion),
    ROM_FILE(object_gi_powder),
    ROM_FILE(object_gi_mushroom),
    ROM_FILE(object_gi_ticketstone),
    ROM_FILE(object_gi_brokensword),
    ROM_FILE(object_js),
    ROM_FILE(object_cs),
    ROM_FILE(object_gi_prescription),
    ROM_FILE(object_gi_bracelet),
    ROM_FILE(object_gi_soldout),
    ROM_FILE(object_gi_frog),
    ROM_FILE(object_mag),
    ROM_FILE(object_door_gerudo),
    ROM_FILE(object_gt),
    ROM_FILE(object_efc_erupc),
    ROM_FILE(object_zl2_anime1),
    ROM_FILE(object_zl2_anime2),
    ROM_FILE(object_gi_golonmask),
    ROM_FILE(object_gi_zoramask),
    ROM_FILE(object_gi_gerudomask),
    ROM_FILE(object_ganon2),
    ROM_FILE(object_ka),
    ROM_FILE(object_ts),
    ROM_FILE(object_zg),
    ROM_FILE(object_gi_hoverboots),
    ROM_FILE(object_gi_m_arrow),
    ROM_FILE(object_ds2),
    ROM_FILE(object_ec),
    ROM_FILE(object_fish),
    ROM_FILE(object_gi_sutaru),
    ROM_FILE(object_gi_goddess),
    ROM_FILE(object_ssh),
    ROM_FILE(object_bigokuta),
    ROM_FILE(object_bg),
    ROM_FILE(object_spot05_objects),
    ROM_FILE(object_spot12_obj),
    ROM_FILE(object_bombiwa),
    ROM_FILE(object_hintnuts),
    ROM_FILE(object_rs),
    ROM_FILE(object_spot00_break),
    ROM_FILE(object_gla),
    ROM_FILE(object_shopnuts),
    ROM_FILE(object_geldb),
    ROM_FILE(object_gr),
    ROM_FILE(object_dog),
    ROM_FILE(object_jya_iron),
    ROM_FILE(object_jya_door),
    ROM_FILE_UNSET,
    ROM_FILE(object_spot11_obj),
    ROM_FILE(object_kibako2),
    ROM_FILE(object_dns),
    ROM_FILE(object_dnk),
    ROM_FILE(object_gi_fire),
    ROM_FILE(object_gi_insect),
    ROM_FILE(object_gi_butterfly),
    ROM_FILE(object_gi_ghost),
    ROM_FILE(object_gi_soul),
    ROM_FILE(object_bowl),
    ROM_FILE(object_demo_kekkai),
    ROM_FILE(object_efc_doughnut),
    ROM_FILE(object_gi_dekupouch),
    ROM_FILE(object_ganon_anime1),
    ROM_FILE(object_ganon_anime2),
    ROM_FILE(object_ganon_anime3),
    ROM_FILE(object_gi_rupy),
    ROM_FILE(object_spot01_matoya),
    ROM_FILE(object_spot01_matoyab),
    ROM_FILE(object_mu),
    ROM_FILE(object_wf),
    ROM_FILE(object_skb),
    ROM_FILE(object_gj),
    ROM_FILE(object_geff),
    ROM_FILE(object_haka_door),
    ROM_FILE(object_gs),
    ROM_FILE(object_ps),
    ROM_FILE(object_bwall),
    ROM_FILE(object_cow),
    ROM_FILE(object_cob),
    ROM_FILE(object_gi_sword_1),
    ROM_FILE(object_door_killer),
    ROM_FILE(object_ouke_haka),
    ROM_FILE(object_timeblock),
    ROM_FILE(object_zl4),
};
