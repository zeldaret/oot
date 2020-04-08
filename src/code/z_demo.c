#include <ultra64.h>
#include <global.h>
#include <PR/os_cont.h>

u16 D_8011E1C0 = 0;
u16 D_8011E1C4 = 0;

typedef void (*CutsceneStateHandler)(GlobalContext*, CutsceneContext*);

void func_80064720(GlobalContext* globalCtx, CutsceneContext* csCtx);
void func_80064760(GlobalContext* globalCtx, CutsceneContext* csCtx);
void func_800647C0(GlobalContext* globalCtx, CutsceneContext* csCtx);
void func_80068C3C(GlobalContext* globalCtx, CutsceneContext* csCtx);
void func_80068D84(GlobalContext* globalCtx, CutsceneContext* csCtx);
void func_80068DC0(GlobalContext* globalCtx, CutsceneContext* csCtx);

CutsceneStateHandler sCsStateHandlers1[] = {
    func_80064720, func_80064760, func_80064720, func_80068D84, func_80064720,
};

CutsceneStateHandler sCsStateHandlers2[] = {
    func_80064720, func_800647C0, func_80068C3C, func_80068DC0, func_80068C3C,
};

u8 sTitleCsState = 0;

// TODO: use symbols for these cutscene locations once scenes and rooms are in C
EntranceCutscene sEntranceCutsceneTable[] = {
    { 0x0185, 2, 0xA0, 0x02013AA0 }, { 0x013D, 2, 0xA1, 0x02007EA0 }, { 0x00DB, 2, 0xA3, 0x0200A540 },
    { 0x0108, 2, 0xA4, 0x02003D70 }, { 0x0138, 1, 0xA5, 0x02003F40 }, { 0x014D, 2, 0xA6, 0x02008400 },
    { 0x0053, 2, 0xA7, 0x0200CE00 }, { 0x0000, 2, 0xA8, 0x0200B650 }, { 0x028A, 0, 0x18, 0x0200F9E0 },
    { 0x0292, 0, 0x18, 0x0200FF00 }, { 0x028E, 0, 0x18, 0x02010550 }, { 0x0476, 0, 0x18, 0x02010B30 },
    { 0x050F, 1, 0xA9, 0x0200BB80 }, { 0x0102, 2, 0xB1, 0x02007A30 }, { 0x0117, 2, 0xB2, 0x020031E0 },
    { 0x0129, 2, 0xB3, 0x02006490 }, { 0x0157, 2, 0xB4, 0x02005BD0 }, { 0x0028, 2, 0xB5, 0x02015600 },
    { 0x00E4, 2, 0xB6, 0x020070C0 }, { 0x0225, 2, 0xB7, 0x02004A80 }, { 0x0123, 2, 0xB8, 0x02007990 },
    { 0x0147, 2, 0xB9, 0x020076D0 }, { 0x0138, 0, 0xBA, 0x02004280 }, { 0x0574, 2, 0x5A, 0x020028E0 },
    { 0x0538, 2, 0xBB, 0x0201E790 }, { 0x053C, 2, 0xBC, 0x0201EF70 }, { 0x0540, 2, 0xBD, 0x02021380 },
    { 0x0544, 2, 0xBE, 0x0201E3E0 }, { 0x0548, 2, 0xBF, 0x0201DF90 }, { 0x054C, 2, 0xAD, 0x0201EB40 },
    { 0x008D, 0, 0xC0, 0x02002BB0 }, { 0x03B4, 0, 0xC7, 0x020055C0 }, { 0x0246, 2, 0xB9, 0x020076D0 },
    { 0x05E8, 2, 0xC6, 0x0200C9D0 },
};

// Unused, seems to be an early list of dungeon entrance cutscene locations
u32 D_8011E304[] = { 0x0200B650, 0x02015600, 0x02014F80, 0x02003F80, 0x02000330, 0x0201DA50 };

u16 D_8015FCC0;
u16 D_8015FCC2;
u16 D_8015FCC4;
s16 D_8015FCC6;
u8 D_8015FCC8;
s16 D_8015FCCA;
u16 D_8015FCCC;    // only written to, never read
s8 D_8015FCD0[20]; // unreferenced
u8 D_8015FCE4;     // only written to, never read

void func_80068ECC(GlobalContext* globalCtx, CutsceneContext* csCtx);

void Cutscene_DrawDebugInfo(GlobalContext* globalCtx, Gfx** dlist, CutsceneContext* csCtx) {
    u8 pad[0x1C];
    GfxPrint printer;
    u8 pad2[8];

    GfxPrint_Ctor(&printer);
    GfxPrint_Open(&printer, *dlist);
    GfxPrint_SetPos(&printer, 22, 25);
    GfxPrint_SetColor(&printer, 255, 255, 55, 32);
    GfxPrint_Printf(&printer, "%s", "FLAME ");
    GfxPrint_SetColor(&printer, 255, 255, 255, 32);
    GfxPrint_Printf(&printer, "%06d", csCtx->frames);
    GfxPrint_SetColor(&printer, 50, 255, 255, 60);
    GfxPrint_SetPos(&printer, 4, 26);
    GfxPrint_Printf(&printer, "%s", "SKIP=(START) or (Cursole Right)");
    *dlist = GfxPrint_Close(&printer);
    GfxPrint_Dtor(&printer);
}

void func_8006450C(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    csCtx->state = CS_STATE_IDLE;
    csCtx->unk_0C = 0.0f;
}

void func_80064520(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    csCtx->state = CS_STATE_SKIPPABLE_INIT;
    csCtx->linkAction = NULL;
}

void func_80064534(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    if (csCtx->state != CS_STATE_UNSKIPPABLE_EXEC) {
        csCtx->state = CS_STATE_UNSKIPPABLE_INIT;
    }
}

void func_80064558(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    if (gSaveContext.cutscene_index < 0xFFF0) {
        sCsStateHandlers1[csCtx->state](globalCtx, csCtx);
    }
}

void func_800645A0(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    Input* pad1 = &globalCtx->state.input[0];

    if (!~(pad1->padPressed | ~L_JPAD) && (csCtx->state == CS_STATE_IDLE) &&
        (gSaveContext.scene_setup_index >= 4)) {
        D_8015FCC8 = 0;
        gSaveContext.cutscene_index = 0xFFFD;
        gSaveContext.cutscene_trigger = 1;
    }

    if (!~(pad1->padPressed | ~U_JPAD) && (csCtx->state == CS_STATE_IDLE) &&
        (gSaveContext.scene_setup_index >= 4) && (D_8011D394 == 0)) {
        D_8015FCC8 = 1;
        gSaveContext.cutscene_index = 0xFFFD;
        gSaveContext.cutscene_trigger = 1;
    }

    if ((gSaveContext.cutscene_trigger != 0) && (globalCtx->sceneLoadFlag == 0x14)) {
        gSaveContext.cutscene_trigger = 0;
    }

    if ((gSaveContext.cutscene_trigger != 0) && (csCtx->state == CS_STATE_IDLE)) {
        // Translates to: "CUTSCENE START REQUEST ANNOUNCEMENT!"
        osSyncPrintf("\nデモ開始要求 発令！");
        gSaveContext.cutscene_index = 0xFFFD;
        gSaveContext.cutscene_trigger = 1;
    }

    if (gSaveContext.cutscene_index >= 0xFFF0) {
        func_80068ECC(globalCtx, csCtx);
        sCsStateHandlers2[csCtx->state](globalCtx, csCtx);
    }
}

void func_80064720(GlobalContext* globalCtx, CutsceneContext* csCtx) {
}

u32 func_8006472C(GlobalContext* globalCtx, CutsceneContext* csCtx, f32 target) {
    return Math_ApproxF(&csCtx->unk_0C, target, 0.1f);
}

void func_80064760(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    Interface_ChangeAlpha(1);
    func_800B3840(0x20);

    if (func_8006472C(globalCtx, csCtx, 1.0f)) {
        func_800F68BC(1);
        csCtx->state++;
    }
}

void func_800647C0(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    func_80068C3C(globalCtx, csCtx);
    Interface_ChangeAlpha(1);
    func_800B3840(0x20);

    if (func_8006472C(globalCtx, csCtx, 1.0f)) {
        func_800F68BC(1);
        csCtx->state++;
    }
}

