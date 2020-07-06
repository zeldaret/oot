#include <ultra64.h>
#include <global.h>
#include <vt.h>

s16 Camera_ChangeSetting(Camera*, s16, s16);
s32 Camera_ChangeMode(Camera* camera, s16 mode, u8 flags);
s32 Camera_ChangeModeDefaultFlags(Camera* camera, s16 mode);
s32 Camera_ChangeDataIdx(Camera* arg0, s32 arg1);
s32 func_800458D4(Camera* camera, VecSph* arg1, f32 arg2, f32* arg3, s16 arg4);
s16 func_80046CB4(Camera* camera, s16 arg1, s16 arg2, f32 arg3, f32 arg4);

//#define NON_MATCHING

#include "z_camera_data.c"

/*===============================================================*/


f32 func_800437F0(f32 arg0, f32 arg1) {
    const f32 percent = 0.4f;
    f32 ret = fabsf(arg1);

    if (arg0 < ret) {
        ret = 1;
    } else if (ret < (f32)arg0 * (1 - percent)) { //! float cast needed to match
        ret = (SQ(arg1) * (1 - percent)) / SQ((1 - percent) * arg0);
    } else {
        ret = 1 - (0.4f * SQ(arg0 - ret)) / SQ(0.4f * arg0);
    }

    return ret;
}

/*
 * Performs linear interpoloation between `cur` and `target`.  If `cur` is within
 * `minDiff` units, The result is rounded up to `target`
*/
f32 Camera_LERPCeilF(f32 target, f32 cur, f32 stepScale, f32 minDiff) {
    f32 diff = target - cur;
    f32 step;
    f32 ret;

    if (fabsf(diff) >= minDiff) {
        step = diff * stepScale;
        ret = cur + step;
    } else {
        ret = target;
    }

    return ret;
}

/*
 * Performs linear interpoloation between `cur` and `target`.  If `cur` is within
 * `minDiff` units, The result is rounded down to `cur`
*/
f32 Camera_LERPFloorF(f32 target, f32 cur, f32 stepScale, f32 minDiff) {
    f32 diff = target - cur;
    f32 step;
    f32 ret;

    if (fabsf(diff) >= minDiff) {
        step = diff * stepScale;
        ret = cur + step;
    } else {
        ret = cur;
    }

    return ret;
}

/*
 * Performs linear interpoloation between `cur` and `target`.  If `cur` is within
 * `minDiff` units, The result is rounded up to `target`
*/
s16 Camera_LERPCeilS(s16 target, s16 cur, f32 stepScale, s16 minDiff) {
    s16 diff = target - cur;
    s16 step;
    s32 ret;

    if (ABS(diff) >= minDiff) {
        step = diff * stepScale + 0.5f;
        ret = cur + step;
    } else {
        ret = target;
    }

    return ret;
}

/*
 * Performs linear interpoloation between `cur` and `target`.  If `cur` is within
 * `minDiff` units, The result is rounded down to `cur`
*/
s16 Camera_LERPFloorS(s16 target, s16 cur, f32 stepScale, s16 minDiff) {
    s16 diff = target - cur;
    s16 step;
    s32 ret;

    if (ABS(diff) >= minDiff) {
        step = diff * stepScale + 0.5f;
        ret = cur + step;
    } else {
        ret = cur;
    }

    return ret;
}

/*
 * Performs linear interpoloation between `cur` and `target`.  If `cur` is within
 * `minDiff` units, The result is rounded up to `target`
*/
void Camera_LERPCeilVec3f(Vec3f* target, Vec3f* cur, f32 yStepScale, f32 xzStepScale, f32 minDiff) {
    cur->x = Camera_LERPCeilF(target->x, cur->x, xzStepScale, minDiff);
    cur->y = Camera_LERPCeilF(target->y, cur->y, yStepScale, minDiff);
    cur->z = Camera_LERPCeilF(target->z, cur->z, xzStepScale, minDiff);
}

void func_80043ABC(Camera* camera) {
    camera->thetaUpdateRateInv = 100.0f;
    camera->phiUpdateRateInv = R_CAM_DEFA_PHI_UPDRATE;
    camera->rUpdateRateInv = OREG(6);
    camera->xzOffsetUpdateRate = PCT(OREG(2));
    camera->yOffsetUpdateRate = PCT(OREG(3));
    camera->fovUpdateRate = PCT(OREG(4));
}

void func_80043B60(Camera* camera) {
    camera->rUpdateRateInv = OREG(27);
    camera->thetaUpdateRateInv = OREG(27);
    camera->phiUpdateRateInv = OREG(27);
    camera->xzOffsetUpdateRate = 0.001f;
    camera->yOffsetUpdateRate = 0.001f;
    camera->fovUpdateRate = 0.001f;
}

Vec3f* Camera_Vec3sToVec3f(Vec3f* dest, Vec3s* src) {
    Vec3f copy;

    copy.x = src->x;
    copy.y = src->y;
    copy.z = src->z;

    *dest = copy;
    return dest;
}

Vec3f* Camera_Vec3fVecSphAdd(Vec3f* dest, Vec3f* a, VecSph* b) {
    Vec3f copy, vecB;
    OLib_VecSphRot90ToVec3f(&vecB, b);

    copy.x = a->x + vecB.x;
    copy.y = a->y + vecB.y;
    copy.z = a->z + vecB.z;

    *dest = copy;
    return dest;
}

Vec3f* Camera_Vec3fScaleXYZFactor(Vec3f* dest, Vec3f* src, Vec3f* scale, f32 scaleFactor) {
    Vec3f copy;

    copy.x = src->x + (scale->x * scaleFactor);
    copy.y = src->y + (scale->y * scaleFactor);
    copy.z = src->z + (scale->z * scaleFactor);

    *dest = copy;
    return dest;
}

s32 func_80043D18(Camera* camera, Vec3f* arg1, struct_80043D18* arg2) {
    CollisionContext* colCtx;
    Vec3f sp68, sp5C, sp50;
    f32 temp_ret;
    CollisionPoly* sp48;
    s32 sp44;
    VecSph sp3C;

    colCtx = &camera->globalCtx->colCtx;
    OLib_Vec3fDiffToVecSphRot90(&sp3C, arg1, &arg2->unk_00);
    sp3C.r += 8.0f;
    Camera_Vec3fVecSphAdd(&sp5C, arg1, &sp3C);

    if (func_8003DD6C(colCtx, arg1, &sp5C, &sp68, &arg2->unk_18, 1, 1, 1, -1, &arg2->unk_24) == 0) {
        OLib_Vec3fDistNormalize(&sp50, arg1, &arg2->unk_00);

        arg2->unk_0C.x = -sp50.x;
        arg2->unk_0C.y = -sp50.y;
        arg2->unk_0C.z = -sp50.z;

        sp68 = arg2->unk_00;
        sp68.y += 5.0f;
        temp_ret = func_8003CCA4(colCtx, &sp48, &sp44, &sp68);

        if ((arg2->unk_00.y - temp_ret) > 5.0f) {
            arg2->unk_00.x += arg2->unk_0C.x;
            arg2->unk_00.y += arg2->unk_0C.y;
            arg2->unk_00.z += arg2->unk_0C.z;
            return 0;
        }

        arg2->unk_18 = sp48;
        sp68.y = temp_ret + 1.0f;
        arg2->unk_24 = sp44;
    }
    
    arg2->unk_0C.x = arg2->unk_18->norm.x * (1.f / 32767);
    arg2->unk_0C.y = arg2->unk_18->norm.y * (1.f / 32767);
    arg2->unk_0C.z = arg2->unk_18->norm.z * (1.f / 32767);
    arg2->unk_00.x = arg2->unk_0C.x + sp68.x;
    arg2->unk_00.y = arg2->unk_0C.y + sp68.y;
    arg2->unk_00.z = arg2->unk_0C.z + sp68.z;

    return sp44 + 1;
}

s32 func_80043F34(Camera* camera, Vec3f* arg1, Vec3f* arg2) {
    struct_80043D18 sp20;
    s32 ret;

    sp20.unk_00 = *arg2;
    ret = func_80043D18(camera, arg1, &sp20);
    *arg2 = sp20.unk_00;
    return ret;
}

s32 func_80043F94(Camera *camera, Vec3f *arg1, struct_80043D18 *arg2) {
    CollisionContext* colCtx;
    Vec3f sp78;
    Vec3f sp6C;
    Vec3f sp60;
    Vec3f sp54;
    f32 temp_f0;
    CollisionPoly *sp4C;
    s32 sp48;
    VecSph sp40;
    
    colCtx = &camera->globalCtx->colCtx;
    OLib_Vec3fDiffToVecSphRot90(&sp40, arg1, &arg2->unk_00);
    sp40.r += 8.0f;
    Camera_Vec3fVecSphAdd(&sp6C, arg1, &sp40);
    if (!func_8003DD6C(colCtx, arg1, &sp6C, &sp78, &arg2->unk_18, 1, 1, 1, -1, &arg2->unk_24)) {
        OLib_Vec3fDistNormalize(&sp60, arg1, &arg2->unk_00);
        arg2->unk_0C.x = -sp60.x;
        arg2->unk_0C.y = -sp60.y;
        arg2->unk_0C.z = -sp60.z;
        sp78 = arg2->unk_00;
        sp78.y += 5.0f;
        temp_f0 = func_8003CCA4(colCtx, &sp4C, &sp48, &sp78);
        if ((arg2->unk_00.y - temp_f0) > 5.0f) {
            arg2->unk_00.x += arg2->unk_0C.x;
            arg2->unk_00.y += arg2->unk_0C.y;
            arg2->unk_00.z += arg2->unk_0C.z;
            return 0;
        }
        arg2->unk_18 = sp4C;
        sp78.y = temp_f0 + 1.0f;;
        arg2->unk_24 = sp48;
    }
    arg2->unk_0C.x = arg2->unk_18->norm.x * (1.0f / 32767.0f);
    arg2->unk_0C.y = arg2->unk_18->norm.y * (1.0f / 32767.0f);
    arg2->unk_0C.z = arg2->unk_18->norm.z * (1.0f / 32767.0f);
    if ((0.5f < arg2->unk_0C.y) || (arg2->unk_0C.y < -0.8f)) {
        arg2->unk_00.x = arg2->unk_0C.x + sp78.x;
        arg2->unk_00.y = arg2->unk_0C.y + sp78.y;
        arg2->unk_00.z = arg2->unk_0C.z + sp78.z;
    } else if (playerFloorPoly != NULL) {
        sp54.x = playerFloorPoly->norm.x * (1.0f / 32767.0f);
        sp54.y = playerFloorPoly->norm.y * (1.0f / 32767.0f);
        sp54.z = playerFloorPoly->norm.z * (1.0f / 32767.0f);
        if (func_800CE15C(sp54.x, sp54.y, sp54.z, playerFloorPoly->dist, arg1, &sp6C, &sp78, 1)) {
            arg2->unk_0C = sp54;
            arg2->unk_18 = playerFloorPoly;
            arg2->unk_24 = camera->bgCheckId;
            arg2->unk_00.x = arg2->unk_0C.x + sp78.x;
            arg2->unk_00.y = arg2->unk_0C.y + sp78.y;
            arg2->unk_00.z = arg2->unk_0C.z + sp78.z;
        } else {
            OLib_Vec3fDistNormalize(&sp60, arg1, &arg2->unk_00);
            arg2->unk_0C.x = -sp60.x;
            arg2->unk_0C.y = -sp60.y;
            arg2->unk_0C.z = -sp60.z;
            arg2->unk_00.x += arg2->unk_0C.x;
            arg2->unk_00.y += arg2->unk_0C.y;
            arg2->unk_00.z += arg2->unk_0C.z;
            return 0;
        }
    }
    return 1;
}

void func_80044340(Camera* camera, Vec3f* arg1, Vec3f* arg2) {
    struct_80043D18 sp20;
    Vec3s unused;

    sp20.unk_00 = *arg2;
    func_80043F94(camera, arg1, &sp20);
    *arg2 = sp20.unk_00;
}

s32 func_800443A0(Camera* camera, Vec3f* arg1, Vec3f* arg2) {
    s32 pad;
    Vec3f sp40;
    s32 pad2;
    s32 sp38;
    CollisionPoly* sp34;
    CollisionContext* colCtx;
    colCtx = &camera->globalCtx->colCtx;

    sp34 = NULL;
    if (func_8003DD6C(colCtx, arg1, arg2, &sp40, &sp34, 1, 1, 1, 0, &sp38) && (func_80038B7C(sp34, arg1) < 0.0f)) {
        return true;
    }

    return false;
}

f32 func_80044434(Camera* camera, Vec3f* arg1, Vec3f* arg2, s32* arg3) {
    s32 sp2C; // unused
    CollisionPoly* sp28;
    f32 temp_ret = func_8003C940(&camera->globalCtx->colCtx, &sp28, arg3, arg2);

    if (temp_ret == -32000.0f) {
        arg1->x = 0.0f;
        arg1->z = 0.0f;
        arg1->y = 1.0f;
    } else {
        arg1->x = sp28->norm.x * (1.f / 32767);
        arg1->y = sp28->norm.y * (1.f / 32767);
        arg1->z = sp28->norm.z * (1.f / 32767);
    }

    return temp_ret;
}

f32 func_80044510(Camera* camera, Vec3f* arg1) {
    Vec3f sp2C, sp20;
    s32 sp1C;

    sp2C = *arg1;
    sp2C.y += 80.0f;

    return func_80044434(camera, &sp20, &sp2C, &sp1C);
}

f32 func_80044568(Camera *camera, Vec3f *arg1, Vec3f *arg2, s32 *arg3) {
    CollisionPoly *sp6C;
    CollisionContext *colCtx = &camera->globalCtx->colCtx;
    f32 temp_f0;
    s32 i;

    for(i = 3; i > 0; i--){
        temp_f0 = func_8003CCA4(colCtx, &sp6C, arg3, arg2);
        // ! is needed, inverting the conditional does not match
        if (temp_f0 == -32000.0f || (camera->playerGroundY < temp_f0 && !((sp6C->norm.y * (1.0f / 32767.0f)) > 0.5f))) {
            arg1->x = 0.0f;
            arg1->y = 1.0f;
            arg1->z = 0.0f;
            temp_f0 = -32000.0f;
            break;
        } else if (func_80041D4C(colCtx, sp6C, *arg3) == 1) {
            // poly behavior == 1, what is 1? grass in kokiri forest
            arg2->y = temp_f0 - 10.0f;
            continue;
        } else {
            arg1->x = sp6C->norm.x * (1.0f / 32767.0f);
            arg1->y = sp6C->norm.y * (1.0f / 32767.0f);
            arg1->z = sp6C->norm.z * (1.0f / 32767.0f);
            break;
        }
    }
    if (i == 0) {
        osSyncPrintf(VT_COL(YELLOW, BLACK) "camera: foward check: too many layer!\n" VT_RST);
    }
    return temp_f0;
}

s16 Camera_GetCamDataSetting(Camera* camera, s32 camDataIdx) {
    return func_80041A4C(&camera->globalCtx->colCtx, camDataIdx, 50);
}

CamPosData* func_8004476C(Camera* camera) {
    return func_80041C10(&camera->globalCtx->colCtx, camera->camDataIdx, 50);
}

s32 func_8004479C(Camera* camera, u32* arg1, CollisionPoly* arg2) {
    s32 temp_ret;
    PosRot sp20;
    s32 ret;

    func_8002EF44(&sp20, &camera->player->actor);
    temp_ret = func_80041A28(&camera->globalCtx->colCtx, arg2, *arg1);

    if (func_80041A4C(&camera->globalCtx->colCtx, temp_ret, *arg1) == 0) {
        ret = -1;
    } else {
        ret = temp_ret;
    }
    return ret;
}

Vec3s* func_8004481C(Camera* camera, u16* cameraCnt) {
    CollisionPoly* sp44;
    s32 sp40; // unused
    s32 sp3C;
    PosRot sp28;

    func_8002EF44(&sp28, &camera->player->actor);
    sp28.pos.y += Player_GetCameraYOffset(camera->player);
    if (func_8003C940(&camera->globalCtx->colCtx, &sp44, &sp3C, &sp28.pos) == -32000.0f) {
        return NULL;
    }
    *cameraCnt = func_80041B80(&camera->globalCtx->colCtx, sp44, sp3C);
    return func_80041C98(&camera->globalCtx->colCtx, sp44, sp3C);
}

s32 func_800448CC(Camera* camera, f32* arg1) {
    PosRot sp34;
    s32 sp30;
    s32 temp_ret;

    func_8002EF44(&sp34, &camera->player->actor);
    *arg1 = sp34.pos.y;

    if (func_8004213C(camera->globalCtx, &camera->globalCtx->colCtx, sp34.pos.x, sp34.pos.z, arg1, &sp30) == 0) {
        *arg1 = -32000.0f;
        return -1;
    }
    if (!(camera->player->stateFlags1 & 0x8000000)) {
        *arg1 = -32000.0f;
        return -1;
    }

    temp_ret = func_80042538(&camera->globalCtx->colCtx, sp30);
    if ((temp_ret <= 0) || (func_80042548(&camera->globalCtx->colCtx, sp30) <= 0)) {
        return -2;
    }

    return temp_ret;
}

f32 func_800449AC(Camera* camera, Vec3f* arg1, s32* arg2) {
    PosRot sp2C;
    f32 sp28;
    s32 sp24;

    func_8002EF44(&sp2C, &camera->player->actor);
    sp28 = sp2C.pos.y;

    if (func_8004213C(camera->globalCtx, &camera->globalCtx->colCtx, arg1->x, arg1->z, &sp28, &sp24) == 0) {
        return -32000.f;
    }
    if (sp28 < arg1->y) {
        return -32000.f;
    }

    *arg2 = func_8004259C(&camera->globalCtx->colCtx, sp24);
    return sp28;
}

/**
 * Calculates the angle between points `from` and `to`
*/
s16 Camera_XZAngle(Vec3f* to, Vec3f* from) {
    return DEGF_TO_BINANG(RADF_TO_DEGF(Math_atan2f(from->x - to->x, from->z - to->z)));
}

//#define NON_MATCHING
#ifdef NON_MATCHING
s16 func_80044ADC(Camera *camera, s16 arg1, s16 arg2) {
    static f32 D_8015CE50;
    static f32 D_8015CE54;
    static struct_80043D18 D_8015CE58;

    Vec3f sp64;
    Vec3f sp58;
    Vec3f sp4C;
    f32 sp40;
    f32 sinAngle;
    f32 cosAngle;
    s32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 temp_f0;
    f32 phi_f18;
    f32 phi_f0;
    f32 phi_f16;
    f32 temp_f2;
    s16 t1, t2;
    f32 t3;

    sinAngle = Math_Sins(arg1);
    cosAngle = Math_Coss(arg1);
    temp_f0 = Player_GetCameraYOffset(camera->player);
    temp_f2 = PCT(OREG(19)) * temp_f0;
    sp30 = PCT(OREG(17)) * temp_f0;
    sp2C = PCT(OREG(18)) * temp_f0;
    sp64.x = camera->playerPosRot.pos.x;
    sp64.y = camera->playerGroundY + temp_f2;
    sp64.z = camera->playerPosRot.pos.z;
    sp58.x = (sp30 * sinAngle) + sp64.x;
    sp58.y = sp64.y;
    sp58.z = (sp30 * cosAngle) + sp64.z;
    if (arg2 || !(camera->globalCtx->state.frames & 1)) {
        D_8015CE58.unk_00.x = (sp2C * sinAngle) + sp64.x;
        D_8015CE58.unk_00.y = sp64.y;
        D_8015CE58.unk_00.z = (sp2C * cosAngle) + sp64.z;
        func_80043D18(camera, &sp64, &D_8015CE58);
        if (arg2) {
            D_8015CE54 = camera->playerGroundY;
            D_8015CE50 = camera->playerGroundY;
        }
        phi_f16 = D_8015CE54;
        phi_f18 = D_8015CE50;
    } else {
        sp2C = OLib_Vec3fDistXZ(&sp64, &D_8015CE58);
        D_8015CE58.unk_00.x += D_8015CE58.unk_0C.x * 5.0f;
        D_8015CE58.unk_00.y += D_8015CE58.unk_0C.y * 5.0f;
        D_8015CE58.unk_00.z += D_8015CE58.unk_0C.z * 5.0f;
        if (sp2C < sp30) {
            sp30 = sp2C;
            phi_f18 = func_80044568(camera, &sp4C, &D_8015CE58.unk_00, &sp34);
            phi_f0 = phi_f18;
            phi_f16 = phi_f18;
        } else {
            D_8015CE50 = func_80044568(camera, &sp4C, &sp58, &sp34);
            phi_f0 = func_80044568(camera, &sp4C, &D_8015CE58.unk_00, &sp34);
            phi_f18 = D_8015CE50;
            phi_f16 = phi_f0;
        }

        if (phi_f18 == -32000.0f) {
            phi_f18 = camera->playerGroundY;
        }

        if (phi_f0 == -32000.0f) {
            phi_f16 = phi_f18;
        }
    }

    t3 = PCT(OREG(20)) * (phi_f18 - camera->playerGroundY);
    sp40 = (1.0f - PCT(OREG(20))) * (phi_f16 - camera->playerGroundY);
    D_8015CE54 = phi_f16;
    D_8015CE50 = phi_f18;
    t1 = DEGF_TO_BINANG(RADF_TO_DEGF(Math_atan2f(t3, sp30)));
    t2 = DEGF_TO_BINANG(RADF_TO_DEGF(Math_atan2f(sp40, sp2C)));
    return t1 + t2;
}
#else
s16 func_80044ADC(Camera* camera, s16, s32);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80044ADC.s")
#endif
#undef NON_MATCHING

Vec3f *Camera_CalcUpFromPitchYawRoll(Vec3f *dest, s16 pitch, s16 yaw, s16 roll) {
    f32 sinPitch;
    f32 cosPitch;
    f32 sinYaw;
    f32 cosYaw;
    f32 sinNegRoll;
    f32 cosNegRoll;
    Vec3f spA4;
    f32 pad;
    f32 sp54;
    f32 sp4C;
    f32 sp44;
    f32 sp28;
    f32 temp_f10_2;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f4_2;
    f32 temp_f6;
    f32 temp_f8;
    f32 temp_f8_2;
    f32 temp_f8_3;

    sinPitch = Math_Sins(pitch);
    cosPitch = Math_Coss(pitch);
    sinYaw = Math_Sins(yaw);
    cosYaw = Math_Coss(yaw);
    sp28 = -sinPitch;
    sinNegRoll = Math_Sins(-roll);
    cosNegRoll = Math_Coss(-roll);
    temp_f16 = sp28 * sinYaw;
    temp_f14 = 1.0f - cosNegRoll;
    temp_f2 = cosPitch * sinYaw;
    sp54 = SQ(temp_f2);
    sp4C = (temp_f2 * sinPitch) * temp_f14;
    temp_f12 = cosPitch * cosYaw;
    temp_f4_2 = ((1.0f - sp54) * cosNegRoll) + sp54;
    sp44 = temp_f12 * sinNegRoll;
    temp_f18 = sp28 * cosYaw;
    temp_f6 = (temp_f12 * temp_f2) * temp_f14;
    temp_f10_2 = sinPitch * sinNegRoll;
    spA4.x = ((temp_f16 * temp_f4_2) + (cosPitch * (sp4C - sp44))) + (temp_f18 * (temp_f6 + temp_f10_2));
    sp54 = SQ(sinPitch);
    temp_f4_2 = (sinPitch * temp_f12) * temp_f14;
    temp_f8_3 = temp_f2 * sinNegRoll;
    temp_f8 = sp4C + sp44;
    spA4.y = ((temp_f16 * temp_f8) + (cosPitch * (((1.0f - sp54) * cosNegRoll) + sp54))) + (temp_f18 * (temp_f4_2 - temp_f8_3));
    temp_f8_2 = temp_f6 - temp_f10_2;
    spA4.z = ((temp_f16 * temp_f8_2) + (cosPitch * (temp_f4_2 + temp_f8_3))) + (temp_f18 * (((1.0f - SQ(temp_f12)) * cosNegRoll) + SQ(temp_f12)));
    *dest = spA4;
    return dest;
}

f32 Camera_ClampLERPScale(Camera* camera, f32 maxLERPScale) {
    f32 ret;

    if (camera->atLERPStepScale < PCT(R_AT_LERP_MIN)) {
        ret = PCT(R_AT_LERP_MIN);
    } else if (camera->atLERPStepScale >= maxLERPScale) {
        ret = maxLERPScale;
    } else {
        ret = PCT(R_AT_LERP_SCALE) * camera->atLERPStepScale;
    }

    return ret;
}

void Camera_CopyModeValuesToPREG(Camera* camera, s16 mode) {
    CameraModeValue *values;
    CameraModeValue *valueP;
    s32 i;

    if (PREG(82)) {
        osSyncPrintf("camera: res: stat (%d/%d/%d)\n", camera->thisIdx, camera->setting, mode);
    }

    values = sCameraSettings[camera->setting].cameraModes[mode].values;

    for (i = 0;i < sCameraSettings[camera->setting].cameraModes[mode].valueCnt; i++) {
        valueP = &values[i];
        PREG(valueP->param) = valueP->val;
        if (PREG(82)) {
            osSyncPrintf("camera: res: PREG(%02d) = %d\n", valueP->param, valueP->val);
        }
    }
    camera->animState = 0;
}

s32 Camera_CopyPREGToModeValues(Camera* camera) {
    CameraModeValue* values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
    CameraModeValue* valueP;
    s32 i;

    for (i = 0; i < sCameraSettings[camera->setting].cameraModes[camera->mode].valueCnt; i++) {
        valueP = &values[i];
        valueP->val = PREG(valueP->param);
        if (PREG(82)) {
            osSyncPrintf("camera: res: %d = PREG(%02d)\n", valueP->val, valueP->param);
        }
    }
    return true;
}

void Camera_UpdateInterface(s16 arg0) {
    s16 phi_v1;

    if((arg0 & 0xF000) != 0xF000){
        switch(arg0 & 0x7000){
            case 0x1000:
                D_8011D3A8 = 0x1A;
                break;
            case 0x2000:
                D_8011D3A8 = 0x1B;
                break;
            case 0x3000:
                D_8011D3A8 = 0x20;
                break;
            default:
                D_8011D3A8 = 0;
                break;
        }

        if(arg0 & 0x8000){
            func_800B38A4(D_8011D3A8);
        } else {
            func_800B3840(D_8011D3A8);
        }
    }

    if ((arg0 & 0xF00) != 0xF00) {
        phi_v1 = (arg0 & 0xF00) >> 8;
        if(phi_v1 == 0) {
            phi_v1 = 0x32;
        }
        if (phi_v1 != D_8011D3A4) {
            D_8011D3A4 = phi_v1;
            Interface_ChangeAlpha(D_8011D3A4);
        }
    }
}

Vec3f* func_8004545C(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, struct_80043D18* arg3, struct_80043D18* arg4) {
    Vec3f sp24;

    if (func_800427B4(arg3->unk_18, arg4->unk_18, arg1, arg2, &sp24) == 0) {
        osSyncPrintf(VT_COL(YELLOW, BLACK) "camera: corner check no cross point %x %x\n" VT_RST, arg3, arg4);
        *arg0 = arg3->unk_00;
        return arg0;
    }

    *arg0 = sp24;
    return arg0;
}

s32 func_80045508(Camera *camera, VecSph *arg1, struct_80043D18 *arg2, struct_80043D18 *arg3, s16 arg4) {
    Vec3f* at = &camera->at;
    Vec3f* eye = &camera->eye;
    Vec3f* eyeNext = &camera->eyeNext;

    Vec3f sp40;
    s32 sp3C;
    s32 sp38;
    s32 ret;
    f32 temp_f0;

    arg2->unk_00 = camera->eyeNext;
    
    ret = 0;
    sp3C = func_80043D18(camera, at, arg2);
    if (sp3C != 0) {
        arg3->unk_00 = camera->at;
        OLib_Vec3fToVecSphRot90(&arg2->unk_1C, &arg2->unk_0C);
        if (arg2->unk_1C.phi >= 0x2EE1) {
            arg2->unk_1C.theta = arg1->theta;
        }
        sp38 = func_80043D18(camera, eyeNext, arg3);
        if (sp38 == 0) {
            if (arg4 & 1) {
            
                arg3->unk_00 = *at;
                sp40 = *eye;
                
                if (func_80043D18(camera, &sp40, arg3) == 0) {
                    return 3;
                } else if (arg2->unk_18 == arg3->unk_18) {
                    return 3;
                }
            } else {
                return 3;
            }
        } else if (arg2->unk_18 == arg3->unk_18) {
            return 3;
        }
        OLib_Vec3fToVecSphRot90(&arg3->unk_1C, &arg3->unk_0C);
        if (arg3->unk_1C.phi >= 0x2EE1) {
            arg3->unk_1C.theta = BINANG_ROT180(arg1->theta);
        }
        if (sp3C != sp38) {
            ret = 3;
        } else {
            temp_f0 = Math3D_DotProduct(&arg2->unk_0C, &arg3->unk_0C);
            if (temp_f0 < -0.5f) {
                ret = 6;
            } else if (temp_f0 > 0.5f) {
                ret = 3;
            } else {
                ret = 2;
            }
        }
    }
    return ret;
}

#ifdef NON_MATCHING
// CLOSE: stack is 4 bytes too big
f32 func_80045714(Vec3f* arg0, s16 arg1, s16 arg2, f32 arg3) {
    VecSph sp1C;
    f32 sp18;

    OLib_Vec3fToVecSphRot90(&sp1C, arg0);
    sp18 = Math_Coss(sp1C.phi);
    sp18 = fabsf(sp18 * Math_Coss(arg1 - sp1C.theta));
    return Math_Coss(arg1 - arg2) * (sp18 * arg3);
}
#else
f32 func_80045714(Vec3f* a, s16 b, s16 c, f32 arg3);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045714.s")
#endif

f32 func_8007C0A8(f32, f32);

s32 func_800457A8(Camera* camera, VecSph* arg1, f32 extraYOffset, s16 arg3) {
    f32 unused;
    Vec3f posOffsetTarget;
    Vec3f atTarget;
    s32 unused2;
    PosRot* playerPosRot = &camera->playerPosRot;
    f32 yOffset;

    yOffset = Player_GetCameraYOffset(camera->player);

    posOffsetTarget.x = 0.f;
    posOffsetTarget.z = 0.f;
    posOffsetTarget.y = yOffset + extraYOffset;

    if (arg3) {
        posOffsetTarget.y -= func_8007C0A8(func_80045714(&camera->unk_108, playerPosRot->rot.y, arg1->theta, OREG(9)), yOffset);
    }

    Camera_LERPCeilVec3f(&posOffsetTarget, &camera->posOffset, camera->yOffsetUpdateRate, camera->xzOffsetUpdateRate, 0.1f);

    atTarget.x = playerPosRot->pos.x + camera->posOffset.x;
    atTarget.y = playerPosRot->pos.y + camera->posOffset.y;
    atTarget.z = playerPosRot->pos.z + camera->posOffset.z;

    Camera_LERPCeilVec3f(&atTarget, &camera->at, camera->atLERPStepScale, camera->atLERPStepScale, 0.2f);

    return true;
}

