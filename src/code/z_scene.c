#include "global.h"
#include "terminal.h"

RomFile sNaviQuestHintFiles[];

/**
 * Spawn an object file of a specified ID that will persist through room changes.
 *
 * This waits for the file to be fully loaded, the data is available when the function returns.
 *
 * @return The new object slot corresponding to the requested object ID.
 *
 * @note This function is not meant to be called externally to spawn object files on the fly.
 * When an object is spawned with this function, all objects that come before it in the entry list will be treated as
 * persistent, which will likely cause either the amount of free slots or object space memory to run out.
 * This function is only meant to be called internally on scene load, before the object list from any room is processed.
 */
s32 Object_SpawnPersistent(ObjectContext* objectCtx, s16 objectId) {
    u32 size;

    objectCtx->slots[objectCtx->numEntries].id = objectId;
    size = gObjectTable[objectId].vromEnd - gObjectTable[objectId].vromStart;

    osSyncPrintf("OBJECT[%d] SIZE %fK SEG=%x\n", objectId, size / 1024.0f,
                 objectCtx->slots[objectCtx->numEntries].segment);

    osSyncPrintf("num=%d adrs=%x end=%x\n", objectCtx->numEntries,
                 (uintptr_t)objectCtx->slots[objectCtx->numEntries].segment + size, objectCtx->spaceEnd);

    ASSERT(((objectCtx->numEntries < ARRAY_COUNT(objectCtx->slots)) &&
            (((uintptr_t)objectCtx->slots[objectCtx->numEntries].segment + size) < (uintptr_t)objectCtx->spaceEnd)),
           "this->num < OBJECT_EXCHANGE_BANK_MAX && (this->status[this->num].Segment + size) < this->endSegment",
           "../z_scene.c", 142);

    DmaMgr_RequestSyncDebug(objectCtx->slots[objectCtx->numEntries].segment, gObjectTable[objectId].vromStart, size,
                            "../z_scene.c", 145);

    if (objectCtx->numEntries < (ARRAY_COUNT(objectCtx->slots) - 1)) {
        objectCtx->slots[objectCtx->numEntries + 1].segment =
            (void*)ALIGN16((uintptr_t)objectCtx->slots[objectCtx->numEntries].segment + size);
    }

    objectCtx->numEntries++;
    objectCtx->numPersistentEntries = objectCtx->numEntries;

    return objectCtx->numEntries - 1;
}

void Object_InitContext(PlayState* play, ObjectContext* objectCtx) {
    PlayState* play2 = play;
    u32 spaceSize;
    s32 i;

    if (play2->sceneId == SCENE_HYRULE_FIELD) {
        spaceSize = 1000 * 1024;
    } else if (play2->sceneId == SCENE_GANON_BOSS) {
        if (gSaveContext.sceneLayer != 4) {
            spaceSize = 1150 * 1024;
        } else {
            spaceSize = 1000 * 1024;
        }
    } else if (play2->sceneId == SCENE_SPIRIT_TEMPLE_BOSS) {
        spaceSize = 1050 * 1024;
    } else if (play2->sceneId == SCENE_CHAMBER_OF_THE_SAGES) {
        spaceSize = 1050 * 1024;
    } else if (play2->sceneId == SCENE_GANONDORF_BOSS) {
        spaceSize = 1050 * 1024;
    } else {
        spaceSize = 1000 * 1024;
    }

    objectCtx->numEntries = objectCtx->numPersistentEntries = 0;
    objectCtx->mainKeepSlot = objectCtx->subKeepSlot = 0;

    for (i = 0; i < ARRAY_COUNT(objectCtx->slots); i++) {
        objectCtx->slots[i].id = OBJECT_INVALID;
    }

    osSyncPrintf(VT_FGCOL(GREEN));
    // "Object exchange bank data %8.3fKB"
    osSyncPrintf("オブジェクト入れ替えバンク情報 %8.3fKB\n", spaceSize / 1024.0f);
    osSyncPrintf(VT_RST);

    objectCtx->spaceStart = objectCtx->slots[0].segment = GameState_Alloc(&play->state, spaceSize, "../z_scene.c", 219);
    objectCtx->spaceEnd = (void*)((uintptr_t)objectCtx->spaceStart + spaceSize);

    objectCtx->mainKeepSlot = Object_SpawnPersistent(objectCtx, OBJECT_GAMEPLAY_KEEP);
    gSegments[4] = VIRTUAL_TO_PHYSICAL(objectCtx->slots[objectCtx->mainKeepSlot].segment);
}

