#include "global.h"
#include "quake.h"
#include "vt.h"

typedef struct {
    /* 0x00 */ s16 index;
    /* 0x02 */ s16 countdownMax;
    /* 0x04 */ Camera* cam;
    /* 0x08 */ u32 type;
    /* 0x0C */ s16 y;
    /* 0x0E */ s16 x;
    /* 0x10 */ s16 zoom;
    /* 0x12 */ s16 rotZ;
    /* 0x14 */ Vec3s shakePlaneOffset; // angle deviations from shaking in the perpendicular plane
    /* 0x1A */ s16 speed;
    /* 0x1C */ s16 isShakePerpendicular;
    /* 0x1E */ s16 countdown;
    /* 0x20 */ s16 camId;
} QuakeRequest; // size = 0x24

typedef struct {
    /* 0x00 */ Vec3f vec1;
    /* 0x0C */ Vec3f vec2;
    /* 0x18 */ s16 rotZ;
    /* 0x1A */ s16 unk_1A;
    /* 0x1C */ s16 zoom;
} ShakeInfo; // size = 0x1E

QuakeRequest sQuakeRequest[4];
s16 D_80126250 = 1;
s16 sQuakeRequestCount = 0;

Vec3f* Quake_AddVec(Vec3f* dst, Vec3f* arg1, VecSph* arg2) {
    Vec3f vec1;
    Vec3f vec2;

    OLib_VecSphGeoToVec3f(&vec2, arg2);
    vec1.x = arg1->x + vec2.x;
    vec1.y = arg1->y + vec2.y;
    vec1.z = arg1->z + vec2.z;
    *dst = vec1;
    return dst;
}

void Quake_UpdateShakeInfo(QuakeRequest* req, ShakeInfo* shake, f32 y, f32 x) {
    Vec3f* at = &req->cam->at;
    Vec3f* eye = &req->cam->eye;

    Vec3f vec;
    VecSph struc2;
    VecSph struc1;
    Vec3f vec2;

    if (req->isShakePerpendicular) {
        vec.x = 0;
        vec.y = 0;
        vec.z = 0;
        OLib_Vec3fDiffToVecSphGeo(&struc1, eye, at);
        struc2.r = req->y * y;
        struc2.pitch = struc1.pitch + req->shakePlaneOffset.x + 0x4000;
        struc2.yaw = struc1.yaw + req->shakePlaneOffset.y;
        Quake_AddVec(&vec, &vec, &struc2);
        struc2.r = req->x * x;
        struc2.pitch = struc1.pitch + req->shakePlaneOffset.x;
        struc2.yaw = struc1.yaw + req->shakePlaneOffset.y + 0x4000;
        Quake_AddVec(&vec, &vec, &struc2);
    } else {
        vec.x = 0;
        vec.y = req->y * y;
        vec.z = 0;
        struc2.r = req->x * x;
        struc2.pitch = req->shakePlaneOffset.x;
        struc2.yaw = req->shakePlaneOffset.y;
        Quake_AddVec(&vec, &vec, &struc2);
    }

    vec2 = vec;
    shake->vec2 = vec2;
    shake->vec1 = vec2;
    shake->unk_1A = (f32)0x8000 * y;
    shake->rotZ = req->rotZ * y;
    shake->zoom = req->zoom * y;
}

s16 Quake_CallbackType1(QuakeRequest* req, ShakeInfo* shake) {
    s32 pad;

    if (req->countdown > 0) {
        f32 a = Math_SinS(req->speed * req->countdown);

        Quake_UpdateShakeInfo(req, shake, a, Rand_ZeroOne() * a);
        req->countdown--;
    }
    return req->countdown;
}

s16 Quake_CallbackType5(QuakeRequest* req, ShakeInfo* shake) {
    if (req->countdown > 0) {
        f32 a = Math_SinS(req->speed * req->countdown);

        Quake_UpdateShakeInfo(req, shake, a, a);
        req->countdown--;
    }
    return req->countdown;
}

s16 Quake_CallbackType6(QuakeRequest* req, ShakeInfo* shake) {
    s32 pad;
    f32 a;

    req->countdown--;
    a = Math_SinS(req->speed * ((req->countdown & 0xF) + 500));
    Quake_UpdateShakeInfo(req, shake, a, Rand_ZeroOne() * a);
    return 1;
}

