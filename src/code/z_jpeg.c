#include "global.h"
#include "vt.h"

#define MARKER_SOI 0xD8
#define MARKER_SOF 0xC0
#define MARKER_DHT 0xC4
#define MARKER_DQT 0xDB
#define MARKER_DRI 0xDD
#define MARKER_SOS 0xDA
#define MARKER_APP0 0xE0
#define MARKER_APP1 0xE1
#define MARKER_APP2 0xE2
#define MARKER_COM 0xFE
#define MARKER_EOI 0xD9

u32 Jpeg_SendTask(JpegContext* ctx) {
    // clang-format off
    static OSTask_t sJpegTask = {
        M_NJPEGTASK, // type
        0, //flags
        NULL, // ucode_boot
        0, // ucode_boot_size
        D_80114930, // ucode
        0x1000, // ucode_size
        D_80157D30, // ucode_data
        0x800, // ucode_data_size
        NULL, // dram_stack
        0, // dram_stack_size
        NULL, // output_buff
        0, // output_buff_size
        NULL, // data_ptr
        sizeof(JpegTaskData), // data_size
        NULL, // yield_data_ptr
        0x200, // yield_data_size
    };
    // clang-format on

    JpegWork* workBuf = ctx->workBuf;
    s32 pad[2];

    workBuf->taskData.address = PHYSICAL_TO_VIRTUAL(&workBuf->unk_6C0);
    workBuf->taskData.mode = ctx->mode;
    workBuf->taskData.mbCount = 4;
    workBuf->taskData.qTableYPtr = PHYSICAL_TO_VIRTUAL(&workBuf->qTableY);
    workBuf->taskData.qTableUPtr = PHYSICAL_TO_VIRTUAL(&workBuf->qTableU);
    workBuf->taskData.qTableVPtr = PHYSICAL_TO_VIRTUAL(&workBuf->qTableV);

    sJpegTask.flags = 0;
    sJpegTask.ucode_boot = SysUcode_GetUCodeBoot();
    sJpegTask.ucode_boot_size = SysUcode_GetUCodeBootSize();
    sJpegTask.yield_data_ptr = &workBuf->yieldData;
    sJpegTask.data_ptr = &workBuf->taskData;

    ctx->scTask.next = NULL;
    ctx->scTask.flags = OS_SC_NEEDS_RSP;
    ctx->scTask.msgQ = &ctx->mq;
    ctx->scTask.msg = NULL;
    ctx->scTask.framebuffer = NULL;
    ctx->scTask.list.t = sJpegTask;

    osSendMesg(&gSchedContext.cmdQ, (OSMesg)&ctx->scTask, OS_MESG_BLOCK);
    Sched_SendEntryMsg(&gSchedContext); // osScKickEntryMsg
    osRecvMesg(&ctx->mq, NULL, OS_MESG_BLOCK);
}

void Jpeg_CopyToZbuffer(u16* src, u16* zbuffer, s32 x, s32 y) {
    u16* dst;
    s32 i;

    dst = zbuffer + (((y * SCREEN_WIDTH) + x) * 16);

    for (i = 0; i < 16; i++) {
        dst[0] = src[0];
        dst[1] = src[1];
        dst[2] = src[2];
        dst[3] = src[3];
        dst[4] = src[4];
        dst[5] = src[5];
        dst[6] = src[6];
        dst[7] = src[7];
        dst[8] = src[8];
        dst[9] = src[9];
        dst[10] = src[10];
        dst[11] = src[11];
        dst[12] = src[12];
        dst[13] = src[13];
        dst[14] = src[14];
        dst[15] = src[15];

        src += 16;
        dst += SCREEN_WIDTH;
    }
}

u16 Jpeg_GetU16(u8* ptr) {
    if (((u32)ptr & 1) == 0) { // if the address is aligned to 2
        return *(u16*)ptr;
    } else {
        return *(u16*)(ptr - 1) << 8 | (*(u16*)(ptr + 1) >> 8); // lhu crashes with unaligned addresses
    }
}