#ifdef NON_MATCHING
// CLOSE: regalloc
// I'm not sure why arg3 is a pointer.  It is not passed into any function, and is not written to.
s32 func_800458D4(Camera* camera, VecSph* arg1, f32 arg2, f32* arg3, s16 arg4) {
    f32 phi_f2;
    Vec3f sp60;
    Vec3f sp54;
    f32 temp_ret;
    PosRot* playerPosRot;
    f32 sp48;
    s32 pad[2];

    sp60.y = Player_GetCameraYOffset(camera->player) + arg2;
    sp60.x = 0.0f;
    sp60.z = 0.0f;

    playerPosRot = &camera->playerPosRot;
    if (arg4 != 0) {
        sp60.y -= func_80045714(&camera->unk_108, playerPosRot->rot.y, arg1->theta, OREG(9));
    }

    sp48 = playerPosRot->pos.y - *arg3;
    temp_ret = Math_atan2f(sp48, OLib_Vec3fDistXZ(&camera->at, &camera->eye));
    
    if (temp_ret > DEGF_TO_RADF(OREG(32))) {
        phi_f2 = 1.0f - sinf(DEGF_TO_RADF(temp_ret - OREG(32)));
    } else if (temp_ret < DEGF_TO_RADF(OREG(33))) {
        phi_f2 = 1.0f - sinf(DEGF_TO_RADF(OREG(33)) - temp_ret);
    } else {
        phi_f2 = 1.0f;
    }

    sp60.y -= sp48 * phi_f2;
    Camera_LERPCeilVec3f(&sp60, &camera->posOffset, OREG(29) * 0.01f, OREG(30) * 0.01f, 0.1f);

    sp54.x = playerPosRot->pos.x + camera->posOffset.x;
    sp54.y = playerPosRot->pos.y + camera->posOffset.y;
    sp54.z = playerPosRot->pos.z + camera->posOffset.z;
    Camera_LERPCeilVec3f(&sp54, &camera->at, camera->atLERPStepScale, camera->atLERPStepScale, 0.2f);

    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800458D4.s")
#endif

s32 func_80045B08(Camera* camera, VecSph* arg1, f32 arg2, s16 arg3) {
    f32 phi_f2;
    Vec3f sp48;
    Vec3f sp3C;
    f32 sp38; // unused
    f32 temp_ret;
    PosRot* temp_s1;

    sp48.y = Player_GetCameraYOffset(camera->player) + arg2;
    sp48.x = 0.0f;
    sp48.z = 0.0f;

    temp_ret = Math_Sins(arg3);
    temp_s1 = &camera->playerPosRot;

    if (temp_ret < 0.0f) {
        phi_f2 = Math_Coss(temp_s1->rot.y - arg1->theta);
    } else {
        phi_f2 = -Math_Coss(temp_s1->rot.y - arg1->theta);
    }

    sp48.y -= temp_ret * phi_f2 * OREG(9);
    Camera_LERPCeilVec3f(&sp48, &camera->posOffset, camera->yOffsetUpdateRate, camera->xzOffsetUpdateRate, 0.1f);

    sp3C.x = temp_s1->pos.x + camera->posOffset.x;
    sp3C.y = temp_s1->pos.y + camera->posOffset.y;
    sp3C.z = temp_s1->pos.z + camera->posOffset.z;
    Camera_LERPCeilVec3f(&sp3C, &camera->at, camera->atLERPStepScale, camera->atLERPStepScale, 0.2f);

    return 1;
}

#ifdef NON_MATCHING
// regalloc and some minor reordering. 
s32 func_80045C74(Camera *camera, VecSph *arg1, f32 arg2, f32 *arg3, s16 arg4) {
    f32 temp_f0_4;
    Vec3f sp70;
    Vec3f sp64;
    f32 sp54;
    Vec3f *sp40 = &camera->at;
    PosRot *sp3C = &camera->playerPosRot;
    f32 temp_f14_2;
    f32 temp_f2;
    f32 phi_f20;
    f32 phi_f16;

    sp70.y = Player_GetCameraYOffset(camera->player) + arg2;
    sp70.x = 0.0f;
    sp70.z = 0.0f;
    if (PREG(76) != 0) {
        if (arg4 != 0) {
            sp70.y -= func_80045714(&camera->unk_108, sp3C->rot.y, arg1->theta, OREG(9));
        }
    }
    if (camera->playerGroundY == camera->playerPosRot.pos.y || camera->player->actor.gravity > -0.1f || camera->player->stateFlags1 & 0x200000) {
        *arg3 = Camera_LERPCeilF(sp3C->pos.y, *arg3, OREG(43) * 0.01f, 0.1f);
        sp70.y-= sp3C->pos.y - *arg3;
        Camera_LERPCeilVec3f(&sp70, &camera->posOffset, camera->yOffsetUpdateRate, camera->xzOffsetUpdateRate, 0.1f);
    } else {
        if (PREG(75) == 0) {
            phi_f20 = sp3C->pos.y - *arg3;
            sp54 = OLib_Vec3fDistXZ(sp40, &camera->eye);
            Math_atan2f(phi_f20, sp54);
            temp_f2 = Math_tanf(DEG_TO_RAD(camera->fov * 0.4f)) * sp54;
            if (temp_f2 < phi_f20) {
                *arg3 += phi_f20 - temp_f2;
                phi_f20 = temp_f2;
            } else if (phi_f20 < -temp_f2) {
                *arg3 += phi_f20 + temp_f2;
                phi_f20 = -temp_f2;
            }
            sp70.y -= phi_f20;
        } else {
            phi_f20 = sp3C->pos.y - *arg3;
            temp_f0_4 = Math_atan2f(phi_f20, OLib_Vec3fDistXZ(sp40, &camera->eye));
            temp_f14_2 = DEG_TO_RAD(OREG(32));
            if (temp_f14_2 < temp_f0_4) {
                phi_f16 = 1.0f - sinf(temp_f0_4 - temp_f14_2);
            } else {
                temp_f14_2 = DEG_TO_RAD(OREG(33));
                if (temp_f0_4 < temp_f14_2) {
                    phi_f16 = 1.0f - sinf(temp_f14_2 - temp_f0_4);
                } else {
                    phi_f16 = 1.0f;
                }
            }
            sp70.y -= phi_f20 * phi_f16;
        }
        Camera_LERPCeilVec3f(&sp70, &camera->posOffset, OREG(29) * 0.01f, OREG(30) * 0.01f, 0.1f);
        camera->yOffsetUpdateRate = OREG(29) * 0.01f;
        camera->xzOffsetUpdateRate = OREG(30) * 0.01f;
    }
    sp64.x = sp3C->pos.x + camera->posOffset.x;
    sp64.y = sp3C->pos.y + camera->posOffset.y;
    sp64.z = sp3C->pos.z + camera->posOffset.z;
    Camera_LERPCeilVec3f(&sp64, sp40, camera->atLERPStepScale, camera->atLERPStepScale, 0.2f);
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80045C74.s")
#endif

#ifdef NON_MATCHING
s32 func_800460A8(Camera *camera, VecSph *arg1, Vec3f *arg2, f32 arg3, f32 arg4, f32 *arg5, VecSph *arg6, s16 arg7) {
    Vec3f sp98;
    Vec3f sp8C;
    Vec3f sp80;
    VecSph sp74;
    f32 sp68;
    Vec3f *sp54;
    PosRot *sp50;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_6;
    f32 temp_f14_2;
    f32 temp_f2;
    f32 temp_f4;
    f32 phi_f20;
    f32 phi_f16;

    temp_f0 = Player_GetCameraYOffset(camera->player);
    sp98.x = 0.0f;
    sp98.z = 0.0f;
    sp98.y = temp_f0 + arg3;
    if (PREG(76)) {
        if ((arg7 & 1) != 0) {
            sp98.y -= func_80045714(&camera->unk_108, camera->playerPosRot.rot.y, arg1->theta, OREG(9));
        }
    }
    sp8C = camera->playerPosRot.pos;
    sp50 = &camera->playerPosRot;
    sp8C.y += temp_f0;
    OLib_Vec3fDiffToVecSphRot90(arg6, &sp8C, arg2);
    sp74 = *arg6;
    if (arg4 < sp74.r) {
        sp74.r = OREG(38) * 0.01f * sp74.r;
    } else {
        temp_f0_2 = func_8007C0A8((sp50->pos.y - camera->playerGroundY) / temp_f0, 1.0f);
        temp_f2 = OREG(39) * 0.01f;
        temp_f4 = (sp74.r * temp_f2) - (((temp_f2 - (OREG(38) * 0.01f)) * sp74.r) * (sp74.r / arg4));
        sp74.r = temp_f4 - ((temp_f4 * temp_f0_2) * temp_f0_2);
    }
    if (arg7 & 0x80) {
        sp74.r *= 0.2f;
        camera->xzOffsetUpdateRate = 0.01f;
        camera->yOffsetUpdateRate = 0.01f;
    }
    OLib_VecSphRot90ToVec3f(&sp80, &sp74);
    if (PREG(89)) {
        osSyncPrintf("%f (%f %f %f) %f\n", (sp74.r / arg4), sp80.x, sp80.y, sp80.z, camera->atLERPStepScale);
    }
    sp98.x += sp80.x;
    sp98.y += sp80.y;
    sp98.z += sp80.z;
    if (camera->playerPosRot.pos.y == camera->playerGroundY|| camera->player->actor.gravity > -0.1f || camera->player->stateFlags1 & 0x200000) {
        *arg5 = Camera_LERPCeilF(sp50->pos.y, *arg5, OREG(43) * 0.01f, 0.1f);;
        sp98.y -= sp50->pos.y - *arg5;
        Camera_LERPCeilVec3f(&sp98, &camera->posOffset, camera->yOffsetUpdateRate, camera->xzOffsetUpdateRate, 0.1f);
        sp54 = &camera->at;
    } else {
        if ((arg7 & 0x80) == 0) {
            sp54 = &camera->at;
            phi_f20 = sp50->pos.y - *arg5;
            sp68 = OLib_Vec3fDistXZ(&camera->at, &camera->eye);
            Math_atan2f(phi_f20, sp68);
            temp_f2 = Math_tanf(DEG_TO_RAD(camera->fov * 0.4f)) * sp68;
            if (temp_f2 < phi_f20) {
                *arg5 = (f32) (*arg5 + (phi_f20 - temp_f2));
                phi_f20 = temp_f2;
            } else {
                if (phi_f20 < -temp_f2) {
                    *arg5 = (f32) (*arg5 + (phi_f20 + temp_f2));
                    phi_f20 = -temp_f2;
                }
            }
            sp98.y -= phi_f20;
        } else {
            sp54 = &camera->at;
            phi_f20 = sp50->pos.y - *arg5;
            temp_f0_6 = Math_atan2f(phi_f20, OLib_Vec3fDistXZ(&camera->at, &camera->eye));
            temp_f14_2 = DEG_TO_RAD(OREG(32));
            if (temp_f14_2 < temp_f0_6) {
                phi_f16 = 1.0f - sinf(temp_f0_6 - temp_f14_2);
            } else {
                temp_f14_2 = DEG_TO_RAD(OREG(33));
                if (temp_f0_6 < temp_f14_2) {
                    phi_f16 = 1.0f - sinf(temp_f14_2 - temp_f0_6);
                } else {
                    phi_f16 = 1.0f;
                }
            }
            sp98.y -= phi_f20 * phi_f16;
        }
        Camera_LERPCeilVec3f(&sp98, &camera->posOffset, OREG(29) * 0.01f, OREG(30) * 0.01f, 0.1f);
        camera->yOffsetUpdateRate = OREG(29) * 0.01f;
        camera->xzOffsetUpdateRate = OREG(30) * 0.01f;
    }
    sp8C.x = sp50->pos.x + camera->posOffset.x;
    sp8C.y = sp50->pos.y + camera->posOffset.y;
    sp8C.z = sp50->pos.z + camera->posOffset.z;
    Camera_LERPCeilVec3f(&sp8C, sp54, camera->atLERPStepScale, camera->atLERPStepScale, 0.2f);
    return 1;
}
#else
s32 func_800460A8(Camera *camera, VecSph *arg1, Vec3f *arg2, f32 arg3, f32 arg4, f32 *arg5, VecSph *arg6, s16 arg7);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800460A8.s")
#endif

s32 func_800466F8(Camera* camera, VecSph* arg1, f32 arg2, f32* arg3, s16 arg4) {
    s32 phi_v0;
    Vec3f sp60;
    Vec3f sp54;
    f32 sp50; // unused
    f32 sp4C; // unused
    f32 sp48; // I doubt this is a Vec3f
    Player* sp44;
    PosRot sp30;

    sp48 = Player_GetCameraYOffset(camera->player);
    sp44 = camera->player;
    func_8002EF44(&sp30, sp44->rideActor);

    if ((*(s32*)((s32)(sp44->rideActor) + 0x1F0) & 4) != 0) { // actors aren't this big, is rideActor a different type?
        phi_v0 = 1;
    } else {
        phi_v0 = 0;
    }

    if (phi_v0 != 0) {
        sp30.pos.y -= 49.f;
        *arg3 = Camera_LERPCeilF(sp30.pos.y, *arg3, 0.1f, 0.2f);
        camera->atLERPStepScale = Camera_LERPCeilF(0.4f, camera->atLERPStepScale, 0.2f, 0.02f);
    } else {
        *arg3 = Camera_LERPCeilF(sp30.pos.y, *arg3, 0.5f, 0.2f);
    }

    sp60.x = 0.0f;
    sp60.z = 0.0f;
    sp60.y = sp48 + arg2;

    if (arg4 != 0) {
        sp60.y -= func_80045714(&camera->unk_108, camera->playerPosRot.rot.y, arg1->theta, OREG(9));
    }

    Camera_LERPCeilVec3f(&sp60, &camera->posOffset, camera->yOffsetUpdateRate, camera->xzOffsetUpdateRate, 0.1f);

    sp54.x = camera->posOffset.x + sp30.pos.x;
    sp54.y = camera->posOffset.y + sp30.pos.y;
    sp54.z = camera->posOffset.z + sp30.pos.z;
    Camera_LERPCeilVec3f(&sp54, &camera->at, camera->atLERPStepScale, camera->atLERPStepScale, 0.2f);

    return 1;
}

f32 Camera_LERPClampDist(Camera* camera, f32 dist, f32 min, f32 max) {
    f32 distTarget;
    f32 rUpdateRateInvTarget;

    if (dist < min) {
        distTarget = min;
        rUpdateRateInvTarget = OREG(6);
    } else if (dist > max) {
        distTarget = max;
        rUpdateRateInvTarget = OREG(6);
    } else {
        distTarget = dist;
        rUpdateRateInvTarget = 1.0f;
    }

    camera->rUpdateRateInv = Camera_LERPCeilF(rUpdateRateInvTarget, camera->rUpdateRateInv, PCT(OREG(25)), 0.1f);
    return Camera_LERPCeilF(distTarget, camera->dist, 1.f / camera->rUpdateRateInv, 0.2f);
}

f32 func_800469C0(Camera* camera, f32 arg1, f32 arg2, f32 arg3, s16 arg4) {
    f32 sp1C;
    f32 phi_f12;

    if (arg1 < arg2) {
        sp1C = arg2;

        if (arg4 != 0) {
            phi_f12 = OREG(6) * 0.5f;
        } else {
            phi_f12 = OREG(6);
        }
    } else if (arg3 < arg1) {
        sp1C = arg3;

        if (arg4 != 0) {
            phi_f12 = OREG(6) * 0.5f;
        } else {
            phi_f12 = OREG(6);
        }
    } else {
        sp1C = arg1;

        if (arg4 != 0) {
            phi_f12 = OREG(6);
        } else {
            phi_f12 = 1.0f;
        }
    }

    camera->rUpdateRateInv = Camera_LERPCeilF(phi_f12, camera->rUpdateRateInv, OREG(25) * 0.01f, 0.1f);
    return Camera_LERPCeilF(sp1C, camera->dist, 1.f / camera->rUpdateRateInv, 0.2f);
}

#ifdef NON_MATCHING
// lots of regalloc and stack issues, but that's it
s16 func_80046B44(Camera* camera, s16 arg1, s16 arg2, s16 arg3) {
    s32 pad[2];
    s16 sp1C;
    s16 phi_v1;
    s16 phi_v0;
    f32 phi_a2;

    phi_v1 = ABS(arg1);
    phi_v0 = arg3 > 0 ? (s16)(Math_Coss(arg3) * arg3) : arg3;
    sp1C = arg2 - phi_v0;
    if (ABS(sp1C) < phi_v1) {
        phi_a2 = (1.0f / camera->phiUpdateRateInv) * 3.0f;
    } else {
        phi_a2 = (1.0f / camera->phiUpdateRateInv) * func_800437F0(0.8f, 1.0f - phi_v0 * (1.0f / R_CAM_MAX_PHI));
    }
    return Camera_LERPCeilS(sp1C, arg1, phi_a2, 0xA);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80046B44.s")
#endif

#ifdef NON_MATCHING
// stack, regalloc, tiny bit of ordering
s16 func_80046CB4(Camera* camera, s16 arg1, s16 arg2, f32 arg3, f32 arg4) {
    f32 sp34;
    s16 sp1C;
    f32 temp_ret;
    f32 phi_f14;
    s16 temp;

    if (camera->unk_D8 > 0.001f) {
        temp = BINANG_ROT180(arg1);
        sp1C = arg2 - temp;
        phi_f14 = BINANG_ROT180(sp1C) * (1.0f / 32767.0f);
    } else {
        temp = BINANG_ROT180(arg1);
        sp1C = arg2 - temp;
        phi_f14 = OREG(48) * 0.01f;
    }
    temp_ret = func_800437F0(arg3, phi_f14);
    
    sp34 = ((1.0f - temp_ret) * arg4) + temp_ret;
    if (sp34 < 0.0f) {
        sp34 = 0.0f;
    }
    
    // This is probably some binary angle calculation.
    return arg1 + (s16)(sp1C * sp34 * sp1C * (1.0f / camera->thetaUpdateRateInv) * func_800437F0(0.5f, camera->unk_E0)) + arg1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80046CB4.s")
#endif

//#define NON_MATCHING
#ifdef NON_MATCHING
void func_80046E20(Camera *camera, VecSph *arg1, f32 arg2, f32 arg3, f32 *arg4, Normal1_Unk24 *arg5) {
    static struct_80043D18 D_8015CE80;
    static struct_80043D18 D_8015CEA8;
    static struct_80043D18 D_8015CED0;

    Vec3f sp58;
    f32 sp50;
    VecSph sp48;
    VecSph sp40;
    Vec3f *sp34;
    Vec3f *sp30;
    Vec3f *temp_s0;
    Vec3f *temp_s0_2;
    f32 *temp_a2;
    f32 *temp_a2_2;
    f32 *temp_a2_3;
    f32 temp_f0;
    f32 temp_f0_2;
    s32 temp_v0;

    temp_v0 = func_80045508(camera, arg1, &D_8015CE80, &D_8015CEA8, arg5->unk_18 == 0);
    switch(temp_v0){
        case 1:
        case 2:
            sp30 = &camera->eyeNext;
            sp34 = &camera->at;
            func_8004545C((Vec3f *) arg5, &camera->at, &camera->eyeNext, &D_8015CE80, &D_8015CEA8);
            sp58.x = arg5->unk_00.x + (D_8015CE80.unk_0C.x + D_8015CEA8.unk_0C.x);
            sp58.y = arg5->unk_00.y + (D_8015CE80.unk_0C.y + D_8015CEA8.unk_0C.y);
            sp58.z = arg5->unk_00.z + (D_8015CE80.unk_0C.z + D_8015CEA8.unk_0C.z);
            temp_f0_2 = OLib_Vec3fDist(sp34, &D_8015CE80.unk_00);
            if (arg2 < temp_f0_2) {
                *arg4 = 1.0f;
            } else {
                *arg4 = temp_f0_2 / arg2;
            }
            arg5->unk_18 = 1;
            arg5->unk_10 = PCT(OREG(10));
            arg5->unk_0C = D_8015CEA8.unk_18;
            OLib_Vec3fDiffToVecSphRot90(&sp48, sp34, &sp58);
            temp_s0_2 = &camera->eye;
            sp48.r = arg1->r;
            Camera_Vec3fVecSphAdd(temp_s0_2, sp34, &sp48);
            D_8015CED0.unk_00 = *temp_s0_2;
            if (func_80043D18(camera, sp34, &D_8015CED0) == 0) {
                sp48.theta += BINANG_SUB(arg1->theta, sp48.theta) >> 1;
                sp48.phi += BINANG_SUB(arg1->phi, sp48.phi) >> 1;
                Camera_Vec3fVecSphAdd(temp_s0_2, sp34, &sp48);
                if (D_8015CE80.unk_1C.phi < 0x2AA8) {
                    arg5->unk_16 = sp48.theta;
                    arg5->unk_14 = sp48.phi;
                } else {
                    arg5->unk_16 = arg1->theta;
                    arg5->unk_14 = arg1->phi;
                }
                sp58.x = arg5->unk_00.x - (D_8015CE80.unk_0C.x + D_8015CEA8.unk_0C.x);
                sp58.y = arg5->unk_00.y - (D_8015CE80.unk_0C.y + D_8015CEA8.unk_0C.y);
                sp58.z = arg5->unk_00.z - (D_8015CE80.unk_0C.z + D_8015CEA8.unk_0C.z);
                OLib_Vec3fDiffToVecSphRot90(&sp48, sp34, &sp58);
                sp48.r = arg1->r;
                Camera_Vec3fVecSphAdd(sp30, sp34, &sp48);
                return;
            }

            D_8015CE80 = D_8015CED0;
        case 3:
        case 6:
            if (arg5->unk_18 != 0) {
                arg5->unk_1A = OREG(52);
                arg5->unk_18 = 0;
                camera->eyeNext = camera->eye;
            }
            temp_f0 = OLib_Vec3fDist(&camera->at, &D_8015CE80.unk_00);
            if (arg2 < temp_f0) {
                *arg4 = 1.0f;
            } else {
                *arg4 = temp_f0 / arg2;
            }
            arg5->unk_10 = *arg4 * arg3;
            sp50 = temp_f0;
            Camera_Vec3fScaleXYZFactor(&camera->eye, &D_8015CE80, &D_8015CE80, 1.0f);
            arg5->unk_0C = 0;
            if (temp_f0 < OREG(21)) {
                sp50 = temp_f0;
                sp40.theta = arg1->theta;
                sp40.phi = Math_Sins(D_8015CE80.unk_1C.phi + 0x3FFF) * 16380.0f;
                sp40.r = PCT(OREG(22)) * (OREG(21) - temp_f0);
                Camera_Vec3fVecSphAdd(temp_s0, temp_s0, &sp40);
                return;
            }
            break;
        default:
            if (arg5->unk_18 != 0) {
                arg5->unk_1A = OREG(52);
                camera->eyeNext = camera->eye;
                arg5->unk_18 = 0;
            }
            arg5->unk_0C = 0;
            arg5->unk_10 = arg3;
            camera->eye.x = D_8015CE80.unk_00.x + D_8015CE80.unk_0C.x;
            camera->eye.y = D_8015CE80.unk_00.y + D_8015CE80.unk_0C.y;
            camera->eye.z = D_8015CE80.unk_00.z + D_8015CE80.unk_0C.z;
            break;
    }
}
#else
void func_80046E20(Camera *arg0, VecSph *arg1, f32 arg2, f32 arg3, f32 *arg4, Vec3f *arg5);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80046E20.s")
#endif

s32 Camera_NOP(Camera* camera) {
    return true;
}
s16 func_80046B44(Camera*, s16, s16, s16);

//#define NON_MATCHING
#ifdef NON_MATCHING
s32 Camera_Normal1(Camera *camera) {
    Normal1* norm1 = &camera->params.norm1;
    CameraModeValue* values;
    f32 temp_f0;
    f32 spA0;
    f32 sp9C;
    f32 sp98;
    f32 sp94;
    Vec3f sp88;
    f32 temp_f0_4;

    VecSph sp7C;
    VecSph sp74;
    VecSph sp6C;
    f32 temp_f0_5;
    f32 temp_f2;
    f32 phi_f16;
    Vec3f *sp40 = &camera->eye;
    Vec3f *sp3C = &camera->at;
    Vec3f *sp38 = &camera->eyeNext;
    Normal1_Unk24* unk24 = &norm1->unk_24;

    temp_f0 = Player_GetCameraYOffset(camera->player);
    if(RELOAD_PARAMS){
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        temp_f2 = (1.0f + PCT(R_CAM_YINV_OFFSET) - PCT(R_CAM_YINV_OFFSET) * (68.0f / temp_f0));
        temp_f2 *= (PCT(temp_f0));
        norm1->unk_00 = NEXTSETTING * temp_f2;
        norm1->unk_04 = NEXTSETTING * temp_f2;
        norm1->unk_08 = NEXTSETTING * temp_f2;
        norm1->unk_20 = DEGF_TO_BINANG(NEXTSETTING);
        norm1->unk_0C = NEXTSETTING;
        norm1->unk_10 = NEXTSETTING;
        norm1->unk_14 = NEXTPCT;
        norm1->unk_18 = NEXTSETTING;
        norm1->unk_1C = NEXTPCT;
        norm1->unk_22 = NEXTSETTING;
    }

    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }

    sCameraInterfaceFlags = norm1->unk_22;

    OLib_Vec3fDiffToVecSphRot90(&sp74, sp3C, sp40);
    OLib_Vec3fDiffToVecSphRot90(&sp6C, sp3C, sp38);

    switch(camera->animState){
        case 0x14:
            camera->thetaUpdateRateInv = OREG(27);
            camera->phiUpdateRateInv = OREG(27);
        case 0:
        case 0xA:
        case 0x19:
            unk24->unk_18 = 0;
            unk24->unk_0C = 0;
            unk24->unk_24 = 0;
            unk24->unk_28 = 0xA;
            unk24->unk_14 = unk24->unk_18;
            unk24->unk_16 = unk24->unk_18;
            unk24->unk_10 = norm1->unk_0C;
            unk24->unk_1C = camera->playerPosRot.pos.y;
            unk24->unk_20 = camera->unk_D8;
            unk24->unk_1A = 0;
            unk24->unk_26 = sp74.theta;
            sUpdateCameraDirection = 0;
            unk24->unk_2A = OREG(50) + OREG(51);
            break;
        default:
            break;
    }

    camera->animState = 1;
    sUpdateCameraDirection = 1;

    if (unk24->unk_28 != 0) {
        unk24->unk_28--;
    }

    if (camera->unk_D8 > 0.001f) {
        unk24->unk_2A = OREG(50) + OREG(51);
    } else if (unk24->unk_2A > 0) {
        if (unk24->unk_2A > OREG(50)) {
            unk24->unk_26 = sp74.theta + (BINANG_SUB(BINANG_ROT180(camera->playerPosRot.rot.y), sp74.theta) / unk24->unk_2A);
        }
        unk24->unk_2A--;
    }

    spA0 = PCT(OREG(25)) * camera->unk_E0;
    sp9C = camera->unk_E0 * PCT(OREG(26));
    sp98 = unk24->unk_18 != 0 ? PCT(OREG(25)) : spA0;
    
    sp94 = (camera->unk_D8 - unk24->unk_20) * (1.0f / 3.0f);
    if(sp94 > 1.0f){
        sp94 = 1.0f;
    }
    if(sp94 > -1.0f){
        sp94 = -1.0f;
    }

    unk24->unk_20 = camera->unk_D8;
    
    if (unk24->unk_1A != 0) {
        camera->thetaUpdateRateInv = Camera_LERPCeilF(unk24->unk_10 + (f32) (unk24->unk_1A * 2), camera->thetaUpdateRateInv, sp98, 0.1f);
        camera->phiUpdateRateInv = Camera_LERPCeilF((f32) R_CAM_DEFA_PHI_UPDRATE + (f32) (unk24->unk_1A * 2), camera->phiUpdateRateInv, sp9C, 0.1f);
        unk24->unk_1A--;
    } else {
        camera->thetaUpdateRateInv = Camera_LERPCeilF(unk24->unk_10 - ((OREG(49) * 0.01f) * unk24->unk_10 * sp94), camera->thetaUpdateRateInv, sp98, 0.1f);
        camera->phiUpdateRateInv = Camera_LERPCeilF(R_CAM_DEFA_PHI_UPDRATE, camera->phiUpdateRateInv, sp9C, 0.1f);
    }

    //spA0 = sp94 * camera->unk_E0;

    camera->phiUpdateRateInv = Camera_LERPCeilF(R_CAM_DEFA_PHI_UPDRATE, camera->phiUpdateRateInv, sp9C, 0.1f);
    camera->xzOffsetUpdateRate = Camera_LERPCeilF(PCT(OREG(2)), camera->xzOffsetUpdateRate, spA0, 0.1f);
    camera->yOffsetUpdateRate = Camera_LERPCeilF(PCT(OREG(3)), camera->yOffsetUpdateRate, sp9C, 0.1f);
    camera->fovUpdateRate = Camera_LERPCeilF(PCT(OREG(4)), camera->yOffsetUpdateRate, camera->unk_E0 * 0.05f, 0.1f);


    if (norm1->unk_22 & 1) {
        unk24->unk_24 = Camera_LERPCeilS(func_80044ADC(camera, BINANG_ROT180(sp74.theta), 0), unk24->unk_24, ((1.0f / norm1->unk_10) * 0.5f) + (((1.0f / norm1->unk_10) * 0.5f) * (1.0f - camera->unk_E0)), 0xF);
    } else {
        unk24->unk_24 = 0;
        if (camera->playerGroundY == camera->playerPosRot.pos.y) {
            unk24->unk_1C = camera->playerPosRot.pos.y;
        }
    }

    phi_f16 = ((unk24->unk_18 != 0) && (norm1->unk_00 > -40.0f)) ?
                (temp_f0_5 = Math_Sins(unk24->unk_14), F32_LERP(norm1->unk_00, -40.0f, temp_f0_5)) :
                norm1->unk_00;

    if (norm1->unk_22 & 0x80) {
        func_800458D4(camera, &sp6C, phi_f16, &unk24->unk_1C, norm1->unk_22 & 1);
    } else if (norm1->unk_22 & 0x20) {
        func_80045B08(camera, &sp6C, phi_f16, unk24->unk_24);
    } else {
        func_800457A8(camera, &sp6C, phi_f16, norm1->unk_22 & 1);
    }

    OLib_Vec3fDiffToVecSphRot90(&sp7C, sp3C, sp38);
    
    camera->dist = sp7C.r = func_800469C0(camera, sp7C.r, norm1->unk_04, norm1->unk_08, unk24->unk_28);
    
    if (unk24->unk_2A <= 0) {
        sp7C.phi = sp6C.phi;
        sp7C.theta = Camera_LERPCeilS(unk24->unk_26, sp6C.theta, 1.0f / camera->thetaUpdateRateInv, 0xA);
    } else if (unk24->unk_18 != 0) {
        sp7C.theta = Camera_LERPCeilS(unk24->unk_16, sp6C.theta, 1.0f / camera->thetaUpdateRateInv, 0xA);
        sp7C.phi = Camera_LERPCeilS(unk24->unk_14, sp6C.phi, 1.0f / camera->thetaUpdateRateInv, 0xA);
    } else {
        sp7C.theta = func_80046CB4(camera, sp6C.theta, camera->playerPosRot.rot.y, norm1->unk_14, sp94);
        sp7C.phi = func_80046B44(camera, sp6C.phi, norm1->unk_20, unk24->unk_24);
    }

    if (sp7C.phi >= 0x38A5) {
        sp7C.phi = 0x38A4;
    }
    if (sp7C.phi < -0x3C8C) {
        sp7C.phi = -0x3C8C;
    }

    Camera_Vec3fVecSphAdd(sp38, sp3C, &sp7C);
    if ((camera->status == 7) &&  (!(norm1->unk_22 & 0x10))) {
        unk24->unk_26 = BINANG_ROT180(camera->playerPosRot.rot.y);
        if (unk24->unk_2A > 0) {
            func_80046E20(camera, &sp7C, norm1->unk_04, norm1->unk_0C, &sp98, &unk24->unk_00);
        } else {
            sp88 = *sp38;
            spA0 = norm1->unk_0C + norm1->unk_0C;
            unk24->unk_10 = camera->thetaUpdateRateInv = spA0;
            if (func_80043F34(camera, sp3C, &sp88)) {
                unk24->unk_26 = sp6C.theta;
                unk24->unk_2A = -1;
            } else {
                *sp40 = *sp38;
            }
            unk24->unk_18 = 0;
        }
        if (unk24->unk_18 != 0) {
            camera->direction.y = Camera_LERPCeilS(camera->direction.y + BINANG_SUB(BINANG_ROT180(unk24->unk_16), camera->direction.y), camera->direction.y, 1.0f - (0.99f * sp98), 0xA);
        }

        if (norm1->unk_22 & 4) {
            camera->direction.x = -sp74.phi;
            camera->direction.y = BINANG_ROT180(sp74.theta);
            camera->direction.z = 0;
        } else {
            OLib_Vec3fDiffToVecSphRot90(&sp7C, sp40, sp3C);
            camera->direction.x = sp7C.phi;
            camera->direction.y = sp7C.theta;
            camera->direction.z = 0;
        }

        if(1){
            // crit wiggle
            if (gSaveContext.health <= 0x10 && ((camera->globalCtx->state.frames & 0xFF) == 0)) {
                camera->direction.y += (s16)(Math_Rand_ZeroOne() * 10000.0f);
            }
        }
    } else {
        unk24->unk_10 = norm1->unk_0C;
        unk24->unk_18 = 0;
        sUpdateCameraDirection = 0;
        *sp40 = *sp38;
    }

    camera->fov = Camera_LERPCeilF(norm1->unk_18 * (gSaveContext.health <= 0x10 ? 0.8f : 1.0f), camera->fov, camera->fovUpdateRate, 1.0f);
    camera->roll = Camera_LERPCeilS(0, camera->roll, 0.5f, 0xA);
    camera->atLERPStepScale = Camera_ClampLERPScale(camera, norm1->unk_1C);
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Normal1.s")
#endif
#undef NON_MATCHING

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Normal2.s")

//#define NON_MATCHING
#ifdef NON_MATCHING
// riding epona
s32 Camera_Normal3(Camera *camera) {
    Vec3f *sp48 = &camera->eye;
    Vec3f *sp44 = &camera->at;
    Vec3f *sp40 = &camera->eyeNext;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    PosRot *sp3C = &camera->playerPosRot;
    VecSph sp84;
    VecSph sp7C;
    VecSph sp74;
    f32 temp_f0;
    f32 temp_f16_2;
    f32 temp_f2;
    s32 phi_a0;
    CameraModeValue *values;
    Normal3_Unk20* unk20 = &camera->params.norm3.unk_20;    
    
    temp_f0 = Player_GetCameraYOffset(camera->player);
    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        temp_f2 = PCT(temp_f0);
        camera->params.norm3.unk_00 = NEXTSETTING * temp_f2;
        camera->params.norm3.unk_04 = NEXTSETTING * temp_f2;
        camera->params.norm3.unk_08 = NEXTSETTING * temp_f2;
        camera->params.norm3.unk_1C = DEGF_TO_BINANG(NEXTSETTING);
        camera->params.norm3.unk_0C = NEXTSETTING;
        camera->params.norm3.unk_10 = NEXTSETTING;
        camera->params.norm3.unk_14 = NEXTSETTING;
        camera->params.norm3.unk_18 = NEXTPCT;
        camera->params.norm3.unk_1E = NEXTSETTING;

    }

    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }
    OLib_Vec3fDiffToVecSphRot90(&sp7C, sp44, sp48);
    OLib_Vec3fDiffToVecSphRot90(&sp74, sp44, sp40);
    sUpdateCameraDirection = 1;
    sCameraInterfaceFlags = camera->params.norm3.unk_1E;
    switch(camera->animState){
        case 0:
        case 0xA:
        case 0x14:
        case 0x19:
            unk20->unk_0C = 0;
            unk20->unk_24 = 0;
            unk20->unk_1C = 0.0f;
            unk20->unk_20 = camera->playerGroundY;
            unk20->unk_16 = unk20->unk_14 = unk20->unk_18 = 0;
            unk20->unk_10 = camera->params.norm3.unk_0C;    
            unk20->unk_26 = (1.0f / OREG(23)) * BINANG_SUB(BINANG_ROT180(sp3C->rot.y), sp7C.theta);
            unk20->unk_2A = 0xA;
            unk20->unk_28 = OREG(23);
            camera->animState = 1;
            unk20->unk_1A = 0;
            break;
    }

    if (unk20->unk_2A != 0) {
        unk20->unk_2A--;
    }
    
    sp98 = PCT(OREG(25)) * camera->unk_E0;
    sp94 = PCT(OREG(26)) * camera->unk_E0;
    do{
    if (unk20->unk_1A) {
        camera->thetaUpdateRateInv = Camera_LERPCeilF(camera->params.norm3.unk_0C + (unk20->unk_1A * 2), camera->thetaUpdateRateInv, sp98, 0.1f);
        camera->phiUpdateRateInv = Camera_LERPCeilF((f32)OREG(7) + (unk20->unk_1A * 2), camera->phiUpdateRateInv, sp94, 0.1f);
        unk20->unk_1A--;
    } else {
        camera->thetaUpdateRateInv = Camera_LERPCeilF(camera->params.norm3.unk_0C, camera->thetaUpdateRateInv, sp98, 0.1f);
        camera->phiUpdateRateInv = Camera_LERPCeilF(OREG(7), camera->phiUpdateRateInv, sp94, 0.1f);
    }

    camera->xzOffsetUpdateRate = Camera_LERPCeilF(PCT(OREG(2)), camera->xzOffsetUpdateRate, sp98, 0.1f);
    camera->yOffsetUpdateRate = Camera_LERPCeilF(PCT(OREG(3)), camera->yOffsetUpdateRate, sp94, 0.1f);
    camera->fovUpdateRate = Camera_LERPCeilF(PCT(OREG(4)), camera->fovUpdateRate, sp94, 0.1f);
    }while(0);
    {
        s16 t = func_80044ADC(camera, BINANG_ROT180(sp7C.theta), 1);
        temp_f0 = (1.0f / camera->params.norm3.unk_10) * 0.5f;
        temp_f2 = (1.0f - camera->unk_E0) * temp_f0;
        unk20->unk_24 = Camera_LERPCeilS(t, unk20->unk_24, temp_f0 + temp_f2, 0xF);
    }

    func_800466F8(camera, &sp74, camera->params.norm3.unk_00, &unk20->unk_20, 1);
    sp90 = (camera->params.norm3.unk_08 + camera->params.norm3.unk_04) * 0.5f;
    OLib_Vec3fDiffToVecSphRot90(&sp84, sp44, sp40);
    camera->dist = sp84.r = func_800469C0(camera, sp84.r, camera->params.norm3.unk_04, camera->params.norm3.unk_08, unk20->unk_2A);

    if (camera->unk_D8 > 0.001f) {
        sp84.r = F32_LERPIMP(sp84.r, sp90, 0.002f);
    }

    sp84.phi = Camera_LERPCeilS(BINANG_SUB(camera->params.norm3.unk_1C, unk20->unk_24), sp74.phi, 1.0f / camera->phiUpdateRateInv, 0xA);
    if (sp84.phi > OREG(5)) {
        sp84.phi = OREG(5);
    }

    if (sp84.phi < OREG(34)) {
        sp84.phi = OREG(34);
    }

    phi_a0 = BINANG_SUB(sp3C->rot.y, BINANG_ROT180(sp74.theta));
    if(ABS(phi_a0) >= 0x2AF9){
        phi_a0 = phi_a0 > 0 ? 0x2AF8 : -0x2AF8;
    }

    {
        const f32 tx = 1.0f;
        temp_f0 = F32_LERPIMP(0.5f, tx, camera->unk_E0);
        temp_f16_2 = (phi_a0 * temp_f0) / camera->thetaUpdateRateInv;
        if ((150.0f * (tx - camera->unk_E0)) < fabsf(temp_f16_2)) {
            if(1){
                sp84.theta = sp74.theta + temp_f16_2;
            }
        } else {
            sp84.theta = sp74.theta;
        }
    }

    if (unk20->unk_28 > 0) {
        sp84.theta += unk20->unk_26;
        unk20->unk_28--;
    }

    Camera_Vec3fVecSphAdd(sp40, sp44, &sp84);
    
    if (1 && camera->status == 7) {
        func_80046E20(camera, &sp84, camera->params.norm3.unk_04, camera->params.norm3.unk_0C, &sp8C, &camera->params.norm3.unk_20);
    } else {
        *sp48 = *sp40;
    }

    camera->fov = Camera_LERPCeilF(camera->params.norm3.unk_14, camera->fov, camera->fovUpdateRate, 1.0f);
    camera->roll = Camera_LERPCeilS(0, camera->roll, 0.5f, 0xA);
    camera->atLERPStepScale = Camera_ClampLERPScale(camera, camera->params.norm3.unk_18);
    return true;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Normal3.s")
#endif

s32 Camera_Normal4(Camera* camera) {
    return Camera_NOP(camera);
}

s32 Camera_Normal0(Camera* camera) {
    return Camera_NOP(camera);
}

#ifdef NON_MATCHING
/**
 * Z-Targeting
*/
void Camera_Parallel1(Camera *camera) {
    f32 spB8;
    f32 spB4;
    VecSph spA8;
    VecSph spA0;
    VecSph sp98;
    struct_80043D18 sp6C;
    s16 sp6A;
    Vec3f *sp3C;
    Parallel1Anim *sp34 = &camera->params.para1.anim;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f2;
    f32 temp_f2_2;
    s16 temp_a0;
    s16 temp_a0_2;
    s16 temp_t6;
    s16 temp_v0_2;
    s16 phi_v0;
    s16 phi_v0_2;
    s16 phi_a0;
    f32 phi_f0;
    CameraModeValue* values;

    temp_f0 = Player_GetCameraYOffset((Player *) camera->player);
    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        temp_f12 = (1.0f + PCT(R_CAM_YINV_OFFSET)) - (PCT(R_CAM_YINV_OFFSET) * (68.0f / temp_f0));
        camera->params.para1.unk_00 = (f32) ((PCT(NEXTSETTING) * temp_f0) * temp_f12);
        camera->params.para1.distTarget = (f32) ((PCT(NEXTSETTING) * temp_f0) * temp_f12);
        camera->params.para1.phiTarget = DEGF_TO_BINANG(NEXTSETTING);
        camera->params.para1.thetaTarget = DEGF_TO_BINANG(NEXTSETTING);
        camera->params.para1.unk_08 = NEXTSETTING;
        camera->params.para1.unk_0C = NEXTSETTING;
        camera->params.para1.fovTarget = NEXTSETTING;
        camera->params.para1.unk_14 = PCT(NEXTSETTING);
        camera->params.para1.interfaceFlags = NEXTSETTING;
        camera->params.para1.unk_18 = (f32) ((PCT(NEXTSETTING) * temp_f0) * temp_f12);
        camera->params.para1.unk_1C = PCT(NEXTSETTING);
    }
    if (R_RELOAD_CAM_PARAMS != 0) {
        Camera_CopyPREGToModeValues(camera);
    }

    OLib_Vec3fDiffToVecSphRot90(&spA0, &camera->at, &camera->eye);
    OLib_Vec3fDiffToVecSphRot90(&sp98, &camera->at, &camera->eyeNext);
    switch(camera->animState){
        case 0:
        case 0xA:
        case 0x14:
        case 0x19:
            sp34->unk_16 = 0;
            sp34->unk_10 = 0;
            if (camera->params.para1.interfaceFlags & 4) {
                sp34->animTimer = 0x14;
            } else {
                sp34->animTimer = OREG(23);
            }
            sp34->unk_00.x = 0.0f;
            sp34->yTarget = camera->playerPosRot.pos.y - camera->playerPosDelta.y;
            camera->animState++;
    }

    if (sp34->animTimer != 0) {
        if (camera->params.para1.interfaceFlags & 2) {
            sp34->thetaTarget = BINANG_ROT180(camera->playerPosRot.rot.y) + camera->params.para1.thetaTarget;
        } else if (camera->params.para1.interfaceFlags & 4) {
            sp34->thetaTarget = camera->params.para1.thetaTarget;
        } else {
            sp34->thetaTarget = sp98.theta;
        }
    } else {
        if ((camera->params.para1.interfaceFlags & 0x20) != 0) {
            sp34->thetaTarget = BINANG_ROT180(camera->playerPosRot.rot.y) + camera->params.para1.thetaTarget;
        }
        sCameraInterfaceFlags = camera->params.para1.interfaceFlags;
    }
    
    sp34->phiTarget = camera->params.para1.phiTarget;
    if(camera->animState == 0x15){
        sp34->unk_16 = 1;
        camera->animState = 1;
    } else if(camera->animState == 0xB){
        camera->animState = 1;
    }
    spB8 = PCT(OREG(25)) * camera->unk_E0;
    spB4 = PCT(OREG(26)) * camera->unk_E0;
    camera->rUpdateRateInv = Camera_LERPCeilF(OREG(6), camera->rUpdateRateInv, spB8, 0.1f);
    camera->thetaUpdateRateInv = Camera_LERPCeilF(camera->params.para1.unk_08, camera->thetaUpdateRateInv, spB8, 0.1f);
    camera->phiUpdateRateInv = Camera_LERPCeilF(2.0f, camera->phiUpdateRateInv, spB4, 0.1f);
    camera->xzOffsetUpdateRate = Camera_LERPCeilF(OREG(2) * 0.01f, camera->xzOffsetUpdateRate, spB8, 0.1f);
    camera->yOffsetUpdateRate = Camera_LERPCeilF(OREG(3) * 0.01f, camera->yOffsetUpdateRate, spB4, 0.1f);
    camera->fovUpdateRate = Camera_LERPCeilF(OREG(4) * 0.01f, camera->fovUpdateRate, camera->unk_E0 * 0.05f, 0.1f);
    if (camera->params.para1.interfaceFlags & 1) {
        temp_f0_2 = 1.0f / camera->params.para1.unk_0C;
        sp34->unk_10 = Camera_LERPCeilS(func_80044ADC(camera, BINANG_ROT180(spA0.theta), 1), sp34->unk_10, (temp_f0_2 * 0.3f) + ((temp_f0_2 * 0.7f) * (1.0f - camera->unk_E0)), 0xF);
    } else {
        sp34->unk_10 = (u16)0;
    }

    if (camera->playerPosRot.pos.y == camera->playerGroundY || -0.1f < camera->player->actor.gravity || camera->player->stateFlags1 & 0x200000) {
        sp34->yTarget = (f32) camera->playerPosRot.pos.y;
        sp6A = (u16)0;
    } else {
        sp6A = (u16)1;
    }
    if (((camera->params.para1.interfaceFlags & 0x80) == 0) && (sp6A == 0)) {
        func_80045C74(camera, &sp98, camera->params.para1.unk_00, &sp34->yTarget, camera->params.para1.interfaceFlags & 1);
    } else {
        func_800458D4(camera, &sp98, camera->params.para1.unk_18, &sp34->yTarget, camera->params.para1.interfaceFlags & 1);
    }
    if (sp34->animTimer != 0) {
        
        camera->unk_14C |= 0x20;
        if(1){
            s32 t = (BINANG_SUB(sp34->thetaTarget, spA0.theta) / (s16)(((sp34->animTimer + 1) * sp34->animTimer) >> 1)) * sp34->animTimer;
            spA8.phi = spA0.phi;
            spA8.r = spA0.r;
            spA8.theta = spA0.theta + t;
        }
        sp34->animTimer--;
    } else {
        sp34->unk_16 = 0;
        camera->dist = Camera_LERPCeilF(camera->params.para1.distTarget, camera->dist, 1.0f / camera->rUpdateRateInv, 2.0f);
        OLib_Vec3fDiffToVecSphRot90(&spA8, &camera->at, &camera->eyeNext);
        spA8.r = camera->dist;
        spA8.theta = camera->params.para1.interfaceFlags & 0x40 ?
            Camera_LERPCeilS(sp34->thetaTarget, sp98.theta, 0.6f, 0xA) :
            Camera_LERPCeilS(sp34->thetaTarget, sp98.theta, 0.8f, 0xA);

        spA8.phi = Camera_LERPCeilS(camera->params.para1.interfaceFlags & 1 ? BINANG_SUB(sp34->phiTarget, sp34->unk_10) : sp34->phiTarget, sp98.phi, 1.0f / camera->phiUpdateRateInv, 4);
        spA8.phi = CLAMP(spA8.phi, OREG(34), OREG(5));

        /*if (OREG(5) < spA8.phi) {
            spA8.phi = OREG(5);
        }
        if (spA8.phi < OREG(34)) {
            spA8.phi = OREG(34);
        }*/
    }
    Camera_Vec3fVecSphAdd(&camera->eyeNext, &camera->at, &spA8);
    if (camera->status == 7) {
        sp6C.unk_00 = camera->eyeNext;
        if ((camera->globalCtx->envCtx.skyDisabled == 0) || camera->params.para1.interfaceFlags & 0x10) {
            func_80043D18(camera, &camera->at, &sp6C);
            camera->eye = sp6C.unk_00;
        } else {
            func_80043F94(camera, &camera->at, &sp6C);
            camera->eye = sp6C.unk_00;
            OLib_Vec3fDiffToVecSphRot90(&spA8, &camera->eye, &camera->at);
            camera->direction.x = spA8.phi;
            camera->direction.z = 0;
            camera->direction.y = spA8.theta;
        }
    }
    camera->fov = Camera_LERPCeilF(camera->params.para1.fovTarget, camera->fov, camera->fovUpdateRate, 1.0f);
    camera->roll = Camera_LERPCeilS(0, camera->roll, 0.5f, 0xA);
    if (sp6A != 0) {
        phi_f0 = camera->params.para1.unk_1C;
    } else {
        phi_f0 = camera->params.para1.unk_14;
    }
    camera->atLERPStepScale = Camera_ClampLERPScale(camera, phi_f0);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Parallel1.s")
#endif

s32 Camera_Parallel2(Camera* camera) {
    return Camera_NOP(camera);
}

void Camera_Parallel3(Camera* camera) {
    CameraModeValue* reg = &sCameraSettings[camera->setting].cameraModes[camera->mode].values[0];
    s16 val = reg->val;

    sCameraInterfaceFlags = val;
    if (val & 1) {
        camera->unk_14C |= 0x400;
    }
    if (val & 2) {
        camera->unk_14C |= 0x10;
    }
}

s32 Camera_Parallel4(Camera* camera) {
    return Camera_NOP(camera);
}

s32 Camera_Parallel0(Camera* camera) {
    return Camera_NOP(camera);
}

/**
 * Generic jump, jumping off ledges
*/
s32 Camera_Jump1(Camera *camera) {
    s32 pad;
    s32 pad2;
    f32 temp_f2;
    Jump1 *jump1 = &camera->params.jump1;
    f32 spA4;
    Vec3f newEye;
    VecSph eyeAtOffset;
    VecSph eyeNextAtOffset;
    VecSph eyeDiffSph;
    VecSph eyeDiffTarget;
    f32 pad3;
    PosRot playerPosRot2;
    Vec3f *eye = &camera->eye;
    Vec3f *at = &camera->at;
    Vec3f *eyeNext = &camera->eyeNext;
    f32 playerYOffset;
    CameraModeValue* values;
    s32 pad4;
    Jump1_Anim *anim = &jump1->anim;

    playerYOffset = Player_GetCameraYOffset(camera->player);
    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        temp_f2 = (1.0f + PCT(R_CAM_YINV_OFFSET)) - (PCT(R_CAM_YINV_OFFSET) * (68.0f / playerYOffset));
        jump1->atYOffset = PCT(NEXTSETTING) * playerYOffset * temp_f2;
        jump1->distMin = PCT(NEXTSETTING) * playerYOffset * temp_f2;
        jump1->distMax = PCT(NEXTSETTING) * playerYOffset * temp_f2;
        jump1->thetaUpateRateTarget = NEXTSETTING;
        jump1->maxThetaUpdate = PCT(NEXTSETTING);
        jump1->unk_14 = NEXTSETTING;
        jump1->atLERPScaleMax = PCT(NEXTSETTING);
        jump1->interfaceFlags = NEXTSETTING;
    }
    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }

    // playerPosRot2 never gets used.
    func_8002EEE4(&playerPosRot2, &camera->player->actor);

    OLib_Vec3fDiffToVecSphRot90(&eyeAtOffset, at, eye);
    OLib_Vec3fDiffToVecSphRot90(&eyeNextAtOffset, at, eyeNext);
    
    sCameraInterfaceFlags = jump1->interfaceFlags;

    if (camera->animState == 0 || camera->animState == 0xA || camera->animState == 0x14) {
        anim->thetaTarget = anim->updateRot = 0;
        anim->unk_0C = 0;
        anim->unk_20.phi = 0;
        anim->unk_20.theta = 0xC8;
        anim->animTimer = 0;
        anim->unk_10 = jump1->thetaUpateRateTarget;
        anim->unk_1C = camera->playerPosRot.pos.y - camera->playerPosDelta.y;
        anim->unk_20.r = eyeAtOffset.r;
        camera->posOffset.y -= camera->playerPosDelta.y;
        camera->xzOffsetUpdateRate = (1.0f / 10000.0f);
        camera->animState++;
    }

    if (anim->animTimer != 0) {
        camera->thetaUpdateRateInv = Camera_LERPCeilF(jump1->thetaUpateRateTarget + anim->animTimer, camera->thetaUpdateRateInv, OREG(26) * 0.01f, 0.1f);
        camera->phiUpdateRateInv = Camera_LERPCeilF((f32)R_CAM_DEFA_PHI_UPDRATE + anim->animTimer, camera->phiUpdateRateInv, OREG(26) * 0.01f, 0.1f);
        anim->animTimer--;
    } else {
        camera->thetaUpdateRateInv = Camera_LERPCeilF(jump1->thetaUpateRateTarget, camera->thetaUpdateRateInv, OREG(26) * 0.01f, 0.1f);
        camera->phiUpdateRateInv = Camera_LERPCeilF((f32)R_CAM_DEFA_PHI_UPDRATE, camera->phiUpdateRateInv, OREG(26) * 0.01f, 0.1f);
    }

    camera->xzOffsetUpdateRate = Camera_LERPCeilF(PCT(OREG(2)), camera->xzOffsetUpdateRate, PCT(OREG(25)), 0.1f);
    camera->yOffsetUpdateRate = Camera_LERPCeilF(PCT(OREG(3)), camera->yOffsetUpdateRate, PCT(OREG(26)), 0.1f);
    camera->fovUpdateRate = Camera_LERPCeilF(PCT(OREG(4)), camera->yOffsetUpdateRate, 0.05f, 0.1f);
    
    func_800458D4(camera, &eyeNextAtOffset, jump1->atYOffset, &anim->unk_1C, 0);

    eyeDiffSph = eyeAtOffset;
    
    OLib_Vec3fDiffToVecSphRot90(&eyeDiffTarget, at, eye);

    eyeDiffSph.r = Camera_LERPCeilF(eyeDiffTarget.r, eyeAtOffset.r, PCT(OREG(29)), 1.0f);
    eyeDiffSph.phi = Camera_LERPCeilS(eyeDiffTarget.phi, eyeAtOffset.phi, PCT(OREG(29)), 0xA);

    if (anim->updateRot) {
        eyeDiffSph.theta = Camera_LERPCeilS(anim->thetaTarget, eyeNextAtOffset.theta, 1.0f / camera->thetaUpdateRateInv, 0xA);
        eyeDiffSph.phi = Camera_LERPCeilS(anim->phiTarget, eyeNextAtOffset.phi, 1.0f / camera->thetaUpdateRateInv, 0xA);
    } else {
        eyeDiffSph.theta = func_80046CB4(camera, eyeNextAtOffset.theta, camera->playerPosRot.rot.y, jump1->maxThetaUpdate, 0.0f);
    }
    
    // Clamp the eye->at distance to jump1->distMin < eyeDiffSph.r < jump1->distMax
    if(eyeDiffSph.r < jump1->distMin){
        eyeDiffSph.r = jump1->distMin;
    } else if(eyeDiffSph.r > jump1->distMax){
        eyeDiffSph.r = jump1->distMax;
    }

    // Clamp the phi rotation at R_CAM_MAX_PHI AND R_CAM_MIN_PHI2
    if(eyeDiffSph.phi > R_CAM_MAX_PHI){
        eyeDiffSph.phi = R_CAM_MAX_PHI;
    } else if(eyeDiffSph.phi < R_CAM_MIN_PHI2){
        eyeDiffSph.phi = R_CAM_MIN_PHI2;
    }

    Camera_Vec3fVecSphAdd(&newEye, at, &eyeDiffSph);
    eyeNext->x = newEye.x;
    eyeNext->z = newEye.z;
    eyeNext->y += (newEye.y - eyeNext->y) * PCT(OREG(31));
    if ((camera->status == CAM_STATUS_ACTIVE) && !(jump1->interfaceFlags & 0x10)) {
        func_80046E20(camera, &eyeDiffSph, jump1->distMin, jump1->thetaUpateRateTarget, &spA4, &anim->unk_00);
        if (jump1->interfaceFlags & 4) {
            camera->direction.x = -eyeAtOffset.phi;
            camera->direction.y = BINANG_ROT180(eyeAtOffset.theta);
            camera->direction.z = 0;
        } else {
            OLib_Vec3fDiffToVecSphRot90(&eyeDiffSph, eye, at);
            camera->direction.x = eyeDiffSph.phi;
            camera->direction.y = eyeDiffSph.theta;
            camera->direction.z = 0;
        }
        if (anim->updateRot) {
            camera->direction.y = Camera_LERPCeilS(camera->direction.y + BINANG_SUB(BINANG_ROT180(anim->thetaTarget), camera->direction.y), camera->direction.y, 1.0f - (0.99f * spA4), 0xA);
        }
    } else {
        anim->unk_10 = jump1->thetaUpateRateTarget;
        anim->updateRot = 0;
        sUpdateCameraDirection = 0;
        *eye = *eyeNext;
    }

    camera->dist = OLib_Vec3fDist(at, eye);
    camera->roll = Camera_LERPCeilS(0, camera->roll, 0.5f, 0xA);
    camera->atLERPStepScale = Camera_ClampLERPScale(camera, jump1->atLERPScaleMax);
    return true;
}

#ifdef NON_MATCHING
// Climbing ladders/vines
s32 Camera_Jump2(Camera *camera) {
    Vec3f spC8;
    Vec3f spBC;
    VecSph spB4;
    VecSph spAC;
    VecSph spA4;
    VecSph sp9C;
    f32 sp90;
    f32 sp8C;
    s32 sp88;
    struct_80043D18 sp60;
    f32 sp48;
    Vec3f *sp38 = &camera->eye;
    Vec3f *sp34 = &camera->at;
    Vec3f *sp30 = &camera->eyeNext;
    PosRot *sp2C = &camera->playerPosRot;
    f32 temp_f0_4;
    f32 temp_f12;
    s16 t;
    Jump2* jump2 = &camera->params.jump2;
    Jump2_Unk24* unk24 = &jump2->unk_24;
    CameraModeValue* values;
    f32 temp_f2_3;
    f32 temp_f16;

    sp48 = Player_GetCameraYOffset(camera->player);
    if (RELOAD_PARAMS) {
        /*        temp_t5 = *(&sCameraSettings + (arg0->unk142 * 8)) + (arg0->unk144 * 8);
        temp_f2 = (f32) gGameInfo->unk1F0 * 0.009999999776482582f;
        temp_f12 = (1.0f + temp_f2) - (temp_f2 * (68.0f / temp_f0));
        if (0.0f < arg0->unkF4) {
            phi_f2 = -10.0f;
        } else {
            phi_f2 = 10.0f;
        }
        temp_t8 = *temp_t5->unk4;
        temp_v0 = temp_t5->unk4 + 0x20;
        arg0->unk0 = (f32) (((((f32) temp_t8 + phi_f2) * 0.009999999776482582f) * temp_f0) * temp_f12);
        arg0->unk4 = (f32) ((((f32) temp_v0->unk-1C * 0.009999999776482582f) * temp_f0) * temp_f12);
        arg0->unk8 = (f32) ((((f32) temp_v0->unk-18 * 0.009999999776482582f) * temp_f0) * temp_f12);
        arg0->unkC = (f32) ((f32) temp_v0->unk-14 * 0.009999999776482582f);
        arg0->unk10 = (f32) temp_v0->unk-10;
        arg0->unk14 = (f32) ((f32) temp_v0->unk-C * 0.009999999776482582f);
        arg0->unk18 = (f32) temp_v0->unk-8;
        arg0->unk1C = (f32) ((f32) temp_v0->unk-4 * 0.009999999776482582f);
        arg0->unk20 = (s16) temp_v0->unk0;
        phi_v1 = gGameInfo->unk314;
    } else {
        */
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        temp_f12 = (1.0f + PCT(R_CAM_YINV_OFFSET)) - (PCT(R_CAM_YINV_OFFSET) * (68.0f / sp48));
        temp_f0_4 = camera->playerPosDelta.y > 0.0f ? -10.0f : 10.0f;
        jump2->unk_00 = PCT(NEXTSETTING + temp_f0_4) * sp48 * temp_f12;
        jump2->unk_04 = NEXTPCT * sp48 * temp_f12;
        jump2->unk_08 = NEXTPCT * sp48 * temp_f12;
        jump2->unk_0C = NEXTPCT;    
        jump2->unk_10 = NEXTSETTING;
        jump2->unk_14 = NEXTPCT;
        jump2->unk_18 = NEXTSETTING;
        jump2->unk_1C = NEXTPCT;
        jump2->unk_20 = NEXTSETTING;
    }

    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }

    OLib_Vec3fDiffToVecSphRot90(&sp9C, sp34, sp38);
    OLib_Vec3fDiffToVecSphRot90(&spA4, sp34, sp30);

    sCameraInterfaceFlags = jump2->unk_20;
    if (camera->animState == 0 || camera->animState == 0xA || camera->animState == 0x14) {
        spC8 = sp2C->pos;
        unk24->unk_00 = func_80044510(camera, &spC8);
        unk24->unk_04 = spA4.theta;
        unk24->unk_06 = 0;
        if (unk24->unk_00 == -32000.0f) {
            osSyncPrintf("\x1b[43;30mcamera: climb: no floor \n\x1b[m");
            unk24->unk_0A = -1;
            unk24->unk_00 = sp2C->pos.y - 1000.0f;
        } else{
            unk24->unk_0A = (sp2C->pos.y - unk24->unk_00) < sp48 ? 1 : -1;
        }


        t = BINANG_SUB(BINANG_ROT180(sp2C->rot.y), spA4.theta);
        unk24->unk_06 = t / OREG(23) / 4 * 3;
        
        unk24->unk_08 = jump2->unk_20 & 2 ? 0xA : 0x2710;

        sp2C->pos.x -= camera->playerPosDelta.x;
        sp2C->pos.y -= camera->playerPosDelta.y;
        sp2C->pos.z -= camera->playerPosDelta.z;

        unk24->unk_0C = OREG(23);
        camera->animState++;
        camera->atLERPStepScale = jump2->unk_1C;
    }

    // I'm guessing this is some kind of macro? 
    {
        sp90 = PCT(OREG(25)) * camera->unk_E0;
        sp8C = PCT(OREG(26)) * camera->unk_E0;
        camera->thetaUpdateRateInv = Camera_LERPCeilF(jump2->unk_10, camera->thetaUpdateRateInv, sp90, 0.1f);
        camera->xzOffsetUpdateRate = Camera_LERPCeilF(jump2->unk_14, camera->xzOffsetUpdateRate, sp90, 0.1f);

        camera->yOffsetUpdateRate = Camera_LERPCeilF(PCT(OREG(3)), camera->yOffsetUpdateRate, sp8C, 0.1f);
        // 0.1f is loaded before 0.05f * camera->unk_E0 
        camera->fovUpdateRate = Camera_LERPCeilF(PCT(OREG(4)), camera->yOffsetUpdateRate, 0.05f * camera->unk_E0, 0.1f);
        camera->rUpdateRateInv = OREG(27);
        
    }

    func_800457A8(camera, &spA4, jump2->unk_00, 0);
    OLib_Vec3fDiffToVecSphRot90(&spB4, sp34, sp38);
    
    //spB4.r = CLAMP(spB4.r, jump2->unk_08 - (jump2->unk_08 * jump2->unk_0C), jump2->unk_04 + (jump2->unk_04 * jump2->unk_0C));


    temp_f2_3 = jump2->unk_08 + (jump2->unk_08 * jump2->unk_0C);
    temp_f16 = jump2->unk_04 - (jump2->unk_04 * jump2->unk_0C);
    
    if (temp_f2_3 < spB4.r) {
        spB4.r = jump2->unk_08 + (jump2->unk_08 * jump2->unk_0C);
    } else {
        if (spB4.r < temp_f16) {
            spB4.r = jump2->unk_04 - (jump2->unk_04 * jump2->unk_0C);
        }
    }

    {
        s16 tangle = BINANG_ROT180(sp2C->rot.y);
        s16 tangle2 = BINANG_SUB(tangle, spB4.theta);
        if (unk24->unk_0C != 0) {
            unk24->unk_04 = tangle;
            unk24->unk_0C--;
            spB4.theta = Camera_LERPCeilS(unk24->unk_04, spA4.theta, 0.5f, 0xA);
        } else if (unk24->unk_08 < ABS(tangle2)) {
            tangle2 = tangle2 < 0 ? tangle + unk24->unk_08 : tangle - unk24->unk_08;
            spB4.theta = Camera_LERPFloorS(tangle2, spA4.theta, 0.1f, 0xA);
        } else {
            spB4.theta = Camera_LERPCeilS(spB4.theta, spA4.theta, 0.25f, 0xA);
        }
    }
    
    spC8.x = sp2C->pos.x + (Math_Sins(sp2C->rot.y) * 25.0f);
    spC8.y = sp2C->pos.y + (sp48 * 2.2f);
    spC8.z = sp2C->pos.z + (Math_Coss(sp2C->rot.y) * 25.0f);
    
    temp_f0_4 = func_80044434(camera, &spBC, &spC8, &sp88);
    if ((temp_f0_4 != -32000.0f) && (sp2C->pos.y < temp_f0_4)) {
        camera->phiUpdateRateInv = Camera_LERPCeilF(20.0f, camera->phiUpdateRateInv, PCT(OREG(26)), 0.1f);
        camera->rUpdateRateInv = Camera_LERPCeilF(20.0f, camera->rUpdateRateInv, PCT(OREG(26)), 0.1f);
        spB4.phi = Camera_LERPCeilS(0x1F4, spA4.phi, 1.0f / camera->phiUpdateRateInv, 0xA);
    } else if ((sp2C->pos.y - unk24->unk_00) < sp48) {
        camera->phiUpdateRateInv = Camera_LERPCeilF(20.0f, camera->phiUpdateRateInv, PCT(OREG(26)), 0.1f);
        camera->rUpdateRateInv = Camera_LERPCeilF(20.0f, camera->rUpdateRateInv, PCT(OREG(26)), 0.1f);
        spB4.phi = Camera_LERPCeilS(0x1F4, spA4.phi, 1.0f / camera->phiUpdateRateInv, 0xA);
    } else {
        camera->phiUpdateRateInv = 100.0f;
        camera->rUpdateRateInv = 100.0f;
    }

    
    if (spB4.phi >= 0x2AF9) {
        spB4.phi = 0x2AF8;
    }

    if (spB4.phi < -0x2AF8) {
        spB4.phi = -0x2AF8;
    }

    Camera_Vec3fVecSphAdd(sp30, sp34, &spB4);
    sp60.unk_00 = *sp30;

    if (func_80043D18(camera, sp34, &sp60)) {
        spC8 = sp60.unk_00;
        
        spAC.r = spB4.r;
        spAC.phi = 0;
        spAC.theta = spB4.theta;
        Camera_Vec3fVecSphAdd(&sp60.unk_00, sp34, &spAC);
        if (func_80043D18(camera, sp34, &sp60)) {
            *sp38 = spC8;
        } else {
            spB4.phi = Camera_LERPCeilS(0, spB4.phi, 0.2f, 0xA);
            Camera_Vec3fVecSphAdd(sp38, sp34, &spB4);
            func_80043F34(camera, sp34, sp38);
        }
    } else {
        *sp38 = *sp30;
    }
    camera->dist = spB4.r;
    camera->fov = Camera_LERPCeilF(jump2->unk_18, camera->fov, camera->fovUpdateRate, 1.0f);
    camera->roll = Camera_LERPCeilS(0, camera->roll, 0.5f, 0xA);
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Jump2.s")
#endif

// swimming
s32 Camera_Jump3(Camera *camera) {  
    Vec3f *eye = &camera->eye;
    Vec3f *at = &camera->at;
    Vec3f *eyeNext = &camera->eyeNext;
    s32 spC8;
    f32 spC4;
    f32 spC0;
    f32 spBC;
    Vec3f spB0; // unused
    VecSph eyeDiffSph;
    PosRot* playerPosRot = &camera->playerPosRot;
    Jump3* jump3 = &camera->params.jump3;
    VecSph eyeAtOffset;
    VecSph eyeNextAtOffset;
    s32 pad;
    s32 pad2;
    CameraModeValue* values;
    f32 t2;
    f32 phi_f0;
    f32 phi_f2;
    f32 sp74;
    PosRot playerPosRot2;
    f32 temp_f0_2;
    f32 temp_f18;
    s32 sp54;
    f32 temp_f2_2;
    Jump3_Unk24 *unk24 = &jump3->unk_24;    

    sp74 = Player_GetCameraYOffset(camera->player);
    func_8002EEE4(&playerPosRot2, &camera->player->actor);

    sp54 = 0;
    if (((camera->unk_114 - eye->y) < OREG(44) || (camera->animState == 0))){
        if(unk24->unk_22 != 0){
            unk24->unk_22 = 0;
            sp54 = 1;
        }
    } else if (((camera->unk_114 - eye->y) > OREG(45)) && (unk24->unk_22 != 0xA)) {
        unk24->unk_22 = 0xA;
        sp54 = 1;
    }

    OLib_Vec3fDiffToVecSphRot90(&eyeAtOffset, at, eye);
    OLib_Vec3fDiffToVecSphRot90(&eyeNextAtOffset, at, eyeNext);
    
    if (camera->animState == 0 || camera->animState == 0xA || camera->animState == 0x14 || sp54 || R_RELOAD_CAM_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[unk24->unk_22].values;
        temp_f0_2 = ((1.0f + PCT(R_CAM_YINV_OFFSET)) - (PCT(R_CAM_YINV_OFFSET) * (68.0f / sp74)));
        t2 = PCT(sp74) * temp_f0_2;
        jump3->unk_00 = NEXTSETTING * t2;
        jump3->unk_04 = NEXTSETTING * t2;
        jump3->unk_08 = NEXTSETTING * t2;
        jump3->unk_20 = DEGF_TO_BINANG(NEXTSETTING);
        jump3->unk_0C = NEXTSETTING;
        jump3->unk_10 = NEXTSETTING;
        jump3->unk_14 = NEXTPCT;
        jump3->unk_18 = NEXTSETTING;
        jump3->unk_1C = NEXTPCT;
        jump3->unk_22 = NEXTSETTING;
    }

    if (R_RELOAD_CAM_PARAMS) {
        spC8 = camera->mode;
        camera->mode = unk24->unk_22;
        Camera_CopyPREGToModeValues(camera);
        camera->mode = spC8;
    }

    sCameraInterfaceFlags = jump3->unk_22;
    
    switch(camera->animState){
        case 0:
        case 0xA:
        case 0x14:
        case 0x19:
            unk24->unk_0C = 0;
            unk24->unk_1C = camera->playerGroundY;
            unk24->unk_16 = unk24->unk_14 = unk24->unk_18 = 0;
            unk24->unk_20 = 0xA;
            unk24->unk_10 = jump3->unk_0C;
            camera->animState++;
            unk24->unk_1A = 0;
            break;
        default:
            if (unk24->unk_20 != 0) {
                unk24->unk_20--;
            }
            break;
    }

    // unused
    spB0 = *eye;
    
    spC4 = PCT(OREG(25)) * camera->unk_E0;
    spC0 = camera->unk_E0 * PCT(OREG(26));
    spBC = unk24->unk_18 != 0 ? PCT(OREG(25)) : spC4;

    if (unk24->unk_1A != 0) {
        camera->thetaUpdateRateInv = Camera_LERPCeilF(unk24->unk_10 + (unk24->unk_1A * 2), camera->thetaUpdateRateInv, spC4, 0.1f);
        camera->phiUpdateRateInv = Camera_LERPCeilF((unk24->unk_1A * 2) + 40.0f, camera->phiUpdateRateInv, spC0, 0.1f);
        unk24->unk_1A--;
    } else {
        camera->thetaUpdateRateInv = Camera_LERPCeilF(unk24->unk_10, camera->thetaUpdateRateInv, spBC, 0.1f);
        camera->phiUpdateRateInv = Camera_LERPCeilF(40.0f, camera->phiUpdateRateInv, spC0, 0.1f);
    }

    camera->xzOffsetUpdateRate = Camera_LERPCeilF(PCT(OREG(2)), camera->xzOffsetUpdateRate, spC4, 0.1f);
    camera->yOffsetUpdateRate = Camera_LERPCeilF(PCT(OREG(3)), camera->yOffsetUpdateRate, spC0, 0.1f);
    camera->fovUpdateRate = Camera_LERPCeilF(PCT(OREG(4)), camera->yOffsetUpdateRate, camera->unk_E0 * 0.05f, 0.1f);
    
    func_800457A8(camera, &eyeNextAtOffset, jump3->unk_00, jump3->unk_22);
    OLib_Vec3fDiffToVecSphRot90(&eyeDiffSph, at, eyeNext);
    
    camera->dist = eyeDiffSph.r = func_800469C0(camera, eyeDiffSph.r, jump3->unk_04, jump3->unk_08, unk24->unk_20);
    
    if (camera->playerGroundY <= playerPosRot->pos.y) {
        phi_f0 = playerPosRot->pos.y - camera->playerGroundY;
    } else {
        phi_f0 = -(playerPosRot->pos.y - camera->playerGroundY);
    }

    if (!(phi_f0 < 10.0f)) {
        if (camera->unk_114 <= playerPosRot2.pos.y) {
            phi_f2 = playerPosRot2.pos.y - camera->unk_114;
        } else {
            phi_f2 = -(playerPosRot2.pos.y - camera->unk_114);
        }
        if (!(phi_f2 < 50.0f)) {
            camera->phiUpdateRateInv = 100.0f;
        }
    }
    if (unk24->unk_18 != 0) {
        eyeDiffSph.theta = Camera_LERPCeilS(unk24->unk_16, eyeNextAtOffset.theta, 1.0f / camera->thetaUpdateRateInv, 0xA);
        eyeDiffSph.phi = Camera_LERPCeilS(unk24->unk_14, eyeNextAtOffset.phi, 1.0f / camera->thetaUpdateRateInv, 0xA);
    } else {
        eyeDiffSph.theta = func_80046CB4(camera, eyeNextAtOffset.theta, playerPosRot->rot.y, jump3->unk_14, 0.0f);
        eyeDiffSph.phi = func_80046B44(camera, eyeNextAtOffset.phi, jump3->unk_20, 0);
    }

    if (eyeDiffSph.phi > OREG(5)) {
        eyeDiffSph.phi = OREG(5);
    }

    if (eyeDiffSph.phi < OREG(34)) {
        eyeDiffSph.phi = OREG(34);
    }

    Camera_Vec3fVecSphAdd(eyeNext, at, &eyeDiffSph);
    if ((camera->status == CAM_STATUS_ACTIVE) && !(jump3->unk_22 & 0x10)) {
        func_80046E20(camera, &eyeDiffSph, jump3->unk_04, jump3->unk_0C, &spBC, &unk24->unk_00);
        if (jump3->unk_22 & 4) {
            camera->direction.x = -eyeAtOffset.phi;
            camera->direction.y = BINANG_ROT180(eyeAtOffset.theta);
            camera->direction.z = 0;
        } else {
            OLib_Vec3fDiffToVecSphRot90(&eyeDiffSph, eye, at);
            camera->direction.x = eyeDiffSph.phi;
            camera->direction.y = eyeDiffSph.theta;
            camera->direction.z = 0;
        }

        if (unk24->unk_18 != 0) {
            camera->direction.y = Camera_LERPCeilS(camera->direction.y + BINANG_SUB(BINANG_ROT180(unk24->unk_16), camera->direction.y), camera->direction.y, 1.0f - (0.99f * spBC), 0xA);
        }
    } else {
        unk24->unk_10 = jump3->unk_0C;
        unk24->unk_18 = 0;
        sUpdateCameraDirection = 0;
        *eye = *eyeNext;
    }
    camera->fov = Camera_LERPCeilF(jump3->unk_18, camera->fov, camera->fovUpdateRate, 1.0f);
    camera->roll = Camera_LERPCeilS(0, camera->roll, 0.5f, 0xA);
    camera->atLERPStepScale = Camera_ClampLERPScale(camera, jump3->unk_1C);
    return true;
}

s32 Camera_Jump4(Camera* camera) {
    return Camera_NOP(camera);
}

s32 Camera_Jump0(Camera* camera) {
    return Camera_NOP(camera);
}

//#define NON_MATCHING
#ifdef NON_MATCHING
s32 Camera_Battle1(Camera *camera) {
    Vec3f sp128;
    Vec3f sp11C;
    Vec3f sp110;
    f32 spFC;
    f32 spF8;
    f32 spF4;
    s32 spE8;
    f32 spE4;
    struct_80043D18 spBC;
    VecSph spB4;
    VecSph spAC;
    VecSph spA4;
    VecSph sp9C;
    VecSph sp94;
    s16 sp8E;
    s16 sp8C;
    struct Player *sp88;
    s16 sp86;
    s16 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp64;
    Vec3f *sp4C = &camera->eye;
    Vec3f *sp48 = &camera->at;
    Vec3f *sp44 = &camera->eyeNext;
    PosRot *sp40 = &camera->playerPosRot;
    PosRot *sp38 = &camera->targetPosRot;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f2_2;
    s16 temp_t6;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_f4;
    s32 temp_t0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s16 phi_v1;
    f32 phi_f2;
    f32 phi_f2_3;
    s32 phi_v0_2;
    s32 phi_t0;
    s32 phi_t0_2;
    s16 phi_a0;
    f32 phi_f2_4;
    f32 phi_f0;
    Battle1* batt1 = &camera->params.batt1;
    Battle1Anim* anim = &batt1->anim;
    CameraModeValue* values;

    spE8 = 0;
    sp88 = camera->player;
    sp64 = Player_GetCameraYOffset((Player *) camera->player);
    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        temp_f12 = (1.0f + PCT(R_CAM_YINV_OFFSET)) - (PCT(R_CAM_YINV_OFFSET) * (68.0f / sp64));
        camera->params.batt1.unk_00 = (NEXTPCT * sp64) * temp_f12;
        camera->params.batt1.unk_04 = NEXTSETTING;
        camera->params.batt1.unk_08 = NEXTSETTING;
        camera->params.batt1.unk_0C = NEXTSETTING;
        camera->params.batt1.unk_10 = NEXTSETTING;
        camera->params.batt1.unk_14 = NEXTSETTING;
        camera->params.batt1.unk_18 = NEXTPCT;
        camera->params.batt1.unk_1C = NEXTSETTING;
        camera->params.batt1.unk_20 = NEXTPCT;
        camera->params.batt1.interfaceFlags = NEXTSETTING;
        camera->params.batt1.unk_24 = (NEXTPCT * sp64) * temp_f12;
        camera->params.batt1.unk_28 = NEXTPCT;
        anim->unk_10 = NEXTPCT;
        anim->unk_1C = 0x28;
    }

    if (R_RELOAD_CAM_PARAMS != 0) {
        Camera_CopyPREGToModeValues(camera);
    }

    sp80 = camera->params.batt1.unk_04;
    sp7C = camera->params.batt1.unk_10;
    sp78 = camera->params.batt1.unk_14;
    sp74 = camera->params.batt1.unk_1C;

    if ((camera->player->stateFlags1 & 0x1000) != 0) {
        anim->unk_10 = Camera_LERPCeilF(PCT(OREG(12)) * 0.5f, anim->unk_10, PCT(OREG(25)), 0.1f);
        camera->xzOffsetUpdateRate = Camera_LERPCeilF(0.2f, camera->xzOffsetUpdateRate, PCT(OREG(25)), 0.1f);
        camera->yOffsetUpdateRate = Camera_LERPCeilF(0.2f, camera->yOffsetUpdateRate, PCT(OREG(25)), 0.1f);
        if (anim->unk_1C >= -0x13) {
            anim->unk_1C--;
        } else {
            sp80 = 250.0f;
            sp7C = 50.0f;
            sp78 = 40.0f;
            sp74 = 60.0f;
        }
    } else if ((s32) anim->unk_1C < 0) {
        sp80 = 250.0f;
        sp7C = 50.0f;
        sp78 = 40.0f;
        sp74 = 60.0f;
        anim->unk_1C++;
    } else {
        anim->unk_1C = 0x28;
        anim->unk_10 = Camera_LERPCeilF(PCT(OREG(12)), anim->unk_10, PCT(OREG(25)), 0.1f);
        camera->xzOffsetUpdateRate = Camera_LERPCeilF(PCT(OREG(40)), camera->xzOffsetUpdateRate, PCT(OREG(25)) * camera->unk_E0, 0.1f);
        camera->yOffsetUpdateRate = Camera_LERPCeilF(PCT(OREG(40)), camera->yOffsetUpdateRate, PCT(OREG(26)) * camera->unk_E0, 0.1f);
    }
    camera->fovUpdateRate = Camera_LERPCeilF(PCT(OREG(4)), camera->fovUpdateRate, camera->unk_E0 * 0.05f, 0.1f);
    
    
    sp64 += batt1->unk_00;
    OLib_Vec3fDiffToVecSphRot90(&sp9C, sp48, sp4C);
    OLib_Vec3fDiffToVecSphRot90(&sp94, sp48, sp44);
    if (camera->target == NULL || camera->target->update == NULL) {
        if (camera->target == NULL) {
            osSyncPrintf(VT_COL(YELLOW, BLACK) "camera: warning: battle: target is not valid, change parallel" VT_RST);
        }
        camera->target = NULL;
        Camera_ChangeModeDefaultFlags(camera, CAM_MODE_PARALLEL);
        return 1;
    }
    sCameraInterfaceFlags = batt1->interfaceFlags;
    switch(camera->animState){
        case 0: 
        case 0xA:
        case 0x14:
            anim->unk_14 = 0;
            anim->unk_04 = 0.0f;
            anim->target = camera->target;
            camera->animState++;
            if (anim->target->id > 0) {
                osSyncPrintf("camera: battle: target actor name " VT_FGCOL(BLUE) "%d" VT_RST "\n", anim->target->id);
            } else  {
                osSyncPrintf("camera: battle: target actor name " VT_COL(RED, WHITE) "%d" VT_RST"\n", anim->target->id);
                camera->target = NULL;
                Camera_ChangeModeDefaultFlags(camera, CAM_MODE_PARALLEL);
                return 1;
            }
            anim->unk_1A = OREG(23) + OREG(24);
            anim->unk_16 = sp9C.theta;
            anim->unk_18 = sp9C.phi;
            anim->unk_00 = sp9C.r;
            anim->unk_08 = camera->playerPosRot.pos.y - camera->playerPosDelta.y;
            break;
    }

    if (camera->status == CAM_STATUS_ACTIVE) {
        sUpdateCameraDirection = 1;
        camera->direction.x = -sp9C.phi;
        camera->direction.y = BINANG_ROT180(sp9C.theta);
        camera->direction.z = 0;
    }
    if (camera->playerPosRot.pos.y == camera->playerGroundY || camera->player->actor.gravity > -0.1f || camera->player->stateFlags1 & 0x200000) {
        anim->unk_08 = camera->playerPosRot.pos.y;
        sp84 = 0;
    } else {
        sp84 = 1;
    }

    if (anim->unk_1A == 0) {
        camera->atLERPStepScale = Camera_ClampLERPScale(camera, sp84 != 0 ? batt1->unk_28 : batt1->unk_20);
    }
    
    func_8002EEE4(sp38, camera->target);
    if (camera->target != anim->target) {
        osSyncPrintf("camera: battle: change target %d -> " VT_FGCOL(BLUE) "%d" VT_RST "\n", anim->target->id, camera->target->id);
        camera->animState = 0;
        return 1;
    }
    
    func_800460A8(camera, &sp94, &sp38->pos, sp84 !=0 ? batt1->unk_24 : batt1->unk_00, sp80, &anim->unk_08, &spA4, (sp84 != 0 ? 0x81 : 0x1) | camera->params.batt1.interfaceFlags);
    sp11C = sp40->pos;
    sp8C = spA4.theta;
    sp11C.y += sp64;
    OLib_Vec3fDiffToVecSphRot90(&spA4, &sp11C, &sp38->pos);
    if (sp80 < spA4.r) {
        spE4 = 1.0f;
    } else {
        spE4 = spA4.r / sp80;
    }
    sp110 = sp38->pos;
    sp8C = spA4.theta;
    OLib_Vec3fDiffToVecSphRot90(&spAC, sp48, &sp110);
    phi_f2_3 = sp80;
    if (spAC.r <= sp80) {
        phi_f2_3 = spAC.r;
    }
    spAC.r = sp80 - (phi_f2_3 * 0.5f);
    //temp_f18 = camera->params.batt1.unk_08 + ((camera->params.batt1.unk_0C - camera->params.batt1.unk_08) * (1.1f - spE4));
    spF4 = F32_LERPIMP(batt1->unk_08, batt1->unk_0C, (1.1f - spE4));
    spF8 = OREG(13) + spF4;
    sp8C = spA4.theta;
    spB4.r = camera->dist = Camera_LERPCeilF(sp80, camera->dist, PCT(OREG(11)), 2.0f);
    spB4.theta = sp94.theta;
    temp_v0_2 = BINANG_SUB(spAC.theta, BINANG_ROT180(sp94.theta));
    temp_a1 = (s32) (temp_v0_2 << 0x10) >> 0x10;
    if (anim->unk_1A != 0) {
        if (anim->unk_1A >= OREG(24)) {
            sp86 = anim->unk_1A - OREG(24);
            sp8C = spA4.theta;
            OLib_Vec3fDiffToVecSphRot90(&spA4, sp48, sp4C);
            spA4.theta = BINANG_ROT180(spA4.theta);
            temp_f0_3 = 1.0f / OREG(23);
            
            sp8E = BINANG_SUB(anim->unk_16, spA4.theta) * temp_f0_3;
            sp8C = BINANG_SUB(anim->unk_18, spA4.phi) * temp_f0_3;

            // might need to use sp8e, sp8C here, and not use LERPIMP
            spB4.r = Camera_LERPCeilF(F32_LERPIMP(spA4.r, anim->unk_00, sp86 * temp_f0_3), sp9C.r, PCT(OREG(28)), 1.0f);
            spB4.theta = Camera_LERPCeilS(BINANG_LERPIMP(spA4.theta, anim->unk_16, sp86 * temp_f0_3), sp9C.theta, PCT(OREG(28)), 0xA);
            spB4.phi = Camera_LERPCeilS(BINANG_LERPIMP(spA4.phi, anim->unk_18, sp86 * temp_f0_3), sp9C.phi, PCT(OREG(28)), 0xA);
        } else {
            spE8 = 1;
        }
        anim->unk_1A--;
    } else {
        temp_a0 = (s32) (temp_v0_2 << 0x10) >> 0x10;
        if (temp_a0 >= 0) {
            phi_v0_2 = temp_a0;
        } else {
            phi_v0_2 = -temp_a0;
        }
        temp_v1_3 = DEGF_TO_BINANG(spF4);
        if (temp_v1_3 < ABS(temp_v0_2)) {
            sp8E = temp_v0_2;
            spF4 = spF4;
            spFC = BINANG_TO_DEGF(temp_v0_2);
            temp_f2_2 = F32_LERP(spF4, spF8, func_8007C0A8(spAC.r, spB4.r) / spB4.r);
            temp_f12_2 = (SQ(temp_f2_2) - 2.0f) / (temp_f2_2 - 360.0f);
            temp_f14 = SQ(spFC) / ((temp_f12_2 * spFC) + (2.0f - (360.0f * temp_f12_2)));
            if (sp8E >= 0) {
                phi_t0 = DEGF_TO_BINANG(temp_f14);
            } else {
                phi_t0 = -DEGF_TO_BINANG(temp_f14);
            }
            spB4.theta = BINANG_ROT180(BINANG_ROT180(sp94.theta) + (sp8E >= 0 ? DEGF_TO_BINANG(temp_f14) : -DEGF_TO_BINANG(temp_f14)));
        } else {
            spB4.theta = BINANG_SUB(sp94.theta, (BINANG_SUB(ABS(temp_v1_3), temp_v0_2)) * ((1.0f - camera->unk_E0) * 0.05f));
        }
    }

    if (spE8 == 0) {
        temp_v0_3 = DEGF_TO_BINANG(BINANG_LERPIMP(sp7C, sp78, spE4)) - (s32) ((f32) spA4.phi * (0.5f + (spE4 * 0.5f))) + (s32) ((f32) spAC.phi * camera->params.batt1.unk_18);
        temp_v1_4 = (s32) (temp_v0_3 << 0x10) >> 0x10;
        if (temp_v1_4 < -0x2AA8) {
            phi_a0 = (u16)-0x2AA8;
        } else {
            phi_a0 = (s16) ((s32) (temp_v0_3 << 0x10) >> 0x10);
            if (temp_v1_4 >= 0x2AA9) {
                phi_a0 = (u16)0x2AA8;
            }
        }
        spB4.phi = Camera_LERPCeilS(phi_a0, sp94.phi, anim->unk_10, 0xA);
        Camera_Vec3fVecSphAdd(sp44, sp48, &spB4);
        spBC.unk_00 = *sp44;
        if (camera->status == CAM_STATUS_ACTIVE) {
            if ((camera->globalCtx->envCtx.skyDisabled == 0) || ((camera->params.batt1.interfaceFlags & 1) != 0)) {
                func_80043D18(camera, sp48, &spBC);
            } else if (batt1->interfaceFlags & 2) {
                func_80043F94(camera, sp48, &spBC);
            } else {
                OLib_Vec3fDistNormalize(&sp128, sp48, &spBC.unk_00);
                spBC.unk_00.x -= sp128.x;
                spBC.unk_00.y -= sp128.y;
                spBC.unk_00.z -= sp128.z;
            }
            *sp4C = spBC.unk_00;
        } else {
            *sp4C = *sp44;
        }
    }
    anim->unk_04 = (f32) (anim->unk_04 + ((((OREG(36) * camera->unk_E0) * (1.0f - spE4)) - anim->unk_04) * PCT(OREG(37))));
    camera->roll = DEGF_TO_BINANG(anim->unk_04);
    camera->fov = Camera_LERPCeilF((sp88->swordState != 0 || gSaveContext.health <= 0x10 ? 0.8f : 1.0f) * (sp74 - ((sp74 * 0.05f) * spE4)), camera->fov, camera->fovUpdateRate, 1.0f);
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Battle1.s")
#endif
#undef NON_MATCHING

s32 Camera_Battle2(Camera* camera) {
    return Camera_NOP(camera);
}

s32 Camera_Battle3(Camera* camera) {
    Camera_NOP(camera);
}

/**
 * Charging spin attack
 * Camera zooms out slowly for 50 frames, then tilts up to a specified
 * setting value.
*/
s32 Camera_Battle4(Camera *camera) {
    Battle4* batt4 = &camera->params.batt4;
    f32 yOffsetInverse;
    f32 yOffset;
    VecSph eyeNextOffset;
    VecSph eyeAtOffset;
    VecSph eyeNextAtOffset;
    CameraModeValue* values;
    Vec3f *eye = &camera->eye;
    Vec3f *at = &camera->at;
    Vec3f *eyeNext = &camera->eyeNext;
    Battle4Anim* anim = &batt4->anim;
    s32 pad;

    yOffset = Player_GetCameraYOffset(camera->player);
    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        yOffsetInverse = (1.0f + PCT(R_CAM_YINV_OFFSET)) - (PCT(R_CAM_YINV_OFFSET) * (68.0f / yOffset));
        batt4->yOffset = (NEXTPCT * yOffset) * yOffsetInverse;
        batt4->rTarget = (NEXTPCT * yOffset) * yOffsetInverse;
        batt4->phiTarget = DEGF_TO_BINANG(NEXTSETTING);
        batt4->lerpUpdateRate = NEXTPCT;
        batt4->fovTarget = NEXTSETTING;
        batt4->atLERPTarget = NEXTPCT;
        batt4->interfaceFlags = NEXTSETTING;
    }

    if (R_RELOAD_CAM_PARAMS){
        Camera_CopyPREGToModeValues(camera);
    }
    
    OLib_Vec3fDiffToVecSphRot90(&eyeAtOffset, at, eye);
    OLib_Vec3fDiffToVecSphRot90(&eyeNextAtOffset, at, eyeNext);

    sCameraInterfaceFlags = batt4->interfaceFlags;
    
    switch(camera->animState){
        case 0:
        case 0xA:
        case 0x14:
            anim->animTimer = 50;
            camera->animState++;
    }

    camera->thetaUpdateRateInv = Camera_LERPCeilF(batt4->lerpUpdateRate, camera->thetaUpdateRateInv, PCT(OREG(25)) * camera->unk_E0, 0.1f);
    camera->rUpdateRateInv = 1000.0f;
    camera->phiUpdateRateInv = 1000.0f;
    camera->xzOffsetUpdateRate = Camera_LERPCeilF(0.025f, camera->xzOffsetUpdateRate, PCT(OREG(25)), 0.1f);
    camera->yOffsetUpdateRate = Camera_LERPCeilF(PCT(OREG(3)), camera->yOffsetUpdateRate, PCT(OREG(26)) * camera->unk_E0, 0.1f);
    camera->fovUpdateRate = 0.0001f;
    func_800457A8(camera, &eyeNextAtOffset, batt4->yOffset, 1);
    if (anim->animTimer != 0) {
        eyeNextOffset.theta = eyeAtOffset.theta;
        eyeNextOffset.phi = eyeAtOffset.phi;
        eyeNextOffset.r = eyeAtOffset.r;
        anim->animTimer--;
    } else {
        eyeNextOffset.theta = eyeAtOffset.theta;
        eyeNextOffset.phi = Camera_LERPCeilS(batt4->phiTarget, eyeAtOffset.phi, batt4->lerpUpdateRate, 2);
        eyeNextOffset.r = Camera_LERPCeilF(batt4->rTarget, eyeAtOffset.r, batt4->lerpUpdateRate, 0.001f);
    }
    Camera_Vec3fVecSphAdd(eyeNext, at, &eyeNextOffset);
    *eye = *eyeNext;
    camera->dist = eyeNextOffset.r;
    camera->fov = Camera_LERPCeilF(batt4->fovTarget, camera->fov, batt4->lerpUpdateRate, 1.0f);
    camera->roll = 0;
    camera->atLERPStepScale = Camera_ClampLERPScale(camera, batt4->atLERPTarget);
    return true;
}

