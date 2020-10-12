#include "ultra64.h"
#include "global.h"

typedef struct {
    u8 len;
    u8 notesIdx[8];
} OcarinaSongInfo;

typedef struct {
    u8 noteIdx;
    u8 unk_01;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05[3];
} OcarinaNote;

typedef struct {
    OcarinaNote notes[20];
} OcarinaSong;

extern OcarinaSong sOcarinaSongs[]; // 80130F80 // D_80131884

extern OcarinaSongInfo sOcarinaSongNotes[]; // D_80131C00

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
} unk_s5;
extern unk_s5 D_8016BA00;

extern s32 D_80130F40;
extern u16 D_80130F44;
extern u32 D_80131860;
extern u8 D_8013186;
extern u8 D_80131868;
extern u8 D_8013186C;
extern s8 D_80131870;
extern u8 D_80131874;
extern u8 D_8013185C;
extern OcarinaNote D_8016BAA0;
extern u8 D_80131864;
extern s8 D_80130F30;

extern unk_s5 D_8016B9FC;
extern OcarinaSong *D_80131840;
extern OcarinaSong D_80131884; // 
extern u8 D_80130F50;
extern unk_s5 D_8016B9F8;
extern u32 D_8016BA04;
extern s32 D_80130F68;

typedef struct {
    f32 unk_00;
    f32 unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
} unk_s1;
typedef struct {
    f32 unk_00;
    f32 unk_04;
    f32 unk_08;
    s32 unk_0C;
} unk_s2;

void func_800FA240(u8, u8, u8, u8);
void func_800F5550(u16);
void func_800F5E18(u8 arg0, u16 arg1, u8 arg2, s8 arg3, s8 arg4);
void func_800F4784(unk_s2 *arg0);
void func_800F56A8(void);

extern u8 D_80131880;
extern u8 D_80131858;
extern f32 D_80130F24;
extern s8 D_80130F34;
extern u32 D_80130F28;
extern u8 D_80131F4C[];
extern u32 sDebugPadPress; // 8016BAB8
extern u8 D_80131F50;

// stick float vals
extern f32      D_8012F6B4[];

extern s32      sOcarinaAllowedBtnMask; // 80130EFC 
extern s32      sOcarinaABtnMap; // 80130F00
extern s32      sOcarinaCUPBtnMap; // 80130F04
extern s32      sOcarinaCDownBtnMap; // 80130F08
extern u8       D_80131F64;
extern u8       D_80133408;
extern s8       D_8013060C;
extern u8       D_80130604;
extern s8       D_80130614;
extern f32      D_80130620;
extern s8       D_80130624;
extern u8       D_80131878;
extern u32      D_80130F3C;
extern u8       sCurOcarinaBtnVal; // 80130F14
extern u8       sPrevOcarinaNoteVal; // 80130F18
extern u8       sCurOcarinaBtnIdx; // note index?
extern u8       D_80130F20;
extern u8       sOcarinaInpEnabled; // D_80130F0C
extern u8       D_80130F38;
extern u16      D_80130F48;
extern s8       D_80130F10; // ocarina active?
extern u8       D_80131BF0[];
extern u8       D_80130618;
extern u8       D_8013061C;
extern u8       D_8013063C;
extern u8       D_80130640;
extern u8       D_80130644;
extern u8       D_80130648;
extern s8       D_801306C8[];
extern u8       D_80133414;
extern u8       D_80130610;
extern u8       D_80130600;
extern u8       D_801305F8[];
extern s8       D_80130608;
extern u8       D_801305FF;
extern f32*      D_8013064C;
extern u8       D_801305CC;
extern u8       D_8013062C;
extern u8       D_80130630;
extern u8       D_80130658[];
extern u8       D_80133418;
extern u16      D_80130628;
extern s8       D_80130F2C; // pitch? 

extern f32      D_8016B7A8;
extern f32      D_8016B7B0;
extern unk_s2   D_8016B7B8;
extern unk_s2   D_8016B7C8;
extern f32      D_8016B7D8;
extern u8       D_8016B8B0;
extern u8       D_8016B8B1;
extern u8       D_8016B8B2;
extern u8       D_8016B8B3;
extern u8       D_8016B8B4;
extern unk_s1   D_8016B8B8[];
extern u8       D_8016B9F2;
extern u8       D_8016B9F3;
extern u8       D_8016B9F4;
extern u16      D_8016B9F6;
extern s8       D_8016BA08;
extern s8       D_8016BA09;
extern u32      sCurOcarinaBtnPress;  // 8016BA0C
extern s32      D_8016BA10;
extern u32      sPrevOcarinaBtnPress; // 8016BA14
extern s32      D_8016BA18; // prev button.
extern u8       sOcarinaHasStartedSong; // 8016BA29
extern u8       D_8016BAA8;
extern f32      D_8016BAAC;

/**
 * BSS
*/
u32 sOcarinaUpdateStartTime; // 8016B7A0
u32 sOcarinaUpdateEndTime;
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
u8 D_8016B7E8[0xC8];
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

unk_s5 D_8016B9F8;
unk_s5 D_8016B9FC;
unk_s5 D_8016BA00;
u32 D_8016BA04;
s8 D_8016BA08;
s8 D_8016BA09;
u32 sCurOcarinaBtnPress;
s32 D_8016BA10;
u32 sPrevOcarinaBtnPress;
s32 D_8016BA18;
s32 D_8016BA1C;
u8 sCurOcarinaSong[8];
u8 sOcarinaSongAppendPos;
u8 sOcarinaHasStartedSong;
u8 sOcarinaSongNotestartIdx;
u8 sOcarinaSongCnt;
u16 sOcarinaAvailSongs;
u8 D_8016BA2E;
u16 D_8016BA30[0x10];
u16 D_8016BA50[0x10];
u16 D_8016BA70[0x10];
u8 D_8016BA90[0x10];
OcarinaNote D_8016BAA0;
u8 D_8016BAA8;
f32 D_8016BAAC;
u32 D_8016BAB0;
u32 sDebugPadPressRaw;
u32 sDebugPadPress;
s32 sOcarinaUpdateTaskCntStart;
s32 sOcarinaUpdateTaskCntEnd;

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

