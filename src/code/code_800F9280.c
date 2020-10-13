#include "ultra64.h"
#include "global.h"
#include "ultra64/abi.h"
extern unk_D_8016E750 D_8016E750[4];
extern u8 D_8016E348[4];
extern u32 D_8016E350[0x100];
extern u8 D_80133404;
extern u8 D_80133400;
extern u8 D_80133408;

void func_800F94FC(u32 arg0);

#define MK_CMD(b0,b1,b2,b3) ((((b0) & 0xFF) << 0x18) | (((b1) & 0xFF) << 0x10) | (((b2) & 0xFF) << 0x8) | (((b3) & 0xFF) << 0))

#define GT_P1(x) ((((x) & 0xF00) >> 8) & 0xFF)
#define GT_P2(x) ((((x) & 0xF00000) >> 0x14) & 0xFF)
#define GT_P3(x) (((x) >> 0x18) & 0xFF)
#define GT_P4(x) ((((x) & 0xFF0000) >> 0x10) & 0xFF)

#ifdef NON_MATCHING
void func_800F9280(u8 arg0, u8 arg1, u8 arg2, u16 arg3) {
    s32 sp2C;
    s32 sp28;
    unk_D_8016E750 *sp24;
    f32 temp_f2;
    u8 temp_a2;
    s32 temp_s0;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    u16 temp_v0;
    unk_D_8016E750 *temp_a0;
    unk_D_8016E750 *temp_a2_2;
    s32 phi_v1;
    s32 phi_v1_2;
    u8 i;

    if ((D_80133408 == 0) || (arg0 == 2)) {
        temp_v0 = arg0;
        arg2 = arg2 & 0x7F;
        if (arg2 == 0x7F) {
            func_800E5AFC(MK_CMD(0x85, temp_v0, arg1, 0x00), (u16)((arg3 >> 3) * 0x3C * (s16) gAudioContext.gAudioBufferParameters.updatesPerFrame));
        } else {
            func_800E5AFC(MK_CMD(0x82, temp_v0, arg1, 0x00), ((arg3 * gAudioContext.gAudioBufferParameters.updatesPerFrame) / 4));
        }

        D_8016E750[arg0].unk_254 = ((arg2 & 0xFF) << 8) | (arg1 & 0xFF);
        D_8016E750[arg0].unk_256 = ((arg2 & 0xFF) << 8) | (arg1 & 0xFF);
        if (1.0f != D_8016E750[arg0].unk_00) {
            func_800E5AD8(MK_CMD(0x41, temp_v0, 0x00, 0x00), D_8016E750[arg0].unk_00);
        }
        D_8016E750[arg0].unk_28 = 0;
        D_8016E750[arg0].unk_18 = 0;
        D_8016E750[arg0].unk_14 = 0;

        for(i = 0; i < 0x10; i++) {
            D_8016E750[arg0].unk_50[i].unk_00 = 1.0f;
            D_8016E750[arg0].unk_50[i].unk_0C = 0;
            D_8016E750[arg0].unk_50[i].unk_10 = 1.0f;
            D_8016E750[arg0].unk_50[i].unk_1C = 0;
        }
        D_8016E750[arg0].unk_250 = 0;
        D_8016E750[arg0].unk_252 = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800F9280.s")
void func_800F9280(u8 arg0, u8 arg1, u8 arg2, u16 arg3);
#endif

void func_800F9474(u8 arg0, u16 arg1) {
    func_800E5AFC(MK_CMD(0x83, arg0, 0x00, 0x00), (arg1 * (u16)gAudioContext.gAudioBufferParameters.updatesPerFrame) / 4);
    D_8016E750[arg0].unk_254 = 0xFFFF;
}

// big boi
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800F94FC.s")

void Audio_SetBGM(u32 bgmID) {
    D_8016E350[D_80133400] = bgmID;
    D_80133400++;
}

void func_800FA034(void) {
    while (D_80133400 != D_80133404) {
        func_800F94FC(D_8016E350[D_80133404++]);
    }
}

u16 func_800FA0B4(u8 playerIdx) {
    if (!gAudioContext.gSequencePlayers[playerIdx].enabled) {
        return 0xFFFF;
    }
    return D_8016E750[playerIdx].unk_254;
}

s32 func_800FA11C(u32 arg0, u32 arg1) {
    u8 i;

    for(i = D_80133404; i != D_80133400; i++){
        if(arg0 == (D_8016E350[i] & arg1)){
            return false;
        }
    }

    return true;
}

void func_800FA174(u8 arg0) {
    D_8016E348[arg0] = 0;
}

void func_800FA18C(u8 arg0, u8 arg1) {
    u8 i;

    for(i = 0; i < D_8016E750[arg0].unk_4D; i++){
        u8 unkb  = (D_8016E750[arg0].unk_2C[i] & 0xF00000) >> 0x14;

        if (unkb == arg1) {
            D_8016E750[arg0].unk_2C[i] = 0xFF000000;
        }
    }
}

void func_800FA240(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
    f32 phi_f0;
    u8 i;

    D_8016E750[arg0].unk_0E[arg1] = arg2 & 0x7F;
    if (arg3 != 0) {
        D_8016E750[arg0].unk_13 = 1;
        D_8016E750[arg0].unk_12 = arg3;
        return;
    }

    for(i = 0, phi_f0 = 1.0f; i < 4; i++){
        phi_f0 *= D_8016E750[arg0].unk_0E[i] / 127.0f;
    }

    func_800F94FC((arg0 << 0x18) | 0x40000000 | (arg3 << 0x10) | ((u8)(phi_f0 * 127.0f)));
}

// big boi
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800FA3DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800FAD34.s")

void func_800FADF8(void) {
    u8 i, j;

    for(i = 0; i < 4; i++){
        D_8016E348[i] = 0;
        D_8016E750[i].unk_254 = 0xFFFF;
        D_8016E750[i].unk_256 = 0xFFFF;
        D_8016E750[i].unk_28 = 0;
        D_8016E750[i].unk_18 = 0;
        D_8016E750[i].unk_14 = 0;
        D_8016E750[i].unk_258 = 0;
        D_8016E750[i].unk_4D = 0;
        D_8016E750[i].unk_4E = 0;
        D_8016E750[i].unk_250 = 0;
        D_8016E750[i].unk_252 = 0;
        for(j = 0; j < 4; j++){
            D_8016E750[i].unk_0E[j] = 0x7F;
        }
        D_8016E750[i].unk_12 = 1;
        D_8016E750[i].unk_13 = 1;
    }
}

void func_800FAEB4(void) {
    u8 i, j;

    for(i = 0; i < 4; i++){
        D_8016E750[i].unk_00 = 1.0f;
        D_8016E750[i].unk_0C = 0;
        D_8016E750[i].unk_13 = 0;
        for(j = 0; j < 4; j++){
            D_8016E750[i].unk_0E[j] = 0x7F;
        }    
    }
    func_800FADF8();
}

