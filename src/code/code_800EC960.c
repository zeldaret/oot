#include "ultra64.h"
#include "global.h"

typedef struct {
    f32 unk_00;
    f32 unk_04;
    s8 unk_08;
    s8 unk_09;
    s8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
} unk_s1;

typedef struct {
    f32 unk_00;
    f32 unk_04;
    f32 unk_08;
    s32 unk_0C;
} unk_s2;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04[100];
} D_801306DC_s; // size = 0x68

void Audio_SetVolScale(u8, u8, u8, u8);
void func_800F5550(u16);
void func_800F5E18(u8 arg0, u16 arg1, u8 arg2, s8 arg3, s8 arg4);
void func_800F4784(unk_s2* arg0);
void func_800F56A8(void);
void func_800F6FB4(u8);
s32 func_800F491C(u8 arg0);

extern f32 D_8012F6B4[]; // from audio_synthesis

// stick float vals
extern u32 D_801305B0;
extern u32 D_801305B4;
extern s8 D_801305B8;
extern s8 D_801305BC;
extern s8 D_801305C0;
extern f32 D_801305C4[2];
extern u8 D_801305CC;
extern u8 sPrevChargeLevel; // 801305E0
extern f32 D_801305E4[4];
extern f32 D_801305F4;
extern u8 D_801305F8[8];
extern u8 D_80130600;
extern s8 D_80130604;
extern s8 D_80130608;
extern s8 D_8013060C;
extern s8 D_80130610;
extern s8 D_80130614;
extern s8 D_80130618;
extern u8 D_8013061C;
extern f32 D_80130620;
extern s8 D_80130624;
extern u16 D_80130628;
extern u8 D_8013062C;
extern u8 D_80130630;
extern u32 D_80130634;
extern u32 D_80130638;
extern u8 D_8013063C;
extern u8 D_80130640;
extern u8 D_80130644;
extern u8 D_80130648;
extern Vec3f* D_8013064C;
extern f32 D_80130650;
extern u8 D_80130654;
extern u8 D_80130658[]; // <= 112
extern s8 D_801306C8[20];
extern D_801306DC_s D_801306DC[20];
extern u32 sOcarinaAllowedBtnMask; // 80130EFC
extern s32 sOcarinaABtnMap;        // 80130F00
extern s32 sOcarinaCUPBtnMap;      // 80130F04
extern s32 sOcarinaCDownBtnMap;    // 80130F08
extern u8 sOcarinaInpEnabled;      // 80130F0C
extern s8 D_80130F10;              // ocarina active?
extern u8 sCurOcarinaBtnVal;       // 80130F14
extern u8 sPrevOcarinaNoteVal;     // 80130F18
extern u8 sCurOcarinaBtnIdx;       // 80130F1C, note index?
extern u8 sLearnSongLastBtn;       // 80130F20
extern f32 D_80130F24;
extern u32 D_80130F28;
extern s8 D_80130F2C; // pitch?
extern s8 D_80130F30;
extern s8 D_80130F34;
extern u8 sPlaybackState; // 80130F38
extern u32 D_80130F3C;
extern u32 sNotePlaybackTimer;
extern u16 sPlaybackNotePos;
extern u16 sStaffPlaybackPos;
extern u16 D_80130F4C;
extern u8 sDisplayedNoteValue; // Note to display on screen?
extern u8 sNotePlaybackVolume;
extern u8 sNotePlaybackVibrato;
extern s8 sNotePlaybackTone;
extern f32 sNormalizedNotePlaybackTone;
extern f32 sNormalizedNotePlaybackVolume;
extern s32 D_80130F68;
extern u8 sOcarinaNoteValues[5];
extern u8 sOcaMinigameApndPos;
extern u8 sOcaMinigameEndPos;
extern u8 sOcaMinigameNoteCnts[];     // <= 4
extern OcarinaSong sOcarinaSongs[14]; // 80130F80
extern OcarinaSong* sPlaybackSong;
// extern u8 D_80131844[];
// extern u8* gFrogsSongPtr = D_80131844;
extern u8 D_80131858;
extern u8 sRecordSongPos;
extern u32 D_80131860;
extern u8 D_80131864;
extern u8 D_80131868;
extern u8 D_8013186C;
extern s8 D_80131870;
extern u8 D_80131874;
extern u8 D_80131878;
extern u8 D_8013187C;
extern u8 D_80131880;
extern OcarinaSong sPierresSong;
// extern OcarinaNote* gScarecrowCustomSongPtr = &sPierresSong;
// extern OcarinaNote* gScarecrowSpawnSongPtr = &sOcarinaSongs[12];
extern OcarinaSong* D_80131BEC;   // = &sOcarinaSongs[13];
extern u8 sNoteValueIndexMap[16]; // = {0, 0, 0, 0, 1, 1, 1, 2, 2, 2, 5, 3, 3, 4, 4, 4}
// extern OcarinaSongInfo gOcarinaSongNotes[14];
// D_80131C80 .. 88 are in-function static in func_800EE824
extern f32 D_80131C8C;

extern u8 D_801333F0;

// Debug variables (separate file?):
extern f32 D_80131C90; // func_800EEA50, in-function static?
extern f32 D_80131C94; // func_800EEA50, in-function static?
extern u8 D_80131C98;
extern u8 D_80131C9C;
extern u8 D_80131CA0;
extern u8 D_80131CA4;
extern u8 D_80131CA8;
extern char D_80131CAC[][23];
extern u16 D_80131E08[11];
extern u16 D_80131E20[11];
extern char D_80131E38[7][11]; // func_800EEA50
extern char D_80131E88[][10];  // func_800EEA50
extern s8 D_80131EBC;
extern s8 D_80131EC0;
extern s8 D_80131EC4;
extern s8 D_80131EC8[];
extern u8 D_80131ED0;
extern u8 sAudioScreenPrintInd;
extern u8 sAudioScreenPrintOverflow;
extern s8 D_80131EDC;
extern s8 D_80131EE0;
extern u8 D_80131EE4[11];
extern u8 D_80131EF0[11];
extern u8 D_80131EFC;
extern u8 D_80131F00;
extern u8 D_80131F04;
extern u8 D_80131F08;
extern char D_80131F0C[][5]; // func_800EEA50
extern u8 D_80131F18;
extern u8 D_80131F1C;
extern u16 D_80131F20[];
extern u8 D_80131F28;
extern u8 D_80131F2C;
extern u8 D_80131F30[];
extern char D_80131F44[][2]; // func_800EEA50
extern u8 D_80131F4C[];
extern u8 D_80131F50;
extern char D_80131F54[][5]; // func_800EEA50
extern u8 D_80131F64;
extern u8 D_80131F68;
// D_80131F6C is in-function static in func_800F510C

/** bit field of songs that can be played
 * 0x0800 storms
 * 0x0400 song of time
 * 0x0200 suns
 * 0x0100 lullaby
 * 0x0080 epona
 * 0x0040 sarias
 * 0x0020 prelude
 * 0x0010 nocturne
 * 0x0008 requiem
 * 0x0004 serenade
 * 0x0002 bolero
 * 0x0001 minuet
 */

typedef struct {
    u8 unk_00;
    char unk_01[0x37];
} unk_dstruct;

extern u8 D_801333F4;
extern u8 D_80133408;
extern u8 D_8013340C;
extern u8 D_80133414;
extern u8 D_80133418;
extern unk_dstruct D_801337CE[];

/**
 * BSS
 */
u32 sAudioUpdateStartTime; // 8016B7A0
u32 sAudioUpdateEndTime;
f32 D_8016B7A8;
f32 D_8016B7AC; // maybe padding?
f32 D_8016B7B0;
f32 D_8016B7B4;
unk_s2 D_8016B7B8;
unk_s2 D_8016B7C8;
f32 D_8016B7D8;
s8 D_8016B7DC;
f32 D_8016B7E0;
u16 D_8016B7E4;
typedef struct {
    s8 str[5];
    u16 num;
} unk_sAudioScreenPrintBuf;
unk_sAudioScreenPrintBuf sAudioScreenPrintBuf[25];
u8 D_8016B8B0;
u8 D_8016B8B1;
u8 D_8016B8B2;
u8 D_8016B8B3;
u8 D_8016B8B4;
unk_s1 D_8016B8B8[0x10];

// maybe a struct?
u8 D_8016B9B8[0x20];
u8 D_8016B9D8[0x8]; // probably array.
u8 D_8016B9E0[0x12];
u8 D_8016B9F2;
u8 D_8016B9F3;
u8 D_8016B9F4;
u16 D_8016B9F6;

OcarinaStaff D_8016B9F8;      // playing along staff?
OcarinaStaff sDisplayedStaff; // displayed staff?
OcarinaStaff D_8016BA00;      // ?? note and status not updated, pos updated as you play
u32 D_8016BA04;
typedef struct {
    s8 x;
    s8 y;
} OcarinaStick;
OcarinaStick sCurOcaStick;
u32 sCurOcarinaBtnPress;
u32 D_8016BA10;
u32 sPrevOcarinaBtnPress;
s32 D_8016BA18;
s32 D_8016BA1C;
u8 sCurOcarinaSong[8];
u8 sOcarinaSongAppendPos;
u8 sOcarinaHasStartedSong;
u8 gOcarinaSongNotestartIdx;
u8 sOcarinaSongCnt;
u16 sOcarinaAvailSongs;
u8 D_8016BA2E;
u16 sLearnSongPos[0x10];
u16 D_8016BA50[0x10];
u16 D_8016BA70[0x10];
u8 sLearnSongExpectedNote[0x10];
OcarinaNote D_8016BAA0;
u8 D_8016BAA8;
f32 D_8016BAAC;
u32 D_8016BAB0;
u32 sDebugPadPressRaw;
u32 sDebugPadPress;
s32 sAudioUpdateTaskStart;
s32 sAudioUpdateTaskEnd;

extern u16 D_8016E2E0[];
extern u16 D_8016E2F8[];
extern u8 D_8016E310[];

void func_800EC960(u8 custom) {
    if (!custom) {
        osSyncPrintf("AUDIO : Ocarina Control Assign Normal\n");
        sOcarinaAllowedBtnMask = (BTN_A | BTN_CUP | BTN_CDOWN | BTN_CLEFT | BTN_CRIGHT);
        sOcarinaABtnMap = BTN_A;
        sOcarinaCUPBtnMap = BTN_CUP;
        sOcarinaCDownBtnMap = BTN_CDOWN;
    } else {
        osSyncPrintf("AUDIO : Ocarina Control Assign Custom\n");
        sOcarinaAllowedBtnMask = (BTN_A | BTN_B | BTN_CDOWN | BTN_CLEFT | BTN_CRIGHT);
        sOcarinaABtnMap = BTN_B;
        sOcarinaCUPBtnMap = BTN_CDOWN;
        sOcarinaCDownBtnMap = BTN_A;
    }
}

void PadMgr_RequestPadData(PadMgr* padmgr, Input* inputs, s32 mode);
void Audio_GetOcaInput(void) {
    Input input[4];
    Input* inputP = &input[0];
    u32 sp18;

    sp18 = sCurOcarinaBtnPress;
    inputP = input;
    PadMgr_RequestPadData(&gPadMgr, input, 0);
    sCurOcarinaBtnPress = inputP->cur.button;
    sPrevOcarinaBtnPress = sp18;
    sCurOcaStick.x = inputP->rel.stick_x;
    sCurOcaStick.y = inputP->rel.stick_y;
}

f32 Audio_OcaAdjStick(s8 inp) {
    s8 inpAdj;
    f32 ret;

    if (inp > 0x40) {
        inpAdj = 127;
    } else if (inp < -0x40) {
        inpAdj = -128;
    } else if (inp >= 0) {
        inpAdj = (inp * 127) / 64;
    } else {
        inpAdj = (inp * 128) / 64;
    }
    ret = D_8012F6B4[inpAdj];
    return ret;
}

u8 func_800ECAF0(void) {
    u8 ret;

    if (D_80131878 != 0) {
        ret = D_80131878 - 1;
        D_80131878 = 0;
    } else if (D_80130F3C != 0) {
        ret = 0xFE;
    } else {
        ret = 0xFF;
    }

    return ret;
}

u8 Audio_OcaMapNoteValue(u8 arg0) {
    u8 temp_v1;

    temp_v1 = sNoteValueIndexMap[arg0 & 0x3F];
    if (temp_v1 == 5) {
        if (arg0 & 0x80) {
            return 2;
        }
        return 3;
    }
    return temp_v1;
}

void func_800ECB7C(u8 songIdx) {
    u8 savedSongIdx;
    u8 scarecrowSongIdx;
    u8 noteIdx;

    savedSongIdx = 0;
    scarecrowSongIdx = 0;
    while (savedSongIdx < 8 && scarecrowSongIdx < 0x10) {
        noteIdx = sOcarinaSongs[songIdx].notes[scarecrowSongIdx++].noteIdx;
        if (noteIdx != 0xFF) {
            gOcarinaSongNotes[0xC].notesIdx[savedSongIdx++] = sNoteValueIndexMap[noteIdx];
        }
    }
}

// start ocarina.
void func_800ECC04(u16 flg) {
    u8 i;

    if ((sOcarinaSongs[0xC].notes[1].volume != 0xFF) && ((flg & 0xFFF) == 0xFFF)) {
        flg |= 0x1000;
    }

    if ((flg == 0xCFFF) && (sOcarinaSongs[0xC].notes[1].volume != 0xFF)) {
        flg = 0xDFFF;
    }

    if ((flg == 0xFFF) && (sOcarinaSongs[0xC].notes[1].volume != 0xFF)) {
        flg = 0x1FFF;
    }

    if (flg != 0xFFFF) {
        D_80130F3C = 0x80000000 + (u32)flg;
        gOcarinaSongNotestartIdx = 0;
        sOcarinaSongCnt = 0xE;
        if (flg != 0xA000) {
            sOcarinaSongCnt--;
        }
        sOcarinaAvailSongs = flg & 0x3FFF;
        D_8013187C = 8;
        sOcarinaHasStartedSong = 0;
        D_80131878 = 0;
        D_8016BA2E = 0;
        D_8016B9F8.state = func_800ECAF0();
        sOcarinaInpEnabled = 1;
        D_80130F4C = 0;
        for (i = 0; i < 0xE; i++) {
            sLearnSongPos[i] = 0;
            D_8016BA50[i] = 0;
            D_8016BA70[i] = 0;
            sLearnSongExpectedNote[i] = 0;
        }

        if (flg & 0x8000) {
            D_8013187C = 0;
        }

        if (flg & 0x4000) {
            sOcarinaSongAppendPos = 0;
        }

        if (flg & 0xD000) {
            func_800ECB7C(0xC);
            return;
        }
    } else {
        D_80130F3C = 0;
        sOcarinaInpEnabled = 0;
    }
}

void func_800ECDBC(void) {
    if (sCurOcarinaBtnVal != 0xFF && sOcarinaHasStartedSong == 0) {
        sOcarinaHasStartedSong = 1;
        sLearnSongLastBtn = 0xFF;
    }
}

void func_800ECDF8(void) {
    u16 sh;
    u16 pad;
    u8 inputChanged = 0;
    u16 pad2;
    s8 sp57 = 0;
    u8 i;
    OcarinaNote* prevNote;
    OcarinaNote* note;

    func_800ECDBC();

    if (sOcarinaHasStartedSong) {
        if ((D_80130F2C < 0 ? -D_80130F2C : D_80130F2C) >= 0x15) {
            D_80130F3C = 0;
            return;
        }

        // clang-format off
        if (sPrevOcarinaNoteVal == sCurOcarinaBtnVal || sCurOcarinaBtnVal == 0xFF) { inputChanged = 1; }
        // clang-format on

        for (i = gOcarinaSongNotestartIdx; i < sOcarinaSongCnt; i++) {
            sh = 1 << i;
            if (sOcarinaAvailSongs & sh) {
                D_8016BA50[i] = D_8016BA70[i] + 0x12;
                if (inputChanged) {
                    // (pointless if check, this is always true)
                    if ((D_8016BA50[i] >= D_8016BA70[i] - 0x12) && (D_8016BA50[i] >= D_8016BA70[i] + 0x12) &&
                        (sOcarinaSongs[i].notes[sLearnSongPos[i]].unk_02 == 0) &&
                        (sLearnSongLastBtn == sLearnSongExpectedNote[i])) {
                        D_80131878 = i + 1;
                        sOcarinaInpEnabled = 0;
                        D_80130F3C = 0;
                    }
                } else if (D_8016BA50[i] >= (D_8016BA70[i] - 0x12)) {
                    if (sLearnSongLastBtn != 0xFF) {
                        if (sLearnSongLastBtn == sLearnSongExpectedNote[i]) {
                            if (i == 0xC) {
                                D_8016BA50[i] = 0;
                            }
                        } else {
                            sOcarinaAvailSongs ^= sh;
                        }
                    }

                    prevNote = &sOcarinaSongs[i].notes[sLearnSongPos[i]];
                    note = &sOcarinaSongs[i].notes[++sLearnSongPos[i]];
                    D_8016BA70[i] = prevNote->unk_02;
                    sLearnSongExpectedNote[i] = prevNote->noteIdx;

                    if (sCurOcarinaBtnVal != sLearnSongExpectedNote[i]) {
                        sOcarinaAvailSongs ^= sh;
                    }
                    while (prevNote->noteIdx == note->noteIdx || (note->noteIdx == 0xFF && note->unk_02 != 0)) {
                        D_8016BA70[i] += note->unk_02;
                        prevNote = &sOcarinaSongs[i].notes[sLearnSongPos[i]];
                        note = &sOcarinaSongs[i].notes[sLearnSongPos[i] + 1];
                        sLearnSongPos[i]++;
                    }
                } else if (D_8016BA50[i] < 0xA) {
                    sp57 = -1;
                    D_8016BA50[i] = 0;
                    sLearnSongLastBtn = sCurOcarinaBtnVal;
                } else {
                    sOcarinaAvailSongs ^= sh;
                }
            }

            if (sOcarinaAvailSongs == 0 && D_8016BA2E >= D_8013187C) {
                sOcarinaInpEnabled = 0;
                if (CHECK_BTN_ANY(D_80130F3C, BTN_B) && sCurOcarinaBtnVal == sOcarinaSongs[i].notes[0].noteIdx) {
                    D_80130F4C = D_80130F3C;
                }
                D_80130F3C = 0;
                return;
            }
        }

        if (!inputChanged) {
            sLearnSongLastBtn = sCurOcarinaBtnVal;
            D_8016BA2E += sp57 + 1;
        }
    }
}

