#include "global.h"
#include "vt.h"

RomFile sNaviMsgFiles[];

// called by
// - initcontext: for gkeep
// - spawn list scene command: for link's object
// - special files scene command: for subkeep object if any
s32 Object_SpawnPersistent(ObjectContext* objectCtx, s16 objectId) {
    u32 size;

    objectCtx->loadEntries[objectCtx->loadEntriesCount].id = objectId;
    size = gObjectTable[objectId].vromEnd - gObjectTable[objectId].vromStart;

    osSyncPrintf("OBJECT[%d] SIZE %fK SEG=%x\n", objectId, size / 1024.0f,
                 objectCtx->loadEntries[objectCtx->loadEntriesCount].segment);

    osSyncPrintf("num=%d adrs=%x end=%x\n", objectCtx->loadEntriesCount,
                 (s32)objectCtx->loadEntries[objectCtx->loadEntriesCount].segment + size, objectCtx->spaceEnd);

    ASSERT(((objectCtx->loadEntriesCount < ARRAY_COUNT(objectCtx->loadEntries)) &&
            (((s32)objectCtx->loadEntries[objectCtx->loadEntriesCount].segment + size) < (u32)objectCtx->spaceEnd)),
           "this->num < OBJECT_EXCHANGE_BANK_MAX && (this->status[this->num].Segment + size) < this->endSegment",
           "../z_scene.c", 142);

    DmaMgr_SendRequest1(objectCtx->loadEntries[objectCtx->loadEntriesCount].segment, gObjectTable[objectId].vromStart,
                        size, "../z_scene.c", 145);

    if (objectCtx->loadEntriesCount < (ARRAY_COUNT(objectCtx->loadEntries) - 1)) {
        objectCtx->loadEntries[objectCtx->loadEntriesCount + 1].segment =
            (void*)ALIGN16((s32)objectCtx->loadEntries[objectCtx->loadEntriesCount].segment + size);
    }

    objectCtx->loadEntriesCount++;
    objectCtx->persistentLoadEntriesCount = objectCtx->loadEntriesCount;

    return objectCtx->loadEntriesCount - 1;
}

void Object_InitContext(GlobalContext* globalCtx, ObjectContext* objectCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    u32 spaceSize;
    s32 i;

    if (globalCtx2->sceneNum == SCENE_SPOT00) {
        spaceSize = OBJECT_SPACE_SIZE_BASE;
    } else if (globalCtx2->sceneNum == SCENE_GANON_DEMO) {
        if (gSaveContext.sceneSetupIndex != 4) {
            spaceSize = OBJECT_SPACE_SIZE_BASE + (150 * 1024);
        } else {
            spaceSize = OBJECT_SPACE_SIZE_BASE;
        }
    } else if (globalCtx2->sceneNum == SCENE_JYASINBOSS) {
        spaceSize = OBJECT_SPACE_SIZE_BASE + (50 * 1024);
    } else if (globalCtx2->sceneNum == SCENE_KENJYANOMA) {
        spaceSize = OBJECT_SPACE_SIZE_BASE + (50 * 1024);
    } else if (globalCtx2->sceneNum == SCENE_GANON_BOSS) {
        spaceSize = OBJECT_SPACE_SIZE_BASE + (50 * 1024);
    } else {
        spaceSize = OBJECT_SPACE_SIZE_BASE;
    }

    objectCtx->loadEntriesCount = objectCtx->persistentLoadEntriesCount = 0;
    objectCtx->mainKeepIndex = objectCtx->subKeepIndex = 0;

    for (i = 0; i < ARRAY_COUNT(objectCtx->loadEntries); i++) {
        objectCtx->loadEntries[i].id = OBJECT_INVALID;
    }

    osSyncPrintf(VT_FGCOL(GREEN));
    // "Object exchange bank data %8.3fKB"
    osSyncPrintf("オブジェクト入れ替えバンク情報 %8.3fKB\n", spaceSize / 1024.0f);
    osSyncPrintf(VT_RST);

    objectCtx->spaceStart = objectCtx->loadEntries[0].segment =
        GameState_Alloc(&globalCtx->state, spaceSize, "../z_scene.c", 219);
    objectCtx->spaceEnd = (void*)((s32)objectCtx->spaceStart + spaceSize);

    objectCtx->mainKeepIndex = Object_SpawnPersistent(objectCtx, OBJECT_GAMEPLAY_KEEP);
    gSegments[4] = VIRTUAL_TO_PHYSICAL(objectCtx->loadEntries[objectCtx->mainKeepIndex].segment);
}

