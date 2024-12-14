#ifndef Z64VIEW_H
#define Z64VIEW_H

#include "z64math.h"

struct GraphicsContext;

typedef struct Viewport {
    /* 0x0 */ s32 topY;    // uly (upper left y)
    /* 0x4 */ s32 bottomY; // lry (lower right y)
    /* 0x8 */ s32 leftX;   // ulx (upper left x)
    /* 0xC */ s32 rightX;  // lrx (lower right x)
} Viewport; // size = 0x10

#define SET_FULLSCREEN_VIEWPORT(view)      \
    {                                      \
        Viewport viewport;                 \
        viewport.bottomY = SCREEN_HEIGHT;  \
        viewport.rightX = SCREEN_WIDTH;    \
        viewport.topY = 0;                 \
        viewport.leftX = 0;                \
        View_SetViewport(view, &viewport); \
    }                                      \
    (void)0

typedef struct View {
    /* 0x000 */ s32 magic; // string literal "VIEW" / 0x56494557
    /* 0x004 */ struct GraphicsContext* gfxCtx;
    /* 0x008 */ Viewport viewport;
    /* 0x018 */ f32 fovy;  // vertical field of view in degrees
    /* 0x01C */ f32 zNear; // distance to near clipping plane
    /* 0x020 */ f32 zFar;  // distance to far clipping plane
    /* 0x024 */ f32 scale; // scale for matrix elements
    /* 0x028 */ Vec3f eye;
    /* 0x034 */ Vec3f at;
    /* 0x040 */ Vec3f up;
    /* 0x050 */ Vp vp;
    /* 0x060 */ Mtx projection;
    /* 0x0A0 */ Mtx viewing;
    /* 0x0E0 */ Mtx* projectionPtr;
    /* 0x0E4 */ Mtx* viewingPtr;
    /* 0x0E8 */ Vec3f distortionOrientation;
    /* 0x0F4 */ Vec3f distortionScale;
    /* 0x100 */ f32 distortionSpeed;
    /* 0x104 */ Vec3f curDistortionOrientation;
    /* 0x110 */ Vec3f curDistortionScale;
    /* 0x11C */ u16 normal; // used to normalize the projection matrix
    /* 0x120 */ s32 flags;
    /* 0x124 */ s32 unk_124;
} View; // size = 0x128

#define VIEW_VIEWING (1 << 0)
#define VIEW_VIEWPORT (1 << 1)
#define VIEW_PROJECTION_PERSPECTIVE (1 << 2)
#define VIEW_PROJECTION_ORTHO (1 << 3)
#define VIEW_ALL (VIEW_VIEWING | VIEW_VIEWPORT | VIEW_PROJECTION_PERSPECTIVE | VIEW_PROJECTION_ORTHO)

#define VIEW_FORCE_VIEWING (VIEW_VIEWING << 4)
#define VIEW_FORCE_VIEWPORT (VIEW_VIEWPORT << 4)
#define VIEW_FORCE_PROJECTION_PERSPECTIVE (VIEW_PROJECTION_PERSPECTIVE << 4)
#define VIEW_FORCE_PROJECTION_ORTHO (VIEW_PROJECTION_ORTHO << 4)

#if DEBUG_FEATURES
#define VIEW_ERROR_CHECK_EYE_POS(x, y, z) View_ErrorCheckEyePosition((x), (y), (z))
#else
#define VIEW_ERROR_CHECK_EYE_POS(x, y, z) (void)0
#endif

View* View_New(struct GraphicsContext* gfxCtx);
void View_Free(View* view);
void View_Init(View*, struct GraphicsContext*);
void View_LookAt(View* view, Vec3f* eye, Vec3f* at, Vec3f* up);
void View_LookAtUnsafe(View* view, Vec3f* eye, Vec3f* at, Vec3f* up);
void View_SetScale(View* view, f32 scale);
void View_GetScale(View* view, f32* scale);
void View_SetPerspective(View* view, f32 fovy, f32 zNear, f32 zFar);
void View_GetPerspective(View* view, f32* fovy, f32* zNear, f32* zFar);
void View_SetOrtho(View* view, f32 fovy, f32 zNear, f32 zFar);
void View_GetOrtho(View* view, f32* fovy, f32* zNear, f32* zFar);
void View_SetViewport(View* view, Viewport* viewport);
void View_GetViewport(View* view, Viewport* viewport);
void View_SetDistortionOrientation(View* view, f32 rotX, f32 rotY, f32 rotZ);
void View_SetDistortionScale(View* view, f32 scaleX, f32 scaleY, f32 scaleZ);
BAD_RETURN(s32) View_SetDistortionSpeed(View* view, f32 speed);
void View_InitDistortion(View* view);
void View_ClearDistortion(View* view);
void View_SetDistortion(View* view, Vec3f orientation, Vec3f scale, f32 speed);
s32 View_StepDistortion(View* view, Mtx* projectionMtx);
s32 View_Apply(View* view, s32 mask);
s32 View_ApplyOrthoToOverlay(View* view);
s32 View_ApplyPerspectiveToOverlay(View* view);
s32 View_UpdateViewingMatrix(View* view);
s32 View_ApplyTo(View* view, s32 mask, Gfx** gfxP);
#if DEBUG_FEATURES
s32 View_ErrorCheckEyePosition(f32 eyeX, f32 eyeY, f32 eyeZ);
#endif

#endif