void func_800ED200(void) {
    u32 temp_v0;
    u8 i;
    u8 j;
    u8 k;

    if (CHECK_BTN_ANY(sCurOcarinaBtnPress, BTN_L) && CHECK_BTN_ANY(sCurOcarinaBtnPress, sOcarinaAllowedBtnMask)) {
        func_800ECC04((u16)D_80130F3C);
        return;
    }

    func_800ECDBC();

    if (sOcarinaHasStartedSong) {
        if ((sPrevOcarinaNoteVal != sCurOcarinaBtnVal) && (sCurOcarinaBtnVal != 0xFF)) {
            D_8016BA2E++;
            if (D_8016BA2E >= 9) {
                D_8016BA2E = 1;
            }

            if (sOcarinaSongAppendPos == 8) {
                for (i = 0; i < 7; i++) {
                    sCurOcarinaSong[i] = sCurOcarinaSong[i + 1];
                }
            } else {
                sOcarinaSongAppendPos++;
            }

            if ((D_80130F2C < 0 ? -D_80130F2C : D_80130F2C) >= 0x15) {
                sCurOcarinaSong[sOcarinaSongAppendPos - 1] = 0xFF;
            } else {
                sCurOcarinaSong[sOcarinaSongAppendPos - 1] = sCurOcarinaBtnVal;
            }

            for (i = gOcarinaSongNotestartIdx; i < sOcarinaSongCnt; i++) {
                if (sOcarinaAvailSongs & (u16)(1 << i)) {
                    for (j = 0, k = 0;
                         j < gOcarinaSongNotes[i].len && k == 0 && sOcarinaSongAppendPos >= gOcarinaSongNotes[i].len;) {
                        temp_v0 = sCurOcarinaSong[(sOcarinaSongAppendPos - gOcarinaSongNotes[i].len) + j];
                        if (temp_v0 == sOcarinaNoteValues[gOcarinaSongNotes[i].notesIdx[j]]) {
                            j++;
                        } else {
                            k++;
                        }
                    }

                    if (j == gOcarinaSongNotes[i].len) {
                        D_80131878 = i + 1;
                        sOcarinaInpEnabled = 0;
                        D_80130F3C = 0;
                    }
                }
            }
        }
    }
}

void func_800ED458(s32 arg0) {
    u32 phi_v1_2;

    if (D_80130F3C != 0 && D_80131880 != 0) {
        D_80131880--;
        return;
    }

    if ((D_8016BA10 == 0) ||
        ((D_8016BA10 & sOcarinaAllowedBtnMask) != (sCurOcarinaBtnPress & sOcarinaAllowedBtnMask))) {
        D_8016BA10 = 0;
        if (1) {}
        sCurOcarinaBtnVal = 0xFF;
        sCurOcarinaBtnIdx = 0xFF;
        phi_v1_2 = (sCurOcarinaBtnPress & sOcarinaAllowedBtnMask) & (sPrevOcarinaBtnPress & sOcarinaAllowedBtnMask);
        if (!(D_8016BA18 & phi_v1_2) && (sCurOcarinaBtnPress != 0)) {
            D_8016BA18 = sCurOcarinaBtnPress;
        } else {
            D_8016BA18 &= phi_v1_2;
        }

        if (D_8016BA18 & sOcarinaABtnMap) {
            osSyncPrintf("Presss NA_KEY_D4 %08x\n", sOcarinaABtnMap);
            sCurOcarinaBtnVal = 2;
            sCurOcarinaBtnIdx = 0;
        } else if (D_8016BA18 & sOcarinaCDownBtnMap) {
            osSyncPrintf("Presss NA_KEY_F4 %08x\n", sOcarinaCDownBtnMap);
            sCurOcarinaBtnVal = 5;
            sCurOcarinaBtnIdx = 1;
        } else if (D_8016BA18 & 1) {
            osSyncPrintf("Presss NA_KEY_A4 %08x\n", 1);
            sCurOcarinaBtnVal = 9;
            sCurOcarinaBtnIdx = 2;
        } else if (D_8016BA18 & 2) {
            osSyncPrintf("Presss NA_KEY_B4 %08x\n", 2);
            sCurOcarinaBtnVal = 0xB;
            sCurOcarinaBtnIdx = 3;
        } else if (D_8016BA18 & sOcarinaCUPBtnMap) {
            osSyncPrintf("Presss NA_KEY_D5 %08x\n", sOcarinaCUPBtnMap);
            sCurOcarinaBtnVal = 0xE;
            sCurOcarinaBtnIdx = 4;
        }

        if (sCurOcarinaBtnVal != 0xFF && sCurOcarinaBtnPress & 0x10 && D_80131858 != 2) {
            sCurOcarinaBtnIdx += 0x80;
            sCurOcarinaBtnVal++;
        }

        if ((sCurOcarinaBtnVal != 0xFF) && (sCurOcarinaBtnPress & 0x2000) && (D_80131858 != 2)) {
            sCurOcarinaBtnIdx += 0x40;
            sCurOcarinaBtnVal--;
        }

        if (D_80131858 != 2) {
            D_80130F2C = sCurOcaStick.y;
            D_80130F24 = Audio_OcaAdjStick(D_80130F2C);

            D_80130F34 = (sCurOcaStick.x < 0 ? -sCurOcaStick.x : sCurOcaStick.x) >> 2;
            Audio_QueueCmdS8(0x6020D06, D_80130F34);
        } else {
            D_80130F2C = 0;
            D_80130F24 = 1.0f;
        }

        if ((sCurOcarinaBtnVal != 0xFF) && (sPrevOcarinaNoteVal != sCurOcarinaBtnVal)) {
            Audio_QueueCmdS8(0x6020D07, D_80130F10 - 1);
            Audio_QueueCmdS8(0x6020D05, sCurOcarinaBtnVal);
            Audio_PlaySoundGeneral(NA_SE_OC_OCARINA, &D_801333D4, 4, &D_80130F24, &D_80130F28, &D_801333E8);
        } else if ((sPrevOcarinaNoteVal != 0xFF) && (sCurOcarinaBtnVal == 0xFF)) {
            Audio_StopSfx(NA_SE_OC_OCARINA);
        }
    }
}

void func_800ED848(u8 inputEnabled) {
    sOcarinaInpEnabled = inputEnabled;
}

void func_800ED858(u8 arg0) {
    if (D_80130F10 == arg0) {
        return;
    }

    Audio_SeqCmd8(2, 1, 0xD, arg0);
    D_80130F10 = arg0;
    if (arg0 == 0) {
        sCurOcarinaBtnPress = 0;
        sPrevOcarinaBtnPress = 0;
        D_8016BA18 = 0;
        D_8016BA10 = 0xFFFF;
        func_800ED458(0);
        Audio_StopSfx(NA_SE_OC_OCARINA);
        func_800F7260(0);
        sPlaybackState = 0;
        sStaffPlaybackPos = 0;
        sOcarinaInpEnabled = 0;
        D_80130F3C = 0;
        Audio_ClearBGMMute(0xD);
    } else {
        sCurOcarinaBtnPress = 0;
        Audio_GetOcaInput();
        D_8016BA10 = sCurOcarinaBtnPress;
        Audio_QueueSeqCmdMute(0xD);
    }
}

void func_800ED93C(s8 songIdx, s8 arg1) {
    s32 temp_a0;
    s32 temp_a0_2;
    u16 temp_t5;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 phi_v0;

    if (songIdx == 0) {
        sPlaybackState = 0;
        Audio_StopSfx(NA_SE_OC_OCARINA);
        return;
    }

    if (songIdx < 0xF) {
        sPlaybackSong = &sOcarinaSongs[songIdx - 1];
    } else {
        sPlaybackSong = &sPierresSong;
    }

    sPlaybackState = arg1;
    sNotePlaybackTimer = 0;
    sDisplayedNoteValue = 0xFF;
    sPlaybackNotePos = 0;
    sStaffPlaybackPos = 0;
    while (sPlaybackSong->notes[sPlaybackNotePos].noteIdx == 0xFF) {
        sPlaybackNotePos++;
    }
}

void Audio_OcaPlayback(void) {
    s32 noteTimerStep;
    s32 nextNoteTimerStep;

    if (sPlaybackState != 0) {
        if (sStaffPlaybackPos == 0) {
            noteTimerStep = 3;
        } else {
            noteTimerStep = D_8016BA04 - D_80130F68;
        }

        if (noteTimerStep < sNotePlaybackTimer) {
            sNotePlaybackTimer -= noteTimerStep;
        } else {
            nextNoteTimerStep = noteTimerStep - sNotePlaybackTimer;
            sNotePlaybackTimer = 0;
        }

        if (sNotePlaybackTimer == 0) {

            sNotePlaybackTimer = sPlaybackSong->notes[sPlaybackNotePos].unk_02;

            if (sPlaybackNotePos == 1) {
                sNotePlaybackTimer++;
            }

            if (sNotePlaybackTimer == 0) {
                sPlaybackState--;
                if (sPlaybackState != 0) {
                    sPlaybackNotePos = 0;
                    sStaffPlaybackPos = 0;
                    sDisplayedNoteValue = 0xFF;
                } else {
                    Audio_StopSfx(NA_SE_OC_OCARINA);
                }
                return;
            } else {
                sNotePlaybackTimer -= nextNoteTimerStep;
            }

            if (sNotePlaybackVolume != sPlaybackSong->notes[sPlaybackNotePos].volume) {
                sNotePlaybackVolume = sPlaybackSong->notes[sPlaybackNotePos].volume;
                sNormalizedNotePlaybackVolume = sNotePlaybackVolume / 127.0f;
            }

            if (sNotePlaybackVibrato != sPlaybackSong->notes[sPlaybackNotePos].vibrato) {
                sNotePlaybackVibrato = sPlaybackSong->notes[sPlaybackNotePos].vibrato;
                Audio_QueueCmdS8(0x06020D06, sNotePlaybackVibrato);
            }

            if (sNotePlaybackTone != sPlaybackSong->notes[sPlaybackNotePos].tone) {
                sNotePlaybackTone = sPlaybackSong->notes[sPlaybackNotePos].tone;
                sNormalizedNotePlaybackTone = Audio_OcaAdjStick(sNotePlaybackTone);
            }

            if ((sPlaybackSong->notes[sPlaybackNotePos].volume == sPlaybackSong->notes[sPlaybackNotePos - 1].volume &&
                 (sPlaybackSong->notes[sPlaybackNotePos].vibrato ==
                  sPlaybackSong->notes[sPlaybackNotePos - 1].vibrato) &&
                 (sPlaybackSong->notes[sPlaybackNotePos].tone == sPlaybackSong->notes[sPlaybackNotePos - 1].tone))) {
                sDisplayedNoteValue = 0xFE;
            }

            if (sDisplayedNoteValue != sPlaybackSong->notes[sPlaybackNotePos].noteIdx) {
                u8 tmp = sPlaybackSong->notes[sPlaybackNotePos].noteIdx;
                if (tmp == 0xA) {
                    sDisplayedNoteValue = tmp + sPlaybackSong->notes[sPlaybackNotePos].semitone;
                } else {
                    sDisplayedNoteValue = tmp;
                }

                if (sDisplayedNoteValue != 0xFF) {
                    sStaffPlaybackPos++;
                    Audio_QueueCmdS8(0x6020D07, D_80130F10 - 1);
                    Audio_QueueCmdS8(0x6020D05, sDisplayedNoteValue & 0x3F);
                    Audio_PlaySoundGeneral(NA_SE_OC_OCARINA, &D_801333D4, 4, &sNormalizedNotePlaybackTone,
                                           &sNormalizedNotePlaybackVolume, &D_801333E8);
                } else {
                    Audio_StopSfx(NA_SE_OC_OCARINA);
                }
            }
            sPlaybackNotePos++;
        }
    }
}

void func_800EDD68(u8 arg0) {
    u16 i;
    u16 i2;
    u16 mad2;
    u8 mad;
    OcarinaNote* note;
    u8 j;
    u8 k;
    s32 t;
    OcarinaSong* song;

    if (D_80131858 == 1) {
        song = gScarecrowCustomSongPtr;
    } else {
        song = D_80131BEC;
    }
    song->notes[sRecordSongPos].noteIdx = D_80131864;
    song->notes[sRecordSongPos].unk_02 = D_8016BA04 - D_80131860;
    song->notes[sRecordSongPos].volume = D_80131868;
    song->notes[sRecordSongPos].vibrato = D_8013186C;
    song->notes[sRecordSongPos].tone = D_80131870;
    song->notes[sRecordSongPos].semitone = D_80131874 & 0xC0;
    D_80131864 = sCurOcarinaBtnVal;
    D_80131868 = D_80130F30;
    D_8013186C = D_80130F34;
    D_80131870 = D_80130F2C;
    D_80131874 = sCurOcarinaBtnIdx;
    sRecordSongPos++;

    if ((sRecordSongPos != 107) && (arg0 == 0)) {
        return;
    }

    i = sRecordSongPos;
    mad = 0xFF;
    while (i != 0 && mad == 0xFF) {
        i--;
        mad = song->notes[i].noteIdx;
    }

    if (1) {}

    if (sRecordSongPos != (i + 1)) {
        sRecordSongPos = i + 2;
        song->notes[sRecordSongPos - 1].unk_02 = 0;
    }

    song->notes[sRecordSongPos].unk_02 = 0;

    if (D_80131858 == 2) {
        if (D_8016BA2E >= 8) {
            for (i = 0; i < sRecordSongPos; i++) {
                song->notes[i] = song->notes[i + 1];
            }

            func_800ECB7C(0xD);

            for (i = 0; i < 0xC; i++) {
                for (j = 0; j < 9 - gOcarinaSongNotes[i].len; j++) {
                    for (k = 0; k < gOcarinaSongNotes[i].len && k + j < 8 &&
                                gOcarinaSongNotes[i].notesIdx[k] == gOcarinaSongNotes[0xC].notesIdx[k + j];
                         k++) {
                        ;
                    }

                    if (k == gOcarinaSongNotes[i].len) {
                        D_80131858 = 0xFF;
                        sOcarinaSongs[0xC].notes[1].volume = 0xFF;
                        return;
                    }
                }
            }

            i = 1;
            while (i < 8) {
                if (gOcarinaSongNotes[0xC].notesIdx[0] != gOcarinaSongNotes[0xC].notesIdx[i]) {
                    i = 9;
                } else {
                    i++;
                }
            }

            if (i == 8) {
                D_80131858 = 0xFF;
                sOcarinaSongs[0xC].notes[1].volume = 0xFF;
                return;
            }

            for (i = 0; i < sRecordSongPos; i++) {
                sOcarinaSongs[0xC].notes[i] = sOcarinaSongs[0xD].notes[i];
            }

            sOcarinaInpEnabled = 0;
        } else {
            sOcarinaSongs[0xC].notes[1].volume = 0xFF;
        }
    }
    D_80131858 = 0;
}

// start custom song?
/**
 * arg0 = 1, start
 * arg0 = 0, finish
 * arg0 = 2, also start?
 */
void func_800EE170(u8 arg0) {
    if ((u32)arg0 == D_80131858) {
        return;
    }

    if (arg0 != 0) {
        D_80131860 = D_8016BA04;
        D_80131864 = 0xFF;
        D_80131868 = 0x57;
        D_8013186C = 0;
        D_80131870 = 0;
        D_80131874 = 0;
        sRecordSongPos = 0;
        sOcarinaInpEnabled = 1;
        D_8016BA2E = 0;
        D_8016BAA0 = sPierresSong.notes[1];
    } else {
        if (sRecordSongPos == 0) {
            sPierresSong.notes[1] = D_8016BAA0;
        } else {
            if (D_80131858 == 2) {
                D_8016BA2E = 1;
            }

            func_800EDD68(1);
        }

        sOcarinaInpEnabled = 0;
        D_8016BA2E = 0;
    }

    D_80131858 = arg0;
}

