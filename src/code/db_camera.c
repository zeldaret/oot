#include "global.h"

#define DEBUG_CAM_CONTROLLER_PORT 2

static PlayState* sPlay;

// TODO: cleanup these arrays and UB access
char* D_8012CEE0[] = { GFXP_KATAKANA "ｷ-ﾌﾚ-ﾑ" GFXP_HIRAGANA "ｶﾞ" };
char* D_8012CEE4 = GFXP_HIRAGANA "ﾀﾘﾏｾﾝ｡";
char* D_8012CEE8 = GFXP_HIRAGANA "ｻｲｾｲﾃﾞｷﾏｾﾝ";
char* D_8012CEEC = GFXP_HIRAGANA "ｻｲｾｲｼｭｳﾘｮｳ";
char* D_8012CEF0 = GFXP_HIRAGANA "ｻｲｾｲﾁｭｳ!";

char* D_8012CEF4 = "DEMO CAMERA TOOL";
char* D_8012CEF8[] = { GFXP_HIRAGANA "ﾓｳﾊｲﾘﾏｾﾝ", GFXP_HIRAGANA "ﾄｳﾛｸ   ﾃﾝﾒ", GFXP_HIRAGANA "ﾍﾝｺｳ   /  " };
char* D_8012CF04 = ">            >";
char* D_8012CF08 = "<            <";
char* D_8012CF0C = "<          >";
char* D_8012CF10 = GFXP_KATAKANA "*ﾌﾟﾚｲﾔ-*";
char* D_8012CF14 = GFXP_KATAKANA "Eﾓ-ﾄﾞ" GFXP_HIRAGANA " ｿｳﾀｲ";
char* D_8012CF18[] = { GFXP_KATAKANA "Eﾓ-ﾄﾞ" GFXP_HIRAGANA "ｾﾞｯﾀｲ", GFXP_HIRAGANA "ｶﾞﾒﾝ" GFXP_KATAKANA "   ﾃﾞﾓ",
                       GFXP_HIRAGANA "ｶﾞﾒﾝ   ﾌﾂｳ" };
char* D_8012CF24[] = { GFXP_HIRAGANA "Pｼﾞｶﾝ  MAX", GFXP_KATAKANA "ﾘﾝｸ" GFXP_HIRAGANA "    ｷｵｸ",
                       GFXP_KATAKANA "ﾘﾝｸ" GFXP_HIRAGANA "     ﾑｼ" };
char* D_8012CF30 = GFXP_HIRAGANA "*ﾐﾃﾙｲﾁ*";
char* D_8012CF34 = GFXP_KATAKANA "*ｶﾒﾗ" GFXP_HIRAGANA "ｲﾁ*";
char* D_8012CF38 = "DEBUG CAMERA";
char* D_8012CF3C = GFXP_KATAKANA "ｾﾝﾀ-/ﾛｯｸ";
char* D_8012CF40 = GFXP_KATAKANA "ｾﾝﾀ-/ﾌﾘ-";

char* D_8012CF44 = "DEMO CONTROL";
char* D_8012CF48 = GFXP_KATAKANA "ﾒﾓﾘ" GFXP_HIRAGANA "ｶﾞﾀﾘﾏｾﾝ";
char* D_8012CF4C = "p";
char* D_8012CF50[] = { "e", "s", "l", "c" };

char* D_8012CF60[] = { GFXP_KATAKANA "ﾒﾓﾘﾊﾟｯｸ" }; // "Mempak"
char* D_8012CF64 = GFXP_KATAKANA "ｾｰﾌﾞ";          // "Save"
char* D_8012CF68 = GFXP_KATAKANA "ﾛｰﾄﾞ";          // "Load"
char* D_8012CF6C = GFXP_KATAKANA "ｸﾘｱ-";          // "Clear"
char* D_8012CF70 = GFXP_HIRAGANA "ｦﾇｶﾅｲﾃﾞﾈ";

char* D_8012CF74 = "FREE      BYTE";
char* D_8012CF78 = "NEED      BYTE";
char* D_8012CF7C = GFXP_KATAKANA "*ﾒﾓﾘ-ﾊﾟｯｸ*";
char* D_8012CF80 = GFXP_HIRAGANA "ｦﾐﾂｹﾗﾚﾏｾﾝ";
char* D_8012CF84 = GFXP_KATAKANA "ﾌｧｲﾙ " GFXP_HIRAGANA "ｦ";
char* D_8012CF88[] = { GFXP_HIRAGANA "ｼﾃﾓｲｲﾃﾞｽｶ?", GFXP_HIRAGANA "ｹﾞﾝｻﾞｲﾍﾝｼｭｳﾁｭｳﾉ",
                       GFXP_KATAKANA "ﾌｧｲﾙ" GFXP_HIRAGANA "ﾊﾊｷｻﾚﾏｽ" };
char* D_8012CF94 = GFXP_HIRAGANA "ﾊｲ";
char* D_8012CF98 = GFXP_HIRAGANA "ｲｲｴ";
char* D_8012CF9C[] = { GFXP_HIRAGANA "ｼﾃｲﾏｽ", GFXP_HIRAGANA "ｳﾜｶﾞｷ" };
char* D_8012CFA4 = GFXP_HIRAGANA "ｼﾏｼﾀ";
char* D_8012CFA8 = "USE       BYTE";
char* D_8012CFAC = GFXP_HIRAGANA "ﾆｼｯﾊﾟｲ";

char* D_8012CFB0 = GFXP_KATAKANA "Eﾓ-ﾄﾞ" GFXP_HIRAGANA "  ｺﾃｲ";
char D_8012CFB4[] = GFXP_KATAKANA "ﾌﾚ-ﾑ       ";
char D_8012CFC4[] = GFXP_KATAKANA "ｷ-   /   ";
char D_8012CFD0[] = GFXP_HIRAGANA "(ｾﾝﾀ-ﾃﾝ)\0\0\0\0\0";
char D_8012CFE4[] = GFXP_HIRAGANA "(ｹﾞﾝﾃﾝ)\0\0\0\0\0\0";
char D_8012CFF8[] = GFXP_KATAKANA "(ﾌﾟﾚｲﾔ-)\0\0\0\0\0";
char D_8012D00C[] = GFXP_HIRAGANA "(ｲﾁｱﾜｾ)\0\0\0\0\0\0";
char D_8012D020[] = GFXP_HIRAGANA "(ｾｯﾃｲ)\0\0\0\0\0\0\0\0";
char D_8012D034[] = GFXP_HIRAGANA "(ｷｬｯｶﾝ)\0\0\0\0\0\0";
char D_8012D048[] = GFXP_KATAKANA "ﾎﾟｲﾝﾄNo.  \0\0\0";
char D_8012D05C[] = GFXP_HIRAGANA "ｶﾞｶｸ    \0\0\0";
char D_8012D070[] = GFXP_KATAKANA "Nﾌﾚ-ﾑ   \0\0\0\0";
char D_8012D084[] = GFXP_HIRAGANA "Zｶｲﾃﾝ   \0\0\0";
char D_8012D098[] = GFXP_KATAKANA "ﾓ-ﾄﾞ    \0\0\0\0";
char D_8012D0AC[] = "  R" GFXP_HIRAGANA "ﾁｭｳｼﾝ  \0\0\0";

char D_8012D0C0[] = GFXP_HIRAGANA "Pｼﾞｶﾝ       \0\0";
char D_8012D0D4[] = GFXP_HIRAGANA "ｷｮﾘ       \0";
char D_8012D0E4[] = GFXP_HIRAGANA "Xｶｲﾃﾝ       \0\0";
char D_8012D0F8[] = GFXP_HIRAGANA "Yｶｲﾃﾝ       \0\0";

#define ACTION_E 0
#define ACTION_SAVE 1
#define ACTION_LOAD 2
#define ACTION_CLEAR 3

#define MENU_INFO 0
#define MENU_CALLBACK 1
#define MENU_SUCCESS 2
#define MENU_ERROR 9

#define DEMO_CTRL_MENU(actionIdx, menuIdx) (actionIdx * 100 + menuIdx)

s32 DebugCamera_SaveCallback(char* c);
s32 DebugCamera_LoadCallback(char* c);
s32 DebugCamera_ClearCallback(char* c);
s32 DebugCamera_UpdateDemoControl(DebugCam* debugCam, Camera* cam);

static DebugCam* sDebugCamPtr;
static s16 D_8016110C;
static DebugCamAnim sDebugCamAnim;

Vec3f DebugCamera_AddVecGeoToVec3f(Vec3f* a, VecGeo* geo) {
    Vec3f sum;
    Vec3f b = OLib_VecGeoToVec3f(geo);

    sum.x = a->x + b.x;
    sum.y = a->y + b.y;
    sum.z = a->z + b.z;

    return sum;
}

/**
 * Calculates a new Up vector from the pitch, yaw, roll
 */
Vec3f DebugCamera_CalcUpFromPitchYawRoll(s16 pitch, s16 yaw, s16 roll) {
    f32 sinP = Math_SinS(pitch);
    f32 cosP = Math_CosS(pitch);
    f32 sinY = Math_SinS(yaw);
    f32 cosY = Math_CosS(yaw);
    f32 sinR = Math_SinS(-roll);
    f32 cosR = Math_CosS(-roll);
    Vec3f up;
    Vec3f baseUp;
    Vec3f u;
    Vec3f rollMtxRow1;
    Vec3f rollMtxRow2;
    Vec3f rollMtxRow3;

    // Axis to roll around
    u.x = cosP * sinY;
    u.y = sinP;
    u.z = cosP * cosY;

    // Up without roll
    baseUp.x = -sinP * sinY;
    baseUp.y = cosP;
    baseUp.z = -sinP * cosY;

    // Matrix to apply the roll to the Up vector without roll
    rollMtxRow1.x = ((1.0f - SQ(u.x)) * cosR) + SQ(u.x);
    rollMtxRow1.y = ((1.0f - cosR) * (u.x * u.y)) - (u.z * sinR);
    rollMtxRow1.z = ((1.0f - cosR) * (u.z * u.x)) + (u.y * sinR);

    rollMtxRow2.x = ((1.0f - cosR) * (u.x * u.y)) + (u.z * sinR);
    rollMtxRow2.y = ((1.0f - SQ(u.y)) * cosR) + SQ(u.y);
    rollMtxRow2.z = ((1.0f - cosR) * (u.y * u.z)) - (u.x * sinR);

    rollMtxRow3.x = ((1.0f - cosR) * (u.z * u.x)) - (u.y * sinR);
    rollMtxRow3.y = ((1.0f - cosR) * (u.y * u.z)) + (u.x * sinR);
    rollMtxRow3.z = ((1.0f - SQ(u.z)) * cosR) + SQ(u.z);

    // rollMtx * baseUp
    up.x = DOTXYZ(baseUp, rollMtxRow1);
    up.y = DOTXYZ(baseUp, rollMtxRow2);
    up.z = DOTXYZ(baseUp, rollMtxRow3);

    return up;
}

char* DebugCamera_SetTextValue(s16 value, char* str, u8 endIdx) {
    char* strIter;
    char sign;

    strIter = str + (s32)endIdx - 1;
    str[endIdx] = '\0';

    if (value >= 0) {
        sign = ' ';
    } else {
        sign = '-';
        value = -value;
    }

    do {

        // clang-format off
        *strIter-- = (value % 10) + '0'; value /= 10;
        // clang-format on

    } while (value != 0);

    if (sign == '-') {
        *strIter-- = sign;
    }

    while (strIter >= str) {
        *str++ = ' ';
    }

    return strIter;
}

void DebugCamera_Vec3SToF(Vec3s* in, Vec3f* out) {
    out->x = in->x;
    out->y = in->y;
    out->z = in->z;
}

void DebugCamera_Vec3FToS(Vec3f* in, Vec3s* out) {
    out->x = in->x;
    out->y = in->y;
    out->z = in->z;
}

void DebugCamera_CopyVec3f(Vec3f* in, Vec3f* out) {
    out->x = in->x;
    out->y = in->y;
    out->z = in->z;
}

void DebugCamera_Vec3SToF2(Vec3s* in, Vec3f* out) {
    out->x = in->x;
    out->y = in->y;
    out->z = in->z;
}

void func_800B3F94(PosRot* posRot, Vec3f* vec, Vec3s* out) {
    VecGeo geo;
    Vec3f tempVec;

    geo = OLib_Vec3fDiffToVecGeo(&posRot->pos, vec);
    geo.yaw -= posRot->rot.y;
    tempVec = OLib_VecGeoToVec3f(&geo);
    DebugCamera_Vec3FToS(&tempVec, out);
}

void func_800B3FF4(PosRot* posRot, Vec3f* vec, Vec3f* out) {
    VecGeo geo;
    Vec3f tempVec;

    DebugCamera_CopyVec3f(vec, &tempVec);
    geo = OLib_Vec3fToVecGeo(&tempVec);
    geo.yaw += posRot->rot.y;
    *out = DebugCamera_AddVecGeoToVec3f(&posRot->pos, &geo);
}

void func_800B404C(PosRot* posRot, Vec3s* vec, Vec3f* out) {
    Vec3f tempVec;

    DebugCamera_Vec3SToF(vec, &tempVec);
    func_800B3FF4(posRot, &tempVec, out);
}

s32 func_800B4088(DebugCam* debugCam, Camera* cam) {
    CutsceneCameraPoint* position;
    CutsceneCameraPoint* lookAt;
    s32 i;

    position = &debugCam->sub.position[debugCam->sub.unkIdx];
    lookAt = &debugCam->sub.lookAt[debugCam->sub.unkIdx];

    position->continueFlag = CS_CAM_STOP;
    lookAt->continueFlag = position->continueFlag;
    position->nextPointFrame = 0;
    lookAt->nextPointFrame = 30;
    lookAt->cameraRoll = position->cameraRoll = debugCam->roll * (360.0f / 256.0f);
    lookAt->viewAngle = position->viewAngle = debugCam->fov;

    if (debugCam->sub.mode != 1) {
        DebugCamera_Vec3FToS(&debugCam->eye, &position->pos);
        DebugCamera_Vec3FToS(&debugCam->at, &lookAt->pos);
    } else {
        func_800B3F94(&cam->playerPosRot, &debugCam->at, &lookAt->pos);
        func_800B3F94(&cam->playerPosRot, &debugCam->eye, &position->pos);
    }

    for (i = 0; i < (debugCam->sub.nPoints - 2); i++) {
        debugCam->sub.position[i].continueFlag = debugCam->sub.lookAt[i].continueFlag = CS_CAM_CONTINUE;
    }

    debugCam->sub.position[i].continueFlag = debugCam->sub.lookAt[i].continueFlag = CS_CAM_STOP;

    return debugCam->sub.unkIdx;
}

