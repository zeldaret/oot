#include <ultra64.h>
#include <global.h>
#include <vt.h>
#include <alloca.h>

//void func_8080AF50(FileChooseContext*, f32, f32, f32);
//Gfx* func_8080AFD0(Gfx*, s32, s16, s16);
//void func_80806DB0(GraphicsContext*, KanFont_unk3C88*, s16);

extern s16 D_80812724;
extern u32 D_80812728[5][2];

extern s16 D_80812750[5];
extern s16 D_8081275C[2][3];
extern s16 D_80812818[4];
extern s16 D_80812820[4];
extern s16 D_80812828[4];
extern s16 D_80812830[6];
extern s16 D_8081283C[4];
extern s16 D_80812844[4];
extern s16 D_80812848[2];

extern s16 D_8081284C[3];
extern s32 D_80812854[9];
extern s16 D_80812878[9];
extern s16 D_8081288C[9];
extern s16 D_808128A0[9];
extern s16 D_808128B4[9];
extern s16 D_808128C8[2][3];
extern s32 D_808128D4[2];
extern s16 D_808128DC[2][3];
extern s16 D_808128E8[2][3];

extern s32 D_808128F4[5];
extern s32 D_80812908[3][9];
extern s32 D_80812974[3][9];
extern s32 D_808129B0[3][5];
extern s32 D_808129D4[3][4];
extern s32 D_80812A04[3];

extern s16 D_80812A10[3];
extern void (*D_80812A18[8])(FileChooseContext*);
extern void (*D_80812A38[3])(FileChooseContext*);
extern void (*D_80812A44[3])(FileChooseContext*);
extern u32 D_80812A50[3];


