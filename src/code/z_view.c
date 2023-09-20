#include "global.h"
#include "terminal.h"

vu32 sLogOnNextViewInit = true;

s32 View_ApplyPerspective(View*);
s32 View_ApplyOrtho(View*);

void View_ViewportToVp(Vp* dest, Viewport* src) {
    s32 width = src->rightX - src->leftX;
    s32 height = src->bottomY - src->topY;

    dest->vp.vscale[0] = width * 2;
    dest->vp.vscale[1] = height * 2;
    dest->vp.vscale[2] = G_MAXZ / 2;
    dest->vp.vscale[3] = 0;
    dest->vp.vtrans[0] = ((src->leftX * 2) + width) * 2;
    dest->vp.vtrans[1] = ((src->topY * 2) + height) * 2;
    dest->vp.vtrans[2] = G_MAXZ / 2;
    dest->vp.vtrans[3] = 0;
}

View* View_New(GraphicsContext* gfxCtx) {
    View* view = SystemArena_MallocDebug(sizeof(View), "../z_view.c", 285);

    if (view != NULL) {
        __osMemset(view, 0, sizeof(View));
        View_Init(view, gfxCtx);
    }

    return view;
}

void View_Free(View* view) {
    SystemArena_FreeDebug(view, "../z_view.c", 297);
}

void View_Init(View* view, GraphicsContext* gfxCtx) {
    view->gfxCtx = gfxCtx;
    view->viewport.topY = 0;
    view->viewport.bottomY = SCREEN_HEIGHT;
    view->viewport.leftX = 0;
    view->viewport.rightX = SCREEN_WIDTH;
    view->magic = 0x56494557; // "VIEW"
    view->eye.x = 0.0f;
    view->eye.y = 0.0f;
    view->scale = 1.0f;
    view->fovy = 60.0f;
    view->zNear = 10.0f;
    view->zFar = 12800.0f;
    view->at.x = 0.0f;
    view->up.x = 0.0f;
    view->up.y = 1.0f;
    view->up.z = 0.0f;
    view->eye.z = -1.0f;

    if (sLogOnNextViewInit) {
        if (sLogOnNextViewInit == false) {}
        osSyncPrintf("\nview: initialize ---\n");
        sLogOnNextViewInit = false;
    }

    view->unk_124 = 0;
    view->flags = VIEW_VIEWING | VIEW_VIEWPORT | VIEW_PROJECTION_PERSPECTIVE;
    View_InitDistortion(view);
}

void View_LookAt(View* view, Vec3f* eye, Vec3f* at, Vec3f* up) {
    if (eye->x == at->x && eye->z == at->z) {
        eye->x += 0.1f;
    }

    view->eye = *eye;
    view->at = *at;
    view->up = *up;
    view->flags |= VIEW_VIEWING;
}

/*
 * Unused. View_LookAt is always used instead. This version is similar but
 * is missing the input sanitization and the update to the flags.
 */
void View_LookAtUnsafe(View* view, Vec3f* eye, Vec3f* at, Vec3f* up) {
    view->eye = *eye;
    view->at = *at;
    view->up = *up;
}

void View_SetScale(View* view, f32 scale) {
    view->flags |= VIEW_PROJECTION_PERSPECTIVE;
    view->scale = scale;
}

void View_GetScale(View* view, f32* scale) {
    *scale = view->scale;
}

void View_SetPerspective(View* view, f32 fovy, f32 zNear, f32 zFar) {
    view->fovy = fovy;
    view->zNear = zNear;
    view->zFar = zFar;
    view->flags |= VIEW_PROJECTION_PERSPECTIVE;
}

void View_GetPerspective(View* view, f32* fovy, f32* zNear, f32* zFar) {
    *fovy = view->fovy;
    *zNear = view->zNear;
    *zFar = view->zFar;
}

void View_SetOrtho(View* view, f32 fovy, f32 zNear, f32 zFar) {
    view->fovy = fovy;
    view->zNear = zNear;
    view->zFar = zFar;
    view->flags |= VIEW_PROJECTION_ORTHO;
    view->scale = 1.0f;
}

/*
 * Identical to View_GetPerspective, and never called.
 * Named as it seems to fit the "set, get" pattern.
 */