void func_800EE29C(void) {
    D_8016BA00.state = D_80131858;
    D_8016BA00.pos = D_8016BA2E;
    if (D_80131858 == 0xFF) {
        D_80131858 = 0;
    }
}

void func_800EE2D4(void) {
    D_8016B9F8.noteIdx = sCurOcarinaBtnIdx & 0x3F;
    D_8016B9F8.state = func_800ECAF0();
    D_8016B9F8.pos = D_8016BA2E;
}

void func_800EE318(void) {
    if ((sDisplayedNoteValue & 0x3F) < 0x10) {
        sDisplayedStaff.noteIdx = Audio_OcaMapNoteValue(sDisplayedNoteValue);
    }

    sDisplayedStaff.state = sPlaybackState;

    if (sPlaybackSong != &sPierresSong) {
        sDisplayedStaff.pos = sStaffPlaybackPos;
    } else if (sStaffPlaybackPos == 0) {
        sDisplayedStaff.pos = 0;
    } else {
        sDisplayedStaff.pos = ((sStaffPlaybackPos - 1) % 8) + 1;
    }
}

OcarinaStaff* func_800EE3C8(void) {
    return &D_8016BA00;
}

OcarinaStaff* func_800EE3D4(void) {
    if (D_8016B9F8.state < 0xFE) {
        D_80130F3C = 0;
    }
    return &D_8016B9F8;
}

OcarinaStaff* Audio_OcaGetDisplayStaff(void) {
    return &sDisplayedStaff;
}

void func_800EE404(void) {
    s32 noteChanged;

    if ((D_80131858 != 0) && ((D_8016BA04 - D_80131860) >= 3)) {
        noteChanged = false;
        if (D_80131864 != sCurOcarinaBtnVal) {
            if (sCurOcarinaBtnVal != 0xFF) {
                D_8016BA00.noteIdx = sCurOcarinaBtnIdx & 0x3F;
                D_8016BA2E++;
            } else if ((D_80131858 == 2) && (D_8016BA2E == 8)) {
                func_800EDD68(1);
                return;
            }

            if (D_8016BA2E > 8) {
                if (D_80131858 == 2) {
                    // notes played are over 8 and in recording mode.
                    func_800EDD68(1);
                    return;
                }
                D_8016BA2E = true;
            }

            noteChanged = true;
        } else if (D_80131868 != D_80130F30) {
            noteChanged = true;
        } else if (D_8013186C != D_80130F34) {
            noteChanged = true;
        } else if (D_80131870 != D_80130F2C) {
            noteChanged = true;
        }

        if (noteChanged) {
            func_800EDD68(0);
            D_80131860 = D_8016BA04;
        }
    }
}

s32 func_800EE5EC(void);

void func_800EE57C(u8 minigameIdx) {
    u8 i;

    if (minigameIdx > 2) {
        minigameIdx = 2;
    }

    sOcaMinigameApndPos = 0;
    sOcaMinigameEndPos = sOcaMinigameNoteCnts[minigameIdx];

    for (i = 0; i < 3; i++) {
        func_800EE5EC();
    }
}

#define OCA_MEMORYGAME_IDX 0xD
s32 func_800EE5EC(void) {
    u32 rnd;
    u8 rndNote;

    if (sOcaMinigameApndPos == sOcaMinigameEndPos) {
        return 1;
    }

    rnd = Audio_NextRandom();
    rndNote = sOcarinaNoteValues[rnd % 5];

    if (sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos - 1].noteIdx == rndNote) {
        rndNote = sOcarinaNoteValues[(rnd + 1) % 5];
    }

    sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos].noteIdx = rndNote;
    sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos].unk_02 = 0x2D;
    sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos].volume = 0x50;
    sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos].vibrato = 0;
    sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos].tone = 0;

    sOcaMinigameApndPos++;

    sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos].noteIdx = 0xFF;
    sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos].unk_02 = 0;
    sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos + 1].noteIdx = 0xFF;
    sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos + 1].unk_02 = 0;
    if (1) {}
    return 0;
}

// input update?
void func_800EE6F4(void) {
    D_8016BA04 = gAudioContext.totalTaskCnt;
    if (D_80130F10 != 0) {
        if (sOcarinaInpEnabled == 1) {
            Audio_GetOcaInput();
        }
        if ((sPlaybackState == 0) && (sOcarinaInpEnabled == 1)) {
            func_800ED458(0);
        }
        if (D_80130F3C != 0) {
            if (D_80130F3C & 0x4000) {
                func_800ED200();
            } else {
                func_800ECDF8();
            }
        }

        Audio_OcaPlayback();
        D_80130F68 = D_8016BA04;

        if (sPlaybackState == 0) {
            func_800EE404();
        }

        if ((D_80130F3C != 0) && (sPrevOcarinaNoteVal != sCurOcarinaBtnVal)) {
            D_80131880 = 1;
        }

        sPrevOcarinaNoteVal = sCurOcarinaBtnVal;
    }

    func_800EE2D4();
    func_800EE318();
    func_800EE29C();
}

