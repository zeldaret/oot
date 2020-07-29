#include <ultra64.h>
#include <global.h>

// "Get Item" Model Draw Functions
void func_800694E4(GlobalContext* globalCtx, s16 drawId);
void func_800695C0(GlobalContext* globalCtx, s16 drawId);
void func_8006969C(GlobalContext* globalCtx, s16 drawId);
void func_80069880(GlobalContext* globalCtx, s16 drawId);
void func_80069AC8(GlobalContext* globalCtx, s16 drawId);
void func_80069CF0(GlobalContext* globalCtx, s16 drawId);
void func_80069EB0(GlobalContext* globalCtx, s16 drawId);
void func_8006A060(GlobalContext* globalCtx, s16 drawId);
void func_8006A158(GlobalContext* globalCtx, s16 drawId);
void func_8006A2A0(GlobalContext* globalCtx, s16 drawId);
void func_8006A4B0(GlobalContext* globalCtx, s16 drawId);
void func_8006A5F0(GlobalContext* globalCtx, s16 drawId);
void func_8006A73C(GlobalContext* globalCtx, s16 drawId);
void func_8006A88C(GlobalContext* globalCtx, s16 drawId);
void func_8006A9CC(GlobalContext* globalCtx, s16 drawId);
void func_8006AAA8(GlobalContext* globalCtx, s16 drawId);
void func_8006ABEC(GlobalContext* globalCtx, s16 drawId);
void func_8006ACE4(GlobalContext* globalCtx, s16 drawId);
void func_8006AE40(GlobalContext* globalCtx, s16 drawId);
void func_8006AF9C(GlobalContext* globalCtx, s16 drawId);
void func_8006B124(GlobalContext* globalCtx, s16 drawId);
void func_8006B24C(GlobalContext* globalCtx, s16 drawId);
void func_8006B3C0(GlobalContext* globalCtx, s16 drawId);
void func_8006B54C(GlobalContext* globalCtx, s16 drawId);
void func_8006B6E4(GlobalContext* globalCtx, s16 drawId);
void func_8006B870(GlobalContext* globalCtx, s16 drawId);

typedef struct {
    /* 0x00 */ void (*drawFunc)(GlobalContext*, s16);
    /* 0x04 */ u32 dlists[8];
} DrawItemTableEntry; // size = 0x24