void Object_UpdateEntries(ObjectContext* objectCtx) {
    s32 i;
    ObjectEntry* entry = &objectCtx->slots[0];
    RomFile* objectFile;
    u32 size;

    for (i = 0; i < objectCtx->numEntries; i++) {
        if (entry->id < 0) {
            if (entry->dmaRequest.vromAddr == 0) {
                osCreateMesgQueue(&entry->loadQueue, &entry->loadMsg, 1);
                objectFile = &gObjectTable[-entry->id];
                size = objectFile->vromEnd - objectFile->vromStart;

                osSyncPrintf("OBJECT EXCHANGE BANK-%2d SIZE %8.3fK SEG=%08x\n", i, size / 1024.0f, entry->segment);

                DmaMgr_RequestAsync(&entry->dmaRequest, entry->segment, objectFile->vromStart, size, 0,
                                    &entry->loadQueue, NULL, "../z_scene.c", 266);
            } else if (osRecvMesg(&entry->loadQueue, NULL, OS_MESG_NOBLOCK) == 0) {
                entry->id = -entry->id;
            }
        }
        entry++;
    }
}

s32 Object_GetSlot(ObjectContext* objectCtx, s16 objectId) {
    s32 i;

    for (i = 0; i < objectCtx->numEntries; i++) {
        if (ABS(objectCtx->slots[i].id) == objectId) {
            return i;
        }
    }

    return -1;
}

s32 Object_IsLoaded(ObjectContext* objectCtx, s32 slot) {
    if (objectCtx->slots[slot].id > 0) {
        return true;
    } else {
        return false;
    }
}

void func_800981B8(ObjectContext* objectCtx) {
    s32 i;
    s32 id;
    u32 size;

    for (i = 0; i < objectCtx->numEntries; i++) {
        id = objectCtx->slots[i].id;
        size = gObjectTable[id].vromEnd - gObjectTable[id].vromStart;
        osSyncPrintf("OBJECT[%d] SIZE %fK SEG=%x\n", objectCtx->slots[i].id, size / 1024.0f,
                     objectCtx->slots[i].segment);
        osSyncPrintf("num=%d adrs=%x end=%x\n", objectCtx->numEntries, (uintptr_t)objectCtx->slots[i].segment + size,
                     objectCtx->spaceEnd);
        DmaMgr_RequestSyncDebug(objectCtx->slots[i].segment, gObjectTable[id].vromStart, size, "../z_scene.c", 342);
    }
}

void* func_800982FC(ObjectContext* objectCtx, s32 slot, s16 objectId) {
    ObjectEntry* entry = &objectCtx->slots[slot];
    RomFile* objectFile = &gObjectTable[objectId];
    u32 size;
    void* nextPtr;

    entry->id = -objectId;
    entry->dmaRequest.vromAddr = 0;

    size = objectFile->vromEnd - objectFile->vromStart;
    osSyncPrintf("OBJECT EXCHANGE NO=%2d BANK=%3d SIZE=%8.3fK\n", slot, objectId, size / 1024.0f);

    nextPtr = (void*)ALIGN16((uintptr_t)entry->segment + size);

    ASSERT(nextPtr < objectCtx->spaceEnd, "nextptr < this->endSegment", "../z_scene.c", 381);

    // "Object exchange free size=%08x"
    osSyncPrintf("オブジェクト入れ替え空きサイズ=%08x\n", (uintptr_t)objectCtx->spaceEnd - (uintptr_t)nextPtr);

    return nextPtr;
}

s32 Scene_ExecuteCommands(PlayState* play, SceneCmd* sceneCmd) {
    u32 cmdCode;

    while (true) {
        cmdCode = sceneCmd->base.code;
        osSyncPrintf("*** Scene_Word = { code=%d, data1=%02x, data2=%04x } ***\n", cmdCode, sceneCmd->base.data1,
                     sceneCmd->base.data2);

        if (cmdCode == SCENE_CMD_ID_END) {
            break;
        }

        if (cmdCode < ARRAY_COUNT(gSceneCmdHandlers)) {
            gSceneCmdHandlers[cmdCode](play, sceneCmd);
        } else {
            osSyncPrintf(VT_FGCOL(RED));
            osSyncPrintf("code の値が異常です\n"); // "code variable is abnormal"
            osSyncPrintf(VT_RST);
        }
        sceneCmd++;
    }
    return 0;
}