#ifdef NON_MATCHING
// matches, but data needs to be migrated.
void func_800EE824(void) {
    static u8 D_80131C80 = 0;
    static u8 D_80131C84 = 1;
    static u16 D_80131C88 = 0x4B0;

    switch (D_80131C80) {
        case 0:
            if (D_80131C88-- == 0) {
                if (D_80131C84 < 7) {
                    D_80131C80++;
                } else {
                    D_80131C80 = 3;
                    func_800ED858(0);
                }
                D_80131C88 = 0x4B0;
            }
            break;
        case 1:
            func_800F7260(0);
            func_800ED858(D_80131C84);
            func_800ED93C(0xF, 1);
            D_80131C84++;
            D_80131C80++;
            break;
        case 2:
            if (Audio_OcaGetDisplayStaff()->state == 0) {
                D_80131C80 = 0;
            }
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EE824.s")
#endif

void func_800EE930(void) {
    D_8016B9F8.noteIdx = 0xFF;
    D_8016B9F8.state = 0xFF;
    D_8016B9F8.pos = 0;
    sDisplayedStaff.noteIdx = 0xFF;
    sDisplayedStaff.state = 0;
    sDisplayedStaff.pos = 0;
    D_8016BA00.noteIdx = 0xFF;
    D_8016BA00.state = 0xFF;
    D_8016BA00.pos = 0;
    D_80131880 = 0;
}

// DebugAudio_GetOcaInput
void func_800EE97C(void) {
    Input inputs[4];
    u32 btn;

    PadMgr_RequestPadData(&gPadMgr, &inputs, 0);
    btn = inputs[3].cur.button;
    D_8016BAB0 = btn & 0xFFFF;
    sDebugPadPress = (btn ^ sDebugPadPressRaw) & btn;
    sDebugPadPressRaw = btn;
}

u8* func_800EE9D0(s32 arg0, u8 arg1) {
    s32 temp_a1;
    s32 temp_v1;
    u8* temp_a3;
    s32 phi_v0;
    s32 phi_t0;
    s32 phi_v1;
    u8 i;
    u32 flg = 1;

    for (i = 0; i < arg1; flg *= 2, i++) {
        if (arg0 & flg) {
            D_8016B9B8[arg1 - i - 1] = 0x31;
        } else {
            D_8016B9B8[arg1 - i - 1] = 0x30;
        }
    }

    D_8016B9B8[arg1] = 0;
    return D_8016B9B8;
}

// Debug Print
#ifdef NON_EQUIVALENT
void func_800EEA50(GfxPrint* printer) {
    char digitStr[2] = "1"; // sp98
    s32 s0;
    s32 k;
    u8 i;
    u8 j;
    u8 songInd;
    u8 totalNumLayers;
    u8 instOrWave;
    u8 inst;
    u8 phi_s2_3;
    s8 ind;
    u8 idx;             // v1
    u8 bank;            // fp
    u8 numEnabledNotes; // sp78

#define SETCOL_COMMON(v, r, g, b) \
    GfxPrint_SetColor(printer, ((v & 4) >> 2) * (r), ((v & 2) >> 1) * (g), (v & 1) * (b), 255)
#define SETCOL(r, g, b) SETCOL_COMMON(D_80131CA8, r, g, b)
#define SETCOL2(r, g, b) SETCOL_COMMON(D_80131EE4[2], r, g, b)

    D_80131C98 = 1;
    GfxPrint_SetPos(printer, 3, 2);
    SETCOL(255, 255, 255);
    GfxPrint_Printf(printer, "Audio Debug Mode");

    GfxPrint_SetPos(printer, 3, 3);
    GfxPrint_Printf(printer, "- %s -", D_80131CAC[D_80131CA0]);

    numEnabledNotes = 0;                                                          // s0
    for (i = 0; i < gAudioSessionPresets[D_80133414].maxSimultaneousNotes; i++) { // s6
        if (gAudioContext.notes[i].noteSubEu.bitField0.s.enabled == 1) {
            numEnabledNotes++;
        }
    }

    if (D_80131F68 < numEnabledNotes) {
        D_80131F68 = numEnabledNotes;
    }
    if (D_8016B9E0[D_80133414] < numEnabledNotes) {
        D_8016B9E0[D_80133414] = numEnabledNotes;
    }

    if (D_80131EE4[0] != 0) {
        GfxPrint_SetPos(printer, D_80131EDC, D_80131EE0);
        SETCOL2(0xC8, 0xC8, 0xC8);
        GfxPrint_Printf(printer, "Audio ScrPrt");

        ind = sAudioScreenPrintInd;               // fp
        for (k = 0; k < D_80131EE4[1] + 1; k++) { // s2 (s32 loop)
            if (ind == 0) {
                if (sAudioScreenPrintOverflow == 1) {
                    ind = 25 - 1;
                } else {
                    k = D_80131EE4[1] + 1; // "break;"
                }
            } else {
                ind--;
            }
            if (k != D_80131EE4[1] + 1) {
                if ((ind % 5) != 0) {
                    SETCOL2(0xB4, 0xB4, 0xB4);
                } else {
                    SETCOL2(0x78, 0x78, 0x78);
                }
                GfxPrint_SetPos(printer, D_80131EDC + 2, D_80131EE0 + D_80131EE4[1] + 1 - k);
                GfxPrint_Printf(printer, "%s", sAudioScreenPrintBuf[ind].str);

                GfxPrint_SetPos(printer, D_80131EDC + 7, D_80131EE0 + D_80131EE4[1] + 1 - k);
                GfxPrint_Printf(printer, "%04X", sAudioScreenPrintBuf[ind].num);
            }
        }
    }

    switch (D_80131CA0) {
        case 0:
            GfxPrint_SetPos(printer, 3, 4);
            SETCOL(255, 6, 6);
            GfxPrint_Printf(printer, "BGM CANCEL:%s", D_80131F54[D_80131E08[5]]);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "SE MUTE:%s", D_80131F54[D_80131C9C]);

            GfxPrint_SetPos(printer, 18, 4);
            SETCOL(255, 255, 255);
            GfxPrint_Printf(printer, "PUSH CONT-4 A-BTN");

            bank = (u8)D_80131E08[2];
            i = gSoundBanks[bank][0].next; // s6, s3
            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "SE HANDLE:%s", D_80131E38[bank]);

            while (i != 0xFF) {
                GfxPrint_SetPos(printer, 3, j + 7);
                GfxPrint_Printf(printer, "%02x %04x %02x %08x", i, gSoundBanks[bank][i].unk_28,
                                gSoundBanks[bank][i].unk_2A, gSoundBanks[bank][i].unk_20);
                i = gSoundBanks[bank][i].next;
                j++;
            }
            break;

        case 1:
            GfxPrint_SetPos(printer, 2, D_80131CA4 + 4);
            SETCOL(127, 255, 127);
            GfxPrint_Printf(printer, "*");

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "Seq 0  : %2x", D_80131E08[0]);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "Seq 1  : %2x", D_80131E08[1]);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "SE HD  : %2x %s", D_80131E08[2], D_80131E38[D_80131E08[2]]);

            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "SE No. :%3x", D_80131E08[3]);

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(printer, "S-Out  : %2x %s", D_80131E08[4], D_80131E88[D_80131E08[4]]);

            GfxPrint_SetPos(printer, 3, 9);
            GfxPrint_Printf(printer, "BGM Ent: %2x", D_80131E08[5]);

            GfxPrint_SetPos(printer, 3, 10);
            GfxPrint_Printf(printer, "Spec   : %2x", D_80131E08[6]);

            GfxPrint_SetPos(printer, 3, 11);
            GfxPrint_Printf(printer, "Na Snd : %2x", D_80131E08[7]);

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "Cam Wt : %s", D_80131F54[D_80131E08[8]]);

            GfxPrint_SetPos(printer, 3, 13);
            GfxPrint_Printf(printer, "Lnk Wt : %s", D_80131F54[D_80131E08[9]]);

            GfxPrint_SetPos(printer, 3, 14);
            GfxPrint_Printf(printer, "SE Ent : %2x", D_80131E08[10]);
            break;

        case 7:
            ind = 0;                  // fp
            for (k = 0; k < 7; k++) { // s2 (s32 loop)
                if (k == D_80131EC4) {
                    SETCOL(255, 127, 127);
                } else {
                    SETCOL(255, 255, 255);
                }
                GfxPrint_SetPos(printer, D_80131EBC + 2, D_80131EC0 + ind + 4);
                GfxPrint_Printf(printer, "%s <%d>", D_80131E38[k], D_80131EC8[k]);

                for (s0 = 0; s0 < D_80130578[D_801333CC][k]; s0++) {
                    GfxPrint_SetPos(printer, D_80131EBC + 2, D_80131EC0 + ind + 5);
                    if (D_80131EC8[k] == 1) {
                        idx = D_8016E1B8[k][s0].unk_4;
                        if ((idx != 0xFF) && ((gSoundBanks[k][idx].unk_2A == 4) || (gSoundBanks[k][idx].unk_2A == 5))) {
                            SoundBankEntry* entry = &gSoundBanks[k][idx];
                            GfxPrint_Printf(printer, "%2X %5d %5d %5d %02X %04X %04X", idx, (s32)*entry->posX,
                                            (s32)*entry->posY, (s32)*entry->posZ, entry->unk_24, entry->unk_26,
                                            entry->unk_28);
                        } else {
                            GfxPrint_Printf(printer, "FF ----- ----- ----- -- ---- ----", idx);
                        }
                    } else if (D_80131EC8[k] == 2) {
                        idx = D_8016E1B8[k][s0].unk_4;
                        if ((idx != 0xFF) && ((gSoundBanks[k][idx].unk_2A == 4) || (gSoundBanks[k][idx].unk_2A == 5))) {
                            SoundBankEntry* entry = &gSoundBanks[k][idx];
                            SequenceChannel* chan = gAudioContext.seqPlayers[2].channels[entry->unk_2E];
                            GfxPrint_Printf(printer, "%2X %5d %5d %5d %3d %3d %04X", idx, (s32)*entry->posX,
                                            (s32)*entry->posY, (s32)*entry->posZ, (s32)(chan->volume * 127.1f),
                                            chan->newPan, entry->unk_28);
                        } else {
                            GfxPrint_Printf(printer, "FF ----- ----- ----- --- --- ----", idx);
                        }
                    } else if (D_80131EC8[k] == 3) {
                        idx = D_8016E1B8[k][s0].unk_4;
                        if ((idx != 0xFF) && ((gSoundBanks[k][idx].unk_2A == 4) || (gSoundBanks[k][idx].unk_2A == 5))) {
                            SoundBankEntry* entry = &gSoundBanks[k][idx];
                            SequenceChannel* chan = gAudioContext.seqPlayers[2].channels[entry->unk_2E];
                            GfxPrint_Printf(printer, "%2X %5d %5d %5d %3d %3d %04X", idx, (s32)*entry->posX,
                                            (s32)*entry->posY, (s32)*entry->posZ, (s32)(chan->freqScale * 100.0f),
                                            chan->reverb, entry->unk_28);
                        } else {
                            GfxPrint_Printf(printer, "FF ----- ----- ----- --- --- ----", idx);
                        }
                    } else if (D_80131EC8[k] == 4) {
                        idx = D_8016E1B8[k][s0].unk_4;
                        if ((idx != 0xFF) && ((gSoundBanks[k][idx].unk_2A == 4) || (gSoundBanks[k][idx].unk_2A == 5))) {
                            SoundBankEntry* entry = &gSoundBanks[k][idx];
                            GfxPrint_Printf(printer, "%2X %04X", idx, entry->unk_28);
                        } else {
                            GfxPrint_Printf(printer, "FF ----", idx);
                        }
                    }

                    if (D_80131EC8[k] != 0) {
                        ind++;
                    }
                }
                ind++;
            }
            break;

        case 13:
            GfxPrint_SetPos(printer, 2, D_80131ED0 + 4);
            SETCOL(255, 255, 255);
            GfxPrint_Printf(printer, "*");

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "Swicth  : %d", D_80131EE4[0]);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "Lines   : %d", D_80131EE4[1] + 1);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "Color   : %d", D_80131EE4[2]);

            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "%s  : %d", D_80131E38[0], D_80131EE4[3]);

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(printer, "%s    : %d", D_80131E38[1], D_80131EE4[4]);

            GfxPrint_SetPos(printer, 3, 9);
            GfxPrint_Printf(printer, "ENVRONM : %d", D_80131EE4[5]);

            GfxPrint_SetPos(printer, 3, 10);
            GfxPrint_Printf(printer, "%s   : %d", D_80131E38[3], D_80131EE4[6]);

            GfxPrint_SetPos(printer, 3, 11);
            GfxPrint_Printf(printer, "%s  : %d", D_80131E38[4], D_80131EE4[7]);

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "%s : %d", D_80131E38[5], D_80131EE4[8]);

            GfxPrint_SetPos(printer, 3, 13);
            GfxPrint_Printf(printer, "%s    : %d", D_80131E38[6], D_80131EE4[9]);

            GfxPrint_SetPos(printer, 3, 14);
            GfxPrint_Printf(printer, "SEQ ENT : %d", D_80131EE4[10]);
            break;

        case 8:
            GfxPrint_SetPos(printer, 3, 4);
            SETCOL(255, 255, 255);
            if (D_801333F4 != 0) {
                GfxPrint_Printf(printer, "SWAP OFF");
            }

            if (D_80131F00 == 0) {
                SETCOL(255, 255, 255);
            } else {
                SETCOL(127, 127, 127);
            }
            GfxPrint_SetPos(printer, 2, D_80131F04 + 6);
            GfxPrint_Printf(printer, "*");

            phi_s2_3 = D_80131F08;
            if (D_80131F08 >= 4) {
                phi_s2_3++;
            }
            if (D_80131F00 == 1) {
                SETCOL(255, 255, 255);
                GfxPrint_SetPos(printer, phi_s2_3 + 3, 5);
                GfxPrint_Printf(printer, "V");
            }

            for (i = 0; i < 10; i++) { // s3, s6
                if (i == D_80131F04) {
                    if (D_80131F00 == 0) {
                        SETCOL(192, 192, 192);
                    } else {
                        SETCOL(255, 255, 255);
                    }
                } else if (D_80131F00 == 0) {
                    SETCOL(144, 144, 144);
                } else {
                    SETCOL(96, 96, 96);
                }
                GfxPrint_SetPos(printer, 3, i + 6);
                GfxPrint_Printf(printer, "%04x %04x %s", D_8016E2E0[i], D_8016E2F8[i], D_80131F0C[D_8016E310[i]]);
            }
            break;

        case 5:
            GfxPrint_SetPos(printer, 3, 4);
            SETCOL(255, 255, 255);
            GfxPrint_Printf(printer, "Group Track:%d", D_80131F28);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "Sub Track  :%d", D_80131F2C);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "TRK NO. ");

            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "ENTRY   ");

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(printer, "MUTE    ");

            GfxPrint_SetPos(printer, 3, 9);
            GfxPrint_Printf(printer, "OPENNOTE");

            totalNumLayers = 0;        // s4
            for (i = 0; i < 16; i++) { // s3, s6
                u8 numLayers = 0;      // s2
                if (i == D_80131F2C) {
                    SETCOL(255, 255, 255);
                } else {
                    SETCOL(200, 200, 200);
                }
                GfxPrint_SetPos(printer, i + 15, 6);
                GfxPrint_Printf(printer, "%1X", i);

                GfxPrint_SetPos(printer, i + 15, 7);
                if (gAudioContext.seqPlayers[D_80131F28].channels[i]->enabled) {
                    GfxPrint_Printf(printer, "O");
                } else {
                    GfxPrint_Printf(printer, "X");
                }

                GfxPrint_SetPos(printer, i + 15, 8);
                if (gAudioContext.seqPlayers[D_80131F28].channels[i]->stopSomething2) {
                    GfxPrint_Printf(printer, "O");
                } else {
                    GfxPrint_Printf(printer, "X");
                }

                GfxPrint_SetPos(printer, i + 15, 9);
                for (j = 0; j < 4; j++) { // s0
                    if (gAudioContext.seqPlayers[D_80131F28].channels[i]->layers[j] != NULL) {
                        numLayers++;
                    }
                }

                GfxPrint_Printf(printer, "%1X", numLayers);
                totalNumLayers += numLayers;
            }

            SETCOL(255, 255, 255);
            if (D_80131F30[D_80131F28] < totalNumLayers) {
                D_80131F30[D_80131F28] = totalNumLayers;
            }
            GfxPrint_SetPos(printer, i + 16, 9);
            GfxPrint_Printf(printer, "%2d,%2d", totalNumLayers, D_80131F30[D_80131F28]);

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

            for (i = 0; i < 8; i++) { // s3, s6
                GfxPrint_SetPos(printer, (i + 5) * 3, 22);
                GfxPrint_Printf(printer, "%02X ",
                                gAudioContext.seqPlayers[D_80131F28].channels[D_80131F2C]->soundScriptIO[i]);
            }

            if (gAudioContext.seqPlayers[D_80131F28].channels[D_80131F2C]->enabled) {
                GfxPrint_SetPos(printer, 15, 11);
                GfxPrint_Printf(printer, "%d",
                                (u32)(gAudioContext.seqPlayers[D_80131F28].channels[D_80131F2C]->volume * 127.1) &
                                    0xFF);

                GfxPrint_SetPos(printer, 15, 12);
                GfxPrint_Printf(printer, "%d",
                                (u32)(gAudioContext.seqPlayers[D_80131F28].channels[D_80131F2C]->volumeScale * 127.1) &
                                    0xFF);

                GfxPrint_SetPos(printer, 15, 13);
                GfxPrint_Printf(printer, "%X", gAudioContext.seqPlayers[D_80131F28].channels[D_80131F2C]->bankId);

                instOrWave = (u8)gAudioContext.seqPlayers[D_80131F28].channels[D_80131F2C]->instOrWave;
                if (instOrWave == 0) {
                    inst = 0x7F;
                } else {
                    inst = instOrWave;
                    if (instOrWave < 0x80) {
                        inst--;
                    }
                }

                GfxPrint_SetPos(printer, 15, 14);
                GfxPrint_Printf(printer, "%d", inst);

                GfxPrint_SetPos(printer, 15, 15);
                GfxPrint_Printf(printer, "%d", gAudioContext.seqPlayers[D_80131F28].channels[D_80131F2C]->newPan);

                GfxPrint_SetPos(printer, 15, 16);
                GfxPrint_Printf(printer, "%d",
                                gAudioContext.seqPlayers[D_80131F28].channels[D_80131F2C]->panChannelWeight);

                GfxPrint_SetPos(printer, 15, 17);
                GfxPrint_Printf(printer, "%d", gAudioContext.seqPlayers[D_80131F28].channels[D_80131F2C]->reverb);

                GfxPrint_SetPos(printer, 15, 18);
                GfxPrint_Printf(printer, "%d", gAudioContext.seqPlayers[D_80131F28].channels[D_80131F2C]->notePriority);

                GfxPrint_SetPos(printer, 15, 19);
                GfxPrint_Printf(printer, "%d",
                                (gAudioContext.seqPlayers[D_80131F28].channels[D_80131F2C]->vibratoRateTarget / 32) &
                                    0xFF);

                GfxPrint_SetPos(printer, 15, 20);
                GfxPrint_Printf(printer, "%d",
                                (gAudioContext.seqPlayers[D_80131F28].channels[D_80131F2C]->vibratoExtentTarget / 8) &
                                    0xFF);

                GfxPrint_SetPos(printer, 15, 21);
                GfxPrint_Printf(printer, "%d",
                                (u32)(gAudioContext.seqPlayers[D_80131F28].channels[D_80131F2C]->freqScale * 100.0f) &
                                    0xFFFF);
            }
            break;

        case 3:
            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "TOTAL  %d", D_8014A6C4.heap);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "DRIVER %05X / %05X",
                            gAudioContext.notesAndBuffersPool.cur - gAudioContext.notesAndBuffersPool.start,
                            gAudioContext.notesAndBuffersPool.size);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(
                printer, "AT-SEQ %02X-%02X (%05X-%05X / %05X)", (u8)gAudioContext.seqLoadedPool.temporary.entries[0].id,
                (u8)gAudioContext.seqLoadedPool.temporary.entries[1].id,
                gAudioContext.seqLoadedPool.temporary.entries[0].size,
                gAudioContext.seqLoadedPool.temporary.entries[1].size, gAudioContext.seqLoadedPool.temporary.pool.size);

            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "AT-BNK %02X-%02X (%05X-%05X / %05X)",
                            (u8)gAudioContext.bankLoadedPool.temporary.entries[0].id,
                            (u8)gAudioContext.bankLoadedPool.temporary.entries[1].id,
                            gAudioContext.bankLoadedPool.temporary.entries[0].size,
                            gAudioContext.bankLoadedPool.temporary.entries[1].size,
                            gAudioContext.bankLoadedPool.temporary.pool.size);

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(
                printer, "ST-SEQ %02Xseqs  (%05X / %06X)", gAudioContext.seqLoadedPool.persistent.numEntries,
                gAudioContext.seqLoadedPool.persistent.pool.cur - gAudioContext.seqLoadedPool.persistent.pool.start,
                gAudioContext.seqLoadedPool.persistent.pool.size);

            for (k = 0; k < gAudioContext.seqLoadedPool.persistent.numEntries; k++) { // s2 (s32 loop)
                GfxPrint_SetPos(printer, (k + 1) * 3, 9);
                GfxPrint_Printf(printer, "%02x", gAudioContext.seqLoadedPool.persistent.entries[k].id);
            }

            GfxPrint_SetPos(printer, 3, 10);
            GfxPrint_Printf(
                printer, "ST-BNK %02Xbanks (%05X / %06X)", gAudioContext.bankLoadedPool.persistent.numEntries,
                gAudioContext.bankLoadedPool.persistent.pool.cur - gAudioContext.bankLoadedPool.persistent.pool.start,
                gAudioContext.bankLoadedPool.persistent.pool.size);

            for (k = 0; k < gAudioContext.bankLoadedPool.persistent.numEntries; k++) { // s2 (s32 loop)
                GfxPrint_SetPos(printer, (k + 1) * 3, 11);
                GfxPrint_Printf(printer, "%02x", gAudioContext.bankLoadedPool.persistent.entries[k].id);
            }

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "E-MEM  %05X / %05X", gAudioContext.unk_2D50.cur - gAudioContext.unk_2D50.start,
                            gAudioContext.unk_2D50.size);
            break;

        case 9:
            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "BGM No.    %02X", D_80131F4C[0]);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "SCENE SET  %02X %s", D_80131F4C[1], D_80131F44[D_80131F4C[1]]);

            SETCOL(0x64, 255, 0x64);
            GfxPrint_SetPos(printer, 2, D_80131F50 + 4);
            GfxPrint_Printf(printer, "*");

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "NEXT SCENE %02X %s", (u8)gAudioContext.seqPlayers[0].unk_158[2],
                            D_80131F44[(u8)gAudioContext.seqPlayers[0].unk_158[2]]);

            GfxPrint_SetPos(printer, 3, 8);
            GfxPrint_Printf(printer, "NOW SCENE  %02X %s", (u8)gAudioContext.seqPlayers[0].unk_158[4],
                            D_80131F44[(u8)gAudioContext.seqPlayers[0].unk_158[4]]);

            GfxPrint_SetPos(printer, 3, 9);
            GfxPrint_Printf(printer, "NOW BLOCK  %02X", (gAudioContext.seqPlayers[0].unk_158[5] + 1) & 0xFF);

            GfxPrint_SetPos(printer, 3, 11);
            GfxPrint_Printf(printer, "PORT");

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "%02X %02X %02X %02X", (u8)gAudioContext.seqPlayers[0].unk_158[0],
                            (u8)gAudioContext.seqPlayers[0].unk_158[1], (u8)gAudioContext.seqPlayers[0].unk_158[2],
                            (u8)gAudioContext.seqPlayers[0].unk_158[3]);

            GfxPrint_SetPos(printer, 3, 13);
            GfxPrint_Printf(printer, "%02X %02X %02X %02X", (u8)gAudioContext.seqPlayers[0].unk_158[4],
                            (u8)gAudioContext.seqPlayers[0].unk_158[5], (u8)gAudioContext.seqPlayers[0].unk_158[6],
                            (u8)gAudioContext.seqPlayers[0].unk_158[7]);
            break;

        case 11:
            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "SEQ INFO  : %2d %02x %d", sDisplayedStaff.noteIdx, sDisplayedStaff.state,
                            sDisplayedStaff.pos);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "PLAY INFO : %2d %02x %d", D_8016B9F8.noteIdx, D_8016B9F8.state, D_8016B9F8.pos);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "8note REC POINTER : %08x", gScarecrowSpawnSongPtr);

            songInd = 0;                  // s2
            for (j = 0; j < 4; j++) {     // s0, a0
                for (i = 0; i < 8; i++) { // s3, s6
                    GfxPrint_SetPos(printer, (i + 1) * 3, j + 7);
                    GfxPrint_Printf(printer, "%02x", gScarecrowSpawnSongPtr[songInd++]);
                }
            }

            GfxPrint_SetPos(printer, 3, 24);
            GfxPrint_Printf(printer, "OCA:%02x SEQ:%04x PLAY:%02x REC:%02x", D_80130F10, D_80130F3C, sPlaybackState,
                            D_80131858);
            break;

        case 12:
            GfxPrint_SetPos(printer, 2, D_80131F18 + 4);
            SETCOL(127, 255, 127);
            GfxPrint_Printf(printer, "*");

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 4);
            GfxPrint_Printf(printer, "SE HD  : %02x %s", D_80131F20[0], D_80131E38[D_80131F20[0]]);

            GfxPrint_SetPos(printer, 3, 5);
            GfxPrint_Printf(printer, "SE No. : %02x", D_80131F20[1]);

            GfxPrint_SetPos(printer, 20, 6);
            GfxPrint_Printf(printer, "       : %04x", D_8013331C[D_80131F20[0]][D_80131F20[1]].unk_2);

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "SE SW    %s", func_800EE9D0(D_8013331C[D_80131F20[0]][D_80131F20[1]].unk_2, 16));

            SETCOL(127, 255, 127);
            digitStr[0] = (char)('0' + ((D_8013331C[D_80131F20[0]][D_80131F20[1]].unk_2 >> (15 - D_80131F1C)) & 1));
            GfxPrint_SetPos(printer, D_80131F1C + 12, 6);
            GfxPrint_Printf(printer, "%s", &digitStr);

            SETCOL(255, 255, 255);
            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "SE PR  : %02x", D_8013331C[D_80131F20[0]][D_80131F20[1]].unk_0);
            break;

        case 14:
            GfxPrint_SetPos(printer, 3, 4);
            SETCOL(255, 255, 255);
            GfxPrint_Printf(printer, "env_fx %d code_fx %d SPEC %d", D_80130614, D_80130618, D_80133414);

            if (sAudioUpdateTaskEnd == sAudioUpdateTaskStart) {
                D_80131C90 = (f32)((sAudioUpdateEndTime - sAudioUpdateStartTime) * 64ULL / 3) / 50000000.0f;
                if (D_80131C94 < D_80131C90) {
                    D_80131C94 = D_80131C90;
                }
            }

            GfxPrint_SetPos(printer, 3, 6);
            GfxPrint_Printf(printer, "SOUND GAME FRAME NOW %f", D_80131C90);

            GfxPrint_SetPos(printer, 3, 7);
            GfxPrint_Printf(printer, "SOUND GAME FRAME MAX %f", D_80131C94);

            GfxPrint_SetPos(printer, 3, 9);
            GfxPrint_Printf(printer, "SWITCH BGM MODE %d %d %d (FLAG %d)", D_8013061C, D_80130634, D_80130638,
                            D_80130654);

            GfxPrint_SetPos(printer, 3, 10);
            GfxPrint_Printf(printer, "ENEMY DIST %f VOL %3d", D_80130620, D_80130624);

            GfxPrint_SetPos(printer, 3, 11);
            GfxPrint_Printf(printer, "GANON DIST VOL %3d", D_8016B8B4);

            GfxPrint_SetPos(printer, 3, 12);
            GfxPrint_Printf(printer, "DEMO FLAG %d", D_8013060C);

            GfxPrint_SetPos(printer, 3, 12);
            if (D_8016BAA8 == 1) {
                GfxPrint_Printf(printer, "MARON BGM DIST %f", D_8016BAAC);
                D_8016BAA8 = 0;
            }

            GfxPrint_SetPos(printer, 3, 23);
            if (D_80131F64 != 0) {
                GfxPrint_Printf(printer, "NATURE FAILED %01x", D_80131F64);
            }

            GfxPrint_SetPos(printer, 3, 24);
            if (D_8013064C != 0) {
                GfxPrint_Printf(printer, "SARIA BGM PTR %08x", D_8013064C);
            }

            GfxPrint_SetPos(printer, 3, 25);
            GfxPrint_Printf(printer, "POLI %d(%d)", D_80131F68, numEnabledNotes);

            for (i = 0; i < 11; i++) { // s3, s6
                GfxPrint_SetPos(printer, (i + 1) * 3, 26);
                GfxPrint_Printf(printer, "%d", D_8016B9E0[i]);
            }
            break;
    }