s32 Camera_Battle0(Camera* camera) {
    return Camera_NOP(camera);
}

//#define NON_MATCHING
#ifdef NON_MATCHING
// Targeting non-enemy
s32 Camera_KeepOn1(Camera *camera) {
    Vec3f sp120;
    Vec3f sp114;
    Vec3f sp108;
    f32 sp104;
    f32 spF4;
    f32 spF0;
    f32 spEC;
    f32 spE8;
    s16 spE2;
    s16 spE0;
    VecSph spD8;
    VecSph spD0;
    VecSph spC8;
    VecSph spC0;
    VecSph spB8;
    struct_80043D18 sp8C;
    s32 sp88;
    f32 sp84;
    s16 sp82;
    s16 sp80;
    f32 sp70;
    PosRot sp54;
    Vec3f *sp48 = &camera->eye;
    Vec3f *sp44 = &camera->at;
    Vec3f *sp40 = &camera->eyeNext;
    PosRot *sp3C = &camera->playerPosRot;
    PosRot *sp30 = &camera->targetPosRot;
    f32 temp_f0_5;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f2_2;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_v1;
    f32 phi_f2;
    s32 phi_v0;
    f32 phi_f12;
    f32 phi_f2_2;
    s32 phi_v0_2;
    s32 phi_t0;
    s16 phi_a0;
    KeepOn1* keep1 = &camera->params.keep1;
    Keep1_Unk34* unk34 = &keep1->unk_34;
    CameraModeValue* values;

    sp88 = 0;
    sp70 = Player_GetCameraYOffset(camera->player);
    if ((camera->target == NULL) || (camera->target->update == NULL)) {
        if (camera->target == NULL) {
            osSyncPrintf("\x1b[43;30mcamera: warning: keepon: target is not valid, change parallel\n\x1b[m");
        }
        camera->target = NULL;
        Camera_ChangeModeDefaultFlags(camera, CAM_MODE_PARALLEL);
        return true;
    }

    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        temp_f12 = (1.0f + PCT(R_CAM_YINV_OFFSET)) - (PCT(R_CAM_YINV_OFFSET) * (68.0f / sp70));
        keep1->unk_00 = (NEXTPCT * sp70) * temp_f12;
        keep1->unk_04 = NEXTSETTING;
        keep1->unk_08 = NEXTSETTING;
        keep1->unk_0C = NEXTSETTING;
        keep1->unk_10 = NEXTSETTING;
        keep1->unk_14 = NEXTSETTING;
        keep1->unk_18 = NEXTSETTING;
        keep1->unk_1C = NEXTPCT;
        keep1->unk_20 = NEXTSETTING;
        keep1->unk_24 = NEXTPCT;
        keep1->unk_30 = NEXTSETTING;
        keep1->unk_28 = (NEXTPCT * sp70) * temp_f12;
        keep1->unk_2C = NEXTPCT;
    }

    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }

    
    sp70 += keep1->unk_00;
    OLib_Vec3fDiffToVecSphRot90(&spC0, sp44, sp48);
    OLib_Vec3fDiffToVecSphRot90(&spB8, sp44, sp40);
    sCameraInterfaceFlags = keep1->unk_30;
    if(camera->animState == 0 || camera->animState == 0xA || camera->animState == 0x14){
        camera->animState++;
        unk34->unk_10 = 0;
        unk34->unk_04 = 0.0f;
        unk34->unk_0C = camera->target;
        unk34->unk_16 = OREG(24) + OREG(23);
        unk34->unk_12 = spC0.theta;
        unk34->unk_14 = spC0.phi;
        unk34->unk_00 = spC0.r;
        unk34->unk_08 = (f32) (sp3C->pos.y - camera->playerPosDelta.y);
    }

    
    if (camera->status == 7) {
        sUpdateCameraDirection = 1;
        camera->direction.x = -spC0.phi;
        camera->direction.y = BINANG_ROT180(spC0.theta);
        camera->direction.z = 0;
    }

    sp104 = keep1->unk_04;
    sp84 = 1.0f;
    switch(camera->paramFlags & 0x18){
        case 0x8:
            if ((camera->player->actor.type == ACTORTYPE_PLAYER) && (camera->player->interactRangeActor == camera->target)) {
                func_8002EEE4(&sp54, &camera->player->actor);
                spC8.r = 60.0f;
                spC8.phi = 0x2EE0;
                spC8.theta = camera->playerPosRot.rot.y;
                Camera_Vec3fVecSphAdd(&sp30->pos, &sp54.pos, &spC8);
            } else {
                func_8002EEE4(sp30, camera->target);
            }

            func_8002EEE4(sp30, camera->target);
            if (camera->target != unk34->unk_0C) {
                unk34->unk_0C = camera->target;
                camera->atLERPStepScale = 0.0f;
            }

            camera->xzOffsetUpdateRate = Camera_LERPCeilF(1.0f, camera->xzOffsetUpdateRate, PCT(OREG(25)) * camera->unk_E0, 0.1f);
            camera->yOffsetUpdateRate = Camera_LERPCeilF(1.0f, camera->yOffsetUpdateRate, PCT(OREG(26)) * camera->unk_E0, 0.1f);
            camera->fovUpdateRate = Camera_LERPCeilF(PCT(OREG(4)), camera->fovUpdateRate, camera->unk_E0 * 0.05f, 0.1f);
        case 0x10:
            // this should not exist for case 8
            //unk34->unk_0C = NULL;

            if (((sp3C->pos.y == camera->playerGroundY) || (-0.1f < camera->player->actor.gravity)) || camera->player->stateFlags1 & 0x200000) {
                unk34->unk_08 = sp3C->pos.y;
                sp80 = 0;
            } else {
                sp80 = 1;
            }
            
            phi_f2 = sp80 ? keep1->unk_28 : keep1->unk_00;
            phi_v0 = sp80 ? 0x80 : 0;
            //s32 func_800460A8(Camera *camera, VecSph *arg1, Vec3f *arg2, f32 arg3, f32 arg4, f32 *arg5, VecSph *arg6, s16 arg7);
            func_800460A8(camera, &spB8, &sp30->pos, phi_f2, sp104, &unk34->unk_08, &spC8, phi_v0 | keep1->unk_30);
            sp114 = sp3C->pos;
            sp114.y += sp70;
            OLib_Vec3fDiffToVecSphRot90(&spC8, &sp114, &sp30->pos);
            sp84 = sp104 < spC8.r ? 1.0f : spC8.r / sp104;
            break;
        default:
            *sp44 = sp3C->pos;
            sp44->y += sp70;
            unk34->unk_0C = NULL;
            break;
    }

    OLib_Vec3fDiffToVecSphRot90(&spD8, sp44, sp40);
    if (spD8.r < keep1->unk_04) {
        sp104 = keep1->unk_04;
        spE8 = OREG(6);
    } else {
        if (keep1->unk_08 < spD8.r) {
            sp104 = keep1->unk_08;
            phi_f12 = OREG(6);
        } else {
            sp104 = spD8.r;
            phi_f12 = 1.0f;
        }
        spE8 = phi_f12;
    }
    camera->rUpdateRateInv = Camera_LERPCeilF(spE8, camera->rUpdateRateInv, PCT(OREG(25)), 0.1f);
    spE8 = spD8.r = camera->dist = Camera_LERPCeilF(sp104, camera->dist, 1.0f / camera->rUpdateRateInv, 0.2f);
    sp108 = sp30->pos;
    OLib_Vec3fDiffToVecSphRot90(&spD0, sp44, &sp108);
    phi_f2_2 = spD0.r <= spE8 ? spD0.r : spE8;
    spD0.r = spE8 - (phi_f2_2 * 0.5f);
    temp_f18 = keep1->unk_0C + ((keep1->unk_10 - keep1->unk_0C) * (1.1f - sp84));
    spF0 = OREG(13) + temp_f18;
    spEC = temp_f18;
    spD8.r = camera->dist = Camera_LERPCeilF(spE8, camera->dist, PCT(OREG(11)), 2.0f);
    spD8.theta = spB8.theta;
    temp_a1 = BINANG_SUB(spD0.theta, BINANG_ROT180(spB8.theta));
    if (unk34->unk_16 != 0) {
        if (unk34->unk_16 >= OREG(24)) {
            sp82 = unk34->unk_16 - OREG(24);
            spE2 = spC8.theta;
            OLib_Vec3fDiffToVecSphRot90(&spC8, sp44, sp48);
            spC8.theta = BINANG_ROT180(spE2);
            temp_f0_5 = 1.0f / OREG(23);
            spE2 = BINANG_SUB(unk34->unk_12, spC8.theta) * temp_f0_5;
            spE0 = BINANG_SUB(unk34->unk_14, spC8.phi) * temp_f0_5;
            spD8.r = Camera_LERPCeilF((sp82 * (unk34->unk_00 - spC8.r) * temp_f0_5) + spC8.r, spC0.r, PCT(OREG(28)), 1.0f);
            spD8.theta = Camera_LERPCeilS(spC8.theta + (spE2 * sp82), spC0.theta, PCT(OREG(28)), (u16)0xA);
            spD8.phi = Camera_LERPCeilS(spC8.phi + (spE0 * sp82), spC0.phi, PCT(OREG(28)), (u16)0xA);

        } else {
            sp88 = 1;
        }
        unk34->unk_16--;
    } else {
        phi_v0_2 = ABS(temp_a1);
        temp_v1 = DEGF_TO_BINANG(temp_f18);
        if (DEGF_TO_BINANG(temp_f18) < ABS(temp_a1)) {
            spE2 = temp_a1;
            spEC = temp_f18;
            spF4 = temp_a1 * (360.00015f / 65535.0f);
            temp_f2_2 = ((func_8007C0A8(spD0.r, spD8.r) / spD8.r) * (spF0 - temp_f18)) + temp_f18;
            temp_f12_2 = (SQ(temp_f2_2) - 2.0f) / (temp_f2_2 - 360.0f);
            temp_f14 = SQ(spF4) / ((temp_f12_2 * spF4) + (2.0f - (360.0f * temp_f12_2)));
            if (spE2 >= 0) {
                phi_t0 = DEGF_TO_BINANG(temp_f14);
            } else {
                phi_t0 = -DEGF_TO_BINANG(temp_f14);
            }
            spD8.theta = BINANG_ROT180(BINANG_ROT180(spB8.theta) + (phi_t0 >> 0x10));
        } else {
            spD8.theta = spB8.theta - (s16)((f32) (ABS(temp_a0) - temp_a0) * ((1.0f - camera->unk_E0) * 0.02f));
        }
    }

    if (sp88 == 0) {
        phi_a0 = BINANG_SUB(DEGF_TO_BINANG(keep1->unk_14 + ((keep1->unk_18 - keep1->unk_14) * sp84)), spC8.phi * (0.5f + (sp84 * 0.5f))) + (s16)(spD0.phi * keep1->unk_1C);
        phi_a0 = CLAMP(phi_a0, -0x3200, 0x3200);
        spD8.phi = Camera_LERPCeilS(phi_a0, spB8.phi, PCT(OREG(12)), 0xA);
        Camera_Vec3fVecSphAdd(sp40, sp44, &spD8);
        sp8C.unk_00 = *sp40;
        if (camera->status == CAM_STATUS_ACTIVE) {
            if ((camera->globalCtx->envCtx.skyDisabled == 0) || ((keep1->unk_30 & 1) != 0)) {
                func_80043D18(camera, sp44, &sp8C);
            } else {
                if ((keep1->unk_30 & 2) != 0) {
                    func_80043F94(camera, sp44, &sp8C);
                } else {
                    OLib_Vec3fDistNormalize(&sp120, sp44, &sp8C.unk_00);
                    sp8C.unk_00.x -= sp120.x;
                    sp8C.unk_00.y -= sp120.y;
                    sp8C.unk_00.z -= sp120.z;
                }
            }
            *sp48 = sp8C.unk_00;
        } else {
            *sp48 = *sp40;
        }
        OLib_Vec3fDistNormalize(&sp120, sp48, sp44);
        Camera_Vec3fScaleXYZFactor(sp48, sp48, &sp120, OREG(1));
    }

    camera->fov = Camera_LERPCeilF(keep1->unk_20, camera->fov, camera->fovUpdateRate, 1.0f);
    camera->roll = Camera_LERPCeilS(0, camera->roll, 0.5f, 0xA);
    camera->atLERPStepScale = Camera_ClampLERPScale(camera, sp80 ? keep1->unk_2C : keep1->unk_24);
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_KeepOn1.s")
#endif
#undef NON_MATCHING

