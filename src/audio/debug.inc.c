u32 sDebugPadHold;
u32 sDebugPadBtnLast;
u32 sDebugPadPress;
s32 sAudioUpdateTaskStart;
s32 sAudioUpdateTaskEnd;

f32 D_80131C8C = 0.0f;
f32 sAudioUpdateDuration = 0.0f;
f32 sAudioUpdateDurationMax = 0.0f;
u8 sAudioDebugEverOpened = 0;
u8 sAudioSfxMuted = 0;
u8 sAudioDebugPage = 0;
u8 sAudioSndContSel = 0;
u8 sAudioDebugTextColor = 7;
char sAudioDebugPageNames[15][23] = {
    "Non",
    "Sound Control",
    "Spec Info",
    "Heap Info",
    "Grp Track Info",
    "Sub Track Info",
    "Channel Info",
    "Interface Info",
    "SE Flag Swap",
    "Block Change BGM",
    "Natural Sound Control",
    "Ocarina Test",
    "SE Parameter Change",
    "Scroll Print",
    "Free Area",
};
u16 sAudioSndContWork[11] = { 0 };
u16 sAudioSndContWorkLims[11] = { 128, 128, 7, 512, 4, 2, 16, 32, 2, 2, 2 };
char sSfxBankNames[7][11] = { "PLAYER", "ITEM", "ENVIROMENT", "ENEMY", "SYSTEM", "OCARINA", "VOICE" };
char sSoundModeNames[5][10] = { "W-STEREO", "HEADPHONE", "3D SOUND", "MONO", "" };
s8 sAudioIntInfoX = 0;
s8 sAudioIntInfoY = 0;
s8 sAudioIntInfoSel = 0;
s8 sAudioIntInfoBankPage[7] = { 0, 0, 2, 2, 0, 0, 0 };
u8 sAudioScrPrtSel = 0;
u8 sAudioScrPrtInd = 0;
u8 sAudioScrPrtOverflow = 0;
s8 sAudioScrPrtX = 26;
s8 sAudioScrPrtY = 1;
u8 sAudioScrPrtWork[11] = { 1, 19, 6, 0, 0, 0, 0, 0, 0, 0, 1 };
u8 sAudioScrPrtWorkLims[11] = { 2, SCROLL_PRINT_BUF_SIZE, 8, 2, 2, 2, 2, 2, 2, 2, 2 };
u8 sAudioSubTrackInfoSpec = 0;
u8 sAudioSfxSwapIsEditing = 0;
u8 sAudioSfxSwapSel = 0;
u8 sAudioSfxSwapNibbleSel = 0;
char sAudioSfxSwapModeNames[2][5] = { "SWAP", "ADD" };
u8 sAudioSfxParamChgSel = 0;
u8 sAudioSfxParamChgBitSel = 0;
u16 sAudioSfxParamChgWork[4] = { 0 };
u8 sAudioSubTrackInfoPlayerSel = SEQ_PLAYER_BGM_MAIN;
u8 sAudioSubTrackInfoChannelSel = 0;
u8 sSeqPlayerPeakNumLayers[20] = { 0 };
char sAudioSceneNames[3][2] = { "A", "S", "X" };
u8 sAudioBlkChgBgmWork[2] = { 0 };
u8 sAudioBlkChgBgmSel = 0;
char sBoolStrs[3][5] = { "OFF", "ON", "STBY" };
u8 sAudioNatureFailed = false;
u8 sPeakNumNotes = 0;

void AudioDebug_SetInput(void) {
    Input inputs[MAXCONTROLLERS];
    u32 btn;

    PadMgr_RequestPadData(&gPadMgr, inputs, false);
    btn = inputs[3].cur.button;
    sDebugPadHold = btn & 0xFFFF;
    sDebugPadPress = (btn ^ sDebugPadBtnLast) & btn;
    sDebugPadBtnLast = btn;
}

char* AudioDebug_ToStringBinary(u32 num, u8 bits) {
    u8 i;
    u32 flg = 1;

    for (i = 0; i < bits; flg *= 2, i++) {
        if (num & flg) {
            sBinToStrBuf[bits - i - 1] = '1';
        } else {
            sBinToStrBuf[bits - i - 1] = '0';
        }
    }

    sBinToStrBuf[bits] = '\0';
    return sBinToStrBuf;
}