void Jpeg_ParseMarkers(u8* ptr, JpegContext* ctx) {
    u32 exit;

    exit = false;
    ctx->dqtCount = 0;
    ctx->dhtCount = 0;

    while (true) {
        if (exit) {
            break;
        }

        if (*ptr++ == 0xFF) {
            switch (*ptr++) {
                case 0:
                    break;
                case MARKER_SOI: {
                    osSyncPrintf("MARKER_SOI\n");
                    break;
                }
                case MARKER_APP0: {
                    osSyncPrintf("MARKER_APP0 %d\n", Jpeg_GetU16(ptr));
                    ptr += Jpeg_GetU16(ptr);
                    break;
                }
                case MARKER_APP1: {
                    osSyncPrintf("MARKER_APP1 %d\n", Jpeg_GetU16(ptr));
                    ptr += Jpeg_GetU16(ptr);
                    break;
                }
                case MARKER_APP2: {
                    osSyncPrintf("MARKER_APP2 %d\n", Jpeg_GetU16(ptr));
                    ptr += Jpeg_GetU16(ptr);
                    break;
                }
                case MARKER_DQT: {
                    osSyncPrintf("MARKER_DQT %d %d %02x\n", ctx->dqtCount, Jpeg_GetU16(ptr), ptr[2]);
                    ctx->dqtPtr[ctx->dqtCount++] = ptr + 2;
                    ptr += Jpeg_GetU16(ptr);
                    break;
                }
                case MARKER_DHT: {
                    osSyncPrintf("MARKER_DHT %d %d %02x\n", ctx->dhtCount, Jpeg_GetU16(ptr), ptr[2]);
                    ctx->dhtPtr[ctx->dhtCount++] = ptr + 2;
                    ptr += Jpeg_GetU16(ptr);
                    break;
                }
                case MARKER_DRI: {
                    osSyncPrintf("MARKER_DRI %d\n", Jpeg_GetU16(ptr));
                    ptr += Jpeg_GetU16(ptr);
                    break;
                }
                case MARKER_SOF: {
                    osSyncPrintf("MARKER_SOF   %d "
                                 "精度%02x " // accuracy
                                 "垂直%d "   // vertical
                                 "水平%d "   // horizontal
                                 "compo%02x "
                                 "(1:Y)%d (H0=2,V0=1(422) or 2(420))%02x (量子化テーブル)%02x "
                                 "(2:Cb)%d (H1=1,V1=1)%02x (量子化テーブル)%02x "
                                 "(3:Cr)%d (H2=1,V2=1)%02x (量子化テーブル)%02x\n",
                                 Jpeg_GetU16(ptr),
                                 ptr[2],                    // precision
                                 Jpeg_GetU16(ptr + 3),      // height
                                 Jpeg_GetU16(ptr + 5),      // width
                                 ptr[7],                    // component count
                                 ptr[8], ptr[9], ptr[10],   // Y
                                 ptr[11], ptr[12], ptr[13], // Cb
                                 ptr[14], ptr[15], ptr[16]  // Cr
                    );

                    if (ptr[9] == 0x21) // component Y : V0 == 1
                    {
                        ctx->mode = 0;
                    } else if (ptr[9] == 0x22) // component Y : V0 == 2
                    {
                        ctx->mode = 2;
                    }
                    ptr += Jpeg_GetU16(ptr);
                    break;
                }
                case MARKER_SOS: {
                    osSyncPrintf("MARKER_SOS %d\n", Jpeg_GetU16(ptr));
                    ptr += Jpeg_GetU16(ptr);
                    ctx->imageData = ptr;
                    break;
                }
                case MARKER_EOI: {
                    osSyncPrintf("MARKER_EOI\n");
                    exit = true;
                    break;
                }
                default: {
                    // Unknown marker
                    osSyncPrintf("マーカー不明 %02x\n", ptr[-1]);
                    ptr += Jpeg_GetU16(ptr);
                    break;
                }
            }
        }
    }
}