void Object_UpdateLoadEntries(ObjectContext* objectCtx) {
    s32 i;
    ObjectLoadEntry* loadEntry = &objectCtx->loadEntries[0];
    RomFile* objectFile;
    u32 size;

    for (i = 0; i < objectCtx->loadEntriesCount; i++) {
        if (loadEntry->id < 0) {
            if (loadEntry->dmaRequest.vromAddr == 0) {
                osCreateMesgQueue(&loadEntry->loadQueue, &loadEntry->loadMsg, 1);
                objectFile = &gObjectTable[-loadEntry->id];
                size = objectFile->vromEnd - objectFile->vromStart;

                osSyncPrintf("OBJECT EXCHANGE BANK-%2d SIZE %8.3fK SEG=%08x\n", i, size / 1024.0f, loadEntry->segment);

                DmaMgr_SendRequest2(&loadEntry->dmaRequest, loadEntry->segment, objectFile->vromStart, size, 0,
                                    &loadEntry->loadQueue, NULL, "../z_scene.c", 266);
            } else if (osRecvMesg(&loadEntry->loadQueue, NULL, OS_MESG_NOBLOCK) == 0) {
                loadEntry->id = -loadEntry->id;
            }
        }
        loadEntry++;
    }
}

s32 Object_GetLoadEntryIndex(ObjectContext* objectCtx, s16 objectId) {
    s32 i;

    for (i = 0; i < objectCtx->loadEntriesCount; i++) {
        if (ABS(objectCtx->loadEntries[i].id) == objectId) {
            return i;
        }
    }

    return -1;
}

s32 Object_IsLoadEntryLoaded(ObjectContext* objectCtx, s32 loadEntryIndex) {
    if (objectCtx->loadEntries[loadEntryIndex].id > 0) {
        return true;
    } else {
        return false;
    }
}

void func_800981B8(ObjectContext* objectCtx) {
    s32 i;
    s32 id;
    u32 size;

    for (i = 0; i < objectCtx->loadEntriesCount; i++) {
        id = objectCtx->loadEntries[i].id;
        size = gObjectTable[id].vromEnd - gObjectTable[id].vromStart;
        osSyncPrintf("OBJECT[%d] SIZE %fK SEG=%x\n", objectCtx->loadEntries[i].id, size / 1024.0f,
                     objectCtx->loadEntries[i].segment);
        osSyncPrintf("num=%d adrs=%x end=%x\n", objectCtx->loadEntriesCount,
                     (s32)objectCtx->loadEntries[i].segment + size, objectCtx->spaceEnd);
        DmaMgr_SendRequest1(objectCtx->loadEntries[i].segment, gObjectTable[id].vromStart, size, "../z_scene.c", 342);
    }
}