// Command 3: Misc. Actions
void func_80064824(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdBase* cmd) {
    Player* player = PLAYER;
    f32 temp;
    u8 sp3F;

    sp3F = 0;

    if ((csCtx->frames < cmd->startFrame) || (csCtx->frames >= cmd->endFrame) && (cmd->endFrame != cmd->startFrame)) {
        return;
    }

    temp = func_8006F93C(cmd->endFrame - 1, cmd->startFrame, csCtx->frames);

    if (csCtx->frames == cmd->startFrame) {
        sp3F = 1;
    }

    switch (cmd->base) {
        case 1:
            if (sp3F != 0) {
                func_800F6D58(0xE, 4, 0x3F);
                func_800F6D58(0xE, 1, 1);
                globalCtx->unk_10B12[0] = 0x14;
            }
            break;
        case 2:
            if (sp3F != 0) {
                func_800F6D58(0xF, 0, 0);
                func_800753C4(globalCtx, 3);
                if (1) {}
                D_8015FD70 = 1;
            }
            break;
        case 3:
            if (sp3F != 0) {
                func_8006C3D0(globalCtx, 0);
                if (gSaveContext.entrance_index == 0x0053) {
                    func_8006C3D0(globalCtx, 2);
                }
            }
            break;
        case 6:
            if (globalCtx->unk_10AC4 < 0x3200) {
                globalCtx->unk_10AC4 += 0x23;
            }
            break;
        case 7:
            if (sp3F != 0) {
                globalCtx->unk_10A3D = 1;
                globalCtx->gloomySky = 1;
                globalCtx->unk_10A3C = 0;
                globalCtx->unk_10A3E = 0x3C;
                globalCtx->unk_10A45 = 1;
                globalCtx->unk_10A43 = 0;
                globalCtx->unk_10A44 = 1;
                globalCtx->unk_10A46 = globalCtx->unk_10A48 = 0x3C;
            }
            break;
        case 8:
            if (globalCtx->unk_11D30[0] < 0x80) {
                globalCtx->unk_11D30[0] += 4;
            }
            break;
        case 9:
            globalCtx->unk_10B12[3] = 0x10;
            break;
        case 10:
            func_8006C3D0(globalCtx, 1);
            break;
        case 11:
            if (globalCtx->unk_11D30[0] < 0x672) {
                globalCtx->unk_11D30[0] += 0x14;
            }
            if (csCtx->frames == 0x30F) {
                func_80078884(NA_SE_EV_DEKU_DEATH);
            } else if (csCtx->frames == 0x2CD) {
                globalCtx->unk_11D30[0] = 0;
            }
            break;
        case 12:
            if (sp3F != 0) {
                if (csCtx->state != CS_STATE_UNSKIPPABLE_EXEC) {
                    csCtx->state = CS_STATE_UNSKIPPABLE_INIT;
                }
            }
            break;
        case 13:
            if (globalCtx->unk_11D30[1] == 0) {
                func_80078884(NA_SE_EV_TRIFORCE_FLASH);
            }
            if (globalCtx->unk_11D30[1] < 0xFF) {
                globalCtx->unk_11D30[1] += 5;
            }
            break;
        case 14:
            if (sp3F != 0) {
                func_800BC490(globalCtx, 1);
            }
            break;
        case 15:
            if (sp3F != 0) {
                TitleCard_InitPlaceName(globalCtx, &globalCtx->actorCtx.titleCtx, player->unk_1B0, 0xA0, 0x78, 0x90,
                                        0x18, 0x14);
            }
            break;
        case 16:
            if (sp3F != 0) {
                D_8015FCCA = Quake_Add(globalCtx->cameraCtx.activeCameraPtrs[globalCtx->cameraCtx.unk_5C0], 6);
                Quake_SetSpeed(D_8015FCCA, 0x7FFF);
                Quake_SetQuakeValues(D_8015FCCA, 4, 0, 1000, 0);
                Quake_SetCountdown(D_8015FCCA, 800);
            }
            break;
        case 17:
            if (sp3F != 0) {
                Quake_RemoveFromIdx(D_8015FCCA);
            }
            break;
        case 18:
            globalCtx->unk_10B12[0] = 0;
            globalCtx->gloomySkyEvent = 2;
            if (gSaveContext.day_time < 0x4AAB) {
                gSaveContext.day_time += 30;
            }
            if (globalCtx->unk_10B12[1] == 0) {
                D_8011FB30 = 0;
                func_800F6D58(14, 1, 0);
            }
            break;
        case 19:
            gSaveContext.event_chk_inf[6] |= 0x0020;
            break;
        case 20:
            gSaveContext.event_chk_inf[6] |= 0x0080;
            break;
        case 21:
            gSaveContext.event_chk_inf[6] |= 0x0200;
            break;
        case 22:
            D_801614B0.r = 0xFF;
            D_801614B0.g = 0xFF;
            D_801614B0.b = 0xFF;
            D_801614B0.a = 0xFF;
            break;
        case 23:
            D_801614B0.r = 0xFF;
            D_801614B0.g = 0xB4;
            D_801614B0.b = 0x64;
            D_801614B0.a = 255.0f * temp;
            break;
        case 24:
            globalCtx->roomCtx.curRoom.segment = NULL;
            break;
        case 25:
            gSaveContext.day_time += 30;
            if ((gSaveContext.day_time) > 0xCAAA) {
                gSaveContext.day_time = 0xCAAA;
            }
            break;
        case 26:
            if ((gSaveContext.day_time < 0x3000) || (gSaveContext.day_time >= 0x4555)) {
                if ((gSaveContext.day_time >= 0x4555) && (gSaveContext.day_time < 0xAAAB)) {
                    globalCtx->unk_10AE3 = 1;
                } else if ((gSaveContext.day_time >= 0xAAAB) && (gSaveContext.day_time < 0xC556)) {
                    globalCtx->unk_10AE3 = 2;
                } else {
                    globalCtx->unk_10AE3 = 3;
                }
            }
            break;
        case 27:
            if (globalCtx->state.frames & 8) {
                if (globalCtx->unk_10AB0[0] < 40) {
                    globalCtx->unk_10AB0[0] += 2;
                    globalCtx->unk_10AB0[4] -= 3;
                    globalCtx->unk_10AB0[5] -= 3;
                }
            } else {
                if (globalCtx->unk_10AB0[0] > 2) {
                    globalCtx->unk_10AB0[0] -= 2;
                    globalCtx->unk_10AB0[4] += 3;
                    globalCtx->unk_10AB0[5] += 3;
                }
            }
            break;
        case 28:
            globalCtx->unk_11DE9 = 1;
            break;
        case 29:
            globalCtx->unk_11DE9 = 0;
            break;
        case 30:
            func_8006C3D0(globalCtx, 3);
            break;
        case 31:
            func_8006C3D0(globalCtx, 4);
            break;
        case 32:
            if (sp3F != 0) {
                globalCtx->unk_10B0A = 1;
            }
            func_800788CC(0x20C0);
            break;
        case 33:
            gSaveContext.unk_1422 = 1;
            break;
        case 34:
            if (!gSaveContext.night_flag) {
                gSaveContext.day_time -= D_8011FB40;
            } else {
                gSaveContext.day_time -= D_8011FB40 * 2;
            }
            break;
        case 35:
            func_800EE824(csCtx);
            csCtx->frames = cmd->startFrame - 1;
            break;
    }
}

// Command 4: Set Environment Lighting
void Cutscene_Command_SetLighting(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdEnvLighting* cmd) {
    if (csCtx->frames == cmd->startFrame) {
        globalCtx->unk_10AE3 = cmd->setting - 1;
        globalCtx->unk_10AFC = 1.0f;
    }
}

// Command 0x56: Play Background Music
void Cutscene_Command_PlayBGM(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdMusicChange* cmd) {
    if (csCtx->frames == cmd->startFrame) {
        func_800F595C(cmd->sequence - 1);
    }
}

// Command 0x57: Stop Background Music
void Cutscene_Command_StopBGM(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdMusicChange* cmd) {
    if (csCtx->frames == cmd->startFrame) {
        func_800F59E8(cmd->sequence - 1);
    }
}