s32 Camera_KeepOn2(Camera* camera) {
    return Camera_NOP(camera);
}

s32 func_800626B0(GlobalContext* globalCtx, CollisionCheckContext* colChkCtx, Vec3f* camera_3C, Vec3f* arg3, Actor** arg4, s32 arg5);

#ifdef NON_MATCHING
s32 Camera_KeepOn3(Camera *camera) {
    KeepOn3* keep3 = &camera->params.keep3;
    f32 spD4;
    Vec3f spD0;
    Vec3f spC4;
    f32 spBC;
    f32 spB8;
    Player *spB0;
    Actor *spAC;
    VecSph spA4;
    VecSph sp9C;
    VecSph sp94;
    VecSph sp8C;
    s32 sp84;
    s16 sp82;
    s16 sp80;
    PosRot sp6C;
    f32 sp58;
    Vec3f *sp48 = &camera->eye;
    PosRot *sp3C = &camera->playerPosRot;
    KeepOn3_Unk2C *unk2C = &keep3->unk_2C;
    PosRot *temp_s1 = &camera->targetPosRot;
    Vec3f *temp_s0 = &camera->at;
    Vec3f *temp_s1_2 = &unk2C->unk_10;
    Vec3f *temp_s2 = &camera->eyeNext;
    f32 *temp_a2;
    f32 *temp_a2_2;
    f32 *temp_a2_3;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f2;
    s16 temp_t7;
    s32 temp_s0_2;
    s32 temp_v0_2;
    void *temp_t4;
    void *temp_v0;
    s16 phi_v0;
    f32 phi_f12;
    s32 phi_a0;
    s16 phi_t3;
    s32 phi_s0;
    s32 phi_s0_2;
    CameraModeValue* values;
    f32 t;
    s16* i;
    const f32 zero6 = 0.6f;

    sp58 = Player_GetCameraYOffset(camera->player);
    if (camera->target == NULL || camera->target->update == NULL) {
        if (camera->target == NULL) {
            osSyncPrintf("\x1b[43;30mcamera: warning: talk: target is not valid, change parallel\n\x1b[m");
        }
        camera->target = NULL;
        Camera_ChangeModeDefaultFlags(camera, CAM_MODE_PARALLEL);
        return 1;
    }

    // Might be a switch
    if (((camera->animState == 0) || (camera->animState == 0xA)) || (camera->animState == 0x14)) {
        if (camera->globalCtx->view.unk_124 == 0) {
            camera->unk_14C |= 0x20;
            camera->globalCtx->view.unk_124 = camera->thisIdx | 0x50;
            return 1;
        }
        camera->unk_14C &= ~0x20;
    }

    camera->unk_14C &= ~0x10;
    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        //t = (1.0f + (R_CAM_YINV_OFFSET * 0.01f)) - ((R_CAM_YINV_OFFSET * 0.01f) * (68.0f / yOffset));
        t = (1.0f + (R_CAM_YINV_OFFSET * 0.01f)) - ((R_CAM_YINV_OFFSET * 0.01f) * (68.0f / sp58));
        keep3->unk_00 = (f32) (((((f32) NEXTSETTING) * 0.01f) * sp58) * t);
        keep3->unk_04 = NEXTSETTING;
        keep3->unk_08 = NEXTSETTING;
        keep3->unk_0C = NEXTSETTING;
        keep3->unk_10 = NEXTSETTING;
        keep3->unk_14 = NEXTSETTING;
        keep3->unk_18 = NEXTSETTING;
        keep3->unk_1C = NEXTPCT;
        keep3->unk_20 = NEXTSETTING;
        keep3->unk_24 = NEXTPCT;
        keep3->unk_28 = NEXTSETTING;
        keep3->unk_2A = NEXTSETTING;
    }

    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }

    sp58 += keep3->unk_00;
    OLib_Vec3fDiffToVecSphRot90(&sp94, temp_s0, &camera->eye);
    OLib_Vec3fDiffToVecSphRot90(&sp8C, temp_s0, temp_s2);
    func_8002EEE4(temp_s1, camera->target);
    func_8002EEE4(&sp6C, &camera->player->actor);
    spD0 = sp3C->pos;
    spD0.y += sp58;
    OLib_Vec3fDiffToVecSphRot90(&spA4, &spD0, (Vec3f *) temp_s1);
    sCameraInterfaceFlags = keep3->unk_2A;
    if (camera->animState == 0 || camera->animState == 0xA || camera->animState == 0x14) {
        spAC = camera->target;
        camera->animState++;
        unk2C->unk_0C = spAC;
        phi_f12 = keep3->unk_08 < spA4.r ? 1.0f : spA4.r / keep3->unk_08;
        unk2C->unk_1C = keep3->unk_28;
        spBC = ((1.0f - phi_f12) * spA4.r) / unk2C->unk_1C;
        sp9C.phi = DEGF_TO_BINANG(keep3->unk_14 + ((keep3->unk_18 - keep3->unk_14) * phi_f12)) + (s32)-(spA4.phi * keep3->unk_1C);
        temp_f14 = keep3->unk_0C + ((keep3->unk_10 - keep3->unk_0C) * phi_f12);

        if(keep3->unk_2A & 0x10){
            sp9C.theta = (BINANG_SUB(spA4.theta, sp8C.theta) < 0 ?
                spA4.theta + DEGF_TO_BINANG(temp_f14) :
                spA4.theta - DEGF_TO_BINANG(temp_f14));
        } else if(keep3->unk_2A & 0x20){
            sp9C.theta = (BINANG_SUB(spA4.theta, sp9C.theta) < 0 ?
                BINANG_ROT180(spA4.theta) - DEGF_TO_BINANG(temp_f14) :
                BINANG_ROT180(spA4.theta) + DEGF_TO_BINANG(temp_f14));
        } else {
            if(ABS(BINANG_SUB(spA4.theta, sp8C.theta)) < 0x3FFF) {
                sp9C.theta = BINANG_SUB(spA4.theta, sp8C.theta) < 0 ? 
                    spA4.theta + DEGF_TO_BINANG(temp_f14) :
                    spA4.theta - DEGF_TO_BINANG(temp_f14);
            } else {
                sp9C.theta = BINANG_SUB(spA4.theta, sp8C.theta) < 0 ?
                BINANG_ROT180(spA4.theta) - DEGF_TO_BINANG(temp_f14) :
                BINANG_ROT180(spA4.theta) + DEGF_TO_BINANG(temp_f14);
            }
        }
        temp_f14_2 = spA4.r;
        sp80 = sp9C.theta;
        sp82 = sp9C.phi;
        spA4.r = (spBC * zero6) + (temp_f14_2 * (1.0f - zero6));
        spD0 = sp3C->pos;
        spB8 = temp_f14_2;
        spD4 = spD4 + sp58;
        Camera_Vec3fVecSphAdd(temp_s1_2, &spD0, &spA4);
        sp84 = ARRAY_COUNT(D_8011D3B0);
        phi_s0 = 0;
        spA4.r = temp_f14_2;
        sp9C.r = ((keep3->unk_04 + (temp_f14_2 * 0.5f)) - sp8C.r) + sp8C.r;
        Camera_Vec3fVecSphAdd(&spC4, temp_s1_2, &sp9C);
        if (!(keep3->unk_2A & 0x80)) {
            while(phi_s0 < sp84){
                if (func_800626B0(camera->globalCtx, &camera->globalCtx->colChkCtx, temp_s1_2, &spC4, &spAC, 2) || func_80043F34(camera, temp_s1_2, &spC4)) {
                    sp9C.theta = D_8011D3B0[phi_s0] + sp80;
                    sp9C.phi = D_8011D3CC[phi_s0] + sp82;
                    Camera_Vec3fVecSphAdd(&spC4, temp_s1_2, &sp9C);
                } else {
                    break;
                }
                phi_s0++;
            }
        }   
        osSyncPrintf("camera: talk: BG&collision check %d time(s)\n", phi_s0);
        camera->unk_14C &= ~4;
        temp_f0_2 = (f32) ((s32) ((unk2C->unk_1C + 1) * unk2C->unk_1C) >> 1);
        unk2C->unk_00.y = (f32) ((f32) ((s32) ((sp9C.theta - sp8C.theta) << 0x10) >> 0x10) / temp_f0_2);
        unk2C->unk_00.z = (f32) ((f32) ((s32) ((sp9C.phi - sp8C.phi) << 0x10) >> 0x10) / temp_f0_2);
        unk2C->unk_00.x = (f32) ((sp9C.r - sp8C.r) / temp_f0_2);
        return 1;
    }

    if (unk2C->unk_1C != 0) {
        temp_a2_3 = &sp9C;
        temp_s0->x = (f32) (temp_s0->x + ((unk2C->unk_10.x - temp_s0->x) / (f32) unk2C->unk_1C));
        temp_s0->y = (f32) (temp_s0->y + ((unk2C->unk_10.y - temp_s0->y) / (f32) unk2C->unk_1C));
        temp_s0->z = (f32) (temp_s0->z + ((unk2C->unk_10.z - temp_s0->z) / (f32) unk2C->unk_1C));
        sp9C.r = ((unk2C->unk_00.x * (f32) unk2C->unk_1C) + sp8C.r) + 1.0f;
        sp9C.theta = sp8C.theta + (s32) (unk2C->unk_00.y * (f32) unk2C->unk_1C);
        sp9C.phi = sp8C.phi + (s32) (unk2C->unk_00.z * (f32) unk2C->unk_1C);
        Camera_Vec3fVecSphAdd(temp_s2, temp_s0, &sp9C);
        *sp48 = *temp_s2;
        camera->fov = Camera_LERPCeilF(keep3->unk_20, camera->fov, 0.5f, 1.0f);
        camera->roll = Camera_LERPCeilS(0, camera->roll, 0.5f, 0xA);
        camera->atLERPStepScale = Camera_ClampLERPScale(camera, keep3->unk_24);
        func_80043F34(camera, temp_s0, sp48);
        unk2C->unk_1C--;
    } else {
        camera->unk_14C |= (0x400 | 0x10);
    }
    if ((camera->unk_14C & 8)) {
        sCameraInterfaceFlags = 0;
        func_80043B60(camera);
        camera->atLERPStepScale = 0.0f;
        if (camera->unk_D8 > 0.001f || CHECK_PAD(D_8015BD7C->state.input[0].press, A_BUTTON) || CHECK_PAD(D_8015BD7C->state.input[0].press, B_BUTTON) || CHECK_PAD(D_8015BD7C->state.input[0].press, L_CBUTTONS) || CHECK_PAD(D_8015BD7C->state.input[0].press, D_CBUTTONS) || CHECK_PAD(D_8015BD7C->state.input[0].press, U_CBUTTONS) || CHECK_PAD(D_8015BD7C->state.input[0].press, R_CBUTTONS) || CHECK_PAD(D_8015BD7C->state.input[0].press, R_TRIG) || CHECK_PAD(D_8015BD7C->state.input[0].press, Z_TRIG)) {
            camera->unk_14C |= 4;
            camera->unk_14C &= ~8;
        }
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_KeepOn3.s")
#endif

typedef struct {
    Vec3f unk_00;
    char unk_04[0x14];
    Vec3f unk_20;
} struct_8015BD50;

#ifdef NON_MATCHING
s32 Camera_KeepOn4(Camera *camera) {
    static struct_8015BD50 D_8015BD50;
    
    struct Actor *spD0;
    struct Player *spCC;
    CollisionPoly *spC0;
    VecSph spB8;
    VecSph spB0;
    VecSph spA8;
    s16 spA2;
    s16 spA0;
    s16 sp9C;
    f32 sp88;
    Player *sp84;
    s16 sp82;
    s32 sp7C;
    f32 sp74;
    PosRot sp60;
    PosRot sp4C;
    Vec3f *sp44 = &camera->eye;
    Vec3f *sp40 = &camera->at;
    Vec3f *sp3C = &camera->eyeNext;
    PosRot *sp38 = &camera->playerPosRot;
    f32 *temp_a2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    s16 *temp_s0 = &camera->unk_12C;
    s16 temp_ret;
    s16 temp_t4;
    s16 temp_v0_3;
    s32 temp_s0_2;
    s32 temp_v0_2;
    s32 temp_v1;
    u32 temp_t3_2;
    CameraModeValue *values;
    KeepOn4* keep4 = &camera->params.keep4;
    KeepOn4_Unk20* unk20 = &keep4->unk_20;

    sp84 = camera->globalCtx->actorCtx.actorList[ACTORTYPE_PLAYER].first;
    
    if(camera->animState == 0 || camera->animState == 0xA || camera->animState == 0x14){
        if(camera->globalCtx->view.unk_124 == 0){
            camera->unk_14C |= 0x20;
            camera->unk_14C &= ~(0x4 | 0x2);
            camera->globalCtx->view.unk_124 = camera->thisIdx | 0x50;
            return 1;
        }
        camera->unk_14C &= ~0x20;
        unk20->unk_14 = *temp_s0;
    }
    
    if (unk20->unk_14 != *temp_s0) {
        osSyncPrintf("\x1b[43;30mcamera: item: item type changed %d -> %d\n\x1b[m", unk20->unk_14, *temp_s0);
        camera->unk_14C |= 0x20;
        camera->animState = 0x14;
        camera->unk_14C &= ~(0x4 | 0x2);
        camera->globalCtx->view.unk_124 = camera->thisIdx | 0x50;
        return 1;
    }
    sp88 = Player_GetCameraYOffset(camera->player);
    camera->unk_14C &= ~0x10;
    if(RELOAD_PARAMS){
        f32 t = -0.5f;
        f32 t2 = 0.01f;
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        temp_f12 = (1.0f + t) - ((68.0f / sp88) * t);
        keep4->unk_00 = NEXTSETTING * t2 * sp88 * temp_f12;
        keep4->unk_04 = NEXTSETTING * t2 * sp88 * temp_f12;
        keep4->unk_08 = NEXTSETTING;
        keep4->unk_0C = NEXTSETTING;
        keep4->unk_10 = NEXTSETTING;
        keep4->unk_18 = NEXTSETTING;
        keep4->unk_1C = NEXTSETTING;
        keep4->unk_14 = NEXTSETTING * t2;
        keep4->unk_1E = NEXTSETTING;
        osSyncPrintf("camera: item: type %d\n", *temp_s0);
        switch(*temp_s0){
            case 1:
                keep4->unk_00 = (f32) ((sp88 * -0.6f) * temp_f12);
                keep4->unk_04 = (f32) ((sp88 + sp88) * temp_f12);
                keep4->unk_08 = 10.0f;
                break;
            case 2:
            case 3:
                keep4->unk_08 = -20.0f;
                keep4->unk_18 = 80.0f;
                break;
            case 4:
                keep4->unk_00 = (f32) ((sp88 * -0.2f) * temp_f12);
                keep4->unk_08 = 25.0f;
                break;
            case 8:
                keep4->unk_00 = (f32) ((sp88 * -0.2f) * temp_f12);
                keep4->unk_04 = (f32) ((sp88 * 0.8f) * temp_f12);
                keep4->unk_08 = 50.0f;
                keep4->unk_18 = 70.0f;
                break;
            case 9:
                keep4->unk_00 = (f32) ((sp88 * 0.1f) * temp_f12);
                keep4->unk_04 = (f32) ((sp88 * 0.5f) * temp_f12);
                keep4->unk_08 = -20.0f;
                keep4->unk_0C = 0.0f;
                keep4->unk_1C = (u16)0x2540;
                break;
            case 5:
                keep4->unk_00 = (f32) ((sp88 * -0.4f) * temp_f12);
                keep4->unk_08 = -10.0f;
                keep4->unk_0C = 45.0f;
                keep4->unk_1C = (u16)0x2002;
                break;  
            case 10:
                keep4->unk_00 = (f32) ((sp88 * -0.5f) * temp_f12);
                keep4->unk_04 = (f32) ((sp88 * 1.5f) * temp_f12);
                keep4->unk_08 = -15.0f;
                keep4->unk_0C = 175.0f;
                keep4->unk_18 = 70.0f;
                keep4->unk_1C = (u16)0x2202;
                keep4->unk_1E = (u16)0x3C;
                break;
            case 12:
                keep4->unk_00 = (f32) ((sp88 * -0.6f) * temp_f12);
                keep4->unk_04 = (f32) ((sp88 * 1.6f) * temp_f12);
                keep4->unk_08 = -2.0f;
                keep4->unk_0C = 120.0f;
                keep4->unk_10 = sp84->stateFlags1 & 0x8000000 ? 0.0f : 20.0f;
                keep4->unk_1C = (u16)0x3212;
                keep4->unk_1E = (u16)0x1E;
                keep4->unk_18 = 50.0f;
                break;
            case 0x5A:
                keep4->unk_00 = (f32) ((sp88 * -0.3f) * temp_f12);
                keep4->unk_18 = 45.0f;
                keep4->unk_1C = (u16)0x2F02;
                break;
            case 0x5B:
                keep4->unk_00 = (f32) ((sp88 * -0.1f) * temp_f12);
                keep4->unk_04 = (f32) ((sp88 * 1.5f) * temp_f12);
                keep4->unk_08 = -3.0f;
                keep4->unk_0C = 10.0f;
                keep4->unk_18 = 55.0f;
                keep4->unk_1C = (u16)0x2F08;
                break;
            case 0x51:
                keep4->unk_00 = (f32) ((sp88 * -0.3f) * temp_f12);
                keep4->unk_04 = (f32) ((sp88 * 1.5f) * temp_f12);
                keep4->unk_08 = 2.0f;
                keep4->unk_0C = 20.0f;
                keep4->unk_10 = 20.0f;
                keep4->unk_1C = (u16)0x2280;
                keep4->unk_1E = (u16)0x1E;
                keep4->unk_18 = 45.0f;
                break;
            case 11:
                keep4->unk_00 = (f32) ((sp88 * -0.19f) * temp_f12);
                keep4->unk_04 = (f32) ((sp88 * 0.7f) * temp_f12);
                keep4->unk_0C = 130.0f;
                keep4->unk_10 = 10.0f;
                keep4->unk_1C = (u16)0x2522;
                break;
            default:
                break;
        }
    }
    
    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }
    
    sUpdateCameraDirection = 1;
    sCameraInterfaceFlags = keep4->unk_1C;
    OLib_Vec3fDiffToVecSphRot90(&spB0, sp40, sp44);
    OLib_Vec3fDiffToVecSphRot90(&spA8, sp40, sp3C);
    D_8015BD50.unk_00 = sp38->pos;
    D_8015BD50.unk_00.y += sp88;
    temp_f0_2 = func_8003CCA4(&camera->globalCtx->colCtx, &spC0, &sp7C, &D_8015BD50.unk_00);
    temp_f2 = keep4->unk_00 + D_8015BD50.unk_00.y;
    if (temp_f2 < temp_f0_2) {
        D_8015BD50.unk_00.y = (f32) (temp_f0_2 + 10.0f);
    } else {
        D_8015BD50.unk_00.y = temp_f2;
    }

    switch(camera->animState){
        case 0:
        case 0x14:
            sp9C = 1;
            spCC = camera->player;
            func_80043ABC(camera);
            camera->unk_14C &= ~(0x4 | 0x2);
            unk20->unk_10 = keep4->unk_1E;
            unk20->unk_08 = sp38->pos.y - camera->playerPosDelta.y;
            if(keep4->unk_1C & 2){
                spA2 = DEGF_TO_BINANG(keep4->unk_08);
                spA0 = BINANG_SUB(BINANG_ROT180(sp38->rot.y), spA8.theta) > 0 ? 
                    BINANG_ROT180(sp38->rot.y) + DEGF_TO_BINANG(keep4->unk_04) :
                    BINANG_ROT180(sp38->rot.y) - DEGF_TO_BINANG(keep4->unk_0C);
            } else if(keep4->unk_1C & 4){
                spA2 = DEGF_TO_BINANG(keep4->unk_08);
                spA0 = DEGF_TO_BINANG(keep4->unk_0C);
            } else if(keep4->unk_1C & 8 && camera->target != NULL){
                func_8002EF44(&sp60, camera->target);
                spA2 = DEGF_TO_BINANG(keep4->unk_08) - sp60.rot.x;
                spA0 = BINANG_SUB(BINANG_ROT180(sp60.rot.y), spA8.theta) > 0 ?
                    BINANG_ROT180(sp60.rot.y) + DEGF_TO_BINANG(keep4->unk_0C) :
                    BINANG_ROT180(sp60.rot.y) - DEGF_TO_BINANG(keep4->unk_0C);
                sp9C++;
                spD0 = camera->target;
            } else if(keep4->unk_1C & 0x80 && camera->target != NULL){
                func_8002EF14(&sp4C, camera->target);
                spA2 = DEGF_TO_BINANG(keep4->unk_08);spA2 = (s16) (s32) ((camera->params.keep4.unk_08 * 182.0416717529297f) + 0.5f);
                temp_v0_3 = Camera_XZAngle(&sp4C.pos, &sp38->pos);
                spA0 = BINANG_SUB(temp_v0_3, spA8.theta) > 0 ?
                    temp_v0_3 + DEGF_TO_BINANG(keep4->unk_0C) :
                    temp_v0_3 - DEGF_TO_BINANG(keep4->unk_0C);
                sp9C++;
                spD0 = camera->target;
            } else if(keep4->unk_1C & 0x40){
                spA2 = DEGF_TO_BINANG(keep4->unk_08);
                spA0 = spA8.theta;
            } else {
                spA2 = spA8.phi;
                spA0 = spA8.theta;
            }
            spB8.phi = spA2;
            spB8.theta = spA0;
            spB8.r = keep4->unk_04;
            Camera_Vec3fVecSphAdd(&D_8015BD50.unk_20, &D_8015BD50.unk_00, &spB8);
            sp82 = ARRAY_COUNT(D_8011D3B0);
            if(!(keep4->unk_1C & 1)){
                for(sp7C = 0; sp7C < sp82; sp7C++){
                    if(func_800626B0(camera->globalCtx, &camera->globalCtx->colChkCtx, &D_8015BD50.unk_00, &D_8015BD50.unk_20, &spCC, sp9C) || func_80043F34(camera, &D_8015BD50.unk_00, &D_8015BD50.unk_20)){
                        spB8.theta = D_8011D3B0[sp7C] + spA0;
                        spB8.phi = D_8011D3CC[sp7C] + spA2;
                        Camera_Vec3fVecSphAdd(&D_8015BD50.unk_20, &D_8015BD50.unk_00, &spB8);
                    } else {
                        break;
                    }
                }
                osSyncPrintf("camera: item: BG&collision check %d time(s)\n", sp7C);
            }
            unk20->unk_04 = BINANG_SUB(spB8.phi, spA8.phi) / (f32)unk20->unk_10;
            unk20->unk_00 = BINANG_SUB(spB8.theta, spA8.theta) / (f32)unk20->unk_10;
            unk20->unk_0C = spA8.theta;
            unk20->unk_0E = spA8.phi;
            camera->animState++;
            unk20->unk_12 = 1;
            break;
        case 0xA:
            unk20->unk_08 = sp38->pos.y - camera->playerPosDelta.y;
            break;
        default:
            break;
    }
    camera->xzOffsetUpdateRate = 0.25f;
    camera->yOffsetUpdateRate = 0.25f;
    camera->atLERPStepScale = 0.75f;
    Camera_LERPCeilVec3f(&D_8015BD50.unk_00, sp40, 0.5f, 0.5f, 0.2f);
    if (keep4->unk_10 != 0.0f) {
        spB8.r = keep4->unk_10;
        spB8.phi = 0;
        spB8.theta = sp38->rot.y;
        Camera_Vec3fVecSphAdd(sp40, sp40, &spB8);
    }
    camera->atLERPStepScale = 0.0f;
    spB8.r = camera->dist = Camera_LERPCeilF(keep4->unk_04, camera->dist, 0.25f, 2.0f);
    if(unk20->unk_10 != 0){
        camera->unk_14C |= 0x20;
        unk20->unk_0C += (s16)unk20->unk_00;
        unk20->unk_0E += (s16)unk20->unk_04;
        unk20->unk_10--;
    } else if(keep4->unk_1C & 0x10){
        camera->unk_14C |= (0x400 | 0x10);
        camera->unk_14C |= (0x4 | 0x2);
        camera->unk_14C &= ~8;
        if(camera->unk_160 > 0){
            camera->unk_160--;
        }
    } else {
        camera->unk_14C |= (0x400 | 0x10);
        if(camera->unk_14C & 8 || keep4->unk_1C & 0x80){
            sCameraInterfaceFlags = 0;
            camera->unk_14C |= (0x4 | 0x2);
            camera->unk_14C &= ~8;
            if(camera->prevCamDataIdx < 0){
                Camera_ChangeSetting(camera, camera->prevSetting, 2);
            } else{
                Camera_ChangeDataIdx(camera, camera->prevCamDataIdx);
                camera->prevCamDataIdx = -1;
            }
        }
    }
    spB8.theta = Camera_LERPCeilS(unk20->unk_0C, spA8.phi, keep4->unk_14, 4);
    spB8.phi = Camera_LERPCeilS(unk20->unk_0E, spA8.theta, keep4->unk_14, 4);
    Camera_Vec3fVecSphAdd(sp3C, sp40, &spB8);
    *sp44 = *sp3C;
    func_80043F34(camera, sp40, sp44);
    camera->fov = Camera_LERPCeilF(keep4->unk_18, camera->fov, camera->fovUpdateRate, 1.0f);
    temp_ret = Camera_LERPCeilS(0, camera->roll, 0.5f, 0xA);
    camera->roll = temp_ret;
    return (s32) temp_ret;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_KeepOn4.s")
#endif

/**
 * Talking in a pre-rendered room
*/
s32 Camera_KeepOn0(Camera *camera) {
    Vec3f *eye = &camera->eye;
    Vec3f *eyeNext = &camera->eyeNext;
    Vec3f *at = &camera->at;
    VecSph eyeTargetPosOffset;
    VecSph eyeAtOffset;
    KeepOn0 *keep0 = &camera->params.keep0;
    CameraModeValue* values;
    PosRot *targetPosRot = &camera->targetPosRot;
    CamPosData *sceneCamData;
    Vec3s sceneCameraRot;
    s16 fov;
    KeepOn0Anim *anim = &keep0->anim;
   
    camera->unk_14C &= ~0x10;
    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        keep0->fovScale = NEXTPCT;
        keep0->thetaScale = NEXTPCT;
        keep0->timerInit = NEXTSETTING;
        keep0->interfaceFlags = NEXTSETTING;
    }

    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }
    sceneCamData = func_8004476C(camera);
    Camera_Vec3sToVec3f(eyeNext, &sceneCamData->pos);
    *eye = *eyeNext;

    sceneCameraRot = sceneCamData->rot; // unused
    
    fov = sceneCamData->fov;
    if (fov == -1) {
        fov = 6000;
    }

    if (camera->target == NULL || camera->target->update == NULL) {
        if (camera->target == NULL) {
            osSyncPrintf(VT_COL(YELLOW, BLACK) "camera: warning: talk: target is not valid, change normal camera\n" VT_RST);
        }
        camera->target = NULL;
        Camera_ChangeModeDefaultFlags(camera, CAM_MODE_NORMAL);
        return true;
    }

    func_8002EEE4(targetPosRot, camera->target);
    
    OLib_Vec3fDiffToVecSphRot90(&eyeAtOffset, eye, at);
    OLib_Vec3fDiffToVecSphRot90(&eyeTargetPosOffset, eye, &targetPosRot->pos);

    sCameraInterfaceFlags = keep0->interfaceFlags;
    
    if (camera->animState == 0) {
        camera->animState++;
        camera->fov = PCT(fov);
        camera->roll = 0;
        camera->atLERPStepScale = 0.0f;
        anim->animTimer = keep0->timerInit;
        anim->fovTarget = camera->fov - (camera->fov * keep0->fovScale);
    }

    if (anim->animTimer != 0) {
        eyeAtOffset.theta += (BINANG_SUB(eyeTargetPosOffset.theta, eyeAtOffset.theta) / anim->animTimer) * keep0->thetaScale;
        Camera_Vec3fVecSphAdd(at, eye, &eyeAtOffset);
        anim->animTimer--;
    } else {
        camera->unk_14C |= (0x400 | 0x10);
    }
    camera->fov = Camera_LERPCeilF(anim->fovTarget, camera->fov, 0.5f, 10.0f);
    return true;
}