// TODO: use symbols for these dlists once objects are in C
DrawItemTableEntry sDrawItemTable[] = {
    { func_8006AAA8, { 0x06000670, 0x06000750 } },
    { func_8006A9CC, { 0x06000800 } },
    { func_8006ABEC, { 0x06000A80, 0x06000AE0 } },
    { func_8006ABEC, { 0x06000A90, 0x06000AE0 } },
    { func_8006ABEC, { 0x06000AA0, 0x06000AE0 } },
    { func_8006ABEC, { 0x06000AB0, 0x06000AE0 } },
    { func_8006ABEC, { 0x06000AC0, 0x06000AE0 } },
    { func_8006ABEC, { 0x06000AD0, 0x06000AE0 } },
    { func_8006A73C, { 0x060000E0 } },
    { func_8006AAA8, { 0x06000CA0, 0x06000F08 } },
    { func_8006A158, { 0x06000960, 0x06000C50 } },
    { func_8006A060, { 0x06000CB0, 0x06000E18 } },
    { func_8006A060, { 0x06001AF0, 0x06000E18 } },
    { func_8006A060, { 0x06002830, 0x06000E18 } },
    { func_8006A060, { 0x06003610, 0x06000E18 } },
    { func_8006A060, { 0x06004330, 0x06000E18 } },
    { func_8006A060, { 0x06005220, 0x06000E18 } },
    { func_8006A5F0, { 0x06000E90 } },
    { func_8006ABEC, { 0x06001290, 0x06001470 } },
    { func_8006ABEC, { 0x06001290, 0x06001590 } },
    { func_8006B124, { 0x06000990, 0x060008D0, 0x06000930, 0x06000A80 } },
    { func_8006B124, { 0x06000990, 0x060008F0, 0x06000950, 0x06000A80 } },
    { func_8006B124, { 0x06000990, 0x06000910, 0x06000970, 0x06000A80 } },
    { func_8006B124, { 0x06000B90, 0x06000AD0, 0x06000B30, 0x06000D98 } },
    { func_8006B124, { 0x06000B90, 0x06000AF0, 0x06000B50, 0x06000D98 } },
    { func_8006B124, { 0x06000B90, 0x06000B10, 0x06000B70, 0x06000D98 } },
    { func_8006A9CC, { 0x060004D0 } },
    { func_8006A9CC, { 0x060003C0 } },
    { func_8006A9CC, { 0x06000A50 } },
    { func_8006A9CC, { 0x06000580 } },
    { func_8006A9CC, { 0x06000EE0 } },
    { func_8006A9CC, { 0x060009A0 } },
    { func_8006A9CC, { 0x06000B70 } },
    { func_8006B870,
      { 0x06001850, 0x06001750, 0x06001790, 0x060019A0, 0x060017B0, 0x06001A28, 0x060017D0, 0x06001AD8 } },
    { func_8006B870,
      { 0x06001850, 0x06001770, 0x060017F0, 0x060019A0, 0x06001810, 0x06001A28, 0x06001830, 0x06001AD8 } },
    { func_8006A9CC, { 0x06000F60 } },
    { func_8006A9CC, { 0x06000340 } },
    { func_8006A9CC, { 0x06000B90 } },
    { func_8006A9CC, { 0x06001830 } },
    { func_800694E4, { 0x060004B0 } },
    { func_8006A060, { 0x06000FD0, 0x06001008 } },
    { func_8006B54C, { 0x06000AA0, 0x06000A20, 0x06000A60, 0x06000CC8 } },
    { func_8006B54C, { 0x06000AA0, 0x06000A40, 0x06000A80, 0x06000CC8 } },
    { func_8006A9CC, { 0x06000C70 } },
    { func_8006A9CC, { 0x06000750 } },
    { func_8006A9CC, { 0x06001240 } },
    { func_8006AAA8, { 0x060008C0, 0x06000AF8 } },
    { func_8006AAA8, { 0x06001060, 0x06001288 } },
    { func_8006AAA8, { 0x06000AC0, 0x06000D50 } },
    { func_8006A9CC, { 0x060007E0 } },
    { func_8006A9CC, { 0x06000940 } },
    { func_8006A9CC, { 0x06000A30 } },
    { func_8006A9CC, { 0x06000990 } },
    { func_8006AAA8, { 0x06000D80, 0x06001010 } },
    { func_8006A2A0, { 0x06001438, 0x06001270, 0x060012D0, 0x06001790, 0x06001330, 0x06001848 } },
    { func_8006A2A0, { 0x06001438, 0x06001290, 0x060012F0, 0x06001790, 0x06001388, 0x06001848 } },
    { func_8006A2A0, { 0x06001438, 0x060012B0, 0x06001310, 0x06001790, 0x060013E0, 0x06001848 } },
    { func_80069CF0, { 0x06000FB0, 0x060011C8 } },
    { func_8006AAA8, { 0x06000CC0, 0x06000D60 } },
    { func_8006B124, { 0x06001560, 0x060014E0, 0x06001520, 0x06001608 } },
    { func_8006B124, { 0x06001560, 0x06001500, 0x06001540, 0x06001608 } },
    { func_8006A9CC, { 0x06000580 } },
    { func_8006A88C, { 0x06000600 } },
    { func_8006A9CC, { 0x060007E0 } },
    { func_8006A9CC, { 0x060009D0 } },
    { func_8006A9CC, { 0x060008E0 } },
    { func_8006A4B0, { 0x06000600 } },
    { func_8006ACE4, { 0x06001630, 0x060015F0, 0x06001948 } },
    { func_8006AAA8, { 0x060008E0, 0x06000AE0 } },
    { func_8006AAA8, { 0x060008E0, 0x06000B58 } },
    { func_8006AAA8, { 0x06001630, 0x06001A98 } },
    { func_8006A9CC, { 0x06000810 } },
    { func_8006B24C, { 0x06001540, 0x060014C0, 0x06001860, 0x06001500 } },
    { func_8006B24C, { 0x06001540, 0x060014E0, 0x06001860, 0x06001520 } },
    { func_8006ACE4, { 0x060005E0, 0x06000560, 0x06000768 } },
    { func_8006ACE4, { 0x060005E0, 0x06000580, 0x06000768 } },
    { func_8006ACE4, { 0x060005E0, 0x060005A0, 0x06000768 } },
    { func_8006ACE4, { 0x060005E0, 0x060005C0, 0x06000768 } },
    { func_8006A9CC, { 0x060009D0 } },
    { func_8006AAA8, { 0x06000BC0, 0x06000E58 } },
    { func_8006AAA8, { 0x060013D0, 0x060016B0 } },
    { func_8006AAA8, { 0x06000680, 0x06000768 } },
    { func_8006A9CC, { 0x060008B0 } },
    { func_8006A9CC, { 0x060009D0 } },
    { func_8006AAA8, { 0x06000F00, 0x06001188 } },
    { func_8006A4B0, { 0x060006E0 } },
    { func_8006AAA8, { 0x060009C0, 0x06000AF0 } },
    { func_8006A9CC, { 0x06000960 } },
    { func_800695C0, { 0x06000440 } },
    { func_8006AAA8, { 0x06000D60, 0x06001060 } },
    { func_800694E4, { 0x060014F8 } },
    { func_800694E4, { 0x06001398 } },
    { func_800694E4, { 0x060010E8 } },
    { func_8006ACE4, { 0x06001630, 0x06001610, 0x06001948 } },
    { func_8006A9CC, { 0x06001850 } },
    { func_8006AE40, { 0x06000AE0, 0x06000CA0, 0x06000D00 } },
    { func_8006AE40, { 0x06000AE0, 0x06000CC0, 0x06000D00 } },
    { func_8006AE40, { 0x06000AE0, 0x06000CE0, 0x06000D00 } },
    { func_80069EB0, { 0x06000330, 0x06000438 } },
    { func_8006AF9C, { 0x06000920, 0x060009E0, 0x06000A40 } },
    { func_8006AF9C, { 0x06000920, 0x06000A00, 0x06000A40 } },
    { func_8006AF9C, { 0x06000920, 0x06000A20, 0x06000A40 } },
    { func_8006969C, { 0x06000C60, 0x06000F08 } },
    { func_8006AAA8, { 0x06000830, 0x06000B20 } },
    { func_8006AAA8, { 0x06000830, 0x06000A70 } },
    { func_80069880, { 0x06000990, 0x06000BE0, 0x06000CF0, 0x06000950 } },
    { func_80069AC8, { 0x06000BD0, 0x06000DB8, 0x06000EF0 } },
    { func_8006B6E4, { 0x06000B70, 0x06000AF0, 0x06000F48, 0x06000B30, 0x06000FF0 } },
    { func_8006B3C0, { 0x060005E0, 0x060004A0, 0x060006F0, 0x06000540 } },
    { func_8006B3C0, { 0x060005E0, 0x060004C0, 0x060006F0, 0x06000560 } },
    { func_8006B3C0, { 0x060005E0, 0x060004E0, 0x060006F0, 0x06000580 } },
    { func_80069880, { 0x06000990, 0x06000BE0, 0x06000CF0, 0x06000970 } },
    { func_8006B24C, { 0x060005E0, 0x06000500, 0x060006F0, 0x060005A0 } },
    { func_8006B24C, { 0x060005E0, 0x06000520, 0x060006F0, 0x060005C0 } },
    { func_8006B6E4, { 0x06000B70, 0x06000B10, 0x06000F48, 0x06000B50, 0x06000FF0 } },
    { func_8006A9CC, { 0x06000960 } },
    { func_80069EB0, { 0x06004DB0, 0x06004EB8 } },
};
/**
 * Draw "Get Item" Model
 * Calls the corresponding draw function for the given draw ID
 */