// Command 0x7C: Fade Background Music over duration
void Cutscene_Command_FadeBGM(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdMusicFade* cmd) {
    u8 var1;

    if ((csCtx->frames == cmd->startFrame) && (csCtx->frames < cmd->endFrame)) {
        var1 = cmd->endFrame - cmd->startFrame;

        if (cmd->type == 3) {
            Audio_SetBGM(var1 << 0x10 | 0x110000FF);
        } else {
            Audio_SetBGM(var1 << 0x10 | 0x100000FF);
        }
    }
}

// Command 9: ?
void Cutscene_Command_09(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdUnknown9* cmd) {
    if (csCtx->frames == cmd->startFrame) {
        func_800AA000(0.0f, cmd->unk_06, cmd->unk_07, cmd->unk_08);
    }
}

// Command 0x8C: Set Time of Day & Environment Time
void func_80065134(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdDayTime* cmd) {
    s16 temp1;
    s16 temp2;

    if (csCtx->frames == cmd->startFrame) {
        temp1 = (cmd->hour * 60.0f) / 0.021972656f;
        temp2 = (cmd->minute + 1) / 0.021972656f;
        
        gSaveContext.day_time = temp1 + temp2;
        gSaveContext.environment_time = temp1 + temp2;
    }
}

// Command 0x3E8: Code Execution (& Terminates Cutscene?)
void Cutscene_Command_Terminator(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdBase* cmd) {
    Player* player = PLAYER;
    s32 temp = 0;

    if ((gSaveContext.game_mode != 0) && (gSaveContext.game_mode != 3) && (globalCtx->sceneNum != SCENE_SPOT00) &&
        (csCtx->frames > 20) &&
        (!~(globalCtx->state.input[0].padPressed | ~A_BUTTON) || !~(globalCtx->state.input[0].padPressed | ~B_BUTTON) ||
         !~(globalCtx->state.input[0].padPressed | ~START_BUTTON)) &&
        (gSaveContext.file_num != 0xFEDC) && (globalCtx->sceneLoadFlag == 0)) {
        Audio_PlaySoundGeneral(NA_SE_SY_PIECE_OF_HEART, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        temp = 1;
    }

    if ((csCtx->frames == cmd->startFrame) || (temp != 0) ||
        ((csCtx->frames > 20) && (!~(globalCtx->state.input[0].padPressed | ~START_BUTTON)) &&
         (gSaveContext.file_num != 0xFEDC))) {
        csCtx->state = CS_STATE_UNSKIPPABLE_EXEC;
        func_800F68BC(0);
        gSaveContext.unk_1410 = 1;

        // Translates to: "FUTURE FORK DESIGNATION=No. [%d]"
        osSyncPrintf("\n分岐先指定！！=[%d]番", cmd->base);

        if ((gSaveContext.game_mode != 0) && (csCtx->frames != cmd->startFrame)) {
            gSaveContext.unk_13E7 = 1;
        }

        gSaveContext.cutscene_index = 0;

        switch (cmd->base) {
            case 1:
                globalCtx->nextEntranceIndex = 0x00A0;
                gSaveContext.cutscene_index = 0xFFF1;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 2:
                globalCtx->nextEntranceIndex = 0x00A0;
                gSaveContext.cutscene_index = 0xFFF0;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 0xA;
                break;
            case 3:
                globalCtx->nextEntranceIndex = 0x0117;
                gSaveContext.cutscene_index = 0xFFF1;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 0xA;
                break;
            case 4:
                globalCtx->nextEntranceIndex = 0x013D;
                gSaveContext.cutscene_index = 0xFFF0;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 0xA;
                break;
            case 5:
                globalCtx->nextEntranceIndex = 0x00EE;
                gSaveContext.cutscene_index = 0xFFF0;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 0xA;
                break;
            case 6:
                globalCtx->nextEntranceIndex = 0x00A0;
                gSaveContext.cutscene_index = 0xFFF2;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 0xA;
                break;
            case 7:
                globalCtx->nextEntranceIndex = 0x00EE;
                gSaveContext.cutscene_index = 0xFFF2;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 0xB;
                break;
            case 8:
                gSaveContext.fw.set = 0;
                gSaveContext.respawn[RESPAWN_MODE_TOP].data = 0;
                if (!(gSaveContext.event_chk_inf[4] & 0x20)) {
                    gSaveContext.event_chk_inf[4] |= 0x20;
                    globalCtx->nextEntranceIndex = 0x00A0;
                    globalCtx->sceneLoadFlag = 0x14;
                    gSaveContext.cutscene_index = 0xFFF3;
                    globalCtx->fadeOutTransition = 0xB;
                } else {
                    if (gSaveContext.scene_setup_index < 4) {
                        if (LINK_IS_CHILD) {
                            globalCtx->linkAgeOnLoad = 0;
                        } else {
                            globalCtx->linkAgeOnLoad = 1;
                        }
                    }
                    globalCtx->nextEntranceIndex = 0x02CA;
                    globalCtx->sceneLoadFlag = 0x14;
                    globalCtx->fadeOutTransition = 3;
                    gSaveContext.transition_type = 3;
                }
                break;
            case 9:
                globalCtx->nextEntranceIndex = 0x0117;
                gSaveContext.cutscene_index = 0xFFF0;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 0xc;
                break;
            case 10:
                globalCtx->nextEntranceIndex = 0x00BB;
                gSaveContext.cutscene_index = 0xFFF0;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 11:
                globalCtx->nextEntranceIndex = 0x00EE;
                gSaveContext.cutscene_index = 0xFFF3;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 3;
                break;
            case 12:
                globalCtx->nextEntranceIndex = 0x047A;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 13:
                globalCtx->nextEntranceIndex = 0x010E;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                gSaveContext.transition_type = 2;
                break;
            case 14:
                globalCtx->nextEntranceIndex = 0x0457;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 15:
                globalCtx->nextEntranceIndex = 0x0053;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF4;
                globalCtx->fadeOutTransition = 3;
                break;
            case 16:
                globalCtx->nextEntranceIndex = 0x0053;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF5;
                globalCtx->fadeOutTransition = 3;
                break;
            case 17:
                globalCtx->nextEntranceIndex = 0x0053;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF6;
                globalCtx->fadeOutTransition = 3;
                break;
            case 18:
                gSaveContext.event_chk_inf[4] |= 0x8000;
                globalCtx->nextEntranceIndex = 0x0324;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                gSaveContext.transition_type = 2;
                break;
            case 19:
                globalCtx->nextEntranceIndex = 0x013D;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 4;
                gSaveContext.cutscene_index = 0x8000;
                break;
            case 21:
                globalCtx->nextEntranceIndex = 0x0102;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF0;
                globalCtx->fadeOutTransition = 3;
                break;
            case 22:
                Item_Give(globalCtx, ITEM_SONG_REQUIEM);
                globalCtx->nextEntranceIndex = 0x0123;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF0;
                globalCtx->fadeOutTransition = 3;
                break;
            case 23:
                globalCtx->nextEntranceIndex = 0x00A0;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF8;
                globalCtx->fadeOutTransition = 3;
                break;
            case 24:
                globalCtx->nextEntranceIndex = 0x0028;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 25:
                globalCtx->linkAgeOnLoad = 0;
                globalCtx->nextEntranceIndex = 0x006B;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF0;
                globalCtx->fadeOutTransition = 3;
                break;
            case 26:
                globalCtx->nextEntranceIndex = 0x0053;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF4;
                globalCtx->fadeOutTransition = 3;
                break;
            case 27:
                globalCtx->nextEntranceIndex = 0x0053;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF5;
                globalCtx->fadeOutTransition = 3;
                break;
            case 28:
                globalCtx->nextEntranceIndex = 0x0053;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF6;
                globalCtx->fadeOutTransition = 3;
                break;
            case 29:
                globalCtx->nextEntranceIndex = 0x006B;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.chamber_cutscene_num = 0;
                globalCtx->fadeOutTransition = 3;
                break;
            case 30:
                globalCtx->nextEntranceIndex = 0x006B;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 3;
                Item_Give(globalCtx, ITEM_MEDALLION_FIRE);
                gSaveContext.chamber_cutscene_num = 1;
                break;
            case 31:
                globalCtx->nextEntranceIndex = 0x006B;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 3;
                gSaveContext.chamber_cutscene_num = 2;
                break;
            case 32:
                globalCtx->linkAgeOnLoad = 1;
                globalCtx->nextEntranceIndex = 0x00CD;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF2;
                globalCtx->fadeOutTransition = 0xb;
                break;
            case 33:
                globalCtx->nextEntranceIndex = 0x00CD;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 3;
                break;
            case 34:
                globalCtx->nextEntranceIndex = 0x00A0;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF3;
                globalCtx->fadeOutTransition = 3;
                break;
            case 35:
                globalCtx->nextEntranceIndex = 0x00CD;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF0;
                globalCtx->fadeOutTransition = 4;
                break;
            case 38:
                globalCtx->nextEntranceIndex = 0x00A0;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF4;
                globalCtx->fadeOutTransition = 4;
                break;
            case 39:
                globalCtx->nextEntranceIndex = 0x0053;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF9;
                globalCtx->fadeOutTransition = 4;
                break;
            case 40:
                globalCtx->linkAgeOnLoad = 0;
                globalCtx->nextEntranceIndex = 0x0053;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFFA;
                globalCtx->fadeOutTransition = 4;
                break;
            case 41:
                globalCtx->nextEntranceIndex = 0x04E6;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 42:
                globalCtx->nextEntranceIndex = 0x00DB;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF2;
                globalCtx->fadeOutTransition = 4;
                break;
            case 43:
                globalCtx->nextEntranceIndex = 0x0503;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 4;
                break;
            case 44:
                globalCtx->nextEntranceIndex = 0x0320;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 0x11;
                break;
            case 46:
                gSaveContext.event_chk_inf[4] |= 0x8000;
                globalCtx->nextEntranceIndex = 0x0324;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 4;
                break;
            case 47:
                Item_Give(globalCtx, ITEM_SONG_NOCTURNE);
                gSaveContext.event_chk_inf[5] |= 0x10;
                globalCtx->nextEntranceIndex = 0x00DB;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF1;
                globalCtx->fadeOutTransition = 4;
                break;
            case 48:
                globalCtx->nextEntranceIndex = 0x01ED;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 0xF;
                gSaveContext.transition_type = 0xF;
                break;
            case 49:
                globalCtx->nextEntranceIndex = 0x058C;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 4;
                break;
            case 50:
                globalCtx->nextEntranceIndex = 0x0513;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 0x11;
                break;
            case 51:
                globalCtx->nextEntranceIndex = 0x00CD;
                gSaveContext.cutscene_index = 0xFFF8;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 0x29;
                break;
            case 52:
                globalCtx->nextEntranceIndex = 0x0053;
                gSaveContext.cutscene_index = 0xFFF7;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 0xb;
                break;
            case 53:
                globalCtx->nextEntranceIndex = 0x050F;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 3;
                break;
            case 54:
                gSaveContext.game_mode = 3;
                func_800F7260(0x6F);
                globalCtx->linkAgeOnLoad = 1;
                globalCtx->nextEntranceIndex = 0x0117;
                gSaveContext.cutscene_index = 0xFFF2;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 55:
                globalCtx->nextEntranceIndex = 0x0129;
                gSaveContext.cutscene_index = 0xFFF1;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 56:
                globalCtx->nextEntranceIndex = 0x00DB;
                gSaveContext.cutscene_index = 0xFFF4;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 57:
                globalCtx->nextEntranceIndex = 0x013D;
                gSaveContext.cutscene_index = 0xFFF3;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 58:
                globalCtx->nextEntranceIndex = 0x014D;
                gSaveContext.cutscene_index = 0xFFF1;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 59:
                globalCtx->nextEntranceIndex = 0x0102;
                gSaveContext.cutscene_index = 0xFFF1;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 60:
                globalCtx->nextEntranceIndex = 0x010E;
                gSaveContext.cutscene_index = 0xFFF2;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 61:
                globalCtx->nextEntranceIndex = 0x0108;
                gSaveContext.cutscene_index = 0xFFF0;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 62:
                globalCtx->linkAgeOnLoad = 0;
                globalCtx->nextEntranceIndex = 0x00EE;
                gSaveContext.cutscene_index = 0xFFF6;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 63:
                globalCtx->nextEntranceIndex = 0x00EE;
                gSaveContext.cutscene_index = 0xFFF7;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 64:
                globalCtx->nextEntranceIndex = 0x00CD;
                gSaveContext.cutscene_index = 0xFFF5;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 65:
                globalCtx->linkAgeOnLoad = 1;
                globalCtx->nextEntranceIndex = 0x0157;
                gSaveContext.cutscene_index = 0xFFF2;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 66:
                globalCtx->nextEntranceIndex = 0x0554;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 67:
                globalCtx->nextEntranceIndex = 0x027E;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 68:
                globalCtx->nextEntranceIndex = 0x00A0;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF5;
                globalCtx->fadeOutTransition = 2;
                break;
            case 69:
                globalCtx->nextEntranceIndex = 0x05E8;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 70:
                globalCtx->nextEntranceIndex = 0x013D;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF4;
                globalCtx->fadeOutTransition = 2;
                gSaveContext.transition_type = 2;
                break;
            case 71:
                gSaveContext.equips.equipment |= 0x0100;
                func_8008ECAC(globalCtx, player);
                gSaveContext.equips.equipment |= 0x1000;
                func_8008ECAC(globalCtx, player);
                globalCtx->linkAgeOnLoad = 1;
                globalCtx->nextEntranceIndex = 0x0053;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF1;
                globalCtx->fadeOutTransition = 2;
                break;
            case 72:
                globalCtx->nextEntranceIndex = 0x0400;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF0;
                globalCtx->fadeOutTransition = 2;
                gSaveContext.transition_type = 2;
                break;
            case 73:
                globalCtx->linkAgeOnLoad = 1;
                globalCtx->nextEntranceIndex = 0x0157;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF2;
                globalCtx->fadeOutTransition = 2;
                break;
            case 74:
                globalCtx->nextEntranceIndex = 0x0157;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF3;
                globalCtx->fadeOutTransition = 3;
                gSaveContext.transition_type = 3;
                break;
            case 75:
                globalCtx->linkAgeOnLoad = 1;
                globalCtx->nextEntranceIndex = 0x0157;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF4;
                globalCtx->fadeOutTransition = 2;
                break;
            case 76:
                globalCtx->linkAgeOnLoad = 0;
                globalCtx->nextEntranceIndex = 0x0157;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF5;
                globalCtx->fadeOutTransition = 2;
                break;
            case 77:
                globalCtx->linkAgeOnLoad = 1;
                globalCtx->nextEntranceIndex = 0x0157;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF6;
                globalCtx->fadeOutTransition = 2;
                break;
            case 78:
                globalCtx->nextEntranceIndex = 0x0157;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF7;
                globalCtx->fadeOutTransition = 2;
                break;
            case 79:
            case 80:
            case 81:
            case 82:
            case 83:
            case 84:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 92:
            case 93:
                globalCtx->nextEntranceIndex = 0x0157;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 94:
                globalCtx->nextEntranceIndex = 0x02AE;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 3;
                break;
            case 95:
                if ((gSaveContext.event_chk_inf[4] & 0x100) && (gSaveContext.event_chk_inf[4] & 0x200) &&
                    (gSaveContext.event_chk_inf[4] & 0x400)) {
                    globalCtx->nextEntranceIndex = 0x0053;
                    globalCtx->sceneLoadFlag = 0x14;
                    gSaveContext.cutscene_index = 0xFFF3;
                    globalCtx->fadeOutTransition = 2;
                } else {
                    switch (gSaveContext.scene_setup_index) {
                        case 8:
                            globalCtx->nextEntranceIndex = 0x00FC;
                            globalCtx->sceneLoadFlag = 0x14;
                            globalCtx->fadeOutTransition = 2;
                            break;
                        case 9:
                            globalCtx->nextEntranceIndex = 0x0147;
                            globalCtx->sceneLoadFlag = 0x14;
                            globalCtx->fadeOutTransition = 2;
                            break;
                        case 10:
                            globalCtx->nextEntranceIndex = 0x0102;
                            globalCtx->sceneLoadFlag = 0x14;
                            gSaveContext.cutscene_index = 0xFFF0;
                            globalCtx->fadeOutTransition = 3;
                            break;
                    }
                }
                break;
            case 96:
                if (gBitFlags[4] & gSaveContext.quest_items) {
                    globalCtx->nextEntranceIndex = 0x006B;
                    globalCtx->sceneLoadFlag = 0x14;
                    gSaveContext.cutscene_index = 0xFFF1;
                    globalCtx->fadeOutTransition = 5;
                } else {
                    gSaveContext.event_chk_inf[12] |= 0x100;
                    globalCtx->nextEntranceIndex = 0x0610;
                    globalCtx->sceneLoadFlag = 0x14;
                    globalCtx->fadeOutTransition = 3;
                    gSaveContext.transition_type = 3;
                }
                break;
            case 97:
                if (gBitFlags[3] & gSaveContext.quest_items) {
                    globalCtx->nextEntranceIndex = 0x006B;
                    globalCtx->sceneLoadFlag = 0x14;
                    gSaveContext.cutscene_index = 0xFFF1;
                    globalCtx->fadeOutTransition = 5;
                } else {
                    globalCtx->nextEntranceIndex = 0x0580;
                    globalCtx->sceneLoadFlag = 0x14;
                    globalCtx->fadeOutTransition = 3;
                    gSaveContext.transition_type = 3;
                }
                break;
            case 98:
                globalCtx->nextEntranceIndex = 0x0564;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 3;
                gSaveContext.transition_type = 3;
                break;
            case 99:
                globalCtx->nextEntranceIndex = 0x0608;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                gSaveContext.transition_type = 2;
                break;
            case 100:
                globalCtx->nextEntranceIndex = 0x00EE;
                gSaveContext.cutscene_index = 0xFFF8;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 3;
                gSaveContext.transition_type = 3;
                break;
            case 101:
                globalCtx->nextEntranceIndex = 0x01F5;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 0xF;
                break;
            case 102:
                globalCtx->nextEntranceIndex = 0x0590;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 103:
                globalCtx->nextEntranceIndex = 0x00CD;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF3;
                globalCtx->fadeOutTransition = 2;
                break;
            case 104:
                switch (sTitleCsState) {
                    case 0:
                        globalCtx->nextEntranceIndex = 0x008D;
                        globalCtx->sceneLoadFlag = 0x14;
                        gSaveContext.cutscene_index = 0xFFF2;
                        globalCtx->fadeOutTransition = 2;
                        sTitleCsState++;
                        break;
                    case 1:
                        globalCtx->nextEntranceIndex = 0x0147;
                        globalCtx->sceneLoadFlag = 0x14;
                        gSaveContext.cutscene_index = 0xFFF1;
                        globalCtx->fadeOutTransition = 2;
                        sTitleCsState++;
                        break;
                    case 2:
                        globalCtx->nextEntranceIndex = 0x00A0;
                        globalCtx->sceneLoadFlag = 0x14;
                        gSaveContext.cutscene_index = 0xFFF6;
                        globalCtx->fadeOutTransition = 2;
                        sTitleCsState = 0;
                        break;
                }
                break;
            case 105:
                globalCtx->nextEntranceIndex = 0x00E4;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.cutscene_index = 0xFFF1;
                globalCtx->fadeOutTransition = 2;
                break;
            case 106:
                globalCtx->nextEntranceIndex = 0x0574;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 107:
                globalCtx->nextEntranceIndex = 0x0538;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 108:
                globalCtx->nextEntranceIndex = 0x053C;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 109:
                globalCtx->nextEntranceIndex = 0x0540;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 110:
                globalCtx->nextEntranceIndex = 0x0544;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 111:
                globalCtx->nextEntranceIndex = 0x0548;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 112:
                globalCtx->nextEntranceIndex = 0x054C;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 113:
                if (Flags_GetEventChkInf(0xBB) && Flags_GetEventChkInf(0xBC) && Flags_GetEventChkInf(0xBD) &&
                    Flags_GetEventChkInf(0xBE) && Flags_GetEventChkInf(0xBF) && Flags_GetEventChkInf(0xAD)) {
                    globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_0201DA50);
                    globalCtx->csCtx.frames = 0;
                    gSaveContext.cutscene_trigger = 1;
                    gSaveContext.cutscene_index = 0xFFFF;
                    csCtx->state = CS_STATE_UNSKIPPABLE_INIT;
                } else {
                    gSaveContext.cutscene_index = 0xFFFF;
                    csCtx->state = CS_STATE_UNSKIPPABLE_INIT;
                }
                break;
            case 114:
                globalCtx->nextEntranceIndex = 0x0185;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                break;
            case 115:
                globalCtx->nextEntranceIndex = 0x0594;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 2;
                gSaveContext.transition_type = 2;
                break;
            case 116:
                if (gSaveContext.event_chk_inf[12] & 0x100) {
                    globalCtx->nextEntranceIndex = 0x0580;
                    globalCtx->sceneLoadFlag = 0x14;
                    globalCtx->fadeOutTransition = 3;
                } else {
                    globalCtx->nextEntranceIndex = 0x0610;
                    globalCtx->sceneLoadFlag = 0x14;
                    globalCtx->fadeOutTransition = 3;
                }
                gSaveContext.transition_type = 3;
                break;
            case 117:
                gSaveContext.game_mode = 3;
                func_800F7260(0x6F);
                globalCtx->linkAgeOnLoad = 0;
                globalCtx->nextEntranceIndex = 0x00CD;
                gSaveContext.cutscene_index = 0xFFF7;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 3;
                break;
            case 118:
                gSaveContext.respawn[RESPAWN_MODE_DOWN].entrance_index = 0x0517;
                func_800C0B60(globalCtx);
                gSaveContext.respawn_flag = -2;
                gSaveContext.transition_type = 2;
                break;
            case 119:
                gSaveContext.day_time = 0x8000;
                gSaveContext.environment_time = 0x8000;
                globalCtx->nextEntranceIndex = 0x05F0;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeOutTransition = 3;
                break;
        }
    }
}

