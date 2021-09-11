#include "ultra64.h"
#include "global.h"
#include "ultra64/abi.h"

extern unk_D_8016E750 D_8016E750[4];
extern u8 D_8016E348[4];
extern u32 sAudioSeqCmds[0x100];
extern u8 sSeqCmdRdPos;
extern u8 sSeqCmdWrPos;
extern u8 D_80133408;
extern u8 D_80133418;
extern u8 D_801333CC;
extern u8 D_80133410[];

// TODO: clean up these macros. They are similar to ones in code_800EC960.c but without casts.
#define Audio_StartSeq(seqIdx, fadeTimer, seqId) \
    Audio_QueueSeqCmd(0x00000000 | ((seqIdx) << 24) | ((fadeTimer) << 16) | (seqId))
#define Audio_SeqCmdA(seqIdx, a) Audio_QueueSeqCmd(0xA0000000 | ((seqIdx) << 24) | (a))
#define Audio_SeqCmdB30(seqIdx, a, b) Audio_QueueSeqCmd(0xB0003000 | ((seqIdx) << 24) | ((a) << 16) | (b))
#define Audio_SeqCmdB40(seqIdx, a, b) Audio_QueueSeqCmd(0xB0004000 | ((seqIdx) << 24) | ((a) << 16) | (b))
#define Audio_SeqCmd3(seqIdx, a) Audio_QueueSeqCmd(0x30000000 | ((seqIdx) << 24) | (a))
#define Audio_SeqCmd5(seqIdx, a, b) Audio_QueueSeqCmd(0x50000000 | ((seqIdx) << 24) | ((a) << 16) | (b))
#define Audio_SeqCmd4(seqIdx, a, b) Audio_QueueSeqCmd(0x40000000 | ((seqIdx) << 24) | ((a) << 16) | (b))
#define Audio_SetVolScaleNow(seqIdx, volFadeTimer, volScale) \
    Audio_ProcessSeqCmd(0x40000000 | ((u8)seqIdx << 24) | ((u8)volFadeTimer << 16) | ((u8)(volScale * 127.0f)));

void func_800F9280(u8 seqIdx, u8 seqId, u8 arg2, u16 fadeTimer) {
    u8 i;
    u16 dur;
    s32 pad;

    if (D_80133408 == 0 || seqIdx == 2) {
        arg2 &= 0x7F;
        if (arg2 == 0x7F) {
            dur = (fadeTimer >> 3) * 60 * gAudioContext.audioBufferParameters.updatesPerFrame;
            Audio_QueueCmdS32(0x85000000 | _SHIFTL(seqIdx, 16, 8) | _SHIFTL(seqId, 8, 8), dur);
        } else {
            Audio_QueueCmdS32(0x82000000 | _SHIFTL(seqIdx, 16, 8) | _SHIFTL(seqId, 8, 8),
                              (fadeTimer * (u16)gAudioContext.audioBufferParameters.updatesPerFrame) / 4);
        }

        D_8016E750[seqIdx].unk_254 = seqId | (arg2 << 8);
        D_8016E750[seqIdx].unk_256 = seqId | (arg2 << 8);

        if (D_8016E750[seqIdx].volCur != 1.0f) {
            Audio_QueueCmdF32(0x41000000 | _SHIFTL(seqIdx, 16, 8), D_8016E750[seqIdx].volCur);
        }

        D_8016E750[seqIdx].unk_28 = 0;
        D_8016E750[seqIdx].unk_18 = 0;
        D_8016E750[seqIdx].unk_14 = 0;

        for (i = 0; i < 0x10; i++) {
            D_8016E750[seqIdx].unk_50[i].unk_00 = 1.0f;
            D_8016E750[seqIdx].unk_50[i].unk_0C = 0;
            D_8016E750[seqIdx].unk_50[i].unk_10 = 1.0f;
            D_8016E750[seqIdx].unk_50[i].unk_1C = 0;
        }

        D_8016E750[seqIdx].unk_250 = 0;
        D_8016E750[seqIdx].unk_252 = 0;
    }
}