s16 func_800B41DC(DebugCam* debugCam, s16 idx, Camera* cameraPtr) {
    CutsceneCameraPoint* position = &debugCam->sub.position[idx];
    CutsceneCameraPoint* lookAt = &debugCam->sub.lookAt[idx];

    if (debugCam->sub.mode != 1) {
        DebugCamera_Vec3SToF2(&position->pos, &debugCam->eye);
        DebugCamera_Vec3SToF2(&lookAt->pos, &debugCam->at);
    } else {
        func_800B404C(&cameraPtr->playerPosRot, &lookAt->pos, &debugCam->at);
        func_800B404C(&cameraPtr->playerPosRot, &position->pos, &debugCam->eye);
    }

    debugCam->roll = lookAt->cameraRoll;
    debugCam->rollDegrees = debugCam->roll * (360.0f / 256.0f);
    debugCam->fov = lookAt->viewAngle;
    return idx;
}

s32 func_800B42C0(DebugCam* debugCam, Camera* cameraPtr) {

    CutsceneCameraPoint* position = &debugCam->sub.position[debugCam->sub.unkIdx];
    CutsceneCameraPoint* lookAt = &debugCam->sub.lookAt[debugCam->sub.unkIdx];

    position->continueFlag = lookAt->continueFlag = CS_CAM_CONTINUE;

    if (debugCam->sub.mode != 1) {
        DebugCamera_Vec3FToS(&debugCam->eye, &position->pos);
        DebugCamera_Vec3FToS(&debugCam->at, &lookAt->pos);
    } else {
        func_800B3F94(&cameraPtr->playerPosRot, &debugCam->at, &lookAt->pos);
        func_800B3F94(&cameraPtr->playerPosRot, &debugCam->eye, &position->pos);
    }

    return debugCam->sub.unkIdx;
}

s32 func_800B4370(DebugCam* debugCam, s16 idx, Camera* cam) {
    CutsceneCameraPoint* lookAt = &debugCam->sub.lookAt[idx];
    CutsceneCameraPoint* position = &debugCam->sub.position[idx];
    VecGeo geo;
    Vec3f at;

    if (debugCam->sub.mode != 1) {
        if (debugCam->sub.unk_0C) {
            DebugCamera_Vec3SToF2(&position->pos, &debugCam->at);
        } else {
            DebugCamera_Vec3SToF2(&lookAt->pos, &debugCam->at);
        }
    } else {
        if (debugCam->sub.unk_0C) {
            func_800B404C(&cam->playerPosRot, &position->pos, &at);
        } else {
            func_800B404C(&cam->playerPosRot, &lookAt->pos, &at);
        }
        debugCam->at = at;
    }
    geo.pitch = 0x2000;
    geo.yaw -= 0x7FFF;
    geo.r = 250.0f;
    debugCam->eye = DebugCamera_AddVecGeoToVec3f(&debugCam->at, &geo);
    debugCam->roll = lookAt->cameraRoll;
    debugCam->rollDegrees = debugCam->roll * (360.0f / 256.0f);
    debugCam->fov = lookAt->viewAngle;
    return idx;
}