// Command 0x2D: Transition Effects
void Cutscene_Command_TransitionFX(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdBase* cmd) {
    f32 temp;

    if ((csCtx->frames >= cmd->startFrame) && (csCtx->frames <= cmd->endFrame)) {
        globalCtx->unk_10B05 = 1;
        temp = func_8006F93C(cmd->endFrame, cmd->startFrame, csCtx->frames);

        switch (cmd->base) {
            case 1:
            case 5:
                globalCtx->unk_10B06[0] = 0xA0;
                globalCtx->unk_10B06[1] = 0xA0;
                globalCtx->unk_10B06[2] = 0xA0;
                if (cmd->base == 1) {
                    globalCtx->unk_10B06[3] = 255.0f * temp;
                    if ((temp == 0.0f) && (gSaveContext.entrance_index == 0x006B)) {
                        Audio_PlaySoundGeneral(NA_SE_SY_WHITE_OUT_S, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                               &D_801333E8);
                    } else if ((temp == 0.0f) &&
                               ((gSaveContext.entrance_index == 0x0053) || (gSaveContext.entrance_index == 0x0138) ||
                                (gSaveContext.entrance_index == 0x0371))) {
                        Audio_PlaySoundGeneral(NA_SE_EV_WHITE_OUT, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                               &D_801333E8);
                    } else if ((temp == 0.0f) && (globalCtx->sceneNum == SCENE_GANONTIKA)) {
                        func_800788CC(NA_SE_EV_WHITE_OUT);
                    }
                } else {
                    globalCtx->unk_10B06[3] = (1.0f - temp) * 255.0f;
                }
                break;
            case 2:
            case 6:
                globalCtx->unk_10B06[0] = 0;
                globalCtx->unk_10B06[1] = 0;
                globalCtx->unk_10B06[2] = 0xFF;
                if (cmd->base == 2) {
                    globalCtx->unk_10B06[3] = 255.0f * temp;
                } else {
                    globalCtx->unk_10B06[3] = (1.0f - temp) * 255.0f;
                }
                break;
            case 3:
            case 7:
                globalCtx->unk_10B06[0] = 0xFF;
                globalCtx->unk_10B06[1] = 0;
                globalCtx->unk_10B06[2] = 0;
                if (cmd->base == 3) {
                    globalCtx->unk_10B06[3] = (1.0f - temp) * 255.0f;
                } else {
                    globalCtx->unk_10B06[3] = 255.0f * temp;
                }
                break;
            case 4:
            case 8:
                globalCtx->unk_10B06[0] = 0;
                globalCtx->unk_10B06[1] = 0xFF;
                globalCtx->unk_10B06[2] = 0;
                if (cmd->base == 4) {
                    globalCtx->unk_10B06[3] = (1.0f - temp) * 255.0f;
                } else {
                    globalCtx->unk_10B06[3] = 255.0f * temp;
                }
                break;
            case 9:
                gSaveContext.unk_1410 = 1;
                break;
            case 10:
            case 11:
                globalCtx->unk_10B06[0] = 0;
                globalCtx->unk_10B06[1] = 0;
                globalCtx->unk_10B06[2] = 0;
                if (cmd->base == 10) {
                    globalCtx->unk_10B06[3] = (1.0f - temp) * 255.0f;
                } else {
                    globalCtx->unk_10B06[3] = 255.0f * temp;
                }
                break;
            case 12:
                gSaveContext.unk_1410 = 255.0f - (155.0f * temp);
                break;
            case 13:
                globalCtx->unk_10B06[0] = 0;
                globalCtx->unk_10B06[1] = 0;
                globalCtx->unk_10B06[2] = 0;
                globalCtx->unk_10B06[3] = 255.0f - ((1.0f - temp) * 155.0f);
                break;
        }
    }
}

