#include <ultra64.h>
#include <global.h>
#include <vt.h>
#include <alloca.h>

void func_8080AF50(ChooseContext*, f32, f32, f32);
Gfx* func_8080AFD0(Gfx*, s32, s32, s32);
void func_80806DB0(GraphicsContext*, KanFont_unk3C88*, s16);

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080C330.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080C60C.s")

static s16 D_80812750[5] = {
    0x0024, 0x0024, 0x0024, 0x0024, 0x0018
};

static s16 D_80812818[4] = {
    0x001A, 0x000A, 0x000A, 0x000A
};

static s16 D_80812820[4] = {
    0x0020, 0x000C, 0x000C, 0x000C
};

static s16 D_80812828[4] = {
    0x0010, 0x000C, 0x000C, 0x000C
};

static s16 D_80812830[6] = {
    0x0040, 0x0054, 0x0068, 0x0274, 0x0278, 0x027C
};

static s16 D_8081283C[4] = {
    0x0040, 0x0054, 0x0068, 0x0278
};

static s16 D_80812844[4] = {
    0x0274, 0x0278
};

static s16 D_80812848[2] = {
    0x0274,0x0278
};

void func_8080C60C(ChooseContext* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    s16 i;
    s16 j;
    s16 tmp;
    s16 tmp2;
    s16 tmp3;
    s16 tmp4;
    s16 tmp5;

    this->allocVtx2 = Graph_Alloc(this->state.gfxCtx, 0x2880);

    for (i = 0; i < 0x288; i += 4) {
        this->allocVtx2[i+2].ob[0] = 0x12C;
        this->allocVtx2[i].ob[0] = this->allocVtx2[i+2].ob[0];
        this->allocVtx2[i+1].ob[0] = 
        this->allocVtx2[i+3].ob[0] = this->allocVtx2[i].ob[0] + 0x10;

        this->allocVtx2[i+1].ob[1] = 0;
        this->allocVtx2[i].ob[1] = this->allocVtx2[i+1].ob[1];
        this->allocVtx2[i+2].ob[1] = 
        this->allocVtx2[i+3].ob[1] = this->allocVtx2[i].ob[1] - 0x10;

        // 209
        this->allocVtx2[i].ob[2] = 
        this->allocVtx2[i+1].ob[2] = 
        this->allocVtx2[i+2].ob[2] = 
        this->allocVtx2[i+3].ob[2] = 0;
        // 214
        this->allocVtx2[i+3].flag = 0;
        this->allocVtx2[i].flag = 
        this->allocVtx2[i+1].flag = 
        this->allocVtx2[i+2].flag = this->allocVtx2[i+3].flag;
        // 219
        this->allocVtx2[i].tc[1] = 
        this->allocVtx2[i].tc[0] = 
        this->allocVtx2[i+1].tc[1] = 
        this->allocVtx2[i+2].tc[0] = 0;
        // 224
        this->allocVtx2[i+1].tc[0] = 
        this->allocVtx2[i+2].tc[1] = 
        this->allocVtx2[i+3].tc[0] = 
        this->allocVtx2[i+3].tc[1] = 0x200;
        // 229
        this->allocVtx2[i].cn[0] = 
        this->allocVtx2[i+1].cn[0] = 
        this->allocVtx2[i+2].cn[0] = 
        this->allocVtx2[i+3].cn[0] = 
        this->allocVtx2[i].cn[1] = 
        this->allocVtx2[i+1].cn[1] = 
        this->allocVtx2[i+2].cn[1] = 
        this->allocVtx2[i+3].cn[1] = 
        this->allocVtx2[i].cn[2] = 
        this->allocVtx2[i+1].cn[2] = 
        this->allocVtx2[i+2].cn[2] = 
        this->allocVtx2[i+3].cn[2] = 
        this->allocVtx2[i].cn[3] = 
        this->allocVtx2[i+1].cn[3] = 
        this->allocVtx2[i+2].cn[3] = 
        this->allocVtx2[i+3].cn[3] = 0xFF;
    }

    tmp = this->unk_1CAC0;
    this->allocVtx2[2].ob[0] = tmp;
    this->allocVtx2[0].ob[0] = tmp;
    this->allocVtx2[1].ob[0] = 
    this->allocVtx2[3].ob[0] = this->allocVtx2[0].ob[0] + 0x80;
    // 255
    this->allocVtx2[1].ob[1] = 0x48;
    this->allocVtx2[0].ob[1] = this->allocVtx2[1].ob[1];
    this->allocVtx2[2].ob[1] =
    this->allocVtx2[3].ob[1] = this->allocVtx2[0].ob[1] - 0x10;

    this->allocVtx2[3].tc[0] = 0x1000;
    this->allocVtx2[1].tc[0] = this->allocVtx2[3].tc[0];

    for (i = 0; i < 3; i++) {
        tmp = this->unk_1CAC0 - 6;
        for (j = 0; j < 5; j++) {
            this->allocVtx2[i + 2].ob[0] = tmp;
            this->allocVtx2[i].ob[0] = this->allocVtx2[i + 2].ob[0];
            
            this->allocVtx2[i+1].ob[0] = 
            this->allocVtx2[i+3].ob[0] = D_80812750[j] + this->allocVtx2[i].ob[0];
            
            this->allocVtx2[i].ob[1] = 
            this->allocVtx2[i+1].ob[1] = this->unk_1CA4A[i] + 0x2C;

            this->allocVtx2[i+2].ob[1] = 
            this->allocVtx2[i+3].ob[1] = this->allocVtx2[i].ob[1] - 0x38;

            this->allocVtx2[i+1].tc[0] = 
            this->allocVtx2[i+3].tc[0] = (D_80812750[j] * 0x200000) >> 0x10;

            this->allocVtx2[i+3].tc[1] = 0x700;
            this->allocVtx2[i+2].tc[1] = this->allocVtx2[i+3].tc[1];
            tmp += D_80812750[j];
        }
    }

    tmp = this->unk_1CAC0 - 6;
    tmp3 = 0x2C;
    for (i = 0; i < 3; i++) {
        this->allocVtx2[i+2].ob[0] = tmp;
        this->allocVtx2[i].ob[0] = this->allocVtx2[i+2].ob[0];
        this->allocVtx2[i+3].ob[0] = this->allocVtx2[i].ob[0] + 0x40;
        // 322
        this->allocVtx2[i].ob[1] = 
        this->allocVtx2[i+1].ob[1] = this->unk_1CA52[i] + tmp3;

        this->allocVtx2[i+2].ob[1] = 
        this->allocVtx2[i+3].ob[1] = this->allocVtx2[i].ob[1] - 0x10;
        // 329
        this->allocVtx2[i+3].tc[0] = 0x800;
        this->allocVtx2[i+1].tc[0] = this->allocVtx2[i+3].tc[0];

        this->allocVtx2[i+6].ob[0] = tmp + 0x40;
        this->allocVtx2[i+4].ob[0] = tmp + 0x40;

        this->allocVtx2[i+5].ob[0] = 
        this->allocVtx2[i+7].ob[0] = this->allocVtx2[i+4].ob[0] + 0x6C;
        // 338
        this->allocVtx2[i+4].ob[1] = 
        this->allocVtx2[i+5].ob[1] = this->unk_1CA52[i] + tmp3;

        this->allocVtx2[i+6].ob[1] = 
        this->allocVtx2[i+7].ob[1] = this->allocVtx2[i+4].ob[1] - 0x10;

        this->allocVtx2[i+7].tc[0] = 0xD80;
        this->allocVtx2[i+5].tc[0] = this->allocVtx2[i+7].tc[0];

        // 348
        if ((this->fileSelectStateIdx == 0xF) && (this->unk_1CA5E == i)) {
            tmp2 = this->unk_1CA4A[i] + 0x2C;
        } else if (((this->fileSelectStateIdx == 0x10) ||
                  (this->fileSelectStateIdx == 0x11)) && (this->unk_1CA5E == i)) {
            tmp2 = this->unk_1CA52[i] + tmp3;
        } else {
            tmp2 = this->unk_1CA52[i] + (this->unk_1CA4A[i] + tmp3);
        }

        // 372
        this->allocVtx2[i+10].ob[0] = tmp + 0xA8;
        this->allocVtx2[i+8].ob[0] = tmp + 0xA8;

        this->allocVtx2[i+9].ob[0] = 
        this->allocVtx2[i+11].ob[0] = this->allocVtx2[i+8].ob[0] + 0x2C;

        this->allocVtx2[i+9].ob[1] = tmp2;
        this->allocVtx2[i+8].ob[1] = this->allocVtx2[i+9].ob[1];

        this->allocVtx2[i+10].ob[1] = 
        this->allocVtx2[i+11].ob[1] = this->allocVtx2[i+8].ob[1] - 0x10;

        // 387
        this->allocVtx2[i+11].tc[0] = 0x580;
        this->allocVtx2[i+9].tc[0] = this->allocVtx2[i+11].tc[0];

        this->allocVtx2[i+14].ob[0] = tmp + 0x34;
        this->allocVtx2[i+12].ob[0] = tmp + 0x34;

        this->allocVtx2[i+13].ob[0] = 
        this->allocVtx2[i+15].ob[0] = this->allocVtx2[i+12].ob[0] + 0x18;

        // 396
        this->allocVtx2[i+12].ob[1] = 
        this->allocVtx2[i+13].ob[1] = this->unk_1CA52[i] + tmp3;

        this->allocVtx2[i+14].ob[1] = 
        this->allocVtx2[i+15].ob[1] = this->allocVtx2[i+12].ob[1] - 0x10;

        // 403
        this->allocVtx2[i+15].tc[0] = 0x300;
        this->allocVtx2[i+13].tc[0] = this->allocVtx2[i+15].tc[0];

        this->allocVtx2[i+18].ob[0] = tmp + 0x9C;
        this->allocVtx2[i+16].ob[0] = tmp + 0x9C;

        // 408
        this->allocVtx2[i+17].ob[0] = 
        this->allocVtx2[i+19].ob[0] = this->allocVtx2[i+16].ob[0] + 0x18;

        this->allocVtx2[i+16].ob[1] = 
        this->allocVtx2[i+17].ob[1] = this->unk_1CA52[i] + tmp3;

        this->allocVtx2[i+18].ob[1] = 
        this->allocVtx2[i+19].ob[1] = this->allocVtx2[i+16].ob[1] - 0x10;

        // 419
        this->allocVtx2[i+19].tc[0] = 0x300;
        this->allocVtx2[i+17].tc[0] = this->allocVtx2[i+19].tc[0];

        tmp3 -= 0x10;
    }

    tmp2 = 0x2C;
    for (i = 0; i < 3; i++) {
        if ((((u8*)this->sram.read_buff)[0x1C] == 'Z') ||
            (((u8*)this->sram.read_buff)[0x1D] == 'E') ||
            (((u8*)this->sram.read_buff)[0x1E] == 'L') ||
            (((u8*)this->sram.read_buff)[0x1F] == 'D') ||
            (((u8*)this->sram.read_buff)[0x20] == 'A') ||
            (((u8*)this->sram.read_buff)[0x21] == 'Z')) {

            // c18
            if ((this->fileSelectStateIdx == 0xF) && (this->unk_1CA5E == i)) {
                tmp = this->unk_1CA4A[i] + 0x2C;
            } else if (((this->fileSelectStateIdx == 0x10) || 
                        (this->fileSelectStateIdx == 0x11)) &&
                        (this->unk_1CA5E == i)) {
                            tmp = this->unk_1CA52[i] + tmp2;
            } else {
                tmp = (this->unk_1CA4A[i] + tmp2) + this->unk_1CA52[i];
            }

            // 468
            tmp4 = this->unk_1CAC0 - WREG(39);
            for (j = 0; j < 8; j++) {
                this->allocVtx2[j].ob[0] = 
                this->allocVtx2[j+2].ob[0] = WREG(41) + tmp4 + 0x40;

                this->allocVtx2[j+1].ob[0] = 
                this->allocVtx2[j+3].ob[0] = this->allocVtx2[j].ob[0] + WREG(42);

                // 485
                this->allocVtx2[j+1].ob[1] = (tmp4 + 2) - 3;
                this->allocVtx2[j].ob[1] = (tmp4 + 2) - 3;
                this->allocVtx2[j+2].ob[1] = 
                this->allocVtx2[j+3].ob[1] = this->allocVtx2[j].ob[1] - WREG(43);

                tmp4 += WREG(40);
            }

            tmp -= 0x16;
            tmp5 = this->unk_1CAC0 - 0xE;
            for (j = 0; j < 4; j++) {
                this->allocVtx2[j+2].ob[0] = tmp5;
                this->allocVtx2[j].ob[0] = this->allocVtx2[j+2].ob[0];

                this->allocVtx2[j+1].ob[0] = 
                this->allocVtx2[j+3].ob[0] = D_80812820[j] + this->allocVtx2[j].ob[0];

                // 514
                this->allocVtx2[j+1].ob[1] = tmp;
                this->allocVtx2[j].ob[1] = this->allocVtx2[j+1].ob[1];

                this->allocVtx2[j+2].ob[1] = 
                this->allocVtx2[j+3].ob[1] = D_80812828[j] + this->allocVtx2[j].ob[1];

                tmp5 += D_80812818[j];
            }

            // 527
            this->allocVtx2[j+12].tc[0] = 0x400;
            this->allocVtx2[j+14].tc[0] = this->allocVtx2[j+12].tc[0];

            tmp5 = this->unk_1CAC0 + 0x3F;
            tmp4 = tmp4 + 4;
            for (j = 0; j < 20; j++) {
                this->allocVtx2[j+2].ob[0] = tmp5;
                this->allocVtx2[j].ob[0] = this->allocVtx2[j+2].ob[0];

                this->allocVtx2[j+1].ob[0] = 
                this->allocVtx2[j+3].ob[0] = this->allocVtx2[j].ob[0] + 0xA;

                // 545
                this->allocVtx2[j+1].ob[1] = tmp4;
                this->allocVtx2[j].ob[1] = this->allocVtx2[j+1].ob[1];

                this->allocVtx2[j+2].ob[1] = 
                this->allocVtx2[j+3].ob[1] = this->allocVtx2[j].ob[1] - 0xA;

                if (j == 9) {
                    tmp4 -= 8;
                    tmp5 = this->unk_1CAC0 + 0x36;
                }
                tmp5 += 9;
            }

            tmp5 = this->unk_1CAC0 + 4;
            for (j = 0; j < 10; j++) {
                this->allocVtx2[j+2].ob[0] = tmp5;
                this->allocVtx2[j].ob[0] = this->allocVtx2[j+2].ob[0];
                this->allocVtx2[j+1].ob[0] = 
                this->allocVtx2[j+3].ob[0] = this->allocVtx2[j].ob[0];

                // 580
                this->allocVtx2[j+1].ob[1] = tmp4 - 0xA;
                this->allocVtx2[j].ob[1] = this->allocVtx2[j+1].ob[1];

                this->allocVtx2[j+2].ob[1] = 
                this->allocVtx2[j+3].ob[1] = this->allocVtx2[j].ob[1] - 0x10;

                tmp5 += 0x10;
            }
        }
        tmp2 -= WREG(38);
    }

    tmp2 = this->unk_1CAC0 - 6;
    tmp = -0xC;
    for (i = 0; i < 2; i++) {
        this->allocVtx2[j+2].ob[0] = tmp2;
        this->allocVtx2[j].ob[0] = this->allocVtx2[j+2].ob[0];

        this->allocVtx2[j+1].ob[0] = 
        this->allocVtx2[j+3].ob[0] = this->allocVtx2[j].ob[0] + 0x40;

        // 637
        this->allocVtx2[j+1].ob[1] = this->unk_1CA58[i] + tmp;
        this->allocVtx2[j].ob[1] = this->unk_1CA58[i] + tmp;

        this->allocVtx2[j+2].ob[1] = 
        this->allocVtx2[j+3].ob[1] = this->allocVtx2[j].ob[1] - 0x10;

        this->allocVtx2[j+3].tc[0] = 0x800;
        this->allocVtx2[j+1].tc[0] = this->allocVtx2[j+3].tc[0];

        tmp -= 0x10;
    }

    this->allocVtx2[2].ob[0] = tmp2;
    this->allocVtx2[0].ob[0] = this->allocVtx2[2].ob[0];

    this->allocVtx2[0].ob[0] = 
    this->allocVtx2[3].ob[0] = this->allocVtx2[0].ob[0] + 0x40;

    this->allocVtx2[1].ob[1] = this->unk_1CA5C - 0x34;
    this->allocVtx2[0].ob[1] = this->unk_1CA5C - 0x34;

    this->allocVtx2[2].ob[1] = 
    this->allocVtx2[3].ob[1] = this->allocVtx2[0].ob[1] - 0x10;

    this->allocVtx2[3].tc[0] = 0x800;
    this->allocVtx2[1].tc[0] = this->allocVtx2[3].tc[0];

    // 672
    if ((this->menuIdx == 1) && (this->fileSelectStateIdx < 2) ||
        (this->menuIdx == 2) && (this->openFileStateIdx == 3)) {
            if ((this->menuIdx == 1) && ((this->fileSelectStateIdx == 4) || (this->fileSelectStateIdx == 7) || (this->fileSelectStateIdx == 0x15))) {
                tmp = D_8081283C[this->unk_1CA38];
            } else if ((this->fileSelectStateIdx == 0x18) && (this->fileSelectStateIdx == 0xC)) {
                    tmp = D_80812844[this->unk_1CA38];
            } else {
                tmp = D_80812830[this->unk_1CA38];
            }
/*            } else {
                tmp = D_80812848[this->unk_1CA3A];
            }*/
            this->allocVtx2[0].ob[0] = 
            this->allocVtx2[2].ob[0] = this->unk_1CAC0 - 0xA;

            this->allocVtx2[1].ob[0] = 
            this->allocVtx2[3].ob[0] = this->allocVtx2[0].ob[0] + 0x48;

            this->allocVtx2[0].ob[1] = 
            this->allocVtx2[1].ob[1] = this->allocVtx2[tmp].ob[1] + 4;

            this->allocVtx2[2].ob[1] = 
            this->allocVtx2[3].ob[1] = this->allocVtx2[0].ob[1] - 0x18;

            this->allocVtx2[3].tc[0] = 0x900;
            this->allocVtx2[1].tc[0] = this->allocVtx2[3].tc[0];
            this->allocVtx2[3].tc[1] = 0x300;
            this->allocVtx2[2].tc[1] = this->allocVtx2[3].tc[1];
    }

    this->allocVtx2[4].ob[0] = 
    this->allocVtx2[6].ob[0] = this->unk_1CAC0 + 0x3A;

    this->allocVtx2[5].ob[0] = 
    this->allocVtx2[7].ob[0] = this->allocVtx2[4].ob[0] + 0x80;

    this->allocVtx2[5].ob[0] = 
    this->allocVtx2[7].ob[0] = this->allocVtx2[4].ob[0] + 0x80;

    this->allocVtx2[4].ob[1] = 
    this->allocVtx2[5].ob[1] = this->allocVtx2[D_80812830[this->unk_1CA62]].ob[1];

    this->allocVtx2[6].ob[1] = 
    this->allocVtx2[7].ob[1] = this->allocVtx2[4].ob[1] - 0x10;

    this->allocVtx2[7].tc[0] = 0x1000;
    this->allocVtx2[5].tc[0] = this->allocVtx2[7].tc[0];
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080D8CC.s")
#if 0
static u16 D_8081284C[3] = {
    0x007C, 0x0124, 0x01CC
};

static s32 D_80812854[9] = {
    0x0101C880, 0x0101CC80, 0x0101D080, 
    0x01000180, 0x01000280, 0x01000380,
    0x01000480, 0x01000580, 0x01000680
};

static s16 D_80812878[9] = {
    0x00FF, 0x00FF, 0x00FF, 0x0000, 0x00FF, 
    0x0000, 0x00FF, 0x00C8, 0x00C8
};

static s16 D_8081288C[9] = {
    0x00FF, 0x00FF, 0x00FF, 0x00FF, 0x003C, 
    0x0064, 0x0082, 0x0032, 0x00C8
};

static s16 D_808128A0[9] = {
    0x00FF, 0x00FF, 0x00FF, 0x0000, 0x0000, 
    0x00FF, 0x0000, 0x00FF, 0x0000
};

static s16 D_808128B4[9] = {
    0x0012, 0x0013, 0x0014, 0x0000, 0x0001, 
    0x0002, 0x0003, 0x0004, 0x0005
};

static s16 D_808128C8[2][3] = {
    {0x00FF, 0x00FF, 0x00FF},
    {0x0064, 0x0064, 0x0064}
};

static s32 D_808128D4[2] = {
    0x02000400, 0x02000900
};

static s16 D_808128DC[2][3] = {
    {0x00FF, 0x0046, 0x0032}, 
    {0x00C8, 0x0000, 0x0000}
};

static s16 D_808128E8[2][3] = {
    {0x0032, 0x0028, 0x003C},
    {0x00FF, 0x00FF, 0x00FF}
};

void func_8080D8CC(ChooseContext* this, s16 arg1, s16 arg2) {
    s16 i;
    s16 j;
    s16 tmp;
    s16 tmp2;
    s16 spD8[3];
    KanFont* kanfont;
    Gfx* dispRefs[5];
    GraphicsContext* gfxCtx;

    gfxCtx = this->state.gfxCtx;
    kanfont = &this->kanfont;
    Graph_OpenDisps(dispRefs, gfxCtx, "../z_file_choose.c", 0x6AD);

    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetCombineLERP(gfxCtx->polyOpa.p++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0);

    if (this->unk_1CA80[arg1]) {
        gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx2[D_8081284C[arg1]], 32, 0);
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, D_808128C8[arg2][0], D_808128C8[arg2][1], D_808128C8[arg2][2], this->unk_1CA80[arg1]);

        for (i = 0, j = 0; i < 32; i += 4, j++) {
            func_80806DB0(this->state.gfxCtx, &kanfont->unk_3C88[this->unk_1C9FC[arg1].unk_0[j]], i);
        }
    }

    if ((arg1 == this->unk_1CA46) || (arg1 == this->unk_1CA5E)) {
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetCombineLERP(gfxCtx->polyOpa.p++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, this->unk_1CA8C[arg1]);
        gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx2[D_8081284C[arg1] + 0x24], 12, 0);

        func_8080B394(this->unk_1C9F6[arg1], &spD8[0], &spD8[1], &spD8[2]);

        for (i = 0, j = 0; i < 3; i++, j += 4) {
            func_80806DB0(this->state.gfxCtx, &kanfont->unk_3C88[spD8[j]], i);
        }

        gDPPipeSync(gfxCtx->polyOpa.p++);
        
        tmp = (this->unk_1CA2E[arg1] == 0) ? 0 : 1;

        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetCombineLERP(gfxCtx->polyOpa.p++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, D_808128DC[tmp][0], D_808128DC[tmp][1], D_808128DC[tmp][2], this->unk_1CA8C[arg1]);
        gDPSetEnvColor(gfxCtx->polyOpa.p++, D_808128E8[tmp][0], D_808128E8[tmp][1], D_808128E8[tmp][2], 0xFF);

        tmp2 = 0;
        if (this->unk_1CA14 < 0)
            tmp2 = this->unk_1CA14 + 0xF;
        i = 0;
        j = 0;

        while (i < (tmp2 >> 4)) {
            gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx2[D_8081284C[arg1] + j + 0x30], 4, 0);
            gfxCtx->polyOpa.p = func_8080AFD0(gfxCtx->polyOpa.p, D_808128D4[tmp], 0x10, 0x10);
            i += 1;
            j += 4;
        }

        gDPPipeSync(gfxCtx->polyOpa.p++);
        for (i = 0, j = 0; i < 9; i++, j += 4) {
            if (gBitFlags[D_808128B4[i]] & this->unk_1CA1C[i]) {
                gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx2[D_8081284C[arg1] + j + 0x80], 4, 0);
                gDPPipeSync(gfxCtx->polyOpa.p++);
                gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, D_80812878[i], D_8081288C[i], D_808128A0[i], this->unk_1CA8C[arg1]);
                gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);

                if (i < 3) {
                    gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_80812854[i], 
                        G_IM_FMT_RGBA, G_IM_SIZ_32b, 0x10, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    
                    /*
                    gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 1, 0xFFFFFFFF);
                    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
                    gDPLoadSync(gfxCtx->polyOpa.p++);
                    gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 255, 256);
                    gDPPipeSync(gfxCtx->polyOpa.p++);
                    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 4, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
                    gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C);
                    */
                    gSP1Quadrangle(gfxCtx->polyOpa.p++, 0, 2, 3, 1, 0);
                } else {
                    gfxCtx->polyOpa.p = func_8080AFD0(gfxCtx->polyOpa.p, D_80812854[i], 0x10, 0x10);
                }
            }
        }
    }
    Graph_CloseDisps(dispRefs, this->state.gfxCtx, "../z_file_choose.c", 0x705);
}
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080E074.s")
// Good luck Fig
#if 0
static s16 D_80812750[5] = {
    0x0024, 0x0024, 0x0024, 0x0024, 0x0018
};