void func_800F9474(u8 arg0, u16 arg1) {
    Audio_QueueCmdS32(0x83000000 | ((u8)arg0 << 16),
                      (arg1 * (u16)gAudioContext.audioBufferParameters.updatesPerFrame) / 4);
    D_8016E750[arg0].unk_254 = 0xFFFF;
}

typedef enum {
    SEQ_START,
    CMD1,
    CMD2,
    CMD3,
    SEQ_VOL_UPD,
    CMD5,
    CMD6,
    CMD7,
    CMD8,
    CMD9,
    CMDA,
    CMDB,
    CMDC,
    CMDD,
    CMDE,
    CMDF
} SeqCmdType;

typedef struct {
    u8 unk_0;
    u8 unk_1; // importance?
} Struct_8016E320;
extern Struct_8016E320 D_8016E320[][5]; // sorted by unk_1, descending

void Audio_ProcessSeqCmd(u32 cmd) {
    s32 pad[2];
    u16 fadeTimer;
    u16 channelMask;
    u16 val;
    u8 oldSpec;
    u8 spec;
    u8 op;
    u8 subOp;
    u8 seqIdx;
    u8 seqId;
    u8 seqArgs;
    u8 found;
    u8 port;
    u8 duration;
    u8 chanIdx;
    u8 i;
    s32 new_var;
    f32 freqScale;

    if (D_8013340C && (cmd & 0xF0000000) != 0x70000000) {
        AudioDebug_ScrPrt((const s8*)D_80133390, (cmd >> 16) & 0xFFFF); // "SEQ H"
        AudioDebug_ScrPrt((const s8*)D_80133398, cmd & 0xFFFF);         // "    L"
    }

    op = cmd >> 28;
    seqIdx = (cmd & 0xF000000) >> 24;

    switch (op) {
        case 0x0:
            // play sequence immediately
            seqId = cmd & 0xFF;
            seqArgs = (cmd & 0xFF00) >> 8;
            fadeTimer = (cmd & 0xFF0000) >> 13;
            if ((D_8016E750[seqIdx].unk_260 == 0) && (seqArgs < 0x80)) {
                func_800F9280(seqIdx, seqId, seqArgs, fadeTimer);
            }
            break;

        case 0x1:
            // disable seq player
            fadeTimer = (cmd & 0xFF0000) >> 13;
            func_800F9474(seqIdx, fadeTimer);
            break;

        case 0x2:
            // queue sequence
            seqId = cmd & 0xFF;
            seqArgs = (cmd & 0xFF00) >> 8;
            fadeTimer = (cmd & 0xFF0000) >> 13;
            new_var = seqArgs;
            for (i = 0; i < D_8016E348[seqIdx]; i++) {
                if (D_8016E320[seqIdx][i].unk_0 == seqId) {
                    if (i == 0) {
                        func_800F9280(seqIdx, seqId, seqArgs, fadeTimer);
                    }
                    return;
                }
            }

            found = D_8016E348[seqIdx];
            for (i = 0; i < D_8016E348[seqIdx]; i++) {
                if (D_8016E320[seqIdx][i].unk_1 <= new_var) {
                    found = i;
                    i = D_8016E348[seqIdx]; // "break;"
                }
            }

            if (D_8016E348[seqIdx] < 5) {
                D_8016E348[seqIdx]++;
            }
            for (i = D_8016E348[seqIdx] - 1; i != found; i--) {
                D_8016E320[seqIdx][i].unk_1 = D_8016E320[seqIdx][i - 1].unk_1;
                D_8016E320[seqIdx][i].unk_0 = D_8016E320[seqIdx][i - 1].unk_0;
            }
            D_8016E320[seqIdx][found].unk_1 = seqArgs;
            D_8016E320[seqIdx][found].unk_0 = seqId;

            if (found == 0) {
                func_800F9280(seqIdx, seqId, seqArgs, fadeTimer);
            }
            break;

        case 0x3:
            // unqueue/stop sequence
            seqId = cmd & 0xFF;
            fadeTimer = (cmd & 0xFF0000) >> 13;

            found = D_8016E348[seqIdx];
            for (i = 0; i < D_8016E348[seqIdx]; i++) {
                if (D_8016E320[seqIdx][i].unk_0 == seqId) {
                    found = i;
                    i = D_8016E348[seqIdx]; // "break;"
                }
            }

            if (found != D_8016E348[seqIdx]) {
                for (i = found; i < D_8016E348[seqIdx] - 1; i++) {
                    D_8016E320[seqIdx][i].unk_1 = D_8016E320[seqIdx][i + 1].unk_1;
                    D_8016E320[seqIdx][i].unk_0 = D_8016E320[seqIdx][i + 1].unk_0;
                }
                D_8016E348[seqIdx]--;
            }

            if (found == 0) {
                func_800F9474(seqIdx, fadeTimer);
                if (D_8016E348[seqIdx] != 0) {
                    func_800F9280(seqIdx, D_8016E320[seqIdx][0].unk_0, D_8016E320[seqIdx][0].unk_1, fadeTimer);
                }
            }
            break;

        case 0x4:
            // transition seq volume
            duration = (cmd & 0xFF0000) >> 15;
            val = cmd & 0xFF;
            if (duration == 0) {
                duration++;
            }
            D_8016E750[seqIdx].volTarget = (f32)val / 127.0f;
            if (D_8016E750[seqIdx].volCur != D_8016E750[seqIdx].volTarget) {
                D_8016E750[seqIdx].unk_08 = (D_8016E750[seqIdx].volCur - D_8016E750[seqIdx].volTarget) / (f32)duration;
                D_8016E750[seqIdx].unk_0C = duration;
            }
            break;

        case 0x5:
            // transition freq scale for all channels
            duration = (cmd & 0xFF0000) >> 15;
            val = cmd & 0xFFFF;
            if (duration == 0) {
                duration++;
            }
            freqScale = (f32)val / 1000.0f;
            for (i = 0; i < 16; i++) {
                D_8016E750[seqIdx].unk_50[i].unk_14 = freqScale;
                D_8016E750[seqIdx].unk_50[i].unk_1C = duration;
                D_8016E750[seqIdx].unk_50[i].unk_18 = (D_8016E750[seqIdx].unk_50[i].unk_10 - freqScale) / (f32)duration;
            }
            D_8016E750[seqIdx].unk_250 = 0xFFFF;
            break;

        case 0xD:
            // transition freq scale
            duration = (cmd & 0xFF0000) >> 15;
            chanIdx = (cmd & 0xF000) >> 12;
            val = cmd & 0xFFF;
            if (duration == 0) {
                duration++;
            }
            freqScale = (f32)val / 1000.0f;
            D_8016E750[seqIdx].unk_50[chanIdx].unk_14 = freqScale;
            D_8016E750[seqIdx].unk_50[chanIdx].unk_18 =
                (D_8016E750[seqIdx].unk_50[chanIdx].unk_10 - freqScale) / (f32)duration;
            D_8016E750[seqIdx].unk_50[chanIdx].unk_1C = duration;
            D_8016E750[seqIdx].unk_250 |= 1 << chanIdx;
            break;

        case 0x6:
            // transition vol scale
            duration = (cmd & 0xFF0000) >> 15;
            chanIdx = (cmd & 0xF00) >> 8;
            val = cmd & 0xFF;
            if (duration == 0) {
                duration++;
            }
            D_8016E750[seqIdx].unk_50[chanIdx].unk_04 = (f32)val / 127.0f;
            if (D_8016E750[seqIdx].unk_50[chanIdx].unk_00 != D_8016E750[seqIdx].unk_50[chanIdx].unk_04) {
                D_8016E750[seqIdx].unk_50[chanIdx].unk_08 =
                    (D_8016E750[seqIdx].unk_50[chanIdx].unk_00 - D_8016E750[seqIdx].unk_50[chanIdx].unk_04) /
                    (f32)duration;
                D_8016E750[seqIdx].unk_50[chanIdx].unk_0C = duration;
                D_8016E750[seqIdx].unk_252 |= 1 << chanIdx;
            }
            break;

        case 0x7:
            // set global io port
            port = (cmd & 0xFF0000) >> 16;
            val = cmd & 0xFF;
            Audio_QueueCmdS8(0x46000000 | _SHIFTL(seqIdx, 16, 8) | _SHIFTL(port, 0, 8), val);
            break;

        case 0x8:
            // set io port if channel masked
            chanIdx = (cmd & 0xF00) >> 8;
            port = (cmd & 0xFF0000) >> 16;
            val = cmd & 0xFF;
            if ((D_8016E750[seqIdx].unk_258 & (1 << chanIdx)) == 0) {
                Audio_QueueCmdS8(0x06000000 | _SHIFTL(seqIdx, 16, 8) | _SHIFTL(chanIdx, 8, 8) | _SHIFTL(port, 0, 8),
                                 val);
            }
            break;

        case 0x9:
            // set channel mask for command 0x8
            D_8016E750[seqIdx].unk_258 = cmd & 0xFFFF;
            break;

        case 0xA:
            // set channel stop mask
            channelMask = cmd & 0xFFFF;
            if (channelMask != 0) {
                // with channel mask channelMask...
                Audio_QueueCmdU16(0x90000000 | _SHIFTL(seqIdx, 16, 8), channelMask);
                // stop channels
                Audio_QueueCmdS8(0x08000000 | _SHIFTL(seqIdx, 16, 8) | 0xFF00, 1);
            }
            if ((channelMask ^ 0xFFFF) != 0) {
                // with channel mask ~channelMask...
                Audio_QueueCmdU16(0x90000000 | _SHIFTL(seqIdx, 16, 8), (channelMask ^ 0xFFFF));
                // unstop channels
                Audio_QueueCmdS8(0x08000000 | _SHIFTL(seqIdx, 16, 8) | 0xFF00, 0);
            }
            break;

        case 0xB:
            // update tempo
            D_8016E750[seqIdx].unk_14 = cmd;
            break;

        case 0xC:
            // start sequence with setup commands
            subOp = (cmd & 0xF00000) >> 20;
            if (subOp != 0xF) {
                if (D_8016E750[seqIdx].unk_4D < 7) {
                    found = D_8016E750[seqIdx].unk_4D++;
                    if (found < 8) {
                        D_8016E750[seqIdx].unk_2C[found] = cmd;
                        D_8016E750[seqIdx].unk_4C = 2;
                    }
                }
            } else {
                D_8016E750[seqIdx].unk_4D = 0;
            }
            break;

        case 0xE:
            subOp = (cmd & 0xF00) >> 8;
            val = cmd & 0xFF;
            switch (subOp) {
                case 0:
                    // set sound mode
                    Audio_QueueCmdS32(0xF0000000, D_80133410[val]);
                    break;
                case 1:
                    // set sequence starting disabled?
                    D_80133408 = val & 1;
                    break;
            }
            break;

        case 0xF:
            // change spec
            spec = cmd & 0xFF;
            D_801333CC = (cmd & 0xFF00) >> 8;
            oldSpec = gAudioSpecId;
            gAudioSpecId = spec;
            func_800E5F88(spec);
            func_800F71BC(oldSpec);
            Audio_QueueCmdS32(0xF8000000, 0);
            break;
    }
}