// Command 0x1 & 0x5: Camera Positions
s32 Cutscene_Command_CameraPositions(GlobalContext* globalCtx, CutsceneContext* csCtx, u8* cmd, u8 relativeToLink) {
    s32 shouldContinue = 1;
    CsCmdBase* cmdBase = (CsCmdBase*)cmd;
    s32 size;

    cmd += 8;
    size = 8;

    if ((cmdBase->startFrame < csCtx->frames) && (csCtx->frames < cmdBase->endFrame) &&
        ((csCtx->unk_18 < cmdBase->startFrame) || (csCtx->unk_18 >= 0xF000))) {
        csCtx->unk_1B = 1;
        csCtx->cameraPosition = (CutsceneCameraPoint*)cmd;
        if (csCtx->unk_1A != 0) {
            csCtx->unk_18 = cmdBase->startFrame;
            if (D_8015FCC8 != 0) {
                func_800C0874(globalCtx, csCtx->unk_16, 0x25);
                func_800C0314(globalCtx, D_8015FCC6, 1);
                func_800C0314(globalCtx, csCtx->unk_16, 7);
                func_8005AC60(func_800C04A4(globalCtx, csCtx->unk_16));
                func_8005AC6C(func_800C04A4(globalCtx, csCtx->unk_16), csCtx->cameraFocus, csCtx->cameraPosition,
                              PLAYER, relativeToLink);
            }
        }
    }

    while (shouldContinue) {
        if (((CutsceneCameraPoint*)cmd)->continueFlag == -1) {
            shouldContinue = 0;
        }
        cmd += 0x10;
        size += 0x10;
    }

    return size;
}