// the time diff isn't correct, workBuff->unk_6C0 is kept in a temp register instead of being stored in the stack and
// regalloc differences
#ifdef NON_MATCHING
s32 Jpeg_Decode(void* data, u16* zbuffer, JpegWork* workBuff, u32 workSize) {
    s32 y;
    s32 x;
    u32 j;
    u32 i;
    JpegContext ctx;             // 0x208
    JpegHuffmanTable hTables[4]; // 0xB8
    JpegDecoder decoder;         // 0x9C
    JpegDecoderState state;      // 0x88
    u16(*src)[0x180];
    OSTime diff; // 0x78
    OSTime time; // 0x70
    OSTime time2;

    time = osGetTime();
    if (workSize <
        sizeof(JpegWork)) { // (?) I guess MB_SIZE=0x180, PROC_OF_MBS=5 which means unk_6C0 is not a part of JpegWork
        __assert("worksize >= sizeof(JPEGWork) + MB_SIZE * (PROC_OF_MBS - 1)", "../z_jpeg.c", 527);
    }

    osCreateMesgQueue(&ctx.mq, &ctx.msg, 1);
    MsgEvent_SendNullTask();

    time2 = osGetTime();
    diff = time2 - time;
    if (1) {}
    // Wait for synchronization of fifo buffer
    osSyncPrintf("*** fifoバッファの同期待ち time = %6.3f ms ***\n", (f64)(OS_CYCLES_TO_USEC(diff) / 1000.0f));

    ctx.workBuf = workBuff;
    Jpeg_ParseMarkers(data, &ctx);

    time = osGetTime();
    diff = time - time2;
    if (1) {}
    // Check markers for each segment
    osSyncPrintf("*** 各セグメントのマーカーのチェック time = %6.3f ms ***\n",
                 (f64)(OS_CYCLES_TO_USEC(diff) / 1000.0f));

    switch (ctx.dqtCount) {
        case 1: {
            JpegUtils_ProcessQuantizationTable(ctx.dqtPtr[0], &workBuff->qTableY, 3);
            break;
        }
        case 2: {
            JpegUtils_ProcessQuantizationTable(ctx.dqtPtr[0], &workBuff->qTableY, 1);
            JpegUtils_ProcessQuantizationTable(ctx.dqtPtr[1], &workBuff->qTableU, 1);
            JpegUtils_ProcessQuantizationTable(ctx.dqtPtr[1], &workBuff->qTableV, 1);
            break;
        }
        case 3: {
            JpegUtils_ProcessQuantizationTable(ctx.dqtPtr[0], &workBuff->qTableY, 1);
            JpegUtils_ProcessQuantizationTable(ctx.dqtPtr[1], &workBuff->qTableU, 1);
            JpegUtils_ProcessQuantizationTable(ctx.dqtPtr[2], &workBuff->qTableV, 1);
            break;
        }
        default:
            return -1;
    }

    time2 = osGetTime();
    diff = time2 - time;
    if (1) {}
    // Create quantization table
    osSyncPrintf("*** 量子化テーブル作成 time = %6.3f ms ***\n", (f64)(OS_CYCLES_TO_USEC(diff) / 1000.0f));

    switch (ctx.dhtCount) {
        case 1: {
            if (JpegUtils_ProcessHuffmanTable(ctx.dhtPtr[0], &hTables[0], &workBuff->codesLengths, &workBuff->codes,
                                              4)) {
                osSyncPrintf("Error : Cant' make huffman table.\n");
            }
            break;
        }
        case 4: {
            if (JpegUtils_ProcessHuffmanTable(ctx.dhtPtr[0], &hTables[0], &workBuff->codesLengths, &workBuff->codes,
                                              1)) {
                osSyncPrintf("Error : Cant' make huffman table.\n");
            }
            if (JpegUtils_ProcessHuffmanTable(ctx.dhtPtr[1], &hTables[1], &workBuff->codesLengths, &workBuff->codes,
                                              1)) {
                osSyncPrintf("Error : Cant' make huffman table.\n");
            }
            if (JpegUtils_ProcessHuffmanTable(ctx.dhtPtr[2], &hTables[2], &workBuff->codesLengths, &workBuff->codes,
                                              1)) {
                osSyncPrintf("Error : Cant' make huffman table.\n");
            }
            if (JpegUtils_ProcessHuffmanTable(ctx.dhtPtr[3], &hTables[3], &workBuff->codesLengths, &workBuff->codes,
                                              1)) {
                osSyncPrintf("Error : Cant' make huffman table.\n");
            }
            break;
        }
        default:
            return -1;
    }

    time = osGetTime();
    diff = time - time2;
    if (1) {}
    // Huffman table creation
    osSyncPrintf("*** ハフマンテーブル作成 time = %6.3f ms ***\n", (f64)(OS_CYCLES_TO_USEC(diff) / 1000.0f));

    decoder.unk_05 = 2;
    decoder.hTablePtrs[0] = &hTables[0];
    decoder.hTablePtrs[1] = &hTables[1];
    decoder.hTablePtrs[2] = &hTables[2];
    decoder.hTablePtrs[3] = &hTables[3];
    if (1) {}
    decoder.unk_18 = 0;
    decoder.imageData = ctx.imageData;
    decoder.mode = ctx.mode;

    y = 0;
    x = 0;
    for (i = 0; i < 300; i += 4) {
        if (JpegDecoder_Decode(&decoder, &workBuff->unk_6C0, 4, i != 0, &state)) {
            osSyncPrintf(VT_FGCOL(RED));
            osSyncPrintf("Error : Can't decode jpeg\n");
            osSyncPrintf(VT_RST);
        } else {
            Jpeg_SendTask(&ctx);
            osInvalDCache(&workBuff->unk_6C0, sizeof(workBuff->unk_6C0[0]));

            src = &workBuff->unk_6C0;
            for (j = 0; j < ARRAY_COUNT(workBuff->unk_6C0); j++) {
                Jpeg_CopyToZbuffer(&src[j], zbuffer, x, y);
                x++;

                if (x >= 20) {
                    x = 0;
                    y++;
                }
            }
        }
    }

    time2 = osGetTime();
    diff = time2 - time;
    if (1) {}
    // Unfold & draw
    osSyncPrintf("*** 展開 & 描画 time = %6.3f ms ***\n", (f64)(OS_CYCLES_TO_USEC(diff) / 1000.0f));

    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_jpeg/Jpeg_Decode.s")
#endif