s32 Camera_Fixed1(Camera *camera) {
    Fixed1 *fixd1 = &camera->params.fixd1;
    Fixed1Anim* anim = &fixd1->anim;
    s32 pad;
    VecSph eyeOffset;
    VecSph eyeAtOffset;
    s32 pad2;
    Vec3f adjustedPos;
    CamPosData *scenePosData;
    Vec3f *eye = &camera->eye;
    Vec3f *at = &camera->at;
    PosRot *playerPosRot = &camera->playerPosRot;
    f32 yOffset;
    CameraModeValue *values;

    yOffset = Player_GetCameraYOffset(camera->player);
    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        scenePosData = func_8004476C(camera);
        Camera_Vec3sToVec3f(&anim->eyePosRotTarget.pos, &scenePosData->pos);
        anim->eyePosRotTarget.rot = scenePosData->rot;
        anim->fov = scenePosData->fov;
        fixd1->unk_00 = NEXTPCT * yOffset;
        fixd1->lerpStep = NEXTPCT;
        fixd1->fov = NEXTSETTING;
        fixd1->interfaceFlags = NEXTSETTING;
    }

    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }
    if (anim->fov == -1) {
        anim->fov = fixd1->fov * 100.0f;
    } else if (anim->fov < 361) {
        anim->fov *= 100;
    }

    sCameraInterfaceFlags = fixd1->interfaceFlags;

    if (camera->animState == 0) {
        camera->animState++;
        func_80043B60(camera);
        if (anim->fov != -1) {
            fixd1->fov = PCT(anim->fov);
        }
    }

    OLib_Vec3fDiffToVecSphRot90(&eyeAtOffset, eye, at);

    Camera_LERPCeilVec3f(&anim->eyePosRotTarget.pos, eye, 0.1f, 0.1f, 0.2f);
    adjustedPos = playerPosRot->pos;
    adjustedPos.y += yOffset;
    camera->dist = OLib_Vec3fDist(&adjustedPos, eye);

    eyeOffset.r = camera->dist;
    eyeOffset.phi = Camera_LERPCeilS(-anim->eyePosRotTarget.rot.x, eyeAtOffset.phi, fixd1->lerpStep, 5);
    eyeOffset.theta = Camera_LERPCeilS(anim->eyePosRotTarget.rot.y, eyeAtOffset.theta, fixd1->lerpStep, 5);
    
    Camera_Vec3fVecSphAdd(at, eye, &eyeOffset);
    
    camera->eyeNext = *eye;

    camera->fov = Camera_LERPCeilF(fixd1->fov, camera->fov, fixd1->lerpStep, 0.01f);
    camera->roll = 0;
    camera->atLERPStepScale = 0.0f;

    camera->posOffset.x = camera->at.x - playerPosRot->pos.x;
    camera->posOffset.y = camera->at.y - playerPosRot->pos.y;
    camera->posOffset.z = camera->at.z - playerPosRot->pos.z;

    return true;
}

s32 Camera_Fixed2(Camera *camera) {
    s32 pad;
    Fixed2 *fixd2 = &camera->params.fixd2;
    CameraModeValue* values;
    Vec3f atTarget;
    Vec3f posOffsetTarget;
    f32 yOffsetInverse;
    CamPosData *scenePosData;
    Vec3f *eye = &camera->eye;
    Vec3f *at = &camera->at;
    Vec3f *eyeNext = &camera->eyeNext;
    f32 yOffset;
    PosRot *playerPosRot = &camera->playerPosRot;
    Fixed2_InitParams *initParams = &fixd2->initParams;

    yOffset = Player_GetCameraYOffset(camera->player);

    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        yOffsetInverse = (1.0f + PCT(R_CAM_YINV_OFFSET)) - (PCT(R_CAM_YINV_OFFSET) * (68.0f / yOffset));
        fixd2->yOffset = (NEXTPCT * yOffset) * yOffsetInverse;
        fixd2->eyeStepScale = NEXTPCT;
        fixd2->posStepScale = NEXTPCT;
        fixd2->fov = NEXTSETTING;
        fixd2->interfaceFlags = NEXTSETTING;
        initParams->fov = fixd2->fov * 100.0f;
        scenePosData = func_8004476C(camera);
        if (scenePosData != NULL) {
            Camera_Vec3sToVec3f(&initParams->eye, &scenePosData->pos);
            if (scenePosData->fov != -1) {
                initParams->fov = scenePosData->fov;
            }
        } else {
            initParams->eye = *eye;
        }
        if (initParams->fov < 0x169) {
            initParams->fov *= 100;
        }
    }

    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }

    sCameraInterfaceFlags = fixd2->interfaceFlags;

    posOffsetTarget.x = 0.0f;
    posOffsetTarget.y = fixd2->yOffset + yOffset;
    posOffsetTarget.z = 0.0f;

    Camera_LERPCeilVec3f(&posOffsetTarget, &camera->posOffset, fixd2->posStepScale, fixd2->posStepScale, 0.1f);
    atTarget.x = playerPosRot->pos.x + camera->posOffset.x;
    atTarget.y = playerPosRot->pos.y + camera->posOffset.y;
    atTarget.z = playerPosRot->pos.z + camera->posOffset.z;
    if (camera->animState == 0) {
        camera->animState++;
        func_80043B60(camera);
        if (!(fixd2->interfaceFlags & 1)) {
            *eye = *eyeNext = initParams->eye;
            camera->at = atTarget;
        }
    }

    Camera_LERPCeilVec3f(&atTarget, &camera->at, fixd2->posStepScale, fixd2->posStepScale, 10.0f);
    Camera_LERPCeilVec3f(&initParams->eye, eyeNext, fixd2->eyeStepScale, fixd2->eyeStepScale, 0.1f);
    
    *eye = *eyeNext;
    camera->dist = OLib_Vec3fDist(at, eye);
    camera->roll = 0;
    camera->unk_D8 = 0.0f;
    camera->fov = PCT(initParams->fov);
    camera->atLERPStepScale = Camera_ClampLERPScale(camera, 1.0f);
    camera->posOffset.x = camera->at.x - playerPosRot->pos.x;
    camera->posOffset.y = camera->at.y - playerPosRot->pos.y;
    camera->posOffset.z = camera->at.z - playerPosRot->pos.z;
    return true;
}

/**
 * Camera's position is fixed, does not move, or rotate
*/
s32 Camera_Fixed3(Camera *camera) {
    s32 pad;
    Fixed3 *fixd3 = &camera->params.fixd3;
    CameraModeValue *values;
    VecSph atSph;
    CamPosData *sceneCamData;
    VecSph eyeAtOffset;
    Vec3f *eye = &camera->eye;
    Vec3f *at = &camera->at;
    Vec3f *eyeNext = &camera->eyeNext;
    Fixed3Anim *anim = &fixd3->anim;

    sceneCamData = func_8004476C(camera);

    OLib_Vec3fDiffToVecSphRot90(&eyeAtOffset, eye, at);

    if (RELOAD_PARAMS){
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        fixd3->interfaceFlags = NEXTSETTING;
        CPY_SCENECAM(eyeNext, anim->rot);
        anim->fov = sceneCamData->fov;
        anim->jfifId = sceneCamData->jfifId;
        if (anim->fov == -1) {
            anim->fov = 6000;
        }
        if (anim->fov <= 360) {
            anim->fov *= 100;
        }
    }

    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }

    if (camera->animState == 0) {
        anim->updDirTimer = 5;
        R_CAM_FIXED3_FOV =  anim->fov;
        camera->animState++;
    }

    if (sceneCamData->jfifId != anim->jfifId) {
        osSyncPrintf("camera: position change %d \n", anim->jfifId);
        anim->jfifId = sceneCamData->jfifId;
        anim->updDirTimer = 5;
    }

    if (anim->updDirTimer > 0) {
        anim->updDirTimer--;
        sUpdateCameraDirection = true;
    } else {
        sUpdateCameraDirection = false;
    }

    atSph.r = 150.0f;
    atSph.theta = anim->rot.y;
    atSph.phi = -anim->rot.x;
    
    Camera_Vec3fVecSphAdd(at, eye, &atSph);
    sCameraInterfaceFlags = fixd3->interfaceFlags;
    anim->fov = R_CAM_FIXED3_FOV;
    camera->roll = 0;
    camera->fov = anim->fov * 0.01f;
    camera->atLERPStepScale = 0.0f;
    return true;
}

#ifdef NON_MATCHING
s32 Camera_Fixed4(Camera *camera) {
    Vec3f sp84;
    Vec3f sp78;
    VecSph sp70;
    VecSph sp68;
    f32 sp50;
    Vec3f *eye = &camera->eye;
    Vec3f *at = &camera->at;
    PosRot* playerPosRot = &camera->playerPosRot;
    CamPosData *temp_v0_2;
    Vec3f *eyeNext = &camera->eyeNext;
    CameraModeValue* values;
    Fixed4* fixd4 = &camera->params.fixd4;
    Fixed4_Unk14* unk14 = &fixd4->unk_14;
    f32 t;

    sp50 = Player_GetCameraYOffset(camera->player);
    if (RELOAD_PARAMS) {
        t = ((1.0f + (R_CAM_YINV_OFFSET * 0.01f)) - ((R_CAM_YINV_OFFSET * 0.01f) * (68.0f / sp50)));
        values =  sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        fixd4->unk_00 = (NEXTSETTING * 0.01f * sp50) * t;
        fixd4->unk_04 = NEXTSETTING * 0.01f;
        fixd4->unk_08 = NEXTSETTING * 0.01f;
        fixd4->unk_0C = NEXTSETTING;
        fixd4->unk_10 = NEXTSETTING;
        temp_v0_2 = func_8004476C(camera);
        if (temp_v0_2 != NULL) {
            Camera_Vec3sToVec3f(&unk14->unk_00, &temp_v0_2->pos);
        } else {
            unk14->unk_00 = *eye;
        }
    }
    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }
    sCameraInterfaceFlags = fixd4->unk_10;
    if (camera->animState == 0) {
        camera->animState++;
        if (!(fixd4->unk_10 & 4)) {
            func_80043B60(camera);
        }
        unk14->unk_0C = fixd4->unk_08;
    }
    eyeNext->x += (unk14->unk_00.x - eyeNext->x) * fixd4->unk_04;
    eyeNext->y += (unk14->unk_00.y - eyeNext->y) * fixd4->unk_04;
    eyeNext->z += (unk14->unk_00.z - eyeNext->z) * fixd4->unk_04;
    *eye = *eyeNext;
    sp78.x = 0.0f;
    sp78.y = 0.0f;
    sp78.z = fixd4->unk_00 + sp50;
    Camera_LERPCeilVec3f(&sp78, &camera->posOffset, 0.1f, 0.1f, 0.1f);
    sp84.x = camera->at.x + (((playerPosRot->pos.x + camera->posOffset.x) - camera->at.x) * 0.5f);
    sp84.y = camera->at.y + (((playerPosRot->pos.y + camera->posOffset.y) - camera->at.y) * 0.5f);
    sp84.z = camera->at.z + (((playerPosRot->pos.z + camera->posOffset.z) - camera->at.z) * 0.5f);
    OLib_Vec3fDiffToVecSphRot90(&sp70, eyeNext, at);
    OLib_Vec3fDiffToVecSphRot90(&sp68, eyeNext, &sp84);
    sp70.r += (sp68.r - sp70.r) * unk14->unk_0C;
    sp70.phi = Camera_LERPCeilS(sp68.phi, sp70.phi, unk14->unk_0C * camera->unk_E0, 0xA);
    sp70.theta = Camera_LERPCeilS(sp68.theta, sp70.theta, unk14->unk_0C * camera->unk_E0, 0xA);
    Camera_Vec3fVecSphAdd(at, eyeNext, &sp70);
    camera->dist = OLib_Vec3fDist(at, eye);
    camera->roll = 0;
    camera->fov = fixd4->unk_0C;
    camera->atLERPStepScale = Camera_ClampLERPScale(camera, 1.0f);
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Fixed4.s")
#endif

s32 Camera_Fixed0(Camera* camera) {
    return Camera_NOP(camera);
}

s32 Camera_Subj1(Camera* camera) {
    return Camera_NOP(camera);
}

s32 Camera_Subj2(Camera* camera) {
    return Camera_NOP(camera);
}

//#define NON_MATCHING
#ifdef NON_MATCHING
/** 
 * First person view
*/
s32 Camera_Subj3(Camera *camera) {
    Subj3* subj3 = &camera->params.subj3;
    Vec3f sp98;
    Vec3f sp8C;
    VecSph sp84;
    VecSph sp7C;
    PosRot sp60;
    f32 sp58;
    s16 sp52;
    s16 sp50;
    f32 sp3C;
    Vec3f *sp38 = &camera->eye;
    Vec3f *sp30 = &camera->eyeNext;
    Subj3_Anim* anim = &subj3->anim;
    Vec3f *temp_s1 = &camera->at;
    PosRot* playerPosRot = &camera->playerPosRot;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f6;
    f32 temp_f8;
    s32 temp_f10;
    CameraModeValue* values;
    f32 t;

    func_8002EEE4(&sp60, camera->player);
    sp3C = Player_GetCameraYOffset(camera->player);
    if (camera->globalCtx->view.unk_124 == 0) {
        camera->globalCtx->view.unk_124 = camera->thisIdx | 0x50;
        return 1;
    }
    func_80043ABC(camera);
    Camera_CopyPREGToModeValues(camera);
    values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
    subj3->eyeNextYOffset = (f32) ((NEXTPCT) * sp3C);
    subj3->eyeDist = (f32) NEXTSETTING;
    subj3->eyeNextDist = (f32) NEXTSETTING;
    subj3->unk_0C = (f32) NEXTSETTING;
    subj3->atOffset.x = NEXTPCT;
    subj3->atOffset.y = NEXTPCT;
    subj3->atOffset.z = NEXTPCT;
    subj3->fovTarget = NEXTSETTING;
    subj3->interfaceFlags = NEXTSETTING;
    sp84.r = subj3->eyeNextDist;
    sp84.theta = sp60.rot.y - 0x7FFF;
    sp84.phi = sp60.rot.x;
    sp98 = sp60.pos;
    sp98.y += subj3->eyeNextYOffset;
    Camera_Vec3fVecSphAdd(&sp8C, &sp98, &sp84);
    OLib_Vec3fDiffToVecSphRot90(&sp7C, temp_s1, sp38);

    sCameraInterfaceFlags = subj3->interfaceFlags;
    
    if (((camera->animState == 0) || (camera->animState == 0xA)) || (camera->animState == 0x14)) {
        anim->r = sp7C.r;
        anim->theta = sp7C.theta;
        anim->phi = sp7C.phi;
        anim->animTimer = R_DEFA_CAM_ANIM_TIME;
        camera->dist = subj3->eyeNextDist;
        camera->animState++;
        camera->rUpdateRateInv = 1.0f;
        camera->dist = subj3->eyeNextDist;
    }


    if (anim->animTimer != 0) {
        temp_s1->x = F32_LERPIMP(temp_s1->x, sp98.x, 1.0f / anim->animTimer);
        temp_s1->y = F32_LERPIMP(temp_s1->y, sp98.y, 1.0f / anim->animTimer);
        temp_s1->z = F32_LERPIMP(temp_s1->z, sp98.z, 1.0f / anim->animTimer);

        sp50 = BINANG_LERPIMP(sp84.phi, anim->phi, (1.0f / R_DEFA_CAM_ANIM_TIME));
        sp52 = BINANG_LERPIMP(sp84.theta, anim->theta, (1.0f / R_DEFA_CAM_ANIM_TIME));
        sp7C.r = Camera_LERPCeilF(anim->animTimer * (anim->r - sp84.r) * (1.0f / R_DEFA_CAM_ANIM_TIME) + sp84.r, sp7C.r, PCT(OREG(28)), 1.0f);
        sp7C.theta = Camera_LERPCeilS(sp84.theta + (sp52 * anim->animTimer), sp7C.theta, PCT(OREG(28)), 0xA);
        sp7C.phi = Camera_LERPCeilS(sp84.phi + (sp50 * anim->animTimer), sp7C.phi, PCT(OREG(28)), 0xA);
        Camera_Vec3fVecSphAdd(sp30, temp_s1, &sp7C);
        *sp38 = *sp30;
        anim->animTimer--;
        if (camera->globalCtx->envCtx.skyDisabled == 0) {
            func_80043F34(camera, temp_s1, sp38);
        } else {
            func_80044340(camera, temp_s1, sp38);
        }
    } else {
        sp58 = Math_Sins(-sp60.rot.x);
        temp_f0_3 = Math_Coss(-sp60.rot.x);
        sp98.x = subj3->atOffset.x;
        sp98.y = (subj3->atOffset.y * temp_f0_3) - (subj3->atOffset.z * sp58);
        sp98.z = (subj3->atOffset.y * sp58) + (subj3->atOffset.z * temp_f0_3);
        sp58 = Math_Sins(BINANG_ROT180(sp60.rot.y));
        temp_f0_3 = Math_Coss(BINANG_ROT180(sp60.rot.y));
        subj3->atOffset.x = (sp98.z * sp58) + (sp98.x * temp_f0_3);
        subj3->atOffset.y = sp98.y;
        subj3->atOffset.z = (sp98.z * temp_f0_3) - (subj3->atOffset.x * sp58);
        temp_s1->x = subj3->atOffset.x + sp60.pos.x;
        temp_s1->y = subj3->atOffset.y + sp60.pos.y;
        temp_s1->z = subj3->atOffset.z + sp60.pos.z;
        sp7C.r = subj3->eyeNextDist;
        sp7C.phi = sp60.rot.x;
        sp7C.theta = BINANG_ROT180(sp60.rot.y);
        Camera_Vec3fVecSphAdd(sp30, temp_s1, &sp7C);
        sp7C.r = subj3->eyeDist;
        Camera_Vec3fVecSphAdd(sp38, temp_s1, &sp7C);
    }
    camera->posOffset.x = temp_s1->x - playerPosRot->pos.x;
    camera->posOffset.y = temp_s1->y - playerPosRot->pos.y;
    camera->posOffset.z = temp_s1->z - playerPosRot->pos.z;
    camera->fov = Camera_LERPCeilF(subj3->fovTarget, camera->fov, 0.25f, 1.0f);
    camera->roll = 0;
    camera->atLERPStepScale = 0.0f;
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Subj3.s")
#endif
#undef NON_MATCHING

//#define NON_MATCHING
#ifdef NON_MATCHING
s32 Camera_Subj4(Camera *camera) {
    f32 tx2;
    f32 tx;
    f32 temp_f2;
    u16 spAA;
    Vec3s *spA4;
    Vec3f sp98;
    Vec3f sp8C;
    f32 sp88;
    f32 temp_f16;
    s16 pad2;
    PosRot sp6C;
    VecSph sp64;
    VecSph sp5C;
    s16 temp_a0;
    Vec3f *sp34 = &camera->eyeNext;
    PosRot* playerPosRot = &camera->playerPosRot;
    Subj4Anim *temp_s0 = &camera->params.subj4.anim;
    Vec3f *temp_s2 = &camera->at;
    Vec3f *temp_s3 = &camera->eye;
    CameraModeValue* values;
    Player* player;

    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        camera->params.subj4.interfaceFlags = NEXTSETTING;
    }

    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }

    if (camera->globalCtx->view.unk_124 == 0) {
        camera->globalCtx->view.unk_124 = (camera->thisIdx | 0x50);
        camera->params.subj4.anim.unk_24 = camera->unk_D8;
        return true;
    }

    func_8002EF44(&sp6C, &camera->player->actor);
    
    OLib_Vec3fDiffToVecSphRot90(&sp5C, temp_s2, temp_s3);
    sCameraInterfaceFlags = camera->params.subj4.interfaceFlags;
    if (camera->animState == 0) {
        spA4 = func_8004481C(camera, &spAA);
        Camera_Vec3sToVec3f(&temp_s0->unk_00.a, &spA4[1]);
        Camera_Vec3sToVec3f(&sp98, &spA4[spAA - 2]);

        sp64.r = 10.0f;
        // 0x238C ~ 50 degrees
        sp64.phi = 0x238C;
        sp64.theta = Camera_XZAngle(&sp98, &temp_s0->unk_00.a);
        sp88 = OLib_Vec3fDist(&playerPosRot->pos, &temp_s0->unk_00.a);
        if (OLib_Vec3fDist(&playerPosRot->pos, &sp98) < sp88) {
            temp_s0->unk_00.b.x = temp_s0->unk_00.a.x - sp98.x;
            temp_s0->unk_00.b.y = temp_s0->unk_00.a.y - sp98.y;
            temp_s0->unk_00.b.z = temp_s0->unk_00.a.z - sp98.z;
            temp_s0->unk_00.a = sp98;
        } else {
            temp_s0->unk_00.b.x = sp98.x - temp_s0->unk_00.a.x;
            temp_s0->unk_00.b.y = sp98.y - temp_s0->unk_00.a.y;
            temp_s0->unk_00.b.z = sp98.z - temp_s0->unk_00.a.z;
            sp64.theta = BINANG_ROT180(sp64.theta);
        }
        temp_s0->unk_30 = sp64.theta;
        temp_s0->unk_32 = 0xA;
        temp_s0->unk_2C = 0;
        temp_s0->unk_2E = false;
        temp_s0->unk_28 = 0.0f;
        camera->animState++;
    }

    if (temp_s0->unk_32 != 0) {
        sp64.phi = 0x238C;
        sp64.r = 10.0f;
        sp64.theta = temp_s0->unk_30;
        Camera_Vec3fVecSphAdd(&sp8C, &sp6C.pos, &sp64);
        temp_f2 = temp_s0->unk_32 + 1.0f;
        temp_s2->x = F32_LERPIMPINV(temp_s2->x, sp8C.x, temp_f2);
        temp_s2->y = F32_LERPIMPINV(temp_s2->y, sp8C.y, temp_f2);
        temp_s2->z = F32_LERPIMPINV(temp_s2->z, sp8C.z, temp_f2);
        sp5C.r -= (sp5C.r / temp_f2);
        sp5C.theta = BINANG_LERPIMPINV(sp5C.theta, BINANG_ROT180(sp6C.rot.y), temp_s0->unk_32);
        sp5C.phi = BINANG_LERPIMPINV(sp5C.phi, sp6C.rot.x, temp_s0->unk_32);
        Camera_Vec3fVecSphAdd(sp34, temp_s2, &sp5C);
        *temp_s3 = *sp34;
        temp_s0->unk_32--;
        return false;
    } else if (temp_s0->unk_24 < 0.5f) {
        return false;
    }

    func_8002EF44(&sp6C, &camera->player->actor);
    Math3D_LineVsPos(&temp_s0->unk_00, &sp6C.pos, sp34);
    temp_s2->x = sp34->x + temp_s0->unk_00.b.x;
    temp_s2->y = sp34->y + temp_s0->unk_00.b.y;
    temp_s2->z = sp34->z + temp_s0->unk_00.b.z;
    *temp_s3 = *sp34;
    sp64.theta = temp_s0->unk_30;
    sp64.phi = 0x238C;
    sp64.r = 5.0f;
    Camera_Vec3fVecSphAdd(&sp98, sp34, &sp64);
    temp_s0->unk_2C += 0xBB8;
    temp_f16 = Math_Coss(temp_s0->unk_2C);
    temp_s3->x = F32_LERPIMP(temp_s3->x, sp98.x, fabsf(temp_f16));
    temp_s3->y = F32_LERPIMP(temp_s3->y, sp98.y, fabsf(temp_f16));
    temp_s3->z = F32_LERPIMP(temp_s3->z, sp98.z, fabsf(temp_f16));

    if ((temp_s0->unk_28 < temp_f16) && !temp_s0->unk_2E) {
        player = camera->player;
        temp_s0->unk_2E = true;
        func_800F4010(&player->actor.projectedPos, player->unk_89E + 0x8B0, 4.0f);
    } else if (temp_s0->unk_28 > temp_f16) {
        temp_s0->unk_2E = false;
    }

    temp_s0->unk_28 = temp_f16;
    camera->player->actor.posRot.pos = *sp34;
    camera->player->actor.posRot.pos.y = camera->playerGroundY;
    camera->player->actor.shape.rot.y = sp64.theta;
    
    tx = temp_s0->unk_24 * (5.0f / 12.0f);
    tx2 = temp_f16 * 240.0f;
    temp_a0 = tx * tx2 + temp_s0->unk_30;
    temp_s2->x = temp_s3->x + (Math_Sins(temp_a0) * 10.0f);
    temp_s2->y = temp_s3->y;
    temp_s2->z = temp_s3->z + (Math_Coss(temp_a0) * 10.0f);
    camera->roll = Camera_LERPCeilS(0, camera->roll, 0.5f, 0xA);
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Subj4.s")
#endif
#undef NON_MATCHING

s32 Camera_Subj0(Camera* camera) {
    return Camera_NOP(camera);
}

s32 Camera_Data0(Camera* camera) {
    return Camera_NOP(camera);
}

s32 Camera_Data1(Camera* camera) {
    osSyncPrintf("chau!chau!\n");
    return Camera_Normal1(camera);
}

s32 Camera_Data2(Camera* camera) {
    return Camera_NOP(camera);
}

s32 Camera_Data3(Camera* camera) {
    return Camera_NOP(camera);
}

s32 Camera_Data4(Camera *camera)
{
    s32 pad2[2];
    Data4* data4 = &camera->params.data4;
    VecSph eyeAtOffset;
    VecSph atOffset;
    VecSph eyeNextAtOffset;
    f32 t;
    s16 fov;
    Vec3f *eyeNext = &camera->eyeNext;
    CamPosData *sceneCamData;
    Vec3f lookAt;
    CameraModeValue *values;
    Data4InitParams *initParams = &data4->initParams;
    Vec3f *eye = &camera->eye;
    f32 yOffset;
    Vec3f *at = &camera->at;
    s32 pad;

    yOffset = Player_GetCameraYOffset(camera->player);

    if (RELOAD_PARAMS)
    {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        t = (1.0f + PCT(R_CAM_YINV_OFFSET)) - (PCT(R_CAM_YINV_OFFSET) * (68.0f / yOffset));
        data4->yOffset = (NEXTPCT * yOffset) * t;
        data4->fov = NEXTSETTING;
        data4->interfaceFlags = NEXTSETTING;
        sceneCamData = func_8004476C(camera);
        Camera_Vec3sToVec3f(&initParams->eyePosRot.pos, &sceneCamData->pos);
        initParams->eyePosRot.rot = sceneCamData->rot;
        fov = sceneCamData->fov;
        initParams->fov = fov;
        if (fov != -1)
        {
            data4->fov = initParams->fov < 361 ? initParams->fov : PCT(initParams->fov);
        }

        initParams->jfifId = sceneCamData->jfifId;
        *eye = initParams->eyePosRot.pos;
    }

    if (R_RELOAD_CAM_PARAMS)
    {
        Camera_CopyPREGToModeValues(camera);
    }

    sCameraInterfaceFlags = data4->interfaceFlags;

    if (camera->animState == 0)
    {
        camera->animState++;
        func_80043B60(camera);
    }

    OLib_Vec3fDiffToVecSphRot90(&eyeNextAtOffset, at, eyeNext);
    func_800457A8(camera, &eyeNextAtOffset, data4->yOffset, false);
    OLib_Vec3fDiffToVecSphRot90(&eyeAtOffset, eye, at);
    
    atOffset.r = eyeAtOffset.r;
    atOffset.theta = (initParams->jfifId & 1) ? (DEGF_TO_BINANG(camera->unk_12C) + initParams->eyePosRot.rot.y) : eyeAtOffset.theta;
    atOffset.phi = (initParams->jfifId & 2) ? (DEGF_TO_BINANG(camera->unk_12E) + initParams->eyePosRot.rot.x) : eyeAtOffset.phi;
    
    Camera_Vec3fVecSphAdd(at, eye, &atOffset);
    
    lookAt = camera->playerPosRot.pos;
    lookAt.y += yOffset;
    
    camera->dist = OLib_Vec3fDist(&lookAt, eye);
    camera->roll = 0;
    camera->unk_D8 = 0.0f;
    camera->fov = data4->fov;
    camera->atLERPStepScale = 0;
    return true;
}