void* func_800982FC(ObjectContext* objectCtx, s32 loadEntryIndex, s16 objectId) {
    ObjectLoadEntry* loadEntry = &objectCtx->loadEntries[loadEntryIndex];
    RomFile* objectFile = &gObjectTable[objectId];
    u32 size;
    void* nextPtr;

    loadEntry->id = -objectId;
    loadEntry->dmaRequest.vromAddr = 0;

    size = objectFile->vromEnd - objectFile->vromStart;
    osSyncPrintf("OBJECT EXCHANGE NO=%2d BANK=%3d SIZE=%8.3fK\n", loadEntryIndex, objectId, size / 1024.0f);

    nextPtr = (void*)ALIGN16((s32)loadEntry->segment + size);

    ASSERT(nextPtr < objectCtx->spaceEnd, "nextptr < this->endSegment", "../z_scene.c", 381);

    // "Object exchange free size=%08x"
    osSyncPrintf("オブジェクト入れ替え空きサイズ=%08x\n", (s32)objectCtx->spaceEnd - (s32)nextPtr);

    return nextPtr;
}

s32 Scene_ExecuteCommands(GlobalContext* globalCtx, SceneCmd* sceneCmd) {
    u32 cmdCode;

    while (true) {
        cmdCode = sceneCmd->base.code;
        osSyncPrintf("*** Scene_Word = { code=%d, data1=%02x, data2=%04x } ***\n", cmdCode, sceneCmd->base.data1,
                     sceneCmd->base.data2);

        if (cmdCode == SCENE_CMD_ID_END) {
            break;
        }

        if (cmdCode < ARRAY_COUNT(gSceneCmdHandlers)) {
            gSceneCmdHandlers[cmdCode](globalCtx, sceneCmd);
        } else {
            osSyncPrintf(VT_FGCOL(RED));
            osSyncPrintf("code の値が異常です\n"); // "code variable is abnormal"
            osSyncPrintf(VT_RST);
        }
        sceneCmd++;
    }
    return 0;
}

void Scene_CommandSpawnList(GlobalContext* globalCtx, SceneCmd* cmd) {
    ActorEntry* linkEntry = globalCtx->linkActorEntry = (ActorEntry*)SEGMENTED_TO_VIRTUAL(cmd->spawnList.segment) +
                                                        globalCtx->setupEntranceList[globalCtx->curSpawn].spawn;
    s16 linkObjectId;

    globalCtx->linkAgeOnLoad = ((void)0, gSaveContext.linkAge);

    linkObjectId = gLinkObjectIds[((void)0, gSaveContext.linkAge)];

    gActorOverlayTable[linkEntry->id].initInfo->objectId = linkObjectId;
    Object_SpawnPersistent(&globalCtx->objectCtx, linkObjectId);
}

void Scene_CommandActorList(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->numSetupActors = cmd->actorList.num;
    globalCtx->setupActorList = SEGMENTED_TO_VIRTUAL(cmd->actorList.segment);
}

void Scene_CommandUnused2(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->unk_11DFC = SEGMENTED_TO_VIRTUAL(cmd->unused02.segment);
}

void Scene_CommandCollisionHeader(GlobalContext* globalCtx, SceneCmd* cmd) {
    CollisionHeader* colHeader = SEGMENTED_TO_VIRTUAL(cmd->colHeader.segment);

    colHeader->vtxList = SEGMENTED_TO_VIRTUAL(colHeader->vtxList);
    colHeader->polyList = SEGMENTED_TO_VIRTUAL(colHeader->polyList);
    colHeader->surfaceTypeList = SEGMENTED_TO_VIRTUAL(colHeader->surfaceTypeList);
    colHeader->cameraDataList = SEGMENTED_TO_VIRTUAL(colHeader->cameraDataList);
    colHeader->waterBoxes = SEGMENTED_TO_VIRTUAL(colHeader->waterBoxes);

    BgCheck_Allocate(&globalCtx->colCtx, globalCtx, colHeader);
}

void Scene_CommandRoomList(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->numRooms = cmd->roomList.num;
    globalCtx->roomList = SEGMENTED_TO_VIRTUAL(cmd->roomList.segment);
}

void Scene_CommandEntranceList(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->setupEntranceList = SEGMENTED_TO_VIRTUAL(cmd->entranceList.segment);
}