#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080C330.s")
#if 0
void func_8080C330(FileChooseContext* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    s16 i;
    s16 j;
    s16 x;
    s16 tmp;
    s16 tmp2;
    s16 tmp3;

    this->allocVtx1 = Graph_Alloc(gfxCtx, 0x500);
    tmp = this->windowX - 0x5A;

    for (i = 0, x = 0; i < 4; i++) {
        tmp += 0x40;
        if (i == 3) {
            tmp2 = 0x30;
        } else {
            tmp2 = 0x40;
        }
        tmp3 = 0x50;

        for (j = 0; j < 5; j++, x += 4) {

            this->allocVtx1[x].ob[0] = 
            this->allocVtx1[x+2].ob[0] = tmp;

            this->allocVtx1[x+3].ob[0] = tmp + tmp2;
            this->allocVtx1[x+1].ob[0] = tmp + tmp2;
            // 54
            this->allocVtx1[x].ob[1] = 
            this->allocVtx1[x+1].ob[1] = tmp3;

            this->allocVtx1[x+3].ob[1] = tmp3 - 0x20;
            this->allocVtx1[x+2].ob[1] = tmp3 - 0x20;
            // 59
            this->allocVtx1[x].ob[2] = 
            this->allocVtx1[x+1].ob[2] = 
            this->allocVtx1[x+2].ob[2] = 
            this->allocVtx1[x+3].ob[2] = 0;
            // 64
            this->allocVtx1[x].flag = 
            this->allocVtx1[x+1].flag = 
            this->allocVtx1[x+2].flag = 
            this->allocVtx1[x+3].flag = 0;
            // 69
            this->allocVtx1[x].tc[0] = 
            this->allocVtx1[x].tc[1] = 
            this->allocVtx1[x+1].tc[1] = 
            this->allocVtx1[x+2].tc[0] = 0;
            //74
            this->allocVtx1[x+3].tc[0] = tmp2 * 32;
            this->allocVtx1[x+1].tc[0] = tmp2 * 32;
            // 76
            this->allocVtx1[x+2].tc[1] = 
            this->allocVtx1[x+3].tc[1] = 0x400;
            // 79
            this->allocVtx1[x].cn[0] = 
            this->allocVtx1[x+2].cn[0] = 
            this->allocVtx1[x].cn[1] = 
            this->allocVtx1[x+2].cn[1] = 
            this->allocVtx1[x].cn[2] = 
            this->allocVtx1[x+2].cn[2] = 
            this->allocVtx1[x+1].cn[0] = 
            this->allocVtx1[x+3].cn[0] = 
            this->allocVtx1[x+1].cn[1] = 
            this->allocVtx1[x+3].cn[1] = 
            this->allocVtx1[x+1].cn[2] = 
            this->allocVtx1[x+3].cn[2] = 
            this->allocVtx1[x].cn[3] = 
            this->allocVtx1[x+2].cn[3] = 
            this->allocVtx1[x+1].cn[3] = 
            this->allocVtx1[x+3].cn[3] = 0xFF;

            tmp3 -= 0x20;
        }
    }
}
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080C60C.s")
#if 0
void func_8080C60C(FileChooseContext* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    s16 i;
    s16 x;
    s16 j;
    s16 tmp;
    s16 tmp2;
    s16 tmp4;
    s16 tmp5;

    this->allocVtx2 = Graph_Alloc(this->state.gfxCtx, 0x2880);

    for (x = 0; x < 0x288; x += 4) {
        this->allocVtx2[x+2].ob[0] = 0x12C;
        this->allocVtx2[x].ob[0] = this->allocVtx2[x+2].ob[0];
        this->allocVtx2[x+1].ob[0] = 
        this->allocVtx2[x+3].ob[0] = this->allocVtx2[x].ob[0] + 0x10;

        this->allocVtx2[x+1].ob[1] = 0;
        this->allocVtx2[x].ob[1] = this->allocVtx2[x+1].ob[1];
        this->allocVtx2[x+2].ob[1] = 
        this->allocVtx2[x+3].ob[1] = this->allocVtx2[x].ob[1] - 0x10;

        // 209
        this->allocVtx2[x].ob[2] = 
        this->allocVtx2[x+1].ob[2] = 
        this->allocVtx2[x+2].ob[2] = 
        this->allocVtx2[x+3].ob[2] = 0;
        // 214
        this->allocVtx2[x+3].flag = 0;
        this->allocVtx2[x].flag = 
        this->allocVtx2[x+1].flag = 
        this->allocVtx2[x+2].flag = this->allocVtx2[x+3].flag;
        // 219
        this->allocVtx2[x].tc[0] = 
        this->allocVtx2[x].tc[1] = 
        this->allocVtx2[x+1].tc[1] = 
        this->allocVtx2[x+2].tc[0] = 0;
        // 224
        this->allocVtx2[x+1].tc[0] = 
        this->allocVtx2[x+2].tc[1] = 
        this->allocVtx2[x+3].tc[0] = 
        this->allocVtx2[x+3].tc[1] = 0x200;
        // 229
        this->allocVtx2[x].cn[0] = 
        this->allocVtx2[x+1].cn[0] = 
        this->allocVtx2[x+2].cn[0] = 
        this->allocVtx2[x+3].cn[0] = 
        this->allocVtx2[x].cn[1] = 
        this->allocVtx2[x+1].cn[1] = 
        this->allocVtx2[x+2].cn[1] = 
        this->allocVtx2[x+3].cn[1] = 
        this->allocVtx2[x].cn[2] = 
        this->allocVtx2[x+1].cn[2] = 
        this->allocVtx2[x+2].cn[2] = 
        this->allocVtx2[x+3].cn[2] = 
        this->allocVtx2[x].cn[3] = 
        this->allocVtx2[x+1].cn[3] = 
        this->allocVtx2[x+2].cn[3] = 
        this->allocVtx2[x+3].cn[3] = 0xFF;
    }
    
    // 568
    tmp = this->windowX;
    this->allocVtx2[2].ob[0] = tmp;
    this->allocVtx2[0].ob[0] = tmp;
    this->allocVtx2[1].ob[0] = 
    this->allocVtx2[3].ob[0] = this->allocVtx2[0].ob[0] + 0x80;

    this->allocVtx2[1].ob[1] = 0x48;
    this->allocVtx2[0].ob[1] = this->allocVtx2[1].ob[1];
    this->allocVtx2[2].ob[1] =
    this->allocVtx2[3].ob[1] = this->allocVtx2[0].ob[1] - 0x10;

    this->allocVtx2[3].tc[0] = 0x1000;
    this->allocVtx2[1].tc[0] = this->allocVtx2[3].tc[0];

    tmp5 = 0x2C;
    // 60c
    for (i = 0, x = 4; i < 3; i++) {
        tmp = this->windowX - 6;
        for (j = 0; j < 5; j++, x += 4) {
            this->allocVtx2[x+2].ob[0] = tmp;
            this->allocVtx2[x].ob[0] = this->allocVtx2[x+2].ob[0];
            
            this->allocVtx2[x+1].ob[0] = 
            this->allocVtx2[x+3].ob[0] = D_80812750[j] + this->allocVtx2[x].ob[0];
            
            this->allocVtx2[x].ob[1] = 
            this->allocVtx2[x+1].ob[1] = this->fileNamesY[i] + 0x2C;

            this->allocVtx2[x+2].ob[1] = 
            this->allocVtx2[x+3].ob[1] = this->allocVtx2[x].ob[1] - 0x38;

            this->allocVtx2[x+1].tc[0] = 
            this->allocVtx2[x+3].tc[0] = D_80812750[j] * 0x20;

            this->allocVtx2[x+3].tc[1] = 0x700;
            this->allocVtx2[x+2].tc[1] = this->allocVtx2[x+3].tc[1];
            tmp += D_80812750[j];
        }
    }

    // 74c
    tmp = this->windowX - 6;
    for (i = 0; i < 3; i++, x += 0x14) {
        this->allocVtx2[x+2].ob[0] = tmp;
        this->allocVtx2[x].ob[0] = this->allocVtx2[x+2].ob[0];
        this->allocVtx2[x+1].ob[0] = 
        this->allocVtx2[x+3].ob[0] = this->allocVtx2[x].ob[0] + 0x40;
        // 322
        this->allocVtx2[x].ob[1] = 
        this->allocVtx2[x+1].ob[1] = this->buttonsFile[i] + tmp5;

        this->allocVtx2[x+2].ob[1] = 
        this->allocVtx2[x+3].ob[1] = this->allocVtx2[x].ob[1] - 0x10;
        // 329
        this->allocVtx2[x+3].tc[0] = 0x800;
        this->allocVtx2[x+1].tc[0] = this->allocVtx2[x+3].tc[0];

        this->allocVtx2[x+6].ob[0] = tmp + 0x40;
        this->allocVtx2[x+4].ob[0] = tmp + 0x40;

        this->allocVtx2[x+5].ob[0] = 
        this->allocVtx2[x+7].ob[0] = this->allocVtx2[x+4].ob[0] + 0x6C;
        // 338
        this->allocVtx2[x+4].ob[1] = 
        this->allocVtx2[x+5].ob[1] = this->buttonsFile[i] + tmp5;

        this->allocVtx2[x+6].ob[1] = 
        this->allocVtx2[x+7].ob[1] = this->allocVtx2[x+4].ob[1] - 0x10;

        this->allocVtx2[x+7].tc[0] = 0xD80;
        this->allocVtx2[x+5].tc[0] = this->allocVtx2[x+7].tc[0];

        // 348
        if ((this->fileSelectStateIdx == 0xF) && (this->copyDsFiletIdx == i)) {
            tmp2 = this->fileNamesY[i] + 0x2C;
        } else if (((this->fileSelectStateIdx == 0x10) ||
                  (this->fileSelectStateIdx == 0x11)) && (this->copyDsFiletIdx == i)) {
            tmp2 = this->buttonsFile[i] + tmp5;
        } else {
            tmp2 = this->buttonsFile[i] + (this->fileNamesY[i] + tmp5);
        }

        // 372
        this->allocVtx2[x+10].ob[0] = tmp + 0xA8;
        this->allocVtx2[x+8].ob[0] = tmp + 0xA8;

        this->allocVtx2[x+9].ob[0] = 
        this->allocVtx2[x+11].ob[0] = this->allocVtx2[x+8].ob[0] + 0x2C;

        this->allocVtx2[x+9].ob[1] = tmp2;
        this->allocVtx2[x+8].ob[1] = this->allocVtx2[x+9].ob[1];

        this->allocVtx2[x+10].ob[1] = 
        this->allocVtx2[x+11].ob[1] = this->allocVtx2[x+8].ob[1] - 0x10;

        // 387
        this->allocVtx2[x+11].tc[0] = 0x580;
        this->allocVtx2[x+9].tc[0] = this->allocVtx2[x+11].tc[0];

        this->allocVtx2[x+14].ob[0] = tmp + 0x34;
        this->allocVtx2[x+12].ob[0] = tmp + 0x34;

        this->allocVtx2[x+13].ob[0] = 
        this->allocVtx2[x+15].ob[0] = this->allocVtx2[x+12].ob[0] + 0x18;

        // 396
        this->allocVtx2[x+12].ob[1] = 
        this->allocVtx2[x+13].ob[1] = this->buttonsFile[i] + tmp5;

        this->allocVtx2[x+14].ob[1] = 
        this->allocVtx2[x+15].ob[1] = this->allocVtx2[x+12].ob[1] - 0x10;

        // 403
        this->allocVtx2[x+15].tc[0] = 0x300;
        this->allocVtx2[x+13].tc[0] = this->allocVtx2[x+15].tc[0];

        this->allocVtx2[x+18].ob[0] = tmp + 0x9C;
        this->allocVtx2[x+16].ob[0] = tmp + 0x9C;

        // 408
        this->allocVtx2[x+17].ob[0] = 
        this->allocVtx2[x+19].ob[0] = this->allocVtx2[x+16].ob[0] + 0x18;

        this->allocVtx2[x+16].ob[1] = 
        this->allocVtx2[x+17].ob[1] = this->buttonsFile[i] + tmp5;

        this->allocVtx2[x+18].ob[1] = 
        this->allocVtx2[x+19].ob[1] = this->allocVtx2[x+16].ob[1] - 0x10;

        // 419
        this->allocVtx2[x+19].tc[0] = 0x300;
        this->allocVtx2[x+17].tc[0] = this->allocVtx2[x+19].tc[0];

        tmp5 -= 0x10;
    }

    // bb0

    tmp4 = 0x2C;
    for (i = 0; i < 3; i++) {
        if (IS_VALID_SAVE(this->sram.read_buff + D_8012A4E0[0][i])) {
            // c18
            tmp5 = this->windowX - WREG(39);
            if ((this->fileSelectStateIdx == 0xF) && (this->copyDsFiletIdx == i)) {
                tmp = this->fileNamesY[i] + 0x2C;
            } else if (((this->fileSelectStateIdx == 0x10) || (this->fileSelectStateIdx == 0x11)) && (this->copyDsFiletIdx == i)) {
                tmp = this->buttonsFile[i] + tmp4;
            } else {
                tmp = this->buttonsFile[i] + (this->fileNamesY[i] + tmp4);
            }

            // d0c
            tmp += 2;
            for (j = 0; j < 8; j++, x += 4) {
                this->allocVtx2[x].ob[0] = 
                this->allocVtx2[x+2].ob[0] = WREG(41) + tmp5 + 0x40;

                this->allocVtx2[x+1].ob[0] = 
                this->allocVtx2[x+3].ob[0] = this->allocVtx2[x].ob[0] + WREG(42);

                this->allocVtx2[x+1].ob[1] = tmp - 3;
                this->allocVtx2[x].ob[1] = tmp - 3;
                this->allocVtx2[x+2].ob[1] = 
                this->allocVtx2[x+3].ob[1] = this->allocVtx2[x].ob[1] - WREG(43);

                tmp5 += WREG(40);
            }

            // dfc
            tmp5 = this->windowX - 0xE;
            tmp -= 0x16;
            for (j = 0; j < 4; j++, x += 4) {
                this->allocVtx2[x+2].ob[0] = tmp5;
                this->allocVtx2[x].ob[0] = this->allocVtx2[x+2].ob[0];

                this->allocVtx2[x+1].ob[0] = 
                this->allocVtx2[x+3].ob[0] = D_80812820[j] + this->allocVtx2[x].ob[0];

                this->allocVtx2[x+1].ob[1] = tmp;
                this->allocVtx2[x].ob[1] = this->allocVtx2[x+1].ob[1];

                this->allocVtx2[x+2].ob[1] = 
                this->allocVtx2[x+3].ob[1] = D_80812828[j] - this->allocVtx2[x].ob[1];

                tmp5 += D_80812818[j];
                //tmp_wat += 4;
            }

            // ef0
            this->allocVtx2[x-13].tc[0] = 0x400;
            this->allocVtx2[x-15].tc[0] = this->allocVtx2[x-13].tc[0];

            tmp += 4;
            tmp5 = this->windowX + 0x3F;
            for (j = 0; j < 20; j++, x += 4) {
                this->allocVtx2[x+2].ob[0] = tmp5;
                //tmp_wat += 4;

                this->allocVtx2[x].ob[0] = this->allocVtx2[x+2].ob[0];

                this->allocVtx2[x+1].ob[0] = 
                this->allocVtx2[x+3].ob[0] = this->allocVtx2[x].ob[0] + 0xA;

                this->allocVtx2[x+1].ob[1] = tmp;

                this->allocVtx2[x].ob[1] = this->allocVtx2[x+1].ob[1];

                this->allocVtx2[x+2].ob[1] = 
                this->allocVtx2[x+3].ob[1] = this->allocVtx2[x].ob[1] - 0xA;

                if (j == 9) {
                    tmp -= 8;
                    tmp5 = this->windowX + 0x36;
                }
                tmp5 += 9;
            }

            tmp -= 0xA;

            // 100c
            tmp5 = this->windowX + 4;
            for (j = 0; j < 10; j++, x += 4) {
                this->allocVtx2[x].ob[0] = 
                this->allocVtx2[x+2].ob[0] = tmp5;

                this->allocVtx2[x+1].ob[0] = 
                this->allocVtx2[x+3].ob[0] = this->allocVtx2[x].ob[0] + 0x10;

                this->allocVtx2[x+1].ob[1] = tmp;
                this->allocVtx2[x].ob[1] = this->allocVtx2[x+1].ob[1];

                this->allocVtx2[x+2].ob[1] = 
                this->allocVtx2[x+3].ob[1] = this->allocVtx2[x].ob[1] - 0x10;

                tmp5 += 0x10;
            }
        } else {
            x += 0xA8;
        }
        tmp4 -= WREG(38);
    }

    // 1100
    tmp = this->windowX - 6;
    tmp4 = -0xC;
    for (i = 0; i < 2; i++, x += 4) {
        this->allocVtx2[x+2].ob[0] = tmp;
        this->allocVtx2[x].ob[0] = this->allocVtx2[x+2].ob[0];

        this->allocVtx2[x+1].ob[0] = 
        this->allocVtx2[x+3].ob[0] = this->allocVtx2[x].ob[0] + 0x40;

        // 637
        this->allocVtx2[x].ob[1] = 
        this->allocVtx2[x+1].ob[1] = this->buttonsCopyErase[i] + tmp4;

        this->allocVtx2[x+2].ob[1] = 
        this->allocVtx2[x+3].ob[1] = this->allocVtx2[x].ob[1] - 0x10;

        this->allocVtx2[x+3].tc[0] = 0x800;
        this->allocVtx2[x+1].tc[0] = this->allocVtx2[x+3].tc[0];

        tmp4 -= 0x10;
    }

    // 1228
    this->allocVtx2[x+2].ob[0] = tmp;
    this->allocVtx2[x].ob[0] = this->allocVtx2[x+2].ob[0];

    this->allocVtx2[x+1].ob[0] = 
    this->allocVtx2[x+3].ob[0] = this->allocVtx2[x].ob[0] + 0x40;

    this->allocVtx2[x].ob[1] = 
    this->allocVtx2[x+1].ob[1] = this->buttonsOption[0] - 0x34;

    this->allocVtx2[x+2].ob[1] = 
    this->allocVtx2[x+3].ob[1] = this->allocVtx2[x].ob[1] - 0x10;

    this->allocVtx2[x+3].tc[0] = 0x800;
    this->allocVtx2[x+1].tc[0] = this->allocVtx2[x+3].tc[0];
    x += 4;

    // 672
    if (((this->menuIdx == 1) && (this->fileSelectStateIdx >= 2)) ||
        ((this->menuIdx == 2) && (this->openFileStateIdx == 3))) {
        
        if (this->menuIdx == 1) {
            if ((this->fileSelectStateIdx == 4) || (this->fileSelectStateIdx == 7) || (this->fileSelectStateIdx == 0x15)) {
                tmp = D_8081283C[this->btnIdx];
            } else if ((this->fileSelectStateIdx == 0x18) || (this->fileSelectStateIdx == 0xC)) {
                tmp = D_80812844[this->btnIdx];
            } else {
                tmp = D_80812830[this->btnIdx];
            }
        } else {
            tmp = D_80812848[this->yesNoButtonIdx];
        }
        this->allocVtx2[x].ob[0] = 
        this->allocVtx2[x+2].ob[0] = this->windowX - 0xA;

        this->allocVtx2[x+1].ob[0] = 
        this->allocVtx2[x+3].ob[0] = this->allocVtx2[x].ob[0] + 0x48;

        this->allocVtx2[x].ob[1] = 
        this->allocVtx2[x+1].ob[1] = this->allocVtx2[tmp].ob[1] + 4;

        this->allocVtx2[x+2].ob[1] = 
        this->allocVtx2[x+3].ob[1] = this->allocVtx2[x].ob[1] - 0x18;

        this->allocVtx2[x+3].tc[0] = 0x900;
        this->allocVtx2[x+1].tc[0] = this->allocVtx2[x+3].tc[0];
        this->allocVtx2[x+3].tc[1] = 0x300;
        this->allocVtx2[x+2].tc[1] = this->allocVtx2[x+3].tc[1];
    }

    this->allocVtx2[x+4].ob[0] = 
    this->allocVtx2[x+6].ob[0] = this->windowX + 0x3A;

    this->allocVtx2[x+5].ob[0] = 
    this->allocVtx2[x+7].ob[0] = this->allocVtx2[x+4].ob[0] + 0x80;

    this->allocVtx2[x+4].ob[1] = 
    this->allocVtx2[x+5].ob[1] = this->allocVtx2[D_80812830[this->warningFileIdx]].ob[1];

    this->allocVtx2[x+6].ob[1] = 
    this->allocVtx2[x+7].ob[1] = this->allocVtx2[x+4].ob[1] - 0x10;

    this->allocVtx2[x+7].tc[0] = 0x1000;
    this->allocVtx2[x+5].tc[0] = this->allocVtx2[x+7].tc[0];
}
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080D8CC.s")
#if 0