void func_800B44E0(DebugCam* debugCam, Camera* cam) {
    s32 i;

    if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_CRIGHT)) {
        sDebugCamAnim.keyframe = 0;
        sDebugCamAnim.unk_0A = 1;
        sDebugCamAnim.curFrame = 0.0f;
        sDebugCamAnim.unk_04 = 0;

        for (i = 0; i < (debugCam->sub.nPoints - 2); i++) {
            debugCam->sub.position[i].continueFlag = debugCam->sub.lookAt[i].continueFlag = CS_CAM_CONTINUE;
        }

        debugCam->sub.position[i].continueFlag = debugCam->sub.lookAt[i].continueFlag = CS_CAM_STOP;
    }

    if (debugCam->sub.nPoints < 6) {
        if (sDebugCamAnim.unk_0A != 0) {
            Audio_PlaySfxGeneral(NA_SE_SY_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            sDebugCamAnim.unk_0A = 0;
        }
        DebugCamera_ScreenTextColored(17, 23, DEBUG_CAM_TEXT_ORANGE, D_8012CEE0[0]);
        DebugCamera_ScreenTextColored(18, 24, DEBUG_CAM_TEXT_ORANGE, D_8012CEE4);
        DebugCamera_ScreenTextColored(16, 26, DEBUG_CAM_TEXT_PEACH, D_8012CEE8);
        return;
    }

    if (!func_800BB2B4(&sDebugCamAnim.positionPos, &sDebugCamAnim.roll, &sDebugCamAnim.fov, debugCam->sub.position,
                       &sDebugCamAnim.keyframe, &sDebugCamAnim.curFrame) &&
        !func_800BB2B4(&sDebugCamAnim.lookAtPos, &sDebugCamAnim.roll, &sDebugCamAnim.fov, debugCam->sub.lookAt,
                       &sDebugCamAnim.keyframe, &sDebugCamAnim.curFrame) &&
        sDebugCamAnim.unk_0A == 1) {
        Audio_PlaySfxGeneral(NA_SE_SY_HP_RECOVER, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        sDebugCamAnim.unk_04++;

        if (debugCam->sub.nFrames > 0 && debugCam->sub.nFrames < sDebugCamAnim.unk_04) {
            sDebugCamAnim.unk_0A = 0;
            DebugCamera_ScreenTextColored(15, 26, DEBUG_CAM_TEXT_PEACH, D_8012CEEC);
        }

        if (debugCam->sub.mode != 1) {
            DebugCamera_CopyVec3f(&sDebugCamAnim.positionPos, &debugCam->eye);
            DebugCamera_CopyVec3f(&sDebugCamAnim.lookAtPos, &debugCam->at);
        } else {
            func_800B3FF4(&cam->playerPosRot, &sDebugCamAnim.lookAtPos, &debugCam->at);
            func_800B3FF4(&cam->playerPosRot, &sDebugCamAnim.positionPos, &debugCam->eye);
        }

        debugCam->fov = sDebugCamAnim.fov;
        debugCam->roll = sDebugCamAnim.roll;
        debugCam->rollDegrees = sDebugCamAnim.roll * (360.0f / 256.0f);

        DebugCamera_SetTextValue(sDebugCamAnim.unk_04, &D_8012CFB4[8], 4);
        DebugCamera_ScreenTextColored(16, 23, DEBUG_CAM_TEXT_ORANGE, D_8012CFB4);
        D_8012CFC4[5] = ((sDebugCamAnim.keyframe + 1) / 10) + '0';
        D_8012CFC4[6] = ((sDebugCamAnim.keyframe + 1) % 10) + '0';
        D_8012CFC4[8] = ((debugCam->sub.nPoints - 5) / 10) + '0';
        D_8012CFC4[9] = ((debugCam->sub.nPoints - 5) % 10) + '0';
        DebugCamera_ScreenTextColored(16, 24, DEBUG_CAM_TEXT_ORANGE, D_8012CFC4);
        DebugCamera_ScreenTextColored(16, 26, DEBUG_CAM_TEXT_PEACH, D_8012CEF0);
        return;
    }

    sDebugCamAnim.unk_0A = 0;
    DebugCamera_ScreenTextColored(15, 26, DEBUG_CAM_TEXT_PEACH, D_8012CEEC);
}

void DebugCamera_PrintPoints(const char* name, s16 count, CutsceneCameraPoint* points) {
    s32 i;

    osSyncPrintf("@@@static SplinedatZ  %s[] = {\n", name);
    for (i = 0; i < count; i++) {
        osSyncPrintf("@@@    /* key frame %2d */ {\n", i);
        osSyncPrintf("@@@    /*     code     */ %d,\n", points[i].continueFlag);
        osSyncPrintf("@@@    /*     z        */ %d,\n", points[i].cameraRoll);
        osSyncPrintf("@@@    /*     T        */ %d,\n", points[i].nextPointFrame);
        osSyncPrintf("@@@    /*     zoom     */ %f,\n", points[i].viewAngle);
        osSyncPrintf("@@@    /*     pos      */ { %d, %d, %d }\n", points[i].pos.x, points[i].pos.y, points[i].pos.z);
        osSyncPrintf("@@@    },\n");
    }
    osSyncPrintf("@@@};\n@@@\n");
}

void DebugCamera_PrintF32Bytes(f32 value) {
    f32 b = value;
    char* a = (char*)&b;

    osSyncPrintf("\n@@@%d,%d,%d,%d,", a[0], a[1], a[2], a[3]);
}

void DebugCamera_PrintU16Bytes(u16 value) {
    u16 pad;
    u16 b = value;
    char* a = (char*)&b;

    osSyncPrintf("\n@@@%d,%d,", a[0], a[1]);
}

void DebugCamera_PrintS16Bytes(s16 value) {
    u16 pad;
    s16 b = value;
    char* a = (char*)&b;

    osSyncPrintf("\n@@@%d,%d,", a[0], a[1]);
}

void DebugCamera_PrintCutBytes(DebugCamCut* cut) {
    CutsceneCameraPoint* point;
    CutsceneCameraPoint* points;
    s32 i;

    points = cut->lookAt;
    osSyncPrintf("\n@@@ 0,0,0,2,\t/* Look Camera\t*/");
    osSyncPrintf("\n@@@ 0,1,\t/* dousa\t*/");

    osSyncPrintf("\n@@@ 0,0,\t/* Start Flame\t*/");
    DebugCamera_PrintU16Bytes(cut->nFrames);
    osSyncPrintf("\t/*  End   Flame\t*/");

    osSyncPrintf("\n@@@0,0,\t/*  Dammy\t*/\n@@@ ");
    for (i = 0; i < cut->nPoints; i++) {
        point = points + i;
        osSyncPrintf("\n@@@    %d, /*     code     */", point->continueFlag);
        osSyncPrintf("\n@@@    %d,  /*     z        */", point->cameraRoll);
        DebugCamera_PrintU16Bytes(point->nextPointFrame);
        osSyncPrintf("\t/*  sokudo\t*/");
        DebugCamera_PrintF32Bytes(point->viewAngle);
        osSyncPrintf("\t/*  zoom\t*/");
        DebugCamera_PrintS16Bytes(point->pos.x);
        osSyncPrintf("\t/*  x pos\t*/");
        DebugCamera_PrintS16Bytes(point->pos.y);
        osSyncPrintf("\t/*  y pos\t*/");
        DebugCamera_PrintS16Bytes(point->pos.z);
        osSyncPrintf("\t/*  z pos\t*/\n");
        osSyncPrintf("\n@@@0,0,\t/*  Dammy\t*/\n@@@ ");
    }

    points = cut->position;
    osSyncPrintf("\n@@@ 0,0,0,1,\t/* Position Camera */");
    osSyncPrintf("\n@@@ 0,1,\t/* dousa\t*/");

    osSyncPrintf("\n@@@ 0,0,\t/* Start Flame\t*/");
    DebugCamera_PrintU16Bytes(cut->nFrames);
    osSyncPrintf("\t/*  End   Flame\t*/");

    osSyncPrintf("\n@@@0,0,\t/*  Dammy\t*/\n@@@ ");
    for (i = 0; i < cut->nPoints; i++) {
        point = points + i;
        osSyncPrintf("\n@@@    %d, /*     code     */", point->continueFlag);
        osSyncPrintf("\n@@@    %d, /*     z        */", point->cameraRoll);
        DebugCamera_PrintU16Bytes(point->nextPointFrame);
        osSyncPrintf("\t/*  sokudo\t*/");
        DebugCamera_PrintF32Bytes(point->viewAngle);
        osSyncPrintf("\t/*  zoom\t*/");
        DebugCamera_PrintS16Bytes(point->pos.x);
        osSyncPrintf("\t/*  x pos\t*/");
        DebugCamera_PrintS16Bytes(point->pos.y);
        osSyncPrintf("\t/*  y pos\t*/");
        DebugCamera_PrintS16Bytes(point->pos.z);
        osSyncPrintf("\t/*  z pos\t*/");
        osSyncPrintf("\n@@@0,0,\t/*  Dammy\t*/\n@@@ ");
    }
}

void DebugCamera_Init(DebugCam* debugCam, Camera* cameraPtr) {
    debugCam->sub.unk_104A.z = 0;
    debugCam->unk_44 = 0;
    debugCam->unk_00 = 0;
    debugCam->unk_34 = 0;
    debugCam->unk_3C = false;
    debugCam->unk_38 = -1;
    debugCam->unk_40 = -1;
    debugCam->roll = 0;
    debugCam->sub.unk_104A.y = debugCam->sub.unk_104A.z;
    debugCam->sub.unk_104A.x = debugCam->sub.unk_104A.z;
    debugCam->fov = 0.0f;
    debugCam->rollDegrees = 0.0f;
    sPlay = cameraPtr->play;
    debugCam->sub.mode = 0;
    debugCam->sub.nFrames = -1;
    debugCam->sub.nPoints = 1;
    debugCam->sub.unkIdx = 0;
    debugCam->sub.unk_08 = 0;
    debugCam->sub.unk_0A = 0;
    debugCam->unk_78 = 0;
    debugCam->unk_7A = 0;
    debugCam->sub.demoCtrlMenu = DEMO_CTRL_MENU(ACTION_E, MENU_INFO);
    debugCam->sub.demoCtrlActionIdx = ACTION_E;
    debugCam->sub.demoCtrlToggleSwitch = 0;
    debugCam->unk_6C.x = 0;
    debugCam->unk_6C.y = 0;
    debugCam->unk_6C.z = 0;
}

void DebugCamera_Enable(DebugCam* debugCam, Camera* cam) {
    debugCam->at = cam->at;
    debugCam->eye = cam->eye;
    debugCam->unk_1C = cam->up;
    debugCam->fov = cam->fov;
    debugCam->roll = 0;
    debugCam->sub.nPoints = 1;
    debugCam->sub.unkIdx = 0;
    debugCam->sub.unk_08 = 0;
    debugCam->sub.unk_0A = 1;
    debugCam->sub.unk_0C = true;
    debugCam->unk_78 = 0;
    debugCam->unk_7A = 0;
    debugCam->rollDegrees = 0.0f;
    func_800B4088(debugCam, cam);
}

void DebugCamera_Update(DebugCam* debugCam, Camera* cam) {
    static s32 D_8012D10C = 100;
    static s32 D_8012D110 = 0;
    static s32 D_80161140; // bool
    static s32 D_80161144; // bool
    Vec3f* sp124;
    f32 temp_f0_5;
    s16 yaw;
    f32 new_var2;
    f32 temp_f2;
    s16 pitch;
    char sp111;
    char sp110;
    f32 temp_f2_2;
    VecGeo sp104;
    VecGeo spFC;
    VecGeo spF4;
    PosRot* temp_s6;
    UNUSED Vec3f* eye;
    UNUSED Vec3f* at;
    Vec3f* phi_s0;
    Vec3f spD8;
    s32 pad;
    Vec3f* sp90;
    Vec3f* sp80;
    Vec3f* sp7C;
    s32 i;
    Vec3f spB8;
    Vec3f spAC;
    s16 spAA;
    VecGeo spA0;

    sp90 = &debugCam->unk_54;
    temp_s6 = &cam->playerPosRot;
    at = &cam->at;
    eye = &cam->eye;
    *sp90 = temp_s6->pos;
    debugCam->unk_60 = cam->at;
    sp80 = &debugCam->eye;
    sp7C = &debugCam->at;

    if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_Z)) {
        debugCam->unk_00++;
        debugCam->unk_00 %= 3;
        debugCam->unk_38 = 1;
        debugCam->unk_44 = 0;
        debugCam->unk_40 = -1;
        debugCam->sub.demoCtrlActionIdx = 0;
        sDebugCamAnim.unk_0A = 0;
        Audio_PlaySfxGeneral(NA_SE_SY_LOCK_ON, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    } else if (debugCam->unk_38 == -1) {
        debugCam->unk_38 = 1;
    } else {
        debugCam->unk_38 = 0;
    }

    switch (debugCam->unk_00) {
        case 0:
            switch (debugCam->unk_78) {
                case 0:
                    sp124 = &debugCam->unk_60;
                    D_80161144 = false;
                    D_80161140 = false;
                    break;
                case 1:
                    sp124 = &debugCam->unk_6C;
                    D_80161144 = false;
                    D_80161140 = false;
                    break;
                case 2:
                    sp124 = &debugCam->unk_54;
                    D_80161144 = false;
                    D_80161140 = true;
                    break;
            }
            break;
        case 1:
            switch (debugCam->sub.unk_08) {
                case 0:
                    D_80161144 = debugCam->sub.unk_0C;
                    if (D_80161144) {
                        sp124 = sp80;
                    } else {
                        sp124 = sp7C;
                    }
                    D_80161140 = false;
                    break;
                case 1:
                    D_80161144 = debugCam->sub.unk_0C;
                    if (D_80161144) {
                        sp124 = sp80;
                    } else {
                        sp124 = sp7C;
                    }
                    D_80161140 = false;
                    break;
                case 2:
                    D_80161144 = false;
                    D_80161140 = true;
                    sp124 = sp7C;
                    break;
            }
            break;
        case 2:
            DebugCamera_UpdateDemoControl(debugCam, cam);
            return;
        default:
            break;
    }
    phi_s0 = sp124;

    if (!D_80161144) {
        sp104 = OLib_Vec3fDiffToVecGeo(sp7C, sp80);
    } else {
        sp104 = OLib_Vec3fDiffToVecGeo(sp80, sp7C);
    }

    if (debugCam->unk_44 > 100) {
        debugCam->unk_44 = 100;
    }

    new_var2 = ((debugCam->unk_44 * 0.15f) + 0.2f);
    temp_f2 = new_var2 * (sp104.r / 100.0f);
    if ((debugCam->unk_38 != 0) || debugCam->unk_3C) {
        if (D_80161144) {
            *sp80 = *phi_s0;
        } else {
            *sp7C = *phi_s0;
        }

        debugCam->unk_3C = D_80161140;
        if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_B | BTN_L)) {
            sp104.r += temp_f2;

            if (sp104.r > 30000.0f) {
                sp104.r = 30000.0f;
            }

            if (debugCam->unk_40 == 7) {
                debugCam->unk_44++;
            } else {
                debugCam->unk_44 = 0;
            }

            debugCam->unk_40 = 7;
        } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_B)) {
            spFC = sp104;
            spFC.r = temp_f2;
            if (!D_80161144) {
                spFC.yaw = sp104.yaw;
                *sp7C = DebugCamera_AddVecGeoToVec3f(sp7C, &spFC);
            } else {
                spFC.pitch = -spFC.pitch;
                spFC.yaw = sp104.yaw - 0x7FFF;
                *sp80 = DebugCamera_AddVecGeoToVec3f(sp80, &spFC);
            }
            if (debugCam->unk_40 == 0xB) {
                debugCam->unk_44++;
            } else {
                debugCam->unk_44 = 0;
            }
            debugCam->unk_40 = 0xB;
        } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_A | BTN_L)) {
            sp104.r -= temp_f2;
            if (sp104.r < 10.0f) {
                sp104.r = 10.0f;
            }
            if (debugCam->unk_40 == 8) {
                debugCam->unk_44++;
            } else {
                debugCam->unk_44 = 0;
            }
            debugCam->unk_40 = 8;
        } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_A)) {
            spFC = sp104;
            spFC.r = -temp_f2;
            if (!D_80161144) {
                spFC.yaw = sp104.yaw;
                *sp7C = DebugCamera_AddVecGeoToVec3f(sp7C, &spFC);
            } else {
                spFC.pitch = -spFC.pitch;
                spFC.yaw = sp104.yaw - 0x7FFF;
                *sp80 = DebugCamera_AddVecGeoToVec3f(sp80, &spFC);
            }
            if (debugCam->unk_40 == 0xC) {
                debugCam->unk_44++;
            } else {
                debugCam->unk_44 = 0;
            }
            debugCam->unk_40 = 0xC;
        } else {
            debugCam->unk_44 = 0;
            debugCam->unk_40 = -1;
        }

    } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_DDOWN | BTN_L)) {
        spFC = sp104;
        spFC.r = temp_f2;
        spFC.pitch = 0;
        if (!D_80161144) {
            spFC.yaw = sp104.yaw;
            *sp7C = DebugCamera_AddVecGeoToVec3f(sp7C, &spFC);
        } else {
            spFC.yaw = sp104.yaw - 0x7FFF;
            *sp80 = DebugCamera_AddVecGeoToVec3f(sp80, &spFC);
        }

        if (debugCam->unk_40 == 1) {
            debugCam->unk_44++;
        } else {
            debugCam->unk_44 = 0;
        }
        debugCam->unk_40 = 1;
    } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_DUP | BTN_L)) {
        spFC = sp104;
        spFC.r = -temp_f2;
        spFC.pitch = 0;
        if (!D_80161144) {
            spFC.yaw = sp104.yaw;
            *sp7C = DebugCamera_AddVecGeoToVec3f(sp7C, &spFC);
        } else {
            spFC.yaw = sp104.yaw - 0x7FFF;
            *sp80 = DebugCamera_AddVecGeoToVec3f(sp80, &spFC);
        }
        if (debugCam->unk_40 == 2) {
            debugCam->unk_44++;
        } else {
            debugCam->unk_44 = 0;
        }
        debugCam->unk_40 = 2;
    } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_DUP)) {
        spFC = sp104;
        spFC.r = temp_f2;
        spFC.pitch = 0x3FFF;
        spFC.yaw = sp104.yaw;
        if (!D_80161144) {
            *sp7C = DebugCamera_AddVecGeoToVec3f(sp7C, &spFC);
        } else {
            *sp80 = DebugCamera_AddVecGeoToVec3f(sp80, &spFC);
        }
        if (debugCam->unk_40 == 3) {
            debugCam->unk_44++;
        } else {
            debugCam->unk_44 = 0;
        }
        debugCam->unk_40 = 3;
    } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_DDOWN)) {
        spFC = sp104;
        spFC.r = temp_f2;
        spFC.pitch = -0x3FFF;
        spFC.yaw = sp104.yaw;
        if (!D_80161144) {
            *sp7C = DebugCamera_AddVecGeoToVec3f(sp7C, &spFC);
        } else {
            *sp80 = DebugCamera_AddVecGeoToVec3f(sp80, &spFC);
        }
        if (debugCam->unk_40 == 4) {
            debugCam->unk_44++;
        } else {
            debugCam->unk_44 = 0;
        }
        debugCam->unk_40 = 4;
    } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, (BTN_DRIGHT | BTN_L)) ||
               CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_DRIGHT)) {
        spFC = sp104;
        spFC.r = temp_f2;
        spFC.pitch = 0;
        if (!D_80161144) {
            spFC.yaw = sp104.yaw + 0x3FFF;
            *sp7C = DebugCamera_AddVecGeoToVec3f(sp7C, &spFC);
        } else {
            spFC.yaw = sp104.yaw - 0x3FFF;
            *sp80 = DebugCamera_AddVecGeoToVec3f(sp80, &spFC);
        }
        if (debugCam->unk_40 == 5) {
            debugCam->unk_44++;
        } else {
            debugCam->unk_44 = 0;
        }
        debugCam->unk_40 = 5;
    } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, (BTN_DLEFT | BTN_L)) ||
               CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_DLEFT)) {
        spFC = sp104;
        spFC.r = temp_f2;
        spFC.pitch = 0;
        if (!D_80161144) {
            spFC.yaw = sp104.yaw - 0x3FFF;
            *sp7C = DebugCamera_AddVecGeoToVec3f(sp7C, &spFC);
        } else {
            spFC.yaw = sp104.yaw + 0x3FFF;
            *sp80 = DebugCamera_AddVecGeoToVec3f(sp80, &spFC);
        }
        if (debugCam->unk_40 == 6) {
            debugCam->unk_44++;
        } else {
            debugCam->unk_44 = 0;
        }
        debugCam->unk_40 = 6;
    } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_B | BTN_L)) {
        sp104.r = sp104.r + temp_f2;
        if (sp104.r > 30000.0f) {
            sp104.r = 30000.0f;
        }
        if (debugCam->unk_40 == 7) {
            debugCam->unk_44++;
        } else {
            debugCam->unk_44 = 0;
        }
        debugCam->unk_40 = 7;
    } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_B)) {
        spFC = sp104;
        spFC.r = temp_f2;
        if (!D_80161144) {
            spFC.yaw = sp104.yaw;
            *sp7C = DebugCamera_AddVecGeoToVec3f(sp7C, &spFC);
        } else {
            spFC.pitch = -spFC.pitch;
            spFC.yaw = sp104.yaw - 0x7FFF;
            *sp80 = DebugCamera_AddVecGeoToVec3f(sp80, &spFC);
        }
        if (debugCam->unk_40 == 0xB) {
            debugCam->unk_44++;
        } else {
            debugCam->unk_44 = 0;
        }
        debugCam->unk_40 = 0xB;
    } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_A | BTN_L)) {

        sp104.r -= temp_f2;
        if (sp104.r < 10.0f) {
            sp104.r = 10.0f;
        }
        if (debugCam->unk_40 == 8) {
            debugCam->unk_44++;
        } else {
            debugCam->unk_44 = 0;
        }
        debugCam->unk_40 = 8;
    } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_A)) {
        spFC = sp104;
        spFC.r = -temp_f2;
        if (!D_80161144) {
            spFC.yaw = sp104.yaw;
            *sp7C = DebugCamera_AddVecGeoToVec3f(sp7C, &spFC);
        } else {
            spFC.pitch = -spFC.pitch;
            spFC.yaw = sp104.yaw - 0x7FFF;
            *sp80 = DebugCamera_AddVecGeoToVec3f(sp80, &spFC);
        }
        if (debugCam->unk_40 == 0xC) {
            debugCam->unk_44++;
        } else {
            debugCam->unk_44 = 0;
        }
        debugCam->unk_40 = 0xC;
    } else {
        debugCam->unk_44 = 0;
        debugCam->unk_40 = -1;
    }

    if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_R)) {
        if (debugCam->unk_00 == 0) {
            debugCam->sub.unk_104A = cam->inputDir;
            *sp7C = cam->at;
            *sp80 = cam->eye;
            debugCam->unk_1C.x = 0.0f;
            debugCam->unk_1C.z = 0.0f;
            debugCam->unk_1C.y = 1.0f;
        } else if (debugCam->sub.unk_08 == 2) {
            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            debugCam->sub.unk_08 = 0;
            func_800B41DC(debugCam, debugCam->sub.unkIdx, cam);
        } else {

            if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_R) &&
                CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_L)) {
                Audio_PlaySfxGeneral(NA_SE_SY_CANCEL, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                debugCam->sub.nPoints = debugCam->sub.unkIdx + 1;
                func_800B4088(debugCam, cam);
            } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_R)) {
                if (debugCam->sub.unkIdx == 0x80) {
                    Audio_PlaySfxGeneral(NA_SE_SY_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                } else {
                    Audio_PlaySfxGeneral(NA_SE_IT_SWORD_PUTAWAY, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    func_800B42C0(debugCam, cam);
                    if (debugCam->sub.unkIdx == (debugCam->sub.nPoints - 1)) {
                        debugCam->sub.unkIdx++;
                        debugCam->sub.nPoints++;
                        func_800B4088(debugCam, cam);
                    }
                }
            }
        }
    } else {
        temp_f0_5 = sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].rel.stick_y;
        temp_f2_2 = sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].rel.stick_x;
        pitch = CAM_DEG_TO_BINANG((SQ(temp_f0_5) / 600.0f) * 0.8f);
        yaw = CAM_DEG_TO_BINANG((SQ(temp_f2_2) / 600.0f) * 0.8f);
        if (!D_80161144) {
            sp104.pitch += (s16)((temp_f0_5 >= 0.0f) ? pitch : -pitch);
            sp104.yaw += (s16)((temp_f2_2 >= 0.0f) ? yaw : -yaw);
            *sp80 = DebugCamera_AddVecGeoToVec3f(sp7C, &sp104);
            debugCam->sub.unk_104A.x = -sp104.pitch;
            debugCam->sub.unk_104A.y = sp104.yaw - 0x7FFF;
        } else {
            sp104.pitch += (s16)((temp_f0_5 >= 0.0f) ? -pitch : pitch);
            sp104.yaw += (s16)((temp_f2_2 >= 0.0f) ? -yaw : yaw);
            *sp7C = DebugCamera_AddVecGeoToVec3f(sp80, &sp104);
            debugCam->sub.unk_104A.x = sp104.pitch;
            debugCam->sub.unk_104A.y = sp104.yaw;
        }

        spF4 = OLib_Vec3fDiffToVecGeo(sp80, sp7C);
        debugCam->unk_1C =
            DebugCamera_CalcUpFromPitchYawRoll(spF4.pitch, spF4.yaw, CAM_DEG_TO_BINANG(debugCam->rollDegrees));
        if (debugCam->unk_00 == 1) {
            if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_CRIGHT)) {
                cam->inputDir = debugCam->sub.unk_104A;
                new_var2 = OLib_Vec3fDist(&cam->at, &cam->eye);
                cam->at = *sp7C;
                spFC = sp104;
                spFC.r = new_var2;
                cam->eye = DebugCamera_AddVecGeoToVec3f(&cam->at, &spFC);
            }
        }
    }

    if (debugCam->unk_00 == 1) {
        OREG(0) = 8;
        DebugCamera_ScreenTextColored(12, 5, DEBUG_CAM_TEXT_YELLOW, D_8012CEF4);
        if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_CRIGHT) &&
            !CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_L)) {
            func_800B44E0(debugCam, cam);
        } else {
            if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_CRIGHT) &&
                CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_L)) {
                Audio_PlaySfxGeneral(NA_SE_SY_GET_RUPY, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                osSyncPrintf("@@@\n@@@\n@@@/* *** spline point data ** start here *** */\n@@@\n");
                DebugCamera_PrintPoints("Lookat", debugCam->sub.nPoints, debugCam->sub.lookAt);
                DebugCamera_PrintPoints("Position", debugCam->sub.nPoints, debugCam->sub.position);
                osSyncPrintf("@@@static short  nPoints = %d;\n@@@\n", debugCam->sub.nPoints);
                osSyncPrintf("@@@static short  nFrames = %d;\n@@@\n", debugCam->sub.nFrames);
                osSyncPrintf("@@@static short  Mode = %d;\n@@@\n", debugCam->sub.mode);
                osSyncPrintf("@@@\n@@@\n@@@/* *** spline point data ** finish! *** */\n@@@\n");
            } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_CLEFT)) {
                Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                debugCam->sub.unk_08 = (debugCam->sub.unk_08 + 1) % 3;
            }

            if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_CUP) &&
                CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_L)) {
                Audio_PlaySfxGeneral(NA_SE_IT_SWORD_IMPACT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                if (debugCam->sub.unkIdx > 0) {
                    debugCam->sub.unkIdx--;
                } else {
                    debugCam->sub.unkIdx = debugCam->sub.nPoints - 1;
                }
            } else {
                if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_CUP)) {
                    Audio_PlaySfxGeneral(NA_SE_IT_SWORD_IMPACT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    if (debugCam->sub.unkIdx > 0) {
                        debugCam->sub.unkIdx--;
                    } else {
                        debugCam->sub.unkIdx = debugCam->sub.nPoints - 1;
                    }
                    if ((debugCam->sub.unk_08 == 2) && (debugCam->sub.unkIdx != (debugCam->sub.nPoints - 1))) {
                        func_800B4370(debugCam, debugCam->sub.unkIdx, cam);
                        debugCam->roll = 0;
                        debugCam->fov = 60.0f;
                        debugCam->rollDegrees = 0;
                    } else {
                        func_800B41DC(debugCam, debugCam->sub.unkIdx, cam);
                        debugCam->fov = debugCam->sub.lookAt[debugCam->sub.unkIdx].viewAngle;
                        debugCam->roll = debugCam->sub.lookAt[debugCam->sub.unkIdx].cameraRoll;
                        debugCam->rollDegrees = debugCam->roll * 1.40625f;
                    }
                }
            }
            if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_L) &&
                CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_CDOWN)) {
                Audio_PlaySfxGeneral(NA_SE_IT_SWORD_IMPACT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                if (debugCam->sub.unkIdx < (debugCam->sub.nPoints - 1)) {
                    debugCam->sub.unkIdx++;
                } else {
                    debugCam->sub.unkIdx = 0;
                }
            } else {
                if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_CDOWN)) {
                    Audio_PlaySfxGeneral(NA_SE_IT_SWORD_IMPACT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    if (debugCam->sub.unkIdx < (debugCam->sub.nPoints - 1)) {
                        debugCam->sub.unkIdx++;
                    } else {
                        debugCam->sub.unkIdx = 0;
                    }

                    if ((debugCam->sub.unk_08 == 2) && (debugCam->sub.unkIdx != (debugCam->sub.nPoints - 1))) {
                        func_800B4370(debugCam, debugCam->sub.unkIdx, cam);
                        debugCam->roll = 0;
                        debugCam->fov = 60.0f;
                        debugCam->rollDegrees = 0;
                    } else {
                        func_800B41DC(debugCam, debugCam->sub.unkIdx, cam);
                        debugCam->fov = debugCam->sub.lookAt[debugCam->sub.unkIdx].viewAngle;
                        debugCam->roll = debugCam->sub.lookAt[debugCam->sub.unkIdx].cameraRoll;
                        debugCam->rollDegrees = debugCam->roll * 1.40625f;
                    }
                }
            }

            DebugCamera_ScreenTextColored(
                10, 6, (debugCam->sub.unk_08 == 0) ? DEBUG_CAM_TEXT_GREEN : DEBUG_CAM_TEXT_GOLD, D_8012D00C);
            DebugCamera_ScreenTextColored(
                17, 6, (debugCam->sub.unk_08 == 1) ? DEBUG_CAM_TEXT_GREEN : DEBUG_CAM_TEXT_GOLD, D_8012D020);
            DebugCamera_ScreenTextColored(
                23, 6, (debugCam->sub.unk_08 == 2) ? DEBUG_CAM_TEXT_GREEN : DEBUG_CAM_TEXT_GOLD, D_8012D034);
            if (debugCam->sub.unkIdx == 0x80) {
                DebugCamera_ScreenTextColored(16, 26, DEBUG_CAM_TEXT_PEACH, D_8012CEF8[0]);
            } else if (debugCam->sub.unkIdx == (debugCam->sub.nPoints - 1)) {
                D_8012CEE0[7][10] = (debugCam->sub.nPoints / 10) + '0';
                D_8012CEE0[7][11] = (debugCam->sub.nPoints % 10) + '0';
                DebugCamera_ScreenTextColored(15, 26, DEBUG_CAM_TEXT_PEACH, D_8012CEE0[7]);
            } else {
                D_8012CEE0[8][10] = ((debugCam->sub.unkIdx + 1) / 10) + '0';
                D_8012CEE0[8][11] = ((debugCam->sub.unkIdx + 1) % 10) + '0';
                D_8012CEE0[8][13] = ((debugCam->sub.nPoints - 1) / 10) + '0';
                D_8012CEE0[8][14] = ((debugCam->sub.nPoints - 1) % 10) + '0';
                DebugCamera_ScreenTextColored(15, 26, DEBUG_CAM_TEXT_PEACH, D_8012CEE0[8]);
            }

            switch (debugCam->sub.unk_08) {
                case 2:
                    debugCam->unk_3C = false;
                    break;
                case 0:
                    debugCam->unk_3C = false;
                    if (debugCam->sub.mode != 1) {
                        DebugCamera_ScreenTextColored(13, 24, DEBUG_CAM_TEXT_ORANGE,
                                                      !D_80161144 ? D_8012CF04 : D_8012CF08);
                        DebugCamera_SetTextValue(CAM_BINANG_TO_DEG(sp104.pitch), &D_8012D0E4[11], 4);
                        DebugCamera_ScreenTextColored(15, 23, DEBUG_CAM_TEXT_ORANGE, D_8012D0E4);
                        DebugCamera_SetTextValue(CAM_BINANG_TO_DEG(sp104.yaw), &D_8012D0F8[11], 4);
                        DebugCamera_ScreenTextColored(15, 24, DEBUG_CAM_TEXT_ORANGE, D_8012D0F8);
                        DebugCamera_SetTextValue(sp104.r, &D_8012D0D4[8], 6);
                        DebugCamera_ScreenTextColored(15, 25, DEBUG_CAM_TEXT_ORANGE, D_8012D0D4);
                    } else {
                        DebugCamera_ScreenTextColored(14, 24, DEBUG_CAM_TEXT_ORANGE, D_8012CF0C);
                        DebugCamera_ScreenTextColored(16, 22, DEBUG_CAM_TEXT_ORANGE, D_8012CF10);
                        sp110 = 'X';
                        DebugCamera_SetTextValue(temp_s6->pos.x, &sp111, 7);
                        DebugCamera_ScreenTextColored(16, 23, DEBUG_CAM_TEXT_ORANGE, &sp110);
                        sp110 = 'Y';
                        DebugCamera_SetTextValue(temp_s6->pos.y, &sp111, 7);
                        DebugCamera_ScreenTextColored(16, 24, DEBUG_CAM_TEXT_ORANGE, &sp110);
                        sp110 = 'Z';
                        DebugCamera_SetTextValue(temp_s6->pos.z, &sp111, 7);
                        DebugCamera_ScreenTextColored(16, 25, DEBUG_CAM_TEXT_ORANGE, &sp110);
                    }
                    break;
                case 1:
                    debugCam->unk_3C = true;
                    if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_DUP)) {
                        Audio_PlaySfxGeneral(NA_SE_SY_ATTENTION_ON, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        if (debugCam->sub.unk_0A == 0) {
                            debugCam->sub.unk_0A = 5;
                        } else {
                            debugCam->sub.unk_0A--;
                        }
                    }
                    if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_DDOWN)) {
                        Audio_PlaySfxGeneral(NA_SE_SY_ATTENTION_ON, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        if (debugCam->sub.unk_0A == 5) {
                            debugCam->sub.unk_0A = 0;
                        } else {
                            debugCam->sub.unk_0A++;
                        }
                    }
                    if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_DLEFT)) {
                        Audio_PlaySfxGeneral(NA_SE_SY_ATTENTION_ON, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        switch (debugCam->sub.unk_0A) {
                            case 1:
                                if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_L)) {
                                    debugCam->sub.lookAt[debugCam->sub.unkIdx].nextPointFrame -= 5;
                                } else {
                                    debugCam->sub.lookAt[debugCam->sub.unkIdx].nextPointFrame--;
                                }
                                break;
                            case 3:
                                debugCam->sub.mode--;
                                if (debugCam->sub.mode == -1) {
                                    debugCam->sub.mode = 2;
                                }
                                if (debugCam->sub.mode == 1) {
                                    debugCam->unk_78 = 2;
                                    for (i = 0; i < debugCam->sub.nPoints; i++) {
                                        DebugCamera_Vec3SToF2(&debugCam->sub.lookAt[i].pos, &spD8);
                                        func_800B3F94(temp_s6, &spD8, &debugCam->sub.lookAt[i].pos);
                                        DebugCamera_Vec3SToF2(&debugCam->sub.position[i].pos, &spD8);
                                        func_800B3F94(temp_s6, &spD8, &debugCam->sub.position[i].pos);
                                    }
                                } else {
                                    for (i = 0; i < debugCam->sub.nPoints; i++) {
                                        func_800B404C(temp_s6, &debugCam->sub.lookAt[i].pos, &spD8);
                                        DebugCamera_Vec3FToS(&spD8, &debugCam->sub.lookAt[i].pos);
                                        func_800B404C(temp_s6, &debugCam->sub.position[i].pos, &spD8);
                                        DebugCamera_Vec3FToS(&spD8, &debugCam->sub.position[i].pos);
                                    }
                                }
                                break;
                            case 4:
                                debugCam->sub.unk_0C = false;
                                break;
                            case 2:
                                if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_L)) {
                                    debugCam->sub.lookAt[debugCam->sub.unkIdx].cameraRoll -= 5;
                                    debugCam->roll = debugCam->sub.lookAt[debugCam->sub.unkIdx].cameraRoll;
                                } else {
                                    debugCam->sub.lookAt[debugCam->sub.unkIdx].cameraRoll--;
                                    debugCam->roll = debugCam->sub.lookAt[debugCam->sub.unkIdx].cameraRoll;
                                }
                                debugCam->rollDegrees = debugCam->roll * 1.40625f;
                                break;
                        }
                    }

                    if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_DLEFT)) {
                        if ((D_8012D10C++ % 5) == 0) {
                            Audio_PlaySfxGeneral(NA_SE_SY_ATTENTION_ON, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        }

                        switch (debugCam->sub.unk_0A) {
                            case 0:
                                if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_L)) {
                                    debugCam->sub.lookAt[debugCam->sub.unkIdx].viewAngle -= 1.0f;
                                    debugCam->fov = debugCam->sub.lookAt[debugCam->sub.unkIdx].viewAngle;
                                } else {
                                    debugCam->sub.lookAt[debugCam->sub.unkIdx].viewAngle -= 0.2f;
                                    debugCam->fov = debugCam->sub.lookAt[debugCam->sub.unkIdx].viewAngle;
                                }
                                break;
                            case 5:
                                if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_L)) {
                                    debugCam->sub.nFrames -= 10;
                                } else {
                                    debugCam->sub.nFrames--;
                                }

                                if (debugCam->sub.nFrames < -1) {
                                    if (debugCam->sub.nPoints < 5) {
                                        debugCam->sub.nFrames = -1;
                                    } else {
                                        debugCam->sub.nFrames = 0;
                                        for (i = 0; i < debugCam->sub.nPoints; i++) {
                                            debugCam->sub.nFrames += debugCam->sub.lookAt[i].nextPointFrame;
                                        }
                                        i = debugCam->sub.nFrames / debugCam->sub.nPoints;
                                        debugCam->sub.nFrames -= (s16)(i * 5);
                                    }
                                }
                                break;
                        }
                    }

                    if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_DRIGHT)) {
                        Audio_PlaySfxGeneral(NA_SE_SY_ATTENTION_ON, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                        switch (debugCam->sub.unk_0A) {
                            case 1:
                                if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_L)) {
                                    debugCam->sub.lookAt[debugCam->sub.unkIdx].nextPointFrame += 5;
                                } else {
                                    debugCam->sub.lookAt[debugCam->sub.unkIdx].nextPointFrame++;
                                }
                                break;
                            case 3:
                                debugCam->sub.mode++;
                                if (debugCam->sub.mode == 3) {
                                    debugCam->sub.mode = 0;
                                }
                                if (debugCam->sub.mode == 1) {
                                    debugCam->unk_78 = 2;
                                    for (i = 0; i < debugCam->sub.nPoints; i++) {
                                        DebugCamera_Vec3SToF2(&debugCam->sub.lookAt[i].pos, &spD8);
                                        func_800B3F94(temp_s6, &spD8, &debugCam->sub.lookAt[i].pos);
                                        DebugCamera_Vec3SToF2(&debugCam->sub.position[i].pos, &spD8);
                                        func_800B3F94(temp_s6, &spD8, &debugCam->sub.position[i].pos);
                                    }
                                } else {
                                    for (i = 0; i < debugCam->sub.nPoints; i++) {
                                        func_800B404C(temp_s6, &debugCam->sub.lookAt[i].pos, &spD8);
                                        DebugCamera_Vec3FToS(&spD8, &debugCam->sub.lookAt[i].pos);
                                        func_800B404C(temp_s6, &debugCam->sub.position[i].pos, &spD8);
                                        DebugCamera_Vec3FToS(&spD8, &debugCam->sub.position[i].pos);
                                    }
                                }
                                FALLTHROUGH;
                            case 4:
                                debugCam->sub.unk_0C = true;
                                break;
                            case 2:
                                if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_L)) {
                                    debugCam->sub.lookAt[debugCam->sub.unkIdx].cameraRoll += 5;
                                    debugCam->roll = debugCam->sub.lookAt[debugCam->sub.unkIdx].cameraRoll;
                                } else {
                                    debugCam->sub.lookAt[debugCam->sub.unkIdx].cameraRoll++;
                                    debugCam->roll = debugCam->sub.lookAt[debugCam->sub.unkIdx].cameraRoll;
                                }
                                debugCam->rollDegrees = debugCam->roll * 1.40625f;
                                break;
                        }
                    }
                    if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_DRIGHT)) {
                        if ((D_8012D10C++ % 5) == 0) {
                            Audio_PlaySfxGeneral(NA_SE_SY_ATTENTION_ON, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        }

                        switch (debugCam->sub.unk_0A) {
                            case 0:
                                if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_L)) {
                                    debugCam->sub.lookAt[debugCam->sub.unkIdx].viewAngle += 1.0f;
                                    debugCam->fov = debugCam->sub.lookAt[debugCam->sub.unkIdx].viewAngle;
                                } else {
                                    debugCam->sub.lookAt[debugCam->sub.unkIdx].viewAngle += 0.2f;
                                    debugCam->fov = debugCam->sub.lookAt[debugCam->sub.unkIdx].viewAngle;
                                }
                                break;
                            case 5:
                                if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_L)) {
                                    debugCam->sub.nFrames += 10;
                                } else {
                                    debugCam->sub.nFrames++;
                                }
                                if (&debugCam->at) {}
                                break;
                        }
                    }

                    DebugCamera_SetTextValue(debugCam->sub.lookAt[debugCam->sub.unkIdx].viewAngle, &D_8012D05C[10], 3);
                    DebugCamera_ScreenTextColored(
                        16, 20, (debugCam->sub.unk_0A == 0) ? DEBUG_CAM_TEXT_GREEN : DEBUG_CAM_TEXT_GOLD, D_8012D05C);
                    DebugCamera_SetTextValue(debugCam->sub.lookAt[debugCam->sub.unkIdx].nextPointFrame, &D_8012D070[9],
                                             3);
                    DebugCamera_ScreenTextColored(
                        16, 21, (debugCam->sub.unk_0A == 1) ? DEBUG_CAM_TEXT_GREEN : DEBUG_CAM_TEXT_GOLD, D_8012D070);
                    DebugCamera_SetTextValue(debugCam->sub.lookAt[debugCam->sub.unkIdx].cameraRoll, &D_8012D084[10], 3);
                    DebugCamera_ScreenTextColored(
                        16, 22, (debugCam->sub.unk_0A == 2) ? DEBUG_CAM_TEXT_GREEN : DEBUG_CAM_TEXT_GOLD, D_8012D084);
                    DebugCamera_ScreenTextColored(
                        15, 23, (debugCam->sub.unk_0A == 3) ? DEBUG_CAM_TEXT_GREEN : DEBUG_CAM_TEXT_GOLD,
                        (debugCam->sub.mode == 1)   ? D_8012CF14
                        : (debugCam->sub.mode == 0) ? *D_8012CF18
                                                    : D_8012CFB0);
                    if (debugCam->sub.unk_0C) {
                        D_8012D05C[80] = '>';
                    } else {
                        D_8012D05C[80] = '<';
                    }

                    D_8012D05C[81] = ' ';
                    D_8012D05C[94] = ' ';

                    if (debugCam->sub.unk_0C) {
                        D_8012D05C[95] = '>';
                    } else {
                        D_8012D05C[95] = '<';
                    }
                    D_8012D05C[96] = '\0';
                    DebugCamera_ScreenTextColored(
                        15, 24, (debugCam->sub.unk_0A == 4) ? DEBUG_CAM_TEXT_GREEN : DEBUG_CAM_TEXT_GOLD, D_8012D0AC);
                    DebugCamera_SetTextValue(debugCam->sub.nFrames, &D_8012D0C0[10], 5);
                    DebugCamera_ScreenTextColored(
                        15, 25, (debugCam->sub.unk_0A == 5) ? DEBUG_CAM_TEXT_GREEN : DEBUG_CAM_TEXT_GOLD,
                        (debugCam->sub.nFrames == -1) ? *D_8012CF24 : D_8012D0C0);
                    break;
            }

            if (debugCam->sub.mode != 1) {
                DebugCamera_ScreenTextColored(
                    3, 22,
                    ((debugCam->sub.unk_08 == 1) && (debugCam->sub.unk_0A == 4) && !D_80161144) ? DEBUG_CAM_TEXT_GREEN
                    : !D_80161144                                                               ? DEBUG_CAM_TEXT_GOLD
                                                                                                : DEBUG_CAM_TEXT_ORANGE,
                    D_8012CF30);
                sp110 = 'X';
                DebugCamera_SetTextValue(debugCam->at.x, &sp111, 6);
                DebugCamera_ScreenTextColored(3, 23, DEBUG_CAM_TEXT_BROWN, &sp110);
                sp110 = 'Y';
                DebugCamera_SetTextValue(debugCam->at.y, &sp111, 6);
                DebugCamera_ScreenTextColored(3, 24, DEBUG_CAM_TEXT_BROWN, &sp110);
                sp110 = 'Z';
                DebugCamera_SetTextValue(debugCam->at.z, &sp111, 6);
                DebugCamera_ScreenTextColored(3, 25, DEBUG_CAM_TEXT_BROWN, &sp110);
                DebugCamera_ScreenTextColored(30, 22,
                                              ((debugCam->sub.unk_08 == 1) && (debugCam->sub.unk_0A == 4) && D_80161144)
                                                  ? DEBUG_CAM_TEXT_GREEN
                                              : D_80161144 ? DEBUG_CAM_TEXT_GOLD
                                                           : DEBUG_CAM_TEXT_ORANGE,
                                              D_8012CF34);
                sp110 = 'X';
                DebugCamera_SetTextValue(debugCam->eye.x, &sp111, 6);
                DebugCamera_ScreenTextColored(30, 23, DEBUG_CAM_TEXT_BROWN, &sp110);
                sp110 = 'Y';
                DebugCamera_SetTextValue(debugCam->eye.y, &sp111, 6);
                DebugCamera_ScreenTextColored(30, 24, DEBUG_CAM_TEXT_BROWN, &sp110);
                sp110 = 'Z';
                DebugCamera_SetTextValue(debugCam->eye.z, &sp111, 6);
                DebugCamera_ScreenTextColored(30, 25, DEBUG_CAM_TEXT_BROWN, &sp110);
            } else {
                if (D_8012CEE0[0]) {}
                spFC = OLib_Vec3fDiffToVecGeo(sp90, sp7C);
                spFC.yaw -= cam->playerPosRot.rot.y;
                DebugCamera_ScreenTextColored(
                    3, 22,
                    ((debugCam->sub.unk_08 == 1) && (debugCam->sub.unk_0A == 4) && !D_80161144) ? DEBUG_CAM_TEXT_GREEN
                    : !D_80161144                                                               ? DEBUG_CAM_TEXT_GOLD
                                                                                                : DEBUG_CAM_TEXT_ORANGE,
                    D_8012CF30);
                DebugCamera_SetTextValue(CAM_BINANG_TO_DEG(spFC.pitch), &D_8012D0E4[10], 4);
                DebugCamera_ScreenTextColored(3, 23, DEBUG_CAM_TEXT_ORANGE, D_8012D0E4);
                DebugCamera_SetTextValue(CAM_BINANG_TO_DEG(spFC.yaw), &D_8012D0F8[10], 4);
                DebugCamera_ScreenTextColored(3, 24, DEBUG_CAM_TEXT_ORANGE, D_8012D0F8);
                DebugCamera_SetTextValue(spFC.r, &D_8012D0D4[7], 6);
                DebugCamera_ScreenTextColored(3, 25, DEBUG_CAM_TEXT_ORANGE, D_8012D0D4);
                spFC = OLib_Vec3fDiffToVecGeo(sp90, sp80);
                spFC.yaw -= cam->playerPosRot.rot.y;
                DebugCamera_ScreenTextColored(30, 22,
                                              ((debugCam->sub.unk_08 == 1) && (debugCam->sub.unk_0A == 4) && D_80161144)
                                                  ? DEBUG_CAM_TEXT_GREEN
                                              : D_80161144 ? DEBUG_CAM_TEXT_GOLD
                                                           : DEBUG_CAM_TEXT_ORANGE,
                                              D_8012CF34);
                DebugCamera_SetTextValue(CAM_BINANG_TO_DEG(spFC.pitch), &D_8012D0E4[10], 4);
                DebugCamera_ScreenTextColored(28, 23, DEBUG_CAM_TEXT_ORANGE, D_8012D0E4);
                DebugCamera_SetTextValue(CAM_BINANG_TO_DEG(spFC.yaw), &D_8012D0F8[10], 4);
                DebugCamera_ScreenTextColored(28, 24, DEBUG_CAM_TEXT_ORANGE, D_8012D0F8);
                DebugCamera_SetTextValue(spFC.r, &D_8012D0D4[7], 6);
                DebugCamera_ScreenTextColored(28, 25, DEBUG_CAM_TEXT_ORANGE, D_8012D0D4);
            }

            DebugDisplay_AddObject(debugCam->at.x, debugCam->at.y + 1.0f, debugCam->at.z, 0, 0, 0, 0.02f, 2.0f, 0.02f,
                                   0xFF, 0xFF, 0x7F, 0x40, 0, cam->play->view.gfxCtx);
            DebugDisplay_AddObject(debugCam->at.x, debugCam->at.y + 1.0f, debugCam->at.z, 0, 0, 0, 2.0f, 0.02f, 0.02f,
                                   0x7F, 0xFF, 0xFF, 0x40, 0, cam->play->view.gfxCtx);
            DebugDisplay_AddObject(debugCam->at.x, debugCam->at.y + 1.0f, debugCam->at.z, 0, 0, 0, 0.02f, 0.02f, 2.0f,
                                   0xFF, 0x7F, 0xFF, 0x40, 0, cam->play->view.gfxCtx);
            if (debugCam->sub.unk_08 == 2) {
                for (i = 0; i < (debugCam->sub.nPoints - 1); i++) {
                    if (debugCam->sub.mode != 1) {
                        DebugCamera_Vec3SToF2(&(debugCam->sub.position + i)->pos, &spAC);
                        DebugCamera_Vec3SToF2(&(debugCam->sub.lookAt + i)->pos, &spB8);
                    } else {
                        func_800B404C(temp_s6, &(debugCam->sub.lookAt + i)->pos, &spB8);
                        func_800B404C(temp_s6, &(debugCam->sub.position + i)->pos, &spAC);
                    }
                    spFC = OLib_Vec3fDiffToVecGeo(&spAC, &spB8);
                    spAA = debugCam->sub.lookAt[i].cameraRoll * 0xB6;
                    if (i == debugCam->sub.unkIdx) {
                        DebugDisplay_AddObject(spAC.x, spAC.y, spAC.z, spFC.pitch * -1, spFC.yaw, spAA, .5f, .5f, .5f,
                                               0x7F, 0xFF, 0x7F, 0x80, 5, cam->play->view.gfxCtx);
                        DebugDisplay_AddObject(spB8.x, spB8.y, spB8.z, spFC.pitch * -1, spFC.yaw, spAA, 1.5f, 2.0f,
                                               1.0f, 0x7F, 0xFF, 0x7F, 0x80, 4, cam->play->view.gfxCtx);
                    } else {
                        DebugDisplay_AddObject(spAC.x, spAC.y, spAC.z, spFC.pitch * -1, spFC.yaw, spAA, .5f, .5f, .5f,
                                               0xFF, 0x7F, 0x7F, 0x80, 5, cam->play->view.gfxCtx);
                        DebugDisplay_AddObject(spB8.x, spB8.y, spB8.z, spFC.pitch * -1, spFC.yaw, spAA, 1.5f, 2.0f,
                                               1.0f, 0xFF, 0x7F, 0x7F, 0x80, 4, cam->play->view.gfxCtx);
                    }
                }
            }
        }
    } else {
        OREG(0) = 8;
        debugCam->roll = 0;
        debugCam->fov = 60.0f;
        debugCam->rollDegrees = debugCam->roll * 1.40625f;
        if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_CLEFT)) {
            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            debugCam->unk_78 = (debugCam->unk_78 + 1) % 3;
            debugCam->unk_38 = -1;
        }

        DebugCamera_ScreenTextColored(14, 5, DEBUG_CAM_TEXT_YELLOW, D_8012CF38);
        DebugCamera_ScreenTextColored(9, 6, (debugCam->unk_78 == 0) ? DEBUG_CAM_TEXT_GREEN : DEBUG_CAM_TEXT_GOLD,
                                      D_8012CFD0);
        DebugCamera_ScreenTextColored(17, 6, (debugCam->unk_78 == 1) ? DEBUG_CAM_TEXT_GREEN : DEBUG_CAM_TEXT_GOLD,
                                      D_8012CFE4);
        DebugCamera_ScreenTextColored(24, 6, (debugCam->unk_78 == 2) ? DEBUG_CAM_TEXT_GREEN : DEBUG_CAM_TEXT_GOLD,
                                      D_8012CFF8);
        DebugCamera_ScreenTextColored(3, 22, D_80161144 ? DEBUG_CAM_TEXT_ORANGE : DEBUG_CAM_TEXT_GOLD, D_8012CF30);
        sp110 = 'X';
        DebugCamera_SetTextValue(debugCam->at.x, &sp111, 6);
        DebugCamera_ScreenTextColored(3, 23, DEBUG_CAM_TEXT_BROWN, &sp110);
        sp110 = 'Y';
        DebugCamera_SetTextValue(debugCam->at.y, &sp111, 6);
        DebugCamera_ScreenTextColored(3, 24, DEBUG_CAM_TEXT_BROWN, &sp110);
        sp110 = 'Z';
        DebugCamera_SetTextValue(debugCam->at.z, &sp111, 6);
        DebugCamera_ScreenTextColored(3, 25, DEBUG_CAM_TEXT_BROWN, &sp110);
        DebugCamera_ScreenTextColored(30, 22, D_80161144 ? DEBUG_CAM_TEXT_GOLD : DEBUG_CAM_TEXT_ORANGE, D_8012CF34);
        sp110 = 'X';
        DebugCamera_SetTextValue(debugCam->eye.x, &sp111, 6);
        DebugCamera_ScreenTextColored(30, 23, DEBUG_CAM_TEXT_BROWN, &sp110);
        sp110 = 'Y';
        DebugCamera_SetTextValue(debugCam->eye.y, &sp111, 6);
        DebugCamera_ScreenTextColored(30, 24, DEBUG_CAM_TEXT_BROWN, &sp110);
        sp110 = 'Z';
        DebugCamera_SetTextValue(debugCam->eye.z, &sp111, 6);
        DebugCamera_ScreenTextColored(30, 25, DEBUG_CAM_TEXT_BROWN, &sp110);
        DebugCamera_ScreenTextColored(13, 24, DEBUG_CAM_TEXT_ORANGE, !D_80161144 ? D_8012CF04 : D_8012CF08);
        DebugCamera_SetTextValue(CAM_BINANG_TO_DEG(sp104.pitch), &D_8012D0E4[11], 4);
        DebugCamera_ScreenTextColored(15, 23, DEBUG_CAM_TEXT_ORANGE, D_8012D0E4);
        DebugCamera_SetTextValue(CAM_BINANG_TO_DEG(sp104.yaw), &D_8012D0F8[11], 4);
        DebugCamera_ScreenTextColored(15, 24, DEBUG_CAM_TEXT_ORANGE, D_8012D0F8);
        DebugCamera_SetTextValue(sp104.r, &D_8012D0D4[8], 6);
        DebugCamera_ScreenTextColored(15, 25, DEBUG_CAM_TEXT_ORANGE, D_8012D0D4);
        if (debugCam->unk_3C) {
            DebugCamera_ScreenTextColored(16, 26, DEBUG_CAM_TEXT_PEACH, D_8012CF3C);
        } else {
            DebugCamera_ScreenTextColored(16, 26, DEBUG_CAM_TEXT_PEACH, D_8012CF40);
        }

        D_8012D110++;
        D_8012D110 %= 50;

        spA0 = OLib_Vec3fDiffToVecGeo(&cam->eye, &cam->at);
        DebugDisplay_AddObject(debugCam->at.x, debugCam->at.y + 1.0f, debugCam->at.z, 0, 0, 0, 0.02f, 2.0f, 0.02f, 0xFF,
                               0xFF, 0x7F, 0x2D, 0, cam->play->view.gfxCtx);
        DebugDisplay_AddObject(debugCam->at.x, debugCam->at.y + 1.0f, debugCam->at.z, 0, 0, 0, 2.0f, 0.02f, 0.02f, 0x7F,
                               0xFF, 0xFF, 0x2D, 0, cam->play->view.gfxCtx);
        DebugDisplay_AddObject(debugCam->at.x, debugCam->at.y + 1.0f, debugCam->at.z, 0, 0, 0, 0.02f, 0.02f, 2.0f, 0xFF,
                               0x7F, 0xFF, 0x2D, 0, cam->play->view.gfxCtx);
        DebugDisplay_AddObject(cam->eye.x, cam->eye.y, cam->eye.z, spA0.pitch * -1, spA0.yaw, 0, .5f, .5f, .5f, 0xFF,
                               0x7F, 0x7F, 0x80, 5, cam->play->view.gfxCtx);
        DebugDisplay_AddObject(cam->at.x, cam->at.y, cam->at.z, spA0.pitch * -1, spA0.yaw, 0, 1.5f, 2.0f, 1.0f, 0xFF,
                               0x7F, 0x7F, 0x80, 4, cam->play->view.gfxCtx);
        spA0 = OLib_Vec3fDiffToVecGeo(&cam->eyeNext, &cam->at);
        DebugDisplay_AddObject(cam->eyeNext.x, cam->eyeNext.y, cam->eyeNext.z, spA0.pitch * -1, spA0.yaw, 0, .5f, .5f,
                               .5f, 0xFF, 0xC0, 0x7F, 0x50, 5, cam->play->view.gfxCtx);
    }
}

