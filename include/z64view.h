#ifndef Z64VIEW_H
#define Z64VIEW_H

#include "z64math.h"

struct GraphicsContext;

typedef struct {
    /* 0x0 */ s32 topY;    // uly (upper left y)
    /* 0x4 */ s32 bottomY; // lry (lower right y)
    /* 0x8 */ s32 leftX;   // ulx (upper left x)
    /* 0xC */ s32 rightX;  // lrx (lower right x)
} Viewport; // size = 0x10

typedef struct {
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

#endif