static s16 D_8081275C[2][3] = {
    {0x0064, 0x0096, 0x00FF}, 
    {0x0064, 0x0064, 0x0064}
};

static s32 D_808128F4[5] = {
    0x01016380, 0x01017340, 0x01018300, 0x010192C0, 0x0101A280
};

static s32 D_80812908[3][9] = {
    {0x0102AC80, 0x0102B480, 0x01024C80, 0x01025480, 0x01025C80, 0x01026480, 0x0102DC80, 0x0102E480, 0x0102EC80}, 
    {0x0102BC80, 0x0102C480, 0x01026C80, 0x01027480, 0x01027C80, 0x01028480, 0x0102F480, 0x0102FC80, 0x01030480}, 
    {0x0102CC80, 0x0102D480, 0x01028C80, 0x01029480, 0x01029C80, 0x0102A480, 0x01030C80, 0x01031480, 0x01031C80}
};

static s32 D_80812974[3][5] = {
    {0x0101D480, 0x0101DC80, 0x0101E480, 0x0101EC80, 0x0101F480}, 
    {0x0101FC80, 0x01020480, 0x01020C80, 0x01021480, 0x01021C80}, 
    {0x01022480, 0x01022C80, 0x01023480, 0x01023C80, 0x01024480}
};

static s32 D_808129B0[3][3] = {
    {0x01037200, 0x01037A00, 0x01038200}, 
    {0x01038A00, 0x01039200, 0x01039A00},
    {0x0103A200, 0x0103AA00, 0x0103B200}
};