#undef SETCOL_COMMON
#undef SETCOL
#undef SETCOL2
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EEA50.s")
#endif

void func_800F1BDC(void) {
    u16 phi_t1 = 1;

    if (D_8016BAB0 & 4) {
        if (D_80131E20[D_80131CA4] >= 0x10) {
            phi_t1 = 0x10;
        }
    } else if (D_8016BAB0 & 2) {
        if (D_80131E20[D_80131CA4] >= 0x10) {
            phi_t1 = 8;
        }
    } else {
        if (D_8016BAB0 & 8) {
            D_80131E08[D_80131CA4] = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
        if (D_80131CA4 > 0) {
            D_80131CA4--;
        } else {
            D_80131CA4 = 10;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
        if (D_80131CA4 < 10) {
            D_80131CA4++;
        } else {
            D_80131CA4 = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
        if (D_80131E08[D_80131CA4] >= phi_t1) {
            if (1) {
                D_80131E08[D_80131CA4] -= phi_t1;
            }
        } else {
            D_80131E08[D_80131CA4] += D_80131E20[D_80131CA4] - phi_t1;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
        if (D_80131E08[D_80131CA4] + phi_t1 < D_80131E20[D_80131CA4]) {
            D_80131E08[D_80131CA4] += phi_t1;
        } else {
            D_80131E08[D_80131CA4] += phi_t1 - D_80131E20[D_80131CA4];
        }
    }

    if (D_80131CA4 == 8) {
        if (D_80131E08[D_80131CA4] != 0) {
            func_800F6828(0x20);
        } else {
            func_800F6828(0);
        }
    }

    if (D_80131CA4 == 9) {
        if (D_80131E08[D_80131CA4] != 0) {
            func_800F67A0(0x20);
        } else {
            func_800F67A0(0);
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
        switch (D_80131CA4) {
            case 0:
            case 1:
                Audio_StartSeq(D_80131CA4, 0, D_80131E08[D_80131CA4]);
                break;
            case 2:
            case 3:
                Audio_PlaySoundGeneral(((D_80131E08[2] << 0xC) & 0xFFFF) + D_80131E08[3] + SFX_FLAG, &D_801333D4, 4,
                                       &D_801333E0, &D_801333E0, &D_801333E8);
                break;
            case 4:
                func_800F6700(D_80131E08[D_80131CA4]);
                break;
            case 5:
                Audio_SeqCmdE01(0, D_80131E08[D_80131CA4]);
                break;
            case 6:
                Audio_SeqCmdF(0, D_80131E08[D_80131CA4]);
                D_80131EFC = D_80131E08[6];
                if (gAudioSessionPresets[D_80131EFC].numSequencePlayers - 1 < D_80131F28) {
                    D_80131F28 = gAudioSessionPresets[D_80131EFC].numSequencePlayers - 1;
                }
                break;
            case 7:
                func_800F6FB4(D_80131E08[D_80131CA4]);
                break;
            case 8:
            case 9:
                break;
            case 10:
                func_800F7260(D_80131E08[D_80131CA4] * 127);
                break;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
        switch (D_80131CA4) {
            case 0:
            case 1:
                Audio_SeqCmd1(D_80131CA4, 0);
                break;
            case 7:
                Audio_SeqCmd1(0, 0);
                break;
            case 2:
            case 3:
                func_800F87A0(D_80131E08[2]);
                break;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CDOWN)) {
        if (D_80131CA4 == 0) {
            if (1) {}
            func_800F595C(D_80131E08[D_80131CA4]);
        }
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CRIGHT)) {
        if (D_80131CA4 == 0) {
            if (1) {}
            func_800F5ACC(D_80131E08[D_80131CA4]);
        }
    }
}

void func_800F2150(void) {
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CUP)) {
        D_80131EC0--;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CDOWN)) {
        D_80131EC0++;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CLEFT)) {
        D_80131EBC--;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CRIGHT)) {
        D_80131EBC++;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
        D_80131EBC = 0;
        D_80131EC0 = 0;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP) && D_80131EC4 > 0) {
        D_80131EC4--;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN) && D_80131EC4 < 6) {
        D_80131EC4++;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT) && D_80131EC8[D_80131EC4] > 0) {
        D_80131EC8[D_80131EC4]--;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT) && D_80131EC8[D_80131EC4] < 4) {
        D_80131EC8[D_80131EC4]++;
    }
}

void func_800F227C(void) {

    if (D_80131EE4[0] != 0) {
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_CUP)) {
            D_80131EE0--;
        }
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_CDOWN)) {
            D_80131EE0++;
        }
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_CLEFT)) {
            D_80131EDC--;
        }
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_CRIGHT)) {
            D_80131EDC++;
        }
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
            D_80131EDC = 0x1A;
            D_80131EE0 = 1;
            D_80131EE4[2] = 6;
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
            sAudioScreenPrintInd = 0;
            sAudioScreenPrintOverflow = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
        if (D_80131ED0 > 0) {
            D_80131ED0--;
        } else {
            D_80131ED0 = 10;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
        if (D_80131ED0 < 10) {
            D_80131ED0++;
        } else {
            D_80131ED0 = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
        if (D_80131EE4[D_80131ED0] > 0) {
            D_80131EE4[D_80131ED0]--;
        } else {
            D_80131EE4[D_80131ED0] = D_80131EF0[D_80131ED0] - 1;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
        if (D_80131EE4[D_80131ED0] < D_80131EF0[D_80131ED0] - 1) {
            D_80131EE4[D_80131ED0]++;
        } else {
            D_80131EE4[D_80131ED0] = 0;
        }
    }

    D_801333F0 = D_80131EE4[3] + (D_80131EE4[4] * 2) + (D_80131EE4[5] * 4) + (D_80131EE4[6] * 8) +
                 (D_80131EE4[7] * 0x10) + (D_80131EE4[8] * 0x20);
}

#ifdef NON_MATCHING
// regalloc near phi_v1
void func_800F2464(void) {
    s16 delta;
    u16 val;
    u8 phi_v1;

    if (D_80131F00 == 0) {
        if ((sDebugPadPress & 0x800) != 0) {
            if (D_80131F04 > 0) {
                D_80131F04--;
            } else {
                D_80131F04 = 9;
            }
        }
        if ((sDebugPadPress & 0x400) != 0) {
            if (D_80131F04 < 9) {
                D_80131F04++;
            } else {
                D_80131F04 = 0;
            }
        }

        phi_v1 = 9;
        if ((sDebugPadPress & 0x8000) != 0) {
            D_80131F00 = 1;
        }

        if ((sDebugPadPress & 0x4000) != 0) {
            D_8016E2E0[D_80131F04] = 0;
            D_8016E2F8[D_80131F04] = 0;
        }
        if ((sDebugPadPress & 0x1000) != 0) {
            phi_v1 = D_80131F04;
            if (phi_v1 != 0) {
                phi_v1--;
            } else {
                phi_v1 = 9;
            }
            D_8016E2E0[D_80131F04] = D_8016E2E0[phi_v1];
            if (D_80131F08) {}
            D_8016E2F8[D_80131F04] = D_8016E2F8[phi_v1];
        }
    } else {
        if ((sDebugPadPress & 0x200) != 0) {
            if (D_80131F08 > 0) {
                D_80131F08--;
            } else {
                D_80131F08 = 7;
            }
        }
        if ((sDebugPadPress & 0x100) != 0) {
            if (D_80131F08 < 7) {
                D_80131F08++;
            } else {
                D_80131F08 = 0;
            }
        }

        if (((sDebugPadPress & 0x800) != 0) || ((sDebugPadPress & 0x400) != 0)) {
            if ((sDebugPadPress & 0x800) != 0) {
                delta = (D_8016BAB0 & 8) != 0 ? 8 : 1;
            }

            if ((sDebugPadPress & 0x400) != 0) {
                delta = (D_8016BAB0 & 8) != 0 ? -8 : -1;
            }

            if (D_80131F08 < 4) {
                val = D_8016E2E0[D_80131F04] >> (((-D_80131F08) * 4) + 0xC);
                val = (val + delta) & 0xF;
                D_8016E2E0[D_80131F04] = (D_8016E2E0[D_80131F04] & ((0xF << (((-D_80131F08) * 4) + 0xC)) ^ 0xFFFF)) +
                                         (val << (((-D_80131F08) * 4) + 0xC));
            } else {
                val = D_8016E2F8[D_80131F04] >> (((-D_80131F08) * 4) + 0x1C);
                val = (val + delta) & 0xF;
                D_8016E2F8[D_80131F04] = (D_8016E2F8[D_80131F04] & ((0xF << (((-D_80131F08) * 4) + 0x1C)) ^ 0xFFFF)) +
                                         (val << (((-D_80131F08) * 4) + 0x1C));
            }
        }

        if ((sDebugPadPress & 0x8000) != 0) {
            D_80131F00 = 0;
        }

        if ((sDebugPadPress & 0x4000) != 0) {
            if (D_80131F08 < 4) {
                D_8016E2E0[D_80131F04] = 0;
            } else {
                D_8016E2F8[D_80131F04] = 0;
            }
        }
    }
    if ((sDebugPadPress & 2) != 0) {
        D_801333F4 ^= 1;
    }
    if ((sDebugPadPress & 4) != 0) {
        D_8016E310[D_80131F04] ^= 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F2464.s")
#endif

void func_800F27A0(void) {
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
        if (D_80131F28 != 0) {
            D_80131F28--;
        } else {
            D_80131F28 = gAudioSessionPresets[D_80131EFC].numSequencePlayers - 1;
        }
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
        if (D_80131F28 < gAudioSessionPresets[D_80131EFC].numSequencePlayers - 1) {
            D_80131F28++;
        } else {
            D_80131F28 = 0;
        }
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
        D_80131F2C = (D_80131F2C - 1) & 0xF;
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
        D_80131F2C = (D_80131F2C + 1) & 0xF;
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_START)) {
        D_80131F30[D_80131F28] = 0;
    }
}

void func_800F28AC(void) {
}

void func_800F28B4(void) {
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
        if (D_80131F50 > 0) {
            D_80131F50--;
        } else {
            D_80131F50 = 1;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
        if (D_80131F50 <= 0) {
            D_80131F50++;
        } else {
            D_80131F50 = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
        D_80131F4C[D_80131F50]--;
        if (D_80131F50 == 1) {
            func_800F5E90(D_80131F4C[1]);
            ; // might be a fake match?
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
        D_80131F4C[D_80131F50]++;
        if (D_80131F50 == 1) {
            func_800F5E90(D_80131F4C[1]);
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
        Audio_QueueCmdS8(MK_CMD(0x46, 0x00, 0x00, 0x00), D_80131F4C[1]);
        Audio_QueueSeqCmd(D_80131F4C[0] | 0x10000);
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
        Audio_QueueSeqCmd(0x100100FF);
    }
}

void func_800F29FC(void) {
}

void func_800F2A04(void) {
    s32 phi_a2;
    u16 sfx;

    if (D_8016BAB0 & 2) {
        phi_a2 = 8;
    } else {
        phi_a2 = 1;
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DUP)) {
        if (D_80131F18 > 0) {
            D_80131F18--;
        } else {
            D_80131F18 = 3;
        }
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DDOWN)) {
        if (D_80131F18 < 3) {
            D_80131F18++;
        } else {
            D_80131F18 = 0;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DLEFT)) {
        if (D_80131F18 < 2) {
            if (D_80131F18 == 0) {
                if (D_80131F20[D_80131F18] > 0) {
                    D_80131F20[D_80131F18]--;
                } else {
                    D_80131F20[D_80131F18] = D_80131E20[2] - 1;
                }
            } else {
                D_80131F20[D_80131F18] -= phi_a2;
                D_80131F20[D_80131F18] &= 0x1FF;
            }
        } else if (D_80131F18 == 3) {
            D_8013331C[D_80131F20[0]][D_80131F20[1]].unk_0 -= phi_a2;
        } else {
            D_80131F1C = (D_80131F1C - 1) & 0xF;
        }
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_DRIGHT)) {
        if (D_80131F18 < 2) {
            if (D_80131F18 == 0) {
                if (D_80131F20[D_80131F18] < (D_80131E20[2] - 1)) {
                    D_80131F20[D_80131F18]++;
                } else {
                    D_80131F20[D_80131F18] = 0;
                }
            } else {
                D_80131F20[D_80131F18] += phi_a2;
                D_80131F20[D_80131F18] &= 0x1FF;
            }
        } else if (D_80131F18 == 3) {
            D_8013331C[D_80131F20[0]][D_80131F20[1]].unk_0 += phi_a2;
        } else {
            D_80131F1C = (D_80131F1C + 1) & 0xF;
        }
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
        sfx = (u16)(D_80131F20[0] << 0xC) + D_80131F20[1] + SFX_FLAG;
        Audio_PlaySoundGeneral(sfx, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
        func_800F87A0(D_80131F20[0]);
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CDOWN)) {
        if (D_80131F18 == 2) {
            D_8013331C[D_80131F20[0]][D_80131F20[1]].unk_2 ^= (1 << (0xF - D_80131F1C));
        }
    }
    if (CHECK_BTN_ANY(sDebugPadPress, BTN_CUP)) {
        if (D_80131F18 < 2) {
            D_80131F20[D_80131F18] = 0;
        }
    }
}

void func_800F2D6C(const s8* str, u16 num) {
    u8 i = 0;

    sAudioScreenPrintBuf[sAudioScreenPrintInd].num = num;

    while (str[i] != 0) {
        sAudioScreenPrintBuf[sAudioScreenPrintInd].str[i] = str[i];
        i++;
    }

    while (i < 5) {
        sAudioScreenPrintBuf[sAudioScreenPrintInd].str[i] = 0;
        i++;
    }

    if (sAudioScreenPrintInd < 25 - 1) {
        sAudioScreenPrintInd++;
    } else {
        sAudioScreenPrintInd = 0;
        sAudioScreenPrintOverflow = 1;
    }
}

void func_800F1BDC(void);
void func_800F2150(void);
void func_800F227C(void);
void func_800F2464(void);
void func_800F27A0(void);
void func_800F28AC(void);
void func_800F2A04(void);

void func_800F2E28(void) {
    if (D_80131C98 != 0) {
        if (D_80131C9C != 0) {
            func_800F7260(0x6F);
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_L)) {
            // goto next page.
            if (D_80131CA0 < 0xE) {
                D_80131CA0++;
            } else {
                D_80131CA0 = 0;
            }
        }
        if (CHECK_BTN_ANY(sDebugPadPress, BTN_R)) {
            // goto previous page
            if (D_80131CA0 > 0) {
                D_80131CA0--;
            } else {
                D_80131CA0 = 0xE;
            }
        }

        if (CHECK_BTN_ANY(sDebugPadPress, BTN_Z)) {
            // change text color
            D_80131CA8++;
            D_80131CA8 &= 7;
        }

        switch (D_80131CA0) {
            case 0:
                if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
                    D_80131E08[5] ^= 0x1;
                    Audio_SeqCmdE01(0, D_80131E08[5]);
                    if (func_800FA0B4(0) != 1) {
                        Audio_SeqCmd1(0, 0);
                    }
                    Audio_SeqCmd1(1, 0);
                    Audio_SeqCmd1(3, 0);
                }

                if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
                    D_80131C9C ^= 0x1;
                    if (D_80131C9C == 0) {
                        func_800F7260(0);
                    }
                }
                break;
            case 1:
                func_800F1BDC();
                break;
            case 7:
                func_800F2150();
                break;
            case 13:
                func_800F227C();
                break;
            case 8:
                func_800F2464();
                break;
            case 5:
                func_800F27A0();
                break;
            case 3:
                func_800F28AC();
                break;
            case 9:
                func_800F28B4();
                break;
            case 11:
                func_800F29FC();
                break;
            case 12:
                func_800F2A04();
                break;
            case 14:
            default:
                break;
        }

        D_8013340C = D_80131EE4[10];
    }
}

void func_800F50CC(void);
void func_800F4A70(void);
void func_800F5CF8(void);

void func_800F3054(void) {
    if (func_800FAD34() == 0) {
        sAudioUpdateTaskStart = gAudioContext.totalTaskCnt;
        sAudioUpdateStartTime = osGetTime();
        func_800EE6F4();
        func_800F4784(&D_8016B7B8);
        func_800F4784(&D_8016B7C8);
        func_800F4A70();
        func_800F56A8();
        func_800F5CF8();
        if (D_80133414 == 7) {
            func_800F50CC();
        }
        func_800F8E3C();
        Audio_ProcessSeqCmds();
        func_800F8F88();
        func_800FA3DC();
        func_800EE97C();
        func_800F2E28();
        Audio_ScheduleProcessCmds();
        sAudioUpdateTaskEnd = gAudioContext.totalTaskCnt;
        sAudioUpdateEndTime = osGetTime();
    }
}