void func_8080B394(u16, s16*, s16*, s16*);

void func_8080D8CC(FileChooseContext* this, s16 fileSlot, s16 arg2) {
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

    if (this->fileNamesA[fileSlot]) {
        gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx2[D_8081284C[fileSlot]], 32, 0);
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, D_808128C8[arg2][0], D_808128C8[arg2][1], D_808128C8[arg2][2], this->fileNamesA[fileSlot]);

        for (i = 0, j = 0; i < 32; i += 4, j++) {
            func_80806DB0(this->state.gfxCtx, &kanfont->unk_3C88[this->fileNames[fileSlot][j]], i);
        }
    }

    if ((fileSlot == this->selectedFileIdx) || (fileSlot == this->copyDsFiletIdx)) {
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetCombineLERP(gfxCtx->polyOpa.p++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, this->fileInfoA[fileSlot]);
        gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx2[D_8081284C[fileSlot] + 0x24], 12, 0);

        func_8080B394(this->unk_1C9F6[fileSlot], &spD8[0], &spD8[1], &spD8[2]);

        for (i = 0, j = 0; i < 3; i++, j += 4) {
            func_80806DB0(this->state.gfxCtx, &kanfont->unk_3C88[spD8[i]], i);
        }

        gDPPipeSync(gfxCtx->polyOpa.p++);
        
        tmp = (this->heartStatus[fileSlot] == 0) ? 0 : 1;

        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetCombineLERP(gfxCtx->polyOpa.p++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, D_808128DC[tmp][0], D_808128DC[tmp][1], D_808128DC[tmp][2], this->fileInfoA[fileSlot]);
        gDPSetEnvColor(gfxCtx->polyOpa.p++, D_808128E8[tmp][0], D_808128E8[tmp][1], D_808128E8[tmp][2], 0xFF);

        tmp2 = 0;
        if (this->healthCapacities[0] < 0)
            tmp2 = this->healthCapacities[0] + 0xF;
        i = 0;
        j = 0;

        while (i < (tmp2 >> 4)) {
            gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx2[D_8081284C[fileSlot] + j + 0x30], 4, 0);
            gfxCtx->polyOpa.p = func_8080AFD0(gfxCtx->polyOpa.p, D_808128D4[tmp], 0x10, 0x10);
            i += 1;
            j += 4;
        }

        gDPPipeSync(gfxCtx->polyOpa.p++);
        for (i = 0, j = 0; i < 9; i++, j += 4) {
            if (gBitFlags[D_808128B4[i]] & this->questItems[i]) {
                gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx2[D_8081284C[fileSlot] + j + 0x80], 4, 0);
                gDPPipeSync(gfxCtx->polyOpa.p++);
                gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, D_80812878[i], D_8081288C[i], D_808128A0[i], this->fileInfoA[fileSlot]);
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
extern Gfx D_01000000[];
extern Gfx D_01015600[];
extern Gfx D_0101AD00[];
extern Gfx D_0101B680[];