void Scene_CommandSpecialFiles(GlobalContext* globalCtx, SceneCmd* cmd) {
    if (cmd->specialFiles.keepObjectId != OBJECT_INVALID) {
        globalCtx->objectCtx.subKeepIndex =
            Object_SpawnPersistent(&globalCtx->objectCtx, cmd->specialFiles.keepObjectId);
        gSegments[5] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.loadEntries[globalCtx->objectCtx.subKeepIndex].segment);
    }

    if (cmd->specialFiles.cUpElfMsgNum != 0) {
        globalCtx->cUpElfMsgs = Play_LoadFile(globalCtx, &sNaviMsgFiles[cmd->specialFiles.cUpElfMsgNum - 1]);
    }
}

void Scene_CommandRoomBehavior(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->roomCtx.curRoom.behaviorType1 = cmd->roomBehavior.gpFlag1;
    globalCtx->roomCtx.curRoom.behaviorType2 = cmd->roomBehavior.gpFlag2 & 0xFF;
    globalCtx->roomCtx.curRoom.lensMode = (cmd->roomBehavior.gpFlag2 >> 8) & 1;
    globalCtx->msgCtx.disableWarpSongs = (cmd->roomBehavior.gpFlag2 >> 0xA) & 1;
}

void Scene_CommandMeshHeader(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->roomCtx.curRoom.meshHeader = SEGMENTED_TO_VIRTUAL(cmd->mesh.segment);
}

void Scene_CommandObjectList(GlobalContext* globalCtx, SceneCmd* cmd) {
    s32 i;
    s32 j;
    s32 k;
    ObjectLoadEntry* loadEntry;
    ObjectLoadEntry* invalidatedLoadEntry;
    ObjectLoadEntry* loadEntries;
    s16* objectEntry = SEGMENTED_TO_VIRTUAL(cmd->objectList.segment);
    void* nextPtr;

    k = 0;
    i = globalCtx->objectCtx.persistentLoadEntriesCount;
    loadEntries = globalCtx->objectCtx.loadEntries;
    loadEntry = &globalCtx->objectCtx.loadEntries[i];

    while (i < globalCtx->objectCtx.loadEntriesCount) {
        if (loadEntry->id != *objectEntry) {

            invalidatedLoadEntry = &globalCtx->objectCtx.loadEntries[i];
            for (j = i; j < globalCtx->objectCtx.loadEntriesCount; j++) {
                invalidatedLoadEntry->id = OBJECT_INVALID;
                invalidatedLoadEntry++;
            }

            globalCtx->objectCtx.loadEntriesCount = i;
            Actor_KillActorsWithUnloadedObject(globalCtx, &globalCtx->actorCtx);

            continue;
        }

        i++;
        k++;
        objectEntry++;
        loadEntry++;
    }

    ASSERT(cmd->objectList.num <= ARRAY_COUNT(globalCtx->objectCtx.loadEntries),
           "scene_info->object_bank.num <= OBJECT_EXCHANGE_BANK_MAX", "../z_scene.c", 705);

    while (k < cmd->objectList.num) {
        nextPtr = func_800982FC(&globalCtx->objectCtx, i, *objectEntry);
        if (i < (ARRAY_COUNT(globalCtx->objectCtx.loadEntries) - 1)) {
            loadEntries[i + 1].segment = nextPtr;
        }
        i++;
        k++;
        objectEntry++;
    }

    globalCtx->objectCtx.loadEntriesCount = i;
}

void Scene_CommandLightList(GlobalContext* globalCtx, SceneCmd* cmd) {
    s32 i;
    LightInfo* lightInfo = SEGMENTED_TO_VIRTUAL(cmd->lightList.segment);

    for (i = 0; i < cmd->lightList.num; i++) {
        LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, lightInfo);
        lightInfo++;
    }
}

void Scene_CommandPathList(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->setupPathList = SEGMENTED_TO_VIRTUAL(cmd->pathList.segment);
}

