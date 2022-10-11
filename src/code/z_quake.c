#include "global.h"
#include "quake.h"
#include "vt.h"

typedef struct {
    /* 0x00 */ s16 index;
    /* 0x02 */ s16 duration;
    /* 0x04 */ Camera* cam;
    /* 0x08 */ u32 type;
    /* 0x0C */ s16 y;
    /* 0x0E */ s16 x;
    /* 0x10 */ s16 zoom;
    /* 0x12 */ s16 roll;
    /* 0x14 */ Vec3s xOrientation; // alters the orientation of the x perturbation. Only .x (pitch, xy plane) and .y
                                   // (yaw, xz plane) are used
    /* 0x1A */ s16 speed;
    /* 0x1C */ s16 isRelativeToScreen; // is the quake relative to the screen or on world coordinates
    /* 0x1E */ s16 timer;
    /* 0x20 */ s16 camId;
} QuakeRequest; // size = 0x24

typedef struct {
    /* 0x00 */ Vec3f atOffset;
    /* 0x0C */ Vec3f eyeOffset;
    /* 0x18 */ s16 roll;
    /* 0x1A */ s16 yaw;
    /* 0x1C */ s16 zoom;
} ShakeInfo; // size = 0x20

QuakeRequest sQuakeRequest[4];
s16 sQuakeUnused = 1;
s16 sQuakeRequestCount = 0;

Vec3f* Quake_VecSphAddToVec3f(Vec3f* dst, Vec3f* a, VecSph* sph) {
    Vec3f vec;
    Vec3f b;

    OLib_VecSphGeoToVec3f(&b, sph);
    vec.x = a->x + b.x;
    vec.y = a->y + b.y;
    vec.z = a->z + b.z;

    *dst = vec;

    return dst;
}

void Quake_UpdateShakeInfo(QuakeRequest* req, ShakeInfo* shake, f32 y, f32 x) {
    Vec3f* at = &req->cam->at;
    Vec3f* eye = &req->cam->eye;
    Vec3f offset;
    VecSph sph;
    VecSph eyeToAtSph;

    if (req->isRelativeToScreen) {
        offset.x = 0;
        offset.y = 0;
        offset.z = 0;
        OLib_Vec3fDiffToVecSphGeo(&eyeToAtSph, eye, at);
        sph.r = req->y * y;
        sph.pitch = eyeToAtSph.pitch + req->xOrientation.x + 0x4000;
        sph.yaw = eyeToAtSph.yaw + req->xOrientation.y;
        Quake_VecSphAddToVec3f(&offset, &offset, &sph);
        sph.r = req->x * x;
        sph.pitch = eyeToAtSph.pitch + req->xOrientation.x;
        sph.yaw = eyeToAtSph.yaw + req->xOrientation.y + 0x4000;
        Quake_VecSphAddToVec3f(&offset, &offset, &sph);
    } else {
        offset.x = 0;
        offset.y = req->y * y;
        offset.z = 0;
        sph.r = req->x * x;
        sph.pitch = req->xOrientation.x;
        sph.yaw = req->xOrientation.y;
        Quake_VecSphAddToVec3f(&offset, &offset, &sph);
    }

    shake->atOffset = shake->eyeOffset = offset;
    shake->yaw = 0x8000 * y;
    shake->roll = req->roll * y;
    shake->zoom = req->zoom * y;
}

s16 Quake_CallbackType1(QuakeRequest* req, ShakeInfo* shake) {
    s32 pad;

    if (req->timer > 0) {
        f32 xyOffset = Math_SinS(req->speed * req->timer);

        Quake_UpdateShakeInfo(req, shake, xyOffset, Rand_ZeroOne() * xyOffset);
        req->timer--;
    }
    return req->timer;
}

s16 Quake_CallbackType5(QuakeRequest* req, ShakeInfo* shake) {
    if (req->timer > 0) {
        f32 xyOffset = Math_SinS(req->speed * req->timer);

        Quake_UpdateShakeInfo(req, shake, xyOffset, xyOffset);
        req->timer--;
    }
    return req->timer;
}

s16 Quake_CallbackType6(QuakeRequest* req, ShakeInfo* shake) {
    s32 pad;
    f32 xyOffset;

    req->timer--;
    xyOffset = Math_SinS(req->speed * ((req->timer & 0xF) + 500));
    Quake_UpdateShakeInfo(req, shake, xyOffset, Rand_ZeroOne() * xyOffset);
    return 1;
}

s16 Quake_CallbackType3(QuakeRequest* req, ShakeInfo* shake) {
    if (req->timer > 0) {
        f32 xyOffset = Math_SinS(req->speed * req->timer) * ((f32)req->timer / req->duration);

        Quake_UpdateShakeInfo(req, shake, xyOffset, xyOffset);
        req->timer--;
    }
    return req->timer;
}