void func_8080D8CC(FileChooseContext*, s16, s16);

void func_8080E074(FileChooseContext* this) {
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
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, this->fileSelectOpenTitleA[0]);
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);
    gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx2[vtx_cnt++], 4, 0);

    gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_80812908[gSaveContext.language][this->titleTexIdx], 
                        G_IM_FMT_IA, G_IM_SIZ_8b, 0x80, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    
    /*
    gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_80812908[gSaveContext.language][this->titleTexIdx]);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gfxCtx->polyOpa.p++);
    gDPLoadBlock(gfxCtx->polyOpa.p++, G_TX_LOADTILE, 0, 0, 1023, 128);
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetTile(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gfxCtx->polyOpa.p++, G_TX_RENDERTILE, 0, 0, 0x01FC, 0x003C);
    */

    gSP1Quadrangle(gfxCtx->polyOpa.p++, 0, 2, 3, 1, 0);
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, this->fileSelectOpenTitleA[1]);

    gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_80812908[gSaveContext.language][this->nextTitleTexIdx], 
                        G_IM_FMT_IA,G_IM_SIZ_8b, 0x80, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    /*
    gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_80812908[gSaveContext.language][this->nextTitleTexIdx]);
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
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, this->windowRGB[0], this->windowRGB[1], this->windowRGB[2], this->fileInfoA[i]);
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

        tmp = ((this->n64ddFlag == this->n64ddFlags[i]) || this->fileNameBoxesA[i] == 0) ? 0 : 1;

        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, D_8081275C[tmp][0], D_8081275C[tmp][1], D_8081275C[tmp][2], this->fileButtonsA[i]);
        
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
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, D_8081275C[tmp][0], D_8081275C[tmp][1], D_8081275C[tmp][2], this->fileNameBoxesA[i]);
        
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

        if (this->n64ddFlags[i] != 0) {
            gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, D_8081275C[tmp][0], D_8081275C[tmp][1], D_8081275C[tmp][2], this->fileNamesA[i]);
            
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

        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, D_8081275C[tmp][0], D_8081275C[tmp][1], D_8081275C[tmp][2], this->metalJointsA[i]);

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

        if (this->n64ddFlags[i] != 0) {
            gSP1Quadrangle(gfxCtx->polyOpa.p++, 16, 18, 19, 17, 0);
        }
    }

    for (i = 0; i < 3; i++) {
        tmp2 = ((this->n64ddFlag == this->n64ddFlags[i]) || (this->fileNameBoxesA[i] == 0)) ? 0 : 1;
        func_8080D8CC(this, i, tmp2);
    }

    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetCombineLERP(gfxCtx->polyOpa.p++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);

    gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx2[0x274], 20, 0);

    for (i = 0, unk_loop2 = 0; i < 2; i++, unk_loop2 += 0x4) {
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, this->windowRGB[0], this->windowRGB[1], this->windowRGB[2], this->buttonCopyEraseA[i]);

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
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, this->windowRGB[0], this->windowRGB[1], this->windowRGB[2], this->buttonYesQuitA[i]);

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
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, this->windowRGB[0], this->windowRGB[1], this->windowRGB[2], this->buttonOptionsA);

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
            gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, this->highlightColorRGBA[0], this->highlightColorRGBA[1], this->highlightColorRGBA[2], this->highlightColorRGBA[3]);

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

    if (this->fileWarningTexIdx >= 0) {
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetCombineLERP(gfxCtx->polyOpa.p++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, this->fileEmptyTextA);
        gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);

        gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_80812974[gSaveContext.language][this->fileWarningTexIdx], 
                            G_IM_FMT_IA, G_IM_SIZ_8b, 0x80, 0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, 
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        /*
        gDPSetTextureImage(gfxCtx->polyOpa.p++, G_IM_FMT_IA, G_IM_SIZ_16b, 1, D_80812974[gSaveContext.language][this->fileWarningTexIdx]);
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

/*f32 D_80813008 = 0.77999997139f;
f32 D_8081300C = 0.77999997139f;
f32 D_80813010 = 0.77999997139f;
f32 D_80813014 = 0.77999997139f;
f32 D_80813018 = 0.77999997139f;*/

