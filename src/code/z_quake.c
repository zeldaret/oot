#include <global.h>
#include <vt.h>

QuakeRequest sQuakeRequest[4];
s16 D_80126250 = 1;
s16 sQuakeRequestCount = 0;

s16 (*sQuakeCallbacks[])(QuakeRequest*, ShakeInfo*) = {
    NULL, Quake_Callback1, Quake_Callback2, Quake_Callback3, Quake_Callback4, Quake_Callback5, Quake_Callback6,
};

Vec3f* Quake_AddVec(Vec3f* dst, Vec3f* arg1, VecSph* arg2) {
    Vec3f vec1;
    Vec3f vec2;

    func_8007C25C(&vec2, arg2);
    vec1.x = arg1->x + vec2.x;
    vec1.y = arg1->y + vec2.y;
    vec1.z = arg1->z + vec2.z;
    *dst = vec1;
    return dst;
}

void Quake_UpdateShakeInfo(QuakeRequest* req, ShakeInfo* shake, f32 y, f32 x) {
    Vec3f* unk50 = &req->cam->at;
    Vec3f* unk5C = &req->cam->eye;

    Vec3f vec;
    VecSph struc2;
    VecSph struc1;
    Vec3f vec2;

    if (req->unk_1C) {
        vec.x = 0;
        vec.y = 0;
        vec.z = 0;
        func_8007C490(&struc1, unk5C, unk50);
        struc2.r = req->y * y;
        struc2.phi = struc1.phi + req->unk_14.unk_00 + 0x4000;
        struc2.theta = struc1.theta + req->unk_14.unk_02;
        Quake_AddVec(&vec, &vec, &struc2);
        struc2.r = req->x * x;
        struc2.phi = struc1.phi + req->unk_14.unk_00;
        struc2.theta = struc1.theta + req->unk_14.unk_02 + 0x4000;
        Quake_AddVec(&vec, &vec, &struc2);
    } else {
        vec.x = 0;
        vec.y = req->y * y;
        vec.z = 0;
        struc2.r = req->x * x;
        struc2.phi = req->unk_14.unk_00;
        struc2.theta = req->unk_14.unk_02;
        Quake_AddVec(&vec, &vec, &struc2);
    }

    vec2 = vec;
    shake->vec2 = vec2;
    shake->vec1 = vec2;
    shake->unk_1A = (f32)0x8000 * y;
    shake->rotZ = req->rotZ * y;
    shake->zoom = req->zoom * y;
}

s16 Quake_Callback1(QuakeRequest* req, ShakeInfo* shake) {
    u32 pad;
    if (req->countdown > 0) {
        f32 a = Math_Sins(req->speed * req->countdown);
        Quake_UpdateShakeInfo(req, shake, a, Math_Rand_ZeroOne() * a);
        req->countdown--;
    }
    return req->countdown;
}

s16 Quake_Callback5(QuakeRequest* req, ShakeInfo* shake) {
    if (req->countdown > 0) {
        f32 a = Math_Sins(req->speed * req->countdown);
        Quake_UpdateShakeInfo(req, shake, a, a);
        req->countdown--;
    }
    return req->countdown;
}

s16 Quake_Callback6(QuakeRequest* req, ShakeInfo* shake) {
    u32 pad;
    f32 a;

    req->countdown--;
    a = Math_Sins(req->speed * ((req->countdown & 0xF) + 500));
    Quake_UpdateShakeInfo(req, shake, a, Math_Rand_ZeroOne() * a);
    return 1;
}

s16 Quake_Callback3(QuakeRequest* req, ShakeInfo* shake) {
    if (req->countdown > 0) {
        f32 a = Math_Sins(req->speed * req->countdown) * ((f32)req->countdown / (f32)req->countdownMax);
        Quake_UpdateShakeInfo(req, shake, a, a);
        req->countdown--;
    }
    return req->countdown;
}