void AudioDebug_Draw(GfxPrint* printer) {
    s32 pad[3];
    u8 i;
    u8 j;
    u8 ctr;
    u8 ctr2;
    s8 k;
    s8 k2;
    s8 ind;
    u8 numEnabledNotes = 0;
    char digitStr[2] = "1";

#define SETCOL_COMMON(v, r, g, b) \
    GfxPrint_SetColor(printer, ((v & 4) >> 2) * (r), ((v & 2) >> 1) * (g), (v & 1) * (b), 255)
#define SETCOL(r, g, b) SETCOL_COMMON(sAudioDebugTextColor, r, g, b)
#define SETCOL_SCROLLPRINT(r, g, b) SETCOL_COMMON(sAudioScrPrtWork[2], r, g, b)

    sAudioDebugEverOpened = true;
    GfxPrint_SetPos(printer, 3, 2);
    SETCOL(255, 255, 255);
    GfxPrint_Printf(printer, "Audio Debug Mode");

    GfxPrint_SetPos(printer, 3, 3);
    GfxPrint_Printf(printer, "- %s -", sAudioDebugPageNames[sAudioDebugPage]);

    for (i = 0; i < gAudioSpecs[gAudioSpecId].numNotes; i++) {
        if (gAudioCtx.notes[i].noteSubEu.bitField0.enabled == 1) {
            numEnabledNotes++;
        }
    }

    if (sPeakNumNotes < numEnabledNotes) {
        sPeakNumNotes = numEnabledNotes;
    }
    if (sAudioSpecPeakNumNotes[gAudioSpecId] < numEnabledNotes) {
        sAudioSpecPeakNumNotes[gAudioSpecId] = numEnabledNotes;
    }

    if (sAudioScrPrtWork[0] != 0) {
        GfxPrint_SetPos(printer, sAudioScrPrtX, sAudioScrPrtY);
        SETCOL_SCROLLPRINT(200, 200, 200);
        GfxPrint_Printf(printer, "Audio ScrPrt");

        ind = sAudioScrPrtInd;
        for (k = 0; k < sAudioScrPrtWork[1] + 1; k++) {
            if (ind == 0) {
                if (sAudioScrPrtOverflow == 1) {
                    ind = SCROLL_PRINT_BUF_SIZE - 1;
                } else {
                    k = sAudioScrPrtWork[1] + 1; // "break;"
                }
            } else {
                ind--;
            }
            if (k != sAudioScrPrtWork[1] + 1) {
                if ((ind % 5) != 0) {
                    SETCOL_SCROLLPRINT(180, 180, 180);
                } else {
                    SETCOL_SCROLLPRINT(120, 120, 120);
                }
                GfxPrint_SetPos(printer, 2 + sAudioScrPrtX, sAudioScrPrtY + sAudioScrPrtWork[1] + 1 - k);
                GfxPrint_Printf(printer, "%s", sAudioScrPrtBuf[ind].str);

                GfxPrint_SetPos(printer, 7 + sAudioScrPrtX, sAudioScrPrtY + sAudioScrPrtWork[1] + 1 - k);
                GfxPrint_Printf(printer, "%04X", sAudioScrPrtBuf[ind].num);
            }
        }
    }

    switch (sAudioDebugPage) {
        case PAGE_NON:
            GfxPrint_SetPos(printer, 3, 4);
            SETCOL(255, 64, 64);
            GfxPrint_Printf(printer, "BGM CANCEL:%s", sBoolStrs[sAudioSndContWork[5]]);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "SE MUTE:%s", sBoolStrs[sAudioSfxMuted]);

            GfxPrint_SetPos(printer, 18, 4);
            SETCOL(255, 255, 255);
            GfxPrint_Printf(printer, "PUSH CONT-4 A-BTN");

            ind = (s8)sAudioSndContWork[2];
            i = gSfxBanks[ind][0].next;
            j = 0;
            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "SE HANDLE:%s", sSfxBankNames[ind]);

            while (i != 0xFF) {
                GfxPrint_SetPos(printer, 3, 7 + j++);
                GfxPrint_Printf(printer, "%02x %04x %02x %08x", i, gSfxBanks[ind][i].sfxId, gSfxBanks[ind][i].state,
                                gSfxBanks[ind][i].priority);
                i = gSfxBanks[ind][i].next;
            }
            break;

        case PAGE_SOUND_CONTROL:
            GfxPrint_SetPos(printer, 2, 4 + sAudioSndContSel);
            SETCOL(127, 255, 127);
            GfxPrint_Printf(printer, "*");

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "Seq 0  : %2x", sAudioSndContWork[0]);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "Seq 1  : %2x", sAudioSndContWork[1]);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "SE HD  : %2x %s", sAudioSndContWork[2], sSfxBankNames[sAudioSndContWork[2]]);

            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "SE No. :%3x", sAudioSndContWork[3]);

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(printer, "S-Out  : %2x %s", sAudioSndContWork[4], sSoundModeNames[sAudioSndContWork[4]]);

            GfxPrint_SetPos(printer, 3, 9);
            GfxPrint_Printf(printer, "BGM Ent: %2x", sAudioSndContWork[5]);

            GfxPrint_SetPos(printer, 3, 10);
            GfxPrint_Printf(printer, "Spec   : %2x", sAudioSndContWork[6]);

            GfxPrint_SetPos(printer, 3, 11);
            GfxPrint_Printf(printer, "Na Snd : %2x", sAudioSndContWork[7]);

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "Cam Wt : %s", sBoolStrs[sAudioSndContWork[8]]);

            GfxPrint_SetPos(printer, 3, 13);
            GfxPrint_Printf(printer, "Lnk Wt : %s", sBoolStrs[sAudioSndContWork[9]]);

            GfxPrint_SetPos(printer, 3, 14);
            GfxPrint_Printf(printer, "SE Ent : %2x", sAudioSndContWork[10]);
            break;

        case PAGE_INTERFACE_INFO:
            ind = 0;
            for (k = 0; k < 7; k++) {
                if (k == sAudioIntInfoSel) {
                    SETCOL(255, 127, 127);
                } else {
                    SETCOL(255, 255, 255);
                }
                GfxPrint_SetPos(printer, 2 + sAudioIntInfoX, 4 + ind + sAudioIntInfoY);
                GfxPrint_Printf(printer, "%s <%d>", sSfxBankNames[k], sAudioIntInfoBankPage[k]);

                for (k2 = 0; k2 < gChannelsPerBank[gSfxChannelLayout][k]; k2++) {
#define entryIndex (gActiveSfx[k][k2].entryIndex)
#define entry (&gSfxBanks[k][entryIndex])
#define chan (gAudioCtx.seqPlayers[SEQ_PLAYER_SFX].channels[entry->channelIndex])
                    GfxPrint_SetPos(printer, 2 + sAudioIntInfoX, 5 + ind + sAudioIntInfoY);
                    if (sAudioIntInfoBankPage[k] == 1) {
                        if ((entryIndex != 0xFF) &&
                            ((entry->state == SFX_STATE_PLAYING_1) || (entry->state == SFX_STATE_PLAYING_2))) {
                            GfxPrint_Printf(printer, "%2X %5d %5d %5d %02X %04X %04X", entryIndex, (s32)*entry->posX,
                                            (s32)*entry->posY, (s32)*entry->posZ, entry->sfxImportance,
                                            entry->sfxParams, entry->sfxId);
                        } else {
                            GfxPrint_Printf(printer, "FF ----- ----- ----- -- ---- ----");
                        }
                    } else if (sAudioIntInfoBankPage[k] == 2) {
                        if ((entryIndex != 0xFF) &&
                            ((entry->state == SFX_STATE_PLAYING_1) || (entry->state == SFX_STATE_PLAYING_2))) {
                            GfxPrint_Printf(printer, "%2X %5d %5d %5d %3d %3d %04X", entryIndex, (s32)*entry->posX,
                                            (s32)*entry->posY, (s32)*entry->posZ, (s32)(chan->volume * 127.1f),
                                            chan->newPan, entry->sfxId);
                        } else {
                            GfxPrint_Printf(printer, "FF ----- ----- ----- --- --- ----");
                        }
                    } else if (sAudioIntInfoBankPage[k] == 3) {
                        if ((entryIndex != 0xFF) &&
                            ((entry->state == SFX_STATE_PLAYING_1) || (entry->state == SFX_STATE_PLAYING_2))) {
                            GfxPrint_Printf(printer, "%2X %5d %5d %5d %3d %3d %04X", entryIndex, (s32)*entry->posX,
                                            (s32)*entry->posY, (s32)*entry->posZ, (s32)(chan->freqScale * 100.0f),
                                            chan->targetReverbVol, entry->sfxId);
                        } else {
                            GfxPrint_Printf(printer, "FF ----- ----- ----- --- --- ----");
                        }
                    } else if (sAudioIntInfoBankPage[k] == 4) {
                        if ((entryIndex != 0xFF) &&
                            ((entry->state == SFX_STATE_PLAYING_1) || (entry->state == SFX_STATE_PLAYING_2))) {
                            GfxPrint_Printf(printer, "%2X %04X", entryIndex, entry->sfxId);
                        } else {
                            GfxPrint_Printf(printer, "FF ----");
                        }
                    }
#undef entryIndex
#undef entry
#undef chan

                    if (sAudioIntInfoBankPage[k] != 0) {
                        ind++;
                    }
                }
                ind++;
            }
            break;

        case PAGE_SCROLL_PRINT:
            GfxPrint_SetPos(printer, 2, 4 + sAudioScrPrtSel);
            SETCOL(255, 255, 255);
            GfxPrint_Printf(printer, "*");

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "Swicth  : %d", sAudioScrPrtWork[0]);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "Lines   : %d", sAudioScrPrtWork[1] + 1);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "Color   : %d", sAudioScrPrtWork[2]);

            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "%s  : %d", sSfxBankNames[0], sAudioScrPrtWork[3]);

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(printer, "%s    : %d", sSfxBankNames[1], sAudioScrPrtWork[4]);

            GfxPrint_SetPos(printer, 3, 9);
            GfxPrint_Printf(printer, "ENVRONM : %d", sAudioScrPrtWork[5]);

            GfxPrint_SetPos(printer, 3, 10);
            GfxPrint_Printf(printer, "%s   : %d", sSfxBankNames[3], sAudioScrPrtWork[6]);

            GfxPrint_SetPos(printer, 3, 11);
            GfxPrint_Printf(printer, "%s  : %d", sSfxBankNames[4], sAudioScrPrtWork[7]);

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "%s : %d", sSfxBankNames[5], sAudioScrPrtWork[8]);

            GfxPrint_SetPos(printer, 3, 13);
            GfxPrint_Printf(printer, "%s    : %d", sSfxBankNames[6], sAudioScrPrtWork[9]);

            GfxPrint_SetPos(printer, 3, 14);
            GfxPrint_Printf(printer, "SEQ ENT : %d", sAudioScrPrtWork[10]);
            break;

        case PAGE_SFX_SWAP:
            GfxPrint_SetPos(printer, 3, 4);
            SETCOL(255, 255, 255);
            if (gAudioSfxSwapOff) {
                GfxPrint_Printf(printer, "SWAP OFF");
            }

            if (sAudioSfxSwapIsEditing == 0) {
                SETCOL(255, 255, 255);
            } else {
                SETCOL(127, 127, 127);
            }
            GfxPrint_SetPos(printer, 2, 6 + sAudioSfxSwapSel);
            GfxPrint_Printf(printer, "*");

            ctr = sAudioSfxSwapNibbleSel;
            if (sAudioSfxSwapNibbleSel >= 4) {
                ctr++;
            }
            if (sAudioSfxSwapIsEditing == 1) {
                SETCOL(255, 255, 255);
                GfxPrint_SetPos(printer, 3 + ctr, 5);
                GfxPrint_Printf(printer, "V");
            }

            for (i = 0; i < 10; i++) {
                if (i == sAudioSfxSwapSel) {
                    if (sAudioSfxSwapIsEditing == 0) {
                        SETCOL(192, 192, 192);
                    } else {
                        SETCOL(255, 255, 255);
                    }
                } else if (sAudioSfxSwapIsEditing == 0) {
                    SETCOL(144, 144, 144);
                } else {
                    SETCOL(96, 96, 96);
                }
                GfxPrint_SetPos(printer, 3, 6 + i);
                GfxPrint_Printf(printer, "%04x %04x %s", gAudioSfxSwapSource[i], gAudioSfxSwapTarget[i],
                                sAudioSfxSwapModeNames[gAudioSfxSwapMode[i]]);
            }
            break;

        case PAGE_SUB_TRACK_INFO:
            GfxPrint_SetPos(printer, 3, 4);
            SETCOL(255, 255, 255);
            GfxPrint_Printf(printer, "Group Track:%d", sAudioSubTrackInfoPlayerSel);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "Sub Track  :%d", sAudioSubTrackInfoChannelSel);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "TRK NO. ");

            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "ENTRY   ");

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(printer, "MUTE    ");

            GfxPrint_SetPos(printer, 3, 9);
            GfxPrint_Printf(printer, "OPENNOTE");

            ctr2 = 0;
            for (i = 0; i < 16; i++) {
                if (i == sAudioSubTrackInfoChannelSel) {
                    SETCOL(255, 255, 255);
                } else {
                    SETCOL(200, 200, 200);
                }
                GfxPrint_SetPos(printer, 15 + i, 6);
                GfxPrint_Printf(printer, "%1X", i);

                GfxPrint_SetPos(printer, 15 + i, 7);
                if (gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel].channels[i]->enabled) {
                    GfxPrint_Printf(printer, "O");
                } else {
                    GfxPrint_Printf(printer, "X");
                }

                GfxPrint_SetPos(printer, 15 + i, 8);
                if (gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel].channels[i]->muted) {
                    GfxPrint_Printf(printer, "O");
                } else {
                    GfxPrint_Printf(printer, "X");
                }

                GfxPrint_SetPos(printer, 15 + i, 9);
                ctr = 0;
                for (j = 0; j < 4; j++) {
                    if (gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel].channels[i]->layers[j] != NULL) {
                        ctr++;
                    }
                }

                GfxPrint_Printf(printer, "%1X", ctr);
                ctr2 += ctr;
            }

            SETCOL(255, 255, 255);
            if (sSeqPlayerPeakNumLayers[sAudioSubTrackInfoPlayerSel] < ctr2) {
                sSeqPlayerPeakNumLayers[sAudioSubTrackInfoPlayerSel] = ctr2;
            }
            GfxPrint_SetPos(printer, 16 + i, 9);
            GfxPrint_Printf(printer, "%2d,%2d", ctr2, sSeqPlayerPeakNumLayers[sAudioSubTrackInfoPlayerSel]);

            GfxPrint_SetPos(printer, 3, 11);
            GfxPrint_Printf(printer, "VOL     ");

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "E VOL   ");

            GfxPrint_SetPos(printer, 3, 13);
            GfxPrint_Printf(printer, "BANK ID ");

            GfxPrint_SetPos(printer, 3, 14);
            GfxPrint_Printf(printer, "PROG    ");

            GfxPrint_SetPos(printer, 3, 15);
            GfxPrint_Printf(printer, "PAN    ");

            GfxPrint_SetPos(printer, 3, 16);
            GfxPrint_Printf(printer, "PANPOW  ");

            GfxPrint_SetPos(printer, 3, 17);
            GfxPrint_Printf(printer, "FXMIX   ");

            GfxPrint_SetPos(printer, 3, 18);
            GfxPrint_Printf(printer, "PRIO    ");

            GfxPrint_SetPos(printer, 3, 19);
            GfxPrint_Printf(printer, "VIB PIT ");

            GfxPrint_SetPos(printer, 3, 20);
            GfxPrint_Printf(printer, "VIB DEP ");

            GfxPrint_SetPos(printer, 3, 21);
            GfxPrint_Printf(printer, "TUNE    ");

            GfxPrint_SetPos(printer, 3, 22);
            GfxPrint_Printf(printer, "TUNE    ");

            for (i = 0; i < 8; i++) {
                GfxPrint_SetPos(printer, 15 + 3 * i, 22);
                GfxPrint_Printf(printer, "%02X ",
                                (u8)gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                    .channels[sAudioSubTrackInfoChannelSel]
                                    ->seqScriptIO[i]);
            }

            if (gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel].channels[sAudioSubTrackInfoChannelSel]->enabled) {
                GfxPrint_SetPos(printer, 15, 11);
                GfxPrint_Printf(printer, "%d",
                                (u8)(gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                         .channels[sAudioSubTrackInfoChannelSel]
                                         ->volume *
                                     127.1));

                GfxPrint_SetPos(printer, 15, 12);
                GfxPrint_Printf(printer, "%d",
                                (u8)(gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                         .channels[sAudioSubTrackInfoChannelSel]
                                         ->volumeScale *
                                     127.1));

                GfxPrint_SetPos(printer, 15, 13);
                GfxPrint_Printf(
                    printer, "%X",
                    gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel].channels[sAudioSubTrackInfoChannelSel]->fontId);

                ctr = (u8)(gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
                               .channels[sAudioSubTrackInfoChannelSel]
                               ->instOrWave);

                if (ctr == 0) {
                    ctr2 = 0x7F;
                } else if (ctr < 0x80) {
                    ctr2 = ctr - 1;
                } else {
                    ctr2 = ctr;
                }

                GfxPrint_SetPos(printer, 15, 14);
                GfxPrint_Printf(printer, "%d", ctr2);

                GfxPrint_SetPos(printer, 15, 15);
                GfxPrint_Printf(
                    printer, "%d",
                    gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel].channels[sAudioSubTrackInfoChannelSel]->newPan);

                GfxPrint_SetPos(printer, 15, 16);
                GfxPrint_Printf(printer, "%d",
                                gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                    .channels[sAudioSubTrackInfoChannelSel]
                                    ->panChannelWeight);

                GfxPrint_SetPos(printer, 15, 17);
                GfxPrint_Printf(printer, "%d",
                                gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                    .channels[sAudioSubTrackInfoChannelSel]
                                    ->targetReverbVol);

                GfxPrint_SetPos(printer, 15, 18);
                GfxPrint_Printf(printer, "%d",
                                gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                    .channels[sAudioSubTrackInfoChannelSel]
                                    ->notePriority);

                GfxPrint_SetPos(printer, 15, 19);
                GfxPrint_Printf(printer, "%d",
                                (u8)(gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                         .channels[sAudioSubTrackInfoChannelSel]
                                         ->vibratoRateTarget /
                                     32));

                GfxPrint_SetPos(printer, 15, 20);
                GfxPrint_Printf(printer, "%d",
                                (u8)(gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                         .channels[sAudioSubTrackInfoChannelSel]
                                         ->vibratoDepthTarget /
                                     8));

                GfxPrint_SetPos(printer, 15, 21);
                GfxPrint_Printf(printer, "%d",
                                (u16)(gAudioCtx.seqPlayers[sAudioSubTrackInfoPlayerSel]
                                          .channels[sAudioSubTrackInfoChannelSel]
                                          ->freqScale *
                                      100));
            }
            break;

        case PAGE_HEAP_INFO:
            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "TOTAL  %d", gAudioHeapInitSizes.heapSize);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "DRIVER %05X / %05X",
                            gAudioCtx.miscPool.curRamAddr - gAudioCtx.miscPool.startRamAddr, gAudioCtx.miscPool.size);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(
                printer, "AT-SEQ %02X-%02X (%05X-%05X / %05X)", (u8)gAudioCtx.seqCache.temporary.entries[0].id,
                (u8)gAudioCtx.seqCache.temporary.entries[1].id, gAudioCtx.seqCache.temporary.entries[0].size,
                gAudioCtx.seqCache.temporary.entries[1].size, gAudioCtx.seqCache.temporary.pool.size);

            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(
                printer, "AT-BNK %02X-%02X (%05X-%05X / %05X)", (u8)gAudioCtx.fontCache.temporary.entries[0].id,
                (u8)gAudioCtx.fontCache.temporary.entries[1].id, gAudioCtx.fontCache.temporary.entries[0].size,
                gAudioCtx.fontCache.temporary.entries[1].size, gAudioCtx.fontCache.temporary.pool.size);

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(printer, "ST-SEQ %02Xseqs  (%05X / %06X)", gAudioCtx.seqCache.persistent.numEntries,
                            gAudioCtx.seqCache.persistent.pool.curRamAddr -
                                gAudioCtx.seqCache.persistent.pool.startRamAddr,
                            gAudioCtx.seqCache.persistent.pool.size);

            for (k = 0; (u32)k < gAudioCtx.seqCache.persistent.numEntries; k++) {
                GfxPrint_SetPos(printer, 3 + 3 * k, 9);
                GfxPrint_Printf(printer, "%02x", gAudioCtx.seqCache.persistent.entries[k].id);
            }

            GfxPrint_SetPos(printer, 3, 10);
            GfxPrint_Printf(printer, "ST-BNK %02Xbanks (%05X / %06X)", gAudioCtx.fontCache.persistent.numEntries,
                            gAudioCtx.fontCache.persistent.pool.curRamAddr -
                                gAudioCtx.fontCache.persistent.pool.startRamAddr,
                            gAudioCtx.fontCache.persistent.pool.size);

            for (k = 0; (u32)k < gAudioCtx.fontCache.persistent.numEntries; k++) {
                GfxPrint_SetPos(printer, 3 + 3 * k, 11);
                GfxPrint_Printf(printer, "%02x", gAudioCtx.fontCache.persistent.entries[k].id);
            }

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "E-MEM  %05X / %05X",
                            gAudioCtx.permanentPool.curRamAddr - gAudioCtx.permanentPool.startRamAddr,
                            gAudioCtx.permanentPool.size);
            break;

        case PAGE_BLOCK_CHANGE_BGM:
            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "BGM No.    %02X", sAudioBlkChgBgmWork[0]);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "SCENE SET  %02X %s", sAudioBlkChgBgmWork[1],
                            sAudioSceneNames[sAudioBlkChgBgmWork[1]]);

            SETCOL(0x64, 255, 0x64);
            GfxPrint_SetPos(printer, 2, 4 + sAudioBlkChgBgmSel);
            GfxPrint_Printf(printer, "*");

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "NEXT SCENE %02X %s", (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].seqScriptIO[2],
                            sAudioSceneNames[(u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].seqScriptIO[2]]);

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(printer, "NOW SCENE  %02X %s", (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].seqScriptIO[4],
                            sAudioSceneNames[(u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].seqScriptIO[4]]);

            GfxPrint_SetPos(printer, 3, 9);
            GfxPrint_Printf(printer, "NOW BLOCK  %02X",
                            (gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].seqScriptIO[5] + 1) & 0xFF);

            GfxPrint_SetPos(printer, 3, 11);
            GfxPrint_Printf(printer, "PORT");

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "%02X %02X %02X %02X",
                            (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].seqScriptIO[0],
                            (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].seqScriptIO[1],
                            (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].seqScriptIO[2],
                            (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].seqScriptIO[3]);

            GfxPrint_SetPos(printer, 3, 13);
            GfxPrint_Printf(printer, "%02X %02X %02X %02X",
                            (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].seqScriptIO[4],
                            (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].seqScriptIO[5],
                            (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].seqScriptIO[6],
                            (u8)gAudioCtx.seqPlayers[SEQ_PLAYER_BGM_MAIN].seqScriptIO[7]);
            break;

        case PAGE_OCARINA_TEST:
            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "SEQ INFO  : %2d %02x %d", sPlaybackStaff.buttonIndex, sPlaybackStaff.state,
                            sPlaybackStaff.pos);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "PLAY INFO : %2d %02x %d", sPlayingStaff.buttonIndex, sPlayingStaff.state,
                            sPlayingStaff.pos);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "8note REC POINTER : %08x", gScarecrowSpawnSongPtr);

            ctr = 0;
            for (j = 0; j < 4; j++) {
                for (i = 0; i < 8; i++) {
                    GfxPrint_SetPos(printer, 3 + 3 * i, 7 + j);
                    GfxPrint_Printf(printer, "%02x", gScarecrowSpawnSongPtr[ctr++]);
                }
            }

            GfxPrint_SetPos(printer, 3, 24);
            GfxPrint_Printf(printer, "OCA:%02x SEQ:%04x PLAY:%02x REC:%02x", sOcarinaInstrumentId, sOcarinaFlags,
                            sPlaybackState, sRecordingState);
            break;

        case PAGE_SFX_PARAMETER_CHANGE:
            GfxPrint_SetPos(printer, 2, 4 + sAudioSfxParamChgSel);
            SETCOL(127, 255, 127);
            GfxPrint_Printf(printer, "*");

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "SE HD  : %02x %s", sAudioSfxParamChgWork[0],
                            sSfxBankNames[sAudioSfxParamChgWork[0]]);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "SE No. : %02x", sAudioSfxParamChgWork[1]);

            GfxPrint_SetPos(printer, 20, 6);
            GfxPrint_Printf(printer, "       : %04x",
                            gSfxParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].params);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(
                printer, "SE SW    %s",
                AudioDebug_ToStringBinary(gSfxParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].params, 16));

            SETCOL(127, 255, 127);
            digitStr[0] = (char)('0' + ((gSfxParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].params >>
                                         (15 - sAudioSfxParamChgBitSel)) &
                                        1));
            GfxPrint_SetPos(printer, 12 + sAudioSfxParamChgBitSel, 6);
            GfxPrint_Printf(printer, "%s", digitStr);

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "SE PR  : %02x",
                            gSfxParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].importance);
            break;

        case PAGE_FREE_AREA:
            GfxPrint_SetPos(printer, 3, 4);
            SETCOL(255, 255, 255);
            GfxPrint_Printf(printer, "env_fx %d code_fx %d SPEC %d", sAudioEnvReverb, sAudioCodeReverb, gAudioSpecId);

            if (sAudioUpdateTaskStart == sAudioUpdateTaskEnd) {
                sAudioUpdateDuration = OS_CYCLES_TO_NSEC(sAudioUpdateEndTime - sAudioUpdateStartTime) / (1e9f / 20);
                if (sAudioUpdateDurationMax < sAudioUpdateDuration) {
                    sAudioUpdateDurationMax = sAudioUpdateDuration;
                }
            }

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "SOUND GAME FRAME NOW %f", sAudioUpdateDuration);

            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "SOUND GAME FRAME MAX %f", sAudioUpdateDurationMax);

            GfxPrint_SetPos(printer, 3, 9);
            GfxPrint_Printf(printer, "SWITCH BGM MODE %d %d %d (FLAG %d)", sPrevSeqMode, sNumFramesStill,
                            sNumFramesMoving, sSeqModeInput);

            GfxPrint_SetPos(printer, 3, 10);
            GfxPrint_Printf(printer, "ENEMY DIST %f VOL %3d", sAudioEnemyDist, sAudioEnemyVol);

            GfxPrint_SetPos(printer, 3, 11);
            GfxPrint_Printf(printer, "GANON DIST VOL %3d", sGanonsTowerVol);

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "DEMO FLAG %d", sAudioCutsceneFlag);

            GfxPrint_SetPos(printer, 3, 12);
            if (sIsMalonSinging == true) {
                GfxPrint_Printf(printer, "MARON BGM DIST %f", sMalonSingingDist);
                sIsMalonSinging = false;
            }

            GfxPrint_SetPos(printer, 3, 23);
            if (sAudioNatureFailed != false) {
                GfxPrint_Printf(printer, "NATURE FAILED %01x", sAudioNatureFailed);
            }

            GfxPrint_SetPos(printer, 3, 24);
            if (sSariaBgmPtr != NULL) {
                GfxPrint_Printf(printer, "SARIA BGM PTR %08x", sSariaBgmPtr);
            }

            GfxPrint_SetPos(printer, 3, 25);
            GfxPrint_Printf(printer, "POLI %d(%d)", sPeakNumNotes, numEnabledNotes);

            for (i = 0; i < 11; i++) {
                GfxPrint_SetPos(printer, 3 + 3 * i, 26);
                GfxPrint_Printf(printer, "%d", sAudioSpecPeakNumNotes[i]);
            }
            break;
    }