void func_8080F560(FileChooseContext* this) {
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
            gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, this->windowRGB[0], this->windowRGB[1], this->windowRGB[2], this->windowA);
            gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);

            Matrix_Translate(0.0f, 0.0f, -93.5999984741f, MTXMODE_NEW);
            Matrix_Scale(0.77999997139f, 0.77999997139f, 0.77999997139f, MTXMODE_APPLY);
            if (this->windowRotX != 0.0f) {
                Matrix_RotateX(this->windowRotX / tmp2, 1);
            }

            gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(this->state.gfxCtx, "../z_file_choose.c", 0x8EA), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            
            gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx1[0], 32, 0);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_01046F00);
            gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx1[2], 32, 0);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_01047118);
            gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx1[4], 16, 0);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_01047328);

            gDPPipeSync(gfxCtx->polyOpa.p++);

            func_8080E074(this);
    }

    if ((this->fileSelectStateIdx >= 0x20) &&
        (this->fileSelectStateIdx < 0x24)) {
            gDPPipeSync(gfxCtx->polyOpa.p++);
            gDPSetCombineMode(gfxCtx->polyOpa.p++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
            gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, this->windowRGB[0], this->windowRGB[1], this->windowRGB[2], this->windowA);
            gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);

            Matrix_Translate(0.0f, 0.0f, -93.5999984741f, MTXMODE_NEW);
            Matrix_Scale(0.77999997139f, 0.77999997139f, 0.77999997139f, MTXMODE_APPLY);
            Matrix_RotateX((this->windowRotX - 314.0f) / tmp2, 1);

            gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(this->state.gfxCtx, "../z_file_choose.c", 0x90C), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            
            gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx1[0], 32, 0);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_01046F00);
            gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx1[2], 32, 0);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_01047118);
            gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx1[4], 16, 0);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_01047328);

            gDPPipeSync(gfxCtx->polyOpa.p++);

            func_80808000(this);
    }

    if ((this->fileSelectStateIdx >= 0x24) &&
        (this->fileSelectStateIdx < 0x28)) {
            gDPPipeSync(gfxCtx->polyOpa.p++);
            gDPSetCombineMode(gfxCtx->polyOpa.p++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
            gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, this->windowRGB[0], this->windowRGB[1], this->windowRGB[2], this->windowA);
            gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);

            Matrix_Translate(0.0f, 0.0f, -93.5999984741f, MTXMODE_NEW);
            Matrix_Scale(0.77999997139f, 0.77999997139f, 0.77999997139f, MTXMODE_APPLY);
            Matrix_RotateX((this->windowRotX - 314.0f) / tmp2, 1);

            gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(this->state.gfxCtx, "../z_file_choose.c", 0x921), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            
            gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx1[0], 32, 0);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_01046F00);
            gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx1[2], 32, 0);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_01047118);
            gSPVertex(gfxCtx->polyOpa.p++, &this->allocVtx1[4], 16, 0);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_01047328);

            gDPPipeSync(gfxCtx->polyOpa.p++);

            func_8080AF30(this);
    }

    gDPPipeSync(gfxCtx->polyOpa.p++);
    func_8080AF50(this, 0.0f, 0.0f, 64.0f);
    Graph_CloseDisps(dispRefs, this->state.gfxCtx, "../z_file_choose.c", 0x930);
}
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080FE2C.s")
#if 0
void func_8080FE2C(FileChooseContext* this) {
    s16 i;

    for (i = 0; i < 3; i++) {
        if (i != this->btnIdx) {
            this->fileButtonsA[i] -= 0x19;
            this->buttonCopyEraseA[0] = 
            this->buttonCopyEraseA[1] =
            this->buttonOptionsA = this->fileButtonsA[i];

            if (IS_VALID_SAVE(this->sram.read_buff + D_8012A4E0[0][i])) {
                this->fileNamesA[i] = this->fileNameBoxesA[i] = this->fileButtonsA[i];
                this->metalJointsA[i] -= 0x1F;
            }
        }
    }

    this->fileSelectOpenTitleA[0] -= 0x1F;
    this->fileSelectOpenTitleA[1] += 0x1F;
    this->actionTimer -= 1;
    if (this->actionTimer == 0) {
        this->actionTimer = 8;
        this->openFileStateIdx += 1;
        this->yesNoButtonIdx = 0;
    }
}
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080FF98.s")
// OK
#if 0