/**
 * Hanging off of a ledge
*/
s32 Camera_Unique1(Camera *camera) {
    Unique1* uniq1 = &camera->params.uniq1;
    CameraModeValue* values;
    s32 pad;
    Vec3f playerUnk908;
    s32 pad2;
    VecSph sp8C;
    VecSph unk908PlayerPosOffset;
    VecSph eyeAtOffset;
    VecSph eyeNextAtOffset;
    f32 yOffset;
    PosRot playerPosRot2;
    Vec3f *eye = &camera->eye;
    Vec3f *at = &camera->at;
    Vec3f *eyeNext = &camera->eyeNext;
    f32 pad3;
    f32 yOffsetInverse;
    Unique1Anim* anim = &uniq1->anim;
    s16 phiTarget;

    yOffset = Player_GetCameraYOffset(camera->player);
    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        yOffsetInverse = (1.0f + (R_CAM_YINV_OFFSET * 0.01f)) - ((R_CAM_YINV_OFFSET * 0.01f) * (68.0f / yOffset));
        uniq1->yOffset = NEXTPCT * yOffset * yOffsetInverse;
        uniq1->distClampMin = NEXTPCT * yOffset * yOffsetInverse;
        uniq1->distClampMax = NEXTPCT * yOffset * yOffsetInverse;
        uniq1->phiTarget = DEGF_TO_BINANG(NEXTSETTING);
        uniq1->fovTarget = NEXTSETTING;
        uniq1->atLERPScaleMax = NEXTPCT;
        uniq1->interfaceFlags = NEXTSETTING;
    }

    if (R_RELOAD_CAM_PARAMS != 0) {
        Camera_CopyPREGToModeValues(camera);
    }

    sUpdateCameraDirection = 1;
    
    OLib_Vec3fDiffToVecSphRot90(&eyeAtOffset, at, eye);
    OLib_Vec3fDiffToVecSphRot90(&eyeNextAtOffset, at, eyeNext);

    sCameraInterfaceFlags = uniq1->interfaceFlags;

    if (camera->animState == 0) {
        camera->posOffset.y = camera->posOffset.y - camera->playerPosDelta.y;
        anim->thetaTarget = eyeNextAtOffset.theta;
        anim->unk_00 = 0.0f;
        playerUnk908 = camera->player->unk_908;
        OLib_Vec3fDiffToVecSphRot90(&unk908PlayerPosOffset, &camera->playerPosRot, &playerUnk908);
        anim->timer = R_DEFA_CAM_ANIM_TIME;
        anim->thetaTargetAdj = ABS(BINANG_SUB(unk908PlayerPosOffset.theta, eyeAtOffset.theta)) < 0x3A98 ? 0 :
            ((BINANG_SUB(unk908PlayerPosOffset.theta, eyeAtOffset.theta) / anim->timer) / 4) * 3;
        camera->animState++;
    }

    func_8002EEE4(&playerPosRot2, &camera->player->actor); // unused

    camera->thetaUpdateRateInv = Camera_LERPCeilF(100.0f, camera->thetaUpdateRateInv, OREG(25) * 0.01f, 0.1f);
    camera->phiUpdateRateInv = Camera_LERPCeilF(100.0f, camera->phiUpdateRateInv, OREG(25) * 0.01f, 0.1f);
    camera->xzOffsetUpdateRate = Camera_LERPCeilF(0.005f, camera->xzOffsetUpdateRate, OREG(25) * 0.01f, 0.01f);
    camera->yOffsetUpdateRate = Camera_LERPCeilF(0.01f, camera->yOffsetUpdateRate, OREG(26) * 0.01f, 0.01f);
    camera->fovUpdateRate = Camera_LERPCeilF(OREG(4) * 0.01f, camera->fovUpdateRate, 0.05f, 0.1f);

    func_800457A8(camera, &eyeNextAtOffset, uniq1->yOffset, 1);
    OLib_Vec3fDiffToVecSphRot90(&sp8C, at, eyeNext);

    camera->dist = Camera_LERPClampDist(camera, sp8C.r, uniq1->distClampMin, uniq1->distClampMax);

    // temp is necessary to match.
    phiTarget = uniq1->phiTarget;
    sp8C.phi = Camera_LERPCeilS(phiTarget, eyeNextAtOffset.phi, 1.0f / camera->phiUpdateRateInv, 0xA);
    
    if (sp8C.phi > OREG(5)) {
        sp8C.phi = OREG(5);
    }
    if (sp8C.phi < -OREG(5)) {
        sp8C.phi = -OREG(5);
    }

    if (anim->timer != 0) {
        anim->thetaTarget += anim->thetaTargetAdj;
        anim->timer--;
    }

    sp8C.theta = Camera_LERPFloorS(anim->thetaTarget, eyeNextAtOffset.theta, 0.5f, 0x2710);
    Camera_Vec3fVecSphAdd(eyeNext, at, &sp8C);
    *eye = *eyeNext;
    func_80043F34(camera, at, eye);
    camera->fov = Camera_LERPCeilF(uniq1->fovTarget, camera->fov, camera->fovUpdateRate, 1.0f);
    camera->roll = 0;
    camera->atLERPStepScale = Camera_ClampLERPScale(camera, uniq1->atLERPScaleMax);
    return true;
}

s32 Camera_Unique2(Camera *camera) {
    Unique2* uniq2 = &camera->params.uniq2;
    s32 pad;
    f32 lerpRateFactor;
    Vec3f playerPos;
    VecSph eyeOffset;
    VecSph eyeAtOffset;
    Vec3f *eye = &camera->eye;
    Vec3f *at = &camera->at;
    Vec3f *eyeNext = &camera->eyeNext;
    Unique2_Unk10* unk10 = &uniq2->unk_10;
    CameraModeValue* values;
    f32 yOffset;
    s32 pad2;
    f32 yOffsetInverse;
    
    yOffset = Player_GetCameraYOffset(camera->player);
    
    OLib_Vec3fDiffToVecSphRot90(&eyeAtOffset, at, eye);

    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        yOffsetInverse = ((1.0f + PCT(R_CAM_YINV_OFFSET)) - (PCT(R_CAM_YINV_OFFSET) * (68.0f / yOffset)));
        uniq2->yOffset = (NEXTPCT * yOffset) * yOffsetInverse;
        uniq2->distTarget = NEXTSETTING;
        uniq2->fovTarget = NEXTSETTING;
        uniq2->interfaceFlags = NEXTSETTING;
    }

    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }
    
    sCameraInterfaceFlags = uniq2->interfaceFlags;

    if ((camera->animState == 0) || (unk10->unk_04 != uniq2->interfaceFlags)) {
        unk10->unk_04 = uniq2->interfaceFlags;
    }

    if (camera->animState == 0) {
        camera->animState = 1;
        func_80043B60(camera);
        unk10->unk_00 = 200.0f;
        if (uniq2->interfaceFlags & 0x10) {
            camera->unk_14C &= ~4;
        }
    }

    playerPos = camera->playerPosRot.pos;
    lerpRateFactor = (uniq2->interfaceFlags & 1 ? 1.0f : camera->unk_E0);
    at->x = F32_LERPIMP(at->x, playerPos.x, lerpRateFactor * 0.6f);
    at->y = F32_LERPIMP(at->y, playerPos.y + yOffset + uniq2->yOffset, 0.4f);
    at->z = F32_LERPIMP(at->z, playerPos.z, lerpRateFactor * 0.6f);
    unk10->unk_00 = F32_LERPIMP(unk10->unk_00, 2.0f, 0.05f); // unused.

    if (uniq2->interfaceFlags & 1) {
        OLib_Vec3fDiffToVecSphRot90(&eyeOffset, at, eyeNext);
        eyeOffset.r = uniq2->distTarget;
        Camera_Vec3fVecSphAdd(&playerPos, at, &eyeOffset);
        Camera_LERPCeilVec3f(&playerPos, eye, 0.25f, 0.25f, 0.2f);
    } else if (uniq2->interfaceFlags & 2) {
        if (OLib_Vec3fDistXZ(at, eyeNext) < uniq2->distTarget) {
            OLib_Vec3fDiffToVecSphRot90(&eyeOffset, at, eyeNext);
            eyeOffset.theta = Camera_LERPCeilS(eyeOffset.theta, eyeAtOffset.theta, 0.1f, 0xA);
            eyeOffset.r = uniq2->distTarget;
            eyeOffset.phi = 0;
            Camera_Vec3fVecSphAdd(eye, at, &eyeOffset);
            eye->y = eyeNext->y;
        } else {
            Camera_LERPCeilVec3f(eyeNext, eye, 0.25f, 0.25f, 0.2f);
        }
    }

    func_80043F34(camera, at, eye);
    camera->dist = OLib_Vec3fDist(at, eye);
    camera->roll = 0;
    camera->fov = Camera_LERPCeilF(uniq2->fovTarget, camera->fov, 0.2f, 0.1f);
    camera->atLERPStepScale = Camera_ClampLERPScale(camera, 1.0f);
    return true;
}

s32 Camera_Unique3(Camera *camera) {
    VecSph sp60;
    f32 yOffset;
    Unique3* uniq3 = &camera->params.uniq3;
    CamPosData *temp_v0_2;
    Vec3s sp4C;
    Unique3_Unk18* unk18 = &uniq3->unk_18;
    Unique3_UnkC* unkC = &uniq3->unk_0C;
    Vec3f* at = &camera->at;
    CameraModeValue *values;
    PosRot* cameraPlayerPosRot = &camera->playerPosRot;
    f32 yOffsetInverse;

    yOffset = Player_GetCameraYOffset(camera->player);
    camera->unk_14C &= ~0x10;
    if(RELOAD_PARAMS){
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        yOffsetInverse = (1.0f + PCT(R_CAM_YINV_OFFSET)) - (PCT(R_CAM_YINV_OFFSET) * (68.0f / yOffset));
        unkC->unk_00 = (NEXTPCT * yOffset) * yOffsetInverse;
        unkC->unk_04 = NEXTSETTING;
        unkC->interfaceFlags = NEXTSETTING;
    }
    if (R_RELOAD_CAM_PARAMS != 0) {
        Camera_CopyPREGToModeValues(camera);
    }
    sCameraInterfaceFlags = unkC->interfaceFlags;
    switch(camera->animState){
        case 0:
            func_80043B60(camera);
            camera->unk_14C &= ~(0x8 | 0x4);
            unk18->unk_00 = camera->fov;
            unk18->unk_04 = OLib_Vec3fDist(at, &camera->eye);
            camera->animState++;
        case 1:
            if(uniq3->unk_06-- > 0){
                break;
            }
            temp_v0_2 = func_8004476C(camera);
            Camera_Vec3sToVec3f(&camera->eyeNext, &temp_v0_2->pos);
            camera->eye = camera->eyeNext;
            sp4C = temp_v0_2->rot;
            sp60.r = 100.0f;
            sp60.theta = sp4C.y;
            sp60.phi = -sp4C.x;
            Camera_Vec3fVecSphAdd(at, &camera->eye, &sp60);
            camera->animState++;
            
        case 2:
            if ((unkC->interfaceFlags & 4) != 0) {
                camera->at = cameraPlayerPosRot->pos;
                camera->at.y += yOffset + unkC->unk_00;
            }
            if(uniq3->unk_08-- > 0){
                break;
            }
            camera->animState++;
            
        case 3:
            camera->unk_14C |= (0x400 | 0x10);
            if ((camera->unk_14C & 8) != 0) {
                camera->animState++;
            } else {
                break;
            }
        case 4:
            if ((unkC->interfaceFlags & 2) != 0) {
                camera->unk_14C |= 4;
                camera->unk_14C &= ~8;
                Camera_ChangeSetting(camera, CAM_SET_CIRCLE3, 2);
                break;
            }
            uniq3->unk_0A = 5;
            if(camera->unk_D8 > 0.001f || CHECK_PAD(D_8015BD7C->state.input[0].press, A_BUTTON) ||
                CHECK_PAD(D_8015BD7C->state.input[0].press, B_BUTTON) || CHECK_PAD(D_8015BD7C->state.input[0].press, L_CBUTTONS) ||
                CHECK_PAD(D_8015BD7C->state.input[0].press, D_CBUTTONS) || CHECK_PAD(D_8015BD7C->state.input[0].press, U_CBUTTONS) ||
                CHECK_PAD(D_8015BD7C->state.input[0].press, R_CBUTTONS) || CHECK_PAD(D_8015BD7C->state.input[0].press, R_TRIG) || 
                CHECK_PAD(D_8015BD7C->state.input[0].press, Z_TRIG)){
                camera->animState++;
            } else {
                break;
            }
        case 5:
            camera->fov = Camera_LERPCeilF(uniq3->unk_18.unk_00, camera->fov, 0.4f, 0.1f);
            OLib_Vec3fDiffToVecSphRot90(&sp60, at, &camera->eye);
            sp60.r = Camera_LERPCeilF(100.0f, sp60.r, 0.4f, 0.1f);
            Camera_Vec3fVecSphAdd(&camera->eyeNext, at, &sp60);
            camera->eye = camera->eyeNext;
            if(uniq3->unk_0A-- > 0){
                break;
            }
            camera->animState++;
        default:
            camera->unk_14C |= 4;
            camera->unk_14C &= ~8;
            camera->fov = unkC->unk_04;
            Camera_ChangeSetting(camera, camera->prevSetting, 2);
            camera->atLERPStepScale = 0.0f;
            camera->posOffset.x = camera->at.x - cameraPlayerPosRot->pos.x;
            camera->posOffset.y = camera->at.y - cameraPlayerPosRot->pos.y;
            camera->posOffset.z = camera->at.z - cameraPlayerPosRot->pos.z;
            break;
    }
            
    return true;
}

/**
 * Camera's eye is specified by scene camera data, at point is genered at the intersection
 * of the eye to the player
 */
s32 Camera_Unique0(Camera *camera) {
    f32 yOffset;
    CameraModeValue* values;
    Player *player;
    Vec3f playerPosWithOffset;
    VecSph atPlayerOffset;
    CamPosData *sceneCamData;
    Vec3s sceneCamRot;
    PosRot *playerPosRot = &camera->playerPosRot;
    PersonalizedUnique0* persUniq0 = &camera->params.uniq0;
    Unique0 *uniq0 = &persUniq0->uniq0;
    Unique0Anim* anim = &uniq0->anim;
    Vec3f *eye = &camera->eye;
    s16 fov;

    yOffset = Player_GetCameraYOffset(camera->player);
    player = camera->player;
    
    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        uniq0->interfaceFlags = NEXTSETTING;
    }

    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }
    
    playerPosWithOffset = playerPosRot->pos;
    playerPosWithOffset.y += yOffset;

    sCameraInterfaceFlags = uniq0->interfaceFlags;

    if (camera->animState == 0) {
        func_80043B60(camera);
        camera->unk_14C &= ~4;
        sceneCamData = func_8004476C(camera);
        Camera_Vec3sToVec3f(&anim->sceneCamPosPlayerLine.a, &sceneCamData->pos);

        *eye = camera->eyeNext = anim->sceneCamPosPlayerLine.a;
        sceneCamRot = sceneCamData->rot;
        fov = sceneCamData->fov;
        if (fov != -1) {
            camera->fov = fov < 361 ? fov : PCT(fov);
        }
        anim->animTimer = sceneCamData->jfifId;
        if (anim->animTimer == -1) {
            anim->animTimer = persUniq0->personalizeParams.unk_06 + persUniq0->personalizeParams.unk_08;
        }
        atPlayerOffset.r = OLib_Vec3fDist(&playerPosWithOffset, eye);
        atPlayerOffset.theta = sceneCamRot.y;
        atPlayerOffset.phi = -sceneCamRot.x;
        OLib_VecSphRot90ToVec3f(&anim->sceneCamPosPlayerLine.b, &atPlayerOffset);
        Math3D_LineVsPos(&anim->sceneCamPosPlayerLine, &playerPosRot->pos, &camera->at);
        anim->initalPos = playerPosRot->pos;
        camera->animState++;
    }

    if (player->stateFlags1 & 0x20000000) {
        anim->initalPos = playerPosRot->pos;
    }

    if (uniq0->interfaceFlags & 1) {
        if (anim->animTimer > 0) {
            anim->animTimer--;
            anim->initalPos = playerPosRot->pos;
        } else if ((!(player->stateFlags1 & 0x20000000)) && ((OLib_Vec3fDistXZ(&playerPosRot->pos, &anim->initalPos) >= 10.0f) || CHECK_PAD(D_8015BD7C->state.input[0].press, A_BUTTON) || CHECK_PAD(D_8015BD7C->state.input[0].press, B_BUTTON) || CHECK_PAD(D_8015BD7C->state.input[0].press, L_CBUTTONS) || CHECK_PAD(D_8015BD7C->state.input[0].press, D_CBUTTONS) || CHECK_PAD(D_8015BD7C->state.input[0].press, U_CBUTTONS) || CHECK_PAD(D_8015BD7C->state.input[0].press, R_CBUTTONS) || CHECK_PAD(D_8015BD7C->state.input[0].press, R_TRIG) || CHECK_PAD(D_8015BD7C->state.input[0].press, Z_TRIG))){
            camera->dist = OLib_Vec3fDist(&camera->at, eye);
            camera->posOffset.x = camera->at.x - playerPosRot->pos.x;
            camera->posOffset.y = camera->at.y - playerPosRot->pos.y;
            camera->posOffset.z = camera->at.z - playerPosRot->pos.z;
            camera->atLERPStepScale = 0.0f;
            camera->unk_14C |= 4;
            Camera_ChangeSetting(camera, camera->prevSetting, 2);
        }
    } else {
        if (anim->animTimer > 0) {
            anim->animTimer--;
            if (anim->animTimer == 0) {
                sCameraInterfaceFlags = 0;
            }
        } else {
            anim->initalPos = playerPosRot->pos;
        }

        if ((!(player->stateFlags1 & 0x20000000)) && ((0.001f < camera->unk_D8) || CHECK_PAD(D_8015BD7C->state.input[0].press, A_BUTTON) || CHECK_PAD(D_8015BD7C->state.input[0].press, B_BUTTON) || CHECK_PAD(D_8015BD7C->state.input[0].press, L_CBUTTONS) || CHECK_PAD(D_8015BD7C->state.input[0].press, D_CBUTTONS) || CHECK_PAD(D_8015BD7C->state.input[0].press, U_CBUTTONS) || CHECK_PAD(D_8015BD7C->state.input[0].press, R_CBUTTONS) || CHECK_PAD(D_8015BD7C->state.input[0].press, R_TRIG) || CHECK_PAD(D_8015BD7C->state.input[0].press, Z_TRIG))){
            camera->dist = OLib_Vec3fDist(&camera->at, &camera->eye);
            camera->posOffset.x = camera->at.x - playerPosRot->pos.x;
            camera->posOffset.y = camera->at.y - playerPosRot->pos.y;
            camera->posOffset.z = camera->at.z - playerPosRot->pos.z;
            camera->atLERPStepScale = 0.0f;
            Camera_ChangeSetting(camera, camera->prevSetting, 2);
            camera->unk_14C |= 4;
        }
    }
    return true;
}

s32 Camera_Unique4(Camera* camera) {
    return Camera_NOP(camera);
}

s32 Camera_Unique5(Camera* camera) {
    return Camera_NOP(camera);
}

/**
 * This function doesn't really update much.  
 * Eye/at positions are updated via Camera_SetParam
*/
s32 Camera_Unique6(Camera* camera) {
    Unique6* uniq6 = &camera->params.uniq6;
    CameraModeValue* values;
    Vec3f sp2C;
    PosRot* playerPosRot = &camera->playerPosRot;
    f32 offset;

    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        uniq6->interfaceFlags = NEXTSETTING;
    }
    
    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }

    sCameraInterfaceFlags = uniq6->interfaceFlags;

    if (camera->animState == 0) {
        camera->animState++;
        func_80043ABC(camera);
    }

    if (camera->player != NULL) {
        offset = Player_GetCameraYOffset(camera->player);
        sp2C = playerPosRot->pos;
        sp2C.y += offset;
        camera->dist = OLib_Vec3fDist(&sp2C, &camera->eye);
        camera->posOffset.x = camera->at.x - playerPosRot->pos.x;
        camera->posOffset.y = camera->at.y - playerPosRot->pos.y;
        camera->posOffset.z = camera->at.z - playerPosRot->pos.z;
    } else {
        camera->dist = OLib_Vec3fDist(&camera->at, &camera->eye);
    }

    if (uniq6->interfaceFlags & 1 && camera->unk_160 > 0) {
        camera->unk_160--;
    }

    return true;
}

/**
 * Camera is at a fixed point specified by the scene's camera data,
 * camera rotates to follow player
*/
s32 Camera_Unique7(Camera *camera) {
    s32 pad;
    Unique7* uniq7 = &camera->params.uniq7;
    CameraModeValue* values;
    VecSph playerPosEyeOffset;
    s16 fov;
    CamPosData *sceneCamData;
    Vec3s sceneCamRot;
    Vec3f *at = &camera->at;
    PosRot *playerPosRot = &camera->playerPosRot;
    Vec3f *eye = &camera->eye;
    Vec3f *eyeNext = &camera->eyeNext;
    Unique7_Unk8* unk08 = &uniq7->unk_08;

    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        uniq7->fov = NEXTSETTING;
        uniq7->interfaceFlags = (s16) NEXTSETTING;
    }
    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }

    sceneCamData = func_8004476C(camera);
    CPY_SCENECAM(eyeNext, sceneCamRot);

    OLib_Vec3fDiffToVecSphRot90(&playerPosEyeOffset, eye, &playerPosRot->pos);

    // fov actually goes unused since it's hard set later on.
    fov = sceneCamData->fov;
    if (fov == -1) {
        fov = uniq7->fov * 100.0f;
    }

    if (fov < 361) {
        fov *= 100;
    }

    sCameraInterfaceFlags = uniq7->interfaceFlags;
    
    if (camera->animState == 0) {
        camera->animState++;
        camera->fov = PCT(fov);
        camera->atLERPStepScale = 0.0f;
        camera->roll = 0;
        unk08->unk_00.x = playerPosEyeOffset.theta;
    }

    camera->fov = 60.0f;

    // 0x7D0 ~ 10.98 degres.
    unk08->unk_00.x = Camera_LERPFloorS(playerPosEyeOffset.theta, unk08->unk_00.x, 0.4f, 0x7D0);
    playerPosEyeOffset.phi = Math_Coss(playerPosEyeOffset.theta - sceneCamData->rot.y) * -sceneCamData->rot.x;
    Camera_Vec3fVecSphAdd(at, eye, &playerPosEyeOffset);
    camera->unk_14C |= 0x400;
    return true;
}

s32 Camera_Unique8(Camera* camera) {
    return Camera_NOP(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Unique9.s")

void Camera_DebugPrintSplineArray(char* name, s16 length, CutsceneCameraPoint cameraPoints[]) {
    s32 i;

    osSyncPrintf("static SplinedatZ  %s[] = {\n", name);
    for (i = 0; i < length; i++) {
        osSyncPrintf("    /* key frame %2d */ {\n", i);
        osSyncPrintf("    /*     code     */ %d,\n", cameraPoints[i].continueFlag);
        osSyncPrintf("    /*     z        */ %d,\n", cameraPoints[i].cameraRoll);
        osSyncPrintf("    /*     T        */ %d,\n", cameraPoints[i].nextPointFrame);
        osSyncPrintf("    /*     zoom     */ %f,\n", cameraPoints[i].viewAngle);
        osSyncPrintf("    /*     pos      */ { %d, %d, %d }\n", cameraPoints[i].pos.x, cameraPoints[i].pos.y,
                     cameraPoints[i].pos.z);
        osSyncPrintf("    },\n");
    }
    osSyncPrintf("};\n\n");
}

/**
 * Copies `src` to `dst`, used in Camera_Demo1
 * Name from AC map: Camera2_SetPos_Demo
*/
void Camera_Vec3fCopy(Vec3f* src, Vec3f* dst) {
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

/**
 * Calculates new position from `at` to `pos`, outputs to `dst
 * Name from AC map: Camera2_CalcPos_Demo
*/
void Camera_RotateAroundPoint(PosRot* at, Vec3f* pos, Vec3f* dst) {
    VecSph posSph;
    Vec3f posCopy;

    Camera_Vec3fCopy(pos, &posCopy);
    OLib_Vec3fToVecSphRot90(&posSph, &posCopy);
    posSph.theta += at->rot.y;
    Camera_Vec3fVecSphAdd(dst, &at->pos, &posSph);
}

/**
 * Camera follows points specified at camera + 0x124 and camera + 0x128
 * until all keyFrames have been exhausted.
*/
s32 Camera_Demo1(Camera* camera) {
    s32 pad;
    Demo1* demo1 = &camera->params.demo1;
    CameraModeValue* values;
    Vec3f* at = &camera->at;
    CutsceneCameraPoint* csAtPoints = camera->atPoints;
    CutsceneCameraPoint* csEyePoints = camera->eyePoints;
    Vec3f* eye = &camera->eye;
    PosRot curPlayerPosRot;
    Vec3f csEyeUpdate;
    Vec3f csAtUpdate;
    f32 newRoll;
    Vec3f* eyeNext = &camera->eyeNext;
    f32* cameraFOV = &camera->fov;
    s16* relativeToPlayer = &camera->unk_12C;
    Demo1Anim* anim = &demo1->anim;

    
    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        demo1->interfaceFlags = NEXTSETTING;
    }

    sCameraInterfaceFlags = demo1->interfaceFlags;

    switch (camera->animState) {
        case 0:
            // initalize camera state
            anim->keyframe = 0;
            anim->curFrame = 0.0f;
            camera->animState++;
            // absolute / relative
            osSyncPrintf(VT_SGR("1") "%06u:" VT_RST " camera: spline demo: start %s \n",
                camera->globalCtx->state.frames, 
                *relativeToPlayer == 0 ? "絶対" : "相対");

            if (PREG(93)) {
                Camera_DebugPrintSplineArray("CENTER", 5, csAtPoints);
                Camera_DebugPrintSplineArray("   EYE", 5, csEyePoints);
            }
        case 1:
            // follow CutsceneCameraPoints.  function returns 1 if at the end.
            if (func_800BB2B4(&csEyeUpdate, &newRoll, cameraFOV, csEyePoints, &anim->keyframe, &anim->curFrame) ||
                func_800BB2B4(&csAtUpdate, &newRoll, cameraFOV, csAtPoints, &anim->keyframe, &anim->curFrame)) {
                camera->animState++;
            }
            if (*relativeToPlayer) {
                // if the camera is set to be relative to the player, move the interpolated points
                // relative to the player's position
                if (camera->player != NULL && camera->player->actor.update != NULL) {
                    func_8002EF14(&curPlayerPosRot, &camera->player->actor);
                    Camera_RotateAroundPoint(&curPlayerPosRot, &csEyeUpdate, eyeNext);
                    Camera_RotateAroundPoint(&curPlayerPosRot, &csAtUpdate, at);
                } else {
                    osSyncPrintf(VT_COL(RED, WHITE) "camera: spline demo: owner dead\n" VT_RST);
                }
            } else {
                // simply copy the interpolated values to the eye and at
                Camera_Vec3fCopy(&csEyeUpdate, eyeNext);
                Camera_Vec3fCopy(&csAtUpdate, at);
            }
            *eye = *eyeNext;
            camera->roll = newRoll * 256.0f;
            camera->dist = OLib_Vec3fDist(at, eye);
            break;
    }
    return true;
}

s32 Camera_Demo2(Camera* camera) {
    return Camera_NOP(camera);
}

//#define NON_MATCHING
#ifdef NON_MATCHING
/**
 * Opening large chests. 
 * The camera position will be at a fixed point, and rotate around at different intervals.
 * The direction, and initial position is dependent on when the camera was started.
*/
s32 Camera_Demo3(Camera *camera) {
    Demo3* demo3 = &camera->params.demo3;
    s32 pad;
    s16 angle;
    CameraModeValue* values;
    VecSph eyeAtOffset;
    VecSph eyeOffset;
    VecSph atOffset;
    Vec3f sp74;
    Vec3f sp68;
    Vec3f sp5C;
    f32 temp_f0;
    u8 skipUpdateEye = false;
    f32 yOffset = Player_GetCameraYOffset(camera->player);
    PosRot *camPlayerPosRot = &camera->playerPosRot;
    Demo3Anim* anim = &demo3->anim;
    Vec3f* eye = &camera->eye;
    Vec3f* at = &camera->at;
    s16* flags = &camera->unk_14C;

    camera->unk_14C &= ~0x10;

    if(RELOAD_PARAMS){
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        demo3->fov = NEXTSETTING;
        demo3->unk_04 = NEXTSETTING; // unused.
        demo3->interfaceFlags = NEXTSETTING;
    }
    
    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }

    OLib_Vec3fDiffToVecSphRot90(&eyeAtOffset, at, eye);

    sCameraInterfaceFlags = demo3->interfaceFlags;
    
    switch(camera->animState){
        case 0:
            camera->unk_14C &= ~(0x8 | 0x4);
            func_80043B60(camera);
            camera->fov = demo3->fov;
            camera->roll = anim->animFrame = 0;
            anim->initialAt = camPlayerPosRot->pos;
            if (-32000.0f != camera->playerGroundY) {
                anim->initialAt.y = camera->playerGroundY;
            }
            angle = camPlayerPosRot->rot.y;
            sp68.x = (Math_Sins(angle) * 40.0f) + anim->initialAt.x;
            sp68.y = anim->initialAt.y + 40.0f;
            sp68.z = (Math_Coss(angle) * 40.0f) + anim->initialAt.z;
            if (camera->globalCtx->state.frames & 1) {
                angle -= 0x3FFF;
                anim->thetaDir = 1;
            } else {
                angle += 0x3FFF;
                anim->thetaDir = -1;
            }
            sp74.x = (Math_Sins(angle) * D_8011D658[1].r) + sp68.x;
            sp74.y = anim->initialAt.y + 5.0f;
            sp74.z = (Math_Coss(angle) * D_8011D658[1].r) + sp68.z;
            if (func_80043F34(camera, &sp68, &sp74)) {
                anim->thetaDir = -anim->thetaDir;
            }
            OLib_Vec3fToVecSphRot90(&atOffset, &D_8011D678[0]);
            atOffset.theta += camPlayerPosRot->rot.y;
            Camera_Vec3fVecSphAdd(at, &anim->initialAt, &atOffset);
            eyeOffset.r = D_8011D658[0].r;
            eyeOffset.phi = D_8011D658[0].phi;
            eyeOffset.theta = (D_8011D658[0].theta * anim->thetaDir) + camPlayerPosRot->rot.y;
            anim->unk_0C = 1.0f;
            break;
        case 1:
            // todo: what is 0.006849315017461777?
            temp_f0 = (anim->animFrame - 2) * 0.006849315017461777f;

            sp5C.x = F32_LERPIMP(D_8011D678[0].x, D_8011D678[1].x, temp_f0);
            sp5C.y = F32_LERPIMP(D_8011D678[0].y, D_8011D678[1].y, temp_f0);
            sp5C.z = F32_LERPIMP(D_8011D678[0].z, D_8011D678[1].z, temp_f0);
            
            OLib_Vec3fToVecSphRot90(&atOffset, &sp5C);
            atOffset.theta = (atOffset.theta * anim->thetaDir) + camPlayerPosRot->rot.y;
            Camera_Vec3fVecSphAdd(at, &anim->initialAt, &atOffset);

            atOffset.r = F32_LERPIMP(D_8011D658[0].r, D_8011D658[1].r, temp_f0);
            atOffset.phi = BINANG_LERPIMP(D_8011D658[0].phi, D_8011D658[1].phi, temp_f0);
            atOffset.theta = BINANG_LERPIMP(D_8011D658[0].theta, D_8011D658[1].theta, temp_f0);
            
            eyeOffset.r = atOffset.r;
            eyeOffset.phi = atOffset.phi;
            eyeOffset.theta = (atOffset.theta * anim->thetaDir) + camPlayerPosRot->rot.y;
            
            // todo: what is 0.002739726100116969?
            anim->unk_0C -= 0.002739726100116968f;
            break;
        case 2:
            temp_f0 = (anim->animFrame - 0x94) * 0.1f;
            
            sp5C.x = F32_LERPIMP(D_8011D678[1].x, D_8011D678[2].x, temp_f0);
            sp5C.y = F32_LERPIMP((D_8011D678[1].y - yOffset), D_8011D678[2].y, temp_f0);
            sp5C.y += yOffset;
            sp5C.z = F32_LERPIMP(D_8011D678[1].z, D_8011D678[2].z, temp_f0);

            OLib_Vec3fToVecSphRot90(&atOffset, &sp5C);
            atOffset.theta = (atOffset.theta * anim->thetaDir) + camPlayerPosRot->rot.y;
            Camera_Vec3fVecSphAdd(at, &anim->initialAt, &atOffset);

            atOffset.r = F32_LERPIMP(D_8011D658[1].r, D_8011D658[2].r, temp_f0);
            atOffset.phi = BINANG_LERPIMP(D_8011D658[1].phi, D_8011D658[2].phi, temp_f0);
            atOffset.theta = BINANG_LERPIMP(D_8011D658[1].theta, D_8011D658[2].theta, temp_f0);

            eyeOffset.r = atOffset.r;
            eyeOffset.phi = atOffset.phi;
            eyeOffset.theta = (atOffset.theta * anim->thetaDir) + camPlayerPosRot->rot.y;
            anim->unk_0C -= 0.04f;
            break;
        case 3:
            temp_f0 = (anim->animFrame - 0x9F) * (1.0f / 9.0f);

            sp5C.x = F32_LERPIMP(D_8011D678[2].x, D_8011D678[3].x, temp_f0);
            sp5C.y = F32_LERPIMP(D_8011D678[2].y, D_8011D678[3].y, temp_f0);
            sp5C.y += yOffset;
            sp5C.z = F32_LERPIMP(D_8011D678[2].z, D_8011D678[3].z, temp_f0);
            
            OLib_Vec3fToVecSphRot90(&atOffset, &sp5C);
            atOffset.theta = (atOffset.theta * anim->thetaDir) + camPlayerPosRot->rot.y;
            Camera_Vec3fVecSphAdd(at, &anim->initialAt, &atOffset);

            atOffset.r = F32_LERPIMP(D_8011D658[2].r, D_8011D658[3].r, temp_f0);
            atOffset.phi = BINANG_LERPIMP(D_8011D658[2].phi, D_8011D658[3].phi, temp_f0);
            atOffset.theta = BINANG_LERPIMP(D_8011D658[2].theta, D_8011D658[3].theta, temp_f0);
            
            eyeOffset.r = atOffset.r;
            eyeOffset.phi = atOffset.phi;
            eyeOffset.theta = (atOffset.theta * anim->thetaDir) + camPlayerPosRot->rot.y;
            anim->unk_0C += (4.0f / 45.0f);
            break;
        case 30:
            camera->unk_14C |= 0x400;
            if (camera->unk_14C & 8) {
                camera->animState = 4;
            }
        case 10:
        case 20:
            skipUpdateEye = true;
            break;
        case 4:
            eyeOffset.r = 80.0f;
            eyeOffset.phi = 0;
            eyeOffset.theta = eyeAtOffset.theta;
            anim->unk_0C = 0.1f;
            sCameraInterfaceFlags = 0x3400;

            if ((anim->animFrame < 0 || camera->unk_D8 < 0.001f || CHECK_PAD(D_8015BD7C->state.input[0].press, A_BUTTON) ||
                        CHECK_PAD(D_8015BD7C->state.input[0].press, B_BUTTON) || CHECK_PAD(D_8015BD7C->state.input[0].press, L_CBUTTONS) ||
                        CHECK_PAD(D_8015BD7C->state.input[0].press, D_CBUTTONS) || CHECK_PAD(D_8015BD7C->state.input[0].press, U_CBUTTONS) ||
                        CHECK_PAD(D_8015BD7C->state.input[0].press, R_CBUTTONS) || CHECK_PAD(D_8015BD7C->state.input[0].press, R_TRIG) || 
                        CHECK_PAD(D_8015BD7C->state.input[0].press, Z_TRIG)) && camera->unk_14C & 8) {
            } else {
                break;
            }


        default:
            pad = camera->prevCamDataIdx;
            camera->unk_14C = camera->unk_14C | 0x10 | 0x4;
            camera->unk_14C = camera->unk_14C & ~8;
            if (pad < 0) {
                Camera_ChangeSetting(camera, camera->prevSetting, 2);
            } else {
                Camera_ChangeDataIdx(camera, pad);
                camera->prevCamDataIdx = -1;
            }
            sCameraInterfaceFlags = 0;
            skipUpdateEye = 1;
            break;
    }

    anim->animFrame++;

    if(anim->animFrame == 1){
        camera->animState = 0xA;
    } else if(anim->animFrame == 2){
        camera->animState = 0x1;
    } else if(anim->animFrame == 0x94){
        camera->animState = 2;
    } else if(anim->animFrame == 0x9E){
        camera->animState = 0x14;
    } else if(anim->animFrame == 0x9F){
        camera->animState = 3;
    } else if(anim->animFrame == 0xA8){
        camera->animState = 0x1E;
    } else if(anim->animFrame == 0xE4){
        camera->animState = 4;
    }

    if (!skipUpdateEye) {
        eyeOffset.r = Camera_LERPCeilF(eyeOffset.r, eyeAtOffset.r, anim->unk_0C, 2.0f);
        eyeOffset.phi = Camera_LERPCeilS(eyeOffset.phi, eyeAtOffset.phi, anim->unk_0C, 0xA);
        eyeOffset.theta = Camera_LERPCeilS(eyeOffset.theta, eyeAtOffset.theta, anim->unk_0C, 0xA);
        Camera_Vec3fVecSphAdd(&camera->eyeNext, at, &eyeOffset);
        *eye = camera->eyeNext;
    }

    camera->dist = OLib_Vec3fDist(at, eye);
    camera->atLERPStepScale = 0.1f;
    camera->posOffset.x = camera->at.x - camPlayerPosRot->pos.x;
    camera->posOffset.y = camera->at.y - camPlayerPosRot->pos.y;
    camera->posOffset.z = camera->at.z - camPlayerPosRot->pos.z;
    return true;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Demo3.s")
#endif
#undef NON_MATCHING

s32 Camera_Demo4(Camera* camera) {
    return Camera_NOP(camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Demo5.s")

/**
 * Used in Forest Temple when poes are defeated, follows the flames to the torches.
 * Fixed position, rotates to follow the target
*/
s32 Camera_Demo6(Camera *camera) {
    Camera *cam0;
    Demo6Anim* anim = &camera->params.demo6.anim;
    Vec3f* eyeNext = &camera->eyeNext;
    CameraModeValue *values;
    VecSph eyeOffset;
    Actor* camFocus;
    PosRot focusPosRot;
    s16 stateTimers[4];
    Vec3f* at = &camera->at;

    cam0 = Gameplay_GetCamera(camera->globalCtx, 0);
    camFocus = camera->target;
    stateTimers[1] = 0x37;
    stateTimers[2] = 0x46;
    stateTimers[3] = 0x5A;

    if(RELOAD_PARAMS){
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        camera->params.demo6.interfaceFlags = NEXTSETTING;
    }

    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }

    switch(camera->animState){
        case 0:
            // initalizes the camera state.
            anim->animTimer = 0;
            camera->fov = 60.0f;
            func_8002EF14(&focusPosRot, camFocus);
            camera->at.x = focusPosRot.pos.x;
            camera->at.y = focusPosRot.pos.y + 20.0f;
            camera->at.z = focusPosRot.pos.z;
            eyeOffset.r = 200.0f;
            // 0x7D0 ~10.99 degrees
            eyeOffset.theta = Camera_XZAngle(&focusPosRot.pos, &cam0->playerPosRot.pos) + 0x7D0;
            // -0x3E8 ~5.49 degrees
            eyeOffset.phi = -0x3E8;
            Camera_Vec3fVecSphAdd(eyeNext, at, &eyeOffset);
            camera->eye = *eyeNext;
            camera->animState++;
        case 1:
            if (stateTimers[camera->animState] < anim->animTimer) {
                func_8002DF54(camera->globalCtx, &camera->player->actor, 8);
                func_8002EF14(&focusPosRot, camFocus);
                anim->atTarget.x = focusPosRot.pos.x;
                anim->atTarget.y = focusPosRot.pos.y - 20.0f;
                anim->atTarget.z = focusPosRot.pos.z;
                camera->animState++;
            } else {
                break;
            }
        case 2:
            Camera_LERPCeilVec3f(&anim->atTarget, at, 0.1f, 0.1f, 8.0f);
            if (stateTimers[camera->animState] < anim->animTimer) {
                camera->animState++;
            } else {
                break;
            }
        case 3:
            camera->fov = Camera_LERPCeilF(50.0f, camera->fov, 0.2f, 0.01f);
            if (stateTimers[camera->animState] < anim->animTimer) {
                camera->unk_160 = 0;
                return true;
            }
            break;
    }
    
    anim->animTimer++;
    // useless copy
    func_8002EF14(&focusPosRot, camFocus);

    return true;
}

void Camera_Demo7(Camera* camera) {
    if (camera->animState == 0) {
        camera->unk_14C &= ~4;
        camera->unk_14C |= 0x1000;
        camera->animState++;
    }
}

s32 Camera_Demo8(Camera* camera) {
    return Camera_NOP(camera);
}

/**
 * Camera follows points specified by demo9.atPoints and demo9.eyePoints, allows finer control
 * over the final eye and at points than Camera_Demo1, by allowing the interpolated at and eye points
 * to be relative to the main camera's player, the current camera's player, or the main camera's target
*/
s32 Camera_Demo9(Camera *camera) {
    s32 pad;
    s32 finishAction;
    s16 onePointParam;
    Demo9OnePointDemo* demo9OnePoint = &camera->params.demo9;
    Vec3f csEyeUpdate;
    Vec3f csAtUpdate;
    Vec3f newEye;
    Vec3f newAt;
    f32 newRoll;
    CameraModeValue* values;
    Camera *cam0;
    Vec3f* eye = &camera->eye;
    PosRot *cam0PlayerPosRot;
    PosRot focusPosRot;
    s32 pad3;
    Vec3f* eyeNext = &camera->eyeNext;
    Demo9* demo9 = &demo9OnePoint->demo9;
    Vec3f* at = &camera->at;
    f32* camFOV = &camera->fov;
    Demo9Anim* anim = &demo9->anim;

    cam0 = Gameplay_GetCamera(camera->globalCtx, 0);
    cam0PlayerPosRot = &cam0->playerPosRot;
    if(RELOAD_PARAMS){
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        demo9->interfaceFlags = NEXTSETTING;
    }

    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }
    
    sCameraInterfaceFlags = demo9->interfaceFlags;
    
    switch(camera->animState){
        case 0:
            // initalize the camera state
            anim->keyframe = 0;
            anim->finishAction = 0;
            anim->curFrame = 0.0f;
            camera->animState++;
            anim->doLERPAt = false;
            finishAction = demo9OnePoint->onePointDemo.actionParameters & 0xF000;
            if (finishAction != 0) {
                anim->finishAction = finishAction;

                // Clear finish parameters
                demo9OnePoint->onePointDemo.actionParameters &= 0xFFF;
            }
            anim->animTimer = demo9OnePoint->onePointDemo.initTimer;
        case 1:
            // Run the camera state
            if (anim->animTimer > 0) {
                // if the animation timer is still running, run the demo logic
                // if it is not, then the case will fallthrough to the finish logic.

                // Run the at and eye cs interpoloation functions, if either of them return 1 (that no more points exist)
                // change the animation state to 2 (standby)
                if (func_800BB2B4(&csEyeUpdate, &newRoll, camFOV, demo9OnePoint->onePointDemo.eyePoints, &anim->keyframe, &anim->curFrame) != 0 ||
                    func_800BB2B4(&csAtUpdate, &newRoll, camFOV, demo9OnePoint->onePointDemo.atPoints, &anim->keyframe, &anim->curFrame) != 0)
                {
                    camera->animState = 2;
                }

                if (demo9OnePoint->onePointDemo.actionParameters == 1) {
                    // rotate around cam0's player
                    Camera_RotateAroundPoint(cam0PlayerPosRot, &csEyeUpdate, &newEye);
                    Camera_RotateAroundPoint(cam0PlayerPosRot, &csAtUpdate, &newAt);
                } else if (demo9OnePoint->onePointDemo.actionParameters == 4) {
                    // rotate around the current camera's player
                    func_8002EF14(&focusPosRot, &camera->player->actor);
                    Camera_RotateAroundPoint(&focusPosRot, &csEyeUpdate, &newEye);
                    Camera_RotateAroundPoint(&focusPosRot, &csAtUpdate, &newAt);
                } else if (demo9OnePoint->onePointDemo.actionParameters == 8) {
                    // rotate around the current camera's target
                    if (camera->target != NULL && camera->target->update != NULL) {
                        func_8002EF14(&focusPosRot, camera->target);
                        Camera_RotateAroundPoint(&focusPosRot, &csEyeUpdate, &newEye);
                        Camera_RotateAroundPoint(&focusPosRot, &csAtUpdate, &newAt);
                    } else {
                        camera->target = NULL;
                        newEye = *eye;
                        newAt = *at;
                    }
                } else {
                    // simple copy
                    Camera_Vec3fCopy(&csEyeUpdate, &newEye);
                    Camera_Vec3fCopy(&csAtUpdate, &newAt);
                }

                *eyeNext = newEye;
                *eye = *eyeNext;
                if (anim->doLERPAt) {
                    Camera_LERPCeilVec3f(&newAt, at, 0.5f, 0.5f, 0.1f);
                } else {
                    *at = newAt;
                    anim->doLERPAt = true;
                }
                camera->roll = newRoll * 256.0f;
                anim->animTimer--;
                break;
            }
        case 3:
            // the cs is finished, decide the next action
            camera->unk_160 = 0;
            if (anim->finishAction != 0) {
                if (anim->finishAction != 0x1000) {
                    if (anim->finishAction == 0x2000) {
                        // finish action = 0x2000, run OnePointDemo 0x3FC (Dramatic Return to Link)
                        onePointParam = demo9OnePoint->onePointDemo.initTimer < 0x32 ? 5 : demo9OnePoint->onePointDemo.initTimer / 5;
                        func_800800F8(camera->globalCtx, 0x3FC, onePointParam, NULL, camera->parentCamIdx);
                    }
                } else {
                    // finish action = 0x1000, copy the current camera's values to the
                    // default camera.
                    Camera_Copy(cam0, camera);
                }
            }
            break;
        case 2:
            // standby while the timer finishes, change the animState to finish when
            // the timer runs out.
            anim->animTimer--;
            if (anim->animTimer < 0) {
                camera->animState++;
            }
            break;
        case 4:
            // do nothing.
            break;

    }

    return true;
}

s32 Camera_Demo0(Camera* camera) {
    return Camera_NOP(camera);
}

s32 Camera_Special0(Camera* camera) {
    CameraModeValue* values;
    PosRot* playerPosRot = &camera->playerPosRot;
    Special0* spec0 = &camera->params.spec0;

    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        spec0->lerpAtScale = NEXTPCT;
        spec0->interfaceFlags = NEXTSETTING;
    }

    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }

    sCameraInterfaceFlags = spec0->interfaceFlags;

    if (camera->animState == 0) {
        camera->animState++;
    }

    if ((camera->target == NULL) || (camera->target->update == NULL)) {
        if (camera->target == NULL) {
            osSyncPrintf(VT_COL(YELLOW, BLACK) "camera: warning: circle: target is not valid, stop!\n" VT_RST);
        }
        camera->target = NULL;
        return true;
    }

    func_8002EEE4(&camera->targetPosRot, camera->target);
    Camera_LERPCeilVec3f(&camera->targetPosRot.pos, &camera->at, spec0->lerpAtScale, spec0->lerpAtScale, 0.1f);

    camera->posOffset.x = camera->at.x - playerPosRot->pos.x;
    camera->posOffset.y = camera->at.y - playerPosRot->pos.y;
    camera->posOffset.z = camera->at.z - playerPosRot->pos.z;

    camera->dist = OLib_Vec3fDist(&camera->at, &camera->eye);
    camera->unk_D8 = 0.0f;
    if (camera->unk_160 > 0) {
        camera->unk_160--;
    }
    return true;
}