#undef SETCOL_COMMON
#undef SETCOL
#undef SETCOL_SCROLLPRINT
}

void AudioDebug_ProcessInput_SndCont(void) {
    u16 step = 1;

    if (CHECK_BTN_ANY(sDebugPadHold, BTN_CDOWN)) {
        if (sAudioSndContWorkLims[sAudioSndContSel] >= 16) {
            step = 16;
        }
    } else if (CHECK_BTN_ANY(sDebugPadHold, BTN_CLEFT)) {
        if (sAudioSndContWorkLims[sAudioSndContSel] >= 16) {
            step = 8;
        }
    } else if (CHECK_BTN_ANY(sDebugPadHold, BTN_CUP)) {
        sAudioSndContWork[sAudioSndContSel] = 0;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
        if (sAudioSndContSel > 0) {
            sAudioSndContSel--;
        } else {
            sAudioSndContSel = 10;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
        if (sAudioSndContSel < 10) {
            sAudioSndContSel++;
        } else {
            sAudioSndContSel = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
        if (sAudioSndContWork[sAudioSndContSel] >= step) {
            if (1) {
                sAudioSndContWork[sAudioSndContSel] -= step;
            }
        } else {
            sAudioSndContWork[sAudioSndContSel] += sAudioSndContWorkLims[sAudioSndContSel] - step;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
        if (sAudioSndContWork[sAudioSndContSel] + step < sAudioSndContWorkLims[sAudioSndContSel]) {
            sAudioSndContWork[sAudioSndContSel] += step;
        } else {
            sAudioSndContWork[sAudioSndContSel] += step - sAudioSndContWorkLims[sAudioSndContSel];
        }
    }

    if (sAudioSndContSel == 8) {
        if (sAudioSndContWork[sAudioSndContSel] != 0) {
            Audio_SetExtraFilter(0x20);
        } else {
            Audio_SetExtraFilter(0);
        }
    }

    if (sAudioSndContSel == 9) {
        if (sAudioSndContWork[sAudioSndContSel] != 0) {
            Audio_SetBaseFilter(0x20);
        } else {
            Audio_SetBaseFilter(0);
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
        switch (sAudioSndContSel) {
            case 0:
            case 1:
                SEQCMD_PLAY_SEQUENCE(sAudioSndContSel, 0, 0, sAudioSndContWork[sAudioSndContSel]);
                break;
            case 2:
            case 3:
                Audio_PlaySfxGeneral(((sAudioSndContWork[2] << 12) & 0xFFFF) + sAudioSndContWork[3] + SFX_FLAG,
                                     &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultReverb);
                break;
            case 4:
                func_800F6700(sAudioSndContWork[sAudioSndContSel]);
                break;
            case 5:
                SEQCMD_DISABLE_PLAY_SEQUENCES(sAudioSndContWork[sAudioSndContSel]);
                break;
            case 6:
                SEQCMD_RESET_AUDIO_HEAP(0, sAudioSndContWork[sAudioSndContSel]);
                sAudioSubTrackInfoSpec = sAudioSndContWork[6];
                if (sAudioSubTrackInfoPlayerSel > gAudioSpecs[sAudioSubTrackInfoSpec].numSequencePlayers - 1) {
                    sAudioSubTrackInfoPlayerSel = gAudioSpecs[sAudioSubTrackInfoSpec].numSequencePlayers - 1;
                }
                break;
            case 7:
                Audio_PlayNatureAmbienceSequence(sAudioSndContWork[sAudioSndContSel]);
                break;
            case 8:
            case 9:
                break;
            case 10:
                Audio_SetSfxBanksMute(sAudioSndContWork[sAudioSndContSel] * 0x7F);
                break;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
        switch (sAudioSndContSel) {
            case 0:
            case 1:
                SEQCMD_STOP_SEQUENCE(sAudioSndContSel, 0);
                break;
            case 7:
                SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0);
                break;
            case 2:
            case 3:
                Audio_StopSfxByBank(sAudioSndContWork[2]);
                break;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CDOWN)) {
        if (sAudioSndContSel == 0) {
            if (1) {}
            Audio_PlaySequenceInCutscene(sAudioSndContWork[sAudioSndContSel]);
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CRIGHT)) {
        if (sAudioSndContSel == 0) {
            if (1) {}
            func_800F5ACC(sAudioSndContWork[sAudioSndContSel]);
        }
    }
}

void AudioDebug_ProcessInput_IntInfo(void) {
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CUP)) {
        sAudioIntInfoY--;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CDOWN)) {
        sAudioIntInfoY++;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CLEFT)) {
        sAudioIntInfoX--;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CRIGHT)) {
        sAudioIntInfoX++;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
        sAudioIntInfoX = 0;
        sAudioIntInfoY = 0;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP) && sAudioIntInfoSel > 0) {
        sAudioIntInfoSel--;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN) && sAudioIntInfoSel < 6) {
        sAudioIntInfoSel++;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT) && sAudioIntInfoBankPage[sAudioIntInfoSel] > 0) {
        sAudioIntInfoBankPage[sAudioIntInfoSel]--;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT) && sAudioIntInfoBankPage[sAudioIntInfoSel] < 4) {
        sAudioIntInfoBankPage[sAudioIntInfoSel]++;
    }
}