static s16 sCurFileIdx;
static s16 sLastFileIdx; // holds the file index of the slot to move
// is the size correct? todo: add ALIGN32 for sizeof in Mempak functions, replace 0xF with sizeof()
static DebugCamCut sDebugCamCuts[16];
static char D_80161250[0x80];
static char sLetters[26];
static char D_801612EA;
static s32 sAllocSize;

s32 DebugCamera_GetFirstAvailableLetter(void) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(sLetters); i++) {
        switch (sLetters[i]) {
            case 'O':
                break;
            default:
                return MEMPAK_INDEX_TO_LETTER(i);
        }
    }
    return '?';
}

char DebugCamera_InitCut(s32 idx, DebugCamSub* sub) {
    s32 i;

    sDebugCamCuts[idx].unk_01 = 0x61;
    sDebugCamCuts[idx].letter = DebugCamera_GetFirstAvailableLetter();
    D_80161250[0x3F + sDebugCamCuts[idx].letter] = 'O';

    i = sub->nPoints * sizeof(CutsceneCameraPoint);
    sDebugCamCuts[idx].lookAt = DebugArena_MallocDebug(i, "../db_camera.c", 2748);
    if (sDebugCamCuts[idx].lookAt == NULL) {
        // "Debug camera memory allocation failure"
        osSyncPrintf("%s: %d: デバッグカメラ メモリ確保失敗！！\n", "../db_camera.c", 2751);
        return '?';
    }

    sDebugCamCuts[idx].position = DebugArena_MallocDebug(i, "../db_camera.c", 2754);
    if (sDebugCamCuts[idx].position == NULL) {
        // "Debug camera memory allocation failure"
        osSyncPrintf("%s: %d: デバッグカメラ メモリ確保失敗！！\n", "../db_camera.c", 2757);
        DebugArena_FreeDebug(sDebugCamCuts[idx].lookAt, "../db_camera.c", 2758);
        sDebugCamCuts[idx].lookAt = NULL;
        return '?';
    }

    sDebugCamCuts[idx].mode = sub->mode;
    sDebugCamCuts[idx].nFrames = sub->nFrames;
    sDebugCamCuts[idx].nPoints = sub->nPoints;

    for (i = 0; i < sub->nPoints; i++) {
        sDebugCamCuts[idx].lookAt[i] = sub->lookAt[i];
        sDebugCamCuts[idx].position[i] = sub->position[i];
    }

    return sDebugCamCuts[idx].letter;
}