void func_800694A0(GlobalContext* globalCtx, s16 drawId) {
    sDrawItemTable[drawId].drawFunc(globalCtx, drawId);
}

// All remaining functions in this file are draw functions referenced in the table and called by the function above

void func_800694E4(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 556);

    func_80093BA8(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 560),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 565);
}

void func_800695C0(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 572);

    gfxCtx->polyXlu.p = Gfx_CallSetupDL(gfxCtx->polyXlu.p, 5);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 576),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[0]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 581);
}

void func_8006969C(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 588);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 592),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0 * (globalCtx->state.frames * 0),
                                0 * (globalCtx->state.frames * 0), 16, 32, 1, 1 * (globalCtx->state.frames * 1),
                                1 * -(globalCtx->state.frames * 8), 16, 32));
    Matrix_Push();
    Matrix_Translate(-8.0f, -2.0f, 0.0f, MTXMODE_APPLY);
    func_800D1FD4(&globalCtx->mf_11DA0);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 615),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[1]);
    Matrix_Pull();

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 621);
}

void func_80069880(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 628);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 632),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 641),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[1]);
    gSPSegment(gfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0 * (globalCtx->state.frames * 0),
                                0 * (globalCtx->state.frames * 0), 16, 32, 1, 1 * (globalCtx->state.frames * 1),
                                1 * -(globalCtx->state.frames * 6), 16, 32));
    Matrix_Push();
    func_800D1FD4(&globalCtx->mf_11DA0);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 656),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[3]);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[2]);
    Matrix_Pull();

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 663);
}

void func_80069AC8(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 670);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 674),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 683),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[1]);
    gSPSegment(gfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0 * (globalCtx->state.frames * 0),
                                0 * (globalCtx->state.frames * 0), 32, 32, 1, 1 * (globalCtx->state.frames * 1),
                                1 * -(globalCtx->state.frames * 6), 32, 32));
    Matrix_Push();
    func_800D1FD4(&globalCtx->mf_11DA0);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 698),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[2]);
    Matrix_Pull();

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 704);
}