void AudioDebug_ProcessInput_ScrPrt(void) {
    if (sAudioScrPrtWork[0] != 0) {
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_CUP)) {
            sAudioScrPrtY--;
        }
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_CDOWN)) {
            sAudioScrPrtY++;
        }
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_CLEFT)) {
            sAudioScrPrtX--;
        }
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_CRIGHT)) {
            sAudioScrPrtX++;
        }
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
            sAudioScrPrtX = 26;
            sAudioScrPrtY = 1;
            sAudioScrPrtWork[2] = 6;
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
            sAudioScrPrtInd = 0;
            sAudioScrPrtOverflow = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
        if (sAudioScrPrtSel > 0) {
            sAudioScrPrtSel--;
        } else {
            sAudioScrPrtSel = 10;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
        if (sAudioScrPrtSel < 10) {
            sAudioScrPrtSel++;
        } else {
            sAudioScrPrtSel = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
        if (sAudioScrPrtWork[sAudioScrPrtSel] > 0) {
            sAudioScrPrtWork[sAudioScrPrtSel]--;
        } else {
            sAudioScrPrtWork[sAudioScrPrtSel] = sAudioScrPrtWorkLims[sAudioScrPrtSel] - 1;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
        if (sAudioScrPrtWork[sAudioScrPrtSel] < sAudioScrPrtWorkLims[sAudioScrPrtSel] - 1) {
            sAudioScrPrtWork[sAudioScrPrtSel]++;
        } else {
            sAudioScrPrtWork[sAudioScrPrtSel] = 0;
        }
    }

    D_801333F0 = sAudioScrPrtWork[3] + (sAudioScrPrtWork[4] * 2) + (sAudioScrPrtWork[5] * 4) +
                 (sAudioScrPrtWork[6] * 8) + (sAudioScrPrtWork[7] * 0x10) + (sAudioScrPrtWork[8] * 0x20);
}

void AudioDebug_ProcessInput_SfxSwap(void) {
    s16 step;
    u16 val;
    u8 prev;

    if (!sAudioSfxSwapIsEditing) {
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
            if (sAudioSfxSwapSel > 0) {
                sAudioSfxSwapSel--;
            } else {
                sAudioSfxSwapSel = 9;
            }
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
            if (sAudioSfxSwapSel < 9) {
                sAudioSfxSwapSel++;
            } else {
                sAudioSfxSwapSel = 0;
            }
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
            sAudioSfxSwapIsEditing = true;
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
            gAudioSfxSwapSource[sAudioSfxSwapSel] = 0;
            gAudioSfxSwapTarget[sAudioSfxSwapSel] = 0;
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_START)) {
            if (sAudioSfxSwapSel != 0) {
                prev = sAudioSfxSwapSel - 1;
            } else {
                prev = 9;
            }
            gAudioSfxSwapSource[sAudioSfxSwapSel] = gAudioSfxSwapSource[prev];
            gAudioSfxSwapTarget[sAudioSfxSwapSel] = gAudioSfxSwapTarget[prev];
        }
    } else {
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
            if (sAudioSfxSwapNibbleSel > 0) {
                sAudioSfxSwapNibbleSel--;
            } else {
                sAudioSfxSwapNibbleSel = 7;
            }
        }
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
            if (sAudioSfxSwapNibbleSel < 7) {
                sAudioSfxSwapNibbleSel++;
            } else {
                sAudioSfxSwapNibbleSel = 0;
            }
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP) || CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
            if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
                step = CHECK_BTN_ANY(sDebugPadHold, BTN_CUP) ? 8 : 1;
            }

            if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
                step = CHECK_BTN_ANY(sDebugPadHold, BTN_CUP) ? -8 : -1;
            }

            if (sAudioSfxSwapNibbleSel < 4) {
                val = gAudioSfxSwapSource[sAudioSfxSwapSel] >> ((3 - sAudioSfxSwapNibbleSel) * 4);
                val = (val + step) & 0xF;
                gAudioSfxSwapSource[sAudioSfxSwapSel] =
                    (gAudioSfxSwapSource[sAudioSfxSwapSel] & ((0xF << ((3 - sAudioSfxSwapNibbleSel) * 4)) ^ 0xFFFF)) +
                    (val << ((3 - sAudioSfxSwapNibbleSel) * 4));
            } else {
                val = gAudioSfxSwapTarget[sAudioSfxSwapSel] >> ((7 - sAudioSfxSwapNibbleSel) * 4);
                val = (val + step) & 0xF;
                gAudioSfxSwapTarget[sAudioSfxSwapSel] =
                    (gAudioSfxSwapTarget[sAudioSfxSwapSel] & ((0xF << ((7 - sAudioSfxSwapNibbleSel) * 4)) ^ 0xFFFF)) +
                    (val << ((7 - sAudioSfxSwapNibbleSel) * 4));
            }
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
            sAudioSfxSwapIsEditing = false;
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
            if (sAudioSfxSwapNibbleSel < 4) {
                gAudioSfxSwapSource[sAudioSfxSwapSel] = 0;
            } else {
                gAudioSfxSwapTarget[sAudioSfxSwapSel] = 0;
            }
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CLEFT)) {
        gAudioSfxSwapOff ^= 1;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CDOWN)) {
        gAudioSfxSwapMode[sAudioSfxSwapSel] ^= 1;
    }
}