void DebugCamera_ResetCut(s32 idx, s32 shouldFree) {
    if (sDebugCamCuts[idx].letter != '?') {
        D_80161250[0x3F + sDebugCamCuts[idx].letter] = 'X';
    }

    if (shouldFree) {
        DebugArena_FreeDebug(sDebugCamCuts[idx].lookAt, "../db_camera.c", 2784);
        DebugArena_FreeDebug(sDebugCamCuts[idx].position, "../db_camera.c", 2785);
    }

    sDebugCamCuts[idx].letter = '?';
    sDebugCamCuts[idx].lookAt = NULL;
    sDebugCamCuts[idx].position = NULL;
    sDebugCamCuts[idx].mode = 0;
    sDebugCamCuts[idx].nFrames = 0;
    sDebugCamCuts[idx].nPoints = 0;
}

s32 DebugCamera_CalcMempakAllocSize(void) {
    s32 i;

    sAllocSize = 0;
    for (i = 0; i < ARRAY_COUNT(sDebugCamCuts) - 1; i++) {
        if (sDebugCamCuts[i].letter != '?') {
            sAllocSize += ALIGN32(sDebugCamCuts[i].nPoints * sizeof(CutsceneCameraPoint)) * 2;
        }
    }
    sAllocSize += 0x100;
    sAllocSize = ALIGN256(sAllocSize);
    return sAllocSize;
}