s16 Quake_CallbackType2(QuakeRequest* req, ShakeInfo* shake) {
    if (req->timer > 0) {
        f32 xyOffset = Rand_ZeroOne();

        Quake_UpdateShakeInfo(req, shake, xyOffset, Rand_ZeroOne() * xyOffset);
        req->timer--;
    }
    return req->timer;
}

s16 Quake_CallbackType4(QuakeRequest* req, ShakeInfo* shake) {
    if (req->timer > 0) {
        f32 xyOffset = Rand_ZeroOne() * ((f32)req->timer / req->duration);

        Quake_UpdateShakeInfo(req, shake, xyOffset, Rand_ZeroOne() * xyOffset);
        req->timer--;
    }
    return req->timer;
}

s16 Quake_GetFreeIndex(void) {
    s32 i;
    s32 index;
    s32 timerMin = 0x10000; // UINT16_MAX + 1

    for (i = 0; i < ARRAY_COUNT(sQuakeRequest); i++) {
        if (sQuakeRequest[i].type == QUAKE_TYPE_NONE) {
            index = i;
            timerMin = 0x20000; // Magic Number to indicate there was an unused quake index
            break;
        }

        if (timerMin > sQuakeRequest[i].timer) {
            timerMin = sQuakeRequest[i].timer;
            index = i;
        }
    }

    if (timerMin != 0x20000) {
        osSyncPrintf(VT_COL(YELLOW, BLACK) "quake: too many request %d is changed new one !!\n" VT_RST, index);
    }

    return index;
}

QuakeRequest* Quake_RequestImpl(Camera* camera, u32 type) {
    s16 index = Quake_GetFreeIndex();
    QuakeRequest* req = &sQuakeRequest[index];

    __osMemset(req, 0, sizeof(QuakeRequest));

    req->cam = camera;
    req->camId = camera->camId;
    req->type = type;
    req->isRelativeToScreen = true;
    req->index = ((s16)(Rand_ZeroOne() * 0x10000) & ~3) + index;

    sQuakeRequestCount++;

    return req;
}

void Quake_Remove(QuakeRequest* req) {
    req->type = QUAKE_TYPE_NONE;
    req->timer = -1;
    sQuakeRequestCount--;
}

QuakeRequest* Quake_GetRequest(s16 index) {
    QuakeRequest* req = &sQuakeRequest[index & 3];

    if (req->type == QUAKE_TYPE_NONE) {
        return NULL;
    }

    if (index != req->index) {
        return NULL;
    }

    return req;
}

#define QUAKE_SPEED (1 << 0)
#define QUAKE_Y_OFFSET (1 << 1)
#define QUAKE_X_OFFSET (1 << 2)
#define QUAKE_ZOOM (1 << 3)
#define QUAKE_ROLL (1 << 4)
#define QUAKE_ORIENTATION_PITCH (1 << 5)
#define QUAKE_ORIENTATION_YAW (1 << 6)
#define QUAKE_ORIENTATION_ROLL (1 << 7)
#define QUAKE_COUNTDOWN (1 << 8)
#define QUAKE_IS_SHAKE_PERPENDICULAR (1 << 9)

QuakeRequest* Quake_SetValue(s16 index, s16 valueType, s16 value) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req == NULL) {
        return NULL;
    } else {
        switch (valueType) {
            case QUAKE_SPEED:
                req->speed = value;
                break;

            case QUAKE_Y_OFFSET:
                req->y = value;
                break;

            case QUAKE_X_OFFSET:
                req->x = value;
                break;

            case QUAKE_ZOOM:
                req->zoom = value;
                break;

            case QUAKE_ROLL:
                req->roll = value;
                break;

            case QUAKE_ORIENTATION_PITCH:
                req->xOrientation.x = value;
                break;

            case QUAKE_ORIENTATION_YAW:
                req->xOrientation.y = value;
                break;

            case QUAKE_ORIENTATION_ROLL:
                req->xOrientation.z = value;
                break;

            case QUAKE_COUNTDOWN:
                req->timer = value;
                req->duration = req->timer;
                break;

            case QUAKE_IS_SHAKE_PERPENDICULAR:
                req->isRelativeToScreen = value;
                break;

            default:
                break;
        }
    }

    //! @bug UB: missing return. "req" is in v0 at this point, but doing an
    //! explicit return uses an additional register.
#ifdef AVOID_UB
    return req;
#endif
}

u32 Quake_SetSpeed(s16 index, s16 speed) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req != NULL) {
        req->speed = speed;
        return true;
    }
    return false;
}

u32 Quake_SetDuration(s16 index, s16 duration) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req != NULL) {
        req->duration = req->timer = duration;
        return true;
    }
    return false;
}

s16 Quake_GetTimeLeft(s16 index) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req != NULL) {
        return req->timer;
    }
    return 0;
}

u32 Quake_SetPerturbations(s16 index, s16 yOffset, s16 xOffset, s16 zoom, s16 roll) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req != NULL) {
        req->y = yOffset;
        req->x = xOffset;
        req->zoom = zoom;
        req->roll = roll;
        return true;
    }
    return false;
}

