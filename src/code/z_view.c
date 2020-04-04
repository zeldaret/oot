#include <ultra64.h>
#include <global.h>

volatile u32 D_8012ABF0 = 1;

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA190.s")
// TODO replace UNK_VIEW_STRUCT with Viewport and match with that instead
void func_800AA190(UNK_VIEW_STRUCT* arg0, Viewport* viewport) {
    s32 xLen;
    s32 yLen;

    xLen = viewport->rightX - viewport->leftX;
    yLen = viewport->bottomY - viewport->topY;
    arg0->unk_0 = (xLen * 2);
    arg0->unk_2 = (yLen * 2);
    arg0->unk_4 = 0x01FF;
    arg0->unk_6 = 0;
    arg0->unk_8 = (((viewport->leftX * 2) + xLen) * 2);
    arg0->unk_A = (((viewport->topY * 2) + yLen) * 2);
    arg0->unk_C = 0x01FF;
    arg0->unk_E = 0;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA1F8.s")
View* func_800AA1F8(GraphicsContext* gfxCtx) {
    View* allocated = SystemArena_MallocDebug(sizeof(View), "../z_view.c", 285);
    if (allocated != NULL) {
        func_80106860(allocated, 0, sizeof(View)); // TODO prototype this
        func_800AA278(allocated, gfxCtx);
    }
    return allocated;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA250.s")
void func_800AA250(View* view) {
    SystemArena_FreeDebug(view, "../z_view.c", 297);
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA278.s")
void func_800AA278(View* view, GraphicsContext* gfxCtx) {
    view->gfxCtx = gfxCtx;
    view->viewport.topY = 0;
    view->viewport.bottomY = 240;
    view->viewport.leftX = 0;
    view->viewport.rightX = 320;
    view->viewStart = 0x56494557; //"VIEW"
    view->eye.x = 0.0f;
    view->eye.y = 0.0f;
    view->unk_24 = 1.0f;
    view->fieldOfView = 60.0f;
    view->fogDistance = 10.0f;
    view->zDepth = 12800.0f;
    view->unk_34.x = 0.0f;
    view->unk_40.x = 0.0f;
    view->unk_40.y = 1.0f;
    view->unk_40.z = 0.0f;
    view->eye.z = -1.0f;

    if (D_8012ABF0 != 0) {
        if (&D_8012ABF0) {}
        osSyncPrintf("\nview: initialize ---\n", gfxCtx, view);
        D_8012ABF0 = 0;
    }
    view->unk_124 = 0;
    view->unk_120 = 7;
    func_800AA7B8(view);
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA358.s")
void func_800AA358(View* view, Vec3f* vec1, Vec3f* vec2, Vec3f* vec3) {
    if (vec1->x == vec2->x && vec1->z == vec2->z) {
        vec1->x += 0.1f;
    }
    view->eye = *vec1;
    view->unk_34 = *vec2;
    view->unk_40 = *vec3;
    view->unk_120 |= 1;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA3F0.s")
void func_800AA3F0(View* view, Vec3f* vec1, Vec3f* vec2, Vec3f* vec3) {
    view->eye = *vec1;
    view->unk_34 = *vec2;
    view->unk_40 = *vec3;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA43C.s")
void func_800AA43C(View* view, f32 arg1) {
    view->unk_120 |= 4;
    view->unk_24 = arg1;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA454.s")
void func_800AA454(View* view, f32* arg1) {
    *arg1 = view->unk_24;
}

///#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA460.s")
void func_800AA460(View* view, f32 fieldOfView, f32 fogDistance, f32 zDepth) {
    view->fieldOfView = fieldOfView;
    view->fogDistance = fogDistance;
    view->zDepth = zDepth;
    view->unk_120 |= 4;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA48C.s")
void func_800AA48C(View* view, f32* fieldOfView, f32* fogDistance, f32* zDepth) {
    *fieldOfView = view->fieldOfView;
    *fogDistance = view->fogDistance;
    *zDepth = view->zDepth;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA4A8.s")
void func_800AA4A8(View* view, f32 fieldOfView, f32 fogDistance, f32 zDepth) {
    view->fieldOfView = fieldOfView;
    view->fogDistance = fogDistance;
    view->zDepth = zDepth;
    view->unk_120 |= 8;
    view->unk_24 = 1.0f;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA4E0.s")
void func_800AA4E0(View* view, f32* fieldOfView, f32* fogDistance, f32* zDepth) {
    *fieldOfView = view->fieldOfView;
    *fogDistance = view->fogDistance;
    *zDepth = view->zDepth;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA4FC.s")
void func_800AA4FC(View* view, Viewport* viewport) {
    view->viewport = *viewport;
    view->unk_120 |= 2;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA52C.s")
void func_800AA52C(View* view, Viewport* viewport) {
    *viewport = view->viewport;
}

#ifdef NON_MATCHING
// regalloc, zeros optimised out
void func_800AA550(View* view) {
    s32 phi_v1;
    s32 phi_v1_2;
    s32 pad;
    s32 ulx;
    s32 uly;
    s32 lrx;
    s32 lry;
    GraphicsContext* gfxCtx;
    s32 temp_a0;
    Gfx* gfxArr[4];

    gfxCtx = view->gfxCtx;
    phi_v1 = func_800B38FC();
    if (phi_v1 < 0) {
        phi_v1 = 0;
    }
    if (phi_v1 >= 0x79) {
        phi_v1 = 0x78;
    }
    ulx = view->viewport.leftX + 0;
    uly = view->viewport.topY + phi_v1;
    lrx = view->viewport.rightX - 0;
    lry = view->viewport.bottomY - phi_v1;
    if (ulx < 0) {
        __assert("ulx >= 0", "../z_view.c", 454);
    }
    if (uly < 0) {
        __assert("uly >= 0", "../z_view.c", 455);
    }
    if (lrx > SCREEN_WIDTH) {
        __assert("lrx <= SCREEN_WD", "../z_view.c", 456);
    }
    if (lry > SCREEN_HEIGHT) {
        __assert("lry <= SCREEN_HT", "../z_view.c", 457);
    }
    func_800C6AC4(gfxArr, gfxCtx, "../z_view.c", 459);
    gDPPipeSync(gfxCtx->polyOpa.p++);
    gDPSetScissor(gfxCtx->polyOpa.p++, G_SC_NON_INTERLACE, ulx, uly, lrx, lry);
    gDPPipeSync(gfxCtx->polyXlu.p++);
    gDPSetScissor(gfxCtx->polyXlu.p++, G_SC_NON_INTERLACE, ulx, uly, lrx, lry);
    func_800C6B54(gfxArr, gfxCtx, "../z_view.c", 472);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA550.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA76C.s")
void func_800AA76C(View* view, f32 arg1, f32 arg2, f32 arg3) {
    view->unk_E8.x = arg1;
    view->unk_E8.y = arg2;
    view->unk_E8.z = arg3;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA78C.s")
void func_800AA78C(View* view, f32 arg1, f32 arg2, f32 arg3) {
    view->unk_F4.x = arg1;
    view->unk_F4.y = arg2;
    view->unk_F4.z = arg3;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA7AC.s")
void func_800AA7AC(View* view, f32 arg1) {
    view->unk_100 = arg1;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA7B8.s")
void func_800AA7B8(View* view) {
    view->unk_E8.x = 0.0f;
    view->unk_E8.y = 0.0f;
    view->unk_E8.z = 0.0f;
    view->unk_F4.x = 1.0f;
    view->unk_F4.y = 1.0f;
    view->unk_F4.z = 1.0f;
    view->unk_104 = view->unk_E8;
    view->unk_110 = view->unk_F4;
    view->unk_100 = 0.0f;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA814.s")
void func_800AA814(View* view) {
    view->unk_E8.x = 0.0f;
    view->unk_E8.y = 0.0f;
    view->unk_E8.z = 0.0f;
    view->unk_F4.x = 1.0f;
    view->unk_F4.y = 1.0f;
    view->unk_F4.z = 1.0f;
    view->unk_100 = 1.0f;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA840.s")
void func_800AA840(View* view, Vec3f vec1, Vec3f vec2, f32 arg3) {
    view->unk_E8 = vec1;
    view->unk_F4 = vec2;
    view->unk_100 = arg3;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AA890.s")
s32 func_800AA890(View* view, Mtx* mtx) {
    MtxF mtxF;

    if (view->unk_100 == 0.0f) {
        return 0;
    } else if (view->unk_100 == 1.0f) {
        view->unk_104 = view->unk_E8;
        view->unk_110 = view->unk_F4;
        view->unk_100 = 0.0f;
    } else {
        view->unk_104.x += ((view->unk_E8.x - view->unk_104.x) * view->unk_100);
        view->unk_104.y += ((view->unk_E8.y - view->unk_104.y) * view->unk_100);
        view->unk_104.z += ((view->unk_E8.z - view->unk_104.z) * view->unk_100);

        view->unk_110.x += ((view->unk_F4.x - view->unk_110.x) * view->unk_100);
        view->unk_110.y += ((view->unk_F4.y - view->unk_110.y) * view->unk_100);
        view->unk_110.z += ((view->unk_F4.z - view->unk_110.z) * view->unk_100);
    }
    Matrix_MtxToMtxF(mtx, &mtxF);
    Matrix_Put(&mtxF);
    Matrix_RotateX(view->unk_104.x, 1);
    Matrix_RotateY(view->unk_104.y, 1);
    Matrix_RotateZ(view->unk_104.z, 1);
    Matrix_Scale(view->unk_110.x, view->unk_110.y, view->unk_110.z, 1);
    Matrix_RotateZ(-view->unk_104.z, 1);
    Matrix_RotateY(-view->unk_104.y, 1);
    Matrix_RotateX(-view->unk_104.x, 1);
    Matrix_ToMtx(mtx, "../z_view.c", 0x236);
    return 1;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AAA50.s")
void func_800AAA50(View* view, s32 arg1) {
    arg1 = (view->unk_120 & arg1) | arg1 >> 4;
    if (arg1 & 8) {
        func_800AB0A8(view);
    } else {
        func_800AAA9C(view);
    }
}

#ifdef NON_MATCHING
// Just one stack var
s32 func_800AAA9C(View* view) {
    s32 pad;
    s32 pad1;
    s32 ylen;
    Viewport* viewport;
    Mtx* projection;
    MtxF* viewing;
    Gfx* gfxArr[6];
    s32 xlen;
    GraphicsContext* gfxCtx;
    s32 i;
    MtxF mtxF;
    MtxF mtxFv;

    gfxCtx = view->gfxCtx;
    func_800C6AC4(gfxArr, gfxCtx, "../z_view.c", 0x254);
    viewport = Graph_Alloc(gfxCtx, sizeof(Viewport));
    LogUtils_CheckNullPointer("vp", viewport, "../z_view.c", 0x259);
    func_800AA190(viewport, &view->viewport);
    view->unk_50 = *viewport;
    func_800AA550(view);

    gSPViewport(gfxCtx->polyOpa.p++, viewport);
    gSPViewport(gfxCtx->polyXlu.p++, viewport);

    projection = Graph_Alloc(gfxCtx, sizeof(Mtx));
    LogUtils_CheckNullPointer("projection", projection, "../z_view.c", 0x268);
    view->unk_E0 = projection;
    xlen = view->viewport.rightX - view->viewport.leftX;
    ylen = view->viewport.bottomY - view->viewport.topY;
    if ((u16)0xB == HREG(80)) {
        if ((u16)0xB != HREG(94)) {
            HREG(94) = (u16)0xB;
            HREG(83) = (u16)0x3C;
            HREG(84) = (u16)0x3415;
            HREG(85) = (u16)0xA;
            HREG(86) = (u16)0x3200;
            HREG(87) = (u16)0x64;
        }
        guPerspective(projection, &view->unk_11C, (f32)HREG(83), (f32)HREG(84) / 10000.0f, (f32)HREG(85), (f32)HREG(86),
                      (f32)HREG(87) / 100.0f);
    } else {
        guPerspective(projection, &view->unk_11C, view->fieldOfView, (f32)xlen / (f32)ylen, view->fogDistance,
                      view->zDepth, view->unk_24);
    }
    if ((QREG(88) & 1) != 0) {
        osSyncPrintf("fovy %f near %f far %f scale %f aspect %f normal %08x\n", view->fieldOfView, view->fogDistance,
                     view->zDepth, view->unk_24, (f32)xlen / (f32)ylen, view->unk_11C);
        Matrix_MtxToMtxF(projection, &mtxF);
        osSyncPrintf("projection\n");
        for (i = 0; i < 4; i++) {
            osSyncPrintf("	%f	%f	%f	%f\n", mtxF.mf[i][0], mtxF.mf[i][1], mtxF.mf[i][2],
                         mtxF.mf[i][3]);
        }
        osSyncPrintf("\n");
    }
    view->unk_60 = *projection;

    func_800AA890(view, projection);

    gSPPerspNormalize(gfxCtx->polyOpa.p++, view->unk_11C);
    gSPMatrix(gfxCtx->polyOpa.p++, projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPPerspNormalize(gfxCtx->polyXlu.p++, view->unk_11C);
    gSPMatrix(gfxCtx->polyXlu.p++, projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

    viewing = Graph_Alloc(gfxCtx, 0x40);
    LogUtils_CheckNullPointer("viewing", viewing, "../z_view.c", 0x29B);
    view->unk_E4 = viewing;
    if (view->eye.x == view->unk_34.x && view->eye.y == view->unk_34.y && view->eye.z == view->unk_34.z) {
        view->eye.x += 1.0f;
        view->eye.y += 1.0f;
        view->eye.z += 1.0f;
    }
    func_800ABE74(view->eye.x, view->eye.y, view->eye.z);
    func_80101E34(viewing, view->eye.x, view->eye.y, view->eye.z, view->unk_34.x, view->unk_34.y, view->unk_34.z,
                  view->unk_40.x, view->unk_40.y, view->unk_40.z);
    view->unk_A0 = *viewing;

    if ((QREG(88) & 2) != 0) {
        Matrix_MtxToMtxF(view->unk_E4, &mtxFv);
        osSyncPrintf("viewing\n");
        for (i = 0; i < 4; i++) {
            osSyncPrintf("	%f	%f	%f	%f\n", mtxFv.mf[i][0], mtxFv.mf[i][1], mtxFv.mf[i][2],
                         mtxFv.mf[i][3]);
        }
        osSyncPrintf("\n");
    }

    gSPMatrix(gfxCtx->polyOpa.p++, viewing, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
    gSPMatrix(gfxCtx->polyXlu.p++, viewing, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);

    func_800C6B54(gfxArr, gfxCtx, "../z_view.c", 0x2C7);
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AAA9C.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AB0A8.s")
s32 func_800AB0A8(View* view) {
    Viewport* viewport;
    Mtx* projection;
    s32 pad;
    s32 pad1;
    GraphicsContext* gfxCtx;
    Gfx* gfxArr[3];

    gfxCtx = view->gfxCtx;
    func_800C6AC4(gfxArr, gfxCtx, "../z_view.c", 726);
    viewport = Graph_Alloc(gfxCtx, sizeof(Viewport));
    LogUtils_CheckNullPointer("vp", viewport, "../z_view.c", 730);
    func_800AA190(viewport, &view->viewport);
    view->unk_50 = *viewport;
    func_800AA550(view);

    gSPViewport(gfxCtx->polyOpa.p++, viewport);
    gSPViewport(gfxCtx->polyXlu.p++, viewport);
    gSPViewport(gfxCtx->overlay.p++, viewport);

    projection = Graph_Alloc(gfxCtx, sizeof(Mtx));
    LogUtils_CheckNullPointer("projection", projection, "../z_view.c", 744);
    view->unk_E0 = projection;
    func_801045A4(projection, -(f32)(s32)gScreenWidth * 0.5f, (f32)(s32)gScreenWidth * 0.5f,
                  -(f32)(s32)gScreenHeight * 0.5f, (f32)(s32)gScreenHeight * 0.5f, view->fogDistance, view->zDepth,
                  view->unk_24);

    view->unk_60 = *projection;

    gSPMatrix(gfxCtx->polyOpa.p++, projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(gfxCtx->polyXlu.p++, projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

    func_800C6B54(gfxArr, gfxCtx, "../z_view.c", 762);
    return 1;
}

#ifdef NON_MATCHING
// saved registers allocated differently, everything else is OK
s32 func_800AB2C4(View* view) {
    Mtx* projection;
    f32 pad;
    f32 pad1;
    Viewport* viewport;
    Gfx* gfxArr[4];
    GraphicsContext* gfxCtx;

    gfxCtx = view->gfxCtx;
    func_800C6AC4(gfxArr, gfxCtx, "../z_view.c", 777);
    viewport = Graph_Alloc(gfxCtx, sizeof(Viewport));
    LogUtils_CheckNullPointer("vp", viewport, "../z_view.c", 781);
    func_800AA190(viewport, &view->viewport);
    view->unk_50 = *viewport;

    gDPPipeSync(gfxCtx->overlay.p++);
    gDPSetScissor(gfxCtx->overlay.p++, G_SC_NON_INTERLACE, view->viewport.leftX, view->viewport.topY,
                  view->viewport.rightX, view->viewport.bottomY);
    gSPViewport(gfxCtx->overlay.p++, viewport);

    projection = Graph_Alloc(gfxCtx, sizeof(Mtx));
    LogUtils_CheckNullPointer("projection", projection, "../z_view.c", 791);
    view->unk_E0 = projection;
    func_801045A4(projection, -(f32)(s32)gScreenWidth * 0.5f, (f32)(s32)gScreenWidth * 0.5f,
                  -(f32)(s32)gScreenHeight * 0.5f, (f32)(s32)gScreenHeight * 0.5f, view->fogDistance, view->zDepth,
                  view->unk_24);
    view->unk_60 = *projection;

    gSPMatrix(gfxCtx->overlay.p++, projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

    func_800C6B54(gfxArr, gfxCtx, "../z_view.c", 801);
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AB2C4.s")
#endif

#ifdef NON_MATCHING
// regalloc
s32 func_800AB560(View* view) {
    s32 pad;
    s32 pad1;
    s32 pad2;
    s32 pad3;
    GraphicsContext* gfxCtx;
    Viewport* viewport;
    Mtx* projection;
    MtxF* viewing;
    Gfx* gfxArr[6];
    f32 aspect;

    gfxCtx = view->gfxCtx;
    func_800C6AC4(gfxArr, gfxCtx, "../z_view.c", 816);

    viewport = Graph_Alloc(gfxCtx, sizeof(Viewport));
    LogUtils_CheckNullPointer("vp", viewport, "../z_view.c", 821);

    func_800AA190(viewport, &view->viewport);
    view->unk_50 = *viewport;
    gDPPipeSync(gfxCtx->overlay.p++);
    gDPSetScissor(gfxCtx->overlay.p++, G_SC_NON_INTERLACE, view->viewport.leftX, view->viewport.topY,
                  view->viewport.rightX, view->viewport.bottomY);
    gSPViewport(gfxCtx->overlay.p++, viewport);

    projection = Graph_Alloc(gfxCtx, sizeof(Mtx));
    LogUtils_CheckNullPointer("projection", projection, "../z_view.c", 833);

    view->unk_E0 = projection;
    guPerspective(projection, &view->unk_11C, view->fieldOfView,
                  (f32)(view->viewport.rightX - view->viewport.leftX) /
                      (f32)(view->viewport.bottomY - view->viewport.topY),
                  view->fogDistance, view->zDepth, view->unk_24);
    view->unk_60 = *projection;
    gSPPerspNormalize(gfxCtx->overlay.p++, view->unk_11C);
    gSPMatrix(gfxCtx->overlay.p++, projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

    viewing = Graph_Alloc(gfxCtx, sizeof(MtxF));
    LogUtils_CheckNullPointer("viewing", viewing, "../z_view.c", 848);

    view->unk_E4 = viewing;
    if (view->eye.x == view->unk_34.x && view->eye.y == view->unk_34.y && view->eye.z == view->unk_34.z) {
        view->eye.x += 1.0f;
        view->eye.y += 1.0f;
        view->eye.z += 1.0f;
    }
    func_800ABE74(view->eye.x, view->eye.y, view->eye.z);
    func_80101E34(viewing, view->eye.x, view->eye.y, view->eye.z, view->unk_34.x, view->unk_34.y, view->unk_34.z,
                  view->unk_40.x, view->unk_40.y, view->unk_40.z);
    view->unk_A0 = *viewing;
    gSPMatrix(gfxCtx->overlay.p++, viewing, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);

    func_800C6B54(gfxArr, gfxCtx, "../z_view.c", 871);
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AB560.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AB944.s")
s32 func_800AB944(View* view) {
    Gfx* gfxArr[5];

    func_800C6AC4(gfxArr, view->gfxCtx, "../z_view.c", 0x36E);
    func_800ABE74(view->eye.x, view->eye.y, view->eye.z);
    func_80101E34(view->unk_E4, view->eye.x, view->eye.y, view->eye.z, view->unk_34.x, view->unk_34.y, view->unk_34.z,
                  view->unk_40.x, view->unk_40.y, view->unk_40.z);

    func_800C6B54(gfxArr, view->gfxCtx, "../z_view.c", 0x376);
    return 1;
}

#ifdef NON_MATCHING
//saved register usage is wrong, relatively minor reorderings, regalloc
s32 func_800AB9EC(View* view, s32 arg1, Gfx** p) {
    Viewport* viewport;
    Mtx* projection;
    Mtx* projection2;
    MtxF* viewing;
    GraphicsContext* gfxCtx;
    Gfx* pLocal;

    gfxCtx = view->gfxCtx;
    pLocal = *p;
    arg1 = (view->unk_120 & arg1) | arg1 >> 4;
    if (arg1 & 2) {
        viewport = Graph_Alloc(view->gfxCtx, sizeof(Viewport));
        LogUtils_CheckNullPointer("vp", viewport, "../z_view.c", 910);
        func_800AA190(viewport, &view->viewport);

        view->unk_50 = *viewport;

        gDPPipeSync(pLocal++);
        gDPSetScissor(pLocal++, G_SC_NON_INTERLACE, view->viewport.leftX, view->viewport.topY, view->viewport.rightX,
                      view->viewport.bottomY);
        gSPViewport(pLocal++, viewport);
    }
    if (arg1 & 8) {
        projection = Graph_Alloc(gfxCtx, sizeof(Mtx));
        LogUtils_CheckNullPointer("projection", projection, "../z_view.c", 921);
        view->unk_E0 = projection;
        func_801045A4(projection, -(f32)(s32)gScreenWidth * 0.5f, (f32)(s32)gScreenWidth * 0.5f,
                      -(f32)(s32)gScreenHeight * 0.5f, (f32)(s32)gScreenHeight * 0.5f, view->fogDistance, view->zDepth,
                      view->unk_24);

        view->unk_60 = *projection;

        gSPMatrix(pLocal++, projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    } else if (arg1 & 6) {
        projection2 = Graph_Alloc(gfxCtx, sizeof(Mtx));
        LogUtils_CheckNullPointer("projection", projection2, "../z_view.c", 932);
        view->unk_E0 = projection2;
        guPerspective(projection2, &view->unk_11C, view->fieldOfView,
                      (f32)(view->viewport.rightX - view->viewport.leftX) /
                          (f32)(view->viewport.bottomY - view->viewport.topY),
                      view->fogDistance, view->zDepth, view->unk_24);

        view->unk_60 = *projection2;

        gSPPerspNormalize(pLocal++, view->unk_11C);
        gSPMatrix(pLocal++, projection2, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    }
    if (arg1 & 1) {
        viewing = Graph_Alloc(gfxCtx, sizeof(MtxF));
        LogUtils_CheckNullPointer("viewing", viewing, "../z_view.c", 948);
        view->unk_E4 = viewing;
        func_800ABE74(view->eye.x, view->eye.y, view->eye.z);
        func_80101E34(viewing, view->eye.x, view->eye.y, view->eye.z, view->unk_34.x, view->unk_34.y, view->unk_34.z,
                      view->unk_40.x, view->unk_40.y, view->unk_40.z);

        view->unk_A0 = *viewing;

        gSPMatrix(pLocal++, viewing, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
    }
    view->unk_120 = 0;
    *p = pLocal;
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800AB9EC.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_view/func_800ABE74.s")
s32 func_800ABE74(f32 eyeX, f32 eyeY, f32 eyeZ) {
    s32 errorCode = 0;

    if ((((eyeX * eyeX) + (eyeY * eyeY)) + (eyeZ * eyeZ)) > 1073676288.0f) {
        errorCode = 3;
    } else {
        f32 absEyeX;
        f32 absEyeY;
        f32 absEyeZ;
        absEyeX = ABS(eyeX);
        absEyeY = ABS(eyeY);
        absEyeZ = ABS(eyeZ);
        if (((18900.0f < absEyeX) || (18900.0f < absEyeY)) || (18900.0f < absEyeZ)) {
            errorCode = 2;
        } else if (((16000.0f < absEyeX) || (16000.0f < absEyeY)) || (16000.0f < absEyeZ)) {
            errorCode = 1;
        }
    }
    if (errorCode != 0) {
        osSyncPrintf("\x1b[31m");
        //# EUC-JP: が大きすぎます | Is too large
        osSyncPrintf("eye が大きすぎます eye=[%8.3f %8.3f %8.3f] error=%d\n", eyeX, eyeY, eyeZ, errorCode);
        osSyncPrintf("\x1b[m");
    }
    return errorCode;
}