s16 Quake_CallbackType3(QuakeRequest* req, ShakeInfo* shake) {
    if (req->countdown > 0) {
        f32 a = Math_SinS(req->speed * req->countdown) * ((f32)req->countdown / (f32)req->countdownMax);

        Quake_UpdateShakeInfo(req, shake, a, a);
        req->countdown--;
    }
    return req->countdown;
}

s16 Quake_CallbackType2(QuakeRequest* req, ShakeInfo* shake) {
    if (req->countdown > 0) {
        f32 a = Rand_ZeroOne();

        Quake_UpdateShakeInfo(req, shake, a, Rand_ZeroOne() * a);
        req->countdown--;
    }
    return req->countdown;
}

s16 Quake_CallbackType4(QuakeRequest* req, ShakeInfo* shake) {
    if (req->countdown > 0) {
        f32 a = Rand_ZeroOne() * ((f32)req->countdown / (f32)req->countdownMax);

        Quake_UpdateShakeInfo(req, shake, a, Rand_ZeroOne() * a);
        req->countdown--;
    }
    return req->countdown;
}

s16 Quake_GetFreeIndex(void) {
    s32 i;
    s32 ret;
    s32 min = 0x10000;

    for (i = 0; i < ARRAY_COUNT(sQuakeRequest); i++) {
        if (sQuakeRequest[i].type == QUAKE_TYPE_NONE) {
            ret = i;
            min = 0x20000;
            break;
        }

        if (sQuakeRequest[i].countdown < min) {
            min = sQuakeRequest[i].countdown;
            ret = i;
        }
    }

    if (min != 0x20000) {
        osSyncPrintf(VT_COL(YELLOW, BLACK) "quake: too many request %d is changed new one !!\n" VT_RST, ret);
    }

    return ret;
}

QuakeRequest* Quake_AddImpl(Camera* camera, u32 type) {
    s16 index = Quake_GetFreeIndex();
    QuakeRequest* req = &sQuakeRequest[index];

    __osMemset(req, 0, sizeof(QuakeRequest));

    req->cam = camera;
    req->camId = camera->camId;
    req->type = type;
    req->isShakePerpendicular = true;
    req->index = ((s16)(Rand_ZeroOne() * (f32)0x10000) & ~3) + index;

    sQuakeRequestCount++;

    return req;
}

void Quake_Remove(QuakeRequest* req) {
    req->type = QUAKE_TYPE_NONE;
    req->countdown = -1;
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

u32 Quake_SetValue(s16 index, s16 valueType, s16 value) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req == NULL) {
        return 0;
    } else {
        switch (valueType) {
            case QUAKE_SPEED:
                req->speed = value;
                break;

            case QUAKE_VERTICAL_MAG:
                req->y = value;
                break;

            case QUAKE_HORIZONTAL_MAG:
                req->x = value;
                break;

            case QUAKE_ZOOM:
                req->zoom = value;
                break;

            case QUAKE_ROLL_OFFSET:
                req->rotZ = value;
                break;

            case QUAKE_SHAKE_PLANE_PITCH:
                req->shakePlaneOffset.x = value;
                break;

            case QUAKE_SHAKE_PLANE_YAW:
                req->shakePlaneOffset.y = value;
                break;

            case QUAKE_SHAKE_PLANE_ROLL:
                req->shakePlaneOffset.z = value;
                break;

            case QUAKE_COUNTDOWN:
                req->countdown = value;
                req->countdownMax = req->countdown;
                break;

            case QUAKE_IS_SHAKE_PERPENDICULAR:
                req->isShakePerpendicular = value;
                break;

            default:
                break;
        }
    }
}

u32 Quake_SetSpeed(s16 index, s16 value) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req != NULL) {
        req->speed = value;
        return true;
    }
    return false;
}

u32 Quake_SetCountdown(s16 index, s16 value) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req != NULL) {
        req->countdown = value;
        req->countdownMax = req->countdown;
        return true;
    }
    return false;
}

s16 Quake_GetCountdown(s16 index) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req != NULL) {
        return req->countdown;
    }
    return 0;
}

u32 Quake_SetQuakeValues(s16 index, s16 y, s16 x, s16 zoom, s16 rotZ) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req != NULL) {
        req->y = y;
        req->x = x;
        req->zoom = zoom;
        req->rotZ = rotZ;
        return true;
    }
    return false;
}