void Scene_CommandTransitionActorList(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->transiActorCtx.numActors = cmd->transiActorList.num;
    globalCtx->transiActorCtx.list = SEGMENTED_TO_VIRTUAL(cmd->transiActorList.segment);
}

void TransitionActor_InitContext(GameState* state, TransitionActorContext* transiActorCtx) {
    transiActorCtx->numActors = 0;
}

void Scene_CommandLightSettingsList(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->envCtx.numLightSettings = cmd->lightSettingList.num;
    globalCtx->envCtx.lightSettingsList = SEGMENTED_TO_VIRTUAL(cmd->lightSettingList.segment);
}

void Scene_CommandSkyboxSettings(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->skyboxId = cmd->skyboxSettings.skyboxId;
    globalCtx->envCtx.skyboxConfig = globalCtx->envCtx.changeSkyboxNextConfig = cmd->skyboxSettings.unk_05;
    globalCtx->envCtx.lightMode = cmd->skyboxSettings.unk_06;
}

void Scene_CommandSkyboxDisables(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->envCtx.skyboxDisabled = cmd->skyboxDisables.unk_04;
    globalCtx->envCtx.sunMoonDisabled = cmd->skyboxDisables.unk_05;
}

void Scene_CommandTimeSettings(GlobalContext* globalCtx, SceneCmd* cmd) {
    if ((cmd->timeSettings.hour != 0xFF) && (cmd->timeSettings.min != 0xFF)) {
        gSaveContext.skyboxTime = gSaveContext.dayTime =
            ((cmd->timeSettings.hour + (cmd->timeSettings.min / 60.0f)) * 60.0f) / ((f32)(24 * 60) / 0x10000);
    }

    if (cmd->timeSettings.unk_06 != 0xFF) {
        globalCtx->envCtx.sceneTimeSpeed = cmd->timeSettings.unk_06;
    } else {
        globalCtx->envCtx.sceneTimeSpeed = 0;
    }

    if (gSaveContext.sunsSongState == SUNSSONG_INACTIVE) {
        gTimeSpeed = globalCtx->envCtx.sceneTimeSpeed;
    }

    globalCtx->envCtx.sunPos.x = -(Math_SinS(((void)0, gSaveContext.dayTime) - CLOCK_TIME(12, 0)) * 120.0f) * 25.0f;
    globalCtx->envCtx.sunPos.y = (Math_CosS(((void)0, gSaveContext.dayTime) - CLOCK_TIME(12, 0)) * 120.0f) * 25.0f;
    globalCtx->envCtx.sunPos.z = (Math_CosS(((void)0, gSaveContext.dayTime) - CLOCK_TIME(12, 0)) * 20.0f) * 25.0f;

    if (((globalCtx->envCtx.sceneTimeSpeed == 0) && (gSaveContext.cutsceneIndex < 0xFFF0)) ||
        (gSaveContext.entranceIndex == ENTR_SPOT06_8)) {
        gSaveContext.skyboxTime = ((void)0, gSaveContext.dayTime);
        if ((gSaveContext.skyboxTime > CLOCK_TIME(4, 0)) && (gSaveContext.skyboxTime < CLOCK_TIME(6, 30))) {
            gSaveContext.skyboxTime = CLOCK_TIME(5, 0) + 1;
        } else if ((gSaveContext.skyboxTime >= CLOCK_TIME(6, 30)) && (gSaveContext.skyboxTime <= CLOCK_TIME(8, 0))) {
            gSaveContext.skyboxTime = CLOCK_TIME(8, 0) + 1;
        } else if ((gSaveContext.skyboxTime >= CLOCK_TIME(16, 0)) && (gSaveContext.skyboxTime <= CLOCK_TIME(17, 0))) {
            gSaveContext.skyboxTime = CLOCK_TIME(17, 0) + 1;
        } else if ((gSaveContext.skyboxTime >= CLOCK_TIME(18, 0) + 1) &&
                   (gSaveContext.skyboxTime <= CLOCK_TIME(19, 0))) {
            gSaveContext.skyboxTime = CLOCK_TIME(19, 0) + 1;
        }
    }
}