void Scene_CommandPlayerEntryList(PlayState* play, SceneCmd* cmd) {
    ActorEntry* playerEntry = play->playerEntry =
        (ActorEntry*)SEGMENTED_TO_VIRTUAL(cmd->playerEntryList.data) + play->spawnList[play->spawn].playerEntryIndex;
    s16 linkObjectId;

    play->linkAgeOnLoad = ((void)0, gSaveContext.save.linkAge);

    linkObjectId = gLinkObjectIds[((void)0, gSaveContext.save.linkAge)];

    gActorOverlayTable[playerEntry->id].initInfo->objectId = linkObjectId;
    Object_SpawnPersistent(&play->objectCtx, linkObjectId);
}

void Scene_CommandActorEntryList(PlayState* play, SceneCmd* cmd) {
    play->numActorEntries = cmd->actorEntryList.length;
    play->actorEntryList = SEGMENTED_TO_VIRTUAL(cmd->actorEntryList.data);
}

void Scene_CommandUnused2(PlayState* play, SceneCmd* cmd) {
    play->unk_11DFC = SEGMENTED_TO_VIRTUAL(cmd->unused02.segment);
}

void Scene_CommandCollisionHeader(PlayState* play, SceneCmd* cmd) {
    CollisionHeader* colHeader = SEGMENTED_TO_VIRTUAL(cmd->colHeader.data);

    colHeader->vtxList = SEGMENTED_TO_VIRTUAL(colHeader->vtxList);
    colHeader->polyList = SEGMENTED_TO_VIRTUAL(colHeader->polyList);
    colHeader->surfaceTypeList = SEGMENTED_TO_VIRTUAL(colHeader->surfaceTypeList);
    colHeader->bgCamList = SEGMENTED_TO_VIRTUAL(colHeader->bgCamList);
    colHeader->waterBoxes = SEGMENTED_TO_VIRTUAL(colHeader->waterBoxes);

    BgCheck_Allocate(&play->colCtx, play, colHeader);
}

void Scene_CommandRoomList(PlayState* play, SceneCmd* cmd) {
    play->numRooms = cmd->roomList.length;
    play->roomList = SEGMENTED_TO_VIRTUAL(cmd->roomList.data);
}

void Scene_CommandSpawnList(PlayState* play, SceneCmd* cmd) {
    play->spawnList = SEGMENTED_TO_VIRTUAL(cmd->spawnList.data);
}

void Scene_CommandSpecialFiles(PlayState* play, SceneCmd* cmd) {
    if (cmd->specialFiles.keepObjectId != OBJECT_INVALID) {
        play->objectCtx.subKeepSlot = Object_SpawnPersistent(&play->objectCtx, cmd->specialFiles.keepObjectId);
        gSegments[5] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[play->objectCtx.subKeepSlot].segment);
    }

    if (cmd->specialFiles.naviQuestHintFileId != NAVI_QUEST_HINTS_NONE) {
        play->naviQuestHints = Play_LoadFile(play, &sNaviQuestHintFiles[cmd->specialFiles.naviQuestHintFileId - 1]);
    }
}

void Scene_CommandRoomBehavior(PlayState* play, SceneCmd* cmd) {
    play->roomCtx.curRoom.behaviorType1 = cmd->roomBehavior.gpFlag1;
    play->roomCtx.curRoom.behaviorType2 = cmd->roomBehavior.gpFlag2 & 0xFF;
    play->roomCtx.curRoom.lensMode = (cmd->roomBehavior.gpFlag2 >> 8) & 1;
    play->msgCtx.disableWarpSongs = (cmd->roomBehavior.gpFlag2 >> 0xA) & 1;
}

void Scene_CommandRoomShape(PlayState* play, SceneCmd* cmd) {
    play->roomCtx.curRoom.roomShape = SEGMENTED_TO_VIRTUAL(cmd->mesh.data);
}