void func_8080FF98(FileChooseContext* this) {
    s16 tmp;

    tmp = ABS(this->buttonsFile[this->btnIdx] - D_80812A10[this->btnIdx]) / this->actionTimer;
    this->buttonsFile[this->btnIdx] += tmp;
    this->actionTimer -= 1;
    if ((this->actionTimer == 0) || 
        (this->buttonsFile[this->btnIdx] == D_80812A10[this->btnIdx])) {
            this->buttonsCopyErase[0] = this->buttonsCopyErase[1] = -0x18;
            this->actionTimer = 8;
            this->openFileStateIdx += 1;
    }
}
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8081009C.s")
// OK

void func_8081009C(FileChooseContext* this) {
    s16 tmp;

    this->fileInfoA[this->btnIdx] += 0x19;
    this->fileNameBoxesA[this->btnIdx] -= 0x32;
    if (this->fileNameBoxesA[this->btnIdx] <= 0) {
        this->fileNameBoxesA[this->btnIdx] = 0;
    }
    
    this->actionTimer -= 1;
    if (this->actionTimer == 0) {
        this->fileInfoA[this->btnIdx] = 0xC8;
        this->actionTimer = 8;
        this->openFileStateIdx += 1;
    }
    tmp = this->fileInfoA[this->btnIdx];
    this->buttonYesQuitA[1] = tmp;
    this->buttonYesQuitA[0] = tmp;
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8081017C.s")
// OK

void func_8081017C(FileChooseContext* this) {
    u32 pad;
    Input* controller1 = &this->state.input[0];

    if (CHECK_PAD(controller1->press, START_BUTTON) ||
         (CHECK_PAD(controller1->press, A_BUTTON))) {
            if (this->yesNoButtonIdx == 0) {
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

    if (ABS(this->stickY) >= 0x1E) {
        Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->yesNoButtonIdx ^= 1;
    }
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80810354.s")
// OK

void func_80810354(FileChooseContext* this) {
    s16 tmp;

    this->fileInfoA[this->btnIdx] -= 0x19;
    this->fileNameBoxesA[this->btnIdx] += 0x19;
    this->actionTimer -= 1;
    if (this->actionTimer == 0) {
        this->buttonsCopyErase[0] = 
        this->buttonsCopyErase[1] = 0;
        this->fileNameBoxesA[this->btnIdx] = 0xC8;
        this->fileInfoA[this->btnIdx] = 0;
        this->nextTitleTexIdx = 0;
        this->actionTimer = 8;
        this->openFileStateIdx += 1;
    }
    tmp = this->fileInfoA[this->btnIdx];
    this->buttonYesQuitA[1] = tmp;
    this->buttonYesQuitA[0] = tmp;
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80810440.s")
#if 0
void func_80810440(FileChooseContext* this) {
    s32 tmp1;
    s16 temp;
    s16 i;
    Sram* sram = &this->sram;

    tmp1 = ABS(this->buttonsFile[this->btnIdx]);
    temp = tmp1 / this->actionTimer;
    this->buttonsFile[this->btnIdx] = this->buttonsFile[this->btnIdx] - temp;
    if (this->buttonsFile[this->btnIdx] <= 0) {
        this->buttonsFile[this->btnIdx] = 0;
    }

    for (i = 0; i < 3; i++) {
        if (i != this->btnIdx) {
            this->fileButtonsA[i] += 0x19;
            if (this->fileButtonsA[i] >= 0xC8) {
                this->fileButtonsA[i] = 0xC8;
            }

            tmp1 = this->fileButtonsA[i];
            this->buttonOptionsA = tmp1;
            this->buttonCopyEraseA[0] = tmp1;
            this->buttonCopyEraseA[1] = tmp1;
            if (IS_VALID_SAVE(sram->read_buff + D_8012A4E0[0][i])) {
                    this->fileNamesA[i] = this->fileButtonsA[i];
                    this->metalJointsA[i] += 0x1F;
                    this->fileNameBoxesA[i] = this->fileButtonsA[i];
            }
        }
    }

    this->fileSelectOpenTitleA[0] -= 0x1F;
    this->fileSelectOpenTitleA[1] += 0x1F;
    this->actionTimer -= 1;
    if (this->actionTimer == 0) {
        this->fileSelectOpenTitleA[0] = 0xFF;
        this->fileSelectOpenTitleA[1] = 0;
        this->titleTexIdx = this->nextTitleTexIdx;
        this->actionTimer = 8;
        this->menuIdx = 1;
        this->fileSelectStateIdx = 2;
        this->nextFileSelectStateIdx = 2;
        this->openFileStateIdx = 0;
    }
}
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80810698.s")
// OK
#if 0

void func_80810698(FileChooseContext* this) {
    D_80812724 += VREG(10);
    if (D_80812724 >= 0xFF) {
        D_80812724 = 0xFF;
        this->openFileStateIdx += 1;
    }
}
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808106F4.s")
#if 0
void func_808106F4(FileChooseContext* this) {
    s16 old_magic;
    u16 temp_a0;
    SaveContext* saveCtx = &gSaveContext;

    if (this->btnIdx == 0) {
        Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        saveCtx->fileNum = this->btnIdx;
        func_800A8484(&this->sram);
        gSaveContext.gameMode = 0;
        SET_NEXT_GAMESTATE(&this->state, Select_Init, SelectContext)
        this->state.running = 0;
    } else {
        Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        saveCtx->fileNum = this->btnIdx;
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
void func_8081097C(FileChooseContext* this) {
    D_80812A18[this->openFileStateIdx](this);
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808109B8.s")
#if 0
void func_808109B8(FileChooseContext* this) {
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
    Matrix_RotateX(this->windowRotX / 100.0f, 1);

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

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80810DAC.s")
// OK
void func_80810DAC(FileChooseContext* this) {
    s32 pad;
    Input* controller1 = &this->state.input[0];
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, this->state.gfxCtx, "../z_file_choose.c", 0xB52);
    this->n64ddFlag = 0;

    gSPSegment(gfxCtx->polyOpa.p++, 0x00, 0x00000000);
    gSPSegment(gfxCtx->polyOpa.p++, 0x01, this->staticSegment);
    gSPSegment(gfxCtx->polyOpa.p++, 0x02, this->parameterSegment);

    func_80095248(this->state.gfxCtx, 0, 0, 0);

    this->stickX = controller1->rel.in.x;
    this->stickY = controller1->rel.in.y;

    if (this->stickX < -30) {
        if (this->idxXOff == -1) {
            this->stickXTimer -= 1;
            if (this->stickXTimer < 0) {
                this->stickXTimer = 2;
            } else {
                this->stickX = 0;
            }
        } else {
            this->stickXTimer = 10;
            this->idxXOff = -1;
        }
    } else {
        if (this->stickX >= 31) {
            if (this->idxXOff == 1) {
                this->stickXTimer -= 1;
                if (this->stickXTimer < 0) {
                    this->stickXTimer = 2;
                } else {
                    this->stickX = 0;
                }
            } else {
                this->stickXTimer = 10;
                this->idxXOff = 1;
            }
        } else {
            this->idxXOff = 0;
        }
    }

    if (this->stickY < -30) {
        if (this->idxYOff == -1) {
            this->stickYTimer -= 1;
            if (this->stickYTimer < 0) {
                this->stickYTimer = 2;
            } else {
                this->stickY = 0;
            }
        } else {
            this->stickYTimer = 10;
            this->idxYOff = -1;
        }
    } else {
        if (this->stickY >= 31) {
            if (this->idxYOff == 1) {
                this->stickYTimer -= 1;
                if (this->stickYTimer < 0) {
                    this->stickYTimer = 2;
                } else {
                    this->stickY = 0;
                }
            } else {
                this->stickYTimer = 10;
                this->idxYOff = 1;
            }
        } else {
            this->idxYOff = 0;
        }
    }

    this->fileEmptyTextA = 0;
    func_8080BFE4(this);
    D_80812A44[this->menuIdx](this);
    D_80812A38[this->menuIdx](this);

    if ((this->fileSelectStateIdx < 0x24) || (this->fileSelectStateIdx >= 0x28)) {
        func_800944C4(this->state.gfxCtx);

        gDPSetCombineLERP(gfxCtx->polyOpa.p++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0x64, 0xFF, 0xFF, this->decideCancelTextA);
        gDPSetEnvColor(gfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);

        gDPLoadTextureBlock(gfxCtx->polyOpa.p++, D_80812A50[gSaveContext.language], G_IM_FMT_IA,
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
    gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0x00, 0x00, 0x00, D_80812724);
    gDPFillRectangle(gfxCtx->polyOpa.p++, 0, 0, gScreenWidth - 1, gScreenHeight - 1);

    Graph_CloseDisps(dispRefs, this->state.gfxCtx, "../z_file_choose.c", 0xBDB);
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808113A8.s")
#if 0
void func_8006FC88(s32, EnvironmentContext*, SkyboxContext*);

void func_808113A8(FileChooseContext* this) {
    Sram* sram = &this->sram;
    EnvironmentContext* kankyo = &this->kankyo;

    func_800A9CD4(this, sram);

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
    this->yesNoButtonIdx = 0;

    this->btnIdx = 
    this->openFileStateIdx = 
    this->selectedFileIdx = 
    this->copyDsFiletIdx = 
    this->yesNoButtonIdx;
    
    this->unk_1CAAE[0] = 2;
    this->unk_1CAAE[1] = 3;
    this->titleTexIdx = 0;
    this->nextTitleTexIdx = 1;
    this->highlightColorAIncrease = 1;
    this->unk_1CAAC = 0xC;
    this->highlightColorRGBA[0] = 0x9B;
    this->highlightColorRGBA[1] = 0xFF;
    this->highlightColorRGBA[2] = 0xFF;
    this->highlightColorRGBA[3] = 0x46;
    this->fileSelectStateIdx = 0;
    this->windowRotX = 0.0f;

    this->stickXTimer = 0;
    this->idxXOff = this->stickXTimer;

    this->stickYTimer = 0;
    this->idxYOff = this->stickYTimer;

    this->kbdCharIdx = 0;

    this->kbdCharX = this->kbdCharY = this->kbdCharIdx;

    this->kbdButtonIdx = 0x63;
    this->windowRGB[0] = 0x64;
    this->windowRGB[1] = 0x96;
    this->windowRGB[2] = 0xFF;
    
    this->windowA = 
    this->fileSelectOpenTitleA[0] = this->fileSelectOpenTitleA[1] = 
    this->fileButtonsA[0] = this->fileButtonsA[1] = this->fileButtonsA[2] = 
    this->fileNameBoxesA[0] = this->fileNameBoxesA[1] = this->fileNameBoxesA[2] = 
    this->fileNamesA[0] = this->fileNamesA[1] = this->fileNamesA[2] = 
    this->metalJointsA[0] = this->metalJointsA[1] = this->metalJointsA[2] = 
    this->fileInfoA[0] = this->fileInfoA[1] = this->fileInfoA[2] = 
    this->buttonCopyEraseA[0] = this->buttonCopyEraseA[1] = 
    this->buttonYesQuitA[0] = this->buttonYesQuitA[1] = 
    this->buttonOptionsA = 
    this->newFileNameBoxA = 
    this->decideCancelTextA = 
    this->fileEmptyTextA = 0;

    this->windowX = 6;
    this->actionTimer = 8;
    this->fileWarningTexIdx = -1;
    
    this->warningFileIdx = 
    this->buttonsFile[0] = 
    this->buttonsFile[1] = 
    this->buttonsFile[2] = 
    this->buttonsCopyErase[0] = 
    this->buttonsCopyErase[1] = 
    this->buttonsOption[0] = 
    this->fileNamesY[0] = 
    this->fileNamesY[1] = 
    this->fileNamesY[2] = 0;


    this->unk_1CAD6[0] = 0;
    this->unk_1CAD6[1] = 3;
    this->unk_1CAD6[2] = 6;
    this->unk_1CAD6[3] = 8;
    this->unk_1CAD6[4] = 10;
    func_800B3840(0);

    gSaveContext.environmentTime = 0;
    gSaveContext.dayTime = 0;
    func_800B0E50(this, &this->skybox, 1);

    D_8011FB40 = 10;
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

    gSaveContext.buttonStatus[0] =
    gSaveContext.buttonStatus[1] = 
    gSaveContext.buttonStatus[2] = 
    gSaveContext.buttonStatus[3] = 
    gSaveContext.buttonStatus[4] = 0;

    this->n64ddFlags[0] = 
    this->n64ddFlags[1] = 
    this->n64ddFlags[2] = 
    this->heartStatus[0] = 
    this->heartStatus[1] = 
    this->heartStatus[2] = 0;

    Sram_ReadWrite(0x8000000, sram->read_buff, 0x8000, 0);
    gSaveContext.language = ((u8*)sram->read_buff)[2];
    if (gSaveContext.language >= 3) {
        gSaveContext.language = 0;
        ((u8*)sram->read_buff)[2] = 0;
    }
}
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80811A18.s")
// OK
void func_80811A18(FileChooseContext* this) {
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80811A20.s")
// OK
#if 0
void func_80810DAC(FileChooseContext*);
void func_80811A18(FileChooseContext*);

void func_80811A20(FileChooseContext* this) {
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
#endif