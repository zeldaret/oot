#include "global.h"
#include "quake.h"
#include "terminal.h"

typedef struct {
    /* 0x00 */ s16 index;
    /* 0x02 */ s16 duration;
    /* 0x04 */ Camera* cam;
    /* 0x08 */ u32 type;
    /* 0x0C */ s16 y;
    /* 0x0E */ s16 x;
    /* 0x10 */ s16 fov;
    /* 0x12 */ s16 upPitchOffset;
    /* 0x14 */ Vec3s orientation; // alters the orientation of the xy perturbation. Only x (pitch) and y (yaw) are used
    /* 0x1A */ s16 speed;
    /* 0x1C */ s16 isRelativeToScreen; // is the quake relative to the screen or on world coordinates
    /* 0x1E */ s16 timer;
    /* 0x20 */ s16 camId;
} QuakeRequest; // size = 0x24

QuakeRequest sQuakeRequests[4];
s16 sQuakeUnused = 1;
s16 sQuakeRequestCount = 0;

Vec3f Quake_AddVecGeoToVec3f(Vec3f* a, VecGeo* geo) {
    Vec3f sum;
    Vec3f b = OLib_VecGeoToVec3f(geo);

    sum.x = a->x + b.x;
    sum.y = a->y + b.y;
    sum.z = a->z + b.z;

    return sum;
}

void Quake_UpdateShakeInfo(QuakeRequest* req, ShakeInfo* shake, f32 y, f32 x) {
    Vec3f* at = &req->cam->at;
    Vec3f* eye = &req->cam->eye;
    Vec3f offset;
    VecGeo geo;
    VecGeo eyeToAtGeo;

    if (req->isRelativeToScreen) {
        offset.x = 0;
        offset.y = 0;
        offset.z = 0;
        eyeToAtGeo = OLib_Vec3fDiffToVecGeo(eye, at);

        // y shake
        geo.r = req->y * y;
        // point unit vector up, then add on `req->orientation`
        geo.pitch = eyeToAtGeo.pitch + req->orientation.x + 0x4000;
        geo.yaw = eyeToAtGeo.yaw + req->orientation.y;
        // apply y shake
        offset = Quake_AddVecGeoToVec3f(&offset, &geo);

        // x shake
        geo.r = req->x * x;
        // point unit vector left, then add on `req->orientation`
        geo.pitch = eyeToAtGeo.pitch + req->orientation.x;
        geo.yaw = eyeToAtGeo.yaw + req->orientation.y + 0x4000;
        // apply x shake
        offset = Quake_AddVecGeoToVec3f(&offset, &geo);
    } else {
        offset.x = 0;
        offset.y = req->y * y;
        offset.z = 0;
        geo.r = req->x * x;
        geo.pitch = req->orientation.x;
        geo.yaw = req->orientation.y;
        offset = Quake_AddVecGeoToVec3f(&offset, &geo);
    }

    shake->atOffset = shake->eyeOffset = offset;
    shake->upYawOffset = 0x8000 * y;
    shake->upPitchOffset = req->upPitchOffset * y;
    shake->fovOffset = req->fov * y;
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

    // Not returning the timer ensures quake type 6 continues indefinitely until manually removed
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

    for (i = 0; i < ARRAY_COUNT(sQuakeRequests); i++) {
        if (sQuakeRequests[i].type == QUAKE_TYPE_NONE) {
            index = i;
            timerMin = 0x20000; // Magic Number to indicate there was an unused quake index
            break;
        }

        if (timerMin > sQuakeRequests[i].timer) {
            timerMin = sQuakeRequests[i].timer;
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
    QuakeRequest* req = &sQuakeRequests[index];

    __osMemset(req, 0, sizeof(QuakeRequest));

    req->cam = camera;
    req->camId = camera->camId;
    req->type = type;
    req->isRelativeToScreen = true;

    // Add a unique random identifier to the upper bits of the index
    // The `~3` assumes there are only 4 requests
    req->index = index + ((s16)(Rand_ZeroOne() * 0x10000) & ~3);

    sQuakeRequestCount++;

    return req;
}

void Quake_Remove(QuakeRequest* req) {
    req->type = QUAKE_TYPE_NONE;
    req->timer = -1;
    sQuakeRequestCount--;
}

QuakeRequest* Quake_GetRequest(s16 index) {
    QuakeRequest* req = &sQuakeRequests[index & 3];

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
#define QUAKE_FOV (1 << 3)
#define QUAKE_ROLL (1 << 4)
#define QUAKE_ORIENTATION_PITCH (1 << 5)
#define QUAKE_ORIENTATION_YAW (1 << 6)
#define QUAKE_ORIENTATION_ROLL (1 << 7)
#define QUAKE_DURATION (1 << 8)
#define QUAKE_IS_RELATIVE_TO_SCREEN (1 << 9)

QuakeRequest* Quake_SetValue(s16 index, s16 valueType, s16 value) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req == NULL) {
        return NULL;
    }

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

        case QUAKE_FOV:
            req->fov = value;
            break;

        case QUAKE_ROLL:
            req->upPitchOffset = value;
            break;

        case QUAKE_ORIENTATION_PITCH:
            req->orientation.x = value;
            break;

        case QUAKE_ORIENTATION_YAW:
            req->orientation.y = value;
            break;

        case QUAKE_ORIENTATION_ROLL:
            req->orientation.z = value;
            break;

        case QUAKE_DURATION:
            req->timer = value;
            req->duration = req->timer;
            break;

        case QUAKE_IS_RELATIVE_TO_SCREEN:
            req->isRelativeToScreen = value;
            break;

        default:
            break;
    }

        //! @bug UB: missing return. "req" is in v0 at this point, but doing an
        //! explicit return uses an additional register.
#ifdef AVOID_UB
    return req;
#endif
}