void Scene_CommandObjectList(PlayState* play, SceneCmd* cmd) {
    s32 i;
    s32 j;
    s32 k;
    ObjectEntry* entry;
    ObjectEntry* invalidatedEntry;
    ObjectEntry* entries;
    s16* objectListEntry = SEGMENTED_TO_VIRTUAL(cmd->objectList.data);
    void* nextPtr;

    k = 0;
    i = play->objectCtx.numPersistentEntries;
    entries = play->objectCtx.slots;
    entry = &play->objectCtx.slots[i];

    while (i < play->objectCtx.numEntries) {
        if (entry->id != *objectListEntry) {

            invalidatedEntry = &play->objectCtx.slots[i];
            for (j = i; j < play->objectCtx.numEntries; j++) {
                invalidatedEntry->id = OBJECT_INVALID;
                invalidatedEntry++;
            }

            play->objectCtx.numEntries = i;
            Actor_KillAllWithMissingObject(play, &play->actorCtx);

            continue;
        }

        i++;
        k++;
        objectListEntry++;
        entry++;
    }

    ASSERT(cmd->objectList.length <= ARRAY_COUNT(play->objectCtx.slots),
           "scene_info->object_bank.num <= OBJECT_EXCHANGE_BANK_MAX", "../z_scene.c", 705);

    while (k < cmd->objectList.length) {
        nextPtr = func_800982FC(&play->objectCtx, i, *objectListEntry);
        if (i < (ARRAY_COUNT(play->objectCtx.slots) - 1)) {
            entries[i + 1].segment = nextPtr;
        }
        i++;
        k++;
        objectListEntry++;
    }

    play->objectCtx.numEntries = i;
}

void Scene_CommandLightList(PlayState* play, SceneCmd* cmd) {
    s32 i;
    LightInfo* lightInfo = SEGMENTED_TO_VIRTUAL(cmd->lightList.data);

    for (i = 0; i < cmd->lightList.length; i++) {
        LightContext_InsertLight(play, &play->lightCtx, lightInfo);
        lightInfo++;
    }
}

void Scene_CommandPathList(PlayState* play, SceneCmd* cmd) {
    play->pathList = SEGMENTED_TO_VIRTUAL(cmd->pathList.data);
}

void Scene_CommandTransitionActorEntryList(PlayState* play, SceneCmd* cmd) {
    play->transiActorCtx.numActors = cmd->transiActorList.length;
    play->transiActorCtx.list = SEGMENTED_TO_VIRTUAL(cmd->transiActorList.data);
}

void TransitionActor_InitContext(GameState* state, TransitionActorContext* transiActorCtx) {
    transiActorCtx->numActors = 0;
}

void Scene_CommandLightSettingsList(PlayState* play, SceneCmd* cmd) {
    play->envCtx.numLightSettings = cmd->lightSettingList.length;
    play->envCtx.lightSettingsList = SEGMENTED_TO_VIRTUAL(cmd->lightSettingList.data);
}

void Scene_CommandSkyboxSettings(PlayState* play, SceneCmd* cmd) {
    play->skyboxId = cmd->skyboxSettings.skyboxId;
    play->envCtx.skyboxConfig = play->envCtx.changeSkyboxNextConfig = cmd->skyboxSettings.skyboxConfig;
    play->envCtx.lightMode = cmd->skyboxSettings.envLightMode;
}

void Scene_CommandSkyboxDisables(PlayState* play, SceneCmd* cmd) {
    play->envCtx.skyboxDisabled = cmd->skyboxDisables.skyboxDisabled;
    play->envCtx.sunMoonDisabled = cmd->skyboxDisables.sunMoonDisabled;
}