void func_80069CF0(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 712);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0 * (globalCtx->state.frames * 0) % 256,
                                1 * (globalCtx->state.frames * 2) % 256, 64, 64, 1,
                                0 * (globalCtx->state.frames * 0) % 128, 1 * (globalCtx->state.frames * 1) % 128, 32,
                                32));
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 723),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 730),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[1]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 735);
}

void func_80069EB0(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 742);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 746),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0 * (globalCtx->state.frames * 0),
                                1 * -(globalCtx->state.frames * 5), 32, 32, 1, 0 * (globalCtx->state.frames * 0),
                                0 * (globalCtx->state.frames * 0), 32, 64));
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 760),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[1]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 765);
}

void func_8006A060(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 772);

    func_80093BA8(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 776),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[1]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 783);
}

void func_8006A158(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 811);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 815),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);

    gfxCtx->polyXlu.p = Gfx_CallSetupDL(gfxCtx->polyXlu.p, 5);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 822),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[1]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 827);
}

void func_8006A2A0(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 834);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, -1 * (globalCtx->state.frames * 1),
                                1 * (globalCtx->state.frames * 1), 32, 32, 1, -1 * (globalCtx->state.frames * 1),
                                1 * (globalCtx->state.frames * 1), 32, 32));
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 845),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[2]);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[3]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 855),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[4]);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[5]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 861);
}

void func_8006A4B0(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 868);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 1 * (globalCtx->state.frames * 1),
                                0 * (globalCtx->state.frames * 1), 32, 32, 1, 0 * (globalCtx->state.frames * 1),
                                0 * (globalCtx->state.frames * 1), 32, 32));
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 878),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 883);
}

void func_8006A5F0(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 890);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 1 * (globalCtx->state.frames * 6),
                                1 * (globalCtx->state.frames * 6), 32, 32, 1, 1 * (globalCtx->state.frames * 6),
                                1 * (globalCtx->state.frames * 6), 32, 32));
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 901),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 906);
}

void func_8006A73C(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 913);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0 * (globalCtx->state.frames * 1),
                                1 * -(globalCtx->state.frames * 3), 32, 32, 1, 0 * (globalCtx->state.frames * 1),
                                1 * -(globalCtx->state.frames * 2), 32, 32));
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 924),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[0]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 929);
}

void func_8006A88C(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 936);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0 * (globalCtx->state.frames * 0),
                                1 * (globalCtx->state.frames * 1), 32, 32, 1, 0 * (globalCtx->state.frames * 0),
                                1 * (globalCtx->state.frames * 1), 32, 32));
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 947),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[0]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 952);
}

void func_8006A9CC(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 959);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 963),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 968);
}

void func_8006AAA8(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 975);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 979),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 986),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[1]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 991);
}

void func_8006ABEC(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 998);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1002),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[0]);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[1]);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1008);
}

void func_8006ACE4(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1015);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1019),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1027),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[2]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1032);
}

void func_8006AE40(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1039);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1043),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1050),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[2]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1056);
}

void func_8006AF9C(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1063);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 1 * (globalCtx->state.frames * 2),
                                1 * -(globalCtx->state.frames * 6), 32, 32, 1, 1 * (globalCtx->state.frames * 1),
                                -1 * (globalCtx->state.frames * 2), 32, 32));
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1074),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[0]);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[2]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1081);
}

void func_8006B124(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1088);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1092),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[2]);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[3]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1100);
}

void func_8006B24C(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1108);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1112),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1120),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[3]);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[2]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1126);
}

void func_8006B3C0(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1133);

    Matrix_Scale(0.7f, 0.7f, 0.7f, MTXMODE_APPLY);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1140),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1148),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[3]);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[2]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1154);
}

void func_8006B54C(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1162);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 1 * (globalCtx->state.frames * 2),
                                -1 * (globalCtx->state.frames * 2), 64, 64, 1, 1 * (globalCtx->state.frames * 4),
                                1 * -(globalCtx->state.frames * 4), 32, 32));
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1173),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[2]);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[3]);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[0]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1181);
}

void func_8006B6E4(GlobalContext* globalCtx, s16 drawId) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1188);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1192),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1200),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[2]);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[3]);
    gSPDisplayList(gfxCtx->polyXlu.p++, sDrawItemTable[drawId].dlists[4]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1207);
}

void func_8006B870(GlobalContext* globalCtx, s16 drawId) {
    u32 pad;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1214);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_draw.c", 1218),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[1]);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[0]);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[2]);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[3]);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[4]);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[5]);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[6]);
    gSPDisplayList(gfxCtx->polyOpa.p++, sDrawItemTable[drawId].dlists[7]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_draw.c", 1230);
}