void View_GetOrtho(View* view, f32* fovy, f32* zNear, f32* zFar) {
    *fovy = view->fovy;
    *zNear = view->zNear;
    *zFar = view->zFar;
}

void View_SetViewport(View* view, Viewport* viewport) {
    view->viewport = *viewport;
    view->flags |= VIEW_VIEWPORT;
}

void View_GetViewport(View* view, Viewport* viewport) {
    *viewport = view->viewport;
}

void View_ApplyLetterbox(View* view) {
    s32 varY;
    s32 varX;
    s32 pad;
    s32 ulx;
    s32 uly;
    s32 lrx;
    s32 lry;
    GraphicsContext* gfxCtx = view->gfxCtx;

    varY = Letterbox_GetSize();

    varX = -1; // The following is optimized to varX = 0 but affects codegen

    if (varX < 0) {
        varX = 0;
    }
    if (varX > SCREEN_WIDTH / 2) {
        varX = SCREEN_WIDTH / 2;
    }

    if (varY < 0) {
        varY = 0;
    }
    if (varY > SCREEN_HEIGHT / 2) {
        varY = SCREEN_HEIGHT / 2;
    }

    ulx = view->viewport.leftX + varX;
    uly = view->viewport.topY + varY;
    lrx = view->viewport.rightX - varX;
    lry = view->viewport.bottomY - varY;

    ASSERT(ulx >= 0, "ulx >= 0", "../z_view.c", 454);
    ASSERT(uly >= 0, "uly >= 0", "../z_view.c", 455);
    ASSERT(lrx <= SCREEN_WIDTH, "lrx <= SCREEN_WD", "../z_view.c", 456);
    ASSERT(lry <= SCREEN_HEIGHT, "lry <= SCREEN_HT", "../z_view.c", 457);

    OPEN_DISPS(gfxCtx, "../z_view.c", 459);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetScissor(POLY_OPA_DISP++, G_SC_NON_INTERLACE, ulx, uly, lrx, lry);
    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetScissor(POLY_XLU_DISP++, G_SC_NON_INTERLACE, ulx, uly, lrx, lry);

    CLOSE_DISPS(gfxCtx, "../z_view.c", 472);
}

void View_SetDistortionOrientation(View* view, f32 rotX, f32 rotY, f32 rotZ) {
    view->distortionOrientation.x = rotX;
    view->distortionOrientation.y = rotY;
    view->distortionOrientation.z = rotZ;
}

void View_SetDistortionScale(View* view, f32 scaleX, f32 scaleY, f32 scaleZ) {
    view->distortionScale.x = scaleX;
    view->distortionScale.y = scaleY;
    view->distortionScale.z = scaleZ;
}

s32 View_SetDistortionSpeed(View* view, f32 speed) {
    view->distortionSpeed = speed;
}

void View_InitDistortion(View* view) {
    view->distortionOrientation.x = 0.0f;
    view->distortionOrientation.y = 0.0f;
    view->distortionOrientation.z = 0.0f;
    view->distortionScale.x = 1.0f;
    view->distortionScale.y = 1.0f;
    view->distortionScale.z = 1.0f;
    view->curDistortionOrientation = view->distortionOrientation;
    view->curDistortionScale = view->distortionScale;
    view->distortionSpeed = 0.0f;
}

void View_ClearDistortion(View* view) {
    view->distortionOrientation.x = 0.0f;
    view->distortionOrientation.y = 0.0f;
    view->distortionOrientation.z = 0.0f;
    view->distortionScale.x = 1.0f;
    view->distortionScale.y = 1.0f;
    view->distortionScale.z = 1.0f;
    view->distortionSpeed = 1.0f;
}

void View_SetDistortion(View* view, Vec3f orientation, Vec3f scale, f32 speed) {
    view->distortionOrientation = orientation;
    view->distortionScale = scale;
    view->distortionSpeed = speed;
}