void Scene_CommandTimeSettings(PlayState* play, SceneCmd* cmd) {
    if ((cmd->timeSettings.hour != 0xFF) && (cmd->timeSettings.min != 0xFF)) {
        gSaveContext.skyboxTime = gSaveContext.save.dayTime =
            ((cmd->timeSettings.hour + (cmd->timeSettings.min / 60.0f)) * 60.0f) / ((f32)(24 * 60) / 0x10000);
    }

    if (cmd->timeSettings.timeSpeed != 0xFF) {
        play->envCtx.sceneTimeSpeed = cmd->timeSettings.timeSpeed;
    } else {
        play->envCtx.sceneTimeSpeed = 0;
    }

    if (gSaveContext.sunsSongState == SUNSSONG_INACTIVE) {
        gTimeSpeed = play->envCtx.sceneTimeSpeed;
    }

    play->envCtx.sunPos.x = -(Math_SinS(((void)0, gSaveContext.save.dayTime) - CLOCK_TIME(12, 0)) * 120.0f) * 25.0f;
    play->envCtx.sunPos.y = (Math_CosS(((void)0, gSaveContext.save.dayTime) - CLOCK_TIME(12, 0)) * 120.0f) * 25.0f;
    play->envCtx.sunPos.z = (Math_CosS(((void)0, gSaveContext.save.dayTime) - CLOCK_TIME(12, 0)) * 20.0f) * 25.0f;

    if (((play->envCtx.sceneTimeSpeed == 0) && (gSaveContext.save.cutsceneIndex < 0xFFF0)) ||
        (gSaveContext.save.entranceIndex == ENTR_LAKE_HYLIA_8)) {
        gSaveContext.skyboxTime = ((void)0, gSaveContext.save.dayTime);

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

void Scene_CommandWindSettings(PlayState* play, SceneCmd* cmd) {
    s8 x = cmd->windSettings.x;
    s8 y = cmd->windSettings.y;
    s8 z = cmd->windSettings.z;

    play->envCtx.windDirection.x = x;
    play->envCtx.windDirection.y = y;
    play->envCtx.windDirection.z = z;

    play->envCtx.windSpeed = cmd->windSettings.unk_07;
}

void Scene_CommandExitList(PlayState* play, SceneCmd* cmd) {
    play->exitList = SEGMENTED_TO_VIRTUAL(cmd->exitList.data);
}

void Scene_CommandUndefined9(PlayState* play, SceneCmd* cmd) {
}

void Scene_CommandSoundSettings(PlayState* play, SceneCmd* cmd) {
    play->sequenceCtx.seqId = cmd->soundSettings.seqId;
    play->sequenceCtx.natureAmbienceId = cmd->soundSettings.natureAmbienceId;

    if (gSaveContext.seqId == (u8)NA_BGM_DISABLED) {
        SEQCMD_RESET_AUDIO_HEAP(0, cmd->soundSettings.specId);
    }
}

void Scene_CommandEchoSettings(PlayState* play, SceneCmd* cmd) {
    play->roomCtx.curRoom.echo = cmd->echoSettings.echo;
}

void Scene_CommandAlternateHeaderList(PlayState* play, SceneCmd* cmd) {
    s32 pad;
    SceneCmd* altHeader;

    osSyncPrintf("\n[ZU]sceneset age    =[%X]", ((void)0, gSaveContext.save.linkAge));
    osSyncPrintf("\n[ZU]sceneset time   =[%X]", ((void)0, gSaveContext.save.cutsceneIndex));
    osSyncPrintf("\n[ZU]sceneset counter=[%X]", ((void)0, gSaveContext.sceneLayer));

    if (gSaveContext.sceneLayer != 0) {
        altHeader = ((SceneCmd**)SEGMENTED_TO_VIRTUAL(cmd->altHeaders.data))[gSaveContext.sceneLayer - 1];

        if (1) {}

        if (altHeader != NULL) {
            Scene_ExecuteCommands(play, SEGMENTED_TO_VIRTUAL(altHeader));
            (cmd + 1)->base.code = SCENE_CMD_ID_END;
        } else {
            // "Coughh! There is no specified dataaaaa!"
            osSyncPrintf("\nげぼはっ！ 指定されたデータがないでええっす！");

            if (gSaveContext.sceneLayer == SCENE_LAYER_ADULT_NIGHT) {
                // Due to the condition above, this is equivalent to accessing altHeaders[SCENE_LAYER_ADULT_DAY - 1]
                altHeader = ((SceneCmd**)SEGMENTED_TO_VIRTUAL(
                    cmd->altHeaders
                        .data))[(gSaveContext.sceneLayer - SCENE_LAYER_ADULT_NIGHT) + SCENE_LAYER_ADULT_DAY - 1];

                // "Using adult day data there!"
                osSyncPrintf("\nそこで、大人の昼データを使用するでええっす！！");

                if (altHeader != NULL) {
                    Scene_ExecuteCommands(play, SEGMENTED_TO_VIRTUAL(altHeader));
                    (cmd + 1)->base.code = SCENE_CMD_ID_END;
                }
            }
        }
    }
}

void Scene_CommandCutsceneData(PlayState* play, SceneCmd* cmd) {
    osSyncPrintf("\ngame_play->demo_play.data=[%x]", play->csCtx.script);
    play->csCtx.script = SEGMENTED_TO_VIRTUAL(cmd->cutsceneData.data);
}

// Camera & World Map Area
void Scene_CommandMiscSettings(PlayState* play, SceneCmd* cmd) {
    R_SCENE_CAM_TYPE = cmd->miscSettings.sceneCamType;
    gSaveContext.worldMapArea = cmd->miscSettings.area;

    if ((play->sceneId == SCENE_BAZAAR) || (play->sceneId == SCENE_SHOOTING_GALLERY)) {
        if (LINK_AGE_IN_YEARS == YEARS_ADULT) {
            gSaveContext.worldMapArea = 1;
        }
    }

    if (((play->sceneId >= SCENE_HYRULE_FIELD) && (play->sceneId <= SCENE_OUTSIDE_GANONS_CASTLE)) ||
        ((play->sceneId >= SCENE_MARKET_ENTRANCE_DAY) && (play->sceneId <= SCENE_TEMPLE_OF_TIME_EXTERIOR_RUINS))) {
        if (gSaveContext.save.cutsceneIndex < 0xFFF0) {
            gSaveContext.save.info.worldMapAreaData |= gBitFlags[gSaveContext.worldMapArea];
            osSyncPrintf("０００  ａｒｅａ＿ａｒｒｉｖａｌ＝%x (%d)\n", gSaveContext.save.info.worldMapAreaData,
                         gSaveContext.worldMapArea);
        }
    }
}

void (*gSceneCmdHandlers[SCENE_CMD_ID_MAX])(PlayState*, SceneCmd*) = {
    Scene_CommandPlayerEntryList,          // SCENE_CMD_ID_SPAWN_LIST
    Scene_CommandActorEntryList,           // SCENE_CMD_ID_ACTOR_LIST
    Scene_CommandUnused2,                  // SCENE_CMD_ID_UNUSED_2
    Scene_CommandCollisionHeader,          // SCENE_CMD_ID_COLLISION_HEADER
    Scene_CommandRoomList,                 // SCENE_CMD_ID_ROOM_LIST
    Scene_CommandWindSettings,             // SCENE_CMD_ID_WIND_SETTINGS
    Scene_CommandSpawnList,                // SCENE_CMD_ID_ENTRANCE_LIST
    Scene_CommandSpecialFiles,             // SCENE_CMD_ID_SPECIAL_FILES
    Scene_CommandRoomBehavior,             // SCENE_CMD_ID_ROOM_BEHAVIOR
    Scene_CommandUndefined9,               // SCENE_CMD_ID_UNDEFINED_9
    Scene_CommandRoomShape,                // SCENE_CMD_ID_ROOM_SHAPE
    Scene_CommandObjectList,               // SCENE_CMD_ID_OBJECT_LIST
    Scene_CommandLightList,                // SCENE_CMD_ID_LIGHT_LIST
    Scene_CommandPathList,                 // SCENE_CMD_ID_PATH_LIST
    Scene_CommandTransitionActorEntryList, // SCENE_CMD_ID_TRANSITION_ACTOR_LIST
    Scene_CommandLightSettingsList,        // SCENE_CMD_ID_LIGHT_SETTINGS_LIST
    Scene_CommandTimeSettings,             // SCENE_CMD_ID_TIME_SETTINGS
    Scene_CommandSkyboxSettings,           // SCENE_CMD_ID_SKYBOX_SETTINGS
    Scene_CommandSkyboxDisables,           // SCENE_CMD_ID_SKYBOX_DISABLES
    Scene_CommandExitList,                 // SCENE_CMD_ID_EXIT_LIST
    NULL,                                  // SCENE_CMD_ID_END
    Scene_CommandSoundSettings,            // SCENE_CMD_ID_SOUND_SETTINGS
    Scene_CommandEchoSettings,             // SCENE_CMD_ID_ECHO_SETTINGS
    Scene_CommandCutsceneData,             // SCENE_CMD_ID_CUTSCENE_DATA
    Scene_CommandAlternateHeaderList,      // SCENE_CMD_ID_ALTERNATE_HEADER_LIST
    Scene_CommandMiscSettings,             // SCENE_CMD_ID_MISC_SETTINGS
};

RomFile sNaviQuestHintFiles[] = {
    ROM_FILE(elf_message_field),
    ROM_FILE(elf_message_ydan),
};