s32 Camera_Special1(Camera* camera) {
    return Camera_NOP(camera);
}

s32 Camera_Special2(Camera* camera) {
    return Camera_Unique2(camera);
}

s32 Camera_Special3(Camera* camera) {
    return Camera_NOP(camera);
}

s32 Camera_Special4(Camera* camera) {
    PosRot curTargetPosRot;
    s16 sp3A;
    s16* unk_160 = &camera->unk_160;
    Special4* spec4 = &camera->params.spec4;

    if (camera->animState == 0) {
        sCameraInterfaceFlags = 0x3200;
        camera->fov = 40.0f;
        camera->animState++;
        spec4->unk_00 = camera->unk_160;
    }

    camera->fov = Camera_LERPCeilF(80.0f, camera->fov, 1.0f / *unk_160, 0.1f);
    if ((spec4->unk_00 - *unk_160) < 0xF) {
        (*unk_160)--;
        return false;
    } else {
        camera->roll = -0x1F4;
        func_8002EF14(&curTargetPosRot, camera->target);
        
        camera->at = curTargetPosRot.pos;
        camera->at.y -= 150.0f;

        // 0x3E8 ~ 5.49 degrees
        sp3A = BINANG_ROT180(curTargetPosRot.rot.y) + 0x3E8;
        camera->eye.x = camera->eyeNext.x = (Math_Sins(sp3A) * 780.0f) + camera->at.x;
        camera->eyeNext.y = camera->at.y;
        camera->eye.z = camera->eyeNext.z = (Math_Coss(sp3A) * 780.0f) + camera->at.z;
        camera->eye.y = curTargetPosRot.pos.y;
        camera->eye.y = func_80044510(camera, &camera->eye) + 20.0f;
        (*unk_160)--;
        return true;
    }
}

/**
 * Flying with hookshot
*/
s32 Camera_Special5(Camera *camera) {
    f32 yOffsetInverse;
    Special5* spec5 = &camera->params.spec5;
    CameraModeValue *values;
    PosRot spA8;
    s16 pad;
    s16 spA4;
    struct_80043D18 sp7C;
    VecSph sp74;
    VecSph sp6C;
    VecSph sp64;
    VecSph sp5C;
    Vec3f *eye = &camera->eye;
    Vec3f *at = &camera->at;
    Vec3f *eyeNext = &camera->eyeNext;
    f32 yOffset;
    PosRot *playerPosRot = &camera->playerPosRot;
    Special5Anim* anim = &spec5->anim;
    f32 temp_f0_2;
    
    yOffset = Player_GetCameraYOffset(camera->player);
    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        yOffsetInverse = (1.0f + PCT(R_CAM_YINV_OFFSET)) - (PCT(R_CAM_YINV_OFFSET) * (68.0f / yOffset));
        spec5->yOffset = (NEXTPCT * yOffset) * yOffsetInverse;
        spec5->eyeDist = NEXTSETTING;
        spec5->minDistForRot = NEXTSETTING;
        spec5->timerInit = NEXTSETTING;
        spec5->phi = DEGF_TO_BINANG(NEXTSETTING);
        spec5->fovTarget = NEXTSETTING;
        spec5->atMaxLERPScale = NEXTPCT;
        spec5->interfaceFlags = NEXTSETTING;
    }

    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }

    OLib_Vec3fDiffToVecSphRot90(&sp64, at, eye);
    OLib_Vec3fDiffToVecSphRot90(&sp5C, at, eyeNext);
    func_8002EF14(&spA8, camera->target);

    sCameraInterfaceFlags = spec5->interfaceFlags;

    if (camera->animState == 0) {
        camera->animState++;
        anim->animTimer = spec5->timerInit;
    }

    if (anim->animTimer > 0) {
        anim->animTimer--;
    } else if (anim->animTimer == 0) {
        if (camera->target == NULL || camera->target->update == NULL) {
            camera->target = NULL;
            return true;
        }

        anim->animTimer--;
        if (spec5->minDistForRot < OLib_Vec3fDist(&spA8.pos, &playerPosRot->pos)) {
            sp6C.theta = playerPosRot->rot.y;
            sp6C.phi = -playerPosRot->rot.x;
            sp6C.r = 20.0f;
            Camera_Vec3fVecSphAdd(&sp7C.unk_00, &spA8.pos, &sp6C);
            func_80043D18(camera, at, &sp7C);
            OLib_Vec3fToVecSphRot90(&sp6C, &sp7C.unk_0C);
            spA4 = BINANG_SUB(playerPosRot->rot.y, sp6C.theta);
            sp74.r = spec5->eyeDist;
            temp_f0_2 = Math_Rand_ZeroOne();
            sp74.theta = BINANG_ROT180(playerPosRot->rot.y) +  
                        (s16)(spA4 < 0 ? 
                            -(s16)(0x1553 + (s16)(temp_f0_2 * 2730.0f)) :
                            (s16)(0x1553 + (s16)(temp_f0_2 * 2730.0f)));
            sp74.phi = spec5->phi;
            Camera_Vec3fVecSphAdd(eyeNext, &spA8.pos, &sp74);
            *eye = *eyeNext;
            func_80043F34(camera, &spA8.pos, eye);
        }
    }
    
    func_800457A8(camera, &sp5C, spec5->yOffset, 0);
    camera->fov = Camera_LERPCeilF(spec5->fovTarget, camera->fov, camera->atLERPStepScale * PCT(OREG(4)), 1.0f);
    camera->roll = Camera_LERPCeilS(0, camera->roll, 0.5f, 0xA);
    camera->atLERPStepScale = Camera_ClampLERPScale(camera, spec5->atMaxLERPScale);
    return true;
}

/**
 * Camera's eye is fixed at points specified at D_8011DA6C / D_8011DA9C
 * depending on the player's position
*/
s32 Camera_Special7(Camera *camera) {
    Special7* spec7 = &camera->params.spec7;
    PosRot *playerPosRot = &camera->playerPosRot;
    Vec3f atTarget;
    f32 yOffset;
    f32 temp_f0;

    yOffset = Player_GetCameraYOffset(camera->player);
    if (camera->animState == 0) {
        if (camera->globalCtx->sceneNum == SCENE_JYASINZOU) {
            // Spirit Temple
            spec7->idx = 3;
        } else if (playerPosRot->pos.x < 1500.0f) {
            spec7->idx = 2;
        } else if (playerPosRot->pos.y < 3000.0f) {
            spec7->idx = 0;
        } else {
            spec7->idx = 1;
        }
        camera->animState++;
        camera->roll = 0;
    }

    if (camera->at.y < D_8011DACC[spec7->idx]) {
        atTarget = playerPosRot->pos;
        atTarget.y -= 20.0f;
        Camera_LERPCeilVec3f(&atTarget, &camera->at, 0.4f, 0.4f, 0.10f);
        camera->eye = camera->eyeNext = D_8011DA6C[spec7->idx];
        temp_f0 = (playerPosRot->pos.y - D_8011DADC[spec7->idx]) / (D_8011DACC[spec7->idx] - D_8011DADC[spec7->idx]);
        camera->roll = D_8011DAEC[spec7->idx] * temp_f0;
        camera->fov = (20.0f * temp_f0) + 60.0f;
    } else {
        atTarget = playerPosRot->pos;
        atTarget.y += yOffset;
        Camera_LERPCeilVec3f(&atTarget, &camera->at, 0.4f, 0.4f, 0.1f);
        camera->roll = 0;
        camera->eye = camera->eyeNext = D_8011DA9C[spec7->idx];
        camera->fov = 70.0f;
    }

    camera->dist = OLib_Vec3fDist(&camera->at, &camera->eye);
    camera->atLERPStepScale = 0.0f;
    camera->posOffset.x = camera->at.x - playerPosRot->pos.x;
    camera->posOffset.y = camera->at.y - playerPosRot->pos.y;
    camera->posOffset.z = camera->at.z - playerPosRot->pos.z;
    return true;
}

/**
 * Courtyard.
 * Camera's eye is fixed on the z plane, slides on the xy plane with link
 * When the camera's scene data changes the animation to the next "screen"
 * happens for 12 frames.  The camera's eyeNext is the scene's camera data's position
*/
s32 Camera_Special6(Camera *camera) {
    s32 pad;
    Vec3f *at = &camera->at;
    Special6 *spec6 = &camera->params.spec6;
    VecSph atOffset;
    Vec3f sceneCamPos;
    Vec3f eyePosCalc;
    Vec3f eyeAnim;
    Vec3f atAnim;
    VecSph eyeAtOffset;
    CameraModeValue *values;
    CamPosData *sceneCamData;
    Vec3s sceneCamRot;
    s16 fov;
    Vec3f *eye = &camera->eye;
    f32 timerF;
    f32 timerDivisor;
    f32 sp54;

    Vec3f *eyeNext = &camera->eyeNext;
    PosRot* playerPosRot = &camera->playerPosRot;
    Special6Anim* anim = &spec6->anim;

    if (RELOAD_PARAMS) {
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        spec6->interfaceFlags = NEXTSETTING;
    }

    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }

    OLib_Vec3fDiffToVecSphRot90(&eyeAtOffset, eye, at);

    sceneCamData = func_8004476C(camera);
    Camera_Vec3sToVec3f(&sceneCamPos, &sceneCamData->pos);
    sceneCamRot = sceneCamData->rot;
    fov = sceneCamData->fov;
    if (fov == -1) {
        fov = 6000;
    }

    if (fov < 361) {
        fov *= 100;
    }

    sCameraInterfaceFlags = spec6->interfaceFlags;

    if (eyeNext->x != sceneCamPos.x || eyeNext->y != sceneCamPos.y || eyeNext->z != sceneCamPos.z || camera->animState == 0) {
        // A change in the current scene's camera positon has been detected,
        // Change "screens"
        camera->player->actor.freeze = 12;
        sCameraInterfaceFlags = (sCameraInterfaceFlags & 0xF0FF) | 0x300;
        anim->initalPlayerY = playerPosRot->pos.y;
        anim->animTimer = 12;
        *eyeNext = sceneCamPos;
        if (camera->animState == 0) {
            camera->animState++;
        }
    }

    if (anim->animTimer > 0) {
        // In transition between "screens"
        timerF = anim->animTimer;
        eyePosCalc = *eyeNext;
        eyePosCalc.x += (playerPosRot->pos.x - eyePosCalc.x) * 0.5f;
        eyePosCalc.y += (playerPosRot->pos.y - anim->initalPlayerY) * 0.2f;
        eyeAnim = eyePosCalc;
        eyeAnim.y = Camera_LERPCeilF(eyePosCalc.y, eye->y, 0.5f, 0.01f);

        // set the at point to be 100 units from the eye looking at the 
        // direction specified in the scene's camera data. 
        atOffset.r = 100.0f;
        atOffset.theta = sceneCamRot.y;
        atOffset.phi = -sceneCamRot.x;
        Camera_Vec3fVecSphAdd(&atAnim, &eyeAnim, &atOffset);
        timerDivisor = 1.0f / timerF;
        eye->x += (eyeAnim.x - eye->x) * timerDivisor;
        eye->y += (eyeAnim.y - eye->y) * timerDivisor;
        eye->z += (eyeAnim.z - eye->z) * timerDivisor;
        at->x += (atAnim.x - at->x) * timerDivisor;
        at->y += (atAnim.y - at->y) * timerDivisor;
        at->z += (atAnim.z - at->z) * timerDivisor;
        camera->fov += (PCT(fov) - camera->fov) / anim->animTimer;
        anim->animTimer--;
    } else {
        // Camera following link on the x axis.
        sCameraInterfaceFlags &= 0xF0FF;
        eyePosCalc = *eyeNext;
        eyePosCalc.x += (playerPosRot->pos.x - eyePosCalc.x) * 0.5f;
        eyePosCalc.y += (playerPosRot->pos.y - anim->initalPlayerY) * 0.2f;
        *eye = eyePosCalc;
        eye->y = Camera_LERPCeilF(eyePosCalc.y, eye->y, 0.5f, 0.01f);
        
        // set the at point to be 100 units from the eye looking at the 
        // direction specified in the scene's camera data. 
        atOffset.r = 100.0f;
        atOffset.theta = sceneCamRot.y;
        atOffset.phi = -sceneCamRot.x;
        Camera_Vec3fVecSphAdd(at, eye, &atOffset);
    }
    return true;
}

s32 Camera_Special8(Camera* camera) {
    return Camera_NOP(camera);
}