s32 View_StepDistortion(View* view, Mtx* projectionMtx) {
    MtxF projectionMtxF;

    if (view->distortionSpeed == 0.0f) {
        return false;
    } else if (view->distortionSpeed == 1.0f) {
        view->curDistortionOrientation = view->distortionOrientation;
        view->curDistortionScale = view->distortionScale;
        view->distortionSpeed = 0.0f;
    } else {
        view->curDistortionOrientation.x =
            F32_LERPIMP(view->curDistortionOrientation.x, view->distortionOrientation.x, view->distortionSpeed);
        view->curDistortionOrientation.y =
            F32_LERPIMP(view->curDistortionOrientation.y, view->distortionOrientation.y, view->distortionSpeed);
        view->curDistortionOrientation.z =
            F32_LERPIMP(view->curDistortionOrientation.z, view->distortionOrientation.z, view->distortionSpeed);

        view->curDistortionScale.x =
            F32_LERPIMP(view->curDistortionScale.x, view->distortionScale.x, view->distortionSpeed);
        view->curDistortionScale.y =
            F32_LERPIMP(view->curDistortionScale.y, view->distortionScale.y, view->distortionSpeed);
        view->curDistortionScale.z =
            F32_LERPIMP(view->curDistortionScale.z, view->distortionScale.z, view->distortionSpeed);
    }

    Matrix_MtxToMtxF(projectionMtx, &projectionMtxF);
    Matrix_Put(&projectionMtxF);
    Matrix_RotateX(view->curDistortionOrientation.x, MTXMODE_APPLY);
    Matrix_RotateY(view->curDistortionOrientation.y, MTXMODE_APPLY);
    Matrix_RotateZ(view->curDistortionOrientation.z, MTXMODE_APPLY);
    Matrix_Scale(view->curDistortionScale.x, view->curDistortionScale.y, view->curDistortionScale.z, MTXMODE_APPLY);
    Matrix_RotateZ(-view->curDistortionOrientation.z, MTXMODE_APPLY);
    Matrix_RotateY(-view->curDistortionOrientation.y, MTXMODE_APPLY);
    Matrix_RotateX(-view->curDistortionOrientation.x, MTXMODE_APPLY);
    Matrix_ToMtx(projectionMtx, "../z_view.c", 566);

    return true;
}

/**
 * Apply view to POLY_OPA_DISP, POLY_XLU_DISP (and OVERLAY_DISP if ortho)
 */
void View_Apply(View* view, s32 mask) {
    mask = (view->flags & mask) | (mask >> 4);

    if (mask & VIEW_PROJECTION_ORTHO) {
        View_ApplyOrtho(view);
    } else {
        View_ApplyPerspective(view);
    }
}