s32 DebugCamera_GetMempakAllocSize(void) {
    return sAllocSize;
}

s32 DebugCamera_LoadCallback(char* c) {
    s32 i;
    s32 size;
    s32 off;

    for (i = 0; i < ARRAY_COUNT(sDebugCamCuts) - 1; i++) {
        if (sDebugCamCuts[i].letter != '?') {
            DebugCamera_ResetCut(i, true);
            sLetters[i] = 'X';
        }
    }

    if (!Mempak_Read(DEBUG_CAM_CONTROLLER_PORT, *c, sDebugCamCuts, 0, sizeof(sDebugCamCuts))) {
        return false;
    }

    off = sizeof(sDebugCamCuts);
    for (i = 0; i < ARRAY_COUNT(sDebugCamCuts) - 1; i++) {
        if (sDebugCamCuts[i].letter != '?') {
            size = sDebugCamCuts[i].nPoints * sizeof(CutsceneCameraPoint);

            sDebugCamCuts[i].lookAt = DebugArena_MallocDebug(ALIGN32(size), "../db_camera.c", 2844);
            if (sDebugCamCuts[i].lookAt == NULL) {
                // "Debug camera memory allocation failure"
                osSyncPrintf("%s: %d: デバッグカメラ メモリ確保失敗！！\n", "../db_camera.c", 2847);
                return false;
            }
            if (!Mempak_Read(DEBUG_CAM_CONTROLLER_PORT, *c, sDebugCamCuts[i].lookAt, off, ALIGN32(size))) {
                return false;
            }
            off += ALIGN32(size);

            sDebugCamCuts[i].position = DebugArena_MallocDebug(ALIGN32(size), "../db_camera.c", 2855);
            if (sDebugCamCuts[i].position == NULL) {
                // "Debug camera memory allocation failure"
                osSyncPrintf("%s: %d: デバッグカメラ メモリ確保失敗！！\n", "../db_camera.c", 2858);
                return false;
            }
            if (!Mempak_Read(DEBUG_CAM_CONTROLLER_PORT, *c, sDebugCamCuts[i].position, off, ALIGN32(size))) {
                return false;
            }
            off += ALIGN32(size);

            D_80161250[0x3F + sDebugCamCuts[i].letter] = 'O';
        }
    }

    return true;
}

s32 DebugCamera_SaveCallback(char* c) {
    s32 pad[2];
    s32 ret;
    u32 freeSize;
    s32 off;
    s32 size;
    s32 i;

    ret = Mempak_GetFileSize(DEBUG_CAM_CONTROLLER_PORT, *c);
    freeSize = Mempak_GetFreeBytes(DEBUG_CAM_CONTROLLER_PORT);

    if ((u32)sAllocSize < (freeSize + ret)) {
        if (!Mempak_CreateFile(DEBUG_CAM_CONTROLLER_PORT, c, sAllocSize)) {
            return false;
        }

        if (!Mempak_Write(DEBUG_CAM_CONTROLLER_PORT, *c, sDebugCamCuts, 0, sizeof(sDebugCamCuts))) {
            Mempak_DeleteFile(DEBUG_CAM_CONTROLLER_PORT, *c);
            return false;
        }

        off = sizeof(sDebugCamCuts);
        for (i = 0; i < ARRAY_COUNT(sDebugCamCuts) - 1; i++) {
            if (sDebugCamCuts[i].letter != '?') {
                size = sDebugCamCuts[i].nPoints * sizeof(CutsceneCameraPoint);

                ret = Mempak_Write(DEBUG_CAM_CONTROLLER_PORT, *c, sDebugCamCuts[i].lookAt, off, ALIGN32(size));
                if (!ret) {
                    break;
                }
                off += ALIGN32(size);

                ret = Mempak_Write(DEBUG_CAM_CONTROLLER_PORT, *c, sDebugCamCuts[i].position, off, ALIGN32(size));
                if (!ret) {
                    break;
                }

                off += ALIGN32(size);
            }
            ret = true;
        }

        if (ret) {
            return *c;
        } else {
            Mempak_DeleteFile(DEBUG_CAM_CONTROLLER_PORT, *c);
            return false;
        }
    }

    return false;
}

s32 DebugCamera_ClearCallback(char* c) {
    return Mempak_DeleteFile(DEBUG_CAM_CONTROLLER_PORT, *c);
}

void DebugCamera_DrawSlotLetters(char* str, s16 y, s16 x, s32 colorIndex) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(sDebugCamCuts) - 1; i++) {
        str[i * 2 + 1] = sDebugCamCuts[i].letter;
        str[i * 2 + 0] = '-';
    }

    str[0x14] = str[i * 2 + 1] = '\0';
    DebugCamera_ScreenTextColored(x, y, colorIndex, str);
    str[0x14] = str[i * 2 + 0] = '-';
    DebugCamera_ScreenTextColored(20 + x, y, colorIndex, str + 0x14);
}

