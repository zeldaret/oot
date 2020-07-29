#include <ultra64.h>
#include <global.h>

#define NON_CONST(x, type) (*(type*)(&x))

// TODO move these prototypes

void func_8006EE50(MessageData*, u16, u16);

void func_800ECC04(u16); // original name : Na_StartOcarinaSinglePlayCheck2
void func_800ED93C(u8,u8);
void func_800ED858(u8);
SubMessageContext_E2B8* func_800EE3D4(); // original name : Na_StopOcarinaMode
SubMessageContext_E2B8* func_800EE3F8();

void func_801069B0();
void func_80106AA8(GlobalContext* globalCtx);
u8 func_80106BC8(GlobalContext* globalCtx);
u8 func_80106C88(GlobalContext* globalCtx);
void func_80106CCC(GlobalContext* globalCtx);
void func_80106D40(GlobalContext* globalCtx, u8 arg1);
void func_80106F1C(GlobalContext* globalCtx, void* textureImage, Gfx** p);

// TODO const data / rodata

typedef struct {
    /* 0x0000 */ u16 textId;
    /* 0x0002 */ u8 xy; // TODO name better
    /* 0x0004 */ u32 segment;
} MessageTableEntry; // size = 0x8

extern const MessageTableEntry D_8014B320[]; // English message entry table
extern const u32 D_8014F548[]; // German message entry table
extern const u32 D_80151658[]; // French message entry table
extern const MessageTableEntry D_80153768[]; // ?

extern const s16 D_8014B2F8;
extern const s16 D_8014B2FC;

extern const MessageTableEntry* D_801538F0;
extern const u32* D_801538F4;
extern const u32* D_801538F8;
extern const MessageTableEntry* D_801538FC;

extern const u8 D_8015394C;

extern u16 D_8014B31C;
extern s16 D_8014B310;

extern const s16 D_80153958[]; // original name : onpu_buf (note_buf)

// extern const s16 D_80153984;

extern const s16 D_80153C40[4];
extern const s16 D_80153C48[4];

/* extern const s16 D_80153CF8;
extern const s32 D_80153CFC; */

/* const u32 D_8014B2F0 = 0x00000000;

const u32 D_8014B2F4 = 0x00000000;

const s32 D_8014B2F8 = 0x00000000;

const s32 D_8014B2FC = 0x00000000;

const u32 D_8014B300 = 0x00000000;

const u32 D_8014B304 = 0x00000000;

const u32 D_8014B308[] = {
    0x00000000, 0x00000000,
};

const u32 D_8014B310 = 0x00FF0000;

const u32 D_8014B314 = 0x00000000;

const u32 D_8014B318 = 0x00000000;

const u32 D_8014B31C = 0x00000000;

#include "z_message_tables.c"

const MessageTableEntry* D_801538F0 = &D_8014B320;

const TextSegment* D_801538F4 = &D_8014F548;

const TextSegment* D_801538F8 = &D_80151658;

const TextSegment* D_801538FC = &D_80153768;

const u32 D_80153900[] = {
    0x00FF00FF, 0x00FF0032, 0x00140000, 0x00FF003C, 0x000000FF, 0x00FF00FF, 0x00FF00FF, 0x00FF00FF,
    0x00FF00FF, 0x00FF00FF, 0x00FF00FF, 0x00FF00FF,
};

const u32 D_80153930[] = {
    0x00000000, 0x000000DC, 0x00960000, 0x00000000, 0x00000000, 0x00000000,
};

const u8 D_80153948[] = {
    0x00, 0x01, 0x00,
};

const u8 D_8015394B = 0x02;

const u8 D_8015394C = 0x00;

const u32 D_80153950[] = {
	0x00000000, 0x00000000,
};

const Struct_801069B0 D_80153958 = {
	0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
};

const u32 D_8015396C[] = {
    0x00000001, 0x00020003, 0x00040005, 0x00080007, 0x00060009,
};

const u32 D_80153980 = 0x000A000B;

// const s16 D_80153984 = 0x0000;

const u32 D_80153988[] = {
    0x3F99999A, 0x3FC00000, 0x3FE66666, 0x40000000, 0x40066666, 0x400CCCCD, 0x40066666, 0x40000000,
};

const u32 D_801539A8[] = {
    0x3F19999A, 0x3F400000, 0x3F666666, 0x3F800000, 0x3F866666, 0x3F8CCCCD, 0x3F866666, 0x3F800000,
};

const u32 D_801539C8[] = {
    0x000000C8, 0x00500032, 0x00FF0082,
};

const u32 D_801539D4[] = {
    0x00000000, 0x00000000, 0x00FF0082,
};

const u32 D_801539E0 = 0x00000000;

const u32 D_801539E4 = 0x00C80000;

const u32 D_801539E8 = 0x00500000;

const u32 D_801539EC = 0x000C0000;

const u32 D_801539F0 = 0x00000000;

const u32 D_801539F4 = 0x00000000;

const u32 D_801539F8 = 0x00000000;

const u32 D_801539FC[] = {
    0x00000000, 0x41000000, 0x41000000, 0x40C00000, 0x41100000, 0x41100000, 0x41600000, 0x41400000,
    0x40400000, 0x40E00000, 0x40E00000, 0x40E00000, 0x41100000, 0x40800000, 0x40C00000, 0x40800000,
    0x41100000, 0x41200000, 0x40A00000, 0x41100000, 0x41100000, 0x41200000, 0x41100000, 0x41100000,
    0x41100000, 0x41100000, 0x41100000, 0x40C00000, 0x40C00000, 0x41100000, 0x41300000, 0x41100000,
    0x41300000, 0x41500000, 0x41400000, 0x41100000, 0x41300000, 0x41300000, 0x41000000, 0x41000000,
    0x41400000, 0x41200000, 0x40800000, 0x41000000, 0x41200000, 0x41000000, 0x41500000, 0x41300000,
    0x41500000, 0x41100000, 0x41500000, 0x41200000, 0x41200000, 0x41100000, 0x41200000, 0x41300000,
    0x41700000, 0x41300000, 0x41200000, 0x41200000, 0x40E00000, 0x41200000, 0x40E00000, 0x41200000,
    0x41100000, 0x40A00000, 0x41000000, 0x41100000, 0x41000000, 0x41100000, 0x41100000, 0x40C00000,
    0x41100000, 0x41000000, 0x40800000, 0x40C00000, 0x41000000, 0x40800000, 0x41400000, 0x41100000,
    0x41100000, 0x41100000, 0x41100000, 0x40E00000, 0x41000000, 0x40E00000, 0x41000000, 0x41100000,
    0x41400000, 0x41000000, 0x41100000, 0x41000000, 0x40E00000, 0x40A00000, 0x40E00000, 0x41200000,
    0x41200000, 0x41400000, 0x40C00000, 0x41400000, 0x41400000, 0x41300000, 0x41000000, 0x41000000,
    0x41000000, 0x40C00000, 0x40C00000, 0x41500000, 0x41500000, 0x41200000, 0x41200000, 0x41200000,
    0x41100000, 0x41000000, 0x41000000, 0x41000000, 0x41000000, 0x41000000, 0x41100000, 0x41100000,
    0x41100000, 0x41100000, 0x40C00000, 0x41100000, 0x41100000, 0x41100000, 0x41100000, 0x41100000,
    0x41600000, 0x41600000, 0x41600000, 0x41600000, 0x41600000, 0x41600000, 0x41600000, 0x41600000,
    0x41600000, 0x41600000, 0x41600000, 0x41600000, 0x41600000, 0x41600000, 0x41600000, 0x41600000,
    0x41600000,
};

const s16 D_80153C40[] = {
    0x004A, 0x004A, 0x004A, 0x0000,
};

const s16 D_80153C48[] = {
    0x0048, 0x0048, 0x0048, 0x0000,
};

const u16 D_80153C50 = 0x0000;

const u16 D_80153C52 = 0x0001;

const u16 D_80153C54 = 0x0003;

const u16 D_80153C56 = 0x0002;

const u32 D_80153C58[] = {
    0x00010002, 0x00040008, 0x00100020, 0x01000080,
};

const u32 D_80153C68[] = {
    0x00400200, 0x04000800, 0x10000000, 0x01990198,
};

const u32 D_80153C78[] = {
    0x018A017E, 0x018A018B, 0x01CB0000, 0x00000000, 0x00000000, 0x00010000, 0x00000000,
};

const u32 D_80153C94[] = {
    0x02002940, 0x02002A40, 0x02002B40, 0x02002C40, 0x02002D40,
};

const u32 D_80153CA8[] = {
    0x005000FF, 0x00960064, 0x00FF00C8,
};

const u32 D_80153CB4[] = {
    0x000A000A, 0x000A0032, 0x00FF0032,
};

const u32 D_80153CC0[] = {
    0x00FF00FF, 0x003200FF, 0x00FF00B4,
};

const u32 D_80153CCC[] = {
    0x000A000A, 0x000A006E, 0x006E0032,
};

const u32 D_80153CD8 = 0x000C0000;

const u32 D_80153CDC = 0x00010000;

const u32 D_80153CE0[] = {
    0x00340033, 0x00350036, 0x00370025, 0x00440045, 0x00460047, 0x00480049,
};

//const s16 D_80153CF8 = 0x00000000;

//const u32 D_80153CFC = 0x00000000;

const u32 D_80153D00[] = {
    0x00220022, 0x00220022, 0x00220022,
};

const u32 D_80153D0C[] = {
    0x008E008E, 0x008E008E, 0x00AE008E,
};

const u32 D_80153D18[] = {
    0x00260026, 0x00260026, 0x00AE0026,
};

const u32 D_80153D24[] = {
    0x005A005A, 0x005A005A, 0x00AE005A,
};

const u32 D_80153D30[] = {
    0x003B003B, 0x003B003B, 0x0022003B, 0x04000400, 0x02000000, 0x10380008, 0x200A088B, 0x00070009,
    0x000A107E, 0x20082007, 0x00150016, 0x00170003, 0x0000270B, 0x00C8012C, 0x012DFFDA, 0x00140016,
    0x00140016,
};

const u32 D_80153D74 = 0x00000000;

const u32 D_80153D78[] = { // msgno
    0x00000000, 0x00000000,
};

//const u32 D_80153D80 = 0x00000000;

const u32 D_80153D84[] = {
    0x00000000, 0x00000000, 0x00000000,
}; */