static s32 D_808129D4[3][4] = {
    {0x01035A00, 0x0103D200, 0x0103BA00, 0x0103EA00}, 
    {0x01036200, 0x0103DA00, 0x0103C200, 0x0103F200},
    {0x01036A00, 0x0103E200, 0x0103CA00, 0x0103FA00}
};

static s32 D_80812A04[3] = {
    0x01045E00, 0x01046600, 0x01045E00
};

extern Gfx D_01000000[];
extern Gfx D_01015600[];
extern Gfx D_0101AD00[];
extern Gfx D_0101B680[];

void func_8080D8CC(ChooseContext*, s16, s16);

void func_8080E074(ChooseContext* this) {
    GraphicsContext* gfxCtx;
    s16 i;
    s16 j;
    s16 x;
    s16 vtx_cnt = 0;
    s32 tmp;
    s16 tmp2;
    s32 tmp3;
    s32 tmp4;
    s32 tmp5;
    s32 tmp6;
    s16 unk_loop;
    s16 unk_loop2;
    s16 tmp10;
    Gfx* dispRefs[4];

    gfxCtx = this->state.gfxCtx;
    Graph_OpenDisps(dispRefs, this->state.gfxCtx, "../z_file_choose.c", 1940);

    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetCombineLERP(gfxCtx->polyOpa.p++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, this->colorAlpha[0]);
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);
    gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx2[vtx_cnt++], 4, 0);

    gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_80812908[gSaveContext.language][this->unk_1CA64], 
                        G_IM_FMT_IA, G_IM_SIZ_8b, 0x80, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    
    /*
    gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_80812908[gSaveContext.language][this->unk_1CA64]);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gfxCtx->polyOpa.p++);
    gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 1023, 128);
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x01FC, 0x003C);
    */

    gSP1Quadrangle(gfxCtx->polyOpa.p++, 0, 2, 3, 1, 0);
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, this->colorAlpha[1]);

    gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_80812908[gSaveContext.language][this->unk_1CA66], 
                        G_IM_FMT_IA,G_IM_SIZ_8b, 0x80, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    /*
    gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_80812908[gSaveContext.language][this->unk_1CA66]);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gfxCtx->polyOpa.p++);
    gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 1023, 128);
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x01FC, 0x003C);
    */

    gSP1Quadrangle(gfxCtx->polyOpa.p++, 0, 2, 3, 1, 0);
    gDPPipeSync(gfxCtx->polyOpa.p++);

    for (i = 0; i < 3; i++) {
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, this->rgb[0], this->rgb[1], this->rgb[2], this->unk_1CA8C[i]);
        gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx2[vtx_cnt], 20, 0);
        vtx_cnt += 20;

        for (j = 0, unk_loop2 = 0; j < 5; j++, unk_loop2 += 4) {
            gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_808128F4[j], G_IM_FMT_IA, G_IM_SIZ_16b,
                    D_80812750[j], 0x38, 0, G_TX_NOMIRROR | G_TX_WRAP,
                    G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
            
            gSP1Quadrangle(gfxCtx->polyOpa.p++, unk_loop2, unk_loop2 + 2, unk_loop2 + 3, unk_loop2 + 1, 0);
        }
    }

    for (i = 0; i < 3; i++) {
        gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx2[vtx_cnt], 20, 0);
        vtx_cnt += 20;

        tmp = ((this->unk_1C9F4 == this->unk_1CA28[i]) || this->unk_1CA7A[i] == 0) ? 0 : 1;

        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, D_8081275C[tmp][0], D_8081275C[tmp][1], D_8081275C[tmp][2], this->unk_1CA74[i]);
        
        gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_808129B0[gSaveContext.language][i], 
                            G_IM_FMT_IA,G_IM_SIZ_16b, 0x40, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        /*
        gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_808129B0[gSaveContext.language][i]);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPLoadSync(gfxCtx->polyOpa.p++);
        gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 1023, 128);
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x00FC, 0x003C);
        */

        gSP1Quadrangle(gfxCtx->polyOpa.p++, 0, 2, 3, 1, 0);
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, D_8081275C[tmp][0], D_8081275C[tmp][1], D_8081275C[tmp][2], this->unk_1CA7A[i]);
        
        gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_01015600, 
                            G_IM_FMT_IA,G_IM_SIZ_16b, 0x6C, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        
        /*
        gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, 0x01015600);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPLoadSync(gfxCtx->polyOpa.p++);
        gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 1727, 76);
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 27, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x01AC, 0x003C);
        */
        
        gSP1Quadrangle(gfxCtx->polyOpa.p++, 4, 6, 7, 5, 0);

        if (this->unk_1CA28[i] != 0) {
            gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, D_8081275C[tmp][0], D_8081275C[tmp][1], D_8081275C[tmp][2], this->unk_1CA80[i]);
            
            gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_0101AD00, 
                            G_IM_FMT_IA, G_IM_SIZ_16b, 0x2C, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        
            /*
            gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, 0x0101AD00);
            gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
            gDPLoadSync(gfxCtx->polyOpa.p++);
            gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 703, 187);
            gDPPipeSync(gfxCtx->polyOpa.p++);
            gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 11, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
            gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x00AC, 0x003C);
            */

            gSP1Quadrangle(gfxCtx->polyOpa.p++, 8, 10, 11, 9, 0);
        }

        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, D_8081275C[tmp][0], D_8081275C[tmp][1], D_8081275C[tmp][2], this->unk_1CA86[i]);

        gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_01000000, 
                            G_IM_FMT_IA, G_IM_SIZ_8b, 0x18, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        /*
        gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, 0x01000000);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPLoadSync(gfxCtx->polyOpa.p++);
        gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 191, 683);
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_8b, 3, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x005C, 0x003C);
        */

        gSP1Quadrangle(gfxCtx->polyOpa.p++, 12, 14, 15, 13, 0);

        if (this->unk_1CA28[i] != 0) {
            gSP1Quadrangle(gfxCtx->polyOpa.p++, 16, 18, 19, 17, 0);
        }
    }

    for (i = 0; i < 3; i++) {
        tmp2 = ((this->unk_1C9F4 == this->unk_1CA28[i]) || (this->unk_1CA7A[i] == 0)) ? 0 : 1;
        func_8080D8CC(this, i, tmp2);
    }

    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetCombineLERP(gfxCtx->polyOpa.p++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);

    gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx2[0x274], 20, 0);

    for (i = 0, unk_loop2 = 0; i < 2; i++, unk_loop2 += 0x4) {
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, this->rgb[0], this->rgb[1], this->rgb[2], this->unk_1CA92[i]);

        gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_808129D4[gSaveContext.language][i], 
                            G_IM_FMT_IA, G_IM_SIZ_16b, 0x40, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        /*
        gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_808129D4[gSaveContext.language][i]);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPLoadSync(gfxCtx->polyOpa.p++);
        gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 1023, 128);
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x00FC, 0x003C);
        */

        gSP1Quadrangle(gfxCtx->polyOpa.p++, unk_loop2, unk_loop2 + 2, unk_loop2 + 3, unk_loop2 + 1, 0);
    }

    gDPPipeSync(gfxCtx->polyOpa.p++);

    // addr: 2ba8
    for (i = 0, unk_loop2 = 0; i < 2; i++, unk_loop2 += 0x4) {
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, this->rgb[0], this->rgb[1], this->rgb[2], this->unk_1CA96[i]);

        gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_808129D4[gSaveContext.language][this->unk_1CAAE[i]], 
                            G_IM_FMT_IA, G_IM_SIZ_16b, 0x40, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        /*
        gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_808129D4[gSaveContext.language][this->unk_1CAAE[i]]);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPLoadSync(gfxCtx->polyOpa.p++);
        gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 1023, 128);
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x00FC, 0x003C);
        */

        gSP1Quadrangle(gfxCtx->polyOpa.p++, unk_loop2, unk_loop2 + 2, unk_loop2 + 3, unk_loop2 + 1, 0);
    }

    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, this->rgb[0], this->rgb[1], this->rgb[2], this->unk_1CA9A);

    gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_80812A04[gSaveContext.language], 
                            G_IM_FMT_IA, G_IM_SIZ_16b, 0x40, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    /*
    gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_80812A04[gSaveContext.language]);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gfxCtx->polyOpa.p++);
    gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 1023, 128);
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x00FC, 0x003C);
    */

    gSP1Quadrangle(gfxCtx->polyOpa.p++, 8, 10, 11, 9, 0);

    if ((this->menuIdx == 1 && 
            ((this->fileSelectStateIdx == 2)  ||
             (this->fileSelectStateIdx == 4)  ||
             (this->fileSelectStateIdx == 7)  ||
             (this->fileSelectStateIdx == 12) ||
             (this->fileSelectStateIdx == 21) ||
             (this->fileSelectStateIdx == 24)))
        ||
        (this->menuIdx == 2 && this->openFileStateIdx == 3)) {

            gDPPipeSync(gfxCtx->polyOpa.p++);
            gDPSetCombineLERP(gfxCtx->polyOpa.p++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0);
            gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, this->unk_1CAA2[0], this->unk_1CAA2[1], this->unk_1CAA6[0], this->unk_1CAA6[1]);

            gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_0101B680, 
                            G_IM_FMT_I, G_IM_SIZ_8b, 0x48, 0x18, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

            /*
            gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_I, G_IM_SIZ_16b, 1, 0x0101B680);
            gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
            gDPLoadSync(gfxCtx->polyOpa.p++);
            gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 863, 228);
            gDPPipeSync(gfxCtx->polyOpa.p++);
            gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_I, G_IM_SIZ_8b, 9, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
            gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x011C, 0x005C);
            */

            gSP1Quadrangle(gfxCtx->polyOpa.p++, 12, 14, 15, 13, 0);
    }

    if (this->decisionAlphaIdx >= 0) {
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetCombineLERP(gfxCtx->polyOpa.p++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, this->unk_1CAA0);
        gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);

        gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_80812974[gSaveContext.language][this->decisionAlphaIdx], 
                            G_IM_FMT_IA, G_IM_SIZ_8b, 0x80, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        /*
        gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_80812974[gSaveContext.language][this->decisionAlphaIdx]);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPLoadSync(gfxCtx->polyOpa.p++);
        gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 1023, 128);
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x01FC, 0x003C);
        */

        gSP1Quadrangle(gfxCtx->polyOpa.p++, 16, 18, 19, 17, 0);
    }

    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetCombineMode(gfxCtx->polyOpa.p++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);
    Graph_CloseDisps(dispRefs, this->state.gfxCtx, "../z_file_choose.c", 2198);
}
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080F560.s")
#if 0
extern Gfx D_01046F00[];
extern Gfx D_01047118[];
extern Gfx D_01047328[];
void func_8080F560(ChooseContext* this) {
    GraphicsContext* gfxCtx;
    f32 temp_f10;
    f32 temp_f2;
    f32 tmp_reg;
    f32 tmp2;
    Gfx* dispRefs[4];

    gfxCtx = &this->state.gfxCtx;
    Graph_OpenDisps(dispRefs, this->state.gfxCtx, "../z_file_choose.c", 0x8AA);
    gDPPipeSync(gfxCtx->polyOpa.p++);

    temp_f10 = (1000.0f * Math_Coss(ZREG(11))) - (Math_Sins(ZREG(11)) * 1000.0f);
    tmp_reg = ZREG(13);
    temp_f2 = (1000.0f * Math_Sins(ZREG(11))) + (Math_Coss(ZREG(11)) * 1000.0f);
    func_8080AF50(this, temp_f10, tmp_reg, 1000.0f);
    SkyboxDraw_Draw(&this->skybox, this->state.gfxCtx, 1, this->kankyo.unk_13, temp_f10, tmp_reg, temp_f2);
    
    gDPSetTextureLUT(gfxCtx->polyOpa.p++, G_TT_NONE);
    
    ZREG(11) += ZREG(10);
    func_8006FC88(1, &this->kankyo, &this->skybox);

    gDPPipeSync(gfxCtx->polyOpa.p++);

    func_800949A8(this->state.gfxCtx);
    func_8080AF50(this, 0.0f, 0.0f, 64.0f);
    func_8080C330(this);
    func_8080C60C(this);

    tmp2 = 100.0f;
    if ((this->fileSelectStateIdx != 0x21) &&
        (this->fileSelectStateIdx != 0x22)) {
            gDPPipeSync(gfxCtx->polyOpa.p++);
            gDPSetCombineMode(gfxCtx->polyOpa.p++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
            gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, this->rgb[0], this->rgb[1], this->rgb[2], this->colorAlpha2);
            gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);

            Matrix_Translate(0.0f, 0.0f, -93.5999984741f, MTXMODE_NEW);
            Matrix_Scale(0.77999997139f, 0.77999997139f, 0.77999997139f, MTXMODE_APPLY);
            if (this->rotX != 0.0f) {
                Matrix_RotateX(this->rotX / tmp2, 1);
            }

            gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(this->state.gfxCtx, "../z_file_choose.c", 0x8EA), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            
            gSPVertex(gfxCtx->polyOpa.p++, this->allocVtx1, 32, 0);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_01046F00);
            gSPVertex(gfxCtx->polyOpa.p++, this->allocVtx1 + 0x20, 32, 0);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_01047118);
            gSPVertex(gfxCtx->polyOpa.p++, this->allocVtx1 + 0x40, 16, 0);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_01047328);

            gDPPipeSync(gfxCtx->polyOpa.p++);

            func_8080E074(this);
    }

    if ((this->fileSelectStateIdx >= 0x20) &&
        (this->fileSelectStateIdx < 0x24)) {
            gDPPipeSync(gfxCtx->polyOpa.p++);
            gDPSetCombineMode(gfxCtx->polyOpa.p++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
            gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, this->rgb[0], this->rgb[1], this->rgb[2], this->colorAlpha2);
            gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);

            Matrix_Translate(0.0f, 0.0f, -93.5999984741f, MTXMODE_NEW);
            Matrix_Scale(0.77999997139f, 0.77999997139f, 0.77999997139f, MTXMODE_APPLY);
            Matrix_RotateX((this->rotX - 314.0f) / tmp2, 1);

            gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(this->state.gfxCtx, "../z_file_choose.c", 0x90C), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            
            gSPVertex(gfxCtx->polyOpa.p++, this->allocVtx1, 32, 0);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_01046F00);
            gSPVertex(gfxCtx->polyOpa.p++, this->allocVtx1 + 0x20, 32, 0);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_01047118);
            gSPVertex(gfxCtx->polyOpa.p++, this->allocVtx1 + 0x40, 16, 0);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_01047328);

            gDPPipeSync(gfxCtx->polyOpa.p++);

            func_80808000(this);
    }

    if ((this->fileSelectStateIdx >= 0x24) &&
        (this->fileSelectStateIdx < 0x28)) {
            gDPPipeSync(gfxCtx->polyOpa.p++);
            gDPSetCombineMode(gfxCtx->polyOpa.p++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
            gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, this->rgb[0], this->rgb[1], this->rgb[2], this->colorAlpha2);
            gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);

            Matrix_Translate(0.0f, 0.0f, -93.5999984741f, MTXMODE_NEW);
            Matrix_Scale(0.77999997139f, 0.77999997139f, 0.77999997139f, MTXMODE_APPLY);
            Matrix_RotateX((this->rotX - 314.0f) / tmp2, 1);

            gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(this->state.gfxCtx, "../z_file_choose.c", 0x921), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            
            gSPVertex(gfxCtx->polyOpa.p++, this->allocVtx1, 32, 0);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_01046F00);
            gSPVertex(gfxCtx->polyOpa.p++, this->allocVtx1 + 0x20, 32, 0);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_01047118);
            gSPVertex(gfxCtx->polyOpa.p++, this->allocVtx1 + 0x40, 16, 0);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_01047328);

            gDPPipeSync(gfxCtx->polyOpa.p++);

            func_8080AF30(this);
    }

    gDPPipeSync(gfxCtx->polyOpa.p++);
    func_8080AF50(this, 0.0f, 0.0f, 64.0f);
    Graph_CloseDisps(dispRefs, this->state.gfxCtx, "../z_file_choose.c", 0x930);
}
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080FE2C.s")
#if 0
void func_8080FE2C(ChooseContext* this) {
    s16 i;
    u8* temp_v0;

    for (i = 0; i < 3; i++) {
        if (i != this->unk_1CA38) {
            this->unk_1CA74[i] -= 0x19;
            this->unk_1CA92[0] = 
            this->unk_1CA92[1] =
            this->unk_1CA9A = this->unk_1CA74[i];

            temp_v0 = D_8012A4E0[i] + (u8*)this->sram.read_buff;
            if ((temp_v0[0x1C] == 'Z') ||
                (temp_v0[0x1D] == 'E') ||
                (temp_v0[0x1E] == 'L') ||
                (temp_v0[0x1F] == 'D') ||
                (temp_v0[0x20] == 'A') ||
                (temp_v0[0x21] == 'Z')) {
                    this->unk_1CA80[i] = this->unk_1CA7A[i] = this->unk_1CA74[i];
                    this->unk_1CA86[i] -= 0x1F;
            }
        }
    }

    this->colorAlpha[0] -= 0x1F;
    this->colorAlpha[1] += 0x1F;
    this->unk_1CA50 -= 1;
    if (this->unk_1CA50 == 0) {
        this->unk_1CA50 = 8;
        this->openFileStateIdx += 1;
        this->unk_1CA3A = 0;
    }
}
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080FF98.s")
// OK
static s16 D_80812A10[3] = {
    0x0000, 0x0010, 0x0020
};