// Command 0x2 & 0x6: Camera Focus Points
s32 Cutscene_Command_CameraFocus(GlobalContext* globalCtx, CutsceneContext* csCtx, u8* cmd, u8 relativeToLink) {
    s32 shouldContinue = 1;
    CsCmdBase* cmdBase = (CsCmdBase*)cmd;
    s32 size;

    cmd += 8;
    size = 8;

    if ((cmdBase->startFrame < csCtx->frames) && (csCtx->frames < cmdBase->endFrame) &&
        ((D_8015FCC0 < cmdBase->startFrame) || (D_8015FCC0 >= 0xF000))) {
        csCtx->unk_1A = 1;
        csCtx->cameraFocus = (CutsceneCameraPoint*)cmd;
        if (csCtx->unk_1B != 0) {
            D_8015FCC0 = cmdBase->startFrame;
            if (D_8015FCC8 != 0) {
                func_800C0874(globalCtx, csCtx->unk_16, 0x25);
                func_800C0314(globalCtx, D_8015FCC6, 1);
                func_800C0314(globalCtx, csCtx->unk_16, 7);
                func_8005AC60(func_800C04A4(globalCtx, csCtx->unk_16));
                func_8005AC6C(func_800C04A4(globalCtx, csCtx->unk_16), csCtx->cameraFocus, csCtx->cameraPosition,
                              PLAYER, relativeToLink);
            }
        }
    }

    while (shouldContinue) {
        if (((CutsceneCameraPoint*)cmd)->continueFlag == -1) {
            shouldContinue = 0;
        }
        cmd += 0x10;
        size += 0x10;
    }

    return size;
}

// Command 0x7: ? (Related to camera positons)
s32 Cutscene_Command_07(GlobalContext* globalCtx, CutsceneContext* csCtx, u8* cmd, u8 unused) {
    CsCmdBase* cmdBase = (CsCmdBase*)cmd;
    s32 size;
    Vec3f sp3C;
    Vec3f sp30;
    Camera* sp2C;
    f32 sp28;

    cmd += 8;
    size = 8;

    if ((cmdBase->startFrame < csCtx->frames) && (csCtx->frames < cmdBase->endFrame) &&
        ((D_8015FCC2 < cmdBase->startFrame) || (D_8015FCC2 >= 0xF000))) {
        csCtx->unk_1B = 1;
        csCtx->cameraPosition = (CutsceneCameraPoint*)cmd;
        if (csCtx->unk_1A != 0) {
            D_8015FCC2 = cmdBase->startFrame;
            if (D_8015FCC8 != 0) {
                sp2C = func_800C04A4(globalCtx, csCtx->unk_16);
                sp2C->player = NULL;
                func_800C0314(globalCtx, 0, 1);
                func_800C0314(globalCtx, csCtx->unk_16, 7);
                func_800C0874(globalCtx, csCtx->unk_16, 0x21);
                sp28 = csCtx->cameraFocus->cameraRoll * 1.40625f;
                func_8005AA90(sp2C, 64, &sp28);
                sp3C.x = csCtx->cameraFocus->pos.x;
                sp3C.y = csCtx->cameraFocus->pos.y;
                sp3C.z = csCtx->cameraFocus->pos.z;
                sp30.x = csCtx->cameraPosition->pos.x;
                sp30.y = csCtx->cameraPosition->pos.y;
                sp30.z = csCtx->cameraPosition->pos.z;
                func_800C04D8(globalCtx, csCtx->unk_16, &sp3C, &sp30);
                func_800C0704(globalCtx, csCtx->unk_16, csCtx->cameraPosition->viewAngle);
            }
        }
    }

    size += 0x10;

    return size;
}

// Command 0x8: ? (Related to camera focus points)
s32 Cutscene_Command_08(GlobalContext* globalCtx, CutsceneContext* csCtx, u8* cmd, u8 unused) {
    CsCmdBase* cmdBase = (CsCmdBase*)cmd;
    s32 size;
    Vec3f sp3C;
    Vec3f sp30;
    Camera* sp2C;
    f32 sp28;

    cmd += 8;
    size = 8;

    if ((cmdBase->startFrame < csCtx->frames) && (csCtx->frames < cmdBase->endFrame) &&
        ((D_8015FCC4 < cmdBase->startFrame) || (D_8015FCC4 >= 0xF000))) {
        csCtx->unk_1A = 1;
        csCtx->cameraFocus = (CutsceneCameraPoint*)cmd;
        if (csCtx->unk_1B != 0) {
            D_8015FCC4 = cmdBase->startFrame;
            if (D_8015FCC8 != 0) {
                sp2C = func_800C04A4(globalCtx, csCtx->unk_16);
                sp2C->player = NULL;
                func_800C0314(globalCtx, 0, 1);
                func_800C0314(globalCtx, csCtx->unk_16, 7);
                func_800C0874(globalCtx, csCtx->unk_16, 0x21);
                sp3C.x = csCtx->cameraFocus->pos.x;
                sp3C.y = csCtx->cameraFocus->pos.y;
                sp3C.z = csCtx->cameraFocus->pos.z;
                sp30.x = csCtx->cameraPosition->pos.x;
                sp30.y = csCtx->cameraPosition->pos.y;
                sp30.z = csCtx->cameraPosition->pos.z;
                func_800C04D8(globalCtx, csCtx->unk_16, &sp3C, &sp30);
                func_800C0704(globalCtx, csCtx->unk_16, csCtx->cameraPosition->viewAngle);
            }
        }
    }

    size += 0x10;

    return size;
}