void DebugCamera_PrintAllCuts(Camera* cam) {
    s32 i;

    Audio_PlaySfxGeneral(NA_SE_SY_GET_RUPY, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    osSyncPrintf("@@@\n@@@\n@@@/* ****** spline point data ** start here ***** */\n@@@\n");

    for (i = 0; i < ARRAY_COUNT(sDebugCamCuts) - 1; i++) {
        DebugCamCut* cut = &sDebugCamCuts[i];
        if (cut->nPoints != 0) {
            if (i != 0) {
                osSyncPrintf("@@@\n@@@/* ** %d ** */\n@@@\n", i);
            }

            DebugCamera_PrintPoints("Lookat", cut->nPoints, cut->lookAt);
            DebugCamera_PrintPoints("Position", cut->nPoints, cut->position);
            osSyncPrintf("@@@static short  nPoints = %d;\n@@@\n", cut->nPoints);
            osSyncPrintf("@@@static short  nFrames = %d;\n@@@\n", cut->nFrames);
            osSyncPrintf("@@@static short  Mode = %d;\n@@@\n", cut->mode);
        }
    }

    osSyncPrintf("@@@\n@@@\n@@@/* ****** spline point data ** finish! ***** */\n@@@\n");
}

char D_8012D114[] = GFXP_KATAKANA "ﾌﾚ-ﾑ         ";
char D_8012D128[] = GFXP_KATAKANA "ﾄ-ﾀﾙ         ";
char D_8012D13C[] = GFXP_KATAKANA "ｷ-     /   ";

s32 func_800B91B0(Camera* cam, DebugCam* debugCam) {
    s32 pointCount;
    s32 curPoint;

    while (sDebugCamCuts[D_8016110C].letter == '?') {
        D_8016110C++;
        if (D_8016110C >= ARRAY_COUNT(sDebugCamCuts) - 1) {
            sDebugCamAnim.curFrame = 0.0f;
            sDebugCamAnim.unk_04 = 0;
            sDebugCamAnim.keyframe = 0;
            sDebugCamAnim.unk_0A = 0;
            D_8016110C = 0;
            return 0;
        }
    }

    if (!func_800BB2B4(&sDebugCamAnim.positionPos, &sDebugCamAnim.roll, &sDebugCamAnim.fov,
                       sDebugCamCuts[D_8016110C].position, &sDebugCamAnim.keyframe, &sDebugCamAnim.curFrame) &&
        !func_800BB2B4(&sDebugCamAnim.lookAtPos, &sDebugCamAnim.roll, &sDebugCamAnim.fov,
                       sDebugCamCuts[D_8016110C].lookAt, &sDebugCamAnim.keyframe, &sDebugCamAnim.curFrame)) {

        D_8012D13C[7] = ((sDebugCamAnim.keyframe + 1) / 10) + '0';
        D_8012D13C[8] = ((sDebugCamAnim.keyframe + 1) % 10) + '0';
        D_8012D13C[10] = ((sDebugCamCuts[D_8016110C].nPoints - 5) / 10) + '0';
        D_8012D13C[11] = ((sDebugCamCuts[D_8016110C].nPoints - 5) % 10) + '0';
        DebugCamera_SetTextValue(sDebugCamAnim.unk_04, &D_8012D114[10], 4);
        DebugCamera_ScreenTextColored(15, 22, DEBUG_CAM_TEXT_ORANGE, D_8012D114);
        DebugCamera_SetTextValue(sDebugCamAnim.unk_0C, &D_8012D128[10], 4);
        DebugCamera_ScreenTextColored(15, 23, DEBUG_CAM_TEXT_ORANGE, D_8012D128);
        DebugCamera_ScreenTextColored(15, 24, DEBUG_CAM_TEXT_ORANGE, D_8012D13C);
        DebugCamera_ScreenTextColored(16, 26, DEBUG_CAM_TEXT_PEACH, D_8012CEF0);

        sDebugCamAnim.unk_04++;
        sDebugCamAnim.unk_0C++;

        if (sDebugCamCuts[D_8016110C].nFrames > 0 && sDebugCamCuts[D_8016110C].nFrames < sDebugCamAnim.unk_04) {
            D_8016110C++;
            sDebugCamAnim.curFrame = 0.0f;
            sDebugCamAnim.unk_04 = 0;
            sDebugCamAnim.keyframe = 0;
            return D_8016110C | 0x8000;
        }

        if (sDebugCamCuts[D_8016110C].mode != 1) {
            DebugCamera_CopyVec3f(&sDebugCamAnim.positionPos, &debugCam->eye);
            DebugCamera_CopyVec3f(&sDebugCamAnim.lookAtPos, &debugCam->at);
        } else {
            func_800B3FF4(&cam->playerPosRot, &sDebugCamAnim.lookAtPos, &debugCam->at);
            func_800B3FF4(&cam->playerPosRot, &sDebugCamAnim.positionPos, &debugCam->eye);
        }

        debugCam->fov = sDebugCamAnim.fov;
        debugCam->roll = sDebugCamAnim.roll;
        debugCam->rollDegrees = sDebugCamAnim.roll * (360.0f / 256.0f);

    } else {
        D_8016110C++;
        sDebugCamAnim.keyframe = 0;
        sDebugCamAnim.curFrame = 0.0f;
        sDebugCamAnim.unk_04 = 0;
        if (D_8016110C == ARRAY_COUNT(sDebugCamCuts) - 1) {
            D_8016110C = 0;
            sDebugCamAnim.curFrame = 0.0f;
            sDebugCamAnim.keyframe = 0;
            sDebugCamAnim.unk_0A = 0;
            return -1;
        }
    }

    return D_8016110C | 0x8000;
}

void DebugCamera_Reset(Camera* cam, DebugCam* debugCam) {
    s32 i;

    D_801612EA = '*';
    for (i = 0; i < ARRAY_COUNT(sLetters); i++) {
        sLetters[i] = 'X';
    }

    for (i = 0; i < 0xF; i++) {
        DebugCamera_ResetCut(i, false);
    }
    sDebugCamPtr = debugCam;
    D_8016110C = 0;
    sCurFileIdx = 0;
    sLastFileIdx = -1;
    sDebugCamAnim.unk_0A = 0;
}

s32 DebugCamera_UpdateDemoControl(DebugCam* debugCam, Camera* cam) {
    static s32 sMempakFiles;
    static u32 sDebugCamColors[] = {
        DEBUG_CAM_TEXT_GOLD,  DEBUG_CAM_TEXT_GOLD, DEBUG_CAM_TEXT_GOLD,
        DEBUG_CAM_TEXT_GREEN, DEBUG_CAM_TEXT_GOLD, DEBUG_CAM_TEXT_GOLD,
    };
    static s32 sMempakFilesize = 0;
    s32 i;
    s32 idx1;
    s32 idx2;
    s16 idx3;
    char sp74[(ARRAY_COUNT(sDebugCamCuts) - 1 + 4) * 2];
    DebugCamCut sp64;
    VecGeo sp5C;
    s32 (*callbacks[])(char*) = { DebugCamera_SaveCallback, DebugCamera_LoadCallback, DebugCamera_ClearCallback };

    DebugCamera_ScreenTextColored(14, 5, DEBUG_CAM_TEXT_YELLOW, D_8012CF44); // DEMO CONTROL

    idx1 = sCurFileIdx >> 1;
    idx2 = sLastFileIdx >> 1;

    switch (debugCam->sub.demoCtrlActionIdx) {
        case ACTION_SAVE:
        case ACTION_LOAD:
        case ACTION_CLEAR:
            switch (debugCam->sub.demoCtrlMenu) {

                case DEMO_CTRL_MENU(ACTION_SAVE, MENU_INFO):
                case DEMO_CTRL_MENU(ACTION_LOAD, MENU_INFO):
                case DEMO_CTRL_MENU(ACTION_CLEAR, MENU_INFO): {
                    if ((1 << sCurFileIdx) & sMempakFiles) {
                        if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_DLEFT) ||
                            CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_DRIGHT)) {
                            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                            debugCam->sub.demoCtrlToggleSwitch ^= 1;
                        }
                        D_8012CEE0[41][9] = MEMPAK_INDEX_TO_LETTER(sCurFileIdx);
                        DebugCamera_ScreenTextColored(10, 7, DEBUG_CAM_TEXT_WHITE, D_8012CEE0[41]);
                        DebugCamera_ScreenTextColored(16, 7, DEBUG_CAM_TEXT_WHITE,
                                                      D_8012CF60[debugCam->sub.demoCtrlActionIdx]);
                        DebugCamera_ScreenTextColored(20, 7, DEBUG_CAM_TEXT_WHITE, D_8012CF88[0]);

                        DebugCamera_ScreenTextColored(
                            17, 8, debugCam->sub.demoCtrlToggleSwitch ? DEBUG_CAM_TEXT_GOLD : DEBUG_CAM_TEXT_GREEN,
                            D_8012CF94);
                        DebugCamera_ScreenTextColored(
                            21, 8, debugCam->sub.demoCtrlToggleSwitch ? DEBUG_CAM_TEXT_GREEN : DEBUG_CAM_TEXT_GOLD,
                            D_8012CF98);

                        if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_A)) {
                            if (debugCam->sub.demoCtrlToggleSwitch == 0) {
                                Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                                debugCam->sub.demoCtrlMenu++;
                            } else {
                                Audio_PlaySfxGeneral(NA_SE_SY_CANCEL, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                                debugCam->sub.demoCtrlMenu = 0;
                            }
                        }
                    } else {
                        if (debugCam->sub.demoCtrlMenu == 100) {
                            debugCam->sub.demoCtrlMenu++;
                        } else {
                            debugCam->sub.demoCtrlToggleSwitch ^= 1;
                            D_8012CF84[9] = MEMPAK_INDEX_TO_LETTER(sCurFileIdx);
                            DebugCamera_ScreenTextColored(13, 7, DEBUG_CAM_TEXT_WHITE,
                                                          D_8012CF88[-1]); // todo: find something better
                            DebugCamera_ScreenTextColored(18, 7, DEBUG_CAM_TEXT_WHITE, D_8012CF80);
                            DebugCamera_ScreenTextColored(
                                13, 9, debugCam->sub.demoCtrlToggleSwitch ? DEBUG_CAM_TEXT_PEACH : DEBUG_CAM_TEXT_BLUE,
                                "PRESS B BUTTON");
                        }
                    }
                    if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_B)) {
                        Audio_PlaySfxGeneral(NA_SE_SY_CANCEL, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        debugCam->sub.demoCtrlMenu = 0;
                        return 1;
                    }
                    goto block_2;
                }

                case DEMO_CTRL_MENU(ACTION_SAVE, MENU_CALLBACK):
                case DEMO_CTRL_MENU(ACTION_LOAD, MENU_CALLBACK):
                case DEMO_CTRL_MENU(ACTION_CLEAR, MENU_CALLBACK): {
                    D_8012CEE0[41][9] = MEMPAK_INDEX_TO_LETTER(sCurFileIdx);
                    DebugCamera_ScreenTextColored(12, 7, DEBUG_CAM_TEXT_WHITE, D_8012CEE0[41]);
                    DebugCamera_ScreenTextColored(18, 7, DEBUG_CAM_TEXT_WHITE,
                                                  D_8012CF60[debugCam->sub.demoCtrlActionIdx]);
                    DebugCamera_ScreenTextColored(22, 7, DEBUG_CAM_TEXT_WHITE, D_8012CF9C[0]);

                    if (callbacks[debugCam->sub.demoCtrlActionIdx - 1](&D_8012CF84[9])) {
                        debugCam->sub.demoCtrlMenu++;
                        return 1;
                    } else {
                        debugCam->sub.demoCtrlMenu += 8;
                        return 1;
                    }
                }

                case DEMO_CTRL_MENU(ACTION_SAVE, MENU_SUCCESS):
                case DEMO_CTRL_MENU(ACTION_LOAD, MENU_SUCCESS):
                case DEMO_CTRL_MENU(ACTION_CLEAR, MENU_SUCCESS): {
                    debugCam->sub.demoCtrlToggleSwitch ^= 1;
                    D_8012CEE0[41][9] = MEMPAK_INDEX_TO_LETTER(sCurFileIdx);
                    DebugCamera_ScreenTextColored(13, 7, DEBUG_CAM_TEXT_WHITE, D_8012CEE0[41]);
                    DebugCamera_ScreenTextColored(19, 7, DEBUG_CAM_TEXT_WHITE,
                                                  D_8012CF60[debugCam->sub.demoCtrlMenu / 100]);
                    DebugCamera_ScreenTextColored(23, 7, DEBUG_CAM_TEXT_WHITE, D_8012CFA4);
                    DebugCamera_ScreenTextColored(
                        13, 9, (debugCam->sub.demoCtrlToggleSwitch != 0) ? DEBUG_CAM_TEXT_PEACH : DEBUG_CAM_TEXT_BLUE,
                        "PRESS B BUTTON");

                    if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_A) ||
                        CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_B)) {
                        Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        if (debugCam->sub.demoCtrlMenu == DEMO_CTRL_MENU(ACTION_LOAD, MENU_SUCCESS)) {
                            debugCam->sub.demoCtrlActionIdx = ACTION_E;
                        }
                        debugCam->sub.demoCtrlMenu = DEMO_CTRL_MENU(ACTION_E, MENU_INFO);
                        return 1;
                    }
                    goto block_2;
                }

                case DEMO_CTRL_MENU(ACTION_SAVE, MENU_ERROR):
                case DEMO_CTRL_MENU(ACTION_LOAD, MENU_ERROR):
                case DEMO_CTRL_MENU(ACTION_CLEAR, MENU_ERROR): {
                    debugCam->sub.demoCtrlToggleSwitch ^= 1;
                    D_8012CEE0[41][9] = MEMPAK_INDEX_TO_LETTER(sCurFileIdx);
                    DebugCamera_ScreenTextColored(13, 7, DEBUG_CAM_TEXT_WHITE,
                                                  D_8012CEE0[(debugCam->sub.demoCtrlMenu / 100) + 32]);
                    DebugCamera_ScreenTextColored(17, 7, DEBUG_CAM_TEXT_WHITE, D_8012CFAC);
                    DebugCamera_ScreenTextColored(23, 7, DEBUG_CAM_TEXT_WHITE, D_8012CFA4);
                    DebugCamera_ScreenTextColored(
                        13, 9, (debugCam->sub.demoCtrlToggleSwitch != 0) ? DEBUG_CAM_TEXT_PEACH : DEBUG_CAM_TEXT_BLUE,
                        "PRESS B BUTTON");

                    if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_A) ||
                        CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_B)) {
                        Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        debugCam->sub.demoCtrlMenu -= 9;
                    }
                block_2:
                    return 1;
                }

                case 1:
                    goto block_1;

                default: {
                    if (Mempak_Init(DEBUG_CAM_CONTROLLER_PORT)) {
                        sMempakFiles = Mempak_FindFiles(DEBUG_CAM_CONTROLLER_PORT, 'A', 'E');
                        debugCam->sub.demoCtrlMenu = DEMO_CTRL_MENU(ACTION_E, MENU_CALLBACK);
                        DebugCamera_CalcMempakAllocSize();
                        if ((1 << sCurFileIdx) & sMempakFiles) {
                            sMempakFilesize =
                                Mempak_GetFileSize(DEBUG_CAM_CONTROLLER_PORT, MEMPAK_INDEX_TO_LETTER(sCurFileIdx));
                            debugCam->sub.demoCtrlActionIdx = ACTION_LOAD;
                        } else {
                            sMempakFilesize = 0;
                            debugCam->sub.demoCtrlActionIdx = ACTION_SAVE;
                        }
                    block_1:
                        idx2 = 1;
                        for (i = 0; i < 5; i++) {
                            sp74[i * 2 + 1] = (sMempakFiles & idx2) ? MEMPAK_INDEX_TO_LETTER(i) : '?';
                            sp74[i * 2 + 0] = '-';

                            idx2 <<= 1;
                        }
                        sp74[i * 2 + 0] = '-';
                        sp74[i * 2 + 1] = '\0';

                        if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_DRIGHT)) {
                            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                            if (sCurFileIdx >= 4) {
                                sCurFileIdx = 0;
                            } else {
                                sCurFileIdx++;
                            }

                            if ((1 << sCurFileIdx) & sMempakFiles) {
                                sMempakFilesize =
                                    Mempak_GetFileSize(DEBUG_CAM_CONTROLLER_PORT, MEMPAK_INDEX_TO_LETTER(sCurFileIdx));
                                debugCam->sub.demoCtrlActionIdx = ACTION_LOAD;
                            } else {
                                sMempakFilesize = 0;
                                debugCam->sub.demoCtrlActionIdx = ACTION_SAVE;
                            }
                        }
                        if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_DLEFT)) {
                            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                            if (sCurFileIdx <= 0) {
                                sCurFileIdx = 4;
                            } else {
                                sCurFileIdx--;
                            }

                            if ((1 << sCurFileIdx) & sMempakFiles) {
                                sMempakFilesize =
                                    Mempak_GetFileSize(DEBUG_CAM_CONTROLLER_PORT, MEMPAK_INDEX_TO_LETTER(sCurFileIdx));
                                debugCam->sub.demoCtrlActionIdx = ACTION_LOAD;
                            } else {
                                sMempakFilesize = 0;
                                debugCam->sub.demoCtrlActionIdx = ACTION_SAVE;
                            }
                        }
                        idx3 = debugCam->sub.demoCtrlActionIdx;
                        DebugCamera_ScreenTextColored(14, 7, DEBUG_CAM_TEXT_WHITE, D_8012CF50[idx3]);
                        DebugCamera_ScreenTextColored(15, 7, DEBUG_CAM_TEXT_GOLD, sp74);

                        DebugCamera_ScreenTextColored(16 + (sCurFileIdx * 2), 7, DEBUG_CAM_TEXT_GREEN, "_"); // cursor
                        DebugCamera_SetTextValue(DebugCamera_GetMempakAllocSize(), sp74, 6);
                        DebugCamera_ScreenTextColored(13, 9, DEBUG_CAM_TEXT_BLUE, D_8012CF78); // NEED      BYTE
                        DebugCamera_ScreenTextColored(17, 9, DEBUG_CAM_TEXT_GOLD, sp74);
                        DebugCamera_SetTextValue(Mempak_GetFreeBytes(DEBUG_CAM_CONTROLLER_PORT), sp74, 6);
                        DebugCamera_ScreenTextColored(13, 10, DEBUG_CAM_TEXT_BLUE, D_8012CF74); // FREE      BYTE
                        DebugCamera_ScreenTextColored(17, 10, DEBUG_CAM_TEXT_GOLD, sp74);
                        if (sMempakFilesize != 0) {
                            DebugCamera_SetTextValue(sMempakFilesize, sp74, 6);
                            DebugCamera_ScreenTextColored(13, 11, DEBUG_CAM_TEXT_GREEN, D_8012CFA8);
                            DebugCamera_ScreenTextColored(17, 11, DEBUG_CAM_TEXT_GOLD, sp74);
                        }

                        idx1 = (debugCam->sub.demoCtrlActionIdx + 2);
                        DebugCamera_ScreenTextColored(15, 22, DEBUG_CAM_TEXT_PEACH, D_8012CF7C);
                        DebugCamera_ScreenTextColored(18, 23, sDebugCamColors[idx1], D_8012CF64);
                        DebugCamera_ScreenTextColored(18, 24, sDebugCamColors[idx1 - 1], D_8012CF68);
                        DebugCamera_ScreenTextColored(18, 25, sDebugCamColors[idx1 - 2], D_8012CF6C);
                        DebugCamera_ScreenTextColored(14, 22 + debugCam->sub.demoCtrlActionIdx, DEBUG_CAM_TEXT_GREEN,
                                                      D_8012CF0C); // current selection
                        DebugCamera_ScreenTextColored(13, 26, DEBUG_CAM_TEXT_WHITE, D_8012CF60[0]);
                        DebugCamera_ScreenTextColored(20, 26, DEBUG_CAM_TEXT_WHITE, D_8012CF70);

                        if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_DUP)) {
                            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                            debugCam->sub.demoCtrlActionIdx = (debugCam->sub.demoCtrlActionIdx - 1) % 4u;
                        }
                        if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_DDOWN)) {
                            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                            debugCam->sub.demoCtrlActionIdx = (debugCam->sub.demoCtrlActionIdx + 1) % 4u;
                        }

                        if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_A)) {
                            Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                            debugCam->sub.demoCtrlToggleSwitch = 0;
                            debugCam->sub.demoCtrlMenu = DEMO_CTRL_MENU(debugCam->sub.demoCtrlActionIdx, MENU_INFO);
                        }
                        if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_B)) {
                            Audio_PlaySfxGeneral(NA_SE_SY_CANCEL, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                            debugCam->sub.demoCtrlActionIdx = ACTION_E;
                            return 1;
                        }
                        goto block_2;
                    } else {
                        DebugCamera_ScreenTextColored(12, 26, DEBUG_CAM_TEXT_GOLD, D_8012CF60[0]);
                        DebugCamera_ScreenTextColored(19, 26, DEBUG_CAM_TEXT_GOLD, D_8012CF80);
                        if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_B) ||
                            CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_DUP) ||
                            CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_DDOWN)) {

                            Audio_PlaySfxGeneral(NA_SE_SY_CANCEL, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                            debugCam->sub.demoCtrlActionIdx = ACTION_E;
                        }
                        return 2;
                    }
                    break;
                }
            }
            break;

        default: {
            if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_DUP)) {
                Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                debugCam->sub.demoCtrlMenu = DEMO_CTRL_MENU(ACTION_E, MENU_INFO);
                debugCam->sub.demoCtrlActionIdx = (debugCam->sub.demoCtrlActionIdx - 1) % 4u;
                sCurFileIdx = 0;
            }
            if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_DDOWN)) {
                Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                debugCam->sub.demoCtrlMenu = DEMO_CTRL_MENU(ACTION_E, MENU_INFO);
                debugCam->sub.demoCtrlActionIdx = (debugCam->sub.demoCtrlActionIdx + 1) % 4u;
                sCurFileIdx = 0;
            }

            DebugCamera_DrawSlotLetters(sp74, 7, 5, DEBUG_CAM_TEXT_GOLD);

            if (sDebugCamAnim.unk_0A != 0) {
                DebugCamera_ScreenTextColored(4, 7, DEBUG_CAM_TEXT_WHITE, D_8012CF4C);
                DebugCamera_ScreenTextColored(6 + (D_8016110C * 2), 7, DEBUG_CAM_TEXT_GREEN, ">");

                if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_CUP)) {
                    if (D_8016110C > 0) {
                        D_8016110C--;
                    }

                    sDebugCamAnim.curFrame = 0.0f;
                    sDebugCamAnim.keyframe = 0;
                    sDebugCamAnim.unk_04 = 0;
                } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_CDOWN)) {
                    if (D_8016110C < 14) {
                        D_8016110C++;
                    }

                    sDebugCamAnim.curFrame = 0.0f;
                    sDebugCamAnim.keyframe = 0;
                    sDebugCamAnim.unk_04 = 0;
                } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_CLEFT)) {
                    sDebugCamAnim.unk_0A = 0;
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING_ALT);
                    Letterbox_SetSizeTarget(0);
                    D_8016110C = 0;
                    return 2;
                }

                if (func_800B91B0(cam, debugCam) == 0) {
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING_ALT);
                    Letterbox_SetSizeTarget(0);
                    Audio_PlaySfxGeneral(NA_SE_SY_GET_RUPY, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                }
                sp5C = OLib_Vec3fDiffToVecGeo(&debugCam->eye, &debugCam->at);
                debugCam->unk_1C =
                    DebugCamera_CalcUpFromPitchYawRoll(sp5C.pitch, sp5C.yaw, CAM_DEG_TO_BINANG(debugCam->rollDegrees));
                return 2;
            }

            if (CHECK_BTN_ALL(sPlay->state.input[1].press.button, BTN_CRIGHT)) {
                gUseCutsceneCam = false;
                gSaveContext.save.cutsceneIndex = 0xFFFD;
                gSaveContext.cutsceneTrigger = 1;
                sDebugCamAnim.curFrame = 0.0f;
                sDebugCamAnim.keyframe = 0;
                sDebugCamAnim.unk_04 = 0;
                sDebugCamAnim.unk_0A = 1;
                sDebugCamAnim.unk_0C = 0;
                D_8016110C = 0;
                Audio_PlaySfxGeneral(NA_SE_SY_HP_RECOVER, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            }

            if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_L)) {
                if (sp74[sCurFileIdx] == '?') {
                    sLastFileIdx = -1;
                    D_801612EA = '*';
                } else {
                    sLastFileIdx = sCurFileIdx;
                    D_801612EA = sDebugCamCuts[idx1].letter;
                }
                if (1) {}
            } else if (!CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_L)) {
                if (sLastFileIdx != -1) {
                    switch (sp74[sCurFileIdx]) {
                        case '?':
                            Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                            sDebugCamCuts[idx1] = sDebugCamCuts[idx2];
                            sp74[sCurFileIdx] = '?'; // useless
                            DebugCamera_ResetCut(idx2, false);
                            break;
                        case '-':
                            Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                            sp64 = sDebugCamCuts[idx2];
                            if (sLastFileIdx < sCurFileIdx) {
                                // rotate right
                                for (i = idx2; i < idx1 - 1 && i < ARRAY_COUNT(sDebugCamCuts) - 1; i++) {
                                    sDebugCamCuts[i] = sDebugCamCuts[i + 1];
                                }
                                sDebugCamCuts[idx1 - 1] = sp64;
                            } else if (sCurFileIdx < sLastFileIdx) {
                                // rotate left
                                for (i = idx2; idx1 < i && i > 0; i--) {
                                    sDebugCamCuts[i] = sDebugCamCuts[i - 1];
                                }
                                sDebugCamCuts[idx1] = sp64;
                            }

                            for (i = 0; i < ARRAY_COUNT(sDebugCamCuts) - 1; i++) {
                                sp74[i * 2 + 1] = sDebugCamCuts[i].letter;
                            }
                            break;
                        default:
                            Audio_PlaySfxGeneral(NA_SE_SY_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                            break;
                    }
                }
                sLastFileIdx = -1;
            }

            if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_A)) {
                if (sp74[sCurFileIdx] == '?') {
                    Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    sp74[sCurFileIdx] = DebugCamera_InitCut(idx1, &debugCam->sub);
                    if (sp74[sCurFileIdx] == '?') {
                        DebugCamera_ScreenTextColored(15, 24, DEBUG_CAM_TEXT_GREEN, D_8012CF48);
                    }
                }
            }

            if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_B)) {
                if (sp74[sCurFileIdx] != '?' && sp74[sCurFileIdx] != '-') {
                    Audio_PlaySfxGeneral(NA_SE_SY_CANCEL, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    sp74[sCurFileIdx] = '?';
                    DebugCamera_ResetCut(idx1, true);
                }
            }

            if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_R)) {
                if (sp74[sCurFileIdx] != '?' && sp74[sCurFileIdx] != '-') {
                    Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                    for (i = 0; i < sDebugCamCuts[idx1].nPoints; i++) {
                        debugCam->sub.lookAt[i] = sDebugCamCuts[idx1].lookAt[i];
                    }
                    // why use another loop for that...
                    for (i = 0; i < sDebugCamCuts[idx1].nPoints; i++) {
                        debugCam->sub.position[i] = sDebugCamCuts[idx1].position[i];
                    }

                    debugCam->sub.mode = sDebugCamCuts[idx1].mode;
                    debugCam->sub.nFrames = sDebugCamCuts[idx1].nFrames;
                    debugCam->sub.nPoints = sDebugCamCuts[idx1].nPoints;
                    debugCam->sub.unkIdx = 0;
                    func_800B41DC(debugCam, debugCam->sub.unkIdx, cam);
                    sp74[sCurFileIdx] = '?';
                    DebugCamera_ResetCut(idx1, true);
                    debugCam->unk_00 = 1;
                }
            }

            if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_DRIGHT)) {
                Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                if (sCurFileIdx == 0x1E) {
                    sCurFileIdx = 0;
                } else {
                    sCurFileIdx++;
                }
            }
            if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_DLEFT)) {
                Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                sCurFileIdx = (sCurFileIdx == 0) ? 0x1E : sCurFileIdx - 1;
            }

            if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_L) &&
                CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_CRIGHT)) {
                for (i = 0; i < ARRAY_COUNT(sDebugCamCuts) - 1; i++) {
                    osSyncPrintf("###%2d:(%c) (%d %d) %d %d %d\n", i, sDebugCamCuts[i].letter,
                                 sDebugCamCuts[i].position, sDebugCamCuts[i].lookAt, sDebugCamCuts[i].nFrames,
                                 sDebugCamCuts[i].nPoints, sDebugCamCuts[i].mode);
                }
                DebugCamera_PrintAllCuts(cam);
            } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].cur.button, BTN_L) &&
                       CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_CLEFT)) {
                Audio_PlaySfxGeneral(NA_SE_SY_GET_RUPY, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                for (i = 0; i < ARRAY_COUNT(sDebugCamCuts) - 1; i++) {
                    if (sDebugCamCuts[i].nPoints != 0) {
                        osSyncPrintf("\n@@@ /* CUT [%d]\t*/", i);
                        DebugCamera_PrintCutBytes(&sDebugCamCuts[i]);
                    }
                }
            } else if (CHECK_BTN_ALL(sPlay->state.input[DEBUG_CAM_CONTROLLER_PORT].press.button, BTN_CRIGHT)) {
                sDebugCamAnim.curFrame = 0.0f;
                sDebugCamAnim.keyframe = 0;
                sDebugCamAnim.unk_04 = 0.0f;
                sDebugCamAnim.unk_0A = 1;
                sDebugCamAnim.unk_0C = 0;
                Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
                Letterbox_SetSizeTarget(32);
                D_8016110C = 0;
                Audio_PlaySfxGeneral(NA_SE_SY_HP_RECOVER, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            }

            DebugCamera_ScreenTextColored(4, 7, DEBUG_CAM_TEXT_WHITE, D_8012CF50[0]);
            sp74[1] = 0;
            if (sLastFileIdx != -1) {
                sp74[0] = D_801612EA;
                DebugCamera_ScreenTextColored(5 + sLastFileIdx, 7, DEBUG_CAM_TEXT_BROWN, sp74);
            } else {
                sp74[0] = '_';
            }
            DebugCamera_ScreenTextColored(5 + sCurFileIdx, 7, DEBUG_CAM_TEXT_GREEN, sp74);

            break;
        }
    }

    return 1;
}

void func_800BB03C(Camera* cam) {
    func_800B91B0(cam, sDebugCamPtr);
}

void func_800BB060(void) {
    sDebugCamAnim.unk_0A = 0;
}

int func_800BB06C(void) {
    return sDebugCamPtr->unk_00 == 2 && sDebugCamAnim.unk_0A != 0;
}