void func_8080FF98(ChooseContext* this) {
    s16 tmp2;

    tmp2 = ABS(this->unk_1CA52[this->unk_1CA38] - D_80812A10[this->unk_1CA38]) / this->unk_1CA50;
    this->unk_1CA52[this->unk_1CA38] += tmp2;
    this->unk_1CA50 -= 1;
    if ((this->unk_1CA50 == 0) || 
        (this->unk_1CA52[this->unk_1CA38] == D_80812A10[this->unk_1CA38])) {
            this->unk_1CA58[0] = this->unk_1CA58[1] = -0x18;
            this->unk_1CA50 = 8;
            this->openFileStateIdx += 1;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8081009C.s")
#if 0
void func_8081009C(ChooseContext* this) {
    s16 tmp;
    s16 tmp2;

    this->unk_1CA8C[this->unk_1CA38] += 0x19;
    this->unk_1CA7A[this->unk_1CA38] -= 0x32;
    if (this->unk_1CA7A[this->unk_1CA38] <= 0) {
        this->unk_1CA7A[this->unk_1CA38] = 0;
    }
    
    this->unk_1CA50 -= 1;
    if (this->unk_1CA50 == 0) {
        this->unk_1CA8C[this->unk_1CA38] = 0xC8;
        this->unk_1CA50 = 8;
        this->openFileStateIdx += 1;
    }
    tmp = this->unk_1CA38;
    tmp2 = this->unk_1CA8C[tmp];
    this->unk_1CA96[1] = tmp2;
    this->unk_1CA96[0] = tmp2;
}
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8081017C.s")
// OK
void func_8081017C(ChooseContext* this) {
    u32 pad;
    Input* controller1 = &this->state.input[0];

    if (CHECK_PAD(controller1->press, START_BUTTON) ||
         (CHECK_PAD(controller1->press, A_BUTTON))) {
            if (this->unk_1CA3A == 0) {
                func_800AA000(300.0f, 0xB4, 0x14, 0x64);
                Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->openFileStateIdx = 6;
                func_800F6964(0xF);
                return;
            }
            Audio_PlaySoundGeneral(0x483C, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->openFileStateIdx += 1;
            return;
    }

    if (CHECK_PAD(controller1->press, B_BUTTON)) {
        Audio_PlaySoundGeneral(0x483C, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->openFileStateIdx += 1;
        return;
    }

    if (ABS(this->unk_1CABC) >= 0x1E) {
        Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->unk_1CA3A ^= 1;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80810354.s")
// OK
void func_80810354(ChooseContext* this) {
    s16 tmp;

    this->unk_1CA8C[this->unk_1CA38] -= 0x19;
    this->unk_1CA7A[this->unk_1CA38] += 0x19;
    this->unk_1CA50 -= 1;
    if (this->unk_1CA50 == 0) {
        this->unk_1CA52[3] = this->unk_1CA52[4] = 0;
        //this->unk_1CA58 = this->unk_1CA5A;
        this->unk_1CA7A[this->unk_1CA38] = 0xC8;
        this->unk_1CA8C[this->unk_1CA38] = 0;
        this->unk_1CA66 = 0;
        this->unk_1CA50 = 8;
        this->openFileStateIdx += 1;
    }
    tmp = this->unk_1CA8C[this->unk_1CA38];
    this->unk_1CA96[1] = tmp;
    this->unk_1CA96[0] = tmp;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80810440.s")
// Data accesses as usual
#if 0
void func_80810440(ChooseContext* this) {
    s32 tmp1;
    s16 temp;
    u8* temp_v0;
    s16 i;
    Sram* sram = &this->sram;

    tmp1 = ABS(this->unk_1CA52[this->unk_1CA38]);
    temp = tmp1 / this->unk_1CA50;
    this->unk_1CA52[this->unk_1CA38] = this->unk_1CA52[this->unk_1CA38] - temp;
    if (this->unk_1CA52[this->unk_1CA38] <= 0) {
        this->unk_1CA52[this->unk_1CA38] = 0;
    }

    for (i = 0; i < 3; i++) {
        if (i != this->unk_1CA38) {
            this->unk_1CA74[i] += 0x19;
            if (this->unk_1CA74[i] >= 0xC8) {
                this->unk_1CA74[i] = 0xC8;
            }

            tmp1 = this->unk_1CA74[i];
            this->unk_1CA9A = tmp1;
            this->unk_1CA92[0] = tmp1;
            this->unk_1CA92[1] = tmp1;
            temp_v0 = D_8012A4E0[i] + (u8*)sram->read_buff;//*(u8*)this->sram.read_buff;
            if ((*(temp_v0 + 0x1C) == 'Z') ||
                (*(temp_v0 + 0x1D) == 'E') ||
                (*(temp_v0 + 0x1E) == 'L') ||
                (*(temp_v0 + 0x1F) == 'D') ||
                (*(temp_v0 + 0x20) == 'A') ||
                (*(temp_v0 + 0x21) == 'Z')) {
                    this->unk_1CA80[i] = this->unk_1CA74[i];
                    this->unk_1CA86[i] += 0x1F;
                    this->unk_1CA7A[i] = this->unk_1CA74[i];
            }
        }
    }

    this->colorAlpha -= 0x1F;
    this->unk_1CA70 += 0x1F;
    this->unk_1CA50 -= 1;
    if (this->unk_1CA50 == 0) {
        this->colorAlpha = 0xFF;
        this->unk_1CA70 = 0;
        this->unk_1CA64 = this->unk_1CA66;
        this->unk_1CA50 = 8;
        this->menuIdx = 1;
        this->fileSelectStateIdx = 2;
        this->unk_1CA42 = 2;
        this->openFileStateIdx = 0;
    }
}
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80810698.s")
// OK
static s16 D_80812724 = 0x00FF;

void func_80810698(ChooseContext* this) {
    D_80812724 += VREG(10);
    if (D_80812724 >= 0xFF) {
        D_80812724 = 0xFF;
        this->openFileStateIdx += 1;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808106F4.s")
#if 0
void func_808106F4(ChooseContext* this) {
    s16 old_magic;
    u16 temp_a0;
    SaveContext* saveCtx = &gSaveContext;

    if (this->unk_1CA38 == 0) {
        Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        saveCtx->fileNum = this->unk_1CA38;
        func_800A8484(&this->sram);
        gSaveContext.gameMode = 0;
        SET_NEXT_GAMESTATE(&this->state, Select_Init, SelectContext)
        this->state.running = 0;
    } else {
        Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        saveCtx->fileNum = this->unk_1CA38;
        func_800A8484(&this->sram);
        gSaveContext.gameMode = 0;
        SET_NEXT_GAMESTATE(&this->state, Gameplay_Init, GlobalContext)
        this->state.running = 0;
    }
    
    old_magic = gSaveContext.magic;
    gSaveContext.magic = 0;

    gSaveContext.unk_13F4 = 0;
    gSaveContext.respawn[0].entranceIndex = -1;
    gSaveContext.respawnFlag = 0;
    gSaveContext.seqIndex = 0xFF;
    gSaveContext.nightSeqIndex = 0xFF;
    gSaveContext.unk_13C7 = 1;
    gSaveContext.dogParams = 0;
    gSaveContext.timer1State = 0;
    gSaveContext.timer2State = 0;
    gSaveContext.eventInf[0] = 0;
    gSaveContext.eventInf[1] = 0;
    gSaveContext.eventInf[2] = 0;
    gSaveContext.eventInf[3] = 0;
    gSaveContext.unk_13EE = 0x32;
    gSaveContext.nayrusLoveTimer = 0;
    gSaveContext.healthAccumulator = 0;
    gSaveContext.unk_13F0 = 0;
    gSaveContext.unk_13F2 = 0;
    gSaveContext.unk_140E = 0;
    gSaveContext.environmentTime = 0;
    gSaveContext.nextTransition = 0xFFU;
    gSaveContext.nextCutsceneIndex = 0xFFEF;
    gSaveContext.cutsceneTrigger = 0;
    gSaveContext.chamberCutsceneNum = 0;
    gSaveContext.nextDayTime = 0xFFFF;
    gSaveContext.unk_13C3 = 0;
    gSaveContext.buttonStatus[4] = 0;
    gSaveContext.buttonStatus[3] = 0;
    gSaveContext.buttonStatus[2] = 0;
    gSaveContext.buttonStatus[1] = 0;
    gSaveContext.buttonStatus[0] = 0;
    gSaveContext.unk_13EC = gSaveContext.unk_13F4;
    gSaveContext.unk_13EA = gSaveContext.unk_13F4;
    gSaveContext.unk_13E8 = gSaveContext.unk_13F4;
    gSaveContext.unk_13E7 = gSaveContext.unk_13F4;
    gSaveContext.unk_13F6 = old_magic;
    gSaveContext.magicLevel = gSaveContext.magic;

    osSyncPrintf(VT_FGCOL(GREEN));
    osSyncPrintf("Z_MAGIC_NOW_NOW=%d  MAGIC_NOW=%d\n", gSaveContext.unk_13F6, gSaveContext.magic);
    osSyncPrintf(VT_RST);

    gSaveContext.naviTimer = 0;
    if ((gSaveContext.equips.buttonItems[0] != 0x3B) &&
       (gSaveContext.equips.buttonItems[0] != 0x3C) &&
       (gSaveContext.equips.buttonItems[0] != 0x3D) &&
       (gSaveContext.equips.buttonItems[0] != 0x55)) {

        gSaveContext.equips.buttonItems[0] = 0xFF;
        temp_a0 = (*(u16*)gEquipMasks & gSaveContext.equips.equipment) & 0xFFFF;
        gSaveContext.equips.equipment &= *(u16*)gEquipNegMasks;
        gSaveContext.equipment ^= (gBitFlags[temp_a0-1] << *(u8*)gEquipShifts);
    }
}
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8081097C.s")
// OK
void func_8080FE2C(ChooseContext*);
void func_8081009C(ChooseContext*);
void func_80810440(ChooseContext*);
void func_808106F4(ChooseContext*);

static void (*funcs_9B8[])(ChooseContext*) = {
    func_8080FE2C, func_8080FF98, func_8081009C,
    func_8081017C, func_80810354, func_80810440,
    func_80810698, func_808106F4
};

void func_8081097C(ChooseContext* this) {
    funcs_9B8[this->openFileStateIdx](this);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808109B8.s")
#if 0
void func_808109B8(ChooseContext* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    SkyboxContext* skybox = &this->skybox;
    s32 pad;
    f32 temp_f10;
    f32 tmp_reg;
    f32 temp_f2;
    Gfx* dispRefs[5];   
 
    Graph_OpenDisps(dispRefs, this->state.gfxCtx, "../z_file_choose.c", 0xAC1);

    gDPPipeSync(gfxCtx->polyOpa.p++);

    temp_f10 = (1000.0f * Math_Coss(ZREG(11))) - (Math_Sins(ZREG(11)) * 1000.0f);
    tmp_reg = ZREG(13);
    temp_f2 = (1000.0f * Math_Sins(ZREG(11))) + (Math_Coss(ZREG(11)) * 1000.0f);
    func_8080AF50(this, temp_f10, tmp_reg, 1000.0f);
    SkyboxDraw_Draw(skybox, this->state.gfxCtx, 1, this->kankyo.unk_13, temp_f10, tmp_reg, temp_f2);
    
    gDPSetTextureLUT(gfxCtx->polyOpa.p++, G_TT_NONE);
    
    ZREG(11) += ZREG(10);
    func_8006FC88(1, &this->kankyo, skybox);

    gDPPipeSync(gfxCtx->polyOpa.p++);

    func_800949A8(this->state.gfxCtx);
    func_8080AF50(this, 0.0f, 0.0f, 64.0f);
    func_8080C330(this);
    func_8080C60C(this);

    gDPSetCombineMode(gfxCtx->polyOpa.p++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, this->colorR, this->colorG, this->colorB, this->colorAlpha);
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);

    Matrix_Translate(0.0f, 0.0f, -93.5999984741f, 0);
    Matrix_Scale(0.77999997139f, 0.77999997139f, 0.77999997139f, 1);
    Matrix_RotateX(this->rotX / 100.0f, 1);

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(this->state.gfxCtx, "../z_file_choose.c", 0xAFA), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPVertex(gfxCtx->polyOpa.p++, this->allocVtx1, 32, 0);
    gSPDisplayList(gfxCtx->polyOpa.p++, D_01046F00);
    gSPVertex(gfxCtx->polyOpa.p++, this->allocVtx1 + 0x20, 32, 0);
    gSPDisplayList(gfxCtx->polyOpa.p++, D_01047118);
    gSPVertex(gfxCtx->polyOpa.p++, this->allocVtx1 + 0x40, 16, 0);
    gSPDisplayList(gfxCtx->polyOpa.p++, D_01047328);

    func_8080E074(this);

    gDPPipeSync(gfxCtx->polyOpa.p++);

    func_8080AF50(this, 0.0f, 0.0f, 64.0f);

    Graph_CloseDisps(dispRefs, this->state.gfxCtx, "../z_file_choose.c", 0xB12);
}
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80810DAC.s")
#if 0
void func_8080B1A8(ChooseContext*);
void func_8080C2F4(ChooseContext*);
void func_8081097C(ChooseContext*);
void func_8080B224(ChooseContext*);
void func_8080F560(ChooseContext*);
void func_808109B8(ChooseContext*);

static void (*funcs_DAC_1[3])(ChooseContext*) = {
    func_8080B1A8, func_8080C2F4, func_8081097C
};

static void (*funcs_DAC_2[3])(ChooseContext*) = {
    func_8080B224, func_8080F560, func_808109B8
};

static u32 arr_DAC[3] = {
    0x01033F00, 0x01034800, 0x01035100
};

static u32 D_80812728[][2] = {
    {0xE7000000, 0x00000000},
    {0xD9C0F9FA, 0x00000000}, 
    {0xEF802C30, 0x00504340}, 
    {0xFCFFFFFF, 0xFFFDF6FB}, 
    {0xDF000000, 0x00000000}
};

void func_80810DAC(ChooseContext* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    Input* controller1;
    Gfx* dispRefs[5];

    controller1 = &this->state.input[0];
    Graph_OpenDisps(dispRefs, this->state.gfxCtx, "../z_file_choose.c", 0xB52);
    this->unk_1C9F4 = 0;

    gSPSegment(gfxCtx->polyOpa.p++, 0x00, 0x00000000);
    gSPSegment(gfxCtx->polyOpa.p++, 0x01, this->staticSegment);
    gSPSegment(gfxCtx->polyOpa.p++, 0x02, this->parameterSegment);

    func_80095248(this->state.gfxCtx, 0, 0, 0);

    this->unk_1CABA = controller1->rel.in.x;
    this->unk_1CABC = controller1->rel.in.y;

    if (this->unk_1CABA < -0x1E) {
        if (this->unk_1CAB6 == -1) {
            this->unk_1CAB2 -= 1;
            if (this->unk_1CAB2 < 0) {
                this->unk_1CAB2 = 2;
            } else {
                this->unk_1CABA = 0;
            }
        } else {
            this->unk_1CAB2 = 0xA;
            this->unk_1CAB6 = -1;
        }
    } else {
        if (this->unk_1CABA >= 0x1F) {
            if (this->unk_1CAB6 == 1) {
                this->unk_1CAB2 -= 1;
                if (this->unk_1CAB2 < 0) {
                    this->unk_1CAB2 = 2;
                } else {
                    this->unk_1CABA = 0;
                }
            } else {
                this->unk_1CAB2 = 0xA;
                this->unk_1CAB6 = 1;
            }
        } else {
            this->unk_1CAB6 = 0;
        }
    }

    if (this->unk_1CABC < -0x1E) {
        if (this->unk_1CAB8 == -1) {
            this->unk_1CAB4 -= 1;
            if (this->unk_1CAB4 < 0) {
                this->unk_1CAB4 = 2;
            } else {
                this->unk_1CABC = 0;
            }
        } else {
            this->unk_1CAB4 = 0xA;
            this->unk_1CAB8 = -1;
        }
    } else {
        if (this->unk_1CABC >= 0x1F) {
            if (this->unk_1CAB8 == 1) {
                this->unk_1CAB4 -= 1;
                if (this->unk_1CAB4 < 0) {
                    this->unk_1CAB4 = 2;
                } else {
                    this->unk_1CABC = 0;
                }
            } else {
                this->unk_1CAB4 = 0xA;
                this->unk_1CAB8 = 1;
            }
        } else {
            this->unk_1CAB8 = 0;
        }
    }

    this->unk_1CAA0 = 0;
    func_8080BFE4(this);
    funcs_DAC_1[this->menuIdx](this);
    funcs_DAC_2[this->menuIdx](this);

    if ((this->fileSelectStateIdx < 0x24) || (this->fileSelectStateIdx >= 0x28)) {
        func_800944C4(this->state.gfxCtx);

        gDPSetCombineLERP(gfxCtx->polyOpa.p++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0x64, 0xFF, 0xFF, this->unk_1CA9E & 0xFF);
        gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);

        gDPLoadTextureBlock(gfxCtx->polyOpa.p++, arr_DAC[gSaveContext.language], G_IM_FMT_IA,
                            G_IM_SIZ_8b, 0x90, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
            
        /*        
        gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, arr_10DAC[gSaveContext.language]);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPLoadSync(gfxCtx->polyOpa.p++);
        gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 1151, 114);
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_8b, 18, 0, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
        gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x023C, 0x003C);
        */
    
        gSPTextureRectangle(gfxCtx->polyOpa.p++, 0x0168, 0x0330, 0x03A8, 0x0370, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
    }

    gDPPipeSync(gfxCtx->polyOpa.p++);
    gSPDisplayList(gfxCtx->polyOpa.p++, D_80812728);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0x00, 0x00, 0x00, D_80812724 & 0xFF);
    gDPFillRectangle(gfxCtx->polyOpa.p++, 0, 0, gScreenWidth - 1, gScreenHeight - 1);

    Graph_CloseDisps(dispRefs, this->state.gfxCtx, "../z_file_choose.c", 0xBDB);
}
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808113A8.s")
#if 0
void func_808113A8(ChooseContext* this) {
    Sram* sram = &this->sram;
    s16 tmp;
    s16 tmp_var;
    EnvironmentContext* kankyo = &this->kankyo;

    func_800A9CD4(sram);

    ZREG(7) = 0x20;
    ZREG(8) = 0x16;
    ZREG(9) = 0x14;
    ZREG(10) = -0xA;
    ZREG(11) = 0;
    ZREG(12) = 0x3E8;
    ZREG(13) = -0x2BC;
    ZREG(14) = 0xA4;
    ZREG(15) = 0x68;
    ZREG(16) = 0xA0;
    ZREG(17) = 0x64;
    ZREG(18) = 0xA2;
    ZREG(19) = 0x98;
    ZREG(20) = 0xD6;

    XREG(13) = 0x244;
    XREG(14) = 0x190;
    XREG(35) = 0x14;
    XREG(36) = 0x14;
    XREG(37) = 0x14;
    XREG(43) = 8;
    XREG(44) = -0x4E;
    XREG(45) = 0;
    XREG(46) = 0;
    XREG(47) = 0;
    XREG(48) = 0;
    XREG(49) = 3;
    XREG(50) = 8;
    XREG(51) = 8;
    XREG(52) = 0xA;
    XREG(73) = 0;

    VREG(0) = 0xE;
    VREG(1) = 5;
    VREG(2) = 4;
    VREG(4) = 1;
    VREG(5) = 6;
    VREG(6) = 2;
    VREG(7) = 6;
    VREG(8) = 0x50;

    D_80812724 = 0xFF;

    VREG(10) = 0xA;
    VREG(11) = 0x1E;
    VREG(12) = -0x64;
    VREG(13) = -0x55;
    VREG(14) = 4;
    VREG(16) = 0x19;
    VREG(17) = 1;
    VREG(18) = 1;
    VREG(20) = 0x5C;
    VREG(21) = 0xAB;
    VREG(22) = 0xB;
    VREG(23) = 0xA;
    VREG(24) = 0x1A;
    VREG(25) = 2;
    VREG(26) = 1;
    VREG(27) = 0;
    VREG(28) = 0;
    VREG(29) = 0xA0;
    VREG(30) = 0x40;
    VREG(31) = 0x9A;
    VREG(32) = 0x98;
    VREG(33) = 0x6A;

    WREG(38) = 0x10;
    WREG(39) = 9;
    WREG(40) = 0xA;
    WREG(41) = 0xE;
    WREG(42) = 0xB;
    WREG(43) = 0xC;

    this->menuIdx = 0;
    this->unk_1CA3A = 0;

    this->unk_1CA38 = this->openFileStateIdx = this->unk_1CA46 = this->unk_1CA5E = this->unk_1CA3A;
    
    this->unk_1CAAE[0] = 2;
    this->unk_1CAAE[1] = 3;
    this->unk_1CA64 = 0;
    this->unk_1CA66 = 1;
    this->unk_1CAAA = 1;
    this->unk_1CAAC = 0xC;
    this->unk_1CAA2[0] = 0x9B;
    this->unk_1CAA2[1] = 0xFF;
    this->unk_1CAA6[0] = 0xFF;
    this->unk_1CAA6[1] = 0x46;
    this->fileSelectStateIdx = 0;
    this->rotX = 0.0f;

    this->unk_1CAB2 = 0;
    this->unk_1CAB6 = this->unk_1CAB2;

    this->unk_1CAB4 = 0;
    this->unk_1CAB8 = this->unk_1CAB4;

    this->unk_1CACE = 0;

    this->unk_1CAD0 = this->unk_1CAD2 = this->unk_1CACE;

    this->unk_1CAC8 = 0x63;
    this->rgb[0] = 0x64;
    this->rgb[1] = 0x96;
    this->rgb[2] = 0xFF;
    this->unk_1CAA0 = 0;

    tmp_var = this->unk_1CAA0;
    this->unk_1CA9E = tmp_var;
    this->unk_1CA9C = tmp_var;
    this->unk_1CA9A = tmp_var;
    this->unk_1CA8C[1] = tmp_var;
    this->unk_1CA8C[2] = tmp_var;
    this->unk_1CA92[0] = tmp_var;
    this->unk_1CA92[1] = tmp_var;
    this->unk_1CA96[0] = tmp_var;
    this->unk_1CA96[1] = tmp_var;
    this->unk_1CA8C[0] = tmp_var;
    this->unk_1CA86[2] = tmp_var;
    this->unk_1CA86[1] = tmp_var;
    this->unk_1CA86[0] = tmp_var;
    this->unk_1CA80[2] = tmp_var;
    this->unk_1CA80[1] = tmp_var;
    this->unk_1CA80[0] = tmp_var;
    this->unk_1CA7A[2] = tmp_var;
    this->unk_1CA7A[1] = tmp_var;
    this->unk_1CA7A[0] = tmp_var;
    this->unk_1CA74[2] = tmp_var;
    this->unk_1CA74[1] = tmp_var;
    this->unk_1CA74[0] = tmp_var;
    this->colorAlpha[1] = tmp_var;
    this->colorAlpha[0] = tmp_var;
    this->colorAlpha2 = tmp_var;

    this->unk_1CAC0 = 6;
    this->unk_1CA50 = 8;
    this->decisionAlphaIdx = -1;
    this->unk_1CA4A[2] = 0;

    tmp_var = this->unk_1CA4A[2];
    this->unk_1CA4A[1] = tmp_var;
    this->unk_1CA4A[0] = tmp_var;
    this->unk_1CA5C    = tmp_var;
    this->unk_1CA58[1] = tmp_var;
    this->unk_1CA58[0] = tmp_var;
    this->unk_1CA52[2] = tmp_var;
    this->unk_1CA52[1] = tmp_var;
    this->unk_1CA52[0] = tmp_var;
    this->unk_1CA62    = tmp_var;

    this->unk_1CAD6[0] = 0;
    this->unk_1CAD6[1] = 3;
    this->unk_1CAD6[2] = 6;
    this->unk_1CAD6[3] = 8;
    this->unk_1CAD6[4] = 0xA;
    func_800B3840(0);

    gSaveContext.environmentTime = 0;
    gSaveContext.dayTime = 0;
    func_800B0E50(this, &this->skybox, 1);

    D_8011FB40 = 0xA;
    kankyo->unk_19 = 0;
    kankyo->unk_1A = 0;
    kankyo->unk_21 = 0;
    kankyo->unk_22 = 0;
    kankyo->unk_44 = 0;
    kankyo->unk_10 = 0x63;
    kankyo->unk_11 = 0x63;
    kankyo->unk_1F = 0;
    kankyo->unk_20 = 0;
    kankyo->unk_BD = 0;
    kankyo->gloomySky = 2;
    kankyo->skyDisabled = 0;
    kankyo->unk_13 = 0;
    kankyo->unk_84 = 0.0f;
    kankyo->unk_88 = 0.0f;

    func_8006FC88(1, &this->kankyo, &this->skybox);

    gSaveContext.buttonStatus[4] = 0;
    gSaveContext.buttonStatus[3] = 0;
    gSaveContext.buttonStatus[2] = 0;
    gSaveContext.buttonStatus[1] = 0;
    
    this->unk_1CA2E[1] = 
    this->unk_1CA2E[0] = 
    this->unk_1CA28[2] = 
    this->unk_1CA28[1] = 
    this->unk_1CA28[0] = gSaveContext.buttonStatus[0] = 0;
    this->unk_1CA2E[2] = 0;

    Sram_ReadWrite(0x8000000, sram->read_buff, 0x8000, 0);
    gSaveContext.language = *((u8*)sram->read_buff + 0x2);
    if (gSaveContext.language >= 3) {
        gSaveContext.language = 0;
        ((u8*)sram->read_buff)[2] = 0;
    }
}
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80811A18.s")
// OK
void func_80811A18(ChooseContext* this) {
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80811A20.s")
// OK

void func_80810DAC(ChooseContext*);
void func_80811A18(ChooseContext*);

void func_80811A20(ChooseContext* this) {
    u32 size;
    u32 size2;
    void* ret;

    size = (u32)_title_staticSegmentRomEnd - (u32)_title_staticSegmentRomStart;
    SREG(30) = 1;
    osSyncPrintf("SIZE=%x\n", size);
    this->staticSegment = GameState_Alloc(&this->state, size, "../z_file_choose.c", 0xD40);
    if (this->staticSegment == NULL) {
        __assert("this->staticSegment != NULL", "../z_file_choose.c", 0xD41);
    }
    DmaMgr_SendRequest1(this->staticSegment, (u32)_title_staticSegmentRomStart, size, "../z_file_choose.c", 0xD42);
    
    size2 = (u32)_parameter_staticSegmentRomEnd - (u32)_parameter_staticSegmentRomStart;
    ret = GameState_Alloc(&this->state, size2, "../z_file_choose.c", 0xD46);
    this->parameterSegment = ret;
    if (ret == 0) {
        __assert("this->parameterSegment != NULL", "../z_file_choose.c", 0xD47);
    }
    DmaMgr_SendRequest1(this->parameterSegment, (u32)_parameter_staticSegmentRomStart, size2, "../z_file_choose.c", 0xD48);

    Matrix_Init(this);
    View_Init(&this->view, this->state.gfxCtx);

    this->state.main = func_80810DAC;
    this->state.destroy = func_80811A18;

    func_808113A8(this);
    func_8006EF10(&this->kanfont);
    Audio_SetBGM(0xF000000A);
    func_800F5E18(0, 0x57, 0, 7, 1);
}