// bss
s32 D_801759A0;
s32 D_801759A4;
s16 D_801759A8;
s16 D_801759AA;
s16 D_801759AC;
s16 D_801759AE;
s16 D_801759B0;
s16 D_801759B2;
s16 D_801759B4;
s16 D_801759B6;
s16 D_801759B8;
s16 D_801759BA;
s16 D_801759BC;
s16 D_801759BE;

// Segment addresses

extern UNK_TYPE D_02002E40;

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_801069B0.s")
void func_801069B0() {
    s16* D_80153958_NonConst;

    VREG(45) = 0xBD;
    VREG(46) = 0xB8;
    VREG(47) = 0xB3;
    VREG(48) = 0xAE;
    VREG(49) = 0xA9;
    NON_CONST(D_8015394C, u8) = 0xFF;
    D_80153958_NonConst = &NON_CONST(D_80153958, s16);
    D_80153958_NonConst[8] = 0;
    D_80153958_NonConst[7] = D_80153958_NonConst[8];
    D_80153958_NonConst[6] = D_80153958_NonConst[8];
    D_80153958_NonConst[5] = D_80153958_NonConst[8];
    D_80153958_NonConst[4] = D_80153958_NonConst[8];
    D_80153958_NonConst[3] = D_80153958_NonConst[8];
    D_80153958_NonConst[2] = D_80153958_NonConst[8];
    D_80153958_NonConst[1] = D_80153958_NonConst[8];
    D_80153958_NonConst[0] = D_80153958_NonConst[8];
    D_801759A8 = 0x50;
    D_801759AC = 0xFF;
    D_801759AA = 0x96;
    D_801759AE = 0xA;
    D_801759B2 = 0xA;
    D_801759B0 = 0xA;
    D_801759B4 = 0xFF;
    D_801759B8 = 0xFF;
    D_801759B6 = 0x32;
    D_801759BA = 0xA;
    D_801759BE = 0xA;
    D_801759BC = 0xA;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80106AA8.s")
void func_80106AA8(GlobalContext* globalCtx) {
    MessageContext* msgCtx;

    globalCtx->msgCtx.msgMode++;
    msgCtx = &globalCtx->msgCtx;
    if (globalCtx->msgCtx.msgMode == 0x2E) {
        func_800ED858(1);
        msgCtx->unk_E2B8 = func_800EE3D4();
        msgCtx->unk_E2B8->unk_2 = NON_CONST(D_8014B2F8, s16) = 0;
        func_800ECC04(0xA000);
        msgCtx->unk_E3D2 = msgCtx->unk_E3D4;
    } else if (msgCtx->msgMode == 0x2C) {
        func_800ED858(6);
        msgCtx->unk_E2B8 = func_800EE3F8();
        msgCtx->unk_E2B8->unk_2 = NON_CONST(D_8014B2F8, s16) = 0;
        func_800ED93C(0xE, 1);
        msgCtx->unk_E3E7 = 2;
    }
    func_801069B0();
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80106BC8.s")
u8 func_80106BC8(GlobalContext* globalCtx) {
    Input* curInput = &globalCtx->state.input[0];
    if (CHECK_PAD(curInput->press, A_BUTTON) || 
        CHECK_PAD(curInput->press, B_BUTTON) || 
        CHECK_PAD(curInput->press, U_CBUTTONS)) {
        Audio_PlaySoundGeneral(NA_SE_SY_MESSAGE_PASS, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
    return CHECK_PAD(curInput->press, A_BUTTON) || 
           CHECK_PAD(curInput->press, B_BUTTON) || 
           CHECK_PAD(curInput->press, U_CBUTTONS);
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80106C88.s")
u8 func_80106C88(GlobalContext* globalCtx) {
    Input* curInput = &globalCtx->state.input[0];
    return CHECK_PAD(curInput->press, A_BUTTON) || 
           CHECK_PAD(curInput->press, B_BUTTON) || 
           CHECK_PAD(curInput->press, U_CBUTTONS);
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80106CCC.s")
void func_80106CCC(GlobalContext* globalCtx) {
    MessageContext* msgCtx = &globalCtx->msgCtx;
    if (msgCtx->unk_E300 != 0) {
        msgCtx->unk_E3E7 = 2;
        msgCtx->msgMode = 0x36;
        msgCtx->unk_E3E4 = 0;
        Audio_PlaySoundGeneral(0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

#ifdef NON_MATCHING
// Matches but data instead of rodata
void func_80106D40(GlobalContext* globalCtx, u8 arg1) {
    static s16 D_80153984 = 0x0000;

    MessageContext* msgCtx;
    Input* curInput = &globalCtx->state.input[0];

    msgCtx = &globalCtx->msgCtx;
    if (curInput->rel.in.y >= 0x1E && D_80153984 == 0) {
        D_80153984 = 1;
        msgCtx->choiceIndex--;
        if (msgCtx->choiceIndex >= 0x81) {
            msgCtx->choiceIndex = 0;
        } else {
            Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    } else if (curInput->rel.in.y < -0x1D && D_80153984 == 0) {
        D_80153984 = 1;
        msgCtx->choiceIndex++;
        if (msgCtx->choiceIndex > arg1) {
            msgCtx->choiceIndex = arg1;
        } else {
            Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    } else if (ABS(curInput->rel.in.y) < 0x1E) {
        D_80153984 = 0;
    }
    msgCtx->unk_E3D8 = XREG(66);
    msgCtx->unk_E3DA = (arg1 == 1) ? gGameInfo->data[msgCtx->choiceIndex + 0x584] : gGameInfo->data[msgCtx->choiceIndex + 0x583];
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80106D40.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80106F1C.s")
void func_80106F1C(GlobalContext* globalCtx, void* textureImage, Gfx** p) {
    MessageContext* msgCtx;
    Gfx* gfx;
    s16 unk_E3D8;
    s16 unk_E3DA;

    gfx = *p;
    msgCtx = &globalCtx->msgCtx;
    unk_E3D8 = msgCtx->unk_E3D8;
    unk_E3DA = msgCtx->unk_E3DA;
    gDPPipeSync(gfx++);
    D_801759A0 = (XREG(57) / 100.0f) * 16.0f;
    D_801759A4 = 1024.0f / (XREG(57) / 100.0f);
    gDPSetTextureImage(gfx++, G_IM_FMT_I, G_IM_SIZ_16b, 1, textureImage);
    gDPSetTile(gfx++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, 
                G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gfx++);
    gDPLoadBlock(gfx++, G_TX_LOADTILE, 0, 0, 63, 2048);
    gDPPipeSync(gfx++);
    gDPSetTile(gfx++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0x0000, G_TX_RENDERTILE, 0, 
                G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, 
                G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gfx++, G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C);
    if (msgCtx->unk_E2FD != 5) {
        gDPSetPrimColor(gfx++, 0, 0, 0x00, 0x00, 0x00, msgCtx->unk_E3E2);
        gSPTextureRectangle(gfx++, 
                    (unk_E3D8 + XREG(60)) * 4, 
                    (unk_E3DA + XREG(60)) * 4, 
                    (unk_E3D8 + XREG(60) + D_801759A0) * 4, 
                    (unk_E3DA + XREG(60) + D_801759A0) * 4, G_TX_RENDERTILE, 0, 0, D_801759A4, D_801759A4);
    }
    gDPPipeSync(gfx++);
    gDPSetPrimColor(gfx++, 0, 0, msgCtx->unk_E3DC, msgCtx->unk_E3DE, msgCtx->unk_E3E0, msgCtx->unk_E3E2);
    gSPTextureRectangle(gfx++, 
                unk_E3D8 * 4, 
                unk_E3DA * 4, 
                (unk_E3D8 + D_801759A0) * 4, 
                (unk_E3DA + D_801759A0) * 4, G_TX_RENDERTILE, 0, 0, D_801759A4, D_801759A4);
    *p = gfx;
}

void func_80107244(GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80107244.s")
/* void func_80107244(GlobalContext* globalCtx) {
    static const f32 D_80153988[] = {
        1.20000004768f, 1.5f, 1.79999995232f, 2.0f, 2.09999990463f, 2.20000004768f, 2.09999990463f, 2.0f,
    };
    static const f32 D_801539A8[] = {
        0.600000023842f, 0.75f, 0.899999976158f, 1.0f, 1.04999995232f, 1.10000002384f, 1.04999995232f, 1.0f,
    };

    f32 sp0;
    f32 temp_f0;
    f32 temp_f12;
    s32 temp_t1;
    s32 temp_t4;
    f32 *temp_at;
    f32 *temp_at_2;
    void *temp_at_3;
    void *temp_at_4;
    MessageContext* msgCtx;
    s32 phi_t5;
    s32 phi_t9;
    s16 phi_t2;
    s32 phi_t8;

    msgCtx = &globalCtx->msgCtx;
    temp_at = &D_80153988[globalCtx->msgCtx.unk_E3E7];
    temp_at_2 = &D_801539A8[globalCtx->msgCtx.unk_E3E7];
    temp_f12 = *temp_at + *temp_at;
    temp_f0 = temp_f12 * XREG(74);
    sp0 = XREG(77) / *temp_at_2;
    temp_t4 = XREG(73) - *temp_at_2 * XREG(73) + 0.5f;
    phi_t5 = temp_t4 >> 1;
    if (temp_t4 < 0) {
        phi_t5 = (temp_t4 + 1) >> 1;
    }
    VREG(0) = phi_t5 + XREG(73);
    phi_t9 = msgCtx->unk_E404 >> 3;
    if (msgCtx->unk_E404 < 0) {
        phi_t9 = (msgCtx->unk_E404 + 7) >> 3;
    }
    msgCtx->unk_E406 +- phi_t9;
    msgCtx->unk_E3E7 += 1;
    if (msgCtx->unk_E3E7 == 8) {
        temp_at_4 = globalCtx + 0x7FFF;
        VREG(0) = XREG(72);
        VREG(1) = XREG(73);
        msgCtx->msgMode = 3;
        msgCtx->unk_E406 = msgCtx->unk_E404;
    }
    temp_t1 = temp_f0 + 0.5f;
    phi_t2 = temp_t1 >> 1;
    if (temp_t1 < 0) {
        phi_t2 = (temp_t1 + 1) >> 1;
    }
    YREG(22) = phi_t2;
    YREG(23) = (*temp_at_2 * XREG(75)) + 0.5f;
    YREG(16) = (XREG(76) / temp_f12) + 0.5f;
    YREG(17) = sp0 + 0.5f;
    phi_t8 = YREG(22) >> 1;
    if (YREG(22) < 0) {
        phi_t8 = (YREG(22) + 1) >> 1;
    }
    VREG(0) = (XREG(72) + XREG(74)) - phi_t8;
} */
/* void func_80107244(GlobalContext* globalCtx) {
    static const f32 D_80153988[] = {
        1.20000004768f, 1.5f, 1.79999995232f, 2.0f, 2.09999990463f, 2.20000004768f, 2.09999990463f, 2.0f,
    };
    static const f32 D_801539A8[] = {
        0.600000023842f, 0.75f, 0.899999976158f, 1.0f, 1.04999995232f, 1.10000002384f, 1.04999995232f, 1.0f,
    };

    f32 sp0;
    f32 temp_f12;
    s32 temp_t1;
    s32 temp_t4;
    u8 temp_v1;
    f32 temp_at;
    f32 temp_at_2;
    s32 phi_t5;
    s32 phi_t9;
    s16 phi_t2;
    s32 phi_t8;
    MessageContext* msgCtx;

    msgCtx = &globalCtx->msgCtx;
    temp_at = D_80153988[msgCtx->unk_E3E4];
    temp_at_2 = D_801539A8[msgCtx->unk_E3E4];
    temp_f12 = temp_at + temp_at;
    sp0 = XREG(77) / temp_at_2;
    temp_t4 = XREG(73) - (temp_at_2 * XREG(73) + 0.5f);
    phi_t5 = temp_t4 >> 1;
    if (temp_t4 < 0) {
        phi_t5 = (temp_t4 + 1) >> 1;
    }
    VREG(1) = phi_t5 + XREG(73);
    msgCtx->unk_E406 += ((msgCtx->unk_E404 < 0) ? (msgCtx->unk_E404 + 7) : msgCtx->unk_E404)/8;
    msgCtx->unk_E3E4 += 1;
    if (msgCtx->unk_E3E4 == 8) {
        VREG(0) = XREG(72);
        VREG(1) = XREG(73);
        msgCtx->msgMode = 3;
        msgCtx->unk_E408 = msgCtx->unk_E404;
    }
    temp_t1 = temp_f12 * XREG(74) + 0.5f;
    YREG(22) = ((temp_t1 < 0) ? temp_t1+1 : temp_t1)/2;
    YREG(23) = temp_at_2 * XREG(75) + 0.5f;
    YREG(16) = (XREG(76) / temp_f12) + 0.5f;
    YREG(17) = sp0 + 0.5f;
    VREG(0) = XREG(72) + XREG(74) - ((YREG(22) < 0) ? YREG(22)+1 : YREG(22))/2;
} */

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80107448.s")
void func_80107448(GlobalContext* globalCtx, u16 textId) {
    s32 foundSeg;
    s32 nextSeg;
    MessageTableEntry* messageTableEntry;
    u32* languageSegmentTable;
    MessageData* data;
    u32 seg;

    messageTableEntry = D_801538F0;
    if (gSaveContext.language == 0) {
        seg = messageTableEntry->segment;
        while (messageTableEntry->textId != 0xFFFF) {
            data = &globalCtx->msgCtx.unk_128;
            if (messageTableEntry->textId == textId) {
                foundSeg = messageTableEntry->segment;
                data->xy = messageTableEntry->xy;
                messageTableEntry++;
                nextSeg = messageTableEntry->segment;
                data->offset = foundSeg - seg;
                data->size = nextSeg - foundSeg;
                // Message found!!!
                osSyncPrintf(" メッセージが,見つかった！！！ = %x  (data=%x) (data0=%x) (data1=%x) (data2=%x) (data3=%x)\n",
                            textId, data->offset, data->size, foundSeg, seg, nextSeg);
                return;
            }
            messageTableEntry++;
        }
    } else {
        languageSegmentTable = (gSaveContext.language == 1) ? D_801538F4 : D_801538F8;
        seg = messageTableEntry->segment;
        while (messageTableEntry->textId != 0xFFFF) {
            data = &globalCtx->msgCtx.unk_128;
            if (messageTableEntry->textId == textId) {
                foundSeg = *languageSegmentTable;
                data->xy = messageTableEntry->xy;
                languageSegmentTable++;
                nextSeg = *languageSegmentTable;
                data->offset = foundSeg - seg;
                data->size = nextSeg - foundSeg;
                // Message found!!!
                osSyncPrintf(" メッセージが,見つかった！！！ = %x  (data=%x) (data0=%x) (data1=%x) (data2=%x) (data3=%x)\n",
                            textId, data->offset, data->size, foundSeg, seg, nextSeg);
                return;
            }
            messageTableEntry++;
            languageSegmentTable++;
        }
    }
    // Message not found!!!
    osSyncPrintf(" メッセージが,見つからなかった！！！ = %x\n", textId);
    data = &globalCtx->msgCtx.unk_128;
    messageTableEntry = D_801538F0;
    if (gSaveContext.language == 0) {
        foundSeg = messageTableEntry->segment;
        data->xy = messageTableEntry->xy;
        messageTableEntry++;
        nextSeg = messageTableEntry->segment;
    } else {
        languageSegmentTable = (gSaveContext.language == 1) ? D_801538F4 : D_801538F8;
        foundSeg = *languageSegmentTable;
        data->xy = messageTableEntry->xy;
        languageSegmentTable++;
        nextSeg = *languageSegmentTable;
    }
    data->offset = foundSeg - seg;
    data->size = nextSeg - foundSeg;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80107628.s")
void func_80107628(GlobalContext* globalCtx, u16 textId) {
    u32 foundSeg;
    u32 nextSeg;
    u32 seg;
    MessageTableEntry* messageTableEntry;
    MessageData* data;

    messageTableEntry = D_801538FC;
    seg = messageTableEntry->segment;
    while (messageTableEntry->textId != 0xFFFF) {
        data = &globalCtx->msgCtx.unk_128;
        if (messageTableEntry->textId == textId) {
            foundSeg = messageTableEntry->segment;
            data->xy = messageTableEntry->xy;
            messageTableEntry++;
            nextSeg = messageTableEntry->segment;
            data->offset = foundSeg - seg;
            data->size = nextSeg - foundSeg;
            // Message found!!!
            osSyncPrintf(" メッセージが,見つかった！！！ = %x  (data=%x) (data0=%x) (data1=%x) (data2=%x) (data3=%x)\n", 
                        textId, data->offset, data->size, foundSeg, seg, nextSeg);
            return;
        }
        messageTableEntry++;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_801076CC.s")
void func_801076CC(MessageContext* msgCtx, u16 textId) {
    switch (textId) {
        case 1:
            if (msgCtx->unk_E2FD == 1) {
                msgCtx->unk_E3DC = 0xFF;
                msgCtx->unk_E3DE = 0x78;
                msgCtx->unk_E3E0 = 0;
            } else {
                msgCtx->unk_E3DC = 0xFF;
                msgCtx->unk_E3DE = 0x3C;
                msgCtx->unk_E3E0 = 0x3C;
            }
            break;
        case 2:
            if (msgCtx->unk_E2FD == 1) {
                msgCtx->unk_E3DC = VREG(33);
                msgCtx->unk_E3DE = VREG(34);
                msgCtx->unk_E3E0 = VREG(35);
            } else {
                msgCtx->unk_E3DC = VREG(36);
                msgCtx->unk_E3DE = VREG(37);
                msgCtx->unk_E3E0 = VREG(38);
            }
            break;
        case 3:
            if (msgCtx->unk_E2FD == 1) {
                msgCtx->unk_E3DC = 0x50;
                msgCtx->unk_E3DE = 0x6E;
                msgCtx->unk_E3E0 = 0xFF;
            } else {
                msgCtx->unk_E3DC = 0x50;
                msgCtx->unk_E3DE = 0x5A;
                msgCtx->unk_E3E0 = 0xFF;
            }
            break;
        case 4:
            if (msgCtx->unk_E2FD == 1) {
                msgCtx->unk_E3DC = 0x5A;
                msgCtx->unk_E3DE = 0xB4;
                msgCtx->unk_E3E0 = 0xFF;
            } else if (msgCtx->unk_E2FD == 5) {
                msgCtx->unk_E3DC = 0x50;
                msgCtx->unk_E3DE = 0x96;
                msgCtx->unk_E3E0 = 0xB4;
            } else {
                msgCtx->unk_E3DC = 0x64;
                msgCtx->unk_E3DE = 0xB4;
                msgCtx->unk_E3E0 = 0xFF;
            }
            break;
        case 5:
            if (msgCtx->unk_E2FD == 1) {
                msgCtx->unk_E3DC = 0xD2;
                msgCtx->unk_E3DE = 0x64;
                msgCtx->unk_E3E0 = 0xFF;
            } else {
                msgCtx->unk_E3DC = 0xFF;
                msgCtx->unk_E3DE = 0x96;
                msgCtx->unk_E3E0 = 0xB4;
            }
            break;
        case 6:
            if (msgCtx->unk_E2FD == 1) {
                msgCtx->unk_E3DC = 0xFF;
                msgCtx->unk_E3DE = 0xFF;
                msgCtx->unk_E3E0 = 0x1E;
            } else {
                msgCtx->unk_E3DC = 0xE1;
                msgCtx->unk_E3DE = 0xFF;
                msgCtx->unk_E3E0 = 0x32;
            }
            break;
        case 7:
            msgCtx->unk_E3DC = msgCtx->unk_E3DE = msgCtx->unk_E3E0 = 0;
            break;
        case 0: // required to match
        default:
            if (msgCtx->unk_E2FD == 5) {
                msgCtx->unk_E3DC = msgCtx->unk_E3DE = msgCtx->unk_E3E0 = 0;
            } else {
                msgCtx->unk_E3DC =  msgCtx->unk_E3DE = msgCtx->unk_E3E0 = 0xFF;
            }
            break;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80107980.s")
/* Gfx* func_80107980(GlobalContext* globalCtx, Gfx** p, s16 arg2, s16 arg3) {
    s16 sp60;
    s32 spC;
    s32 sp8;
    s32 sp4;
    s32 sp0;
    s16 temp_a2;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a1_4;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_f18;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t5;
    s32 temp_t6;
    s32 temp_v1_3;
    void *temp_a0;
    void *temp_a0_5;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    s32 phi_v1;
    s32 phi_t1;
    s32 phi_t2;
    s16 phi_a3;
    s16 phi_t5;
    s16 phi_t1_2;
    s16 phi_t2_2;
    Gfx* gfx;
    s32 phi_v1_2;
    s32 phi_v1_3;
    s32 phi_t5_2;
    s32 phi_t1_3;
    s32 phi_v1_4;
    s32 phi_v1_5;
    s32 phi_v1_6;

    gfx = *p;
    if (D_8014B308 == 0) {
        temp_a2 = ((D_801539F0 * 4) - D_801539F0) * 2;
        temp_a0 = temp_a2 + &D_801539C8;
        temp_a3 = D_801539E0 - temp_a0->unk0;
        if (temp_a3 >= 0) {
            phi_v1_2 = temp_a3;
        } else {
            phi_v1_2 = -temp_a3;
        }
        temp_a3_2 = D_801539E4 - temp_a0->unk2;
        temp_t5 = (s32) ((phi_v1_2 / (s32) D_801539EC) << 0x10) >> 0x10;
        if (temp_a3_2 >= 0) {
            phi_v1 = temp_a3_2;
        } else {
            phi_v1 = -temp_a3_2;
        }
        temp_t6 = D_801539E8 - temp_a0->unk4;
        sp60 = (s16) (phi_v1 / (s32) D_801539EC);
        sp0 = temp_t6;
        if (temp_t6 >= 0) {
            phi_v1_3 = temp_t6;
        } else {
            phi_v1_3 = -sp0;
        }
        if ((s32) D_801539E0 >= (s32) temp_a0->unk0) {
            phi_t2 = (s32) ((D_801539E0 - temp_t5) << 0x10);
        } else {
            phi_t2 = (s32) ((D_801539E0 + temp_t5) << 0x10);
        }
        temp_t2 = phi_t2 >> 0x10;
        if ((s32) D_801539E4 >= (s32) temp_a0->unk2) {
            phi_t1 = (s32) ((D_801539E4 - sp60) << 0x10);
        } else {
            phi_t1 = (s32) ((D_801539E4 + sp60) << 0x10);
        }
        temp_t1 = phi_t1 >> 0x10;
        if ((s32) D_801539E8 >= (s32) temp_a0->unk4) {
            phi_a3 = (s16) ((s32) ((D_801539E8 - ((s32) ((phi_v1_3 / (s32) D_801539EC) << 0x10) >> 0x10)) << 0x10) >> 0x10);
        } else {
            phi_a3 = (s16) ((s32) ((D_801539E8 + ((s32) ((phi_v1_3 / (s32) D_801539EC) << 0x10) >> 0x10)) << 0x10) >> 0x10);
        }
        spC = (s32) temp_a0->unk0;
        temp_a1 = temp_a2 + &D_801539D4;
        temp_a0_2 = D_801539F4 - temp_a1->unk0;
        sp0 = (s32) temp_a1->unk0;
        if (temp_a0_2 >= 0) {
            D_801539E4 = (s16) temp_t1;
            D_801539E4 = (s16) temp_t2;
            phi_v1_4 = temp_a0_2;
        } else {
            D_801539E4 = (s16) temp_t1;
            D_801539E0 = (s16) temp_t2;
            phi_v1_4 = -temp_a0_2;
        }
        sp8 = (s32) temp_a0->unk2;
        temp_a0_3 = D_801539F8 - temp_a1->unk2;
        temp_a2_2 = (s32) ((phi_v1_4 / (s32) D_801539EC) << 0x10) >> 0x10;
        if (temp_a0_3 >= 0) {
            D_801539E8 = phi_a3;
            phi_v1_5 = temp_a0_3;
        } else {
            D_801539E8 = phi_a3;
            phi_v1_5 = -temp_a0_3;
        }
        sp4 = (s32) temp_a0->unk4;
        temp_a0_4 = D_801539FC - temp_a1->unk4;
        temp_a3_3 = (s32) ((phi_v1_5 / (s32) D_801539EC) << 0x10) >> 0x10;
        if (temp_a0_4 >= 0) {
            phi_v1_6 = temp_a0_4;
        } else {
            phi_v1_6 = -temp_a0_4;
        }
        if ((s32) D_801539F4 >= sp0) {
            phi_t5_2 = (s32) ((D_801539F4 - temp_a2_2) << 0x10);
        } else {
            phi_t5_2 = (s32) ((D_801539F4 + temp_a2_2) << 0x10);
        }
        if ((s32) D_801539F8 >= (s32) temp_a1->unk2) {
            phi_t1_3 = (s32) ((D_801539F8 - temp_a3_3) << 0x10);
        } else {
            phi_t1_3 = (s32) ((D_801539F8 + temp_a3_3) << 0x10);
        }
        if ((s32) D_801539FC >= (s32) temp_a1->unk4) {
            phi_t2_2 = (s16) ((s32) ((D_801539FC - ((s32) ((phi_v1_6 / (s32) D_801539EC) << 0x10) >> 0x10)) << 0x10) >> 0x10);
        } else {
            phi_t2_2 = (s16) ((s32) ((D_801539FC + ((s32) ((phi_v1_6 / (s32) D_801539EC) << 0x10) >> 0x10)) << 0x10) >> 0x10);
        }
        temp_t0 = (s32) ((D_801539EC - 1) << 0x10) >> 0x10;
        D_801539EC = (s16) temp_t0;
        phi_t5 = (s16) (phi_t5_2 >> 0x10);
        phi_t1_2 = (s16) (phi_t1_3 >> 0x10);
        if (temp_t0 == 0) {
            D_801539E0 = (s16) spC;
            D_801539E4 = (s16) sp8;
            D_801539E8 = (s16) sp4;
            D_801539F0 = (s16) (D_801539F0 ^ 1);
            D_801539EC = (u16)0xC;
            phi_t5 = (s16) ((s32) (sp0 << 0x10) >> 0x10);
            phi_t1_2 = (s16) ((s32) (temp_a1->unk2 << 0x10) >> 0x10);
            phi_t2_2 = (s16) ((s32) (temp_a1->unk4 << 0x10) >> 0x10);
        }
        gDPPipeSync(gfx++);
        gDPSetCombineLERP(gfx++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, 
                                PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(gfx++, 0, 0, D_801539E0, D_801539E4, D_801539E8, 0xFF);
        gDPSetEnvColor(gfx++, phi_t5, phi_t1_2, phi_t2_2, 0xFF);
        D_801539F8 = phi_t1_2;
        D_801539FC = phi_t2_2;
        D_801539F4 = phi_t5;
        gDPSetTextureImage(gfx++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (globalCtx + 0x5E08));
        gDPSetTile(gfx++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, 
                        G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, 
                        G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
        gDPLoadSync(gfx++);
        gDPLoadBlock(gfx++, G_TX_LOADTILE, 0, 0, 63, 2048);
        gDPPipeSync(gfx++);
        gDPSetTile(gfx++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0x0000, G_TX_RENDERTILE, 0, 
                        G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, 
                        G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
        gDPSetTileSize(gfx++, G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C);
        
        temp_f18 = (s32) ((XREG(57) / 100.0f) * 16.0f);
        D_801759A0 = temp_f18;
        temp_v1 = temp_v0_2;
        temp_v0_2 = temp_v0_2 + 8;
        D_801759A4 = (s32) (1024.0f / (XREG(57) / 100.0f));
        temp_v1->unk0 = (s32) ((((((arg2 + temp_f18) * 4) & 0xFFF) << 0xC) | 0xE4000000) | (((arg3 + temp_f18) * 4) & 0xFFF));
        temp_v1->unk4 = (s32) ((((arg2 * 4) & 0xFFF) << 0xC) | ((arg3 * 4) & 0xFFF));
        temp_v0_2->unk0 = 0xE1000000;
        temp_v0_2->unk4 = 0;
        temp_v0_2 = temp_v0_2 + 8;
        temp_v1_2 = temp_v0_2;
        temp_v1_2->unk0 = 0xF1000000;
        temp_v0_2 = temp_v0_2 + 8;
        temp_a1_4 = D_801759A4 & 0xFFFF;
        temp_v1_2->unk4 = (s32) ((temp_a1_4 << 0x10) | temp_a1_4);
        globalCtx->msgCtx.unk_E3E7++;
        *p = gfx;
    }
    return gfx;
} */

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_801080B4.s")
u16 func_801080B4(GlobalContext* globalCtx, u16 arg1, Gfx** p, u16 arg3) {
    s32 pad;
    Gfx *gfx;
    MessageContext* msgCtx;

    msgCtx = &globalCtx->msgCtx;
    gfx = *p;
    // clang-format off
    // same line required to match
    if (msgCtx->msgMode == 6) { Audio_PlaySoundGeneral(0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8); }
    // clang-format on

    gDPPipeSync(gfx++);
    gDPSetCombineMode(gfx++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(gfx++, 0, 0, 0xFF, 0xFF, 0xFF, msgCtx->unk_E3E2);

    if (arg1 >= 0x66) {
        gDPSetTextureImage(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 1, (u32)msgCtx->textboxSegment + 0x1000);
        gDPSetTile(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 0, 0x0000, G_TX_LOADTILE, 0, 
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, 
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPLoadSync(gfx++);
        gDPLoadBlock(gfx++, G_TX_LOADTILE, 0, 0, 575, 171);
        gDPPipeSync(gfx++);
        gDPSetTile(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 6, 0x0000, G_TX_RENDERTILE, 0, 
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, 
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPSetTileSize(gfx++, G_TX_RENDERTILE, 0, 0, 0x005C, 0x005C);
    } else {
        gDPSetTextureImage(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 1, (u32)msgCtx->textboxSegment + 0x1000);
        gDPSetTile(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 0, 0x0000, G_TX_LOADTILE, 0, 
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, 
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPLoadSync(gfx++);
        gDPLoadBlock(gfx++, G_TX_LOADTILE, 0, 0, 1023, 128);
        gDPPipeSync(gfx++);
        gDPSetTile(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 8, 0x0000, G_TX_RENDERTILE, 0, 
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, 
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPSetTileSize(gfx++, G_TX_RENDERTILE, 0, 0, 0x007C, 0x007C);
    }
    gSPTextureRectangle(gfx++, 
                    (msgCtx->unk_E3D8 + YREG(71))*4, 
                    YREG(72)*4, 
                    (msgCtx->unk_E3D8 + YREG(71) + YREG(75))*4, 
                    (YREG(72) + YREG(75))*4, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
    gDPPipeSync(gfx++);
    gDPSetCombineLERP(gfx++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0);

    msgCtx->unk_E3D8 += 0x20;
    arg3++;
    *p = gfx;
    return arg3;
}

#ifdef NON_MATCHING
// Stack size, some regalloc
void func_801083F8(GlobalContext* globalCtx) {
    s32 new_var2;
    s32 pad;
    MessageContext* msgCtx;

    msgCtx = &globalCtx->msgCtx;
    if (globalCtx->msgCtx.msgMode == 6) {
        globalCtx->msgCtx.unk_E3EE = 1;
        new_var2 = msgCtx->unk_E3F0;
        if (new_var2 == 0x2A) {
            msgCtx->msgMode = 0x21;
            // Recording Start / Recording Start / Recording Start / Recording Start ->
            osSyncPrintf("録音開始 録音開始 録音開始 録音開始  -> ", new_var2);
        } else if (new_var2 == 0x2B) {
            // Recording Playback / Recording Playback / Recording Playback / Recording Playback ->
            osSyncPrintf("録音再生 録音再生 録音再生 録音再生  -> ", new_var2);
            func_800ED858(1);
            func_800ED858(1);
            msgCtx->unk_E2B8 = func_800EE3F8();
            NON_CONST(D_8014B2F8, s16) = NON_CONST(D_8014B2FC, s16) = 0;
            msgCtx->unk_E2B8->unk_2 = D_8014B2F8;
            func_801069B0();
            msgCtx->unk_E3E7 = 3;
            msgCtx->msgMode = 0x23;
            func_800ED93C(0xF, 1);
        } else if (new_var2 == 0x2C) {
            msgCtx->msgMode = 0x24;
            // 8 Note Recording Start / 8 Note Recording Start / 8 Note Recording Start ->
            osSyncPrintf("８音録音開始 ８音録音開始 ８音録音開始  -> ", new_var2);
        } else if (new_var2 == 0x2D) {
            // 8 Note Playback / 8 Note Playback / 8 Note Playback ->
            osSyncPrintf("８音再生 ８音再生 ８音再生  -> ", new_var2);
            func_800ED858(1);
            func_800ED858(1);
            msgCtx->unk_E2B8 = func_800EE3F8();
            NON_CONST(D_8014B2F8, s16) = NON_CONST(D_8014B2FC, s16) = 0;
            msgCtx->unk_E2B8->unk_2 = D_8014B2F8;
            func_801069B0();
            msgCtx->unk_E3E7 = 3;
            msgCtx->msgMode = 0x28;
            func_800ED93C(0xD, 1);
        } else if (new_var2 == 0x2E) {
            msgCtx->msgMode = 0x29;
            // Musical Round Start / Musical Round Start / Musical Round Start / Musical Round Start ->
            osSyncPrintf("輪唱開始 輪唱開始 輪唱開始 輪唱開始  -> ", new_var2);
        } else if (new_var2 == 0x2F) {
            msgCtx->msgMode = 0x31;
            // Frog Chorus / Frog Chorus ->
            osSyncPrintf("カエルの合唱 カエルの合唱  -> ", new_var2);
        } else {
            // Ocarina（%d）
            osSyncPrintf("オカリナ（%d） ", msgCtx->unk_E3F0);
            new_var2 = msgCtx->unk_E3F0;
            if (new_var2 == 0 || new_var2 == 1 || new_var2 >= 0x22) {
                msgCtx->msgMode = 9;
                osSyncPrintf("000000000000  -> ", new_var2);
            } else if (new_var2 >= 2 && new_var2 < 0xE) {
                msgCtx->msgMode = 0xA;
                osSyncPrintf("111111111111  -> ", new_var2);
            } else {
                msgCtx->msgMode = 0xB;
                osSyncPrintf("222222222222  -> ", new_var2);
            }
        }
        osSyncPrintf("msg_mode=%d\n", msgCtx->msgMode);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_801083F8.s")
#endif

extern s16 D_8014B308;

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_801086B0.s")

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80109968.s")
void func_80109968(GlobalContext* globalCtx, u16 arg1, s16 arg2) {
    MessageContext* msgCtx;
    InterfaceContext* interfaceCtx;

    msgCtx = &globalCtx->msgCtx;
    interfaceCtx = &globalCtx->interfaceCtx;
    if (arg1 == 0x76) {
        interfaceCtx->unk_140[30] = 0xFF;
        interfaceCtx->unk_140[31] = 0xFF;
    }
    if (arg1 < 0x66) {
        YREG(71) = XREG(54) - D_80153C40[gSaveContext.language];
        YREG(72) = arg2 + 6;
        YREG(75) = 32;
        DmaMgr_SendRequest1((u32)msgCtx->textboxSegment + 0x1000, 
                            (u32)_icon_item_staticSegmentRomStart + (arg1 * 0x1000), 
                            0x1000, "../z_message_PAL.c", 1473);
        // Item 32-0
        osSyncPrintf("アイテム32-0\n");
    } else {
        YREG(71) = XREG(54) - D_80153C48[gSaveContext.language];
        YREG(72) = arg2 + 10;
        YREG(75) = 24;
        DmaMgr_SendRequest1((u32)msgCtx->textboxSegment + 0x1000, 
                            (u32)_icon_item_24_staticSegmentRomStart + 0xFFFC6A00 + (arg1 * 0x900), 
                            0x900, "../z_message_PAL.c", 1482);
        // Item 24＝%d (%d) {%d}
        osSyncPrintf("アイテム24＝%d (%d) {%d}\n", arg1, arg1 - 0x6C, 0x54);
    }
    msgCtx->unk_E3CE++;
    msgCtx->unk_E3E6 = 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_80109B3C.s")

extern s8 D_8014B2F4;
extern s8 D_8014B300;
extern s16 D_8014B318;

void func_8010B0C0(GlobalContext*, u16);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010B0C0.s")
/* void func_8010B0C0(GlobalContext* globalCtx, u16 textId) {
    static const u16 D_80153C50[] = {
        0x0000, 0x0001, 0x0003, 0x0002,
    };

    s16 sp3E;
    MessageData* sp30;
    u16 *temp_v0_3;
    s32 temp_v0;
    u16 temp_a3;
    u16 temp_a3_2;
    u8 temp_v0_2;
    s32 phi_a3;
    u16 phi_a3_2;
    u16 phi_a3_3;
    MessageContext *msgCtx;
    SaveContext *phi_a1;
    s32 *phi_t0;
    u16 phi_a3_4;
    SaveContext *phi_a1_2;

    msgCtx = &globalCtx->msgCtx;
    if (globalCtx->msgCtx.msgMode == 0) {
        gSaveContext.unk_13EE = gSaveContext.unk_13EA;
    }
    if (YREG(15) == 0x10) {
        Interface_ChangeAlpha(5);
    }
    D_8014B308 = 0;
    D_8014B2F4 = D_8014B300 = D_8014B308;
    D_8014B318 = D_8014B308 & 0xFF;
    if (textId >= 0x0500 && textId < 0x0600) { // text ids 0500 to 0600 are reserved for credits
        D_8014B308 = 1;
        XREG(57) = 0x55;
        XREG(56) = 6;
        XREG(54) = 0x14;
        YREG(1) = 0x30;
    } else {
        XREG(57) = 0x4B;
        XREG(56) = 0xC;
        XREG(54) = 0x41;
    }
    if (textId == 0xC2 || textId == 0xFA) { // C2 = One piece of heart , FA = WINNER One piece of heart
        // Increments text id based on piece of heart count, assumes the piece of heart text is all
        // in order and that you don't have more than the intended amount of heart pieces.
        textId += ((gSaveContext.questItems & 0xF0000000) >> 0x1C);
    } else if (msgCtx->unk_E2F8 == 0xC && CHECK_OWNED_EQUIP(EQUIP_SWORD,2)) {
        textId = 0xB; // Traded Giant's Knife for Biggoron Sword
    } else if (msgCtx->unk_E2F8 == 0xB4 && (gSaveContext.eventChkInf[9] & 0x00000040)) {
        textId = 0xB5; // Destroyed Gold Skulltula
    }
    // Ocarina Staff + Dialog
    if (textId == 0x4077 || // Pierre?
        textId == 0x407A || // Pierre?
        textId == 0x2061 || // Learning Epona's Song
        textId == 0x5035 || // Guru-Guru in Windmill
        textId == 0x40AC) { // Ocarina Frog Minigame
        Interface_ChangeAlpha(1);
    }
    msgCtx->unk_E2F8 = textId;
    if (textId == 0x2030) { // Talking to Ingo as adult in Lon Lon Ranch for the first time before freeing Epona
        osSyncPrintf("\x1b[33m");
        osSyncPrintf("？？？？？？？？？？？？？？？？  z_message.c  ？？？？？？？？？？？？？？？？？？\n");
        osSyncPrintf("\x1b[m");
        gSaveContext.eventInf[3] = 0;
        gSaveContext.eventInf[2] = 0;
        gSaveContext.eventInf[1] = 0;
        gSaveContext.eventInf[0] = 0;
    }
    sp30 = &msgCtx->unk_128;
    if (D_8014B308 != 0) {
        func_80107628(globalCtx, textId);
        msgCtx->unk_E300 = sp30->size;
        DmaMgr_SendRequest1(msgCtx->msgbuf, 
                        _staff_message_data_staticSegmentRomStart + sp30->offset, 
                        sp30->size, "../z_message_PAL.c", 1954);
    } else {
        temp_v0_2 = gSaveContext.language;
        if (temp_v0_2 == 0) {
            func_80107628(globalCtx, textId);
            msgCtx->unk_E300 = sp30->size;
            DmaMgr_SendRequest1(msgCtx->msgbuf, 
                            _nes_message_data_staticSegmentRomStart + sp30->offset, 
                        sp30->size, "../z_message_PAL.c", 1966);
        } else if (temp_v0_2 == 1) {
            func_80107628(globalCtx, textId);
            msgCtx->unk_E300 = sp30->size;
            DmaMgr_SendRequest1(msgCtx->msgbuf, 
                            _ger_message_data_staticSegmentRomStart + sp30->offset, 
                            sp30->size, "../z_message_PAL.c", 1978);
        } else {
            func_80107628(globalCtx, textId);
            msgCtx->unk_E300 = sp30->size;
            DmaMgr_SendRequest1(msgCtx->msgbuf, 
                            _fra_message_data_staticSegmentRomStart + sp30->offset, 
                            sp30->size, "../z_message_PAL.c", 1990);
        }
    }
    msgCtx->unk_E2FC = sp30->xy;
    msgCtx->unk_E2FD = msgCtx->unk_E2FC >> 4;
    msgCtx->unk_E2FE = msgCtx->unk_E2FC & 0xF;
    // Text Box Type＝%d
    osSyncPrintf("吹き出し種類＝%d\n", msgCtx->unk_E2FD);
    if (msgCtx->unk_E2FD < 4) {
        temp_v0_3 = &D_80153C50[msgCtx->unk_E2FD];
        DmaMgr_SendRequest1(msgCtx->textboxSegment, (u32)(_message_staticSegmentRomStart + (*temp_v0_3 * 0x1000)), 0x1000, "../z_message_PAL.c", 2006);
        if (temp_v0_3 == &D_80153C50[0]) {
            msgCtx->unk_E3FE = 0;
            msgCtx->unk_E400 = 0;
            msgCtx->unk_E402 = 0;
        } else if (temp_v0_3 == &D_80153C50[1]) {
            msgCtx->unk_E3FE = 0x46;
            msgCtx->unk_E400 = 0x32;
            msgCtx->unk_E402 = 0x1E;
        } else if (temp_v0_3 == &D_80153C50[2]) {
            msgCtx->unk_E3FE = 0;
            msgCtx->unk_E400 = 0xA;
            msgCtx->unk_E402 = 0x32;
        } else {
            msgCtx->unk_E3FE = 0xFF;
            msgCtx->unk_E400 = 0;
            msgCtx->unk_E402 = 0;
        }
        if (temp_v0_3 == &D_80153C50[1]) {
            msgCtx->unk_E404 = 0xE6;
        } else if (temp_v0_3 == &D_80153C50[3]) {
            msgCtx->unk_E404 = 0xB4;
        } else {
            msgCtx->unk_E404 = 0xAA;
        }
        msgCtx->unk_E406 = 0;
    }
    msgCtx->unk_E3E6 = msgCtx->unk_E3D6 = msgCtx->unk_E3E4 = 0;
    msgCtx->unk_E3CE = msgCtx->unk_E3D0 = msgCtx->unk_E3D2 = 0;
} */

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010B680.s")
// Message_Begin
void func_8010B680(GlobalContext* globalCtx, u16 textId, Actor* actor) {
    MessageContext* msgCtx;

    msgCtx = &globalCtx->msgCtx;
    osSyncPrintf("\x1b[34m");
    // Message＝%x(%d)
    osSyncPrintf("めっせーじ＝%x(%d)\n", textId, actor);
    osSyncPrintf("\x1b[m");
    msgCtx->unk_E3F0 = 0xFFFF;
    func_8010B0C0(globalCtx, textId);
    msgCtx->unk_E408 = actor;
    msgCtx->msgMode = 1;
    msgCtx->unk_E3E7 = 0;
    msgCtx->unk_E3E8 = 0;
    globalCtx->msgCtx.unk_E3EE = 0;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010B720.s")
// Message_Continue
void func_8010B720(GlobalContext* globalCtx, u16 textId) {
    MessageContext* msgCtx;

    msgCtx = &globalCtx->msgCtx;
    osSyncPrintf("\x1b[32m");
    // Message＝%x message->msg_data
    osSyncPrintf("めっせーじ＝%x  message->msg_data\n", textId, msgCtx->unk_E300);
    osSyncPrintf("\x1b[m");
    msgCtx->unk_E300 = 0;
    func_8010B0C0(globalCtx, textId);
    msgCtx->msgMode = 0;
    msgCtx->unk_E406 = msgCtx->unk_E404;
    msgCtx->msgMode = 5;
    msgCtx->unk_E3E7 = 3;
    msgCtx->unk_E3E4 = msgCtx->unk_E3CE = msgCtx->unk_E3D0 = msgCtx->unk_E3D2 = msgCtx->unk_E3E8 = 0;
    msgCtx->unk_E3E2 = 0xFF;
    if (YREG(31) == 0 && globalCtx->interfaceCtx.unk_1FA == 0) {
        Interface_SetDoAction(globalCtx, 0x10);
    }
    msgCtx->unk_E406 = msgCtx->unk_E404;
}

void func_8010B820(GlobalContext*, u16);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010B820.s")
/* void func_8010B820(GlobalContext* globalCtx, u16 ocarinaActionId) {
    static s16 D_8014B314 = 0;

    static const u16 D_80153C58[] = {
        0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x10, 0x80,
    };

    s16 sp4E;
    s16 sp4A;
    MessageContext *msgCtx;
    s16 temp_t6;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s0_3;
    s32 temp_v0;
    u16 temp_a1;
    u16 phi_s0;
    u16 phi_a1;
    u16 *phi_v0;
    u16 phi_a1_2;
    s32 phi_s0_2;
    s16 phi_v0_2;
    s32 phi_s0_3;
    s16 phi_v0_3;

    msgCtx = &globalCtx->msgCtx;
    osSyncPrintf("\x1b[32m");
    for (phi_s0 = 0, D_8014B31C = 0; phi_s0 < 0xC; phi_s0++) {
        if (CHECK_QUEST_ITEM(phi_s0 + 0x6)) {
            osSyncPrintf("ocarina_check_bit[%d]=%x\n", phi_s0, D_80153C58[phi_s0]);
            D_8014B31C |= D_80153C58[phi_s0];
        }
    }
    if (gSaveContext.unk_12C5 != 0) {
        D_8014B31C |= 0x1000;
    }
    osSyncPrintf("ocarina_bit = %x\n", D_8014B31C);
    osSyncPrintf("\x1b[m");
    D_8014B314 = CHECK_QUEST_ITEM(QUEST_SONG_SUN);
    msgCtx->unk_E2B8 = func_800EE3C8();
    msgCtx->unk_E2B8->unk_2 = NON_CONST(D_8014B2FC,s16) = NON_CONST(D_8014B2F8,s16) = 0;
    func_801069B0(&D_8014B2F8);
    D_8014B310 = msgCtx->unk_E3F2 = msgCtx->unk_E410 = 0xFF;
    // ☆☆☆☆☆ Ocarina Number＝%d(%d) ☆☆☆☆☆
    osSyncPrintf("\x1b[31m☆☆☆☆☆ オカリナ番号＝%d(%d) ☆☆☆☆☆\n\x1b[m", ocarinaActionId, 2);
    sp4A = 0;
    if (ocarinaActionId >= 0x893) {
        func_8010B0C0(globalCtx, ocarinaActionId);
        phi_s0_2 = ocarinaActionId + 0x86E;
    } else if (ocarinaActionId == 0x2E) {
        msgCtx->unk_E3F0 = ocarinaActionId;
        func_8010B0C0(globalCtx, 0x86D);
        phi_s0_2 = ocarinaActionId + 0x86E;
    } else if (ocarinaActionId == 1 || ocarinaActionId >= 0x22) {
        osSyncPrintf("ocarina_set 000000000000000000  = %d\n", ocarinaActionId);
        msgCtx->unk_E3F0 = ocarinaActionId;
        if (ocarinaActionId >= 0x22 && ocarinaActionId < 0x28) {
            Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
        if (ocarinaActionId == 0x2D) {
            func_8010B0C0(globalCtx, 0x86F);
            phi_s0_2 = ocarinaActionId + 0x86E;
        } else {
            func_8010B0C0(globalCtx, 0x86E);
            phi_s0_2 = ocarinaActionId + 0x86E;
        }
    } else {
        msgCtx->unk_E3F0 = ocarinaActionId;
        sp4A = 1;
        if (ocarinaActionId >= 0xF) {
            osSyncPrintf("222222222\n");
            func_8010B0C0(globalCtx, 0x86D);
            phi_s0_2 = ocarinaActionId + 0x86E;
        } else {
            osSyncPrintf("333333333\n");
            phi_s0_2 = ocarinaActionId + 0x86E;
            func_8010B0C0(globalCtx, phi_s0_2);
        }
    }
    msgCtx->unk_E408 = NULL;
    // Ocarina Mode
    osSyncPrintf("オカリナモード = %d  (%x)\n", msgCtx->unk_E3F0, phi_s0_2);
    msgCtx->unk_E3E8 = 0;
    globalCtx->msgCtx.unk_E3EE = 0;
    VREG(0) = 0x22;
    VREG(1) = 0x8E;
    YREG(16) = 0x200;
    YREG(17) = 0x200;
    YREG(22) = 0x100;
    YREG(23) = 0x40;
    msgCtx->unk_E3E7 = 0;
    if (YREG(12) != 0) {
        msgCtx->msgMode = 4;
    } else {
        msgCtx->unk_E3E7 =2;
        msgCtx->msgMode = 5;
    }
    msgCtx->unk_E406 = msgCtx->unk_E404;
    if (sp4A == 0) {
        Interface_LoadActionLabelB(globalCtx, 0x12);
        sp4A = gSaveContext.unk_13EA;
        Interface_ChangeAlpha(0xA);
        gSaveContext.unk_13EA = sp4A;
    }
    // Music Performance Start
    osSyncPrintf("演奏開始\n");
    if (ocarinaActionId == 1 || ocarinaActionId == 0x30) {
        msgCtx->msgMode = 9;
        msgCtx->unk_E2FD = 0x63;
    } else if (ocarinaActionId == 0x2F) {
        msgCtx->msgMode = 0x31;
        msgCtx->unk_E2FD = 2;
    } else if (ocarinaActionId == 0x2E) {
        Interface_ChangeAlpha(1);
        func_80109B3C(globalCtx);
        msgCtx->msgMode = 0x29;
    } else if (ocarinaActionId == 0x2B) {
        // ?????Recording Playback / Recording Playback / Recording Playback / Recording Playback ->
        osSyncPrintf("?????録音再生 録音再生 録音再生 録音再生  -> ");
        func_800ED858(1);
        func_800ED858(1);
        msgCtx->unk_E2B8 = func_800EE3F8();
        NON_CONST(D_8014B2F8,s16) = NON_CONST(D_8014B2FC,s16) = 0;
        msgCtx->unk_E2B8->unk_2 = D_8014B2F8;
        func_801069B0(&D_8014B2FC);
        msgCtx->unk_E3E7 = 3;
        msgCtx->msgMode = 0x23;
        func_800ED93C(0xF, 1);
        gSaveContext.unk_13EA = 0;
        Interface_ChangeAlpha(1);
    }
    for (phi_s0_3 = 0, phi_v0_3 = 0; phi_v0_3 < 0x30; phi_v0_3++, phi_s0_3 += 0x80) {
        func_8006EE50(&globalCtx->msgCtx.unk_128, 0x8140, phi_s0_3);
    }
} */

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010BD58.s")
void func_8010BD58(GlobalContext* globalCtx, u16 arg1) {
    globalCtx->msgCtx.unk_E40E = 0;
    func_8010B820(globalCtx, arg1);
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010BD88.s")
void func_8010BD88(GlobalContext* globalCtx, u16 arg1) {
    globalCtx->msgCtx.unk_E40E = 1;
    func_8010B820(globalCtx, arg1);
}

// Talk states?
#ifdef NON_MATCHING
// Tiny regalloc at the end
u8 func_8010BDBC(MessageContext* msgCtx) {
    if (msgCtx->unk_E300 == 0) {
        return 0;
    } else if (msgCtx->msgMode == 0x35) {
        if (msgCtx->unk_E3E4 == 0x30) {
            return 1;
        } else if (msgCtx->unk_E3E4 == 0x10 || msgCtx->unk_E3E4 == 0x20) {
            return 4;
        } else if (msgCtx->unk_E3E4 == 0x50 || msgCtx->unk_E3E4 == 0x40) {
            return 5;
        } else if (msgCtx->unk_E3E4 == 0x60) {
            return 3;
        } else {
            return 6;
        }
    } else if (msgCtx->msgMode == 0x34) {
        return 10;
    } else if (msgCtx->msgMode == 0x1A) {
        return 7;
    } else if (msgCtx->unk_E3EE == 3) {
        return 8;
    } else if (msgCtx->msgMode == 0x1F) {
        return 9;
    } else if (msgCtx->msgMode == 0x36 && msgCtx->unk_E3E7 == 1) {
        return 2;
    } else {
        return 3;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010BDBC.s")
#endif

#ifdef NON_MATCHING
// Very small reorderings, regalloc
void func_8010BED8(GlobalContext* globalCtx, Gfx** p) {
    MessageContext* msgCtx;
    Gfx* gfx;

    gfx = *p;
    msgCtx = &globalCtx->msgCtx;

    gDPPipeSync(gfx++);
    gDPSetPrimColor(gfx++, 0, 0, msgCtx->unk_E3FE, msgCtx->unk_E400, msgCtx->unk_E402, msgCtx->unk_E406);
    if (msgCtx->unk_E2FD == 0 || msgCtx->unk_E2FD == 2) {
        gDPSetTextureImage(gfx++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (u32)msgCtx->textboxSegment);
        gDPSetTile(gfx++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, 7, G_TX_NOLOD);
        do {
            gDPLoadSync(gfx++);
            gDPLoadBlock(gfx++, G_TX_LOADTILE, 0, 0, 2047, 256);
            gDPPipeSync(gfx++);
        } while (0);
        gDPSetTile(gfx++, G_IM_FMT_I, G_IM_SIZ_4b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, 7, G_TX_NOLOD);
        gDPSetTileSize(gfx++, G_TX_RENDERTILE, 0, 0, 0x01FC, 0x00FC);
    } else {
        if (msgCtx->unk_E2FD == 3) {
            gDPSetEnvColor(gfx++, 0x00, 0x00, 0x00, 0xFF);
        } else {
            gDPSetEnvColor(gfx++, 0x32, 0x14, 0x00, 0xFF);
        }
        gDPSetTextureImage(gfx++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, (u32)msgCtx->textboxSegment);
        gDPSetTile(gfx++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, 7, G_TX_NOLOD);
        do {
            gDPLoadSync(gfx++);
            gDPLoadBlock(gfx++, G_TX_LOADTILE, 0, 0, 2047, 256);
            gDPPipeSync(gfx++);
        } while (0);
        gDPSetTile(gfx++, G_IM_FMT_IA, G_IM_SIZ_4b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, 7, G_TX_NOLOD);
        gDPSetTileSize(gfx++, G_TX_RENDERTILE, 0, 0, 0x01FC, 0x00FC);
    }
    gSPTextureRectangle(gfx++, VREG(0)*4, VREG(1)*4, (VREG(0) + YREG(22))*4, (VREG(1) + YREG(23))*4, 0, 0, 0, YREG(16)*2, YREG(17)*2);
    if (msgCtx->unk_E2FD == 3) {
        gDPPipeSync(gfx++);
        gDPSetCombineLERP(gfx++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(gfx++, 0, 0, 0xFF, 0x64, 0x00, 0xFF);
        gDPSetTextureImage(gfx++, G_IM_FMT_I, G_IM_SIZ_16b, 1, &D_02002E40);
        gDPSetTile(gfx++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        do {
            gDPLoadSync(gfx++);
            gDPLoadBlock(gfx++, G_TX_LOADTILE, 0, 0, 127, 2048);
            gDPPipeSync(gfx++);
        } while (0);
        gDPSetTile(gfx++, G_IM_FMT_I, G_IM_SIZ_4b, 1, 0x0000, G_TX_RENDERTILE, 0, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_MIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPSetTileSize(gfx++, G_TX_RENDERTILE, 0, 0, 0x003C, 0x007C);
        gSPTextureRectangle(gfx++, VREG(7)*4, VREG(8)*4, (VREG(7) + 0x10&0xFFFF)*4, (VREG(8) + 0x20&0xFFFF)*4, 0, 0, 0, 0x0400, 0x0400);
    }
    *p = gfx;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010BED8.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010C358.s")
void func_8010C358(View* view) {
    SET_FULLSCREEN_VIEWPORT(view);
    func_800AB2C4(view);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010C39C.s")

#ifdef NON_MATCHING
// Matches but it loads from data instead of rodata
void func_8010F2CC(s16 *arg0, GraphicsContext* gfxCtx) {
    static s16 D_80153CF8 = 0;
    static s16 D_80153CFC = 0;
    Gfx* dispRefs[6];

    Graph_OpenDisps(dispRefs, gfxCtx, "../z_message_PAL.c", 0xD9D);
    if (D_80153CF8 != *arg0) {
        D_80153CF8 = *arg0;
        D_80153CFC = 0x1E;
    }
    if (D_80153CFC != 0) {
        D_80153CFC--;
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetCycleType(gfxCtx->polyOpa.p++, G_CYC_FILL);
        gDPSetRenderMode(gfxCtx->polyOpa.p++, G_RM_NOOP, G_RM_NOOP2);
        gDPSetFillColor(gfxCtx->polyOpa.p++, 0x00010001);
        gDPFillRectangle(gfxCtx->polyOpa.p++, 0, 110, 319, 150);
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetCycleType(gfxCtx->polyOpa.p++, G_CYC_FILL);
        gDPSetRenderMode(gfxCtx->polyOpa.p++, G_RM_NOOP, G_RM_NOOP2);
        gDPSetFillColor(gfxCtx->polyOpa.p++, 0xFFFFFFFF);
        gDPFillRectangle(gfxCtx->polyOpa.p++, 40, 120, 60, 140);
        gDPPipeSync(gfxCtx->polyOpa.p++);
    }
    Graph_CloseDisps(dispRefs, gfxCtx, "../z_message_PAL.c", 0xDB9);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010F2CC.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010F494.s")
void func_8010F494(GlobalContext* globalCtx, Gfx** p) {
    s32 pad;
    GfxPrint printer;
    s32 pad1;

    GfxPrint_Init(&printer);
    GfxPrint_Open(&printer, *p);
    GfxPrint_SetPos(&printer, 6, 26);
    GfxPrint_SetColor(&printer, 255, 60, 0, 255);
    GfxPrint_Printf(&printer, "%s", "MESSAGE");
    GfxPrint_SetPos(&printer, 14, 26);
    GfxPrint_Printf(&printer, "%s", "=");
    GfxPrint_SetPos(&printer, 16, 26);
    GfxPrint_Printf(&printer, "%x", globalCtx->msgCtx.unk_E2F8);
    *p = GfxPrint_Close(&printer);
    GfxPrint_Destroy(&printer);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8010F58C.s")

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_message_PAL/func_8011040C.s")
void func_8011040C() {
    NON_CONST(D_801538F0, MessageTableEntry*) = &D_8014B320;
    NON_CONST(D_801538F4, u32*) = &D_8014F548;
    NON_CONST(D_801538F8, u32*) = &D_80151658;
    NON_CONST(D_801538FC, MessageTableEntry*) = &D_80153768;
}