void func_800F3138(UNK_TYPE arg0) {
}

void func_800F3140(UNK_TYPE arg0, UNK_TYPE arg1) {
}

void func_800F314C(s8 arg0) {
    Audio_QueueCmdS32(0x82000000 | (((u8)arg0 & 0xFF) << 8), 1);
}

f32 func_800F3188(u8 bankIdx, u8 entryIdx) {
    SoundBankEntry* bankEntry;
    f32 temp_f14;
    f32 temp_f2;
    f32 phi_f0;
    f32 ret;

    bankEntry = &gSoundBanks[bankIdx][entryIdx];
    if (bankEntry->unk_26 & 0x2000) {
        return 1.0f;
    }

    if (bankEntry->unk_1C > 10000.0f) {
        ret = 0.0f;
    } else {
        switch (bankEntry->unk_26 & 3) {
            case 1:
                phi_f0 = 666.6667f;
                break;
            case 2:
                phi_f0 = 952.381f;
                break;
            case 3:
                phi_f0 = 3846.154f;
                break;
            default:
                phi_f0 = 500.0f;
                break;
        }

        temp_f14 = phi_f0 / 5.0f;

        if (bankEntry->unk_1C < temp_f14) {
            ret = 1.0f;
        } else if (bankEntry->unk_1C < phi_f0) {
            ret = ((((phi_f0 - temp_f14) - (bankEntry->unk_1C - temp_f14)) / (phi_f0 - temp_f14)) * 0.19f) + 0.81f;
        } else {
            ret = (1.0f - ((bankEntry->unk_1C - phi_f0) / (10000.0f - phi_f0))) * 0.81f;
        }
        ret = SQ(ret);
    }

    return ret;
}

s8 func_800F32F0(u8 arg0, u8 arg1, u8 arg2) {
    SoundBankEntry* temp_a3;
    SequenceChannel* temp_a1;
    s32 phi_a1;
    s8 phi_v0 = 0;
    s32 phi_v1 = 0;
    SequenceChannel* none = &gAudioContext.sequenceChannelNone;

    temp_a3 = &gSoundBanks[arg0][arg1];
    if (!(temp_a3->unk_26 & 0x1000)) {
        if (temp_a3->unk_1C < 2500.0f) {
            phi_v0 = *temp_a3->posZ > 0.0f ? (temp_a3->unk_1C / 2500.0f) * 70.0f : (temp_a3->unk_1C / 2500.0f) * 91.0f;
        } else {
            phi_v0 = 70;
        }
    }

    temp_a1 = gAudioContext.seqPlayers[2].channels[arg2];
    if (none != temp_a1) {
        phi_v1 = temp_a1->soundScriptIO[1];
        if (temp_a1->soundScriptIO[1] < 0) {
            phi_v1 = 0;
        }
    }

    phi_a1 = *temp_a3->unk_18 + phi_v0 + phi_v1;
    if ((arg0 != 5) || !((temp_a3->unk_28 & 0x1FF) < 2)) {
        phi_a1 += D_80130614 + D_80130618 + D_80130610;
    }

    if (phi_a1 >= 0x80) {
        phi_a1 = 0x7F;
    }

    return phi_a1;
}

s8 func_800F3468(f32 arg0, f32 arg1, u8 arg2) {
    f32 temp_f14;
    f32 temp_f2;
    f32 phi_f12;
    f32 phi_f2;
    f32 phi_f2_2;
    f32 phi_f12_2;
    f32 phi_f0;
    f32 phi_f0_2;

    if (arg0 < 0) {
        phi_f12 = -arg0;
    } else {
        phi_f12 = arg0;
    }
    if (arg1 < 0) {
        phi_f2 = -arg1;
    } else {
        phi_f2 = arg1;
    }

    if (phi_f12 > 8000.0f) {
        phi_f12 = 8000.0f;
    }

    if (phi_f2 > 8000.0f) {
        phi_f2 = 8000.0f;
    }

    if ((arg0 == 0.0f) && (arg1 == 0.0f)) {
        phi_f0 = 0.5f;
    } else if (phi_f2 <= phi_f12) {
        phi_f0 = (16000.0f - phi_f12) / (3.3f * (16000.0f - phi_f2));
        if (arg0 >= 0.0f) {
            phi_f0 = 1.0f - phi_f0;
        }
    } else {
        phi_f0 = (arg0 / (5.0769234f * phi_f2)) + 0.5f;
    }

    if (phi_f2 < 50.0f) {
        if (phi_f12 < 50.0f) {
            phi_f0 = ((phi_f0 - 0.5f) * SQ(phi_f12 / 50.0f)) + 0.5f;
        }
    }
    return (phi_f0 * 127.0f) + 0.5f;
}

f32 func_800F35EC(u8 bankIdx, u8 entryIdx) {
    s32 phi_v0 = 0;
    SoundBankEntry* entry = &gSoundBanks[bankIdx][entryIdx];
    f32 unk1C;
    f32 freq = 1.0f;

    if (entry->unk_26 & 0x4000) {
        freq = 1.0f - ((gAudioContext.audioRandom & 0xF) / 192.0f);
    }

    switch (bankIdx) {
        case BANK_PLAYER:
        case BANK_ITEM:
        case BANK_VOICE:
            if (D_80130644 != 0) {
                phi_v0 = 1;
            }
            break;
        case BANK_ENV:
        case BANK_ENEMY:
            if (D_80130648 != 0) {
                phi_v0 = 1;
            }
            break;
        case BANK_SYSTEM:
        case BANK_OCARINA:
            break;
    }

    if (phi_v0 == 1) {
        if (!(entry->unk_26 & 0x800)) {
            freq *= (1.0293 - ((gAudioContext.audioRandom & 0xF) / 144.0f));
        }
    }

    unk1C = entry->unk_1C;
    if (!(entry->unk_26 & 0x2000)) {
        if (!(entry->unk_26 & 0x8000)) {
            if (unk1C >= 10000.0f) {
                freq += 0.2f;
            } else {
                freq += (0.2f * (unk1C / 10000.0f));
            }
        }
    }

    if (entry->unk_26 & 0xC0) {
        freq += (entry->unk_2F / 192.0f);
    }

    return freq;
}

u8 func_800F37B8(f32 arg0, SoundBankEntry* arg1, s8 arg2) {
    s8 phi_v0;
    u8 phi_v1;
    f32 phi_f0;
    f32 phi_f12;

    if (*arg1->posZ < arg0) {
        phi_v0 = arg2 < 65 ? arg2 : 0x7F - arg2;

        if (phi_v0 < 30) {
            phi_v1 = 0;
        } else {
            phi_v1 = (((phi_v0 & 0xFFFF) * 10) - 300) / 34;
            if (phi_v1 != 0) {
                phi_v1 = 0x10 - phi_v1;
            }
        }
    } else {
        phi_v1 = 0;
    }

    if (phi_v1 == 0) {
        if (arg1->unk_26 & 0x200) {
            phi_v1 = 0xF;
        }
    }

    switch (arg1->unk_26 & 3) {
        case 1:
            phi_f0 = 12.0f;
            break;
        case 2:
            phi_f0 = 9.0f;
            break;
        case 3:
            phi_f0 = 6.0f;
            break;
        default:
            phi_f0 = 15.0f;
            break;
    }

    if (arg1->unk_1C > 1923.077f) {
        phi_f12 = 1923.077f;
    } else {
        phi_f12 = arg1->unk_1C;
    }

    return (phi_v1 * 0x10) + (u8)((phi_f0 * phi_f12) / 1923.077f);
}

s8 func_800F3990(f32 arg0, u16 arg1) {
    s8 ret = 0;

    if (arg0 >= 0.0f) {
        if (arg0 > 625.0f) {
            ret = 127;
        } else {
            ret = (arg0 / 625.0f) * 126.0f;
        }
    }
    return ret | 1;
}

void func_800F3A08(u8 bankIdx, u8 entryIdx, u8 channelIdx) {
    f32 sp44;
    s8 phi_a1;
    s8 reverb;
    f32 freqScale;
    s8 sp3B;
    u8 sp3A;
    u8 sp39;
    s8 sp38;
    f32 sp34;
    u8 sp33;
    SoundBankEntry* temp_a3;

    reverb = 0;
    sp3B = 0x40;
    sp3A = 0;
    sp39 = 0;
    sp38 = 0;
    sp33 = 0;
    freqScale = 1.0f;
    sp44 = 1.0f;
    temp_a3 = &gSoundBanks[bankIdx][entryIdx];
    switch (bankIdx) {
        case BANK_PLAYER:
        case BANK_ITEM:
        case BANK_ENV:
        case BANK_ENEMY:
        case BANK_VOICE:
            if (D_80130604 == 2) {
                sp38 = func_800F3990(*temp_a3->posY, temp_a3->unk_26);
            }
        case BANK_OCARINA:
            temp_a3->unk_1C = sqrtf(temp_a3->unk_1C);
            sp44 = func_800F3188(bankIdx, entryIdx) * *temp_a3->unk_14;
            reverb = func_800F32F0(bankIdx, entryIdx, channelIdx);
            sp3B = func_800F3468(*temp_a3->posX, *temp_a3->posZ, temp_a3->unk_C);
            freqScale = func_800F35EC(bankIdx, entryIdx) * *temp_a3->unk_10;
            if (D_80130604 == 2) {
                sp34 = D_801305C4[(temp_a3->unk_26 & 0x400) >> 10];
                if (!(temp_a3->unk_26 & 0x800)) {
                    if (*temp_a3->posZ < sp34) {
                        sp3A = 0x10;
                    }

                    if ((D_8016B8B8[channelIdx].unk_0A ^ sp3A) & 0x10) {
                        if (sp3B < 0x40) {
                            sp3A = D_8016B8B8[channelIdx].unk_0A ^ 0x14;
                        } else {
                            sp3A = D_8016B8B8[channelIdx].unk_0A ^ 0x18;
                        }
                    } else {
                        sp3A = D_8016B8B8[channelIdx].unk_0A;
                    }
                }
            }
            if (D_8013063C != 0) {
                if ((bankIdx == BANK_ITEM) || (bankIdx == BANK_PLAYER) || (bankIdx == BANK_VOICE)) {
                    sp33 = D_8013063C;
                }
            }

            if ((sp33 | D_80130640) != 0) {
                sp39 = (sp33 | D_80130640);
            } else if (D_80130604 != 2) {
            } else if (temp_a3->unk_26 & 0x2000) {
            } else {
                sp39 = func_800F37B8(sp34, temp_a3, sp3B);
            }
            break;
        case BANK_SYSTEM:
            break;
    }

    if (D_8016B8B8[channelIdx].unk_00 != sp44) {
        phi_a1 = (u8)(sp44 * 127.0f);
        D_8016B8B8[channelIdx].unk_00 = sp44;
    } else {
        phi_a1 = -1;
    }

    Audio_QueueCmdS8(0x6020000 | (channelIdx << 8) | 2, phi_a1);
    if (reverb != D_8016B8B8[channelIdx].unk_08) {
        Audio_QueueCmdS8(0x5020000 | (channelIdx << 8), reverb);
        D_8016B8B8[channelIdx].unk_08 = reverb;
    }
    if (freqScale != D_8016B8B8[channelIdx].unk_04) {
        Audio_QueueCmdF32(0x4020000 | (channelIdx << 8), freqScale);
        D_8016B8B8[channelIdx].unk_04 = freqScale;
    }
    if (sp3A != D_8016B8B8[channelIdx].unk_0A) {
        Audio_QueueCmdS8(0xE020000 | (channelIdx << 8), sp3A | 0x10);
        D_8016B8B8[channelIdx].unk_0A = sp3A;
    }
    if (sp39 != D_8016B8B8[channelIdx].unk_0B) {
        Audio_QueueCmdS8(0x6020000 | (channelIdx << 8) | 3, sp39);
        D_8016B8B8[channelIdx].unk_0B = sp39;
    }
    if (sp38 != D_8016B8B8[channelIdx].unk_0C) {
        Audio_QueueCmdS8(0xC020000 | (channelIdx << 8), 0x10);
        Audio_QueueCmdU16(0xD020000 | (channelIdx << 8), ((u16)(sp38) << 8) + 0xFF);
        D_8016B8B8[channelIdx].unk_0C = sp38;
    }
    if (sp3B != D_8016B8B8[channelIdx].unk_09) {
        Audio_QueueCmdS8(0x3020000 | (channelIdx << 8), sp3B);
        D_8016B8B8[channelIdx].unk_09 = sp3B;
    }
}

void func_800F3ED4(void) {
    u8 i;
    unk_s1* t;

    for (i = 0; i < 16; i++) {
        t = &D_8016B8B8[i];
        t->unk_00 = 1.0f;
        t->unk_04 = 1.0f;
        t->unk_08 = 0;
        t->unk_09 = 0x40;
        t->unk_0A = 0;
        t->unk_0B = 0xFF;
        t->unk_0C = 0xFF;
    }

    D_8016B8B8[0xD].unk_0C = 0;
    D_8013061C = 0;
    D_80130618 = 0;
}

void func_800F3F3C(u8 arg0) {
    if (D_8016E264[0] != 1) {
        Audio_StartSeq(3, 0, 0x6D);
        Audio_SeqCmd8(3, 0, 0, arg0);
    }
}

f32 func_800F3F84(f32 arg0) {
    f32 ret = 1.0f;

    if (arg0 > 6.0f) {
        D_8016B7A8 = 1.0f;
        D_8016B7B0 = 1.1f;
    } else {
        ret = arg0 / 6.0f;
        D_8016B7A8 = (ret * 0.22500002f) + 0.775f;
        D_8016B7B0 = (ret * 0.2f) + 0.9f;
    }
    return ret;
}

void func_800F4010(Vec3f* arg0, u16 arg1, f32 arg2) {
    f32 sp24;
    f32 phi_f0;
    u8 phi_v0;
    u16 phi_a0;

    D_80131C8C = arg2;
    sp24 = func_800F3F84(arg2);
    Audio_PlaySoundGeneral(arg1, arg0, 4, &D_8016B7B0, &D_8016B7A8, &D_801333E8);

    if ((arg1 & 0xF0) == 0xB0) {
        phi_f0 = 0.3f;
        phi_v0 = 1;
        sp24 = 1.0f;
    } else {
        phi_f0 = 1.1f;
        phi_v0 = gAudioContext.audioRandom % 2;
    }

    if ((phi_f0 < arg2) && (phi_v0 != 0)) {
        if ((arg1 & 0x80) != 0) {
            phi_a0 = 0x867;
        } else {
            phi_a0 = 0x866;
        }
        D_8016B7AC = (sp24 * 0.7) + 0.3;
        Audio_PlaySoundGeneral(phi_a0, arg0, 4U, &D_8016B7B0, &D_8016B7AC, &D_801333E8);
    }
}

void func_800F4138(Vec3f* pos, u16 sfxId, f32 arg2) {
    func_800F3F84(arg2);
    Audio_PlaySoundGeneral(sfxId, pos, 4U, &D_8016B7B0, &D_8016B7A8, &D_801333E8);
}