void Scene_CommandWindSettings(GlobalContext* globalCtx, SceneCmd* cmd) {
    s8 x = cmd->windSettings.x;
    s8 y = cmd->windSettings.y;
    s8 z = cmd->windSettings.z;

    globalCtx->envCtx.windDirection.x = x;
    globalCtx->envCtx.windDirection.y = y;
    globalCtx->envCtx.windDirection.z = z;

    globalCtx->envCtx.windSpeed = cmd->windSettings.unk_07;
}

void Scene_CommandExitList(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->setupExitList = SEGMENTED_TO_VIRTUAL(cmd->exitList.segment);
}

void Scene_CommandUndefined9(GlobalContext* globalCtx, SceneCmd* cmd) {
}

void Scene_CommandSoundSettings(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->sequenceCtx.seqId = cmd->soundSettings.seqId;
    globalCtx->sequenceCtx.natureAmbienceId = cmd->soundSettings.natureAmbienceId;

    if (gSaveContext.seqId == (u8)NA_BGM_DISABLED) {
        Audio_QueueSeqCmd(cmd->soundSettings.specId | 0xF0000000);
    }
}

void Scene_CommandEchoSettings(GlobalContext* globalCtx, SceneCmd* cmd) {
    globalCtx->roomCtx.curRoom.echo = cmd->echoSettings.echo;
}

void Scene_CommandAlternateHeaderList(GlobalContext* globalCtx, SceneCmd* cmd) {
    s32 pad;
    SceneCmd* altHeader;

    osSyncPrintf("\n[ZU]sceneset age    =[%X]", ((void)0, gSaveContext.linkAge));
    osSyncPrintf("\n[ZU]sceneset time   =[%X]", ((void)0, gSaveContext.cutsceneIndex));
    osSyncPrintf("\n[ZU]sceneset counter=[%X]", ((void)0, gSaveContext.sceneSetupIndex));

    if (gSaveContext.sceneSetupIndex != 0) {
        altHeader = ((SceneCmd**)SEGMENTED_TO_VIRTUAL(cmd->altHeaders.segment))[gSaveContext.sceneSetupIndex - 1];

        if (1) {}

        if (altHeader != NULL) {
            Scene_ExecuteCommands(globalCtx, SEGMENTED_TO_VIRTUAL(altHeader));
            (cmd + 1)->base.code = SCENE_CMD_ID_END;
        } else {
            // "Coughh! There is no specified dataaaaa!"
            osSyncPrintf("\nげぼはっ！ 指定されたデータがないでええっす！");

            if (gSaveContext.sceneSetupIndex == 3) {
                altHeader =
                    ((SceneCmd**)SEGMENTED_TO_VIRTUAL(cmd->altHeaders.segment))[gSaveContext.sceneSetupIndex - 2];

                // "Using adult day data there!"
                osSyncPrintf("\nそこで、大人の昼データを使用するでええっす！！");

                if (altHeader != NULL) {
                    Scene_ExecuteCommands(globalCtx, SEGMENTED_TO_VIRTUAL(altHeader));
                    (cmd + 1)->base.code = SCENE_CMD_ID_END;
                }
            }
        }
    }
}

void Scene_CommandCutsceneData(GlobalContext* globalCtx, SceneCmd* cmd) {
    osSyncPrintf("\ngame_play->demo_play.data=[%x]", globalCtx->csCtx.segment);
    globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(cmd->cutsceneData.segment);
}