// Command 0x13: Textbox
void Cutscene_Command_Textbox(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdTextbox* cmd) {
    u8 dialogState;
    s16 originalCsFrames;

    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
        if (cmd->type != 2) {
            if (D_8011E1C0 != cmd->base) {
                D_8011E1C0 = cmd->base;
                if ((cmd->type == 3) && (gBitFlags[20] & gSaveContext.quest_items)) {
                    func_8010B680(globalCtx, cmd->textId1, 0);
                } else if ((cmd->type == 4) && (gBitFlags[19] & gSaveContext.quest_items)) {
                    func_8010B680(globalCtx, cmd->textId1, 0);
                } else {
                    func_8010B680(globalCtx, cmd->base, 0);
                }
                return;
            }
        } else {
            if (D_8011E1C4 != cmd->base) {
                D_8011E1C4 = cmd->base;
                func_8010BD58(globalCtx, cmd->base);
                return;
            }
        }

        if (csCtx->frames >= cmd->endFrame) {
            originalCsFrames = csCtx->frames;
            dialogState = func_8010BDBC(&globalCtx->msgCtx);

            if ((dialogState != 2) && (dialogState != 0) && (dialogState != 7) && (dialogState != 8)) {
                csCtx->frames--;

                if ((dialogState == 4) && (func_80106BC8(globalCtx) != 0)) {
                    if (globalCtx->msgCtx.choiceIndex == 0) {
                        if (cmd->textId1 != 0xFFFF) {
                            func_8010B720(globalCtx, cmd->textId1);
                        } else {
                            csCtx->frames++;
                        }
                    } else {
                        if (cmd->textId2 != 0xFFFF) {
                            func_8010B720(globalCtx, cmd->textId2);
                        } else {
                            csCtx->frames++;
                        }
                    }
                }

                if (dialogState == 9) {
                    if (cmd->textId1 != 0xFFFF) {
                        func_8010B720(globalCtx, cmd->textId1);
                    } else {
                        csCtx->frames++;
                    }
                }

                if (dialogState == 5) {
                    if (func_80106BC8(globalCtx) != 0) {
                        func_8010BD58(globalCtx, cmd->base);
                    }
                }
            }

            if (csCtx->frames == originalCsFrames) {
                Interface_ChangeAlpha(1);
                D_8011E1C0 = 0;
                D_8011E1C4 = 0;
            }
        }
    }
}

void Cutscene_ProcessCommands(GlobalContext* globalCtx, CutsceneContext* csCtx, u8* cutscenePtr) {
    s16 i;
    s32 totalEntries;
    s32 cmdType;
    s32 cmdEntries;
    CsCmdBase* cmd;
    s32 cutsceneEndFrame;
    s16 j;

    MemCopy(&totalEntries, cutscenePtr, 4);
    cutscenePtr += 4;
    MemCopy(&cutsceneEndFrame, cutscenePtr, 4);
    cutscenePtr += 4;

    if ((cutsceneEndFrame < csCtx->frames) && (csCtx->state != CS_STATE_UNSKIPPABLE_EXEC)) {
        csCtx->state = CS_STATE_UNSKIPPABLE_INIT;
        return;
    }

    if (!~(globalCtx->state.input[0].padPressed | ~R_JPAD)) {
        csCtx->state = CS_STATE_UNSKIPPABLE_INIT;
        return;
    }

    for (i = 0; i < totalEntries; i++) {
        MemCopy(&cmdType, cutscenePtr, 4);
        cutscenePtr += 4;

        if (cmdType == -1) {
            return;
        }

        switch (cmdType) {
            case CS_CMD_MISC:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    func_80064824(globalCtx, csCtx, (void*)cutscenePtr);
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_SET_LIGHTING:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_SetLighting(globalCtx, csCtx, (void*)cutscenePtr);
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_PLAYBGM:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_PlayBGM(globalCtx, csCtx, (void*)cutscenePtr);
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_STOPBGM:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_StopBGM(globalCtx, csCtx, (void*)cutscenePtr);
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_FADEBGM:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_FadeBGM(globalCtx, csCtx, (void*)cutscenePtr);
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_09:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_09(globalCtx, csCtx, (void*)cutscenePtr);
                    cutscenePtr += 0xC;
                }
                break;
            case CS_CMD_SETTIME:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    func_80065134(globalCtx, csCtx, (void*)cutscenePtr);
                    cutscenePtr += 0xC;
                }
                break;
            case CS_CMD_SET_ACTOR_ACTION_0:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->linkAction = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_SET_ACTOR_ACTION_1:
            case 17:
            case 18:
            case 23:
            case 34:
            case 39:
            case 46:
            case 76:
            case 85:
            case 93:
            case 105:
            case 107:
            case 110:
            case 119:
            case 123:
            case 138:
            case 139:
            case 144:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->actorActions[0] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case 14:
            case 16:
            case 24:
            case 35:
            case 40:
            case 48:
            case 64:
            case 68:
            case 70:
            case 78:
            case 80:
            case 94:
            case 116:
            case 118:
            case 120:
            case 125:
            case 131:
            case 141:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->actorActions[1] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case 25:
            case 36:
            case 41:
            case 50:
            case 67:
            case 69:
            case 72:
            case 74:
            case 81:
            case 106:
            case 117:
            case 121:
            case 126:
            case 132:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->actorActions[2] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case 29:
            case 37:
            case 42:
            case 51:
            case 53:
            case 63:
            case 65:
            case 66:
            case 75:
            case 82:
            case 108:
            case 127:
            case 133:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->actorActions[3] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case 30:
            case 38:
            case 43:
            case 47:
            case 54:
            case 79:
            case 83:
            case 128:
            case 135:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->actorActions[4] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case 44:
            case 55:
            case 77:
            case 84:
            case 90:
            case 129:
            case 136:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->actorActions[5] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case 31:
            case 52:
            case 57:
            case 58:
            case 88:
            case 115:
            case 130:
            case 137:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->actorActions[6] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case 49:
            case 60:
            case 89:
            case 111:
            case 114:
            case 134:
            case 142:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->actorActions[7] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case 62:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->actorActions[8] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_SET_ACTOR_ACTION_10:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((cmd->startFrame < csCtx->frames) && (csCtx->frames <= cmd->endFrame)) {
                        csCtx->actorActions[9] = (void*)cutscenePtr;
                    }
                    cutscenePtr += 0x30;
                }
                break;
            case CS_CMD_CAMERA_POS:
                cutscenePtr += Cutscene_Command_CameraPositions(globalCtx, csCtx, (void*)cutscenePtr, 0);
                break;
            case CS_CMD_CAMERA_POS_LINK:
                cutscenePtr += Cutscene_Command_CameraPositions(globalCtx, csCtx, (void*)cutscenePtr, 1);
                break;
            case CS_CMD_CAMERA_FOCUS:
                cutscenePtr += Cutscene_Command_CameraFocus(globalCtx, csCtx, (void*)cutscenePtr, 0);
                break;
            case CS_CMD_CAMERA_FOCUS_LINK:
                cutscenePtr += Cutscene_Command_CameraFocus(globalCtx, csCtx, (void*)cutscenePtr, 1);
                break;
            case CS_CMD_07:
                cutscenePtr += Cutscene_Command_07(globalCtx, csCtx, (void*)cutscenePtr, 0);
                break;
            case CS_CMD_08:
                cutscenePtr += Cutscene_Command_08(globalCtx, csCtx, (void*)cutscenePtr, 0);
                break;
            case CS_CMD_TERMINATOR:
                cutscenePtr += 4;
                Cutscene_Command_Terminator(globalCtx, csCtx, (void*)cutscenePtr);
                cutscenePtr += 8;
                break;
            case CS_CMD_TEXTBOX:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if (cmd->base != 0xFFFF) {
                        Cutscene_Command_Textbox(globalCtx, csCtx, (void*)cutscenePtr);
                    }
                    cutscenePtr += 0xC;
                }
                break;
            case CS_CMD_SCENE_TRANS_FX:
                cutscenePtr += 4;
                Cutscene_Command_TransitionFX(globalCtx, csCtx, (void*)cutscenePtr);
                cutscenePtr += 8;
                break;
            default:
                MemCopy(&cmdEntries, cutscenePtr, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cutscenePtr += 0x30;
                }
                break;
        }
    }
}