void func_800F4190(Vec3f* pos, u16 sfxId) {
    Audio_PlaySoundGeneral(sfxId, pos, 4, &D_801305B0, &D_801333E0, &D_801305B4);
}
void func_800F41E0(Vec3f* pos, u16 baseSfx, u8 arg2) {
    u8 offset = Audio_NextRandom() % arg2;
    Audio_PlaySoundGeneral(baseSfx + offset, pos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

void func_800F4254(Vec3f* pos, u8 level) {
    level &= 3;
    if (level != sPrevChargeLevel) {
        D_801305F4 = D_801305E4[level];
        switch (level) {
            case 1:
                Audio_PlaySoundGeneral(NA_SE_PL_SWORD_CHARGE, pos, 4, &D_801305F4, &D_801333E0, &D_801333E8);
                break;
            case 2:
                Audio_PlaySoundGeneral(NA_SE_PL_SWORD_CHARGE, pos, 4, &D_801305F4, &D_801333E0, &D_801333E8);
                break;
        }

        sPrevChargeLevel = level;
    }

    if (level != 0) {
        Audio_PlaySoundGeneral(NA_SE_IT_SWORD_CHARGE - SFX_FLAG, pos, 4, &D_801305F4, &D_801333E0, &D_801333E8);
    }
}

void func_800F436C(Vec3f* pos, u16 sfxId, f32 arg2) {
    if (arg2 < 0.75f) {
        D_8016B7D8 = ((arg2 / 0.75f) * 0.25f) + 0.5f;
    } else {
        D_8016B7D8 = arg2;
    }

    if (D_8016B7D8 > 0.5f) {
        Audio_PlaySoundGeneral(sfxId, pos, 4, &D_8016B7D8, &D_801333E0, &D_801333E8);
    }
}

void func_800F4414(Vec3f* pos, u16 sfxId, f32 arg2) {
    D_801305B8--;
    if (D_801305B8 == 0) {
        Audio_PlaySoundGeneral(sfxId, pos, 4, &D_8016B7D8, &D_801333E0, &D_801333E8);

        if (arg2 > 2.0f) {
            arg2 = 2.0f;
        }
        D_801305B8 = (s8)((D_801305C0 - D_801305BC) * (1.0f - arg2)) + D_801305C0;
    }
}

void func_800F44EC(s8 arg0, s8 arg1) {
    D_801305B8 = 1;
    D_801305BC = arg1;
    D_801305C0 = arg0;
}

void func_800F4524(Vec3f* arg0, u16 arg1, s8 arg2) {
    D_8016B7DC = arg2;
    Audio_PlaySoundGeneral(arg1, arg0, 4, &D_801333E0, &D_801333E0, &D_8016B7DC);
}

void func_800F4578(Vec3f* arg0, u16 arg1, f32 arg2) {
    D_8016B7E0 = arg2;
    Audio_PlaySoundGeneral(arg1, arg0, 4, &D_801333E0, &D_8016B7E0, &D_801333E8);
}

void func_800F45D0(f32 arg0) {
    func_800F4414(&D_801333D4, NA_SE_IT_FISHING_REEL_SLOW - SFX_FLAG, arg0);
    func_800F436C(&D_801333D4, 0, (0.15f * arg0) + 1.4f);
}

void func_800F4634(Vec3f* pos, f32 arg1) {
    if (func_800F8FF4(0x2006) == 0) {
        D_8016B7B8.unk_00 = arg1;
    } else if (arg1 != D_8016B7B8.unk_00) {
        D_8016B7B8.unk_04 = arg1;
        D_8016B7B8.unk_0C = 0x28;
        D_8016B7B8.unk_08 = (D_8016B7B8.unk_04 - D_8016B7B8.unk_00) / 40.0f;
    }
    Audio_PlaySoundGeneral(0x2006, pos, 4, &D_8016B7B8, &D_801333E0, &D_801333E8);
}

void func_800F46E0(Vec3f* pos, f32 arg0) {
    if (func_800F8FF4(0x2007) == 0) {
        D_8016B7C8.unk_00 = arg0;
    } else if (arg0 != D_8016B7C8.unk_00) {
        D_8016B7C8.unk_04 = arg0;
        D_8016B7C8.unk_0C = 0x28;
        D_8016B7C8.unk_08 = (D_8016B7C8.unk_04 - D_8016B7C8.unk_00) / 40.0f;
    }
    Audio_PlaySoundGeneral(0x2007, pos, 4, &D_8016B7C8, &D_8016B7C8, &D_801333E8);
}

void func_800F4784(unk_s2* arg0) {
    if (arg0->unk_0C != 0) {
        arg0->unk_0C--;
        if (arg0->unk_0C != 0) {
            arg0->unk_00 = arg0->unk_00 + arg0->unk_08;
        } else {
            arg0->unk_00 = arg0->unk_04;
        }
    }
}

void func_800F47BC(void) {
    Audio_SetVolScale(0, 1, 0, 0xA);
    Audio_SetVolScale(3, 1, 0, 0xA);
}

void func_800F47FC(void) {
    Audio_SetVolScale(0, 1, 0x7F, 3);
    Audio_SetVolScale(3, 1, 0x7F, 3);
}

void func_800F483C(u8 arg0, u8 arg1) {
    Audio_SetVolScale(0, 0, arg0, arg1);
}

void func_800F4870(u8 arg0) {
    s8 phi_s1;
    u8 i;

    phi_s1 = 0;
    if (arg0 == 0) {
        phi_s1 = 0x7F;
    }

    for (i = 0; i < 16; i++) {
        Audio_QueueCmdS8(_SHIFTL(0x07, 24, 8) | _SHIFTL(0x00, 16, 8) | _SHIFTL(i, 8, 8) | _SHIFTL(0, 0, 8), phi_s1);
    }

    if (arg0 == 7) {
        D_80130600 = 2;
    } else {
        func_800F491C(D_801305F8[arg0 & 7]);
    }
}

s32 func_800F491C(u8 arg0) {
    u8 phi_v0;
    u16 phi_v0_2;

    SequenceChannel* none = &gAudioContext.sequenceChannelNone;
    u8 i;

    if (D_8016B8B4 != arg0) {
        Audio_SetVolScale(0, 0, arg0, 2);
        if (arg0 < 0x40) {
            phi_v0 = 0x10;
        } else {
            phi_v0 = ((((arg0 - 0x40) >> 2) + 1) << 4);
        }

        Audio_SeqCmd8(0, 4, 15, phi_v0);
        for (i = 0; i < 0x10; i++) {
            if (none != gAudioContext.seqPlayers[0].channels[i]) {
                if ((u8)gAudioContext.seqPlayers[0].channels[i]->soundScriptIO[5] != 0xFF) {
                    // this looks like some kind of macro?
                    phi_v0_2 = ((u16)gAudioContext.seqPlayers[0].channels[i]->soundScriptIO[5] - arg0) + 0x7F;
                    if (phi_v0_2 >= 0x80) {
                        phi_v0_2 = 0x7F;
                    }
                    Audio_QueueCmdS8(_SHIFTL(5, 24, 8) | _SHIFTL(0, 16, 8) | _SHIFTL(i, 8, 8) | _SHIFTL(0, 0, 8),
                                     (u8)phi_v0_2);
                }
            }
        }
        D_8016B8B4 = arg0;
    }
    return -1;
}

void func_800F4A54(u8 arg0) {
    D_8016B8B0 = arg0;
    D_8016B8B2 = 1;
}

void func_800F4A70(void) {
    if (D_8016B8B2 == 1) {
        if (D_8016B8B1 != D_8016B8B0) {
            Audio_SetVolScale(0, 0, D_8016B8B0, 0xA);
            D_8016B8B1 = D_8016B8B0;
            D_8016B8B3 = 1;
        }
        D_8016B8B2 = 0;
    } else if (D_8016B8B3 == 1 && D_80130608 == 0) {
        Audio_SetVolScale(0, 0, 0x7F, 0xA);
        D_8016B8B1 = 0x7F;
        D_8016B8B3 = 0;
    }

    if (D_80130600 != 0) {
        D_80130600--;
        if (D_80130600 == 0) {
            func_800F491C(D_801305F8[7]);
        }
    }
}

void func_800F4B58(Vec3f* arg0, s16 arg1, u8* arg2) {
    Audio_PlaySoundGeneral(arg1, arg0, 4, &gNoteFrequencies[arg2[D_801305CC] + 39], &D_801333E0, &D_801333E8);

    if (D_801305CC < 15) {
        D_801305CC++;
    }
}

void func_800F4BE8(void) {
    D_801305CC = 0;
}

void func_800F4BF4(Vec3f* arg0, u16 arg1, s8 arg2) {
    Audio_PlaySoundGeneral(arg1, arg0, 4, &gNoteFrequencies[arg2 + 39], &D_801333E0, &D_801333E8);
}

void func_800F4C58(Vec3f* arg0, u16 sfxId, u8 arg2) {
    u8 phi_s1 = 0;
    u8 i;
    u8 bank;

    bank = SFX_BANK_SHIFT(sfxId);
    for (i = 0; i < bank; i++) {
        phi_s1 += D_80130578[D_801333CC][i];
    }

    for (i = 0; i < D_80130578[D_801333CC][bank]; i++) {
        if ((D_8016E1B8[bank][i].unk_4 != 0xFF) && (sfxId == gSoundBanks[bank][D_8016E1B8[bank][i].unk_4].unk_28)) {
            Audio_QueueCmdS8(_SHIFTL(6, 24, 8) | _SHIFTL(2, 16, 8) | _SHIFTL(phi_s1, 8, 8) | _SHIFTL(6, 0, 8), arg2);
        }
        phi_s1++;
    }
    Audio_PlaySoundGeneral(sfxId, arg0, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

void func_800F4E30(Vec3f* arg0, f32 arg1) {
    Vec3f* temp_v0;
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_s0;
    Vec3f* phi_v0;
    f32 phi_f0;
    s32 phi_v0_2;
    f32 phi_f22;
    s32 phi_s0;
    s8 phi_s4;
    u8 i;

    if (D_8013064C == NULL) {
        D_8013064C = arg0;
        D_80130650 = arg1;
    } else if (arg0 != D_8013064C) {
        if (arg1 < D_80130650) {
            D_8013064C = arg0;
            D_80130650 = arg1;
        }
    } else {
        D_80130650 = arg1;
    }

    if (D_8013064C->x > 100.0f) {
        phi_s4 = 0x7F;
    } else if (D_8013064C->x < -100.0f) {
        phi_s4 = 0;
    } else {
        phi_s4 = ((D_8013064C->x / 100.0f) * 64.0f) + 64.0f;
    }

    if (D_80130650 > 400.0f) {
        phi_f22 = 0.1f;
    } else if (D_80130650 < 120.0f) {
        phi_f22 = 1.0f;
    } else {
        phi_f22 = ((1.0f - ((D_80130650 - 120.0f) / 280.0f)) * 0.9f) + 0.1f;
    }

    for (i = 0; i < 0x10; i++) {
        if (i != 9) {
            Audio_SeqCmd6(0, 2, i, (127.0f * phi_f22));
            Audio_QueueCmdS8(0x03000000 | ((u8)((u32)i) << 8), phi_s4);
        }
    }
}

void func_800F50CC(void) {
    if (D_8013064C != NULL) {
        D_8013064C = NULL;
    }
}

void* func_800F50EC(Vec3f* arg0) {
    if (D_8013064C == arg0) {
        D_8013064C = NULL;
    }
}

#ifdef NON_MATCHING
// matches, but need to migrate data.
void func_800F510C(s8 arg0) {
    u8 phi_v1;
    u8 phi_a2;
    u16 phi_a1;
    u8 sp40[2] = { 0, 3 };
    u8 i;
    u8 j;

    if ((func_800FA0B4(1) == 0xFFFF) && (func_800FA0B4(3) != 0x2F)) {
        for (i = 0; i < 2; i++) {
            if (i == 0) {
                phi_v1 = arg0;
            } else {
                phi_v1 = 0x7F - arg0;
            }

            if (phi_v1 > 100) {
                phi_a2 = 11;
            } else if (phi_v1 < 20) {
                phi_a2 = 2;
            } else {
                phi_a2 = ((phi_v1 - 20) / 10) + 2;
            }

            phi_a1 = 0;
            for (j = 0; j < 0x10; j++) {
                if (gAudioContext.seqPlayers[sp40[i]].channels[j]->notePriority < phi_a2) {
                    phi_a1 += (1 << j);
                }
            }

            Audio_SeqCmdA(sp40[i], phi_a1);
        }
    }
}
#else
void func_800F510C(s8);
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F510C.s")
#endif

void func_800F52A0(Vec3f* arg0, u16 arg1, u16 arg2) {
    f32 phi_f2;
    f32 phi_f14;
    u8 phi_a2;
    f32 temp_f0;

    if (D_8016B9F3 != 0) {
        D_8016B9F3--;
        return;
    }

    phi_f14 = sqrtf(SQ(arg0->z) + SQ(arg0->x));
    if (D_8013064C == NULL) {
        D_8013064C = arg0;
        func_800F5E18(3, arg1, 0, 7, 2);
    } else {
        temp_f0 = sqrtf(SQ(D_8013064C->z) + SQ(D_8013064C->x));
        if (phi_f14 < temp_f0) {
            D_8013064C = arg0;
        } else {
            phi_f14 = temp_f0;
        }
    }

    if (arg0->y < 0.0f) {
        phi_f2 = -arg0->y;
    } else {
        phi_f2 = arg0->y;
    }

    if ((arg2 / 15.0f) < phi_f2) {
        phi_a2 = 0;
    } else if (phi_f14 < arg2) {
        phi_a2 = (1.0f - (phi_f14 / arg2)) * 127.0f;
    } else {
        phi_a2 = 0;
    }

    if (arg1 != 0x28) {
        func_800F510C(phi_a2);
    }

    Audio_SetVolScale(3, 3, phi_a2, 0);
    Audio_SetVolScale(0, 3, (0x7F - phi_a2), 0);
}

void func_800F5504(void) {
    D_8013064C = NULL;
}

void func_800F5510(u16 arg0) {
    func_800F5550(arg0);
    func_800F5E18(0, arg0, 0, 0, 1);
}

void func_800F5550(u16 arg0) {
    u8 sp27 = 0;
    u16 nv;

    if (func_800FA0B4(0) != 0x4C) {
        if (func_800FA0B4(3) == 0x2F) {
            func_800F9474(3, 0);
            Audio_QueueCmdS32(0xF8000000, 0);
        }

        if ((D_80130658[D_80130630] & 0x20) && D_80130658[(arg0 & 0xFF) & 0xFF] & 0x10) {

            if ((D_8013062C & 0x3F) != 0) {
                sp27 = 0x1E;
            }

            func_800F5E18(0, arg0, sp27, 7, D_8013062C);

            D_8013062C = 0;
        } else {
            nv = (D_80130658[(arg0 & 0xFF) & 0xFF] & 0x40) ? 1 : 0xFF;
            func_800F5E18(0, arg0, 0, 7, nv);
            if (!(D_80130658[arg0] & 0x20)) {
                D_8013062C = 0xC0;
            }
        }
        D_80130630 = arg0 & 0xFF;
    }
}

void func_800F56A8(void) {
    u16 temp_v0;
    u8 bvar;

    temp_v0 = func_800FA0B4(0);
    bvar = temp_v0 & 0xFF;
    if ((temp_v0 != 0xFFFF) && ((D_80130658[bvar] & 0x10) != 0)) {
        if (D_8013062C != 0xC0) {
            D_8013062C = gAudioContext.seqPlayers->unk_158[3];
        } else {
            D_8013062C = 0;
        }
    }
}

void func_800F5718(void) {
    if (func_800FA0B4(0) != 0x4C) {
        Audio_StartSeq(0, 0, 0x4C);
    }
}

void func_800F574C(f32 arg0, u8 arg2) {
    if (arg0 == 1.0f) {
        Audio_SeqCmdB40(0, arg2, 0);
    } else {
        Audio_SeqCmdC(1, 0x30, arg2, arg0 * 100.0f);
    }
    Audio_SeqCmdC(1, 0xA0, arg2, arg0 * 100.0f);
}

void func_800F5918(void) {
    if (func_800FA0B4(0) == 0x6C && func_800FA11C(0, 0xF0000000)) {
        Audio_SeqCmdB(0, 5, 0, 0xD2);
    }
}

void func_800F595C(u16 arg0) {
    u8 arg0b = arg0 & 0xFF;

    if (D_80130658[arg0b] & 2) {
        func_800F5C64(arg0);
    } else if (D_80130658[arg0b] & 4) {
        Audio_StartSeq(1, 0, arg0);

    } else {
        func_800F5E18(0, arg0, 0, 7, -1);
        Audio_SeqCmd1(1, 0);
    }
}

void func_800F59E8(u16 arg0) {
    u8 arg0b = arg0 & 0xFF;

    if (D_80130658[arg0b] & 2) {
        Audio_SeqCmd1(1, 0);
    } else if (D_80130658[arg0b] & 4) {
        Audio_SeqCmd1(1, 0);
    } else {
        Audio_SeqCmd1(0, 0);
    }
}

s32 func_800F5A58(u8 arg0) {
    u8 phi_a1 = 0;

    if (D_80130658[arg0 & 0xFF] & 2) {
        phi_a1 = 1;
    } else if (D_80130658[arg0 & 0xFF] & 4) {
        phi_a1 = 1;
    }

    if (arg0 == (u8)func_800FA0B4(phi_a1)) {
        return 1;
    } else {
        return 0;
    }
}

void func_800F5ACC(u16 arg0) {
    u16 temp_v0;

    temp_v0 = func_800FA0B4(0);
    if ((temp_v0 & 0xFF) != 0x2E && (temp_v0 & 0xFF) != 0x62 && temp_v0 != arg0) {
        func_800F5E90(3);
        if (temp_v0 != 0xFFFF) {
            D_80130628 = temp_v0;
        } else {
            osSyncPrintf("Middle Boss BGM Start not stack \n");
        }
        Audio_StartSeq(0, 0, arg0);
    }
}

void func_800F5B58(void) {
    if ((func_800FA0B4(0) != 0xFFFF) && (D_80130628 != 0xFFFF) && (D_80130658[func_800FA0B4(0) & 0xFF] & 8)) {
        if (D_80130628 == 0xFFFF) {
            Audio_SeqCmd1(0, 0);
        } else {
            Audio_StartSeq(0, 0, D_80130628);
        }
        D_80130628 = 0xFFFF;
    }
}

void func_800F5BF0(u8 arg0) {
    u16 temp_v0;

    temp_v0 = func_800FA0B4(0);
    if (temp_v0 != 1) {
        D_80130628 = temp_v0;
    }
    func_800F6FB4(arg0);
}

void func_800F5C2C(void) {
    if (D_80130628 != 0xFFFF) {
        Audio_StartSeq(0, 0, D_80130628);
    }
    D_80130628 = 0xFFFF;
}

void func_800F5C64(u16 arg0) {
    u16 sp26;
    u32 sp20;
    u8* sp1C;
    u8* sp18;

    sp26 = func_800FA0B4(1);
    sp1C = func_800E5E84(sp26 & 0xFF, &sp20);
    sp18 = func_800E5E84(arg0 & 0xFF, &sp20);
    if ((sp26 == 0xFFFF) || (*sp1C == *sp18)) {
        D_8016B9F4 = 1;
    } else {
        D_8016B9F4 = 5;
        Audio_SeqCmd1(1, 0);
    }
    D_8016B9F6 = arg0;
}

void func_800F5CF8(void) {
    u16 sp26;
    u16 sp24;
    u16 sp22;

    if (D_8016B9F4 != 0) {
        D_8016B9F4--;
        if (D_8016B9F4 == 0) {
            Audio_QueueCmdS32(0xE3000000, 0);
            Audio_QueueCmdS32(0xE3000000, 1);
            func_800FA0B4(0);
            sp26 = func_800FA0B4(1);
            sp22 = func_800FA0B4(3);
            if (sp26 == 0xFFFF) {
                Audio_SetVolScale(0, 1, 0, 5);
                Audio_SetVolScale(3, 1, 0, 5);
                Audio_SeqCmdC(1, 0x80, 1, 0xA);
                Audio_SeqCmdC(1, 0x83, 1, 0xA);
                Audio_SeqCmdC(1, 0x90, 0, 0);
                if (sp22 != 0x2F) {
                    Audio_SeqCmdC(1, 0x93, 0, 0);
                }
            }
            Audio_StartSeq(1, 1, D_8016B9F6);
            Audio_SeqCmdA(0, 0xFFFF);
            if (sp22 != 0x2F) {
                Audio_SeqCmdA(3, 0xFFFF);
            }
        }
    }
}

void func_800F5E18(u8 seqIdx, u16 seqId, u8 fadeTimer, s8 arg3, s8 arg4) {
    Audio_SeqCmd7(seqIdx, arg3, arg4);
    Audio_StartSeq(seqIdx, fadeTimer, seqId);
}

void func_800F5E90(u8 arg0) {
    s32 phi_t0;
    u16 phi_t1;
    u8 phi_a3;

    D_80130654 = arg0;
    if (D_80130628 == 0xFFFF) {
        if (D_8013060C != 0) {
            arg0 = 3;
        }
        phi_t1 = D_8016E750[0].unk_254;
        if (phi_t1 == 2 && func_800FA0B4(3) == 0x81A) {
            arg0 = 3;
        }

        phi_a3 = phi_t1 & 0xFF;
        if ((phi_t1 == 0xFFFF) || ((D_80130658[phi_a3] & 1) != 0) || ((D_8013061C & 0x7F) == 1)) {
            if (arg0 != (D_8013061C & 0x7F)) {
                if (arg0 == 1) {
                    if (D_8016E750[3].volScales[1] - D_80130624 < 0) {
                        phi_t0 = -(D_8016E750[3].volScales[1] - D_80130624);
                    } else {
                        phi_t0 = D_8016E750[3].volScales[1] - D_80130624;
                    }
                    Audio_SetVolScale(3, 3, D_80130624, phi_t0);
                    Audio_StartSeq(3, 10, 0x81A);
                    if (phi_t1 != 1) {
                        Audio_SetVolScale(0, 3, (0x7F - D_80130624) & 0xFF, 0xA);
                        func_800F510C(D_80130624);
                    }
                } else {
                    if ((D_8013061C & 0x7F) == 1) {
                        Audio_SeqCmd1(3, 10);
                        if (arg0 == 3) {
                            phi_a3 = 0;
                        } else {
                            phi_a3 = 10;
                        }

                        Audio_SetVolScale(0, 3, 0x7F, phi_a3);
                        func_800F510C(0);
                    }
                }

                D_8013061C = arg0 + 0x80;
            }
        } else {
            if (arg0 == 0) {
                if (D_8013061C == 2) {
                    D_80130638 = 0;
                }
                D_80130634 = 0;
                D_80130638++;
            } else {
                D_80130634++;
            }

            if (arg0 == 2 && D_80130634 < 0x1E && D_80130638 >= 0x15) {
                arg0 = 0;
            }

            D_8013061C = arg0;
            Audio_SeqCmd7(0, 2, arg0);
        }
    }
}

void func_800F6114(f32 arg0) {
    f32 phi_f0;

    if (D_8013061C == 0x81) {
        if (arg0 != D_80130620) {
            if (arg0 < 150.0f) {
                phi_f0 = 0.0f;
            } else if (arg0 > 500.0f) {
                phi_f0 = 350.0f;
            } else {
                phi_f0 = arg0 - 150.0f;
            }

            D_80130624 = ((350.0f - phi_f0) * 127.0f) / 350.0f;
            Audio_SetVolScale(3, 3, D_80130624, 0xA);
            if (D_8016E750[0].unk_254 != 1) {
                Audio_SetVolScale(0, 3, (0x7F - D_80130624), 0xA);
            }
        }
        if (D_8016E750[0].unk_254 != 1) {
            func_800F510C(D_80130624);
        }
    }
    D_80130620 = arg0;
}

void func_800F6268(f32 arg0, u16 arg1) {
    s8 pad;
    s8 phi_v1;
    s16 temp_a0;

    D_8016BAA8 = 1;
    D_8016BAAC = arg0;
    if (D_8016B9F2 == 0) {
        temp_a0 = (s8)(func_800FA0B4(0) & 0xFF);
        if (temp_a0 == (arg1 & 0xFF)) {
            if ((arg1 & 0xFF) == 0x2F) {

                if (arg0 > 2000.0f) {
                    phi_v1 = 127;
                } else if (arg0 < 200.0f) {
                    phi_v1 = 0;
                } else {
                    phi_v1 = (s8)(((arg0 - 200.0f) * 127.0f) / 1800.0f);
                }
                Audio_SeqCmd6(0, 3, 0, 127 - phi_v1);
                Audio_SeqCmd6(0, 3, 1, 127 - phi_v1);
                Audio_SeqCmd6(0, 3, 13, phi_v1);
                if (D_8016B9D8[0] == 0) {
                    D_8016B9D8[0]++;
                }
            }
        } else if ((temp_a0 == 1) && ((arg1 & 0xFF) == 0x2F)) {
            temp_a0 = (s8)(func_800FA0B4(3) & 0xFF);
            if ((temp_a0 != (arg1 & 0xFF)) && (D_8016B9D8[0] < 10)) {
                func_800F5E18(3, 0x2F, 0, 0, 0);
                Audio_SeqCmdA(3, 0xFFFC);
                D_8016B9D8[0] = 10;
            }

            if (arg0 > 2000.0f) {
                phi_v1 = 127;
            } else if (arg0 < 200.0f) {
                phi_v1 = 0;
            } else {
                phi_v1 = (s8)(((arg0 - 200.0f) * 127.0f) / 1800.0f);
            }
            Audio_SeqCmd6(3, 3, 0, 127 - phi_v1);
            Audio_SeqCmd6(3, 3, 1, 127 - phi_v1);
        }

        if (D_8016B9D8[0] < 10) {
            D_8016B9D8[0]++;
        }
    }
}

void func_800F64E0(u8 arg0) {
    D_80130608 = arg0;
    if (arg0 != 0) {
        Audio_PlaySoundGeneral(0x4800, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        Audio_QueueCmdS32(0xF1000000, 0);
    } else {
        Audio_PlaySoundGeneral(0x4801, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        Audio_QueueCmdS32(0xF2000000, 0);
    }
}

void func_800F6584(u8 arg0) {
    u8 seqIdx;
    u16 sp34;

    D_8016B9F2 = arg0;
    if ((func_800FA0B4(0) & 0xFF) == 0x2F) {
        seqIdx = 0;
        sp34 = 0;
    } else if ((func_800FA0B4(3) & 0xFF) == 0x2F) {
        seqIdx = 3;
        sp34 = 0xFFFC;
    } else {
        return;
    }

    if (arg0 != 0) {
        Audio_SeqCmd6(seqIdx, 1, 0, 0);
        Audio_SeqCmd6(seqIdx, 1, 1, 0);
        if (seqIdx == 3) {
            Audio_SeqCmdA(seqIdx, sp34 | 3);
        }
    } else {
        if (seqIdx == 3) {
            func_800F5E18(3, 0x2F, 0, 0, 0);
        }
        Audio_SeqCmd6(seqIdx, 1, 0, 0x7F);
        Audio_SeqCmd6(seqIdx, 1, 1, 0x7F);
        if (seqIdx == 3) {
            Audio_SeqCmdA(seqIdx, sp34);
        }
    }
}

void func_800F66C0(s8 arg0) {
    D_80130614 = arg0 & 0x7F;
}

void func_800F66DC(s8 arg0) {
    if (arg0 != 0) {
        D_80130618 = arg0 & 0x7F;
    }
}

void func_800F6700(s8 arg0) {
    s8 sp1F;

    switch (arg0) {
        case 0:
            sp1F = 0;
            D_80130604 = 0;
            break;
        case 1:
            sp1F = 3;
            D_80130604 = 3;
            break;
        case 2:
            sp1F = 1;
            D_80130604 = 1;
            break;
        case 3:
            sp1F = 0;
            D_80130604 = 2;
            break;
    }

    Audio_SeqCmdE0(0, sp1F);
}

void func_800F67A0(u8 arg0) {
    if (D_8013063C != arg0) {
        if (arg0 == 0) {
            Audio_StopSfx(0x86B);
        } else if (D_8013063C == 0) {
            Audio_PlaySoundGeneral(0x86B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }
    D_8013063C = arg0;
    D_80130644 = arg0;
}

void func_800F6828(u8 arg0) {
    u32 t;
    u8 i;

    D_80130648 = arg0;
    D_80130640 = arg0;
    if (D_8016E750[0].unk_254 == 1) {
        for (i = 0; i < 16; i++) {
            t = i;
            Audio_QueueCmdS8(((t & 0xFF) << 8) | 0x6000000 | 6, arg0);
        }
    }
}

void func_800F68BC(s8 arg0) {
    D_8013060C = arg0;
}

void func_800F68D4(u16 arg0, Vec3f* arg1, u8 arg2, u32* arg3, u32* arg4, u32* arg5) {
    if (D_8013060C == 0) {
        Audio_PlaySoundGeneral(arg0, arg1, arg2, arg3, arg4, arg5);
    }
}

void func_800F691C(u16 arg0) {
    func_800F68D4(arg0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

void func_800F6964(u16 arg0) {
    s32 phi_v1;
    u8 i;

    Audio_SeqCmd1(0, (arg0 * 3) / 2);
    Audio_SeqCmd1(1, (arg0 * 3) / 2);
    for (i = 0; i < 0x10; i++) {
        phi_v1 = 0;
        switch (i) {
            case 0xB:
            case 0xC:
                if (D_80133414 == 10) {
                    phi_v1 = 1;
                }
                break;
            case 0xD:
                phi_v1 = 1;
                break;
        }

        if (!phi_v1) {
            Audio_SeqCmd6(2, arg0 >> 1, i, 0);
        }
    }

    Audio_SeqCmd1(3, (arg0 * 3) / 2);
}

void func_800F6AB0(u16 arg0) {
    Audio_SeqCmd1(0, arg0);
    Audio_SeqCmd1(1, arg0);
    Audio_SeqCmd1(3, arg0);
    Audio_SetVolScale(0, 3, 0x7F, 0);
    Audio_SetVolScale(0, 1, 0x7F, 0);
}

void func_800F6B3C(void) {
    func_800F9280(2, 0, 0xFF, 5);
}

void Audio_DisableAllSeq(void) {
    Audio_DisableSeq(0, 0);
    Audio_DisableSeq(1, 0);
    Audio_DisableSeq(2, 0);
    Audio_DisableSeq(3, 0);
    Audio_ScheduleProcessCmds();
}

s8 func_800F6BB8(void) {
    return func_800E6680();
}

void func_800F6BDC(void) {
    Audio_DisableAllSeq();
    Audio_ScheduleProcessCmds();
    while (true) {
        if (!func_800F6BB8()) {
            return;
        }
    }
}

void Audio_PreNMI(void) {
    Audio_PreNMIInternal();
}

void func_800F6C34(void) {
    D_8013061C = 0;
    D_8016B7A8 = 1.0f;
    D_8016B7B0 = 1.0f;
    D_8013063C = 0;
    D_80130640 = 0;
    D_80130644 = 0;
    D_80130648 = 0;
    func_800ED858(0);
    D_8016B7B8.unk_0C = 0;
    D_8016B7C8.unk_0C = 0;
    D_8016B7B8.unk_00 = 1.0f;
    D_8016B7C8.unk_00 = 1.0f;
    D_8016B7D8 = 1.0f;
    D_8016B8B0 = 0x7F;
    D_8016B8B1 = 0x7F;
    D_8016B8B2 = 0;
    D_8016B8B3 = 0;
    D_8016B8B4 = 0xFF;
    D_8016B9D8[0] = 0;
    D_80130610 = D_801306C8[D_80133414];
    D_80130608 = 0;
    D_80130628 = 0xFFFF;
    Audio_QueueCmdS8(0x46000000, -1);
    D_8013064C = NULL;
    D_8016B9F4 = 0;
    D_8016B9F3 = 1;
    D_8016B9F2 = 0;
}

void func_800F6D58(u8 arg0, u8 arg1, u8 arg2) {
    u8 t;
    u8 temp_a0;
    u8 i;

    if ((D_8016E750[0].unk_254 != 1) && func_800FA11C(1, 0xF00000FF)) {
        D_80131F64 = 1;
        return;
    }

    if (((arg0 << 8) + arg1) == 0x101) {
        if (func_800FA0B4(3) != 0x2F) {
            *D_8016B9D8 = 0;
        }
    }

    t = arg0 >> 4;
    temp_a0 = arg0 & 0xF;
    if (t == 0) {
        t = arg0 & 0xF;
    }

    for (i = t; i <= temp_a0; i++) {
        Audio_SeqCmd8(0, arg1, i, arg2);
    }
}

void func_800F6E7C(u16 arg0, u16 arg1) {
    u8 i;
    u32 t;

    if (func_800FA0B4(0) == 0x4C) {
        func_800F3F3C(0xF);
        return;
    }
    Audio_SeqCmd7(0, 0, 1);
    Audio_SeqCmd7(0, 4, arg0 >> 8);
    Audio_SeqCmd7(0, 5, arg0 & 0xFF);
    Audio_SetVolScale(0, 0, 0x7F, 1);

    i = 0;
    if (D_80133408 != 0) {
        i = 1;
        Audio_SeqCmdE01(0, 0);
    }

    Audio_StartSeq(0, 0, 1);

    if (i != 0) {
        Audio_SeqCmdE01(0, 1);
    }

    for (i = 0; i < 0x10; i++) {
        if (!(arg1 & (1 << i)) && (arg0 & (1 << i))) {
            Audio_SeqCmd8(0, 1, i, 1);
        }
    }
}

void func_800F6FB4(u8 arg0) {
    u8 i = 0;
    u8 b0;
    u8 b1;
    u8 b2;

    if ((D_8016E750[0].unk_254 == 0xFFFF) || ((D_80130658[((u8)D_8016E750[0].unk_254) & 0xFFFF] & 0x80) == 0)) {
        func_800F6E7C(D_801306DC[arg0].unk_00, D_801306DC[arg0].unk_02);
        while ((D_801306DC[arg0].unk_04[i] != 0xFF) && (i < 100)) {
            // Probably a fake match, using Audio_SeqCmd8 doesn't work.
            b0 = D_801306DC[arg0].unk_04[i++];
            b1 = D_801306DC[arg0].unk_04[i++];
            b2 = D_801306DC[arg0].unk_04[i++];
            Audio_QueueSeqCmd(0x80000000 | (b1 << 0x10) | (b0 << 8) | b2);
        }

        Audio_SeqCmd8(0, 0x07, 0xD, D_80130604);
    }
}

void func_800F70F8(void) {
    Audio_ContextInit(0, 0);
}

void func_800F711C(void) {
    func_800F6C34();
    func_800EE930();
    func_800F3ED4();
    func_800FAEB4();
    func_800F905C();
    func_800F9280(2, 0, 0x70, 0xA);
}

void func_800F7170(void) {
    func_800F9280(2, 0, 0x70, 1);
    Audio_QueueCmdS32(0xF2000000, 1);
    Audio_ScheduleProcessCmds();
    Audio_QueueCmdS32(0xF8000000, 0);
}

void func_800F71BC(s32 arg0) {
    D_80133418 = 1;
    func_800F6C34();
    func_800EE930();
    func_800F3ED4();
    func_800FADF8();
    func_800F905C();
}

void func_800F7208(void) {
    func_800FADF8();
    Audio_QueueCmdS32(0xF2000000, 1);
    func_800F6C34();
    func_800F3ED4();
    func_800F9280(2, 0, 0x70, 1);
}