s32 View_ApplyPerspective(View* view) {
    f32 aspect;
    s32 width;
    s32 height;
    Vp* vp;
    Mtx* projection;
    Mtx* viewing;
    GraphicsContext* gfxCtx = view->gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_view.c", 596);

    // Viewport
    vp = Graph_Alloc(gfxCtx, sizeof(Vp));
    LogUtils_CheckNullPointer("vp", vp, "../z_view.c", 601);
    View_ViewportToVp(vp, &view->viewport);
    view->vp = *vp;

    View_ApplyLetterbox(view);

    gSPViewport(POLY_OPA_DISP++, vp);
    gSPViewport(POLY_XLU_DISP++, vp);

    // Perspective projection
    projection = Graph_Alloc(gfxCtx, sizeof(Mtx));
    LogUtils_CheckNullPointer("projection", projection, "../z_view.c", 616);
    view->projectionPtr = projection;

    width = view->viewport.rightX - view->viewport.leftX;
    height = view->viewport.bottomY - view->viewport.topY;
    aspect = (f32)width / (f32)height;

    if (R_HREG_MODE == HREG_MODE_PERSPECTIVE) {
        if (R_PERSPECTIVE_INIT != HREG_MODE_PERSPECTIVE) {
            R_PERSPECTIVE_INIT = HREG_MODE_PERSPECTIVE;
            R_PERSPECTIVE_FOVY = 60;
            R_PERSPECTIVE_ASPECT = (10000 * 4) / 3;
            R_PERSPECTIVE_NEAR = 10;
            R_PERSPECTIVE_FAR = 12800;
            R_PERSPECTIVE_SCALE = 100;
        }
        guPerspective(projection, &view->normal, R_PERSPECTIVE_FOVY, R_PERSPECTIVE_ASPECT / 10000.0f,
                      R_PERSPECTIVE_NEAR, R_PERSPECTIVE_FAR, R_PERSPECTIVE_SCALE / 100.0f);
    } else {
        guPerspective(projection, &view->normal, view->fovy, aspect, view->zNear, view->zFar, view->scale);
    }

    if (QREG(88) & 1) {
        s32 i;
        MtxF mf;

        osSyncPrintf("fovy %f near %f far %f scale %f aspect %f normal %08x\n", view->fovy, view->zNear, view->zFar,
                     view->scale, aspect, view->normal);

        Matrix_MtxToMtxF(projection, &mf);
        osSyncPrintf("projection\n");
        for (i = 0; i < 4; i++) {
            osSyncPrintf("\t%f\t%f\t%f\t%f\n", mf.mf[i][0], mf.mf[i][1], mf.mf[i][2], mf.mf[i][3]);
        }
        osSyncPrintf("\n");
    }

    view->projection = *projection;

    View_StepDistortion(view, projection);

    gSPPerspNormalize(POLY_OPA_DISP++, view->normal);
    gSPMatrix(POLY_OPA_DISP++, projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPPerspNormalize(POLY_XLU_DISP++, view->normal);
    gSPMatrix(POLY_XLU_DISP++, projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

    // View matrix (look-at)
    viewing = Graph_Alloc(gfxCtx, sizeof(Mtx));
    LogUtils_CheckNullPointer("viewing", viewing, "../z_view.c", 667);
    view->viewingPtr = viewing;

    if (view->eye.x == view->at.x && view->eye.y == view->at.y && view->eye.z == view->at.z) {
        view->eye.x += 1.0f;
        view->eye.y += 1.0f;
        view->eye.z += 1.0f;
    }

    View_ErrorCheckEyePosition(view->eye.x, view->eye.y, view->eye.z);
    guLookAt(viewing, view->eye.x, view->eye.y, view->eye.z, view->at.x, view->at.y, view->at.z, view->up.x, view->up.y,
             view->up.z);

    view->viewing = *viewing;

    // Debug print view matrix
    if (QREG(88) & 2) {
        s32 i;
        MtxF mf;

        Matrix_MtxToMtxF(view->viewingPtr, &mf);
        osSyncPrintf("viewing\n");
        for (i = 0; i < 4; i++) {
            osSyncPrintf("\t%f\t%f\t%f\t%f\n", mf.mf[i][0], mf.mf[i][1], mf.mf[i][2], mf.mf[i][3]);
        }
        osSyncPrintf("\n");
    }

    gSPMatrix(POLY_OPA_DISP++, viewing, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
    gSPMatrix(POLY_XLU_DISP++, viewing, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);

    CLOSE_DISPS(gfxCtx, "../z_view.c", 711);

    return 1;
}

s32 View_ApplyOrtho(View* view) {
    Vp* vp;
    Mtx* projection;
    GraphicsContext* gfxCtx = view->gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_view.c", 726);

    vp = Graph_Alloc(gfxCtx, sizeof(Vp));
    LogUtils_CheckNullPointer("vp", vp, "../z_view.c", 730);
    View_ViewportToVp(vp, &view->viewport);
    view->vp = *vp;

    View_ApplyLetterbox(view);

    gSPViewport(POLY_OPA_DISP++, vp);
    gSPViewport(POLY_XLU_DISP++, vp);
    gSPViewport(OVERLAY_DISP++, vp);

    projection = Graph_Alloc(gfxCtx, sizeof(Mtx));
    LogUtils_CheckNullPointer("projection", projection, "../z_view.c", 744);
    view->projectionPtr = projection;

    guOrtho(projection, -(f32)gScreenWidth * 0.5f, (f32)gScreenWidth * 0.5f, -(f32)gScreenHeight * 0.5f,
            (f32)gScreenHeight * 0.5f, view->zNear, view->zFar, view->scale);

    view->projection = *projection;

    gSPMatrix(POLY_OPA_DISP++, projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(POLY_XLU_DISP++, projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

    CLOSE_DISPS(gfxCtx, "../z_view.c", 762);

    return 1;
}

/**
 * Apply scissor, viewport and projection (ortho) to OVERLAY_DISP.
 */
s32 View_ApplyOrthoToOverlay(View* view) {
    Vp* vp;
    Mtx* projection;
    GraphicsContext* gfxCtx;

    gfxCtx = view->gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_view.c", 777);

    vp = Graph_Alloc(gfxCtx, sizeof(Vp));
    LogUtils_CheckNullPointer("vp", vp, "../z_view.c", 781);
    View_ViewportToVp(vp, &view->viewport);
    view->vp = *vp;

    gDPPipeSync(OVERLAY_DISP++);
    gDPSetScissor(OVERLAY_DISP++, G_SC_NON_INTERLACE, view->viewport.leftX, view->viewport.topY, view->viewport.rightX,
                  view->viewport.bottomY);
    gSPViewport(OVERLAY_DISP++, vp);

    projection = Graph_Alloc(gfxCtx, sizeof(Mtx));
    LogUtils_CheckNullPointer("projection", projection, "../z_view.c", 791);
    view->projectionPtr = projection;

    guOrtho(projection, -(f32)gScreenWidth * 0.5f, (f32)gScreenWidth * 0.5f, -(f32)gScreenHeight * 0.5f,
            (f32)gScreenHeight * 0.5f, view->zNear, view->zFar, view->scale);

    view->projection = *projection;

    gSPMatrix(OVERLAY_DISP++, projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

    CLOSE_DISPS(gfxCtx, "../z_view.c", 801);

    return 1;
}

/**
 * Apply scissor, viewport, view and projection (perspective) to OVERLAY_DISP.
 */
s32 View_ApplyPerspectiveToOverlay(View* view) {
    s32 pad[2];
    f32 aspect;
    s32 width;
    s32 height;
    Vp* vp;
    Mtx* projection;
    Mtx* viewing;
    GraphicsContext* gfxCtx = view->gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_view.c", 816);

    vp = Graph_Alloc(gfxCtx, sizeof(Vp));
    LogUtils_CheckNullPointer("vp", vp, "../z_view.c", 821);
    View_ViewportToVp(vp, &view->viewport);
    view->vp = *vp;

    gDPPipeSync(OVERLAY_DISP++);
    gDPSetScissor(OVERLAY_DISP++, G_SC_NON_INTERLACE, view->viewport.leftX, view->viewport.topY, view->viewport.rightX,
                  view->viewport.bottomY);
    gSPViewport(OVERLAY_DISP++, vp);

    projection = Graph_Alloc(gfxCtx, sizeof(Mtx));
    LogUtils_CheckNullPointer("projection", projection, "../z_view.c", 833);
    view->projectionPtr = projection;

    width = view->viewport.rightX - view->viewport.leftX;
    height = view->viewport.bottomY - view->viewport.topY;

    aspect = (f32)width / (f32)height;
    guPerspective(projection, &view->normal, view->fovy, aspect, view->zNear, view->zFar, view->scale);

    view->projection = *projection;

    gSPPerspNormalize(OVERLAY_DISP++, view->normal);
    gSPMatrix(OVERLAY_DISP++, projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

    viewing = Graph_Alloc(gfxCtx, sizeof(Mtx));
    LogUtils_CheckNullPointer("viewing", viewing, "../z_view.c", 848);
    view->viewingPtr = viewing;

    // This check avoids a divide-by-zero in guLookAt if eye == at
    if (view->eye.x == view->at.x && view->eye.y == view->at.y && view->eye.z == view->at.z) {
        view->eye.x += 1.0f;
        view->eye.y += 1.0f;
        view->eye.z += 1.0f;
    }

    View_ErrorCheckEyePosition(view->eye.x, view->eye.y, view->eye.z);
    guLookAt(viewing, view->eye.x, view->eye.y, view->eye.z, view->at.x, view->at.y, view->at.z, view->up.x, view->up.y,
             view->up.z);

    view->viewing = *viewing;

    gSPMatrix(OVERLAY_DISP++, viewing, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);

    CLOSE_DISPS(gfxCtx, "../z_view.c", 871);

    return 1;
}

/**
 * Just updates view's view matrix from its eye/at/up vectors. Opens disps but doesn't use them.
 */
s32 View_UpdateViewingMatrix(View* view) {
    OPEN_DISPS(view->gfxCtx, "../z_view.c", 878);

    View_ErrorCheckEyePosition(view->eye.x, view->eye.y, view->eye.z);
    guLookAt(view->viewingPtr, view->eye.x, view->eye.y, view->eye.z, view->at.x, view->at.y, view->at.z, view->up.x,
             view->up.y, view->up.z);

    CLOSE_DISPS(view->gfxCtx, "../z_view.c", 886);

    return 1;
}

s32 View_ApplyTo(View* view, s32 mask, Gfx** gfxP) {
    Gfx* gfx = *gfxP;
    GraphicsContext* gfxCtx = view->gfxCtx;
    s32 width;
    s32 height;
    Vp* vp;
    Mtx* projection;
    Mtx* viewing;

    mask = (view->flags & mask) | (mask >> 4);

    if (mask & VIEW_VIEWPORT) {
        vp = Graph_Alloc(gfxCtx, sizeof(Vp));
        LogUtils_CheckNullPointer("vp", vp, "../z_view.c", 910);
        View_ViewportToVp(vp, &view->viewport);

        view->vp = *vp;

        gDPPipeSync(gfx++);
        gDPSetScissor(gfx++, G_SC_NON_INTERLACE, view->viewport.leftX, view->viewport.topY, view->viewport.rightX,
                      view->viewport.bottomY);
        gSPViewport(gfx++, vp);
    }

    if (mask & VIEW_PROJECTION_ORTHO) {
        projection = Graph_Alloc(gfxCtx, sizeof(Mtx));
        LogUtils_CheckNullPointer("projection", projection, "../z_view.c", 921);
        view->projectionPtr = projection;

        guOrtho(projection, -(f32)gScreenWidth * 0.5f, (f32)gScreenWidth * 0.5f, -(f32)gScreenHeight * 0.5f,
                (f32)gScreenHeight * 0.5f, view->zNear, view->zFar, view->scale);

        view->projection = *projection;

        gSPMatrix(gfx++, projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    } else if (mask & (VIEW_PROJECTION_PERSPECTIVE | VIEW_VIEWPORT)) {
        projection = Graph_Alloc(gfxCtx, sizeof(Mtx));
        LogUtils_CheckNullPointer("projection", projection, "../z_view.c", 932);
        view->projectionPtr = projection;

        width = view->viewport.rightX - view->viewport.leftX;
        height = view->viewport.bottomY - view->viewport.topY;

        guPerspective(projection, &view->normal, view->fovy, (f32)width / (f32)height, view->zNear, view->zFar,
                      view->scale);

        view->projection = *projection;

        gSPPerspNormalize(gfx++, view->normal);
        gSPMatrix(gfx++, projection, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    }

    if (mask & VIEW_VIEWING) {
        viewing = Graph_Alloc(gfxCtx, sizeof(Mtx));
        LogUtils_CheckNullPointer("viewing", viewing, "../z_view.c", 948);
        view->viewingPtr = viewing;

        View_ErrorCheckEyePosition(view->eye.x, view->eye.y, view->eye.z);
        guLookAt(viewing, view->eye.x, view->eye.y, view->eye.z, view->at.x, view->at.y, view->at.z, view->up.x,
                 view->up.y, view->up.z);

        view->viewing = *viewing;

        gSPMatrix(gfx++, viewing, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_PROJECTION);
    }

    view->flags = 0;
    *gfxP = gfx;

    return 1;
}

/**
 * Logs an error and returns nonzero if camera is too far from the origin.
 */
s32 View_ErrorCheckEyePosition(f32 eyeX, f32 eyeY, f32 eyeZ) {
    s32 error = 0;

    if (SQ(eyeX) + SQ(eyeY) + SQ(eyeZ) > SQ(32767.0f)) {
        error = 3;
    } else {
        f32 absEyeX = ABS(eyeX);
        f32 absEyeY = ABS(eyeY);
        f32 absEyeZ = ABS(eyeZ);

        if (((18900.0f < absEyeX) || (18900.0f < absEyeY)) || (18900.0f < absEyeZ)) {
            error = 2;
        } else if (((16000.0f < absEyeX) || (16000.0f < absEyeY)) || (16000.0f < absEyeZ)) {
            error = 1;
        }
    }

    if (error != 0) {
        osSyncPrintf(VT_FGCOL(RED));
        // "Is too large"
        osSyncPrintf("eye が大きすぎます eye=[%8.3f %8.3f %8.3f] error=%d\n", eyeX, eyeY, eyeZ, error);
        osSyncPrintf(VT_RST);
    }

    return error;
}
