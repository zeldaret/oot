#include <ultra64.h>
#include <global.h>
#include <z64.h>
#include <color.h>
#include <regs.h>

#define BUTTON_C_RIGHT        0x0001
#define BUTTON_C_LEFT         0x0002
#define BUTTON_C_DOWN         0x0004
#define BUTTON_C_UP           0x0008
#define BUTTON_R              0x0010
#define BUTTON_L              0x0020
#define BUTTON_D_RIGHT        0x0100
#define BUTTON_D_LEFT         0x0200
#define BUTTON_D_DOWN         0x0400
#define BUTTON_D_UP           0x0800
#define BUTTON_START          0x1000
#define BUTTON_Z              0x2000
#define BUTTON_B              0x4000
#define BUTTON_A              0x8000

#define REG_GROUP_TOTAL 29
#define REG_N 96
#define PAGE_N 16

typedef struct
{
    u8 x;
    u8 y;
    u8 colorId;
    char text[0x15];
} PrintTextBuffer;

typedef struct
{
    u16 push;
    u16 held;
} InputCombo;

GameInfo*       gGameInfo;
int             D_8015FA94; //no known symbols
PrintTextBuffer D_8015FA98[0x16];

s16 D_8011E0B0 = 0; //PrintTextBuffer index
Color_RGBA8 printTextColors[] = {
    { 0xFF, 0xFF, 0x20, 0xC0 },
    { 0xFF, 0x96, 0x80, 0xC0 },
    { 0x80, 0x60, 0x00, 0x40 },
    { 0xC0, 0x80, 0x10, 0x80 },
    { 0xFF, 0xC0, 0x20, 0x80 },
    { 0xE6, 0xE6, 0xDC, 0x40 },
    { 0x80, 0x96, 0xFF, 0x80 },
    { 0x80, 0xFF, 0x20, 0x80 },
};

InputCombo inputCombos[REG_GROUP_TOTAL] = {
    { BUTTON_L, BUTTON_C_UP },
    { BUTTON_L, BUTTON_C_LEFT },
    { BUTTON_L, BUTTON_C_DOWN },
    { BUTTON_L, BUTTON_A },
    { BUTTON_R, BUTTON_C_DOWN },
    { BUTTON_L, BUTTON_C_RIGHT },
    { BUTTON_L, BUTTON_R },
    { BUTTON_L, BUTTON_D_LEFT },
    { BUTTON_L, BUTTON_D_RIGHT },
    { BUTTON_L, BUTTON_D_UP },
    { BUTTON_L, BUTTON_B },
    { BUTTON_L, BUTTON_Z },
    { BUTTON_L, BUTTON_D_DOWN },
    { BUTTON_R, BUTTON_A },
    { BUTTON_R, BUTTON_B },
    { BUTTON_R, BUTTON_Z },
    { BUTTON_R, BUTTON_L },
    { BUTTON_R, BUTTON_C_UP },
    { BUTTON_R, BUTTON_C_RIGHT },
    { BUTTON_R, BUTTON_D_LEFT },
    { BUTTON_R, BUTTON_C_LEFT },
    { BUTTON_R, BUTTON_START },
    { BUTTON_L, BUTTON_START },
    { BUTTON_R, BUTTON_D_RIGHT },
    { BUTTON_R, BUTTON_D_UP },
    { BUTTON_START, BUTTON_R },
    { BUTTON_START, BUTTON_A },
    { BUTTON_START, BUTTON_B },
    { BUTTON_START, BUTTON_C_RIGHT },
};

char regChar[] = " SOPQMYDUIZCNKXcsiWAVHGmnBdkb";

//initialize GameInfo
void func_800636C0()
{
    s32 i;

    gGameInfo = (GameInfo*)SystemArena_MallocDebug(sizeof(GameInfo), "../z_debug.c", 0x104);
    gGameInfo->reg_page = 0;
    gGameInfo->reg_group = 0;
    gGameInfo->reg_cur = 0;
    gGameInfo->dpad_last = 0;
    gGameInfo->repeat = 0;
    for (i = 0; i < 0xAE0; i++)
    {
        gGameInfo->data[i] = 0;
    }
}

//Called when free movement is active. 
//8011D394 to enable camera debugger
void func_8006375C(s32 arg0, s32 arg1, float* d_80855320)
{

}

#ifdef NON_MATCHING //regalloc
//Copy Camera Debugger Text
void func_8006376C(u8 x, u8 y, u8 colorId, const char* text)
{
    PrintTextBuffer* buf;
    char* next_text;
    s16 i; //v1

    buf = &D_8015FA98[D_8011E0B0];
    if (D_8011E0B0 < 0x16) {

        buf->x = x;
        buf->y = y;
        buf->colorId = colorId;

        i = 0;
        next_text = buf->text + 1;

        if (*buf->text = *text++) {
            do if (i++ > 0x14) {
                break;
            } while (*next_text++ = *text++);
        }

        *next_text = '\0';
        D_8011E0B0++;
    }
}

#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_debug/func_8006376C.s")
#endif 

//Draw Text
void func_80063828(GfxPrint* gfxPrint)
{
    s32 i;
    Color_RGBA8* color;
    PrintTextBuffer* buffer;
    char* text;

    i = 0;
    if (D_8011E0B0 > 0)
    {
        do
        {
            buffer = &D_8015FA98[i];
            text = buffer->text;

            color = &printTextColors[buffer->colorId];
            GfxPrint_SetColor(gfxPrint, color->r, color->g, color->b, color->a);
            GfxPrint_SetPos(gfxPrint, buffer->x, buffer->y);
            GfxPrint_Printf(gfxPrint, "%s", text); 
            i += 1;
        } while (i < D_8011E0B0);
    }
}