s16 Quake_Callback2(QuakeRequest* req, ShakeInfo* shake) {
    if (req->countdown > 0) {
        f32 a = Math_Rand_ZeroOne();
        Quake_UpdateShakeInfo(req, shake, a, Math_Rand_ZeroOne() * a);
        req->countdown--;
    }
    return req->countdown;
}

s16 Quake_Callback4(QuakeRequest* req, ShakeInfo* shake) {
    if (req->countdown > 0) {
        f32 a = Math_Rand_ZeroOne() * ((f32)req->countdown / (f32)req->countdownMax);
        Quake_UpdateShakeInfo(req, shake, a, Math_Rand_ZeroOne() * a);
        req->countdown--;
    }
    return req->countdown;
}

s16 Quake_GetFreeIndex() {
    s32 i;
    s32 ret;
    s32 min = 0x10000;

    for (i = 0; i < ARRAY_COUNT(sQuakeRequest); i++) {
        if (sQuakeRequest[i].callbackIdx == 0) {
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

QuakeRequest* Quake_AddImpl(Camera* cam, u32 callbackIdx) {
    s16 idx = Quake_GetFreeIndex();
    QuakeRequest* req = &sQuakeRequest[idx];

    func_80106860(req, 0, sizeof(QuakeRequest)); // memset
    req->cam = cam;
    req->camPtrIdx = cam->unk_164;
    req->callbackIdx = callbackIdx;
    req->unk_1C = 1;
    req->randIdx = ((s16)(Math_Rand_ZeroOne() * (f32)0x10000) & ~3) + idx;
    sQuakeRequestCount++;

    return req;
}

void Quake_Remove(QuakeRequest* req) {
    req->callbackIdx = 0;
    req->countdown = -1;
    sQuakeRequestCount--;
}

QuakeRequest* Quake_GetRequest(s16 idx) {
    QuakeRequest* req = &sQuakeRequest[idx & 3];

    if (req->callbackIdx == 0) {
        return NULL;
    }

    if (idx != req->randIdx) {
        return NULL;
    }

    return req;
}

QuakeRequest* Quake_SetValue(s16 idx, s16 valueType, s16 value) {
    QuakeRequest* req;

    req = Quake_GetRequest(idx);
    if (req == NULL) {
        return NULL;
    } else {
        switch (valueType) {
            case 1:
                req->speed = value;
                break;
            case 2:
                req->y = value;
                break;
            case 4:
                req->x = value;
                break;
            case 8:
                req->zoom = value;
                break;
            case 0x10:
                req->rotZ = value;
                break;
            case 0x20:
                req->unk_14.unk_00 = value;
                break;
            case 0x40:
                req->unk_14.unk_02 = value;
                break;
            case 0x80:
                req->unk_14.unk_04 = value;
                break;
            case 0x100:
                req->countdown = value;
                req->countdownMax = req->countdown;
                break;
            case 0x200:
                req->unk_1C = value;
                break;
        }
    }
}

u32 Quake_SetSpeed(s16 idx, s16 value) {
    QuakeRequest* req = Quake_GetRequest(idx);
    if (req) {
        req->speed = value;
        return true;
    }
    return false;
}

u32 Quake_SetCountdown(s16 idx, s16 value) {
    QuakeRequest* req = Quake_GetRequest(idx);
    if (req) {
        req->countdown = value;
        req->countdownMax = req->countdown;
        return true;
    }
    return false;
}

s16 Quake_GetCountdown(s16 idx) {
    QuakeRequest* req = Quake_GetRequest(idx);
    if (req) {
        return req->countdown;
    }
    return 0;
}

u32 Quake_SetQuakeValues(s16 idx, s16 y, s16 x, s16 zoom, s16 rotZ) {
    QuakeRequest* req = Quake_GetRequest(idx);
    if (req) {
        req->y = y;
        req->x = x;
        req->zoom = zoom;
        req->rotZ = rotZ;
        return true;
    }
    return false;
}

u32 Quake_SetUnkValues(s16 idx, s16 arg1, SubQuakeRequest14 arg2) {
    QuakeRequest* req = Quake_GetRequest(idx);
    if (req) {
        req->unk_1C = arg1;

        req->unk_14 = arg2;
        return true;
    }
    return false;
}

void Quake_Init() {
    s16 i;
    for (i = 0; i < ARRAY_COUNT(sQuakeRequest); i++) {
        sQuakeRequest[i].callbackIdx = 0;
        sQuakeRequest[i].countdown = 0;
    }
    D_80126250 = 1;
    sQuakeRequestCount = 0;
}

s16 Quake_Add(Camera* cam, u32 callbackIdx) {
    return Quake_AddImpl(cam, callbackIdx)->randIdx;
}

u32 Quake_RemoveFromIdx(s16 idx) {
    QuakeRequest* req = Quake_GetRequest(idx);
    if (req) {
        Quake_Remove(req);
        return true;
    }
    return false;
}

s16 Quake_Calc(Camera* camera, UnkQuakeCalcStruct* camData) {
    f32 max;
    f32 max2;
    QuakeRequest* req;
    ShakeInfo shake;
    f32 absSpeedDiv;
    s16* temp;
    u32 pad2;
    s32 idx;
    s32 ret;
    u32 eq;
    Vec3f vec;
    GlobalContext* globalCtx;

    globalCtx = camera->globalCtx;
    vec.x = 0.0f;
    vec.y = 0.0f;
    vec.z = 0.0f;
    camData->rotZ = 0;
    camData->unk_1A = 0;
    camData->zoom = 0;
    camData->vec1.x = 0.0f;
    camData->vec1.y = 0.0f;
    camData->vec1.z = 0.0f;
    camData->vec2.x = 0.0f;
    camData->vec2.y = 0.0f;
    camData->vec2.z = 0.0f;
    camData->unk_20 = 0.0f;

    if (sQuakeRequestCount == 0) {
        return 0;
    }

    ret = 0;
    for (idx = 0; idx < ARRAY_COUNT(sQuakeRequest); idx++) {
        req = &sQuakeRequest[idx];
        if (req->callbackIdx != 0) {
            if (globalCtx->cameraPtrs[req->camPtrIdx] == 0) {
                osSyncPrintf(VT_COL(YELLOW, BLACK) "quake: stopped! 'coz camera [%d] killed!!\n" VT_RST,
                             req->camPtrIdx);
                Quake_Remove(req);
            } else {
                temp = &camera->unk_164;
                eq = req->cam->unk_164 != *temp;
                absSpeedDiv = ABS(req->speed) / (f32)0x8000;
                if (sQuakeCallbacks[req->callbackIdx](req, &shake) == 0) {
                    Quake_Remove(req);
                } else if (eq == 0) {
                    if (fabsf(camData->vec1.x) < fabsf(shake.vec1.x)) {
                        camData->vec1.x = shake.vec1.x;
                    }
                    if (fabsf(camData->vec1.y) < fabsf(shake.vec1.y)) {
                        camData->vec1.y = shake.vec1.y;
                    }
                    if (fabsf(camData->vec1.z) < fabsf(shake.vec1.z)) {
                        camData->vec1.z = shake.vec1.z;
                    }
                    if (fabsf(camData->vec2.x) < fabsf(shake.vec2.x)) {
                        camData->vec2.x = shake.vec2.x;
                    }
                    if (fabsf(camData->vec2.y) < fabsf(shake.vec2.y)) {
                        camData->vec2.y = shake.vec2.y;
                    }
                    if (fabsf(camData->vec2.z) < fabsf(shake.vec2.z)) {
                        camData->vec2.z = shake.vec2.z;
                    }
                    if (camData->rotZ < shake.rotZ) {
                        camData->rotZ = shake.rotZ;
                        camData->unk_1A = shake.unk_1A;
                    }
                    if (camData->zoom < shake.zoom) {
                        camData->zoom = shake.zoom;
                    }

                    max = func_8007BF90(&shake.vec1, &vec) * absSpeedDiv;
                    max2 = func_8007BF90(&shake.vec2, &vec) * absSpeedDiv;
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