/**
 * @param index
 * @param speed For periodic types only, the angular frequency of the sine wave (binang / frame)
 * @return true if successfully applied, false if the request does not exist
 */
u32 Quake_SetSpeed(s16 index, s16 speed) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req != NULL) {
        req->speed = speed;
        return true;
    }
    return false;
}

/**
 * @param index quake request index to apply
 * @param duration Number of frames to apply the quake
 * @return true if successfully applied, false if the request does not exist
 */
u32 Quake_SetDuration(s16 index, s16 duration) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req != NULL) {
        req->duration = req->timer = duration;
        return true;
    }
    return false;
}

/**
 * @param index quake request index to get
 * @return Number of frames until the quake is finished
 */
s16 Quake_GetTimeLeft(s16 index) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req != NULL) {
        return req->timer;
    }
    return 0;
}

/**
 * @param index quake request index to apply
 * @param y Apply up/down shake
 * @param x Apply left/right shake
 * @param fov Apply zooming in/out shake (binang)
 * @param roll Apply rolling shake (binang)
 * @return true if successfully applied, false if the request does not exist
 */
u32 Quake_SetPerturbations(s16 index, s16 y, s16 x, s16 fov, s16 roll) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req != NULL) {
        req->y = y;
        req->x = x;
        req->fov = fov;
        // Visual roll is indirectly achieved by offsetting the pitch in calculating the camera "Up" vector
        req->upPitchOffset = roll;
        return true;
    }
    return false;
}

/**
 * @param index quake request index to apply
 * @param isRelativeToScreen Is the quake applied relative to the screen or in absolute world coordinates
 * @param orientation orient the x/y shake to a different direction
 * @return true if successfully applied, false if the request does not exist
 */
u32 Quake_SetOrientation(s16 index, s16 isRelativeToScreen, Vec3s orientation) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req != NULL) {
        req->isRelativeToScreen = isRelativeToScreen;
        req->orientation = orientation;
        return true;
    }
    return false;
}