// Camera & World Map Area
void Scene_CommandMiscSettings(GlobalContext* globalCtx, SceneCmd* cmd) {
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

void (*gSceneCmdHandlers[SCENE_CMD_ID_MAX])(GlobalContext*, SceneCmd*) = {
    Scene_CommandSpawnList,           // SCENE_CMD_ID_SPAWN_LIST
    Scene_CommandActorList,           // SCENE_CMD_ID_ACTOR_LIST
    Scene_CommandUnused2,             // SCENE_CMD_ID_UNUSED_2
    Scene_CommandCollisionHeader,     // SCENE_CMD_ID_COLLISION_HEADER
    Scene_CommandRoomList,            // SCENE_CMD_ID_ROOM_LIST
    Scene_CommandWindSettings,        // SCENE_CMD_ID_WIND_SETTINGS
    Scene_CommandEntranceList,        // SCENE_CMD_ID_ENTRANCE_LIST
    Scene_CommandSpecialFiles,        // SCENE_CMD_ID_SPECIAL_FILES
    Scene_CommandRoomBehavior,        // SCENE_CMD_ID_ROOM_BEHAVIOR
    Scene_CommandUndefined9,          // SCENE_CMD_ID_UNDEFINED_9
    Scene_CommandMeshHeader,          // SCENE_CMD_ID_MESH_HEADER
    Scene_CommandObjectList,          // SCENE_CMD_ID_OBJECT_LIST
    Scene_CommandLightList,           // SCENE_CMD_ID_LIGHT_LIST
    Scene_CommandPathList,            // SCENE_CMD_ID_PATH_LIST
    Scene_CommandTransitionActorList, // SCENE_CMD_ID_TRANSITION_ACTOR_LIST
    Scene_CommandLightSettingsList,   // SCENE_CMD_ID_LIGHT_SETTINGS_LIST
    Scene_CommandTimeSettings,        // SCENE_CMD_ID_TIME_SETTINGS
    Scene_CommandSkyboxSettings,      // SCENE_CMD_ID_SKYBOX_SETTINGS
    Scene_CommandSkyboxDisables,      // SCENE_CMD_ID_SKYBOX_DISABLES
    Scene_CommandExitList,            // SCENE_CMD_ID_EXIT_LIST
    NULL,                             // SCENE_CMD_ID_END
    Scene_CommandSoundSettings,       // SCENE_CMD_ID_SOUND_SETTINGS
    Scene_CommandEchoSettings,        // SCENE_CMD_ID_ECHO_SETTINGS
    Scene_CommandCutsceneData,        // SCENE_CMD_ID_CUTSCENE_DATA
    Scene_CommandAlternateHeaderList, // SCENE_CMD_ID_ALTERNATE_HEADER_LIST
    Scene_CommandMiscSettings,        // SCENE_CMD_ID_MISC_SETTINGS
};

RomFile sNaviMsgFiles[] = {
    ROM_FILE(elf_message_field),
    ROM_FILE(elf_message_ydan),
    ROM_FILE_UNSET,
};

s16 gLinkObjectIds[] = { OBJECT_LINK_BOY, OBJECT_LINK_CHILD };

u32 gObjectTableSize = ARRAY_COUNT(gObjectTable);

// Object linker symbol declarations (used in the table below)
#define DEFINE_OBJECT(name, _1) DECLARE_ROM_SEGMENT(name)
#define DEFINE_OBJECT_NULL(_0, _1)
#define DEFINE_OBJECT_UNSET(_0)

#include "tables/object_table.h"

#undef DEFINE_OBJECT
#undef DEFINE_OBJECT_NULL
#undef DEFINE_OBJECT_UNSET

// Object Table definition
#define DEFINE_OBJECT(name, _1) ROM_FILE(name),
#define DEFINE_OBJECT_NULL(name, _1) ROM_FILE_EMPTY(name),
#define DEFINE_OBJECT_UNSET(_0) { 0 },

RomFile gObjectTable[] = {
#include "tables/object_table.h"
};

#undef DEFINE_OBJECT
#undef DEFINE_OBJECT_NULL
#undef DEFINE_OBJECT_UNSET