//Edit REG
void func_8006390C(Input* input) {

    s32 dpad;
    s32 reg_group;
    s32 increment;
    InputCombo* input_combo;
    s32 i;

    reg_group = (gGameInfo->reg_group * (REG_N / PAGE_N) + gGameInfo->reg_page) * PAGE_N - PAGE_N;
    dpad = input->raw.pad & 0xF00;
    if (!~(input->raw.pad | ~BUTTON_L) ||
        !~(input->raw.pad | ~BUTTON_R) ||
        !~(input->raw.pad | ~BUTTON_START)) {
        input_combo = inputCombos;
        for (i = 0; i < REG_GROUP_TOTAL; i++)
        {
            if (~(~input_combo->push | input->raw.pad) ||
                ~(~input_combo->held | input->padPressed)) {
                input_combo++;
            }
            else
                break;
        }

        if (i < REG_GROUP_TOTAL) {
            if (i == gGameInfo->reg_group) {
                gGameInfo->reg_page = (gGameInfo->reg_page + 1) % 7;
                return;
            }
            gGameInfo->reg_group = i;
            gGameInfo->reg_page = 0;
        }
    }
    else {
        switch (gGameInfo->reg_page - 1)
        {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:

            if (dpad == gGameInfo->dpad_last) {
                gGameInfo->repeat--;
                if (gGameInfo->repeat < 0) {
                    gGameInfo->repeat = 1;
                }
                else {
                    dpad ^= gGameInfo->dpad_last;
                }
            }
            else {
                gGameInfo->repeat = 0x10;
                gGameInfo->dpad_last = dpad;
            }

            increment =
                (dpad & BUTTON_D_RIGHT) ? (
                    !~(input->raw.pad | ~(BUTTON_A | BUTTON_B)) ? 1000 :
                    !~(input->raw.pad | ~BUTTON_A) ? 100 :
                    !~(input->raw.pad | ~BUTTON_B) ? 10 : 1) :
                    (dpad & BUTTON_D_LEFT) ? (
                        !~(input->raw.pad | ~(BUTTON_A | BUTTON_B)) ? -1000 :
                        !~(input->raw.pad | ~BUTTON_A) ? -100 :
                        !~(input->raw.pad | ~BUTTON_B) ? -10 : -1) :
                0;

            gGameInfo->data[gGameInfo->reg_cur + reg_group] += increment;
            if (dpad & BUTTON_D_UP) {
                gGameInfo->reg_cur--;
                if (gGameInfo->reg_cur < 0) {
                    gGameInfo->reg_cur = PAGE_N - 1;
                }
            }
            else if (dpad & BUTTON_D_DOWN) {
                gGameInfo->reg_cur++;
                if (gGameInfo->reg_cur >= PAGE_N) {
                    gGameInfo->reg_cur = 0;
                }
            }
            if (iREG(0)) {
                iREG(0) = 0;
                func_800AA000(0, iREG(1), iREG(2), iREG(3));
            }
        }
    }
}

//Draw Memory Viewer
void func_80063C04(GfxPrint* gfxPrint)
{
    s32 i;
    s32 page;
    s32 reg_group;
    s32 test; //removing affects stack
    char reg_name[3];

    page = (gGameInfo->reg_page * PAGE_N) - PAGE_N;
    reg_group = (gGameInfo->reg_group * (REG_N / PAGE_N) + gGameInfo->reg_page) * PAGE_N - PAGE_N;

    //set up register name string
    reg_name[0] = 'R';
    reg_name[1] = regChar[gGameInfo->reg_group]; //r_group type char
    reg_name[2] = '\0';
    GfxPrint_SetColor(gfxPrint, 0, 0x80, 0x80, 0x80);

    for (i = 0; i != PAGE_N; i++)
    {
        if (i == gGameInfo->reg_cur)
        {
            GfxPrint_SetColor(gfxPrint, 0, 0xff, 0xff, 0xff);
        }
        GfxPrint_SetPos(gfxPrint, 3, i + 5);
        GfxPrint_Printf(gfxPrint, "%s%02d%6d", &reg_name, page + i, gGameInfo->data[i + reg_group]);
        if (i == gGameInfo->reg_cur)
        {
            GfxPrint_SetColor(gfxPrint, 0, 0x80, 0x80, 0x80);
        }
    }
}

void func_80063D7C(GraphicsContext* gfxCtx) {
    Gfx* sp7C;
    Gfx* sp78;
    Gfx* temp_ret;
    void* unk2[6];
    GfxPrint gfxPrint;
    void* unk[2];
    Gfx* dl_frame[4]; //stores state of GfxCtx next ptrs

    func_800C6AC4(&dl_frame, gfxCtx, "../z_debug.c", 0x274);
    GfxPrint_Ctor(&gfxPrint);
    sp78 = gfxCtx->polyOpa.p;
    temp_ret = func_800C6C20(gfxCtx->polyOpa.p);
    gSPDisplayList(gfxCtx->overlay.p++, temp_ret);
    GfxPrint_Open(&gfxPrint, temp_ret);

    if ((OREG(0) == 1) || (OREG(0) == 8)) {
        func_80063828(&gfxPrint);
    }

    if (gGameInfo->reg_page != 0) {
        func_80063C04(&gfxPrint);
    }

    D_8011E0B0 = 0;
    sp7C = GfxPrint_Close(&gfxPrint);
    gSPEndDisplayList(sp7C++);
    func_800C6C28(sp78, sp7C);
    gfxCtx->polyOpa.p = sp7C;
    if (0);
    func_800C6B54(&dl_frame, gfxCtx, "../z_debug.c", 0x298);
    GfxPrint_Dtor(&gfxPrint);
}