u32 Quake_SetUnkValues(s16 index, s16 arg1, Vec3s arg2) {
    QuakeRequest* req = Quake_GetRequest(index);

    if (req != NULL) {
        req->isShakePerpendicular = arg1;
        req->shakePlaneOffset = arg2;
        return true;
    }
    return false;
}

void Quake_Init(void) {
    s16 i;

    for (i = 0; i < ARRAY_COUNT(sQuakeRequest); i++) {
        sQuakeRequest[i].type = QUAKE_TYPE_NONE;
        sQuakeRequest[i].countdown = 0;
    }
    D_80126250 = 1;
    sQuakeRequestCount = 0;
}

s16 Quake_Request(Camera* camera, u32 type) {
    return Quake_AddImpl(camera, type)->index;
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

s16 Quake_ApplyToCamera(Camera* camera, QuakeCamData* camData) {
    f32 max;
    f32 max2;
    QuakeRequest* req;
    ShakeInfo shake;
    f32 absSpeedDiv;
    s16* camId;
    u32 pad2;
    s32 index;
    s32 ret;
    u32 cond;
    Vec3f vec;
    PlayState* play;

    play = camera->play;
    vec.x = 0.0f;
    vec.y = 0.0f;
    vec.z = 0.0f;
    camData->rotZ = 0;
    camData->unk_1A = 0;
    camData->zoom = 0;
    camData->atOffset.x = 0.0f;
    camData->atOffset.y = 0.0f;
    camData->atOffset.z = 0.0f;
    camData->eyeOffset.x = 0.0f;
    camData->eyeOffset.y = 0.0f;
    camData->eyeOffset.z = 0.0f;
    camData->unk_20 = 0.0f;

    if (sQuakeRequestCount == 0) {
        return 0;
    }

    ret = 0;
    for (index = 0; index < ARRAY_COUNT(sQuakeRequest); index++) {
        req = &sQuakeRequest[index];
        if (req->type != QUAKE_TYPE_NONE) {
            if (play->cameraPtrs[req->camId] == NULL) {
                osSyncPrintf(VT_COL(YELLOW, BLACK) "quake: stopped! 'coz camera [%d] killed!!\n" VT_RST, req->camId);
                Quake_Remove(req);
            } else {
                camId = &camera->camId;
                cond = req->cam->camId != *camId;
                absSpeedDiv = (f32)ABS(req->speed) / 0x8000;
                if (sQuakeCallbacks[req->type](req, &shake) == 0) {
                    Quake_Remove(req);
                } else if (!cond) {
                    if (fabsf(camData->atOffset.x) < fabsf(shake.vec1.x)) {
                        camData->atOffset.x = shake.vec1.x;
                    }
                    if (fabsf(camData->atOffset.y) < fabsf(shake.vec1.y)) {
                        camData->atOffset.y = shake.vec1.y;
                    }
                    if (fabsf(camData->atOffset.z) < fabsf(shake.vec1.z)) {
                        camData->atOffset.z = shake.vec1.z;
                    }
                    if (fabsf(camData->eyeOffset.x) < fabsf(shake.vec2.x)) {
                        camData->eyeOffset.x = shake.vec2.x;
                    }
                    if (fabsf(camData->eyeOffset.y) < fabsf(shake.vec2.y)) {
                        camData->eyeOffset.y = shake.vec2.y;
                    }
                    if (fabsf(camData->eyeOffset.z) < fabsf(shake.vec2.z)) {
                        camData->eyeOffset.z = shake.vec2.z;
                    }
                    if (camData->rotZ < shake.rotZ) {
                        camData->rotZ = shake.rotZ;
                        camData->unk_1A = shake.unk_1A;
                    }
                    if (camData->zoom < shake.zoom) {
                        camData->zoom = shake.zoom;
                    }

                    max = OLib_Vec3fDist(&shake.vec1, &vec) * absSpeedDiv;
                    max2 = OLib_Vec3fDist(&shake.vec2, &vec) * absSpeedDiv;
                    if (max < max2) {
                        max = max2;
                    }
                    max2 = (camData->rotZ * 0.005f) * absSpeedDiv;
                    if (max < max2) {
                        max = max2;
                    }
                    max2 = (camData->zoom * 0.005f) * absSpeedDiv;
                    if (max < max2) {
                        max = max2;
                    }
                    if (camData->unk_20 < max) {
                        camData->unk_20 = max;
                    }

                    ret++;
                }
            }
        }
    }
    return ret;
}