#ifdef NON_MATCHING
void PadMgr_RequestPadData(PadMgr* padmgr, Input* inputs, s32 mode);
void func_800ECA00(void) {
    Input inputs[4];
    s32 pad;
    u32 sp18;

    sp18 = sCurOcarinaBtnPress;
    PadMgr_RequestPadData(&gPadMgr, inputs, 0);
    sCurOcarinaBtnPress = inputs[0].cur.button;
    sPrevOcarinaBtnPress = sp18;
    D_8016BA08 = inputs[0].rel.stick_x;
    D_8016BA09 = inputs[0].rel.stick_y;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800ECA00.s")
#endif

// adju stick input f32
f32 func_800ECA60(s8 inp) {
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

u8 func_800ECB34(u8 arg0) {
    u8 temp_v1;

    temp_v1 = D_80131BF0[arg0 & 0x3F];
    if (temp_v1 == 5) {
        if (arg0 & 0x80) {
            return 2;
        }
        return 3;
    }
    return temp_v1;
}

// append scarecrow song ?
void func_800ECB7C(u8 arg0) {
    u8 savedSongIdx;
    u8 scarecrowSongIdx;
    u8 noteIdx;

    savedSongIdx = 0; 
    scarecrowSongIdx = 0;
    while(savedSongIdx < 8 && scarecrowSongIdx < 0x10){
        noteIdx = sOcarinaSongs[arg0].notes[scarecrowSongIdx++].noteIdx;
        if(noteIdx != 0xFF){
            sOcarinaSongNotes[0xC].notesIdx[savedSongIdx++] = D_80131BF0[noteIdx];
        }
    }
}

extern u8 D_8013170C;
extern u8 sOcarinaSongNotestartIdx; // 8016BA2A always 0
extern u8 sOcarinaSongCnt; // 8016BA2B 
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
extern u16 sOcarinaAvailSongs; // 8016BA2C
extern u8 D_8013187C;
extern u8 D_8016BA2E; // curSong append idx?
extern u8 D_8016B9F9;
extern u16 D_80130F4C;
extern u16 D_8016BA30[];
extern u16 D_8016BA50[];
extern u16 D_8016BA70[];
extern u8 D_8016BA90[];
extern u8 sOcarinaSongAppendPos; // 8016BA28
unk_s5 D_8016B9F8;

// start ocarina.
void func_800ECC04(u16 arg0) {
    u8 i;

    if ((sOcarinaSongs[0xC].notes[1].unk_04 != 0xFF) && ((arg0 & 0xFFF) == 0xFFF)) {
        arg0 |= 0x1000;
    }

    if ((arg0 == 0xCFFF) && (sOcarinaSongs[0xC].notes[1].unk_04 != 0xFF)) {
        arg0 = 0xDFFF;
    }

    if ((arg0 == 0xFFF) && (sOcarinaSongs[0xC].notes[1].unk_04 != 0xFF)) {
        arg0 = 0x1FFF;
    }

    if (arg0 != 0xFFFF) {
        D_80130F3C = 0x80000000 + (u32)arg0;
        sOcarinaSongNotestartIdx = 0;
        sOcarinaSongCnt = 0xE;
        if (arg0 != 0xA000) {
            sOcarinaSongCnt--;
        }
        sOcarinaAvailSongs = arg0 & 0x3FFF;
        D_8013187C = 8;
        sOcarinaHasStartedSong = 0;
        D_80131878 = 0;
        D_8016BA2E = 0;
        D_8016B9F8.unk_01 = func_800ECAF0();
        sOcarinaInpEnabled = 1;
        D_80130F4C = 0;
        for(i = 0; i < 0xE; i++){
            D_8016BA30[i] = 0;
            D_8016BA50[i] = 0;
            D_8016BA70[i] = 0;
            D_8016BA90[i] = 0;
        }

        if (arg0 & 0x8000) {
            D_8013187C = 0;
        }

        if (arg0 & 0x4000) {
            sOcarinaSongAppendPos = 0;
        }

        if (arg0 & 0xD000) {
            func_800ECB7C(0xC);
            return;
        }
    } else {
        D_80130F3C = 0;
        sOcarinaInpEnabled = 0;
    }
}

void func_800ECDBC(void) {
    if (sCurOcarinaBtnVal != 0xFF) {
        if (sOcarinaHasStartedSong == 0) {
            sOcarinaHasStartedSong = 1;
            D_80130F20 = 0xFF;
        }
    }
}

// play specific song?
void func_800ECDF8(void);
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800ECDF8.s")

extern u16 D_80130F3E;
extern u8 sCurOcarinaSong[8]; // 8016BA20
extern u8 sOcarinaNoteValues[5];

// play any song.
#ifdef NON_MATCHING
void func_800ED200(void) {
    OcarinaSongInfo *songTest;
    s16 songLen;
    u8 *curSong;
    u8 badNote;
    u8 i;
    s32 j;
    u8 correctNotes;
    s32 cond;
    u32 negLen;
    s32 appendPos;
    u8 curNote;

    if ((sCurOcarinaBtnPress & 0x20) && (sCurOcarinaBtnPress & sOcarinaAllowedBtnMask)) {
        func_800ECC04(D_80130F3E);
        return;
    }

    func_800ECDBC();

    if (sOcarinaHasStartedSong != 0) {
        if ((sPrevOcarinaNoteVal != sCurOcarinaBtnVal) && (sCurOcarinaBtnVal != 0xFF)) {
            D_8016BA2E++;
            if (D_8016BA2E >= 9) {
                D_8016BA2E = 1;
            }

            appendPos = sOcarinaSongAppendPos;
            if (sOcarinaSongAppendPos == 8) {
                for(i = 0; i < 7; i++){
                    sCurOcarinaSong[i] = sCurOcarinaSong[i + 1];
                }
            } else {
                sOcarinaSongAppendPos = ++appendPos;
            }

            curSong = &sCurOcarinaSong[appendPos];
            do{curSong[-1] = ((D_80130F2C) < 0 ? -(D_80130F2C) : (D_80130F2C)) > 20 ? 0xFF : sCurOcarinaBtnVal;}while(0);
            
            for(i = sOcarinaSongNotestartIdx; i < sOcarinaSongCnt; i++){
                if (sOcarinaAvailSongs & (u16)(1 << i)) {
                    songTest = &sOcarinaSongNotes[i];
                    songLen = songTest->len;

                    for(j = 0, badNote = 0, correctNotes = 0; j < songLen && badNote == 0 && appendPos >= songLen;){
                        negLen = -songLen;
                        curNote = curSong[j + negLen];
                        if (curNote == sOcarinaNoteValues[songTest->notesIdx[correctNotes]]) {
                            correctNotes++;
                            j = correctNotes;
                        } else {
                            badNote++;
                        }
                    }

                    if (correctNotes == songLen) {
                        D_80131878 = i + 1;
                        sOcarinaInpEnabled = 0;
                        D_80130F3C = 0;
                    }
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800ED200.s")
void func_800ED200(void);
#endif

#define OCARINA_CUP (0xE)
#define OCARINA_CDOWN (0x5)
#define OCARINA_CLEFT (0xB)
#define OCARINA_CRIGHT (0x9)
#define OCARINA_A (0x2)

#ifdef NON_MATCHING
void func_800ED458(s32 arg0) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v1;
    s32 temp_v1_2;
    s8 temp_v0_5;
    u8 temp_a0;
    u8 temp_t5;
    u8 temp_v0;
    u8 temp_v1_3;
    u8 temp_v1_4;
    u8 phi_v0;
    u8 phi_v1;
    s32 phi_v1_2;
    u8 phi_v0_2;

    if (D_80130F3C != 0) {
        if (D_80131880 != 0) {
            D_80131880--;
            return;
        }
    }

    if ((D_8016BA10 == 0) || ((sCurOcarinaBtnPress & sOcarinaAllowedBtnMask) != (D_8016BA10 & sOcarinaAllowedBtnMask))) {
        D_8016BA10 = 0;
        sCurOcarinaBtnVal = 0xFF;
        sCurOcarinaBtnIdx = 0xFF;
        if (!(D_8016BA18 & (sCurOcarinaBtnPress & sOcarinaAllowedBtnMask & sPrevOcarinaBtnPress & sOcarinaAllowedBtnMask)) && (sCurOcarinaBtnPress != 0)) {
            D_8016BA18 = sCurOcarinaBtnPress;
        } else {
            D_8016BA18 = D_8016BA18 & (sCurOcarinaBtnPress & sOcarinaAllowedBtnMask & sPrevOcarinaBtnPress & sOcarinaAllowedBtnMask);
        }

        if (D_8016BA18 & sOcarinaABtnMap) {
            osSyncPrintf("Presss NA_KEY_D4 %08x\n", sOcarinaABtnMap);
            sCurOcarinaBtnVal = 2;
            sCurOcarinaBtnIdx = 0;
        } else if (D_8016BA18 & sOcarinaCDownBtnMap) {
            osSyncPrintf("Presss NA_KEY_F4 %08x\n", sOcarinaCDownBtnMap);
            sCurOcarinaBtnVal = 5;
            sCurOcarinaBtnIdx = 1;
        } else if (D_8016BA18 & BTN_CRIGHT) {
            osSyncPrintf("Presss NA_KEY_A4 %08x\n", BTN_CRIGHT);
            sCurOcarinaBtnVal = 9;
            sCurOcarinaBtnIdx = 2;
        } else if (D_8016BA18 & BTN_CLEFT) {
            osSyncPrintf("Presss NA_KEY_B4 %08x\n", BTN_CLEFT);
            sCurOcarinaBtnVal = 0xB;
            sCurOcarinaBtnIdx = 3;
        } else if (D_8016BA18 & sOcarinaCUPBtnMap) {
            osSyncPrintf("Presss NA_KEY_D5 %08x\n");
            sCurOcarinaBtnVal = 0xE;
            sCurOcarinaBtnIdx = 4;
        }

        if ((sCurOcarinaBtnVal != 0xFF) && (sCurOcarinaBtnPress & 0x10) && (D_80131858 != 2)) {
            sCurOcarinaBtnVal++;
            sCurOcarinaBtnIdx += 0x80;
        }

        if ((sCurOcarinaBtnVal != 0xFF) && (sCurOcarinaBtnPress & 0x2000) && (D_80131858 != 2)) {
            sCurOcarinaBtnVal = D_80131858 - 1;
            sCurOcarinaBtnIdx += 0x40;;
        }
        if (D_80131858 != 2) {
            D_80130F2C = D_8016BA09;
            D_80130F24 = func_800ECA60(D_80130F2C);
            D_80130F34 = (D_8016BA08 < 0 ? -D_8016BA08 : D_8016BA08)  >> 2;
            func_800E5B20(0x6020D06, D_80130F34);
        } else {
            D_80130F2C = 0;
            D_80130F24 = 1.0f;
        }

        if ((sCurOcarinaBtnVal != 0xFF) && (sCurOcarinaBtnVal != sPrevOcarinaNoteVal)) {
            func_800E5B20(0x6020D07, D_80130F10 - 1);
            func_800E5B20(0x6020D05, sCurOcarinaBtnVal);
            Audio_PlaySoundGeneral(0x5800, &D_801333D4, 4, &D_80130F24, &D_80130F28, &D_801333E8);
        } else if ((sPrevOcarinaNoteVal != 0xFF) && (sCurOcarinaBtnVal == 0xFF)) {
            func_800F8D04(0x5800);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800ED458.s")
#endif

void func_800ED848(u8 inputEnabled) {
    sOcarinaInpEnabled = inputEnabled;
}

void func_800ED858(u8 arg0) {
    if (D_80130F10 == arg0) {
        return;
    }

    Audio_SetBGM(arg0 | 0x82010D00);
    D_80130F10 = arg0;
    if (arg0 == 0) {
        sCurOcarinaBtnPress = 0;
        sPrevOcarinaBtnPress = 0;
        D_8016BA18 = 0;
        D_8016BA10 = 0xFFFF;
        func_800ED458(0);
        func_800F8D04(0x5800);
        func_800F7260(0);
        D_80130F38 = 0;
        D_80130F48 = 0;
        sOcarinaInpEnabled = 0;
        D_80130F3C = 0;
        func_800F731C(0xD);
    } else {
        sCurOcarinaBtnPress = 0;
        func_800ECA00();
        D_8016BA10 = sCurOcarinaBtnPress;
        func_800F72B8(0xD);
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
        D_80130F38 = 0;
        func_800F8D04(0x5800);
        return;
    }

    if (songIdx < 0xF) {
        D_80131840 = &sOcarinaSongs[songIdx - 1];
    } else {
        D_80131840 = &D_80131884;
    }

    D_80130F38 = arg1;
    D_80130F40 = 0;
    D_80130F50 = 0xFF;
    D_80130F44 = 0;
    D_80130F48 = 0;
    while(D_80131840->notes[D_80130F44].noteIdx == 0xFF){
        D_80130F44++;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EDA3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EDD68.s")

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
        D_8013185C = 0;
        sOcarinaInpEnabled = 1;
        D_8016BA2E = 0;
        D_8016BAA0 = D_80131884.notes[1];
    } else {
        if (D_8013185C == 0) {
            D_80131884.notes[1] = D_8016BAA0;
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
    D_8016BA00.unk_01 = D_80131858;
    D_8016BA00.unk_02 = D_8016BA2E;
    if (D_80131858 == 0xFF) {
        D_80131858 = 0;
    }
}

void func_800EE2D4(void) {
    D_8016B9F8.unk_00 = sCurOcarinaBtnIdx & 0x3F;
    D_8016B9F8.unk_01 = func_800ECAF0();
    D_8016B9F8.unk_02 = D_8016BA2E;
}

void func_800EE318(void) {
    s32 temp_t1;
    s32 temp_t2;
    u16 temp_v0;
    u8 temp_a0;
    s32 phi_t2;

    if ((D_80130F50 & 0x3F) < 0x10) {
        D_8016B9FC.unk_00 = func_800ECB34(D_80130F50);
    }
    
    D_8016B9FC.unk_01 = D_80130F38;

    if (D_80131840 != &D_80131884) {
        D_8016B9FC.unk_02 = D_80130F48;
    } else if(D_80130F48 == 0) {
        D_8016B9FC.unk_02 = 0;
    } else {
        D_8016B9FC.unk_02 = ((D_80130F48 - 1) % 8) + 1;
    }
}

unk_s5 *func_800EE3C8(void) {
    return &D_8016BA00;
}

unk_s5 *func_800EE3D4(void) {
    if (D_8016B9F8.unk_01 < 0xFE) {
        D_80130F3C = 0;
    }
    return &D_8016B9F8;
}

unk_s5 *func_800EE3F8(void) {
    return &D_8016B9FC;
}

void func_800EE404(void) {
    s32 noteChanged;

    if ((D_80131858 != 0) && ((D_8016BA04 - D_80131860) >= 3)) {
        noteChanged = false;
        if (D_80131864 != sCurOcarinaBtnVal) {
            if (sCurOcarinaBtnVal != 0xFF) {
                D_8016BA00.unk_00 = sCurOcarinaBtnIdx & 0x3F;
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
extern u8 sOcaMinigameEndPos;
extern u8 sOcaMinigameApndPos;
extern u8 sOcaMinigameNoteCnts[];

void func_800EE57C(u8 minigameIdx) {
    u8 i;

    if (minigameIdx > 2) {
        minigameIdx = 2;
    }

    sOcaMinigameApndPos = 0;
    sOcaMinigameEndPos = sOcaMinigameNoteCnts[minigameIdx];

    for(i = 0; i < 3; i++){
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

    rnd = Audio_RandUInt();
    rndNote = sOcarinaNoteValues[rnd % 5];

    if (sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos - 1].noteIdx == rndNote) {
        rndNote = sOcarinaNoteValues[(rnd + 1) % 5];
    }

    sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos].noteIdx = rndNote;
    sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos].unk_02 = 0x2D;
    sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos].unk_04 = 0x50;
    sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos].unk_05[0] = 0;
    sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos].unk_05[1] = 0;

    sOcaMinigameApndPos++;

    sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos].noteIdx = 0xFF;
    sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos].unk_02 = 0;
    sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos + 1].noteIdx = 0xFF;
    sOcarinaSongs[OCA_MEMORYGAME_IDX].notes[sOcaMinigameApndPos + 1].unk_02 = 0;
    if (1) { } 
    return 0;
}

// input update? 
void func_800EE6F4(void) {
    D_8016BA04 = gAudioContext.totalTaskCnt;
    if (D_80130F10 != 0) {
        if (sOcarinaInpEnabled == 1) {
            func_800ECA00();
        }
        if ((D_80130F38 == 0) && (sOcarinaInpEnabled == 1)) {
            func_800ED458(0);
        }
        if (D_80130F3C != 0) {
            if (D_80130F3C & 0x4000) {
                func_800ED200();
            } else {
                func_800ECDF8();
            }
        }
        
        func_800EDA3C();
        D_80130F68 = D_8016BA04;

        if (D_80130F38 == 0) {
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

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EE824.s")

void func_800EE930(void);
void func_800EE930(void) {
    D_8016B9F8.unk_00 = 0xFF;
    D_8016B9F8.unk_01 = 0xFF;
    D_8016B9F8.unk_02 = 0;
    D_8016B9FC.unk_00 = 0xFF;
    D_8016B9FC.unk_01 = 0;
    D_8016B9FC.unk_02 = 0;
    D_8016BA00.unk_00 = 0xFF;
    D_8016BA00.unk_01 = 0xFF;
    D_8016BA00.unk_02 = 0;
    D_80131880 = 0;
}

extern u32 D_8016BAB0; // also raw? 
extern u32 sDebugPadPressRaw; // 8016BAB4

// DebugAudio_InputUpdate
void func_800EE97C(void) {
    Input inputs[4];
    u32 btn;

    PadMgr_RequestPadData(&gPadMgr, &inputs, 0);
    btn = inputs[3].cur.button;
    D_8016BAB0 = btn & 0xFFFF;
    sDebugPadPress = (btn ^ sDebugPadPressRaw) & btn;
    sDebugPadPressRaw = btn;
}

extern u8 D_8016B9B8[];
u8* func_800EE9D0(s32 arg0, u8 arg1) {
    s32 temp_a1;
    s32 temp_v1;
    u8 *temp_a3;
    s32 phi_v0;
    s32 phi_t0;
    s32 phi_v1;
    u8 i;
    u32 flg = 1;

    for(i = 0; i < arg1; flg *= 2, i++){
        if(arg0 & flg){
            D_8016B9B8[arg1 - i - 1] = 0x31;
        } else {
            D_8016B9B8[arg1 - i - 1] = 0x30;
        }
    }

    D_8016B9B8[arg1] = 0;
    return D_8016B9B8;
}

// Debug
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EEA50.s")

extern s16 D_80131E20[];
extern u8 D_80131CA4;

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F1BDC.s")

extern s8 D_80131EBC;
extern s8 D_80131EC0;
extern s8 D_80131EC4;
extern s8 D_80131EC8[];
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

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F227C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F2464.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F27A0.s")

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
        func_800E5B20(MK_CMD(0x46, 0x00, 0x00 , 0x00), D_80131F4C[1]);
        Audio_SetBGM(D_80131F4C[0] | 0x10000);
    }

    if (CHECK_BTN_ANY(sDebugPadPress, BTN_B)) {
        Audio_SetBGM(0x100100FF);
    }
}

void func_800F29FC(void) {
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F2A04.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F2D6C.s")

extern u8 D_80131C98;
extern u8 D_80131C9C;
extern u8 D_80131CA0;
extern u8 D_80131CA8;
extern u16 D_80131E08[];
extern u8 D_8013340C;
extern u8 D_80131EEE;
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
            D_80131CA8 = (u32)(++D_80131CA8) % 8;
        }
        
        switch(D_80131CA0){
            case 0:
                if (CHECK_BTN_ANY(sDebugPadPress, BTN_A)) {
                    D_80131E08[5] ^= 0x1;
                    Audio_SetBGM(D_80131E08[5] | 0xE0000100);
                    if (func_800FA0B4(0) != 1) {
                        Audio_SetBGM(0x100000FF);
                    }
                    Audio_SetBGM(0x110000FF);
                    Audio_SetBGM(0x130000FF);
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

        D_8013340C = D_80131EEE;
    }
}

extern u32 sOcarinaUpdateStartTime; // 8016B7A0
extern u32 sOcarinaUpdateEndTime; // 8016B7A4
extern s32 sOcarinaUpdateTaskCntStart; // 8016BABC
extern s32 sOcarinaUpdateTaskCntEnd; // 8016BAC0

void func_800F50CC(void);
void func_800F4A70(void);
void func_800F5CF8(void);

void OcarinaAudio_Update(void) {
    if (func_800FAD34() == 0) {
        sOcarinaUpdateTaskCntStart = gAudioContext.totalTaskCnt;
        sOcarinaUpdateStartTime = osGetTime();
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
        func_800FA034();
        func_800F8F88();
        func_800FA3DC();
        func_800EE97C();
        func_800F2E28();
        func_800E5B80();
        sOcarinaUpdateTaskCntEnd = gAudioContext.totalTaskCnt;
        sOcarinaUpdateEndTime = osGetTime();
    }
}

void func_800F3138(UNK_TYPE arg0) {
}

void func_800F3140(UNK_TYPE arg0, UNK_TYPE arg1) {
}

#ifdef NON_MATCHING
void func_800F314C(u32 arg0) {
    func_800E5AFC(MK_CMD(0x82, 0x00, arg0, 0x00), 1);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F314C.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F3188.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F32F0.s")

s8 func_800F3468(f32 arg0, f32 arg1, s32 arg2);
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F3468.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F35EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F37B8.s")

s8 func_800F3990(f32 arg0, s32 arg1) {
    s8 ret = 0;

    if(arg0 >= 0.0f){
        if(arg0 > 625.0f){
            ret = 0x7F;
        } else {
            ret = (arg0 / 625.0f) * 126.0f;
        }
    }
    return ret | 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F3A08.s")

void func_800F3ED4(void) {
    u8 i;
    unk_s1* t;

    for(i = 0; i < 16; i++){
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

extern u8 D_8016E264;
void func_800F3F3C(u8 arg0) {
    if (D_8016E264 != 1) {
        Audio_SetBGM(0x300006DU);
        Audio_SetBGM(arg0 | 0x83000000);
    }
}

#ifdef NON_MATCHING
f32 func_800F3F84(f32 arg0) {
    if (arg0 > 6.0f) {
        D_8016B7A8 = 1.0f;
        D_8016B7B0 = 1.1f;
        return 1.0f;
    } else {
        D_8016B7A8 = ((arg0 / 6.0f) * 0.22500002f) + 0.775f;
        D_8016B7B0 = ((arg0 / 6.0f) * 0.2f) + 0.9f;
        return (arg0 / 6.0f);
    }
}
#else
f32 func_800F3F84(f32);
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F3F84.s")
#endif

extern f32 D_8016B7AC;
extern f32 D_80131C8C;
void func_800F4010(Vec3f *arg0, u16 arg1, f32 arg2) {
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
        phi_v0 = gAudioContext.gAudioRandom % 2;
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

void func_800F4138(Vec3f *pos, u16 sfxId, f32 arg2) {
    func_800F3F84(arg2);
    Audio_PlaySoundGeneral(sfxId, pos, 4U, &D_8016B7B0, &D_8016B7A8, &D_801333E8);
}

extern u32 D_801305B0;
extern u32 D_801305B4;

void func_800F4190(Vec3f *pos, u16 sfxId) {
    Audio_PlaySoundGeneral(sfxId, pos, 4, &D_801305B0, &D_801333E0, &D_801305B4);
}
void func_800F41E0(Vec3f *pos, u16 baseSfx, u8 arg2) {
    u8 offset = Audio_RandUInt() % arg2;
    Audio_PlaySoundGeneral(baseSfx + offset, pos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

extern f32 D_801305E4[];
extern u8 D_801305E0;
extern f32 D_801305F4;
void func_800F4254(Vec3f *pos, u8 arg1) {
    arg1 = arg1 & 3;
    if (arg1 != D_801305E0) {
        D_801305F4 = D_801305E4[arg1];
        switch(arg1){
            case 1:
                Audio_PlaySoundGeneral(0x86D, pos, 4, &D_801305F4, &D_801333E0, &D_801333E8);
                break;
            case 2:
                Audio_PlaySoundGeneral(0x86DU, pos, 4, &D_801305F4, &D_801333E0, &D_801333E8);
                break;

        }
        
        D_801305E0 = arg1;
    }
    if (arg1 != 0) {
        Audio_PlaySoundGeneral(0x1022, pos, 4, &D_801305F4, &D_801333E0, &D_801333E8);
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

extern s8 D_801305B8;
extern s8 D_801305BC;
extern s8 D_801305C0;
void func_800F4414(s32 *pos, u16 sfxId, f32 arg2) {
    D_801305B8--;
    if (D_801305B8 == 0) {
        Audio_PlaySoundGeneral(sfxId, pos, 4, &D_8016B7D8, &D_801333E0, &D_801333E8);

        if (arg2 > 2.0f) {
            arg2 = 2.0f;
        }
        D_801305B8 = (s8)((D_801305C0 - D_801305BC) * (1.0f - arg2)) + D_801305C0;
    }
}

void func_800F4414(s32*, u16, f32);


void func_800F44EC(s8 arg0, s8 arg1) {
    D_801305B8 = 1;
    D_801305BC = arg1;
    D_801305C0 = arg0;
}

extern s8 D_8016B7DC;
extern f32 D_8016B7E0;

void func_800F4524(Vec3f *arg0, u16 arg1, s8 arg2) {
    D_8016B7DC = arg2;
    Audio_PlaySoundGeneral(arg1, arg0, 4, &D_801333E0, &D_801333E0, &D_8016B7DC);
}

void func_800F4578(Vec3f *arg0, u16 arg1, f32 arg2) {
    D_8016B7E0 = arg2;
    Audio_PlaySoundGeneral(arg1, arg0, 4, &D_801333E0, &D_8016B7E0, &D_801333E8);
}

void func_800F45D0(f32 arg0) {
    func_800F4414(&D_801333D4, 0x103D, arg0);
    func_800F436C(&D_801333D4, 0, (0.15f * arg0) + 1.4f);
}

void func_800F4634(Vec3f *pos, f32 arg1) {
    if (func_800F8FF4(0x2006) == 0) {
        D_8016B7B8.unk_00 = arg1;
    } else if (arg1 != D_8016B7B8.unk_00) {
        D_8016B7B8.unk_04 = arg1;
        D_8016B7B8.unk_0C = 0x28;
        D_8016B7B8.unk_08 = (D_8016B7B8.unk_04 - D_8016B7B8.unk_00) / 40.0f;
    }
    Audio_PlaySoundGeneral(0x2006, pos, 4, &D_8016B7B8, &D_801333E0, &D_801333E8);
}

void func_800F46E0(Vec3f *pos, f32 arg0) {
    if (func_800F8FF4(0x2007) == 0) {
        D_8016B7C8.unk_00 = arg0;
    } else if (arg0 != D_8016B7C8.unk_00) {
        D_8016B7C8.unk_04 = arg0;
        D_8016B7C8.unk_0C = 0x28;
        D_8016B7C8.unk_08 = (D_8016B7C8.unk_04 - D_8016B7C8.unk_00) / 40.0f;
    }
    Audio_PlaySoundGeneral(0x2007, pos, 4, &D_8016B7C8, &D_8016B7C8, &D_801333E8);
}

void func_800F4784(unk_s2 *arg0) {
    if (arg0->unk_0C != 0) {
        arg0->unk_0C--;
        if (arg0->unk_0C != 0) {
            arg0->unk_00 = arg0->unk_00 + arg0->unk_08;
        } else {
            arg0->unk_00 = arg0->unk_04;
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F47BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F47FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F483C.s")

void func_800F4870(u8 arg0) {
    s8 phi_s1;
    u8 i;

    phi_s1 = 0;
    if(arg0 == 0){
        phi_s1 = 0x7F;
    }

    i = 0;
    do{
        func_800E5B20(MK_CMD(0x07, 0x00, (u32)i, 0x00), phi_s1);
        i++;
    } while (i < 16);

    if (arg0 == 7) {
        D_80130600 = 2;
    } else {
        func_800F491C(D_801305F8[arg0 & 7]);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F491C.s")

void func_800F4A54(u8 arg0) {
    D_8016B8B0 = arg0;
    D_8016B8B2 = 1;
}

void func_800F4A70(void) {
    if (D_8016B8B2 == 1) {
        if (D_8016B8B1 != D_8016B8B0) {
            func_800FA240(0, 0, D_8016B8B0, 0xA);
            D_8016B8B1 = D_8016B8B0;
            D_8016B8B3 = 1;
        }
        D_8016B8B2 = 0;
    } else if (D_8016B8B3 == 1 && D_80130608 == 0) {
        func_800FA240(0, 0, 0x7F, 0xA);
        D_8016B8B1 = 0x7F;
        D_8016B8B3 = 0;
    }
    
    if(D_80130600 != 0)
    {
        D_80130600--;
        if(D_80130600 == 0){
            func_800F491C(D_801305FF);
        }
    }
}

void func_800F4B58(Vec3f *arg0, u16 arg1, u8* arg2) {
    Audio_PlaySoundGeneral(arg1, arg0, 4, &gNoteFrequencies[arg2[D_801305CC] + 39], &D_801333E0, &D_801333E8);
    
    if (D_801305CC < 15) {
        D_801305CC++;
    }
}

void func_800F4BE8(void) {
    D_801305CC = 0;
}

void func_800F4BF4(Vec3f *arg0, u16 arg1, s8 arg2) {
    Audio_PlaySoundGeneral(arg1, arg0, 4, &gNoteFrequencies[arg2 + 39], &D_801333E0, &D_801333E8);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F4C58.s")

#ifdef NON_MATCHING
extern f32 D_80130650;
extern f32* D_8013064C;
void func_800F4E30(f32* arg0, f32 arg1) {
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_s0;
    s32 temp_v0;
    f32 *phi_v0;
    f32 phi_f0;
    s32 phi_v0_2;
    f32 phi_f22;
    s32 phi_s0;
    s8 phi_s4;
    u8 i;

    phi_v0 = D_8013064C;
    if (D_8013064C == 0) {
        D_80130650 = arg1;
        D_8013064C = arg0;
        phi_v0 = arg0;
        phi_f0 = D_80130650;
    } else if (arg0 != D_8013064C) {
        phi_v0 = D_8013064C;
        phi_f0 = D_80130650;
        if (arg1 < temp_f0) {
            D_80130650 = arg1;
            D_8013064C = arg0;
            phi_v0 = arg0;
            phi_f0 = D_80130650;
        }
    } else {
        D_80130650 = arg1;
        phi_v0 = D_8013064C;
        phi_f0 = D_80130650;
    }

    temp_f2 = *phi_v0;
    if (100.0f < temp_f2) {
        phi_s4 = 0x7F;
    } else if (temp_f2 < -100.0f) {
        phi_s4 = 0;
    } else {
        phi_s4 = ((temp_f2 / 100.0f) * 64.0f) + 64.0f;
    }

    if (400.0f < phi_f0) {
        phi_f22 = 0.1f;
    } else if (phi_f0 < 120.0f) {
        phi_f22 = 1.0f;
    } else {
        phi_f22 = ((1.0f - ((phi_f0 - 120.0f) / 280.0f)) * 0.9f) + 0.1f;
    }

    for(i = 0; i < 0x10; i++){
        if (i != 9) {
            Audio_SetBGM(MK_CMD(0x60, 0x02, i, ((u32) (127.0f * phi_f22))));
            func_800E5B20(MK_CMD(0x30, 0x00, (u32)i, 0x00), phi_s4);
        }
    }
}
#else
void func_800F4E30(f32* arg0, f32 arg1);
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F4E30.s")
#endif


void func_800F50CC(void) {
    if (D_8013064C != NULL) {
        D_8013064C = NULL;
    }
}

void *func_800F50EC(f32* arg0) {
    if (D_8013064C == arg0) {
        D_8013064C = NULL;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F510C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F52A0.s")

void func_800F5504(void) {
    D_8013064C = NULL;
}

void func_800F5510(u16 arg0) {
    func_800F5550(arg0);
    func_800F5E18(0, arg0, 0, 0, 1);
}


#ifdef NON_MATCHING
void func_800F5550(u16 arg0) {
    u8 sp27;
    s32 sp20;
    s32 temp_v1;
    s32 temp_v1_2;
    u8 temp_v0;
    u8 phi_v0;
    s8 phi_v1;

    sp27 = 0;
    if (func_800FA0B4(0) != 0x4C) {
        if (func_800FA0B4(3) == 0x2F) {
            func_800F9474(3, 0);
            func_800E5AFC(0xF8000000, 0);
        }
        if ((D_80130658[D_80130630] & 0x20) && (D_80130658[arg0] & 0x10)) {

            if ((D_8013062C & 0x3F) != 0) {
                sp27 = 0x1E;
            }
            func_800F5E18(0, arg0, sp27, 7, arg0);
            D_8013062C = 0;
        } else {
            func_800F5E18(0, arg0, 0, 7, D_80130658[arg0] & 0x40 ? 1 : 0xFF);
            if (!(D_80130658[arg0] & 0x20)) {
                D_8013062C = 0xC0;
            }
        }
        D_80130630 = arg0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F5550.s")
#endif

void func_800F56A8(void) {
    u16 temp_v0;
    u8 bvar;

    temp_v0 = func_800FA0B4(0);
    bvar = temp_v0 & 0xFF;
    if ((temp_v0 != 0xFFFF) && ((D_80130658[bvar] & 0x10) != 0)) {
        if (D_8013062C != 0xC0) {
            D_8013062C = gAudioContext.gSequencePlayers->unk_158[3];
        } else {
            D_8013062C = 0;
        }
    }
}

void func_800F5718(void) {
    if (func_800FA0B4(0) != 0x4C) {
        Audio_SetBGM(0x4C);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F574C.s")

void func_800F5918(void) {
    if (func_800FA0B4(0) == 0x6C) {
        if (func_800FA11C(0, 0xF0000000) != 0) {
            Audio_SetBGM(0xB00500D2);
        }
    }
}

#ifdef NON_MATCHING
void func_800F595C(u16 arg0) {
    if (D_80130658[(u8)arg0] & 2) {
        func_800F5C64(arg0);
    } else if (D_80130658[(u8)arg0] & 4) {
        Audio_SetBGM(0x1000000 | arg0);
        
    } else {
        func_800F5E18(0, arg0, 0, 7, -1);
        Audio_SetBGM(0x110000FF);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F595C.s")
#endif

#ifdef NON_MATCHING
void func_800F59E8(u16 arg0x) {
    u8 arg0 = arg0x;
    if (D_80130658[arg0] & 2) {
        Audio_SetBGM(0x110000FF);
    } else if (D_80130658[arg0] & 4) {
        Audio_SetBGM(0x110000FF);
    } else {
        Audio_SetBGM(0x100000FF);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F59E8.s")
#endif

#ifdef NON_MATCHING
s32 func_800F5A58(u8 arg0) {
    s32 sp18;
    s32 temp_v1;
    u8 temp_v0;
    u8 phi_a1;
    u8 phi_return;

    phi_a1 = !(D_80130658[arg0] & 2) || D_80130658[arg0] & 4 ? 1 : 0;

    phi_return = 0;
    if (func_800FA0B4(phi_a1) == arg0) {
        phi_return = 1;
    }
    
    return phi_return;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F5A58.s")
#endif

#ifdef NON_MATCHING
void func_800F5ACC(u16 arg0) {
    u8 temp_a0;
    u16 temp_v0;

    temp_a0 = temp_v0 = func_800FA0B4(0);
    if (temp_a0 != 0x2E && temp_a0 != 0x62 && arg0 != temp_v0) {
        func_800F5E90(3);
        if (temp_v0 != 0xFFFF) {
            D_80130628 = temp_v0;
        } else {
            osSyncPrintf("Middle Boss BGM Start not stack \n");
        }
        Audio_SetBGM(arg0 & 0xFFFFFFFF);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F5ACC.s")
#endif

void func_800F5B58(void) {
    if (func_800FA0B4(0) != 0xFFFF) {
        if (D_80130628 != 0xFFFF) {
            if (D_80130658[func_800FA0B4(0) & 0xFF] & 8) {
                if (D_80130628 == 0xFFFF) {
                    Audio_SetBGM(0x100000FF);
                } else {
                    Audio_SetBGM(D_80130628 & 0xFFFFFFFF);
                }
                D_80130628 = 0xFFFF;
            }
        }
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
        u32 t = D_80130628;
        Audio_SetBGM(t);
    }
    D_80130628 = 0xFFFF;
}

void func_800F5C64(u16 arg0) {
    u16 sp26;
    s32 sp20;
    u8 *sp1C;
    u8 *sp18;

    sp26 = func_800FA0B4(1);
    sp1C = func_800E5E84(sp26 & 0xFF, &sp20);
    sp18 = func_800E5E84(arg0 & 0xFF, &sp20);
    if ((sp26 == 0xFFFF) || (*sp1C == *sp18)) {
        D_8016B9F4 = 1;
    } else {
        D_8016B9F4 = 5;
        Audio_SetBGM(0x110000FF);
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
            func_800E5AFC(0xE3000000, 0);
            func_800E5AFC(0xE3000000, 1);
            func_800FA0B4(0);
            sp26 = func_800FA0B4(1);
            sp22 = func_800FA0B4(3);
            if (sp26 == 0xFFFF) {
                func_800FA240(0, 1, 0, 5);
                func_800FA240(3, 1, 0, 5);
                Audio_SetBGM(0xC180010A);
                Audio_SetBGM(0xC183010A);
                Audio_SetBGM(0xC1900000);
                if (sp22 != 0x2F) {
                    Audio_SetBGM(0xC1930000);
                }
            }
            Audio_SetBGM(D_8016B9F6 | 0x1010000);
            Audio_SetBGM(0xA000FFFF);
            if (sp22 != 0x2F) {
                Audio_SetBGM(0xA300FFFF);
            }
        }
    }
}

void func_800F5E18(u8 arg0, u16 arg1, u8 arg2, s8 arg3, s8 arg4) {
    Audio_SetBGM(0x70000000 | (arg0 << 0x18) | ((arg3 & 0xFF) << 0x10) | (u8)arg4);
    Audio_SetBGM((arg0 << 0x18) | (arg2 << 0x10) | arg1);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F5E90.s")

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
            func_800FA240(3, 3, D_80130624, 0xA);
            if (D_8016E750[0].unk_254 != 1) {
                func_800FA240(0, 3, (0x7F - D_80130624), 0xA);
            }
        }
        if (D_8016E750[0].unk_254 != 1) {
            func_800F510C(D_80130624);
        }
    }
    D_80130620 = arg0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F6268.s")

void func_800F64E0(u8 arg0) {
    D_80130608 = arg0;
    if (arg0 != 0) {
        Audio_PlaySoundGeneral(0x4800, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800E5AFC(0xF1000000, 0);
    } else {
        Audio_PlaySoundGeneral(0x4801, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800E5AFC(0xF2000000, 0);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F6584.s")

void func_800F66C0(s8 arg0) {
    D_80130614 = arg0 & 0x7F;
}

void func_800F66DC(s8 arg0) {
    if (arg0 != 0) {
        D_80130618 = arg0 & 0x7F;
    }
}

#ifdef NON_MATCHING
void func_800F6700(s8 arg0) {
    u8 sp1F;

    switch(arg0){
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

    Audio_SetBGM(sp1F | 0xE0000000);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F6700.s")
#endif

void func_800F67A0(u8 arg0) {
    if (D_8013063C != arg0) {
        if (arg0 == 0) {
            func_800F8D04(0x86B);
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
        for(i = 0; i < 16; i++){
            t = i;
            func_800E5B20(((t & 0xFF) << 8) | 0x6000000 | 6, arg0);
        }
    }
}

void func_800F68BC(s8 arg0) {
    D_8013060C = arg0;
}

void func_800F68D4(u16 arg0, Vec3f *arg1, u8 arg2, u32 *arg3, u32* arg4, u32* arg5) {
    if (D_8013060C == 0) {
        Audio_PlaySoundGeneral(arg0, arg1, arg2, arg3, arg4, arg5);
    }
}

void func_800F691C(u16 arg0) {
    func_800F68D4(arg0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F6964.s")

void func_800F6AB0(u16 arg0) {
    Audio_SetBGM(((arg0 & 0xFF) << 0x10) | 0x100000FF);
    Audio_SetBGM(((arg0 & 0xFF) << 0x10) | 0x110000FF);
    Audio_SetBGM(((arg0 & 0xFF) << 0x10) | 0x130000FF);
    func_800FA240(0, 3, 0x7F, 0);
    func_800FA240(0, 1, 0x7F, 0);
}

void func_800F6B3C(void) {
    func_800F9280(2, 0, 0xFF, 5);
}

void func_800F6B68(void) {
    func_800E5AFC(0x83000000, 0);
    func_800E5AFC(0x83010000, 0);
    func_800E5AFC(0x83020000, 0);
    func_800E5AFC(0x83030000, 0);
    func_800E5B80();
}

s8 func_800F6BB8(void) {
    return func_800E6680();
}

void func_800F6BDC(void) {
    func_800F6B68();
    func_800E5B80();
    while(true){
        if(!func_800F6BB8()){
            return; 
        }
    }
}

// AudioMgr_PreNMI
void func_800F6C14(void) {
    func_800E6024();
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
    func_800E5B20(0x46000000, -1);
    D_8013064C = NULL;
    D_8016B9F4 = 0;
    D_8016B9F3 = 1;
    D_8016B9F2 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F6D58.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F6E7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F6FB4.s")

void func_800F70F8(void) {
    func_800E3094(0, 0);
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
    func_800E5AFC(0xF2000000, 1);
    func_800E5B80();
    func_800E5AFC(0xF8000000, 0);
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
    func_800E5AFC(0xF2000000, 1);
    func_800F6C34();
    func_800F3ED4();
    func_800F9280(2, 0, 0x70, 1);
}