void Audio_QueueSeqCmd(u32 cmd) {
    sAudioSeqCmds[sSeqCmdWrPos++] = cmd;
}

void Audio_ProcessSeqCmds(void) {
    while (sSeqCmdWrPos != sSeqCmdRdPos) {
        Audio_ProcessSeqCmd(sAudioSeqCmds[sSeqCmdRdPos++]);
    }
}

u16 func_800FA0B4(u8 playerIdx) {
    if (!gAudioContext.seqPlayers[playerIdx].enabled) {
        return 0xFFFF;
    }
    return D_8016E750[playerIdx].unk_254;
}

s32 func_800FA11C(u32 arg0, u32 arg1) {
    u8 i;

    for (i = sSeqCmdRdPos; i != sSeqCmdWrPos; i++) {
        if (arg0 == (sAudioSeqCmds[i] & arg1)) {
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

    for (i = 0; i < D_8016E750[arg0].unk_4D; i++) {
        u8 unkb = (D_8016E750[arg0].unk_2C[i] & 0xF00000) >> 20;

        if (unkb == arg1) {
            D_8016E750[arg0].unk_2C[i] = 0xFF000000;
        }
    }
}

void Audio_SetVolScale(u8 seqIdx, u8 scaleIdx, u8 targetVol, u8 volFadeTimer) {
    f32 volScale;
    u8 i;

    D_8016E750[seqIdx].volScales[scaleIdx] = targetVol & 0x7F;

    if (volFadeTimer != 0) {
        D_8016E750[seqIdx].fadeVolUpdate = 1;
        D_8016E750[seqIdx].volFadeTimer = volFadeTimer;
    } else {
        for (i = 0, volScale = 1.0f; i < 4; i++) {
            volScale *= D_8016E750[seqIdx].volScales[i] / 127.0f;
        }

        Audio_SetVolScaleNow(seqIdx, volFadeTimer, volScale);
    }
}

void func_800FA3DC(void) {
    u32 temp_a1;
    u16 temp_lo;
    u16 temp_v1;
    u16 phi_a2;
    u8 temp_v0_4;
    u8 temp_a0;
    u8 temp_s1;
    u8 temp_s0_3;
    u8 temp_a3_3;
    s32 pad[3];
    u32 sp70;
    f32 phi_f0;
    u8 phi_t0;
    u8 i;
    u8 j;
    u8 k;

    for (i = 0; i < 4; i++) {
        if (D_8016E750[i].unk_260 != 0) {
            switch (func_800E5E20(&sp70)) {
                case 1:
                case 2:
                case 3:
                case 4:
                    D_8016E750[i].unk_260 = 0;
                    Audio_ProcessSeqCmd(D_8016E750[i].unk_25C);
                    break;
            }
        }

        if (D_8016E750[i].fadeVolUpdate) {
            phi_f0 = 1.0f;
            for (j = 0; j < 4; j++) {
                phi_f0 *= (D_8016E750[i].volScales[j] / 127.0f);
            }
            Audio_SeqCmd4(i, D_8016E750[i].volFadeTimer, (u8)(phi_f0 * 127.0f));
            D_8016E750[i].fadeVolUpdate = 0;
        }

        if (D_8016E750[i].unk_0C != 0) {
            D_8016E750[i].unk_0C--;

            if (D_8016E750[i].unk_0C != 0) {
                D_8016E750[i].volCur = D_8016E750[i].volCur - D_8016E750[i].unk_08;
            } else {
                D_8016E750[i].volCur = D_8016E750[i].volTarget;
            }

            Audio_QueueCmdF32(0x41000000 | _SHIFTL(i, 16, 8), D_8016E750[i].volCur);
        }

        if (D_8016E750[i].unk_14 != 0) {
            temp_a1 = D_8016E750[i].unk_14;
            phi_t0 = (temp_a1 & 0xFF0000) >> 15;
            phi_a2 = temp_a1 & 0xFFF;
            if (phi_t0 == 0) {
                phi_t0++;
            }

            if (gAudioContext.seqPlayers[i].enabled) {
                temp_lo = gAudioContext.seqPlayers[i].tempo / 0x30;
                temp_v0_4 = (temp_a1 & 0xF000) >> 12;
                switch (temp_v0_4) {
                    case 1:
                        phi_a2 += temp_lo;
                        break;
                    case 2:
                        if (phi_a2 < temp_lo) {
                            phi_a2 = temp_lo - phi_a2;
                        }
                        break;
                    case 3:
                        phi_a2 = temp_lo * (phi_a2 / 100.0f);
                        break;
                    case 4:
                        if (D_8016E750[i].unk_18) {
                            phi_a2 = D_8016E750[i].unk_18;
                        } else {
                            phi_a2 = temp_lo;
                        }
                        break;
                }

                if (phi_a2 > 300) {
                    phi_a2 = 300;
                }

                if (D_8016E750[i].unk_18 == 0) {
                    D_8016E750[i].unk_18 = temp_lo;
                }

                D_8016E750[i].unk_20 = phi_a2;
                D_8016E750[i].unk_1C = gAudioContext.seqPlayers[i].tempo / 0x30;
                D_8016E750[i].unk_24 = (D_8016E750[i].unk_1C - D_8016E750[i].unk_20) / phi_t0;
                D_8016E750[i].unk_28 = phi_t0;
                D_8016E750[i].unk_14 = 0;
            }
        }

        if (D_8016E750[i].unk_28 != 0) {
            D_8016E750[i].unk_28--;
            if (D_8016E750[i].unk_28 != 0) {
                D_8016E750[i].unk_1C = D_8016E750[i].unk_1C - D_8016E750[i].unk_24;
            } else {
                D_8016E750[i].unk_1C = D_8016E750[i].unk_20;
            }
            // set tempo
            Audio_QueueCmdS32(0x47000000 | _SHIFTL(i, 16, 8), D_8016E750[i].unk_1C);
        }

        if (D_8016E750[i].unk_252 != 0) {
            for (k = 0; k < 0x10; k++) {
                if (D_8016E750[i].unk_50[k].unk_0C != 0) {
                    D_8016E750[i].unk_50[k].unk_0C--;
                    if (D_8016E750[i].unk_50[k].unk_0C != 0) {
                        D_8016E750[i].unk_50[k].unk_00 -= D_8016E750[i].unk_50[k].unk_08;
                    } else {
                        D_8016E750[i].unk_50[k].unk_00 = D_8016E750[i].unk_50[k].unk_04;
                        D_8016E750[i].unk_252 ^= (1 << k);
                    }
                    // CHAN_UPD_VOL_SCALE (i = seq, k = chan)
                    Audio_QueueCmdF32(0x01000000 | _SHIFTL(i, 16, 8) | _SHIFTL(k, 8, 8),
                                      D_8016E750[i].unk_50[k].unk_00);
                }
            }
        }

        if (D_8016E750[i].unk_250 != 0) {
            for (k = 0; k < 0x10; k++) {
                if (D_8016E750[i].unk_50[k].unk_1C != 0) {
                    D_8016E750[i].unk_50[k].unk_1C--;
                    if (D_8016E750[i].unk_50[k].unk_1C != 0) {
                        D_8016E750[i].unk_50[k].unk_10 -= D_8016E750[i].unk_50[k].unk_18;
                    } else {
                        D_8016E750[i].unk_50[k].unk_10 = D_8016E750[i].unk_50[k].unk_14;
                        D_8016E750[i].unk_250 ^= (1 << k);
                    }
                    // CHAN_UPD_FREQ_SCALE
                    Audio_QueueCmdF32(0x04000000 | _SHIFTL(i, 16, 8) | _SHIFTL(k, 8, 8),
                                      D_8016E750[i].unk_50[k].unk_10);
                }
            }
        }

        if (D_8016E750[i].unk_4D != 0) {
            if (func_800FA11C(0xF0000000, 0xF0000000) == 0) {
                D_8016E750[i].unk_4D = 0;
                return;
            }

            if (D_8016E750[i].unk_4C != 0) {
                D_8016E750[i].unk_4C--;
                continue;
            }

            if (gAudioContext.seqPlayers[i].enabled) {
                continue;
            }

            for (j = 0; j < D_8016E750[i].unk_4D; j++) {
                temp_a0 = (D_8016E750[i].unk_2C[j] & 0x00F00000) >> 20;
                temp_s1 = (D_8016E750[i].unk_2C[j] & 0x000F0000) >> 16;
                temp_s0_3 = (D_8016E750[i].unk_2C[j] & 0xFF00) >> 8;
                temp_a3_3 = D_8016E750[i].unk_2C[j] & 0xFF;

                switch (temp_a0) {
                    case 0:
                        Audio_SetVolScale(temp_s1, 1, 0x7F, temp_a3_3);
                        break;
                    case 7:
                        if (D_8016E348[i] == temp_a3_3) {
                            Audio_SetVolScale(temp_s1, 1, 0x7F, temp_s0_3);
                        }
                        break;
                    case 1:
                        Audio_SeqCmd3(i, D_8016E750[i].unk_254);
                        break;
                    case 2:
                        Audio_StartSeq(temp_s1, 1, D_8016E750[temp_s1].unk_254);
                        D_8016E750[temp_s1].fadeVolUpdate = 1;
                        D_8016E750[temp_s1].volScales[1] = 0x7F;
                        break;
                    case 3:
                        Audio_SeqCmdB30(temp_s1, temp_s0_3, temp_a3_3);
                        break;
                    case 4:
                        Audio_SeqCmdB40(temp_s1, temp_a3_3, 0);
                        break;
                    case 5:
                        temp_v1 = D_8016E750[i].unk_2C[j] & 0xFFFF;
                        Audio_StartSeq(temp_s1, D_8016E750[temp_s1].unk_4E, temp_v1);
                        Audio_SetVolScale(temp_s1, 1, 0x7F, 0);
                        D_8016E750[temp_s1].unk_4E = 0;
                        break;
                    case 6:
                        D_8016E750[i].unk_4E = temp_s0_3;
                        break;
                    case 8:
                        Audio_SetVolScale(temp_s1, temp_s0_3, 0x7F, temp_a3_3);
                        break;
                    case 14:
                        if (temp_a3_3 & 1) {
                            Audio_QueueCmdS32(0xE3000000, 0);
                        }
                        if (temp_a3_3 & 2) {
                            Audio_QueueCmdS32(0xE3000000, 1);
                        }
                        if (temp_a3_3 & 4) {
                            Audio_QueueCmdS32(0xE3000000, 2);
                        }
                        break;
                    case 9:
                        temp_v1 = D_8016E750[i].unk_2C[j] & 0xFFFF;
                        Audio_SeqCmdA(temp_s1, temp_v1);
                        break;
                    case 10:
                        Audio_SeqCmd5(temp_s1, temp_s0_3, (temp_a3_3 * 10) & 0xFFFF);
                        break;
                }
            }

            D_8016E750[i].unk_4D = 0;
        }
    }
}

u8 func_800FAD34(void) {
    if (D_80133418 != 0) {
        if (D_80133418 == 1) {
            if (func_800E5EDC() == 1) {
                D_80133418 = 0;
                Audio_QueueCmdS8(0x46020000, D_801333CC);
                func_800F7170();
            }
        } else if (D_80133418 == 2) {
            while (func_800E5EDC() != 1) {}
            D_80133418 = 0;
            Audio_QueueCmdS8(0x46020000, D_801333CC);
            func_800F7170();
        }
    }

    return D_80133418;
}

void func_800FADF8(void) {
    u8 i, j;

    for (i = 0; i < 4; i++) {
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
        for (j = 0; j < 4; j++) {
            D_8016E750[i].volScales[j] = 0x7F;
        }
        D_8016E750[i].volFadeTimer = 1;
        D_8016E750[i].fadeVolUpdate = 1;
    }
}

void func_800FAEB4(void) {
    u8 i, j;

    for (i = 0; i < 4; i++) {
        D_8016E750[i].volCur = 1.0f;
        D_8016E750[i].unk_0C = 0;
        D_8016E750[i].fadeVolUpdate = 0;
        for (j = 0; j < 4; j++) {
            D_8016E750[i].volScales[j] = 0x7F;
        }
    }
    func_800FADF8();
}