void Quake_Init(void) {
    s16 i;

    for (i = 0; i < ARRAY_COUNT(sQuakeRequests); i++) {
        sQuakeRequests[i].type = QUAKE_TYPE_NONE;
        sQuakeRequests[i].timer = 0;
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
    NULL,                // QUAKE_TYPE_NONE
    Quake_CallbackType1, // QUAKE_TYPE_1
    Quake_CallbackType2, // QUAKE_TYPE_2
    Quake_CallbackType3, // QUAKE_TYPE_3
    Quake_CallbackType4, // QUAKE_TYPE_4
    Quake_CallbackType5, // QUAKE_TYPE_5
    Quake_CallbackType6, // QUAKE_TYPE_6
};

s16 Quake_Update(Camera* camera, ShakeInfo* camShake) {
    f32 maxCurr;
    f32 maxNext;
    ShakeInfo shake;
    QuakeRequest* req;
    f32 absSpeedDiv;
    s16* camId;
    s32 index;
    s32 numQuakesApplied;
    u32 isDifferentCamId;
    Vec3f zeroVec;
    PlayState* play = camera->play;

    zeroVec.x = 0.0f;
    zeroVec.y = 0.0f;
    zeroVec.z = 0.0f;

    camShake->upPitchOffset = 0;
    camShake->upYawOffset = 0;
    camShake->fovOffset = 0;

    camShake->atOffset.x = 0.0f;
    camShake->atOffset.y = 0.0f;
    camShake->atOffset.z = 0.0f;

    camShake->eyeOffset.x = 0.0f;
    camShake->eyeOffset.y = 0.0f;
    camShake->eyeOffset.z = 0.0f;

    camShake->maxOffset = 0.0f;

    if (sQuakeRequestCount == 0) {
        return 0;
    }

    numQuakesApplied = 0;
    for (index = 0; index < ARRAY_COUNT(sQuakeRequests); index++) {
        req = &sQuakeRequests[index];
        if (req->type == QUAKE_TYPE_NONE) {
            continue;
        }

        if (play->cameraPtrs[req->camId] == NULL) {
            osSyncPrintf(VT_COL(YELLOW, BLACK) "quake: stopped! 'coz camera [%d] killed!!\n" VT_RST, req->camId);
            Quake_Remove(req);
            continue;
        }

        camId = &camera->camId;
        isDifferentCamId = req->cam->camId != *camId;
        absSpeedDiv = (f32)ABS(req->speed) / 0x8000;

        if (sQuakeCallbacks[req->type](req, &shake) == 0) {
            // Quake has reached the end of its timer.
            Quake_Remove(req);
            continue;
        }

        if (isDifferentCamId) {
            // Quake is attached to a different camId
            continue;
        }

        if (fabsf(camShake->atOffset.x) < fabsf(shake.atOffset.x)) {
            camShake->atOffset.x = shake.atOffset.x;
        }
        if (fabsf(camShake->atOffset.y) < fabsf(shake.atOffset.y)) {
            camShake->atOffset.y = shake.atOffset.y;
        }
        if (fabsf(camShake->atOffset.z) < fabsf(shake.atOffset.z)) {
            camShake->atOffset.z = shake.atOffset.z;
        }
        if (fabsf(camShake->eyeOffset.x) < fabsf(shake.eyeOffset.x)) {
            camShake->eyeOffset.x = shake.eyeOffset.x;
        }
        if (fabsf(camShake->eyeOffset.y) < fabsf(shake.eyeOffset.y)) {
            camShake->eyeOffset.y = shake.eyeOffset.y;
        }
        if (fabsf(camShake->eyeOffset.z) < fabsf(shake.eyeOffset.z)) {
            camShake->eyeOffset.z = shake.eyeOffset.z;
        }
        if (camShake->upPitchOffset < shake.upPitchOffset) {
            camShake->upPitchOffset = shake.upPitchOffset;
            camShake->upYawOffset = shake.upYawOffset;
        }
        if (camShake->fovOffset < shake.fovOffset) {
            camShake->fovOffset = shake.fovOffset;
        }

        maxCurr = OLib_Vec3fDist(&shake.atOffset, &zeroVec) * absSpeedDiv;
        maxNext = OLib_Vec3fDist(&shake.eyeOffset, &zeroVec) * absSpeedDiv;
        maxCurr = CLAMP_MIN(maxCurr, maxNext);

        maxNext = camShake->upPitchOffset * (1.0f / 200.0f) * absSpeedDiv;
        maxCurr = CLAMP_MIN(maxCurr, maxNext);

        maxNext = camShake->fovOffset * (1.0f / 200.0f) * absSpeedDiv;
        maxCurr = CLAMP_MIN(maxCurr, maxNext);

        if (camShake->maxOffset < maxCurr) {
            camShake->maxOffset = maxCurr;
        }

        numQuakesApplied++;
    }
    return numQuakesApplied;
}