//#define NON_MATCHING
#ifdef NON_MATCHING
s32 Camera_Special9(Camera *camera) {
    DoorCamera* doorc = &camera->params.doorCam;
    Special9 *spec9 = &doorc->spec9;
    Vec3f *sp48 = &camera->eye;
    Vec3f *sp44 = &camera->at;
    Vec3f spAC;
    VecSph spA4;
    VecSph sp9C;
    f32 sp98;
    Vec3f *sp40 = &camera->eyeNext;
    PosRot *sp3C = &camera->playerPosRot;
    PosRot sp7C;
    f32 sp78;
    s16 *sp34 = &doorc->unk_18;
    CameraModeValue* values;
    u32 sp30;
    CamPosData *temp_v0_3;
    Vec3f sp4C;

    sp98 = Player_GetCameraYOffset(camera->player);
    camera->unk_14C &= ~0x10;
    sp78 = (1.0f + PCT(R_CAM_YINV_OFFSET)) - (PCT(R_CAM_YINV_OFFSET) * (68.0f / sp98));

    if(RELOAD_PARAMS){
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        
        spec9->unk_00 = (f32) ((NEXTPCT * sp98) * sp78);
        spec9->unk_04 = NEXTSETTING;
        spec9->unk_08 = NEXTSETTING;
    }

    if (R_RELOAD_CAM_PARAMS) {
        Camera_CopyPREGToModeValues(camera);
    }

    if (doorc->door != NULL) {
        func_8002EF44(&sp7C, doorc->door);
    } else {
        sp7C = *sp3C;
        sp7C.pos.y += sp98 + spec9->unk_00;
        sp7C.rot.y = 0;
    }
    
    OLib_Vec3fDiffToVecSphRot90(&sp9C, sp44, sp48);
    
    sCameraInterfaceFlags = spec9->unk_08;

    switch(camera->animState){
        case 0:
            camera->animState++;
            camera->unk_14C &= ~(0x4 | 0x2);
            *sp34 = ABS(sp3C->rot.y - sp7C.rot.y) >= 0x4000 ? 
                BINANG_ROT180(sp7C.rot.y) : 
                sp7C.rot.y;
        case 1:
            doorc->unk_06--;
            if (doorc->unk_06 <= 0) {
                camera->animState++;
                if (spec9->unk_08 & 1) {
                    temp_v0_3 = func_8004476C(camera);
                    Camera_Vec3sToVec3f(sp40, &temp_v0_3->pos);
                    sp4C = *sp40;
                    *sp48 = sp4C;
                    spAC = sp4C;
                } else {
                    s32 rotDir;
                    spA4.phi = 0xE38;
                    rotDir = ((camera->globalCtx->state.frames & 1) ? 1 : -1);
                    // 0xE38 ~ 20 degrees
                    spA4.theta = *sp34 + (s16)(0xAAA * rotDir);
                    spA4.r = 200.0f * sp78;
                    Camera_Vec3fVecSphAdd(sp40, sp44, &spA4);
                    sp4C = *sp40;
                    *sp48 = sp4C;
                    spAC = sp4C;
                    if (func_800443A0(camera, &spAC, &sp3C->pos) != 0) {
                        spA4.theta = *sp34 + (s16)-(s16)(0xAAA * rotDir);
                        Camera_Vec3fVecSphAdd(sp40, sp44, &spA4);
                        *sp48 = *sp40;
                    }
                }
            } else {
                break;
            }
        case 2:
            spAC = sp3C->pos;
            spAC.y += sp98 + spec9->unk_00;
            
            Camera_LERPCeilVec3f(&spAC, sp44, 0.25f, 0.25f, 0.1f);
            doorc->unk_08--;
            if (doorc->unk_08 <= 0) {
                camera->animState++;
                *sp34 = BINANG_ROT180(*sp34);
            } else {
                break;
            }
        case 3:
            spAC = sp3C->pos;
            spAC.y += (sp98 + spec9->unk_00);
            Camera_LERPCeilVec3f(&spAC, sp44, 0.5f, 0.5f, 0.1f);
            spA4.phi = Camera_LERPCeilS(0xAAA, spA4.phi, 0.3f, 0xA);
            spA4.theta = Camera_LERPCeilS(*sp34, sp9C.theta, 0.3f, 0xA);
            spA4.r = Camera_LERPCeilF(60.0f, sp9C.r, 0.3f, 1.0f);
            Camera_Vec3fVecSphAdd(sp40, sp44, &spA4);
            *sp48 = *sp40;
            doorc->unk_0A--;
            if (doorc->unk_0A <= 0) {
                camera->animState++;
            } else {
                break;
            }
        case 4:
            camera->animState++;
            
        default:
            camera->unk_14C |= (0x400 | 0x10);
            sCameraInterfaceFlags = 0;

            if(camera->unk_D8 < 0.001f || CHECK_PAD(D_8015BD7C->state.input[0].press, A_BUTTON) ||
                                CHECK_PAD(D_8015BD7C->state.input[0].press, B_BUTTON) || CHECK_PAD(D_8015BD7C->state.input[0].press, L_CBUTTONS) ||
                                CHECK_PAD(D_8015BD7C->state.input[0].press, D_CBUTTONS) || CHECK_PAD(D_8015BD7C->state.input[0].press, U_CBUTTONS) ||
                                CHECK_PAD(D_8015BD7C->state.input[0].press, R_CBUTTONS) || CHECK_PAD(D_8015BD7C->state.input[0].press, R_TRIG) || 
                                CHECK_PAD(D_8015BD7C->state.input[0].press, Z_TRIG) || spec9->unk_08 & 0x8){

                                    Camera_ChangeSetting(camera, camera->prevSetting, 2);
                                    camera->unk_14C |= (0x4 | 0x2);
            }
            break;
    }

    spAC = sp3C->pos;
    spAC.y += sp98;
    camera->dist = OLib_Vec3fDist(&spAC, sp48);
    camera->posOffset.x = camera->at.x - sp3C->pos.x;
    camera->posOffset.y = camera->at.y - sp3C->pos.y;
    camera->posOffset.z = camera->at.z - sp3C->pos.z;
    return true;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_Special9.s")
#endif
#undef NON_MATCHING

Camera* Camera_Create(View* view, CollisionContext* colCtx, GlobalContext* globalCtx) {
    Camera* newCamera = ZeldaArena_MallocDebug(sizeof(*newCamera), "../z_camera.c", 9370);
    if (newCamera != NULL) {
        osSyncPrintf(VT_FGCOL(BLUE) "camera: create --- allocate %d byte" VT_RST "\n", sizeof(*newCamera) * 4);
        Camera_Init(newCamera, view, colCtx, globalCtx);
    } else {
        osSyncPrintf(VT_COL(RED, WHITE) "camera: create: not enough memory\n" VT_RST);
    }
    return newCamera;
}

void Camera_Destroy(Camera* camera) {
    if (camera != NULL) {
        osSyncPrintf(VT_FGCOL(BLUE) "camera: destroy ---" VT_RST "\n");
        ZeldaArena_FreeDebug(camera, "../z_camera.c", 9391);
    } else {
        osSyncPrintf(VT_COL(YELLOW, BLACK) "camera: destroy: already cleared\n" VT_RST);
    }
}

void Camera_Init(Camera *camera, View *view, CollisionContext *colCtx, GlobalContext *globalCtx) {
    Camera *camP;
    s32 i;
    s16 curUID;
    s16 j;

    func_80106860(camera, 0, sizeof(*camera));
    if (sInitRegs) {
        for(i = 0; i < sOREGInitCnt; i++){
            OREG(i) = sOREGInit[i];
        }

        for(i = 0; i < sPREGInitCnt; i++){
            PREG(i) = sPREGInit[i];
        }

        DbgCamera_FirstInit(camera, &D_8015BD80);
        sInitRegs = false;
        PREG(88) = -1;
    }
    camera->globalCtx = D_8015BD7C = globalCtx;
    DbgCamera_Init(&D_8015BD80, camera);
    curUID = sNextUID;
    sNextUID++;
    while(curUID != 0){
        if (curUID == 0) {
            sNextUID++;
        }

        for(j = 0; j < 4; j++){
            camP = camera->globalCtx->cameraPtrs[j];
            if (camP != NULL && curUID == camP->uid) {
                break;
            }
        }

        if(j == 4){
            break;
        }

        curUID = sNextUID++;
    }

    camera->direction.y = 0x3FFF;
    camera->uid = curUID;
    camera->realDir = camera->direction;
    camera->rUpdateRateInv = 10.0f;
    camera->thetaUpdateRateInv = 10.0f;
    camera->up.x = 0.0f;
    camera->up.y = 1.0f;
    camera->up.z = 0.0f;
    camera->fov = 60.0f;
    camera->phiUpdateRateInv = R_CAM_DEFA_PHI_UPDRATE;
    camera->xzOffsetUpdateRate = PCT(OREG(2));
    camera->yOffsetUpdateRate = PCT(OREG(3));
    camera->fovUpdateRate = PCT(OREG(4));
    D_8011D3A8 = 0x20;
    D_8011D3A4 = 0;
    camera->unk_14C = 0;
    camera->setting = camera->prevSetting = 0x21;
    camera->camDataIdx = camera->prevCamDataIdx = -1;
    camera->mode = 0;
    camera->bgCheckId = 0x32;
    camera->unk_168 = 0x7FFF;
    camera->unk_160 = -1;
    camera->unk_14C |= 0x4000;

    camera->up.y = 1.0f;
    camera->up.z = camera->up.x = 0.0f;
    camera->skyboxOffset.x = camera->skyboxOffset.y = camera->skyboxOffset.z = 0;
    camera->atLERPStepScale = 1;
    sCameraInterfaceFlags = 0xFF00;
    D_8011D398 = -1;
    D_8011D3F0 = 3;
    osSyncPrintf("\x1b[34mcamera: initialize --- \x1b[m UID %d\n", camera->uid);
}

s32 func_8005AD40(Camera* camera, Actor* doorActor, s16 arg2, f32 arg3, s16 arg4, s16 arg5, s16 arg6);

void func_80057FC4(Camera* camera) {
    if (camera != &camera->globalCtx->cameras[0]) {
        camera->prevSetting = camera->setting = CAM_SET_FREE0;
        camera->unk_14C &= ~0x4;
    } else if (camera->globalCtx->roomCtx.curRoom.mesh->polygon.type != 1) {
        switch (camera->globalCtx->roomCtx.curRoom.unk_03) {
            case 1:
                func_8005AD40(camera, NULL, -99, 0, 0, 18, 10);
                camera->prevSetting = camera->setting = CAM_SET_DUNGEON0;
                break;
            case 0:
                osSyncPrintf("camera: room type: default set field\n");
                func_8005AD40(camera, NULL, -99, 0, 0, 18, 10);
                camera->prevSetting = camera->setting = CAM_SET_NORMAL0;
                break;
            default:
                osSyncPrintf("camera: room type: default set etc (%d)\n", camera->globalCtx->roomCtx.curRoom.unk_03);
                func_8005AD40(camera, NULL, -99, 0, 0, 18, 10);
                camera->prevSetting = camera->setting = CAM_SET_NORMAL0;
                camera->unk_14C |= 4;
                break;
        }
    } else {
        osSyncPrintf("camera: room type: prerender\n");
        camera->prevSetting = camera->setting = CAM_SET_FREE0;
        camera->unk_14C &= ~0x4;
    }
}

void Camera_Stub80058140(Camera* camera) {
}

#ifdef NON_MATCHING
void func_80058148(Camera* camera, Player* player) {
    s32 pad;
    PosRot sp54;
    VecSph sp4C;
    s32 sp48;
    Vec3f sp3C;
    f32 temp_f0;

    func_8002EF44(&sp54, &player->actor);
    temp_f0 = Player_GetCameraYOffset(player);
    camera->player = player;
    camera->playerPosRot = sp54;
    sp4C.r = 180.0f;
    sp4C.phi = 0x71C;
    sp4C.theta = camera->direction.y - 0x7FFF;
    camera->dist = 180.0f;
    camera->direction.x = 0x71C;
    camera->direction.y = sp54.rot.y;
    camera->direction.z = 0;
    camera->realDir = camera->direction;
    camera->unk_D8 = 0.0f;
    camera->playerPosDelta.y = 0.0f;
    camera->at = sp54.pos;
    camera->posOffset.x = 0.0f;
    camera->posOffset.y = temp_f0;
    camera->posOffset.z = 0.0f;
    camera->at.y += temp_f0;
    Camera_Vec3fVecSphAdd(&camera->eyeNext, &camera->at, &sp4C);
    camera->eye = camera->eyeNext;
    camera->roll = 0;
    camera->up.x = 0.0f;
    camera->up.z = 0.0f;
    camera->up.y = 1.0f;

    if (func_80044434(camera, &sp3C, &camera->at, &sp48) != -32000.0f) {
        camera->bgCheckId = sp48;
    }

    camera->unk_118 = -1;
    camera->unk_11C = -1;
    camera->unk_14C |= 4;

    if (camera == &camera->globalCtx->cameras[0]) {
        sCameraInterfaceFlags = 0xB200;
    } else {
        sCameraInterfaceFlags = 0;
    }
    func_80057FC4(camera);
    camera->unk_14A = 0;
    camera->paramFlags = 0;
    camera->nextCamDataIdx = -1;
    camera->atLERPStepScale = 1.0f;
    Camera_CopyModeValuesToPREG(camera, camera->mode);
    Camera_QRegInit();
    osSyncPrintf(VT_FGCOL(BLUE) "camera: personalize ---" VT_RST "\n");
    if (camera->thisIdx == 0) {
        func_800588B4(camera);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80058148.s")
#endif

s16 Camera_ChangeStatus(Camera* camera, s16 status) {
    CameraModeValue* values;
    CameraModeValue* valueP;
    s32 i;

    if (PREG(82)) {
        osSyncPrintf("camera: change camera status: cond %c%c\n", status == 7 ? 'o' : 'x', camera->status != 7 ? 'o' : 'x');
    }

    if (PREG(82)) {
        osSyncPrintf("camera: res: stat (%d/%d/%d)\n", camera->thisIdx, camera->setting, camera->mode);
    }

    if (status == CAM_STATUS_ACTIVE && camera->status != CAM_STATUS_ACTIVE) {
        // if we're making the camera active, but it is not already active, update PREG values
        values = sCameraSettings[camera->setting].cameraModes[camera->mode].values;
        for(i = 0; i <sCameraSettings[camera->setting].cameraModes[camera->mode].valueCnt; i++){
            valueP = &values[i];
            PREG(valueP->param) = valueP->val;
            if(PREG(82)){
                osSyncPrintf("camera: change camera status: PREG(%02d) = %d\n", valueP->param, valueP->val);
            }
        }
    }
    camera->status = status;
    return camera->status;
}

#ifdef NON_MATCHING
void Camera_PrintSettings(Camera *camera) {
    char allCamStatus[5];
    char camDataIdx[8];
    char activeCamStatus[5];
    s32 i;
    const char t = ' ';

    if (OREG(0) & 1 && camera->thisIdx == camera->globalCtx->activeCamera && gDbgCamEnabled == 0) {
        for(i = 0; i < ARRAY_COUNT(allCamStatus) - 1; i++){
            if(camera->globalCtx->cameraPtrs[i] == NULL){
                activeCamStatus[i] = t;
                allCamStatus[i] = '-';
                break;
            }

            // code is using beql over beq, and loading 0x20 each time.
            switch(camera->globalCtx->cameraPtrs[i]->status){
                default: 
                    activeCamStatus[i] = ' '; 
                    allCamStatus[i] = '*'; 
                    break;
                case CAM_STATUS_CUT: 
                    allCamStatus[i] = 'c';
                    activeCamStatus[i] = ' ';
                    break; 
                case CAM_STATUS_WAIT:
                    allCamStatus[i] = 'w'; 
                    activeCamStatus[i] = ' '; 
                    break; 
                case CAM_STATUS_UNK3: 
                    allCamStatus[i] = 's'; 
                    activeCamStatus[i] = ' '; 
                    break; 
                case CAM_STATUS_ACTIVE:
                    allCamStatus[i] = 'a'; 
                    activeCamStatus[i] = ' '; 
                    break; 
                case CAM_STATUS_UNKT:
                    allCamStatus[i] = 'd'; 
                    activeCamStatus[i] = ' '; 
                    break; 
            }
            
        }

        activeCamStatus[i + 1] = '\0';
        allCamStatus[i + 1] = '\0';
        
        activeCamStatus[camera->globalCtx->activeCamera] = 'a';
        
        func_8006376C(3, 22, 5, allCamStatus);
        func_8006376C(3, 22, 1, activeCamStatus);
        func_8006376C(3, 23, 5, "S:");
        func_8006376C(5, 23, 4, sCameraSettingNames[camera->setting]);
        func_8006376C(3, 24, 5, "M:");
        func_8006376C(5, 24, 4, sCameraModeNames[camera->mode]);
        func_8006376C(3, 25, 5, "F:");
        func_8006376C(5, 25, 4, sCameraFunctionNames[sCameraSettings[camera->setting].cameraModes[camera->mode].funcIdx]);
        
        // there's some ordering issues here.  This might be some kind of macro?
        i = 0;
        if (camera->camDataIdx < 0) {
            camDataIdx[i++] = '-';
        }

        if ((camera->camDataIdx / 10) != 0) {
            camDataIdx[i++] = (i / 10) + '0';
        }

        camDataIdx[i++] = (i % 10) + '0';
        camDataIdx[i++] = t;
        camDataIdx[i++] = t;
        camDataIdx[i++] = t;
        camDataIdx[i++] = t;
        camDataIdx[i++] = '\0';
        func_8006376C(3, 26, 5, "I:");
        func_8006376C(5, 26, 4, camDataIdx);
    }
}
#else
void Camera_PrintSettings(Camera *camera);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_PrintSettings.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_800588B4.s")

/**
 * Sets the room to be hot camera quake flag
*/
s32 Camera_SetRoomHotFlag(Camera* camera) {
    camera->unk_152 &= ~1;
    if (camera->globalCtx->roomCtx.curRoom.unk_02 == 3) {
        camera->unk_152 |= 1;
    }

    return 1;
}

s32 func_80058D34(Camera* camera) {
    s32 phi_a2 = 0;

    if (gDbgCamEnabled == 0) {
        if (camera->globalCtx->activeCamera == 0) {
            if (CHECK_PAD(D_8015BD7C->state.input[2].press, U_CBUTTONS)) {
                osSyncPrintf("attention sound URGENCY\n");
                func_80078884(NA_SE_SY_ATTENTION_URGENCY);
            }
            if (CHECK_PAD(D_8015BD7C->state.input[2].press, D_CBUTTONS)) {
                osSyncPrintf("attention sound NORMAL\n");
                func_80078884(NA_SE_SY_ATTENTION_ON);
            }

            if (CHECK_PAD(D_8015BD7C->state.input[2].press, R_CBUTTONS)) {
                phi_a2 = 1;
            }
            if (CHECK_PAD(D_8015BD7C->state.input[2].press, L_CBUTTONS)) {
                phi_a2 = -1;
            }
            if (phi_a2 != 0) {
                D_8011D398 = (D_8011D398 + phi_a2) % 6;
                if (Camera_ChangeSettingDefaultFlags(camera, D_8011DAFC[D_8011D398]) > 0) {
                    osSyncPrintf("camera: force change SET to %s!\n", sCameraSettingNames[D_8011DAFC[D_8011D398]]);
                }
            }
        }
    }
    return 1;
}

#ifdef NON_MATCHING
void func_80058E8C(Camera *camera) {
    static s16 D_8011DB08 = 0x3F0;
    static s16 D_8011DB0C = 0x156;
    f32 sp60;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp2C;
    f32 sp28;
    f32 temp_f12;
    f32 temp_f20;
    f32 nv;
    f32 phi_f14;
    f32 phi_f2;
    f32 phi_f0;
    f32 phi_f20;

    if (camera->unk_152 != 0) {
        if (camera->unk_152 & 4) {
            sp3C = 0.01f;
            phi_f2 = 170.0f;
            sp38 = 0.0f;
            sp40 = -0.01f;
            sp34 = 0.6f;
            phi_f20 = camera->unk_150 / 60.0f;
            sp60 = 1.0f;
            phi_f0 = 0.0f;
        } else if(camera->unk_152 & 8){
            sp3C = 0.3f;
            phi_f2 = -90.0f;
            sp38 = 0.2f;
            sp40 = -0.3f;
            sp34 = 0.2f;
            phi_f20 = camera->unk_150 / 80.0f;
            sp60 = 1.0f;
            phi_f0 = 248.0f;
        } else if(camera->unk_152 & 2){
            sp3C = 0.09f;
            phi_f2 = -18.5f;
            sp38 = 0.001f;
            sp40 = 0.09f;
            sp34 = 0.08f;
            temp_f12 = camera->unk_114 - camera->eye.y;
            if (150.0f < temp_f12) {
                phi_f14 = 1.0f;
            } else {
                phi_f14 = temp_f12 / 150.0f;
            }
            nv = camera->unk_E0 * 0.45f;
            temp_f20 = (phi_f14 * 0.45f) + nv;
            phi_f20 = temp_f20;
            sp60 = temp_f20;
            phi_f0 = 359.2f;
        } else if(camera->unk_152 & 1){
            sp3C = 0.01f;
            phi_f2 = 150.0f;
            sp38 = 0.01f;
            sp40 = -0.01f;
            sp34 = 0.6f;
            phi_f20 = 1.0f;
            sp60 = 1.0f;
            phi_f0 = 0.0f;
        } else {
            return;
        }
        D_8011DB0C += DEGF_TO_BINANG(phi_f2);
        D_8011DB08 += DEGF_TO_BINANG(phi_f0);
        Math_Coss(D_8011DB08);
        Math_Sins(D_8011DB08);
        Math_Sins(D_8011DB0C);
        func_800AA76C(&camera->globalCtx->view, 0.0f, 0.0f, 0.0f);

        func_800AA78C(&camera->globalCtx->view, (Math_Sins(D_8011DB0C) * (sp40 * phi_f20)) + 1.0f, (Math_Coss(D_8011DB0C) * (sp3C * phi_f20)) + 1.0f, (Math_Coss(D_8011DB08) * (sp38 * phi_f20)) + 1.0f);
        func_800AA7AC(&camera->globalCtx->view, sp34 * sp60);
        camera->unk_14C |= 0x40;        
    } else if (camera->unk_14C & 0x40) {
        func_800AA814(&camera->globalCtx->view);
        camera->unk_14C &= ~0x40;
    }
}
#else
s16 D_8011DB08 = 0x3F0;
s16 D_8011DB0C = 0x156;
void func_80058E8C(Camera *camera);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/func_80058E8C.s")
#endif

Vec3s *Camera_Update(Vec3s *outVec, Camera *camera) {
    static s32 sOOBTimer = 0;

    Vec3f viewAt;
    Vec3f viewEye;
    Vec3f viewUp;
    f32 viewFov;
    Vec3f spAC;
    u32 bgCheckId;
    f32 playerGroundY;
    f32 playerXZDiff;
    VecSph eyeAtAngle;
    s16 camDataIdx;
    PosRot curPlayerPosRot;
    QuakeCamCalc quake;
    Player *player;

    player = camera->globalCtx->cameraPtrs[0]->player;

    if (R_DBG_CAM_UPDATE) {
        osSyncPrintf("camera: in %x\n", camera);
    }
    
    if (camera->status == CAM_STATUS_CUT) {
        if (R_DBG_CAM_UPDATE) {
            osSyncPrintf("camera: cut out %x\n", camera);
        }
        *outVec = camera->direction;
        return outVec;
    }

    sUpdateCameraDirection = 0;

    if (camera->player != NULL) {
        func_8002EF44(&curPlayerPosRot, &camera->player->actor);
        camera->unk_D8 = playerXZDiff = OLib_Vec3fDistXZ(&curPlayerPosRot.pos, &camera->playerPosRot.pos);
        
        camera->unk_E0 = func_8007C0A8(playerXZDiff / (func_8002DCE4(camera->player) * (OREG(8) * 0.01f)), 1.0f);
        camera->playerPosDelta.x = curPlayerPosRot.pos.x - camera->playerPosRot.pos.x;
        camera->playerPosDelta.y = curPlayerPosRot.pos.y - camera->playerPosRot.pos.y;
        camera->playerPosDelta.z = curPlayerPosRot.pos.z - camera->playerPosRot.pos.z;
        spAC = curPlayerPosRot.pos;
        spAC.y += Player_GetCameraYOffset(camera->player);

        // This has to do with out of bounds Camera
        playerGroundY = func_8003CA0C(camera->globalCtx, &camera->globalCtx->colCtx, &playerFloorPoly, &bgCheckId, &camera->player->actor, &spAC);
        if (playerGroundY != -32000.0f) {
            sOOBTimer = 0;
            camera->unk_108.x = playerFloorPoly->norm.x * (1.0f / 32767.0f);
            camera->unk_108.y = playerFloorPoly->norm.y * (1.0f / 32767.0f);
            camera->unk_108.z = playerFloorPoly->norm.z * (1.0f / 32767.0f);
            camera->bgCheckId = bgCheckId;
            camera->playerGroundY = playerGroundY;
        } else {
            sOOBTimer++;
            if(1){
                camera->unk_108.x = 0.0;
                camera->unk_108.y = 1.0f;
                camera->unk_108.z = 0.0;
            }
        }

        camera->playerPosRot = curPlayerPosRot;
        
        if (sOOBTimer < 200) {
            if (camera->status == CAM_STATUS_ACTIVE) {
                func_800588B4(camera);
                Camera_SetRoomHotFlag(camera);
            }

            if (!(camera->unk_14C & 4)) {
                camera->nextCamDataIdx = -1;
            }

            if ((camera->unk_14C & 1) && (camera->unk_14C & 4) && 
                (!(camera->unk_14C & 0x400)) &&
                (!(camera->unk_14C & 0x200) || (player->currentBoots == 1)) &&
                // cast to u32 is needed to prevent sra over srl
                (!((u32)camera->unk_14C >> 0xF)) && (playerGroundY != -32000.0f)) {
                    camDataIdx = func_8004479C(camera, &bgCheckId, playerFloorPoly);
                    if (camDataIdx != -1) {
                        camera->nextBGCheckId = bgCheckId;
                        if (bgCheckId == 0x32) {
                            camera->nextCamDataIdx = camDataIdx;
                        }
                    }
            }

            if (camera->nextCamDataIdx != -1 && (fabsf(curPlayerPosRot.pos.y - playerGroundY) < 2.0f) &&
                (!(camera->unk_14C & 0x200) || (player->currentBoots == 1))) {
                camera->bgCheckId = camera->nextBGCheckId;
                Camera_ChangeDataIdx(camera, camera->nextCamDataIdx);
                camera->nextCamDataIdx = -1;
            }
        }
    }
    Camera_PrintSettings(camera);
    func_80058D34(camera);

    if (camera->status == CAM_STATUS_WAIT) {
        if (R_DBG_CAM_UPDATE) {
            osSyncPrintf("camera: wait out %x\n", camera);
        }
        *outVec = camera->direction;
        return outVec;
    }

    camera->unk_14A = 0;
    camera->unk_14C &= ~(0x400 | 0x20);
    camera->unk_14C |= 0x10;

    if (R_DBG_CAM_UPDATE) {
        osSyncPrintf("camera: engine (%d %d %d) %04x \n", camera->setting, camera->mode, sCameraSettings[camera->setting].cameraModes[camera->mode].funcIdx, camera->unk_14C);
    }

    if (sOOBTimer < 200) {
        sCameraFunctions[sCameraSettings[camera->setting].cameraModes[camera->mode].funcIdx](camera);
    } else if (camera->player != NULL) {
        OLib_Vec3fDiffToVecSphRot90(&eyeAtAngle, &camera->at, &camera->eye);
        func_800457A8(camera, &eyeAtAngle, 0.0f, 0);
    }

    if (camera->status == CAM_STATUS_ACTIVE) {
        if ((gSaveContext.gameMode != 0) && (gSaveContext.gameMode != 3)) {
            sCameraInterfaceFlags = 0;
            Camera_UpdateInterface(sCameraInterfaceFlags);
        } else if ((D_8011D3F0 != 0) && (camera->thisIdx == 0)) {
            D_8011D3F0--;
            sCameraInterfaceFlags = 0x3200;
            Camera_UpdateInterface(sCameraInterfaceFlags);
        } else if (camera->globalCtx->transitionMode != 0) {
            sCameraInterfaceFlags = 0xF200;
            Camera_UpdateInterface(sCameraInterfaceFlags);
        } else if (camera->globalCtx->csCtx.state != 0) {
            sCameraInterfaceFlags = 0x3200;
            Camera_UpdateInterface(sCameraInterfaceFlags);
        } else {
            Camera_UpdateInterface(sCameraInterfaceFlags);
        }
    }

    if (R_DBG_CAM_UPDATE) {
        osSyncPrintf("camera: shrink_and_bitem %x(%d)\n", sCameraInterfaceFlags, camera->globalCtx->transitionMode);
    }

    if (R_DBG_CAM_UPDATE) {
        osSyncPrintf("camera: engine (%s(%d) %s(%d) %s(%d)) ok!\n", &sCameraSettingNames[camera->setting], camera->setting, &sCameraModeNames[camera->mode], camera->mode, &sCameraFunctionNames[sCameraSettings[camera->setting].cameraModes[camera->mode].funcIdx], sCameraSettings[camera->setting].cameraModes[camera->mode].funcIdx);
    }

    // enable/disable debug cam
    if (CHECK_PAD(D_8015BD7C->state.input[2].press, START_BUTTON)) {
        gDbgCamEnabled ^= 1;
        if (gDbgCamEnabled) {
            DbgCamera_Enable(&D_8015BD80, camera);
        } else if (camera->globalCtx->csCtx.state != 0) {
            func_80064534(camera->globalCtx, &camera->globalCtx->csCtx);
        }
    }

    // Debug cam update
    if (gDbgCamEnabled) {
        camera->globalCtx->view.fovy = D_8015BD80.fov;
        DbgCamera_Update(&D_8015BD80, camera);
        func_800AA358(&camera->globalCtx->view, &D_8015BD80.eye, &D_8015BD80.at, &D_8015BD80.up);
        if (R_DBG_CAM_UPDATE) {
            osSyncPrintf("camera: debug out\n");
        }
        *outVec = D_8015BD80.unk_10C6;
        return outVec;
    }

    OREG(0) &= ~8;

    if (camera->status == 3) {
        *outVec = camera->direction;
        return outVec;
    }
    
    // setting bgCheckId to the ret of Quake_Calc, and checking that 
    // is required, it doesn't make too much sense though.
    if ((bgCheckId = Quake_Calc(camera, &quake), bgCheckId != 0) && (camera->setting != CAM_SET_ITEM2)) {
        viewAt.x = camera->at.x + quake.atOffset.x;
        viewAt.y = camera->at.y + quake.atOffset.y;
        viewAt.z = camera->at.z + quake.atOffset.z;
        viewEye.x = camera->eye.x + quake.eyeOffset.x;
        viewEye.y = camera->eye.y + quake.eyeOffset.y;
        viewEye.z = camera->eye.z + quake.eyeOffset.z;
        OLib_Vec3fDiffToVecSphRot90(&eyeAtAngle, &viewEye, &viewAt);
        Camera_CalcUpFromPitchYawRoll(&viewUp, eyeAtAngle.phi + quake.rotZ, eyeAtAngle.theta + quake.unk_1A, camera->roll);
        viewFov = camera->fov + BINANG_TO_DEGF(quake.zoom);
    } else {
        viewAt = camera->at;
        viewEye = camera->eye;
        OLib_Vec3fDiffToVecSphRot90(&eyeAtAngle, &viewEye, &viewAt);
        Camera_CalcUpFromPitchYawRoll(&viewUp, eyeAtAngle.phi, eyeAtAngle.theta, camera->roll);
        viewFov = camera->fov;
    }

    if (camera->paramFlags & 4) {
        camera->paramFlags &= ~4;
        viewUp = camera->up;
    } else {
        camera->up = viewUp;
    }

    camera->skyboxOffset = quake.eyeOffset;

    func_80058E8C(camera);
    if ((camera->globalCtx->sceneNum == SCENE_SPOT00) && (camera->fov < 59.0f)) {
        View_SetScale(&camera->globalCtx->view, 0.79f);
    } else {
        View_SetScale(&camera->globalCtx->view, 1.0f);
    }
    camera->globalCtx->view.fovy = viewFov;
    func_800AA358(&camera->globalCtx->view, &viewEye, &viewAt, &viewUp);
    camera->realDir.x = eyeAtAngle.phi;
    camera->realDir.y = eyeAtAngle.theta;
    camera->realDir.z = 0;
    if (sUpdateCameraDirection == 0) {
        camera->direction.x = eyeAtAngle.phi;
        camera->direction.y = eyeAtAngle.theta;
        camera->direction.z = 0;
    }
    if (PREG(81)) {
        osSyncPrintf("dir  (%d) %d(%f) %d(%f) 0(0) \n", sUpdateCameraDirection, camera->direction.x, BINANG_TO_DEGF(camera->direction.x), camera->direction.y, BINANG_TO_DEGF(camera->direction.y));
        osSyncPrintf("real (%d) %d(%f) %d(%f) 0(0) \n", sUpdateCameraDirection, camera->realDir.x, BINANG_TO_DEGF(camera->realDir.x), camera->realDir.y, BINANG_TO_DEGF(camera->realDir.y));
    }
    if (camera->unk_160 != -1 && CHECK_PAD(D_8015BD7C->state.input[0].press, R_JPAD)) {
        camera->unk_160 = 0;
    }
    if (R_DBG_CAM_UPDATE) {
        osSyncPrintf("camera: out (%f %f %f) (%f %f %f)\n", camera->at.x, camera->at.y, camera->at.z, camera->eye.x, camera->eye.y, camera->eye.z);
        osSyncPrintf("camera: dir (%f %d(%f) %d(%f)) (%f)\n", eyeAtAngle.r, eyeAtAngle.phi, BINANG_TO_DEGF(eyeAtAngle.phi), eyeAtAngle.theta, BINANG_TO_DEGF(eyeAtAngle.theta), camera->fov);
        if (camera->player != NULL) {
            osSyncPrintf("camera: foot(%f %f %f) dist (%f)\n", curPlayerPosRot.pos.x, curPlayerPosRot.pos.y, curPlayerPosRot.pos.z, camera->dist);
        }
    }

    *outVec = camera->direction;
    return outVec;
}

void func_80059EC8(Camera* camera) {
    Camera* sp24 = camera->globalCtx->cameraPtrs[0];
    Player* player = (Player*)camera->globalCtx->actorCtx.actorList[2].first;

    if (camera->unk_160 == 0) {
        Gameplay_ChangeCameraStatus(camera->globalCtx, camera->parentCamIdx, 7);

        if ((camera->parentCamIdx == 0) && (camera->unk_168 != 0)) {
            player->actor.freeze = 0;
            player->stateFlags1 &= ~0x20000000;

            if (player->action != 0) {
                func_8002DF54(camera->globalCtx, &player->actor, 7);
                osSyncPrintf("camera: player demo end!!\n");
            }

            sp24->unk_14C |= 8;
        }

        if (camera->globalCtx->cameraPtrs[camera->childCamIdx]->parentCamIdx == camera->thisIdx) {
            camera->globalCtx->cameraPtrs[camera->childCamIdx]->parentCamIdx = camera->parentCamIdx;
        }

        if (camera->globalCtx->cameraPtrs[camera->parentCamIdx]->childCamIdx == camera->thisIdx) {
            camera->globalCtx->cameraPtrs[camera->parentCamIdx]->childCamIdx = camera->childCamIdx;
        }

        if (camera->globalCtx->cameraPtrs[camera->parentCamIdx]->thisIdx == 0) {
            camera->globalCtx->cameraPtrs[camera->parentCamIdx]->animState = 0;
        }

        camera->parentCamIdx = 0;
        camera->childCamIdx = camera->parentCamIdx;
        camera->unk_160 = -1;
        camera->globalCtx->envCtx.unk_E1 = 0;

        Gameplay_ClearCamera(camera->globalCtx, camera->thisIdx);
    }
}

s32 func_8005A02C(Camera* camera) {
    camera->unk_14C |= 0xC;
    camera->unk_14C &= ~(0x1000 | 0x8);
    return true;
}

//#define NON_MATCHING
#ifdef NON_MATCHING
s32 Camera_ChangeMode(Camera* camera, s16 mode, u8 flags) {
    static s32 D_8011DB14 = 0;
    s32 phi_v0;
    u32 temp_t8;
    s32 phi_at;

    if (QREG(89)) {
        osSyncPrintf("+=+(%d)+=+ recive request -> %s\n", camera->globalCtx->state.frames, sCameraModeNames[mode]);
    }

    if ((camera->unk_14C & 0x20) && (flags == 0)) {
        camera->unk_14A |= 0x20;
        return -1;
    } else if (!(sCameraSettings[camera->setting].validModes & (1 << mode))) {
        if (mode == CAM_MODE_SUBJECT) {
            osSyncPrintf("camera: error sound\n");
            func_80078884(NA_SE_SY_ERROR);
        }
        if (camera->mode != CAM_MODE_NORMAL) {
            osSyncPrintf(VT_COL(YELLOW, BLACK) "camera: change camera mode: force NORMAL: %s %s refused\n" VT_RST,
                         sCameraSettingNames[camera->setting], sCameraModeNames[mode]);
            camera->mode = CAM_MODE_NORMAL;
            Camera_CopyModeValuesToPREG(camera, camera->mode);
            func_8005A02C(camera);
            return 0xC0000000 | mode;
        } else {
            camera->unk_14A = (s16)(camera->unk_14A | 0x20);
            camera->unk_14A = (s16)(camera->unk_14A | 2);
            return 0;
        }
    } else if ((mode == camera->mode) && (flags == 0)) {
        camera->unk_14A |= 0x20;
        camera->unk_14A |= 2;
        return -1;
    } else {
        camera->unk_14A |= 0x20;
        camera->unk_14A |= 2;
        camera = camera;
        Camera_CopyModeValuesToPREG(camera, mode);
        temp_t8 = mode - 1;
        phi_v0 = 0;
        switch (mode) {
            default:
                break;
            case 6: // switch 1
                phi_v0 = 0x20;
                break;
            case 4: // switch 1
                phi_v0 = 4;
                break;
            case 2: // switch 1
                phi_v0 = 0;
                if (camera->target != NULL) {
                    phi_v0 = 0;
                    if (camera->target->id != ACTOR_EN_BOOM) {
                        phi_v0 = 8;
                    }
                }
                break;
            case 1:  // switch 1
            case 3:  // switch 1
            case 8:  // switch 1
            case 15: // switch 1
            case 19: // switch 1
                phi_v0 = 2;
                break;
        }

        switch (camera->mode) {
            default:
                break;
            case 6: // switch 2
                if ((phi_v0 & 0x20) != 0) {
                    camera->animState = (u16)0xAU;
                }
                break;
            case 1: // switch 2
                if ((phi_v0 & 0x10) != 0) {
                    camera->animState = (u16)0xAU;
                }
                phi_v0 |= 1;
                break;
            case 17: // switch 2
                phi_v0 |= 1;
                break;
            case 2: // switch 2
                if ((phi_v0 & 8) != 0) {
                    camera->animState = (u16)0xAU;
                }
                phi_v0 |= 1;
                break;
            case 4: // switch 2
                if ((phi_v0 & 4) != 0) {
                    camera->animState = (u16)0xAU;
                }
                phi_v0 |= 1;
                break;
            case 8:  // switch 2
            case 15: // switch 2
            case 19: // switch 2
                phi_v0 |= 1;
                break;
            case 0: // switch 2
                if ((phi_v0 & 0x10) != 0) {
                    camera->animState = (u16)0xAU;
                }
                break;
        }
        phi_v0 &= ~0x10;
        D_8011DB14 = phi_v0;
        if (camera->status == 7) {
            switch (phi_v0) {
                case 1:
                    func_80078884(NA_SE_PL_WALK_GROUND - SFX_FLAG);
                    break;
                case 2:
                    if (1 == camera->globalCtx->roomCtx.curRoom.unk_03) {
                        func_80078884(NA_SE_SY_ATTENTION_URGENCY);
                    } else {
                        func_80078884(NA_SE_SY_ATTENTION_ON);
                    }
                    break;
                case 4:
                    func_80078884(NA_SE_SY_ATTENTION_URGENCY);
                    break;
                case 8:
                    func_80078884(NA_SE_SY_ATTENTION_ON);
                    break;
            }
        }
        func_8005A02C(camera);
        camera->mode = mode;
        phi_at = 0x80000000 | mode;
    }
    return phi_at;
}
#else
s32 D_8011DB14 = 0;
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_ChangeMode.s")
#endif
#undef NON_MATCHING

s32 Camera_ChangeModeDefaultFlags(Camera* camera, s16 mode) {
    return Camera_ChangeMode(camera, mode, 0);
}

s32 Camera_CheckValidMode(Camera* camera, s16 mode) {
    if (QREG(89) != 0) {
        osSyncPrintf("+=+=+=+ recive asking -> %s (%s)\n", sCameraModeNames[mode],
                     sCameraSettingNames[camera->setting]);
    }
    if (!(sCameraSettings[camera->setting].validModes & (1 << mode))) {
        return 0;
    } else if (mode == camera->mode) {
        return -1;
    } else {
        return mode | 0x80000000;
    }
}

//#define NON_MATCHING
#ifdef NON_MATCHING
s16 Camera_ChangeSetting(Camera *camera, s16 setting, s16 flags) {
    s32 f5;
    
    if (((camera->unk_14A & 1) != 0) && ((sCameraSettings[camera->setting].unk_00 & 0xF000000) >> 0x18 >= (sCameraSettings[setting].unk_00 & 0xF000000) >> 0x18)) {
        camera->unk_14A |= 0x10;
        return -2;
    }

    switch(setting){
        case 0x35:
        case 0x36:
            if (gSaveContext.linkAge == 0 && camera->globalCtx->sceneNum == SCENE_SPOT05) {
                camera->unk_14A |= 0x10;
                return -5;
            }
            break;
    }
    
    if (setting == 0 || setting >=0x42) {
        osSyncPrintf("\x1b[41;37mcamera: error: illegal camera set (%d) !!!!\n\x1b[m", setting);
        return -0x63;
    }
    
    if ((setting == camera->setting) && (!(flags & 1))) {
        camera->unk_14A |= 0x10;
        if (!(flags & 2)) {
            camera->unk_14A |= 1;
        }
        return -1;
    }

    camera->unk_14A |= 0x10;
    
    if (!(2 & flags)) {
        camera->unk_14A |= 1;
    }
    
    camera->unk_14C |= (8 | 4);
    camera->unk_14C &= ~(0x1000 | 0x8);
    
    if(1){
        f5 = 0x40000000;
    }
    
    if (!sCameraSettings[camera->setting].unk_bit1) {
        camera->prevSetting = camera->setting;
    }
    
    if (flags & 8) {
        s16 prevIdx = camera->prevCamDataIdx;
        camera->camDataIdx = prevIdx;
        camera->prevCamDataIdx = -1;
    } else {
        if(!(flags & 4)){
            f5 = sCameraSettings[camera->setting].unk_00 & f5;
            if (!(f5 & 0xFFFFFFFFU)) {
                camera->prevCamDataIdx = camera->camDataIdx & 0xFFFFU;
            }
            camera->camDataIdx = -1;
        }
    }
    

    camera->setting = setting;
    if (Camera_ChangeMode(camera, camera->mode, 1) > -1) {
        Camera_CopyModeValuesToPREG(camera, camera->mode);
    }
    osSyncPrintf("\x1b[1m%06u:\x1b[m camera: change camera[%d] set %s\n", camera->globalCtx->state.frames, camera->thisIdx, sCameraSettingNames[camera->setting]);
    return setting;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_camera/Camera_ChangeSetting.s")
#endif
#undef NON_MATCHING

s32 Camera_ChangeSettingDefaultFlags(Camera* camera, s16 setting) {
    return Camera_ChangeSetting(camera, setting, 0);
}

s32 Camera_ChangeDataIdx(Camera *camera, s32 camDataIdx) {
    s16 newCameraSetting;
    s16 settingChangeSuccessful;

    if (camDataIdx == -1 || camDataIdx == camera->camDataIdx) {
        camera->unk_14A |= 0x40;
        return -1;
    }

    if ((camera->unk_14A & 0x40) == 0) {
        newCameraSetting = Camera_GetCamDataSetting(camera, camDataIdx);
        camera->unk_14A |= 0x40;
        settingChangeSuccessful = Camera_ChangeSetting(camera, newCameraSetting, 5) >= 0;
        if (settingChangeSuccessful || sCameraSettings[camera->setting].unk_00 & 0x80000000) {
            camera->camDataIdx = camDataIdx;
            camera->unk_14A |= 4;
            Camera_CopyModeValuesToPREG(camera, camera->mode);
        } else if (settingChangeSuccessful < -1) {
            // @BUG: This condition can never happen since settingChangeSuccesful is only ever 0 or 1.
            osSyncPrintf(VT_COL(RED, WHITE) "camera: error: illegal camera ID (%d) !! (%d|%d|%d)\n" VT_RST, camDataIdx, camera->thisIdx, 0x32, newCameraSetting);
        }
        return 0x80000000 | camDataIdx;
    }
}

Vec3s* Camera_GetDir(Vec3s* dst, Camera* camera) {
    if (gDbgCamEnabled != 0) {
        *dst = D_8015BD80.unk_10C6;
        return dst;
    } else {
        *dst = camera->direction;
        return dst;
    }
}

s16 Camera_GetDirPitch(Camera* camera){
    Vec3s dir;
    Camera_GetDir(&dir, camera);
    return dir.x;
}

s16 Camera_GetDirYaw(Camera* camera) {
    Vec3s dir;

    Camera_GetDir(&dir, camera);
    return dir.y;
}

Vec3s* Camera_GetRealDir(Vec3s* dst, Camera* camera) {
    if (gDbgCamEnabled != 0) {
        *dst = D_8015BD80.unk_10C6;
        return dst;
    } else {
        *dst = camera->realDir;
        return dst;
    }
}

s16 Camera_GetRealDirPitch(Camera* camera) {
    Vec3s realDir;

    Camera_GetRealDir(&realDir, camera);
    return realDir.x;
}

s16 Camera_GetRealDirYaw(Camera* camera) {
    Vec3s realDir;

    Camera_GetRealDir(&realDir, camera);
    return realDir.y;
}

s32 func_8005AA1C(Camera* camera, s32 arg1, s16 y, s32 countdown) {
    s16 quakeIdx;

    quakeIdx = Quake_Add(camera, 3);
    if (quakeIdx == 0) {
        return 0;
    }
    Quake_SetSpeed(quakeIdx, 0x61A8);
    Quake_SetQuakeValues(quakeIdx, y, 0, 0, 0);
    Quake_SetCountdown(quakeIdx, countdown);
    return 1;
}

s32 Camera_SetParam(Camera* camera, s32 param, void* value) {
    s32 pad[3];
    if (value != NULL) {
        switch (param) {
            case 1:
                camera->paramFlags &= ~(0x10 | 0x8 | 0x1);
                camera->at = *(Vec3f*)value;
                break;
            case 16:
                camera->paramFlags &= ~(0x10 | 0x8 | 0x1);
                camera->targetPosRot.pos = *(Vec3f*)value;
                break;
            case 8:
                if (camera->setting == CAM_SET_DEMOC || camera->setting == CAM_SET_DEMO4) {
                    break;
                }
                camera->target = (Actor*)value;
                camera->paramFlags &= ~(0x10 | 0x8 | 0x1);
                break;
            case 2:
                 camera->eye = camera->eyeNext = *(Vec3f*)value;
                break;
            case 4:
                camera->up = *(Vec3f*)value;
                break;
            case 0x40:
                camera->roll = DEGF_TO_BINANG(*(f32*)value);
                break;
            case 32:
                camera->fov = *(f32*)value;
                break;
            default:
                return false;
        }
        camera->paramFlags |= param;
    } else {
        return false;
    }
    return true;
}

s32 Camera_UnsetParam(Camera* camera, s16 param) {
    camera->paramFlags &= ~param;
    return true;
}

s32 func_8005AC48(Camera* camera, s16 arg1) {
    camera->unk_14C = arg1;
    return true;
}

s32 func_8005AC60(Camera* camera) {
    camera->animState = 0;
    return 1;
}

s32 func_8005AC6C(Camera* camera, CutsceneCameraPoint* atPoints, CutsceneCameraPoint* eyePoints, Player* player,
                  s16 relativeToPlayer) {
    PosRot playerPosRot;

    camera->atPoints = atPoints;
    camera->eyePoints = eyePoints;
    camera->unk_12C = relativeToPlayer;

    if (camera->unk_12C != 0) {
        camera->player = player;
        func_8002EF44(&playerPosRot, &player->actor);
        camera->playerPosRot = playerPosRot;

        camera->nextCamDataIdx = -1;
        camera->unk_D8 = 0.0f;
        camera->unk_E0 = 0.0f;
    }

    return 1;
}

s16 func_8005ACFC(Camera* camera, s16 arg1) {
    camera->unk_14C |= arg1;
    return camera->unk_14C;
}

s16 func_8005AD1C(Camera* camera, s16 arg1) {
    camera->unk_14C &= ~arg1;
    return camera->unk_14C;
}

s32 func_8005AD40(Camera* camera, Actor* doorActor, s16 camDataIdx, f32 arg3, s16 arg4, s16 arg5, s16 arg6) {
    PersonalizeParams* params = &camera->params.personalize;

    if ((camera->setting == CAM_SET_DEMO4) || (camera->setting == CAM_SET_DOORC)) {
        return 0;
    }

    params->actor = doorActor;
    params->unk_06 = arg4;
    params->unk_08 = arg5;
    params->unk_0A = arg6;
    params->unk_04 = camDataIdx;

    if (camDataIdx == -99) {
        Camera_CopyModeValuesToPREG(camera, camera->mode);
        return -99;
    }

    if (camDataIdx == -1) {
        Camera_ChangeSettingDefaultFlags(camera, CAM_SET_DOORC);
        osSyncPrintf(".... change default door camera (set %d)\n", CAM_SET_DOORC);
    } else {
        s32 setting = Camera_GetCamDataSetting(camera, camDataIdx);
        camera->unk_14A |= 0x40;

        if (Camera_ChangeSettingDefaultFlags(camera, setting) >= 0) {
            camera->camDataIdx = camDataIdx;
            camera->unk_14A |= 4;
        }

        osSyncPrintf("....change door camera ID %d (set %d)\n", camera->camDataIdx, camera->setting);
    }

    Camera_CopyModeValuesToPREG(camera, camera->mode);
    return -1;
}

s32 Camera_Copy(Camera* dstCamera, Camera* srcCamera) {
    s32 pad;

    dstCamera->posOffset.x = 0.0f;
    dstCamera->posOffset.y = 0.0f;
    dstCamera->posOffset.z = 0.0f;
    dstCamera->atLERPStepScale = 0.1f;
    dstCamera->at = srcCamera->at;

    dstCamera->eye = dstCamera->eyeNext = srcCamera->eye;

    dstCamera->dist = OLib_Vec3fDist(&dstCamera->at, &dstCamera->eye);
    dstCamera->fov = srcCamera->fov;
    dstCamera->roll = srcCamera->roll;
    func_80043B60(dstCamera);

    if (dstCamera->player != NULL) {
        func_8002EF14(&dstCamera->playerPosRot, &dstCamera->player->actor);
        dstCamera->posOffset.x = dstCamera->at.x - dstCamera->playerPosRot.pos.x;
        dstCamera->posOffset.y = dstCamera->at.y - dstCamera->playerPosRot.pos.y;
        dstCamera->posOffset.z = dstCamera->at.z - dstCamera->playerPosRot.pos.z;
        dstCamera->dist = OLib_Vec3fDist(&dstCamera->playerPosRot.pos, &dstCamera->eye);
        dstCamera->xzOffsetUpdateRate = 1.0f;
        dstCamera->yOffsetUpdateRate = 1.0f;
    }
    return true;
}

s32 Camera_GetDbgCamEnabled() {
    return gDbgCamEnabled;
}

Vec3f* Camera_GetSkyboxOffset(Vec3f* dst, Camera* camera) {
    *dst = camera->skyboxOffset;
    return dst;
}

void Camera_SetCameraData(Camera* camera, s16 setDataFlags, CutsceneCameraPoint* atPoints, CutsceneCameraPoint* eyePoints,
                          s16 relativeToPlayer, s16 arg5, UNK_TYPE arg6) {
    if (setDataFlags & 0x1) {
        camera->atPoints = atPoints;
    }

    if (setDataFlags & 0x2) {
        camera->eyePoints = eyePoints;
    }

    if (setDataFlags & 0x4) {
        camera->unk_12C = relativeToPlayer;
    }

    if (setDataFlags & 0x8) {
        camera->unk_12E = arg5;
    }

    if (setDataFlags & 0x10) {
        osSyncPrintf(VT_COL(RED, WHITE) "camera: setCameraData: last argument not alive!\n" VT_RST);
    }
}

s32 Camera_QRegInit() {
    if (!R_RELOAD_CAM_PARAMS) {
        QREG(2) = 1;
        QREG(10) = -1;
        QREG(11) = 100;
        QREG(12) = 80;
        QREG(20) = 90;
        QREG(21) = 10;
        QREG(22) = 10;
        QREG(23) = 50;
        QREG(24) = 6000;
        QREG(25) = 240;
        QREG(26) = 40;
        QREG(27) = 85;
        QREG(28) = 55;
        QREG(29) = 87;
        QREG(30) = 23;
        QREG(31) = 20;
        QREG(32) = 4;
        QREG(33) = 5;
        QREG(50) = 1;
        QREG(51) = 20;
        QREG(52) = 200;
        QREG(53) = 1;
        QREG(54) = 15;
        QREG(55) = 60;
        QREG(56) = 15;
        QREG(57) = 30;
        QREG(58) = 0;
    }

    QREG(65) = 50;
    return true;
}

s32 func_8005B198() {
    return D_8011D3AC;
}

s16 func_8005B1A4(Camera* camera) {
    camera->unk_14C |= 0x8;

    if ((camera->thisIdx == 0) && (camera->globalCtx->activeCamera != 0)) {
        camera->globalCtx->cameraPtrs[camera->globalCtx->activeCamera]->unk_14C |= 0x8;
        return camera->globalCtx->activeCamera;
    }

    return camera->thisIdx;
}