void func_80068C3C(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    Gfx* displayList;
    Gfx* prevDisplayList;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    if (0) {} // Necessary to match

    if (gSaveContext.cutscene_index >= 0xFFF0) {
        if (0) {} // Also necessary to match

        if (BREG(0) != 0) {
            gfxCtx = globalCtx->state.gfxCtx;
            Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_demo.c", 4101);

            prevDisplayList = gfxCtx->polyOpa.p;
            displayList = Graph_GfxPlusOne(gfxCtx->polyOpa.p);
            gSPDisplayList(gfxCtx->overlay.p++, displayList);
            Cutscene_DrawDebugInfo(globalCtx, &displayList, csCtx);
            gSPEndDisplayList(displayList++);
            Graph_BranchDlist(prevDisplayList, displayList);
            gfxCtx->polyOpa.p = displayList;

            Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_demo.c", 4108);
        }

        csCtx->frames++;
        if (dREG(95) != 0) {
            Cutscene_ProcessCommands(globalCtx, csCtx, D_8012D1F0);
        } else {
            Cutscene_ProcessCommands(globalCtx, csCtx, globalCtx->csCtx.segment);
        }
    }
}

void func_80068D84(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    if (func_8006472C(globalCtx, csCtx, 0.0f)) {
        func_800F68BC(0);
        csCtx->state = CS_STATE_IDLE;
    }
}

void func_80068DC0(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    s16 i;

    if (func_8006472C(globalCtx, csCtx, 0.0f)) {
        csCtx->linkAction = NULL;

        for (i = 0; i < 10; i++) {
            csCtx->actorActions[i] = NULL;
        }

        // Translates to: "RIGHT HERE, HUH"
        osSyncPrintf("\n\n\n\n\nやっぱりここかいな");
        gSaveContext.cutscene_index = 0;
        gSaveContext.game_mode = 0;

        if (D_8015FCC8 != 0) {
            switch (gSaveContext.entrance_index) {
                case 0x028A:
                case 0x028E:
                case 0x0292:
                case 0x0476:
                    func_800C078C(globalCtx, D_8015FCC6, csCtx->unk_16);
            }

            func_800C0314(globalCtx, D_8015FCC6, 7);
            func_800C0384(globalCtx, csCtx->unk_16);
            func_8005B1A4(globalCtx->cameraCtx.activeCameraPtrs[D_8015FCC6]);
        }

        func_800F68BC(0);
        csCtx->state = CS_STATE_IDLE;
    }
}

void func_80068ECC(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    u8 i;

    if ((gSaveContext.cutscene_trigger != 0) && (csCtx->state == CS_STATE_IDLE) && !func_8008E988(globalCtx)) {
        gSaveContext.cutscene_index = 0xFFFD;
    }

    if ((gSaveContext.cutscene_index >= 0xFFF0) && (csCtx->state == CS_STATE_IDLE)) {
        func_8006C438(globalCtx, 0);

        D_8011E1C0 = 0;
        D_8011E1C4 = 0;
        csCtx->unk_12 = 0;
        csCtx->linkAction = NULL;

        for (i = 0; i < 10; i++) {
            csCtx->actorActions[i] = NULL;
        }

        csCtx->state++;

        if (csCtx->state == CS_STATE_SKIPPABLE_INIT) {
            func_800F68BC(1);

            csCtx->frames = 0xFFFF;
            csCtx->unk_18 = 0xFFFF;
            D_8015FCC0 = 0xFFFF;
            D_8015FCC2 = 0xFFFF;
            D_8015FCC4 = 0xFFFF;
            csCtx->unk_1A = 0;
            csCtx->unk_1B = 0;
            D_8015FCC6 = globalCtx->cameraCtx.unk_5C0;

            if (D_8015FCC8 != 0) {
                csCtx->unk_14_all = func_800C0230(globalCtx);
            }

            if (gSaveContext.cutscene_trigger == 0) {
                Interface_ChangeAlpha(1);
                func_800B3840(0x20);
                func_800B38A4(0x20);
                csCtx->state++;
            }

            func_80068C3C(globalCtx, csCtx);
        }

        gSaveContext.cutscene_trigger = 0;
    }
}

void func_80069048(GlobalContext* globalCtx) {
    s16 i;

    D_8015FCCC = 0;
    for (i = 0; i < 20; i++) {
        ; // Empty Loop
    }
    D_8015FCE4 = 0;
}

void func_8006907C(GlobalContext* globalCtx) {
    if (D_8015FCCC != 0) {
        D_8015FCCC = 0;
    }
}

void Cutscene_HandleEntranceTriggers(GlobalContext* globalCtx) {
    EntranceCutscene* entranceCutscene;
    u8 requiredAge;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(sEntranceCutsceneTable); i++) {
        entranceCutscene = &sEntranceCutsceneTable[i];

        requiredAge = entranceCutscene->ageRestriction;
        if (requiredAge == 2) {
            requiredAge = gSaveContext.link_age;
        }

        if ((gSaveContext.entrance_index == entranceCutscene->entrance) &&
            (!Flags_GetEventChkInf(entranceCutscene->flag) || (entranceCutscene->flag == 0x18)) &&
            (gSaveContext.cutscene_index < 0xFFF0) && ((u8)gSaveContext.link_age == requiredAge) &&
            (gSaveContext.respawn_flag <= 0)) {
            Flags_SetEventChkInf(entranceCutscene->flag);
            Cutscene_SetSegment(globalCtx, entranceCutscene->segAddr);
            gSaveContext.cutscene_trigger = 2;
            gSaveContext.unk_13C7 = 0;
            break;
        }
    }
}

#ifdef NON_MATCHING
// regalloc differences
void Cutscene_HandleConditionalTriggers(GlobalContext* globalCtx) {
    osSyncPrintf("\ngame_info.mode=[%d] restart_flag", gSaveContext.respawn_flag);

    if ((gSaveContext.game_mode == 0) && (gSaveContext.respawn_flag <= 0) && (gSaveContext.cutscene_index < 0xFFF0)) {
        if ((gSaveContext.entrance_index == 0x01E1) && !Flags_GetEventChkInf(0xAC)) {
            Flags_SetEventChkInf(0xAC);
            gSaveContext.entrance_index = 0x0123;
            gSaveContext.cutscene_index = 0xFFF0;
        } else if ((gSaveContext.entrance_index == 0x00DB) && LINK_IS_ADULT &&
                   (gSaveContext.event_chk_inf[4] & 0x0100) && (gSaveContext.event_chk_inf[4] & 0x0200) &&
                   (gSaveContext.event_chk_inf[4] & 0x0400) && !Flags_GetEventChkInf(0xAA)) {
            Flags_SetEventChkInf(0xAA);
            gSaveContext.cutscene_index = 0xFFF0;
        } else if ((gSaveContext.entrance_index == 0x05E0) && !Flags_GetEventChkInf(0xC1)) {
            Flags_SetEventChkInf(0xC1);
            Item_Give(globalCtx, ITEM_OCARINA_FAIRY);
            gSaveContext.entrance_index = 0x011E;
            gSaveContext.cutscene_index = 0xFFF0;
        } else if ((gBitFlags[3] & gSaveContext.quest_items) && (gBitFlags[4] & gSaveContext.quest_items) &&
                   LINK_IS_ADULT && !Flags_GetEventChkInf(0xC4) &&
                   (gEntranceTable[gSaveContext.entrance_index].scene == 67)) {
            Flags_SetEventChkInf(0xC4);
            gSaveContext.entrance_index = 0x0053;
            gSaveContext.cutscene_index = 0xFFF8;
        } else if (!Flags_GetEventChkInf(0xC7) && (gEntranceTable[gSaveContext.entrance_index].scene == 79)) {
            Flags_SetEventChkInf(0xC7);
            gSaveContext.entrance_index = 0x0517;
            gSaveContext.cutscene_index = 0xFFF0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_demo/Cutscene_HandleConditionalTriggers.s")
#endif

void Cutscene_SetSegment(GlobalContext* globalCtx, u32 segment) {
    if (SEGMENT_NUMBER(segment) != 0) {
        globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(segment);
    } else {
        globalCtx->csCtx.segment = (void*)segment;
    }
}