u32 Quake_SetOrientation(s16 index, s16 isRelativeToScreen, Vec3s xOrientation) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req != NULL) {
        req->isRelativeToScreen = isRelativeToScreen;
        req->xOrientation = xOrientation;
        return true;
    }
    return false;
}

void Quake_Init(void) {
    s16 i;

    for (i = 0; i < ARRAY_COUNT(sQuakeRequest); i++) {
        sQuakeRequest[i].type = QUAKE_TYPE_NONE;
        sQuakeRequest[i].timer = 0;
    }
    sQuakeUnused = 1;
    sQuakeRequestCount = 0;
}

s16 Quake_Request(Camera* camera, u32 type) {
    return Quake_RequestImpl(camera, type)->index;
}

u32 Quake_RemoveRequest(s16 index) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req != NULL) {
        Quake_Remove(req);
        return true;
    }
    return false;
}

s16 (*sQuakeCallbacks[])(QuakeRequest*, ShakeInfo*) = {
    NULL,
    Quake_CallbackType1,
    Quake_CallbackType2,
    Quake_CallbackType3,
    Quake_CallbackType4,
    Quake_CallbackType5,
    Quake_CallbackType6,
};

s16 Quake_Update(Camera* camera, QuakeCamData* camData) {
    f32 maxCurr;
    f32 maxNext;
    QuakeRequest* req;
    ShakeInfo shake;
    f32 absSpeedDiv;
    s16* camId;
    s32 pad;
    s32 index;
    s32 quakeCount;
    u32 cond;
    Vec3f vec;
    PlayState* play = camera->play;

    vec.x = 0.0f;
    vec.y = 0.0f;
    vec.z = 0.0f;

    camData->roll = 0;
    camData->yaw = 0;
    camData->zoom = 0;

    camData->atOffset.x = 0.0f;
    camData->atOffset.y = 0.0f;
    camData->atOffset.z = 0.0f;

    camData->eyeOffset.x = 0.0f;
    camData->eyeOffset.y = 0.0f;
    camData->eyeOffset.z = 0.0f;

    camData->max = 0.0f;

    if (sQuakeRequestCount == 0) {
        return 0;
    }

    quakeCount = 0;
    for (index = 0; index < ARRAY_COUNT(sQuakeRequest); index++) {
        req = &sQuakeRequest[index];
        if (req->type == QUAKE_TYPE_NONE) {
            continue;
        }

        if (play->cameraPtrs[req->camId] == NULL) {
            osSyncPrintf(VT_COL(YELLOW, BLACK) "quake: stopped! 'coz camera [%d] killed!!\n" VT_RST, req->camId);
            Quake_Remove(req);
            continue;
        }

        camId = &camera->camId;
        cond = req->cam->camId != *camId;
        absSpeedDiv = (f32)ABS(req->speed) / 0x8000;

        if (sQuakeCallbacks[req->type](req, &shake) == 0) {
            // Quake has reached the end of its timer.
            Quake_Remove(req);
            continue;
        }

        if (cond) {
            continue;
        }

        if (fabsf(camData->atOffset.x) < fabsf(shake.atOffset.x)) {
            camData->atOffset.x = shake.atOffset.x;
        }
        if (fabsf(camData->atOffset.y) < fabsf(shake.atOffset.y)) {
            camData->atOffset.y = shake.atOffset.y;
        }
        if (fabsf(camData->atOffset.z) < fabsf(shake.atOffset.z)) {
            camData->atOffset.z = shake.atOffset.z;
        }
        if (fabsf(camData->eyeOffset.x) < fabsf(shake.eyeOffset.x)) {
            camData->eyeOffset.x = shake.eyeOffset.x;
        }
        if (fabsf(camData->eyeOffset.y) < fabsf(shake.eyeOffset.y)) {
            camData->eyeOffset.y = shake.eyeOffset.y;
        }
        if (fabsf(camData->eyeOffset.z) < fabsf(shake.eyeOffset.z)) {
            camData->eyeOffset.z = shake.eyeOffset.z;
        }
        if (camData->roll < shake.roll) {
            camData->roll = shake.roll;
            camData->yaw = shake.yaw;
        }
        if (camData->zoom < shake.zoom) {
            camData->zoom = shake.zoom;
        }

        maxCurr = OLib_Vec3fDist(&shake.atOffset, &vec) * absSpeedDiv;
        maxNext = OLib_Vec3fDist(&shake.eyeOffset, &vec) * absSpeedDiv;
        maxCurr = CLAMP_MIN(maxCurr, maxNext);

        maxNext = (camData->roll * (1.0f / 200.0f)) * absSpeedDiv;
        maxCurr = CLAMP_MIN(maxCurr, maxNext);

        maxNext = (camData->zoom * (1.0f / 200.0f)) * absSpeedDiv;
        maxCurr = CLAMP_MIN(maxCurr, maxNext);

        if (camData->max < maxCurr) {
            camData->max = maxCurr;
        }

        quakeCount++;
    }
    return quakeCount;
}