void AudioDebug_ProcessInput_SubTrackInfo(void) {
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
        if (sAudioSubTrackInfoPlayerSel != 0) {
            sAudioSubTrackInfoPlayerSel--;
        } else {
            sAudioSubTrackInfoPlayerSel = gAudioSpecs[sAudioSubTrackInfoSpec].numSequencePlayers - 1;
        }
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
        if (sAudioSubTrackInfoPlayerSel < gAudioSpecs[sAudioSubTrackInfoSpec].numSequencePlayers - 1) {
            sAudioSubTrackInfoPlayerSel++;
        } else {
            sAudioSubTrackInfoPlayerSel = SEQ_PLAYER_BGM_MAIN;
        }
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
        sAudioSubTrackInfoChannelSel = (sAudioSubTrackInfoChannelSel - 1) & 0xF;
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
        sAudioSubTrackInfoChannelSel = (sAudioSubTrackInfoChannelSel + 1) & 0xF;
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_START)) {
        sSeqPlayerPeakNumLayers[sAudioSubTrackInfoPlayerSel] = SEQ_PLAYER_BGM_MAIN;
    }
}

void AudioDebug_ProcessInput_HeapInfo(void) {
}

void AudioDebug_ProcessInput_BlkChgBgm(void) {
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
        if (sAudioBlkChgBgmSel > 0) {
            sAudioBlkChgBgmSel--;
        } else {
            sAudioBlkChgBgmSel = 1;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
        if (sAudioBlkChgBgmSel <= 0) {
            sAudioBlkChgBgmSel++;
        } else {
            sAudioBlkChgBgmSel = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
        sAudioBlkChgBgmWork[sAudioBlkChgBgmSel]--;
        if (sAudioBlkChgBgmSel == 1) {
            Audio_SetSequenceMode(sAudioBlkChgBgmWork[1]);
            ; // might be a fake match?
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
        sAudioBlkChgBgmWork[sAudioBlkChgBgmSel]++;
        if (sAudioBlkChgBgmSel == 1) {
            Audio_SetSequenceMode(sAudioBlkChgBgmWork[1]);
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
        AUDIOCMD_SEQPLAYER_SET_IO(SEQ_PLAYER_BGM_MAIN, 0, sAudioBlkChgBgmWork[1]);
        SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 1, 0, sAudioBlkChgBgmWork[0]);
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
        SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 1);
    }
}

void AudioDebug_ProcessInput_OcaTest(void) {
}

void AudioDebug_ProcessInput_SfxParamChg(void) {
    s32 step;
    u16 sfx;

    if (CHECK_BTN_ANY(sDebugPadHold, BTN_CLEFT)) {
        step = 8;
    } else {
        step = 1;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
        if (sAudioSfxParamChgSel > 0) {
            sAudioSfxParamChgSel--;
        } else {
            sAudioSfxParamChgSel = 3;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
        if (sAudioSfxParamChgSel < 3) {
            sAudioSfxParamChgSel++;
        } else {
            sAudioSfxParamChgSel = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
        if (sAudioSfxParamChgSel < 2) {
            if (sAudioSfxParamChgSel == 0) {
                if (sAudioSfxParamChgWork[sAudioSfxParamChgSel] > 0) {
                    sAudioSfxParamChgWork[sAudioSfxParamChgSel]--;
                } else {
                    sAudioSfxParamChgWork[sAudioSfxParamChgSel] = sAudioSndContWorkLims[2] - 1;
                }
            } else {
                sAudioSfxParamChgWork[sAudioSfxParamChgSel] -= step;
                sAudioSfxParamChgWork[sAudioSfxParamChgSel] &= 0x1FF;
            }
        } else if (sAudioSfxParamChgSel == 3) {
            gSfxParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].importance -= step;
        } else {
            sAudioSfxParamChgBitSel = (sAudioSfxParamChgBitSel - 1) & 0xF;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
        if (sAudioSfxParamChgSel < 2) {
            if (sAudioSfxParamChgSel == 0) {
                if (sAudioSfxParamChgWork[sAudioSfxParamChgSel] < (sAudioSndContWorkLims[2] - 1)) {
                    sAudioSfxParamChgWork[sAudioSfxParamChgSel]++;
                } else {
                    sAudioSfxParamChgWork[sAudioSfxParamChgSel] = 0;
                }
            } else {
                sAudioSfxParamChgWork[sAudioSfxParamChgSel] += step;
                sAudioSfxParamChgWork[sAudioSfxParamChgSel] &= 0x1FF;
            }
        } else if (sAudioSfxParamChgSel == 3) {
            gSfxParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].importance += step;
        } else {
            sAudioSfxParamChgBitSel = (sAudioSfxParamChgBitSel + 1) & 0xF;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
        sfx = (u16)(sAudioSfxParamChgWork[0] << 12) + sAudioSfxParamChgWork[1] + SFX_FLAG;
        Audio_PlaySfxGeneral(sfx, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultReverb);
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
        Audio_StopSfxByBank(sAudioSfxParamChgWork[0]);
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CDOWN)) {
        if (sAudioSfxParamChgSel == 2) {
            gSfxParams[sAudioSfxParamChgWork[0]][sAudioSfxParamChgWork[1]].params ^=
                (1 << (0xF - sAudioSfxParamChgBitSel));
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CUP)) {
        if (sAudioSfxParamChgSel < 2) {
            sAudioSfxParamChgWork[sAudioSfxParamChgSel] = 0;
        }
    }
}

void AudioDebug_ScrPrt(const char* str, u16 num) {
    u8 i = 0;

    sAudioScrPrtBuf[sAudioScrPrtInd].num = num;

    while (str[i] != '\0') {
        sAudioScrPrtBuf[sAudioScrPrtInd].str[i] = str[i];
        i++;
    }

    while (i < 5) {
        sAudioScrPrtBuf[sAudioScrPrtInd].str[i] = '\0';
        i++;
    }

    if (sAudioScrPrtInd < 25 - 1) {
        sAudioScrPrtInd++;
    } else {
        sAudioScrPrtInd = 0;
        sAudioScrPrtOverflow = 1;
    }
}

void AudioDebug_ProcessInput(void) {
    if (!sAudioDebugEverOpened) {
        return;
    }

    if (sAudioSfxMuted) {
        Audio_SetSfxBanksMute(0x6F);
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_L)) {
        if (sAudioDebugPage < PAGE_MAX - 1) {
            sAudioDebugPage++;
        } else {
            sAudioDebugPage = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_R)) {
        if (sAudioDebugPage > 0) {
            sAudioDebugPage--;
        } else {
            sAudioDebugPage = PAGE_MAX - 1;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_Z)) {
        sAudioDebugTextColor++;
        sAudioDebugTextColor &= 7;
    }

    switch (sAudioDebugPage) {
        case PAGE_NON:
            if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
                sAudioSndContWork[5] ^= 1;
                SEQCMD_DISABLE_PLAY_SEQUENCES(sAudioSndContWork[5]);
                if (Audio_GetActiveSeqId(SEQ_PLAYER_BGM_MAIN) != NA_BGM_NATURE_AMBIENCE) {
                    SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0);
                }
                SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_FANFARE, 0);
                SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_SUB, 0);
            }

            if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
                sAudioSfxMuted ^= 1;
                if (!sAudioSfxMuted) {
                    Audio_SetSfxBanksMute(0);
                }
            }
            break;
        case PAGE_SOUND_CONTROL:
            AudioDebug_ProcessInput_SndCont();
            break;
        case PAGE_INTERFACE_INFO:
            AudioDebug_ProcessInput_IntInfo();
            break;
        case PAGE_SCROLL_PRINT:
            AudioDebug_ProcessInput_ScrPrt();
            break;
        case PAGE_SFX_SWAP:
            AudioDebug_ProcessInput_SfxSwap();
            break;
        case PAGE_SUB_TRACK_INFO:
            AudioDebug_ProcessInput_SubTrackInfo();
            break;
        case PAGE_HEAP_INFO:
            AudioDebug_ProcessInput_HeapInfo();
            break;
        case PAGE_BLOCK_CHANGE_BGM:
            AudioDebug_ProcessInput_BlkChgBgm();
            break;
        case PAGE_OCARINA_TEST:
            AudioDebug_ProcessInput_OcaTest();
            break;
        case PAGE_SFX_PARAMETER_CHANGE:
            AudioDebug_ProcessInput_SfxParamChg();
            break;
        case PAGE_FREE_AREA:
        default:
            break;
    }

    gAudioDebugPrintSeqCmd = sAudioScrPrtWork[10];
}
