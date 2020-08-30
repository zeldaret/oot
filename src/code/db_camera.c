#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ s16 mode;
    /* 0x0002 */ s16 nFrames;
    /* 0x0004 */ s16 nPoints;
    /* 0x0006 */ s16 unkIdx;
    /* 0x0008 */ s16 unk_08;
    /* 0x000A */ s16 unk_0A;
    /* 0x000C */ s32 unk_0C; // indicates position vs lookAt?
    /* 0x0010 */ char unk_10[0x14];
    /* 0x0024 */ CutsceneCameraPoint position[129];
    /* 0x0834 */ CutsceneCameraPoint lookAt[129];
    /* 0x1044 */ s16 demoCtrlMenu;
    /* 0x1046 */ s16 demoCtrlActionIdx; // e (?), s (save), l (load), c (clear)
    /* 0x1048 */ s16 demoCtrlToggleSwitch;
    /* 0x104A */ s16 unk_104A;
    /* 0x104C */ s16 unk_104C;
    /* 0x104E */ s16 unk_104E;
} DbCameraSub; // size = 0x1050

typedef struct {
    /* 0x0000 */ u32 unk_00;
    /* 0x0004 */ Vec3f at;
    /* 0x0010 */ Vec3f eye;
    /* 0x001C */ Vec3f unk_1C;
    /* 0x0028 */ char unk_28[0xC];
    /* 0x0034 */ s32 unk_34;
    /* 0x0038 */ s32 unk_38;
    /* 0x003C */ s32 unk_3C;
    /* 0x0040 */ s32 unk_40;
    /* 0x0044 */ s32 unk_44;
    /* 0x0048 */ f32 fov;
    /* 0x004C */ s16 roll;
    /* 0x004E */ char unk_4E[0x2];
    /* 0x0050 */ f32 unk_50;
    /* 0x0054 */ char unk_54[0x60-0x54];
    /* 0x0060 */ Vec3f unk_60;
    /* 0x006C */ Vec3f unk_6C;
    /* 0x0078 */ s16 unk_78;
    /* 0x007A */ s16 unk_7A;
    /* 0x007C */ DbCameraSub sub;
} DbCamera; // size = 0x10CC

typedef struct {
    /* 0x00 */ char letter;
    /* 0x01 */ u8 unk_01;
    /* 0x02 */ s16 mode;
    /* 0x04 */ CutsceneCameraPoint* position;
    /* 0x08 */ CutsceneCameraPoint* lookAt;
    /* 0x0C */ s16 nFrames;
    /* 0x0E */ s16 nPoints;
} DbCameraCut; // size = 0x10

typedef struct {
    /* 0x00 */ f32 curFrame;
    /* 0x04 */ f32 unk_04; // frame count?
    /* 0x08 */ s16 keyframe;
    /* 0x0A */ s16 unk_0A;
    /* 0x0C */ s16 unk_0C;
    /* 0x10 */ Vec3f positionPos; // confusing name
    /* 0x1C */ Vec3f lookAtPos;
    /* 0x28 */ f32 roll;
    /* 0x2C */ f32 fov;
} DbCameraAnim; // size = 0x30

char* D_8012CEE0[] = { "\x8Cｷ-ﾌﾚ-ﾑ\x8Dｶﾞ" };
const char* D_8012CEE4 = "\x8Dﾀﾘﾏｾﾝ｡";
const char* D_8012CEE8 = "\x8Dｻｲｾｲﾃﾞｷﾏｾﾝ";
const char* D_8012CEEC = "\x8Dｻｲｾｲｼｭｳﾘｮｳ";
const char* D_8012CEF0 = "\x8Dｻｲｾｲﾁｭｳ!";

const char* D_8012CEF4 = "DEMO CAMERA TOOL";
const char* D_8012CEF8[] = { "\x8Dﾓｳﾊｲﾘﾏｾﾝ", "\x8Dﾄｳﾛｸ   ﾃﾝﾒ", "\x8Dﾍﾝｺｳ   /  " };
const char* D_8012CF04 = ">            >";
const char* D_8012CF08 = "<            <";
const char* D_8012CF0C = "<          >";
const char* D_8012CF10 = "\x8C*ﾌﾟﾚｲﾔ-*";
const char* D_8012CF14 = "\x8C\Eﾓ-ﾄﾞ\x8D ｿｳﾀｲ";
const char* D_8012CF18[] = { "\x8C\Eﾓ-ﾄﾞ\x8Dｾﾞｯﾀｲ", "\x8Dｶﾞﾒﾝ\x8C   ﾃﾞﾓ", "\x8Dｶﾞﾒﾝ   ﾌﾂｳ" };
const char* D_8012CF24[] = { "\x8DPｼﾞｶﾝ  MAX", "\x8Cﾘﾝｸ\x8D    ｷｵｸ", "\x8Cﾘﾝｸ\x8D     ﾑｼ" };
const char* D_8012CF30 = "\x8D*ﾐﾃﾙｲﾁ*";
const char* D_8012CF34 = "\x8C*ｶﾒﾗ\x8Dｲﾁ*";
const char* D_8012CF38 = "DEBUG CAMERA";
const char* D_8012CF3C = "\x8Cｾﾝﾀ-/ﾛｯｸ";
const char* D_8012CF40 = "\x8Cｾﾝﾀ-/ﾌﾘ-";

const char* D_8012CF44 = "DEMO CONTROL";
const char* D_8012CF48 = "\x8Cﾒﾓﾘ\x8Dｶﾞﾀﾘﾏｾﾝ";
const char* D_8012CF4C = "p";
const char* D_8012CF50[] = { "e", "s", "l", "c" };

const char* D_8012CF60[] = { "\x8Cﾒﾓﾘﾊﾟｯｸ" }; // Mempak
const char* D_8012CF64 = "\x8Cｾｰﾌﾞ"; // Save
const char* D_8012CF68 = "\x8Cﾛｰﾄﾞ"; // Load
const char* D_8012CF6C = "\x8Cｸﾘｱ-"; // Clear
const char* D_8012CF70 = "\x8Dｦﾇｶﾅｲﾃﾞﾈ";

const char* D_8012CF74 = "FREE      BYTE";
const char* D_8012CF78 = "NEED      BYTE";
const char* D_8012CF7C = "\x8C*ﾒﾓﾘ-ﾊﾟｯｸ*";
const char* D_8012CF80 = "\x8Dｦﾐﾂｹﾗﾚﾏｾﾝ";
char* D_8012CF84 = "\x8Cﾌｧｲﾙ \x8Dｦ";
const char* D_8012CF88[] = { "\x8Dｼﾃﾓｲｲﾃﾞｽｶ?", "\x8Dｹﾞﾝｻﾞｲﾍﾝｼｭｳﾁｭｳﾉ", "\x8Cﾌｧｲﾙ\x8Dﾊﾊｷｻﾚﾏｽ" };
const char* D_8012CF94 = "\x8Dﾊｲ";
const char* D_8012CF98 = "\x8Dｲｲｴ";
const char* D_8012CF9C[] = { "\x8Dｼﾃｲﾏｽ", "\x8Dｳﾜｶﾞｷ" };
const char* D_8012CFA4 = "\x8Dｼﾏｼﾀ";
const char* D_8012CFA8 = "USE       BYTE";
const char* D_8012CFAC = "\x8Dﾆｼｯﾊﾟｲ";

const char* D_8012CFB0 = "\x8C\Eﾓ-ﾄﾞ\x8D  ｺﾃｲ";
char D_8012CFB4[] = "\x8Cﾌﾚ-ﾑ       ";
char D_8012CFC4[] = "\x8Cｷ-   /   ";
char D_8012CFD0[] = "\x8D(ｾﾝﾀ-ﾃﾝ)\0\0\0\0\0";
char D_8012CFE4[] = "\x8D(ｹﾞﾝﾃﾝ)\0\0\0\0\0\0";
char D_8012CFF8[] = "\x8C(ﾌﾟﾚｲﾔ-)\0\0\0\0\0";
char D_8012D00C[] = "\x8D(ｲﾁｱﾜｾ)\0\0\0\0\0\0";
char D_8012D020[] = "\x8D(ｾｯﾃｲ)\0\0\0\0\0\0\0\0";
char D_8012D034[] = "\x8D(ｷｬｯｶﾝ)\0\0\0\0\0\0";
char D_8012D048[] = "\x8CﾎﾟｲﾝﾄNo.  \0\0\0";
char D_8012D05C[] = "\x8Dｶﾞｶｸ    \0\0\0";
char D_8012D070[] = "\x8CNﾌﾚ-ﾑ   \0\0\0\0";
char D_8012D084[] = "\x8DZｶｲﾃﾝ   \0\0\0";
char D_8012D098[] = "\x8Cﾓ-ﾄﾞ    \0\0\0\0";
char D_8012D0AC[] = "  R\x8Dﾁｭｳｼﾝ  \0\0\0";

char D_8012D0C0[] = "\x8DPｼﾞｶﾝ       \0\0";
char D_8012D0D4[] = "\x8Dｷｮﾘ       \0";
char D_8012D0E4[] = "\x8DXｶｲﾃﾝ       \0\0";
char D_8012D0F8[] = "\x8DYｶｲﾃﾝ       \0\0";
u32 D_8012D10C = 100;
u32 D_8012D110 = 0;
char D_8012D114[] = "\x8Cﾌﾚ-ﾑ         ";
char D_8012D128[] = "\x8Cﾄ-ﾀﾙ         ";
char D_8012D13C[] = "\x8Cｷ-     /   ";

#define ACTION_E        0
#define ACTION_SAVE     1
#define ACTION_LOAD     2
#define ACTION_CLEAR    3

#define MENU_INFO      0
#define MENU_CALLBACK  1
#define MENU_SUCCESS   2
#define MENU_ERROR     9

#define DEMO_CTRL_MENU(actionIdx, menuIdx) (actionIdx*100+menuIdx)

s32 DbCamera_SaveCallback(char* c);
s32 DbCamera_LoadCallback(char* c);
s32 DbCamera_ClearCallback(char* c);

GlobalContext* sDbCameraGlobalContext;
s32 sDbCameraMempakFiles;
DbCamera* sDbCameraPtr;
s16 D_8016110C;
DbCameraAnim sDbCameraAnim;
s32 D_80161140;
s32 D_80161144;
s16 sDbCameraCurFileIdx;
s16 sDbCameraLastFileIdx; // holds the file index of the slot to move
// is the size correct? todo: add ALIGN32 for sizeof in Mempak functions, replace 0xF with sizeof()
DbCameraCut sDbCameraCuts[16];
char D_80161250[0x80];
char sDbCameraLetters[26];
char D_801612EA;
s32 sDbCameraMempakAllocSize;

Vec3f* DbCamera_AddVecSph(Vec3f* out, Vec3f* in, VecSph* sph) {
    Vec3f ret;
    Vec3f vec;

    OLib_VecSphGeoToVec3f(&vec, sph);

    ret.x = in->x + vec.x;
    ret.y = in->y + vec.y;
    ret.z = in->z + vec.z;
    *out = ret;
    return out;
}

// annoying
#ifdef NON_MATCHING
Vec3f* func_800B3BD4(Vec3f* arg0, s16 pitch, s16 yaw, s16 roll) {

    f32 sinPitch;
    f32 cosPitch;
    f32 sinYaw;
    f32 cosYaw;
    f32 sinNegRoll;
    f32 cosNegRoll;
    Vec3f sp9C;

    sinPitch = Math_Sins(pitch);
    cosPitch = Math_Coss(pitch);
    sinYaw = Math_Sins(yaw);
    cosYaw = Math_Coss(yaw);
    sinNegRoll = Math_Sins(-roll);
    cosNegRoll = Math_Coss(-roll);

    sp9C.x = 
        (-sinPitch * sinYaw * (((1.0f - SQ(cosPitch * sinYaw)) * cosNegRoll) + SQ(cosPitch * sinYaw))) +
        (cosPitch * ((cosPitch * sinYaw * sinPitch * (1.0f - cosNegRoll)) - cosPitch * cosYaw * sinNegRoll)) +
        (-sinPitch * cosYaw * ((cosPitch * cosYaw * cosPitch * sinYaw * (1.0f - cosNegRoll)) + (sinPitch * sinNegRoll)));
	
    sp9C.y = 
        (-sinPitch * sinYaw * (cosPitch * sinYaw * sinPitch * (1.0f - cosNegRoll) + cosPitch * cosYaw * sinNegRoll)) +
        (cosPitch * (((1.0f - SQ(cosPitch * sinYaw)) * cosNegRoll) + SQ(cosPitch * sinYaw))) +
        (-sinPitch * cosYaw * ((sinPitch * cosPitch * cosYaw * (1.0f - cosNegRoll)) - cosPitch * sinYaw * sinNegRoll));

    sp9C.z =
        (-sinPitch * sinYaw * ((cosPitch * cosYaw * cosPitch * sinYaw * (1.0f - cosNegRoll)) - sinPitch * sinNegRoll)) + 
        (cosPitch * ((sinPitch * cosPitch * cosYaw * (1.0f - cosNegRoll)) + (cosPitch * sinYaw * sinNegRoll))) +
        (-sinPitch * cosYaw * (((1.0f - SQ(cosPitch * cosYaw)) * cosNegRoll) + SQ(cosPitch * cosYaw)));
    
    
    *arg0 = sp9C;
    return arg0;
    /*
    f32 sinYaw;
    f32 cosYaw;
    f32 sinNegRoll;
    Vec3f sp9C;
    f32 sp54;
    //f32 sp50;
    f32 sp48;
    f32 cosPitchCosYawSinRoll;
    f32 sp3C;
    f32 sp38;
    Vec3f* temp_t9;
    f32 cosNegRoll;
    f32 temp_f10;
    f32 cosPitchCosYaw;
    f32 negSinPitchSinYaw;
    f32 negSinPitchCosYaw;
    f32 temp_f18;
    f32 cosPitch;
    f32 sinPitch;
    f32 cosPitchSinYaw;
    f32 negSinPitch;
    f32 tmp0;
    //f32 tmp1;

    sinPitch = Math_Sins(pitch);
    cosPitch = Math_Coss(pitch);
    sinYaw = Math_Sins(yaw);
    cosYaw = Math_Coss(yaw);
    //negSinPitch = -sinPitch;
    sinNegRoll = Math_Sins(-roll);
    cosNegRoll = Math_Coss(-roll);

    negSinPitchSinYaw = (-sinPitch * sinYaw);
    temp_f18 = 1.0f - cosNegRoll;
    cosPitchSinYaw = cosPitch * sinYaw;
    //sp50 = SQ(cosPitchSinYaw);
    sp48 = (cosPitchSinYaw * sinPitch) * temp_f18;
    cosPitchCosYaw = cosPitch * cosYaw;
    tmp0 = ((1.0f - SQ(cosPitchSinYaw)) * cosNegRoll) + SQ(cosPitchSinYaw);
    //tmp1 = ((1.0f - SQ(cosPitchCosYaw)) * cosNegRoll) + SQ(cosPitchCosYaw);
    cosPitchCosYawSinRoll = cosPitchCosYaw * sinNegRoll;
    negSinPitchCosYaw = -sinPitch * cosYaw;
    sp3C = (cosPitchCosYaw * cosPitchSinYaw) * temp_f18;
    sp38 = sinPitch * sinNegRoll;

    sp9C.x = 
        (negSinPitchSinYaw * (tmp0)) +
        (cosPitch * (sp48 - cosPitchCosYawSinRoll)) +
        (negSinPitchCosYaw * (sp3C + sp38));
    
    temp_f10 = (sinPitch * cosPitchCosYaw) * temp_f18;
    sp54 = cosPitchSinYaw * sinNegRoll;

    sp9C.y = 
        (negSinPitchSinYaw * (sp48 + cosPitchCosYawSinRoll)) +
        (cosPitch * ((tmp0))) +
        (negSinPitchCosYaw * (temp_f10 - sp54));

    sp9C.z =
        (negSinPitchSinYaw * (sp3C - sp38)) + 
        (cosPitch * (temp_f10 + sp54)) +
        (negSinPitchCosYaw * (((1.0f - SQ(cosPitchCosYaw)) * cosNegRoll) + SQ(cosPitchCosYaw)));

    *arg0 = sp9C;
    return arg0;
    */
}

#else
Vec3f* func_800B3BD4(Vec3f* arg0, s16 pitch, s16 yaw, s16 roll);
#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3BD4.s")
#endif

char* DbCamera_SetTextValue(s16 value, char* str, u8 endIdx) {
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
        *strIter-- = (value % 10) + '0'; value /= 10;
    } while (value != 0);
    
    if (sign == '-') {
        *strIter-- = sign;
    }

    while(strIter >= str) {
        *str++ = ' ';
    }

    return strIter;
}

void DbCamera_Vec3SToF(Vec3s* in, Vec3f* out) {
    out->x = in->x;
    out->y = in->y;
    out->z = in->z;
}

void DbCamera_Vec3FToS(Vec3f* in, Vec3s* out) {
    out->x = in->x;
    out->y = in->y;
    out->z = in->z;
}

void DbCamera_CopyVec3f(Vec3f* in, Vec3f* out) {
    out->x = in->x;
    out->y = in->y;
    out->z = in->z;
}

void DbCamera_Vec3SToF2(Vec3s* in, Vec3f* out) {
    out->x = in->x;
    out->y = in->y;
    out->z = in->z;
}

void func_800B3F94(PosRot* posRot, Vec3f* vec, Vec3s* out) {
    VecSph sph;
    Vec3f tempVec;
    OLib_Vec3fDiffToVecSphGeo(&sph, &posRot->pos, vec);
    sph.yaw -= posRot->rot.y;
    OLib_VecSphGeoToVec3f(&tempVec, &sph);
    DbCamera_Vec3FToS(&tempVec, out);
}

void func_800B3FF4(PosRot* posRot, Vec3f* vec, Vec3f* out) {
    VecSph sph;
    Vec3f tempVec;
    DbCamera_CopyVec3f(vec, &tempVec);
    OLib_Vec3fToVecSphGeo(&sph, &tempVec);
    sph.yaw += posRot->rot.y;
    DbCamera_AddVecSph(out, &posRot->pos, &sph);
}

void func_800B404C(PosRot* posRot, Vec3s* vec, Vec3f* out) {
    Vec3f tempVec;
    DbCamera_Vec3SToF(vec, &tempVec);
    func_800B3FF4(posRot, &tempVec, out);
}

s32 func_800B4088(DbCamera* dbCamera, Camera* cam) {
    CutsceneCameraPoint *position;
    CutsceneCameraPoint *lookAt;
    s32 i;

    position = &dbCamera->sub.position[dbCamera->sub.unkIdx];
    lookAt = &dbCamera->sub.lookAt[dbCamera->sub.unkIdx];

    position->continueFlag = -1;
    lookAt->continueFlag = position->continueFlag;
    position->nextPointFrame = 0;
    lookAt->nextPointFrame = 30;
    lookAt->cameraRoll = position->cameraRoll = dbCamera->roll * 1.40625f;
    lookAt->viewAngle = position->viewAngle = dbCamera->fov;

    if (dbCamera->sub.mode != 1) {
        DbCamera_Vec3FToS(&dbCamera->eye, &position->pos);
        DbCamera_Vec3FToS(&dbCamera->at, &lookAt->pos);
    } else {
        func_800B3F94(&cam->playerPosRot, &dbCamera->at, &lookAt->pos);
        func_800B3F94(&cam->playerPosRot, &dbCamera->eye, &position->pos);
    }

    for (i = 0; i < (dbCamera->sub.nPoints - 2); i++) {
        dbCamera->sub.position[i].continueFlag = dbCamera->sub.lookAt[i].continueFlag = 0;
    }

    dbCamera->sub.position[i].continueFlag = dbCamera->sub.lookAt[i].continueFlag = -1;

    return dbCamera->sub.unkIdx;
}

s16 func_800B41DC(DbCamera* dbCamera, s16 idx, Camera* cameraPtr)
{
    CutsceneCameraPoint* position = &dbCamera->sub.position[idx];
    CutsceneCameraPoint* lookAt = &dbCamera->sub.lookAt[idx];

    if (dbCamera->sub.mode != 1) {

        DbCamera_Vec3SToF2(&position->pos, &dbCamera->eye);
        DbCamera_Vec3SToF2(&lookAt->pos, &dbCamera->at);
    }
    else {

        func_800B404C(&cameraPtr->playerPosRot, &lookAt->pos, &dbCamera->at);
        func_800B404C(&cameraPtr->playerPosRot, &position->pos, &dbCamera->eye);
    }

    dbCamera->roll = lookAt->cameraRoll;
    dbCamera->unk_50 = dbCamera->roll * 1.40625f;
    dbCamera->fov = lookAt->viewAngle;
    return idx;
}

s32 func_800B42C0(DbCamera* dbCamera, Camera* cameraPtr) {

    CutsceneCameraPoint* position = &dbCamera->sub.position[dbCamera->sub.unkIdx];
    CutsceneCameraPoint* lookAt = &dbCamera->sub.lookAt[dbCamera->sub.unkIdx];

    position->continueFlag = 
    lookAt->continueFlag = 0;

    if (dbCamera->sub.mode != 1) {
        DbCamera_Vec3FToS(&dbCamera->eye, &position->pos);
        DbCamera_Vec3FToS(&dbCamera->at, &lookAt->pos);
    }
    else {
        func_800B3F94(&cameraPtr->playerPosRot, &dbCamera->at, &lookAt->pos);
        func_800B3F94(&cameraPtr->playerPosRot, &dbCamera->eye, &position->pos);
    }

    return dbCamera->sub.unkIdx;
}

s32 func_800B4370(DbCamera* dbCamera, s16 idx, Camera* cam) {
    CutsceneCameraPoint* lookAt = &dbCamera->sub.lookAt[idx];
    CutsceneCameraPoint* position = &dbCamera->sub.position[idx];
    VecSph sph;
    Vec3f at;

    if (dbCamera->sub.mode != 1) {
        if (dbCamera->sub.unk_0C != 0) {
            DbCamera_Vec3SToF2(&position->pos, &dbCamera->at);
        } else {
            DbCamera_Vec3SToF2(&lookAt->pos, &dbCamera->at);
        }
    } else {
        if (dbCamera->sub.unk_0C != 0) {
            func_800B404C(&cam->playerPosRot, &position->pos, &at);
        } else {
            func_800B404C(&cam->playerPosRot, &lookAt->pos, &at);
        }
        dbCamera->at = at;
    }
    sph.pitch = 0x2000;
    sph.yaw -= 0x7FFF;
    sph.r = 250.0f;
    DbCamera_AddVecSph(&dbCamera->eye, &dbCamera->at, &sph);
    dbCamera->roll = lookAt->cameraRoll;
    dbCamera->unk_50 = dbCamera->roll * 1.40625f;
    dbCamera->fov = lookAt->viewAngle;
    return idx;
}

void func_800B44E0(DbCamera* dbCamera, Camera* cam) {
    s32 i;

    if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, R_CBUTTONS)) {
        sDbCameraAnim.keyframe = 0;
        sDbCameraAnim.unk_0A = 1;
        sDbCameraAnim.curFrame = 0.0f;
        sDbCameraAnim.unk_04 = 0;

        for (i = 0; i < (dbCamera->sub.nPoints - 2); i++) {
            dbCamera->sub.position[i].continueFlag = dbCamera->sub.lookAt[i].continueFlag = 0;
        }

        dbCamera->sub.position[i].continueFlag = dbCamera->sub.lookAt[i].continueFlag = -1;
    }

    if (dbCamera->sub.nPoints < 6) {
        if (sDbCameraAnim.unk_0A != 0) {
            Audio_PlaySoundGeneral(NA_SE_SY_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            sDbCameraAnim.unk_0A = (u16)0;
        }
        func_8006376C(0x11, 0x17, 3, D_8012CEE0[0]);
        func_8006376C(0x12, 0x18, 3, D_8012CEE4);
        func_8006376C(0x10, 0x1A, 1, D_8012CEE8);
        return;
    }

    if (!func_800BB2B4(&sDbCameraAnim.positionPos, &sDbCameraAnim.roll, &sDbCameraAnim.fov, dbCamera->sub.position, &sDbCameraAnim.keyframe, &sDbCameraAnim.curFrame) && 
        !func_800BB2B4(&sDbCameraAnim.lookAtPos, &sDbCameraAnim.roll, &sDbCameraAnim.fov,  dbCamera->sub.lookAt, &sDbCameraAnim.keyframe, &sDbCameraAnim.curFrame) && 
        sDbCameraAnim.unk_0A == 1
        ) {
        Audio_PlaySoundGeneral(NA_SE_SY_HP_RECOVER, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        sDbCameraAnim.unk_04++;

        if (dbCamera->sub.nFrames > 0 && dbCamera->sub.nFrames < sDbCameraAnim.unk_04) {
            sDbCameraAnim.unk_0A = (u16)0;
            func_8006376C(0xF, 0x1A, 1, D_8012CEEC);
        }

        if (dbCamera->sub.mode != 1) {
            DbCamera_CopyVec3f(&sDbCameraAnim.positionPos, &dbCamera->eye);
            DbCamera_CopyVec3f(&sDbCameraAnim.lookAtPos, &dbCamera->at);
        }
        else {
            func_800B3FF4(&cam->playerPosRot, &sDbCameraAnim.lookAtPos, &dbCamera->at);
            func_800B3FF4(&cam->playerPosRot, &sDbCameraAnim.positionPos, &dbCamera->eye);
        }

        dbCamera->fov = sDbCameraAnim.fov;
        dbCamera->roll = sDbCameraAnim.roll;
        dbCamera->unk_50 = sDbCameraAnim.roll * 1.40625f;

        DbCamera_SetTextValue(sDbCameraAnim.unk_04, D_8012CFB4 + 8, 4);
        func_8006376C(0x10, 0x17, 3, D_8012CFB4);
        D_8012CFC4[5] = ((sDbCameraAnim.keyframe + 1) / 10) + '0';
        D_8012CFC4[6] = ((sDbCameraAnim.keyframe + 1) % 10) + '0';
        D_8012CFC4[8] = ((dbCamera->sub.nPoints - 5) / 10) + '0';
        D_8012CFC4[9] = ((dbCamera->sub.nPoints - 5) % 10) + '0';
        func_8006376C(0x10, 0x18, 3, D_8012CFC4);
        func_8006376C(0x10, 0x1A, 1, D_8012CEF0);
        return;
    }

    sDbCameraAnim.unk_0A = 0;
    func_8006376C(0xF, 0x1A, 1, D_8012CEEC);
}

void DbCamera_PrintPoints(const char* name, s16 count, CutsceneCameraPoint* point) {
    s32 i;

    osSyncPrintf("@@@static SplinedatZ  %s[] = {\n", name);
    for (i = 0; i < count; i++) {
        osSyncPrintf("@@@    /* key frame %2d */ {\n", i);
        osSyncPrintf("@@@    /*     code     */ %d,\n", point[i].continueFlag);
        osSyncPrintf("@@@    /*     z        */ %d,\n", point[i].cameraRoll);
        osSyncPrintf("@@@    /*     T        */ %d,\n", point[i].nextPointFrame);
        osSyncPrintf("@@@    /*     zoom     */ %f,\n", point[i].viewAngle);
        osSyncPrintf("@@@    /*     pos      */ { %d, %d, %d }\n", point[i].pos.x, point[i].pos.y, point[i].pos.z);
        osSyncPrintf("@@@    },\n");
    }
    osSyncPrintf("@@@};\n@@@\n");
}

void DbCamera_PrintF32Bytes(f32 value)
{
    f32 b = value;
    char* a = (char*)&b;
    osSyncPrintf("\n@@@%d,%d,%d,%d,", a[0], a[1], a[2], a[3]);
}

void DbCamera_PrintU16Bytes(u16 value)
{
    u16 pad;
    u16 b = value;
    char* a = (char*)&b;
    osSyncPrintf("\n@@@%d,%d,", a[0], a[1]);
}

void DbCamera_PrintS16Bytes(s16 value)
{
    u16 pad;
    s16 b = value;
    char* a = (char*)&b;
    osSyncPrintf("\n@@@%d,%d,", a[0], a[1]);
}

void DbCamera_PrintCutBytes(DbCameraCut* cut) {
    CutsceneCameraPoint* point;
    CutsceneCameraPoint* points;
    s32 i;

    points = cut->lookAt;
    osSyncPrintf("\n@@@ 0,0,0,2,\t/* Look Camera\t*/");
    osSyncPrintf("\n@@@ 0,1,\t/* dousa\t*/");

    osSyncPrintf("\n@@@ 0,0,\t/* Start Flame\t*/");
    DbCamera_PrintU16Bytes(cut->nFrames);
    osSyncPrintf("\t/*  End   Flame\t*/");

    osSyncPrintf("\n@@@0,0,\t/*  Dammy\t*/\n@@@ ");
    for (i = 0; i < cut->nPoints; i++) {
        point = points + i;
        osSyncPrintf("\n@@@    %d, /*     code     */", point->continueFlag);
        osSyncPrintf("\n@@@    %d,  /*     z        */", point->cameraRoll);
        DbCamera_PrintU16Bytes(point->nextPointFrame);
        osSyncPrintf("\t/*  sokudo\t*/");
        DbCamera_PrintF32Bytes(point->viewAngle);
        osSyncPrintf("\t/*  zoom\t*/");
        DbCamera_PrintS16Bytes(point->pos.x);
        osSyncPrintf("\t/*  x pos\t*/");
        DbCamera_PrintS16Bytes(point->pos.y);
        osSyncPrintf("\t/*  y pos\t*/");
        DbCamera_PrintS16Bytes(point->pos.z);
        osSyncPrintf("\t/*  z pos\t*/\n");
        osSyncPrintf("\n@@@0,0,\t/*  Dammy\t*/\n@@@ ");
    }

    points = cut->position;
    osSyncPrintf("\n@@@ 0,0,0,1,\t/* Position Camera */");
    osSyncPrintf("\n@@@ 0,1,\t/* dousa\t*/");

    osSyncPrintf("\n@@@ 0,0,\t/* Start Flame\t*/");
    DbCamera_PrintU16Bytes(cut->nFrames);
    osSyncPrintf("\t/*  End   Flame\t*/");

    osSyncPrintf("\n@@@0,0,\t/*  Dammy\t*/\n@@@ ");
    for (i = 0; i < cut->nPoints; i++) {
        point = points + i;
        osSyncPrintf("\n@@@    %d, /*     code     */", point->continueFlag);
        osSyncPrintf("\n@@@    %d, /*     z        */", point->cameraRoll);
        DbCamera_PrintU16Bytes(point->nextPointFrame);
        osSyncPrintf("\t/*  sokudo\t*/");
        DbCamera_PrintF32Bytes(point->viewAngle);
        osSyncPrintf("\t/*  zoom\t*/");
        DbCamera_PrintS16Bytes(point->pos.x);
        osSyncPrintf("\t/*  x pos\t*/");
        DbCamera_PrintS16Bytes(point->pos.y);
        osSyncPrintf("\t/*  y pos\t*/");
        DbCamera_PrintS16Bytes(point->pos.z);
        osSyncPrintf("\t/*  z pos\t*/");
        osSyncPrintf("\n@@@0,0,\t/*  Dammy\t*/\n@@@ ");
    }
}

void DbCamera_Init(DbCamera* dbCamera, Camera* cameraPtr) {
    dbCamera->sub.unk_104E = 0;
    dbCamera->unk_44 = 0;
    dbCamera->unk_00 = 0;
    dbCamera->unk_34 = 0;
    dbCamera->unk_3C = 0;
    dbCamera->unk_38 = -1;
    dbCamera->unk_40 = -1;
    dbCamera->roll = 0;
    dbCamera->sub.unk_104C = dbCamera->sub.unk_104E;
    dbCamera->sub.unk_104A = dbCamera->sub.unk_104E;
    dbCamera->fov = 0.0f;
    dbCamera->unk_50 = 0.0f;
    sDbCameraGlobalContext = cameraPtr->globalCtx;
    dbCamera->sub.mode = 0;
    dbCamera->sub.nFrames = -1;
    dbCamera->sub.nPoints = 1;
    dbCamera->sub.unkIdx = 0;
    dbCamera->sub.unk_08 = 0;
    dbCamera->sub.unk_0A = 0;
    dbCamera->unk_78 = 0;
    dbCamera->unk_7A = 0;
    dbCamera->sub.demoCtrlMenu = DEMO_CTRL_MENU(ACTION_E, MENU_INFO);
    dbCamera->sub.demoCtrlActionIdx = ACTION_E;
    dbCamera->sub.demoCtrlToggleSwitch = 0;
    dbCamera->unk_6C.x = 0;
    dbCamera->unk_6C.y = 0;
    dbCamera->unk_6C.z = 0;
}

s32 func_800B4DE4(DbCamera *this, Camera *cam) {
    this->at = cam->at;
    this->eye = cam->eye;
    this->unk_1C = cam->unk_68;
    this->fov = cam->fov;
    this->roll = 0;
    this->sub.nPoints = 1;
    this->sub.unkIdx = 0;
    this->sub.unk_08 = 0;
    this->sub.unk_0A = 1;
    this->sub.unk_0C = 1;
    this->unk_78 = 0;
    this->unk_7A = 0;
    this->unk_50 = 0.0f;
    return func_800B4088(this, cam);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/DbCamera_Update.s")

s32 DbCamera_GetFirstAvailableLetter() {
    s32 i;
    for (i = 0; i < ARRAY_COUNT(sDbCameraLetters); i++) {
        switch (sDbCameraLetters[i])
        {
            case 'O':
                break;
            default:
                return 'A' + i;
        }
    }
    
    return '?';
}

char DbCamera_InitCut(s32 idx, DbCameraSub* sub) {
    s32 i;

    sDbCameraCuts[idx].unk_01 = 0x61;
    sDbCameraCuts[idx].letter = DbCamera_GetFirstAvailableLetter();
    D_80161250[0x3F + sDbCameraCuts[idx].letter] = 'O';

    i = sub->nPoints * sizeof(CutsceneCameraPoint);
    sDbCameraCuts[idx].lookAt = DebugArena_MallocDebug(i, "../db_camera.c", 2748);
    if (sDbCameraCuts[idx].lookAt == NULL) {
        // Debug camera memory allocation failure
        osSyncPrintf("%s: %d: デバッグカメラ メモリ確保失敗！！\n", "../db_camera.c", 2751);
        return '?';
    }

    sDbCameraCuts[idx].position = DebugArena_MallocDebug(i, "../db_camera.c", 2754);
    if (sDbCameraCuts[idx].position == NULL) {
        // Debug camera memory allocation failure
        osSyncPrintf("%s: %d: デバッグカメラ メモリ確保失敗！！\n", "../db_camera.c", 2757);
        DebugArena_FreeDebug(sDbCameraCuts[idx].lookAt, "../db_camera.c", 2758);
        sDbCameraCuts[idx].lookAt = NULL;
        return '?';
    }

    sDbCameraCuts[idx].mode = sub->mode;
    sDbCameraCuts[idx].nFrames = sub->nFrames;
    sDbCameraCuts[idx].nPoints = sub->nPoints;

    for (i = 0; i < sub->nPoints; i++) {
        sDbCameraCuts[idx].lookAt[i] = sub->lookAt[i];
        sDbCameraCuts[idx].position[i] = sub->position[i];
    }

    return sDbCameraCuts[idx].letter;
}

void DbCamera_ResetCut(s32 idx, s32 shouldFree) {
    if (sDbCameraCuts[idx].letter != '?') {
        D_80161250[0x3F + sDbCameraCuts[idx].letter] = 'X';
    }

    if (shouldFree) {
        DebugArena_FreeDebug(sDbCameraCuts[idx].lookAt, "../db_camera.c", 2784);
        DebugArena_FreeDebug(sDbCameraCuts[idx].position, "../db_camera.c", 2785);
    }

    sDbCameraCuts[idx].letter = '?';
    sDbCameraCuts[idx].lookAt = NULL;
    sDbCameraCuts[idx].position = NULL;
    sDbCameraCuts[idx].mode = 0;
    sDbCameraCuts[idx].nFrames = 0;
    sDbCameraCuts[idx].nPoints = 0;
}

s32 DbCamera_CalcMempakAllocSize() {
    s32 i;

    sDbCameraMempakAllocSize = 0;
    for (i = 0; i < ARRAY_COUNT(sDbCameraCuts)-1; i++) {
        if (sDbCameraCuts[i].letter != '?') {
            sDbCameraMempakAllocSize += ALIGN32(sDbCameraCuts[i].nPoints * sizeof(CutsceneCameraPoint)) * 2;
        }
    }
    sDbCameraMempakAllocSize += 0x100;
    sDbCameraMempakAllocSize = ALIGN256(sDbCameraMempakAllocSize);
    return sDbCameraMempakAllocSize;
}

s32 DbCamera_GetMempakAllocSize(void) {
    return sDbCameraMempakAllocSize;
}

s32 DbCamera_LoadCallback(char* c) {
    s32 i;
    s32 size;
    s32 off;

    for (i = 0; i < ARRAY_COUNT(sDbCameraCuts)-1; i++) {
        if (sDbCameraCuts[i].letter != '?') {
            DbCamera_ResetCut(i, true);
            sDbCameraLetters[i] = 'X';
        }
    }

    if (!Mempak_Read(2, *c, sDbCameraCuts, 0, sizeof(sDbCameraCuts))) {
        return false;
    }

    off = sizeof(sDbCameraCuts);
    for (i = 0; i < ARRAY_COUNT(sDbCameraCuts)-1; i++) {
        if (sDbCameraCuts[i].letter != '?') {
            size = sDbCameraCuts[i].nPoints * sizeof(CutsceneCameraPoint);

            sDbCameraCuts[i].lookAt = DebugArena_MallocDebug(ALIGN32(size), "../db_camera.c", 2844);
            if (sDbCameraCuts[i].lookAt == NULL) {
                // Debug camera memory allocation failure
                osSyncPrintf("%s: %d: デバッグカメラ メモリ確保失敗！！\n", "../db_camera.c", 2847);
                return false;
            }
            if (!Mempak_Read(2, *c, sDbCameraCuts[i].lookAt, off, ALIGN32(size))) {
                return false;
            }
            off += ALIGN32(size);

            sDbCameraCuts[i].position = DebugArena_MallocDebug(ALIGN32(size), "../db_camera.c", 2855);
            if (sDbCameraCuts[i].position == NULL) {
                // Debug camera memory allocation failure
                osSyncPrintf("%s: %d: デバッグカメラ メモリ確保失敗！！\n", "../db_camera.c", 2858);
                return false;
            }
            if (!Mempak_Read(2, *c, sDbCameraCuts[i].position, off, ALIGN32(size))) {
                return false;
            }
            off += ALIGN32(size);

            D_80161250[0x3F + sDbCameraCuts[i].letter] = 'O';
        }
    }

    return true;
}

s32 DbCamera_SaveCallback(char* c) {
    s32 pad[2];
    s32 ret;
    u32 freeSize;
    s32 off;
    s32 size;
    s32 i;

    ret = Mempak_GetFileSize(2, *c);
    freeSize =  Mempak_GetFreeBytes(2);

    if (sDbCameraMempakAllocSize < (freeSize + ret)) {
        if (!Mempak_Alloc(2, c, sDbCameraMempakAllocSize)) {
            return false;
        }

        if (!Mempak_Write(2, *c, sDbCameraCuts, 0, sizeof(sDbCameraCuts))) {
            Mempak_DeleteFile(2, *c);
            return false;
        }

        off = sizeof(sDbCameraCuts);
        for (i = 0; i < ARRAY_COUNT(sDbCameraCuts)-1; i++) {
            if (sDbCameraCuts[i].letter != '?') {
                size = sDbCameraCuts[i].nPoints * sizeof(CutsceneCameraPoint);

                ret = Mempak_Write(2, *c, sDbCameraCuts[i].lookAt, off, ALIGN32(size));
                if (!ret) {
                    break;
                }
                off += ALIGN32(size);

                ret = Mempak_Write(2, *c, sDbCameraCuts[i].position, off, ALIGN32(size));
                if (!ret)
                    break;

                off += ALIGN32(size);
            }
            ret = true;
        }

        if (ret) {
            return *c;
        }
        else {
            Mempak_DeleteFile(2, *c);
            return false;
        }
    }

    return false;
}

s32 DbCamera_ClearCallback(char* c) {
    return Mempak_DeleteFile(2, *c);
}

void DbCamera_DrawSlotLetters(char* str, s16 y, s16 x, s32 colorId) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(sDbCameraCuts)-1; i++) {
        str[i*2+1] = sDbCameraCuts[i].letter;
        str[i*2+0] = '-';
    }

    str[0x14] = str[i*2+1] = '\0';
    func_8006376C(x, y, colorId, str);
    str[0x14] = str[i*2+0] = '-';
    func_8006376C(x+0x14, y, colorId, str+0x14);
}

void DbCamera_PrintAllCuts(Camera* cam) {
    s32 i;
    
    Audio_PlaySoundGeneral(NA_SE_SY_GET_RUPY, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    osSyncPrintf("@@@\n@@@\n@@@/* ****** spline point data ** start here ***** */\n@@@\n");

    for (i = 0; i < ARRAY_COUNT(sDbCameraCuts)-1; i++) {
        DbCameraCut* cut = &sDbCameraCuts[i];
        if (cut->nPoints != 0) {
            if (i != 0) {
                osSyncPrintf("@@@\n@@@/* ** %d ** */\n@@@\n", i);
            }

            DbCamera_PrintPoints("Lookat", cut->nPoints, cut->lookAt);
            DbCamera_PrintPoints("Position", cut->nPoints, cut->position);
            osSyncPrintf("@@@static short  nPoints = %d;\n@@@\n", cut->nPoints);
            osSyncPrintf("@@@static short  nFrames = %d;\n@@@\n", cut->nFrames);
            osSyncPrintf("@@@static short  Mode = %d;\n@@@\n", cut->mode);
        }
    }

    osSyncPrintf("@@@\n@@@\n@@@/* ****** spline point data ** finish! ***** */\n@@@\n");
}

s32 func_800B91B0(Camera* cam, DbCamera* dbCamera) {
    s32 pointCount;
    s32 curPoint;

    while (sDbCameraCuts[D_8016110C].letter == '?') {
        D_8016110C++;
        if (D_8016110C >= ARRAY_COUNT(sDbCameraCuts)-1) {
            sDbCameraAnim.curFrame = 0.0f;
            sDbCameraAnim.unk_04 = 0;
            sDbCameraAnim.keyframe = 0;
            sDbCameraAnim.unk_0A = 0;
            D_8016110C = 0;
            return 0;
        }
    }

    if (!func_800BB2B4(&sDbCameraAnim.positionPos, &sDbCameraAnim.roll, &sDbCameraAnim.fov, sDbCameraCuts[D_8016110C].position, &sDbCameraAnim.keyframe, &sDbCameraAnim.curFrame) && 
        !func_800BB2B4(&sDbCameraAnim.lookAtPos, &sDbCameraAnim.roll, &sDbCameraAnim.fov,  sDbCameraCuts[D_8016110C].lookAt, &sDbCameraAnim.keyframe, &sDbCameraAnim.curFrame)
        ) {
        
        D_8012D13C[7] = ((sDbCameraAnim.keyframe + 1) / 10) + '0';
        D_8012D13C[8] = ((sDbCameraAnim.keyframe + 1) % 10) + '0';
        D_8012D13C[10] = ((sDbCameraCuts[D_8016110C].nPoints-5) / 10) + '0';
        D_8012D13C[11] = ((sDbCameraCuts[D_8016110C].nPoints-5) % 10) + '0';
        DbCamera_SetTextValue(sDbCameraAnim.unk_04, D_8012D114 + 10, 4);
        func_8006376C(0xF, 0x16, 3, D_8012D114);
        DbCamera_SetTextValue(sDbCameraAnim.unk_0C, D_8012D128 + 10, 4);
        func_8006376C(0xF, 0x17, 3, D_8012D128);
        func_8006376C(0xF, 0x18, 3, D_8012D13C);
        func_8006376C(0x10, 0x1A, 1, D_8012CEF0);

        sDbCameraAnim.unk_04++;
        sDbCameraAnim.unk_0C++;

        if (sDbCameraCuts[D_8016110C].nFrames > 0 && sDbCameraCuts[D_8016110C].nFrames < sDbCameraAnim.unk_04) {
            D_8016110C++;
            sDbCameraAnim.curFrame = 0.0f;
            sDbCameraAnim.unk_04 = 0;
            sDbCameraAnim.keyframe = 0;
            return D_8016110C | 0x8000;
        }

        if (sDbCameraCuts[D_8016110C].mode != 1) {
            DbCamera_CopyVec3f(&sDbCameraAnim.positionPos, &dbCamera->eye);
            DbCamera_CopyVec3f(&sDbCameraAnim.lookAtPos, &dbCamera->at);
        }
        else {
            func_800B3FF4(&cam->playerPosRot, &sDbCameraAnim.lookAtPos, &dbCamera->at);
            func_800B3FF4(&cam->playerPosRot, &sDbCameraAnim.positionPos, &dbCamera->eye);
        }

        dbCamera->fov = sDbCameraAnim.fov;
        dbCamera->roll = sDbCameraAnim.roll;
        dbCamera->unk_50 = sDbCameraAnim.roll * 1.40625f;

    } else {
        D_8016110C++;
        sDbCameraAnim.keyframe = 0;
        sDbCameraAnim.curFrame = 0.0f;
        sDbCameraAnim.unk_04 = 0;
        if (D_8016110C == ARRAY_COUNT(sDbCameraCuts)-1) {
            D_8016110C = 0;
            sDbCameraAnim.curFrame = 0.0f;
            sDbCameraAnim.keyframe = 0;
            sDbCameraAnim.unk_0A = 0;
            return -1;
        }
    }

    return D_8016110C | 0x8000;
}

void DbCamera_Reset(Camera* cam, DbCamera* dbCam) {
    s32 i;

    D_801612EA = '*';
    for (i = 0; i < ARRAY_COUNT(sDbCameraLetters); i++) {
        sDbCameraLetters[i] = 'X';
    }

    for (i = 0; i < 0xF; i++) {
        DbCamera_ResetCut(i, false);
    }
    sDbCameraPtr = dbCam;
    D_8016110C = 0;
    sDbCameraCurFileIdx = 0;
    sDbCameraLastFileIdx = -1;
    sDbCameraAnim.unk_0A = 0;
}

#ifdef NON_MATCHING
u32 sDbCameraColors[] = { 4, 4, 4, 7, 4, 4, };
s32 DbCamera_UpdateDemoControl(DbCamera* dbCamera, Camera* cam) {

    static s32 mempakFileSize = 0; //  D_8012D170
    static s32 sDbCameraMempakFiles;

    s32 idx1; // sp+0xA0
    s32 idx2; // s0

    char sp74[ARRAY_COUNT(sDbCameraCuts)-1]; // sp+0x74
    DbCameraCut sp64; // sp+0x64
    VecSph sp5C;
    s32 (*callbacks[])(char*) = { DbCamera_SaveCallback, DbCamera_LoadCallback, DbCamera_ClearCallback }; // sp + 0x50

    s32 flag;
    s32 i;

    func_8006376C(0xE, 5, 0, D_8012CF44); // DEMO CONTROL

    idx1 = sDbCameraCurFileIdx >> 1;
    idx2 = sDbCameraLastFileIdx >> 1;


    switch (dbCamera->sub.demoCtrlActionIdx)
    {
    case ACTION_SAVE: // 1
    case ACTION_LOAD: // 2
    case ACTION_CLEAR: // 3
        switch (dbCamera->sub.demoCtrlMenu)
        {
        
        // 5c0c
        // 100(0x64) | 200(0xC8) | 300(0x12C)
        case DEMO_CTRL_MENU(ACTION_SAVE, MENU_INFO):
        case DEMO_CTRL_MENU(ACTION_LOAD, MENU_INFO):
        case DEMO_CTRL_MENU(ACTION_CLEAR, MENU_INFO):
        {
            if ((1 << sDbCameraCurFileIdx) & sDbCameraMempakFiles) {
                if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, L_JPAD) || CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, R_JPAD)) {
                    Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    dbCamera->sub.demoCtrlToggleSwitch ^= 1;
                }
                D_8012CEE0[41][9] = sDbCameraCurFileIdx + 'A';
                func_8006376C(0xA, 7, 5, D_8012CEE0[41]);
                func_8006376C(0x10, 7, 5, D_8012CF60[dbCamera->sub.demoCtrlActionIdx]);
                func_8006376C(0x14, 7, 5, D_8012CF88[0]);
                
                func_8006376C(0x11, 8, dbCamera->sub.demoCtrlToggleSwitch ? 4 : 7, D_8012CF94);
                func_8006376C(0x15, 8, dbCamera->sub.demoCtrlToggleSwitch ? 7 : 4, D_8012CF98);

                if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, A_BUTTON)) {
                    if (dbCamera->sub.demoCtrlToggleSwitch == 0) {
                        Audio_PlaySoundGeneral(NA_SE_SY_DECIDE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                        dbCamera->sub.demoCtrlMenu++;
                    }
                    else {
                        Audio_PlaySoundGeneral(NA_SE_SY_CANCEL, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                        dbCamera->sub.demoCtrlMenu = 0;
                    }
                }
            }
            else {
                if (dbCamera->sub.demoCtrlMenu == 100) {
                    dbCamera->sub.demoCtrlMenu++;
                }
                else {
                    dbCamera->sub.demoCtrlToggleSwitch ^= 1;
                    D_8012CF84[9] = sDbCameraCurFileIdx + 'A';
                    func_8006376C(0xD, 7, 5, D_8012CF88[-1]); // todo: find something better
                    func_8006376C(0x12, 7, 5, D_8012CF80);
                    func_8006376C(0xD, 9, dbCamera->sub.demoCtrlToggleSwitch ? 1 : 6, "PRESS B BUTTON");
                }
            }
            if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, B_BUTTON)) {
                Audio_PlaySoundGeneral(NA_SE_SY_CANCEL, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                dbCamera->sub.demoCtrlMenu = 0;
            }
            return 1;
        }
    
        // 5ee4
        // 101(0x65) | 201(0xC9) | 301(0x12D)
        case DEMO_CTRL_MENU(ACTION_SAVE, MENU_CALLBACK):
        case DEMO_CTRL_MENU(ACTION_LOAD, MENU_CALLBACK):
        case DEMO_CTRL_MENU(ACTION_CLEAR, MENU_CALLBACK):
        {
            D_8012CEE0[41][9] = sDbCameraCurFileIdx + 'A';
            func_8006376C(0xC, 7, 5, D_8012CEE0[41]);
            func_8006376C(0x12, 7, 5, D_8012CF60[dbCamera->sub.demoCtrlActionIdx]);
            func_8006376C(0x16, 7, 5, D_8012CF9C[0]);
            
            if (callbacks[dbCamera->sub.demoCtrlActionIdx - 1](&D_8012CF84[9])) {
                dbCamera->sub.demoCtrlMenu++;
                return 1;
            }
            else {
                dbCamera->sub.demoCtrlMenu += 8;
                return 1;
            }
        }

        // 5f9c
        // 102(0x66) | 202(0xCA) | 302(0x12E)
        case DEMO_CTRL_MENU(ACTION_SAVE, MENU_SUCCESS):
        case DEMO_CTRL_MENU(ACTION_LOAD, MENU_SUCCESS):
        case DEMO_CTRL_MENU(ACTION_CLEAR, MENU_SUCCESS):
        {
            dbCamera->sub.demoCtrlToggleSwitch ^= 1;
            D_8012CEE0[41][9] = sDbCameraCurFileIdx + 'A';
            func_8006376C(0xD, 7, 5, D_8012CEE0[41]);
            func_8006376C(0x13, 7, 5, D_8012CF60[dbCamera->sub.demoCtrlMenu / 100]);
            func_8006376C(0x17, 7, 5, D_8012CFA4);
            func_8006376C(0xD, 9, (dbCamera->sub.demoCtrlToggleSwitch != 0) ? 1 : 6, "PRESS B BUTTON");

            if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, A_BUTTON) || CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, B_BUTTON)) {
                Audio_PlaySoundGeneral(NA_SE_SY_DECIDE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                if (dbCamera->sub.demoCtrlMenu == DEMO_CTRL_MENU(ACTION_LOAD, MENU_SUCCESS)) {
                    dbCamera->sub.demoCtrlActionIdx = ACTION_E;
                }
                dbCamera->sub.demoCtrlMenu = DEMO_CTRL_MENU(ACTION_E, MENU_INFO);
                return 1;
            }
            break;
        }

        // 60c0
        // 109(0x6D) | 209(0xD1) | 309(0x135)
        case DEMO_CTRL_MENU(ACTION_SAVE, MENU_ERROR):
        case DEMO_CTRL_MENU(ACTION_LOAD, MENU_ERROR):
        case DEMO_CTRL_MENU(ACTION_CLEAR, MENU_ERROR):
        {
            dbCamera->sub.demoCtrlToggleSwitch ^= 1;
            D_8012CEE0[41][9] = sDbCameraCurFileIdx + 'A';
            func_8006376C(0xD, 7, 5, D_8012CEE0[(dbCamera->sub.demoCtrlMenu / 100) + 32]);
            func_8006376C(0x11, 7, 5, D_8012CFAC);
            func_8006376C(0x17, 7, 5, D_8012CFA4);
            func_8006376C(0xD, 9, (dbCamera->sub.demoCtrlToggleSwitch != 0) ? 1 : 6, "PRESS B BUTTON");

            if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, A_BUTTON) || CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, B_BUTTON)) {
                Audio_PlaySoundGeneral(NA_SE_SY_DECIDE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                dbCamera->sub.demoCtrlMenu -= 9;
            }
            return 1;
        }

        case 1: goto block_1;

        // 61d8
        default:
        {
            
            if (Mempak_Init(2)) {
                sDbCameraMempakFiles = Mempak_FindFile(2, 'A', 'E');
                dbCamera->sub.demoCtrlMenu = DEMO_CTRL_MENU(ACTION_E, MENU_CALLBACK);
                DbCamera_CalcMempakAllocSize();
                if ((1 << sDbCameraCurFileIdx) & sDbCameraMempakFiles) {
                    mempakFileSize = Mempak_GetFileSize(2, sDbCameraCurFileIdx + 'A');
                    dbCamera->sub.demoCtrlActionIdx = ACTION_LOAD;
                } else {
                    mempakFileSize = 0;
                    dbCamera->sub.demoCtrlActionIdx = ACTION_SAVE;
                }
block_1:
                idx2 = 1;
                for (i = 0; i < 5; i++) {
                    sp74[i*2+1] = (sDbCameraMempakFiles & idx2) ? i + 'A' : '?';
                    sp74[i*2+0] = '-';

                    idx2 <<= 1;
                }
                sp74[i*2+0] = '-';
                sp74[i*2+1] = '\0';

                if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, R_JPAD)) {
                    Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    if (sDbCameraCurFileIdx >= 4) {
                        sDbCameraCurFileIdx = 0;
                    }
                    else {
                        sDbCameraCurFileIdx++;
                    }

                    if ((1 << sDbCameraCurFileIdx) & sDbCameraMempakFiles) {
                        mempakFileSize = Mempak_GetFileSize(2, sDbCameraCurFileIdx + 'A');
                        dbCamera->sub.demoCtrlActionIdx = ACTION_LOAD;
                    }
                    else {
                        mempakFileSize = 0;
                        dbCamera->sub.demoCtrlActionIdx = ACTION_SAVE;
                    }
                }
                if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, L_JPAD)) {
                    Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    if (sDbCameraCurFileIdx <= 0) {
                        sDbCameraCurFileIdx = 4;
                    }
                    else {
                        sDbCameraCurFileIdx--;
                    }

                    if ((1 << sDbCameraCurFileIdx) & sDbCameraMempakFiles) {
                        mempakFileSize = Mempak_GetFileSize(2, sDbCameraCurFileIdx + 'A');
                        dbCamera->sub.demoCtrlActionIdx = ACTION_LOAD;
                    }
                    else {
                        mempakFileSize = 0;
                        dbCamera->sub.demoCtrlActionIdx = ACTION_SAVE;
                    }
                }
                // diff 6440: regalloc
                func_8006376C(0xE, 7, 5, D_8012CF50[dbCamera->sub.demoCtrlActionIdx]);
                func_8006376C(0xF, 7, 4, sp74);

                func_8006376C((sDbCameraCurFileIdx * 2) + 0x10, 7, 7, "_"); // cursor
                DbCamera_SetTextValue(DbCamera_GetMempakAllocSize(), sp74, 6);
                func_8006376C(0xD, 9, 6, D_8012CF78); // NEED      BYTE
                func_8006376C(0x11, 9, 4, sp74);
                DbCamera_SetTextValue(Mempak_GetFreeBytes(2), sp74, 6);
                func_8006376C(0xD, 0xA, 6, D_8012CF74); // FREE      BYTE
                func_8006376C(0x11, 0xA, 4, sp74);
                if (mempakFileSize != 0) { // diff: regalloc (comes from 6440?)
                    DbCamera_SetTextValue(mempakFileSize, sp74, 6);
                    func_8006376C(0xD, 0xB, 7, D_8012CFA8);
                    func_8006376C(0x11, 0xB, 4, sp74);
                }
                // diff 657C: sp+a0 ?
                func_8006376C(0xF, 0x16, 1, D_8012CF7C);
                func_8006376C(0x12, 0x17, sDbCameraColors[dbCamera->sub.demoCtrlActionIdx + 2], D_8012CF64);
                func_8006376C(0x12, 0x18, sDbCameraColors[dbCamera->sub.demoCtrlActionIdx + 1], D_8012CF68);
                func_8006376C(0x12, 0x19, sDbCameraColors[dbCamera->sub.demoCtrlActionIdx + 0], D_8012CF6C);
                func_8006376C(0xE, dbCamera->sub.demoCtrlActionIdx + 0x16, 7, D_8012CF0C); // current selection
                func_8006376C(0xD, 0x1A, 5, D_8012CF60[0]);
                func_8006376C(0x14, 0x1A, 5, D_8012CF70);

                // diff: regalloc
                if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, U_JPAD)) {
                    Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    dbCamera->sub.demoCtrlActionIdx = (dbCamera->sub.demoCtrlActionIdx - 1) % 4u;
                }
                if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, D_JPAD)) {
                    Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    dbCamera->sub.demoCtrlActionIdx = (dbCamera->sub.demoCtrlActionIdx + 1) % 4u;
                }

                if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, A_BUTTON)) {
                    Audio_PlaySoundGeneral(NA_SE_SY_DECIDE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    dbCamera->sub.demoCtrlToggleSwitch = 0;
                    dbCamera->sub.demoCtrlMenu = DEMO_CTRL_MENU(dbCamera->sub.demoCtrlActionIdx, MENU_INFO);
                }
                if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, B_BUTTON)) {
                    Audio_PlaySoundGeneral(NA_SE_SY_CANCEL, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    dbCamera->sub.demoCtrlActionIdx = ACTION_E;
                }
                return 1;
            }
            else {
                func_8006376C(0xC, 0x1A, 4, D_8012CF60[0]);
                func_8006376C(0x13, 0x1A, 4, D_8012CF80);
                if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, B_BUTTON) ||
                    CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, U_JPAD) || 
                    CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, D_JPAD)) {
                    
                    Audio_PlaySoundGeneral(NA_SE_SY_CANCEL, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    dbCamera->sub.demoCtrlActionIdx = ACTION_E;
                }
                return 2;
            }
            break;
        }
        }
        break;
    
    // 6840
    default:
    {
        // diff: regalloc
        if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, U_JPAD)) {
            Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            dbCamera->sub.demoCtrlMenu = DEMO_CTRL_MENU(ACTION_E, MENU_INFO);
            dbCamera->sub.demoCtrlActionIdx = (dbCamera->sub.demoCtrlActionIdx - 1) % 4u;
            sDbCameraCurFileIdx = 0;
        }
        if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, D_JPAD)) {
            Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            dbCamera->sub.demoCtrlMenu = DEMO_CTRL_MENU(ACTION_E, MENU_INFO);
            dbCamera->sub.demoCtrlActionIdx = (dbCamera->sub.demoCtrlActionIdx + 1) % 4u;
            sDbCameraCurFileIdx = 0;
        }

        DbCamera_DrawSlotLetters(sp74, 7, 5, 4);

        if (sDbCameraAnim.unk_0A != 0) {
            func_8006376C(4, 7, 5, D_8012CF4C);
            func_8006376C(D_8016110C * 2 + 6, 7, 7, ">");

            if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, U_CBUTTONS)) {
                if (D_8016110C > 0) {
                    D_8016110C--;
                }

                sDbCameraAnim.curFrame = 0.0f;
                sDbCameraAnim.keyframe = 0;
                sDbCameraAnim.unk_04 = 0;
            }
            else if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, D_CBUTTONS)) {
                if (D_8016110C < 14) {
                    D_8016110C++;
                }

                sDbCameraAnim.curFrame = 0.0f;
                sDbCameraAnim.keyframe = 0;
                sDbCameraAnim.unk_04 = 0;
            }
            else if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, L_CBUTTONS)) {
                sDbCameraAnim.unk_0A = 0;
                Interface_ChangeAlpha(2);
                ShrinkWindow_SetVal(0);
                D_8016110C = 0;
                return 2;
            }

            if (func_800B91B0(cam, dbCamera) == 0) {
                Interface_ChangeAlpha(2);
                ShrinkWindow_SetVal(0);
                Audio_PlaySoundGeneral(NA_SE_SY_GET_RUPY, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
            OLib_Vec3fDiffToVecSphGeo(&sp5C, &dbCamera->eye, &dbCamera->at);
            func_800B3BD4(&dbCamera->unk_1C, sp5C.pitch, sp5C.yaw, (dbCamera->unk_50 * 182.04167f) + 0.5f);
            return 2;
        }


        // 6ae4
        if (CHECK_PAD(sDbCameraGlobalContext->state.input[1].press, R_CBUTTONS)) {
            // diff: reordering
            D_8015FCC8 = 0;
            gSaveContext.cutsceneIndex = 0xFFFD;
            gSaveContext.cutsceneTrigger = 1;
            sDbCameraAnim.curFrame = 0.0f;
            sDbCameraAnim.keyframe = 0;
            sDbCameraAnim.unk_04 = 0;
            sDbCameraAnim.unk_0A = 1;
            sDbCameraAnim.unk_0C = 0;
            D_8016110C = 0;
            Audio_PlaySoundGeneral(NA_SE_SY_HP_RECOVER, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }

        if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, L_TRIG)) {
            if (sp74[sDbCameraCurFileIdx] == '?') {
                sDbCameraLastFileIdx = -1;
                D_801612EA = '*';
            }
            else {
                sDbCameraLastFileIdx = sDbCameraCurFileIdx;
                D_801612EA = sDbCameraCuts[idx1].letter;
            }
        }
        // diff: sDbCameraGlobalContext->state.input[2].cur loaded twice
        else if (!CHECK_PAD(sDbCameraGlobalContext->state.input[2].cur, L_TRIG)) {
            if (sDbCameraLastFileIdx != -1) {
                switch (sp74[sDbCameraCurFileIdx])
                {
                    case '?':
                        Audio_PlaySoundGeneral(NA_SE_SY_DECIDE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                        sDbCameraCuts[idx1] = sDbCameraCuts[idx2];
                        sp74[sDbCameraCurFileIdx] = '?'; // useless
                        DbCamera_ResetCut(idx2, false);
                        break;
                    case '-':
                        Audio_PlaySoundGeneral(NA_SE_SY_DECIDE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);

                        sp64 = sDbCameraCuts[idx2];
                        if (sDbCameraLastFileIdx < sDbCameraCurFileIdx) {
                            // rotate right
                            for (i = idx2; i < idx1 - 1 && i < ARRAY_COUNT(sDbCameraCuts)-1; i++) {
                                sDbCameraCuts[i] = sDbCameraCuts[i+1];
                            }
                            sDbCameraCuts[idx1] = sp64;
                        }
                        else if (sDbCameraCurFileIdx < sDbCameraLastFileIdx) {
                            // rotate left
                            for (i = idx2; idx1 < i && i > 0; i--) {
                                sDbCameraCuts[i] = sDbCameraCuts[i-1];
                            }
                            sDbCameraCuts[idx1] = sp64;
                        }

                        for (i = 0; i < ARRAY_COUNT(sDbCameraCuts)-1; i++) {
                            sp74[i] = sDbCameraCuts[i].letter;
                        }
                        break;
                    default:
                        Audio_PlaySoundGeneral(NA_SE_SY_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                        break;
                }
                sDbCameraLastFileIdx = -1;
            }
        }

        // 6f40
        if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, A_BUTTON)) {
            if (sp74[sDbCameraCurFileIdx] == '?') {
                Audio_PlaySoundGeneral(NA_SE_SY_DECIDE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                sp74[sDbCameraCurFileIdx] = DbCamera_InitCut(idx1, &dbCamera->sub);
                if (sp74[sDbCameraCurFileIdx] == '?') {
                    func_8006376C(0xF, 0x18, 7, D_8012CF48);
                }
            }
        }

        if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, B_BUTTON)) {
            if (sp74[sDbCameraCurFileIdx] != '?' && sp74[sDbCameraCurFileIdx] != '-') {
                Audio_PlaySoundGeneral(NA_SE_SY_CANCEL, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                sp74[sDbCameraCurFileIdx] = '?';
                DbCamera_ResetCut(idx1, true);
            }
        }

        if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, R_TRIG)) {
            if (sp74[sDbCameraCurFileIdx] != '?' && sp74[sDbCameraCurFileIdx] != '-') {
                Audio_PlaySoundGeneral(NA_SE_SY_DECIDE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);

                for (i = 0; i < sDbCameraCuts[idx1].nPoints; i++) {
                    dbCamera->sub.lookAt[i] = sDbCameraCuts[idx1].lookAt[i];
                }
                // why use another loop for that...
                for (i = 0; i < sDbCameraCuts[idx1].nPoints; i++) {
                    dbCamera->sub.position[i] = sDbCameraCuts[idx1].position[i];
                }

                dbCamera->sub.mode = sDbCameraCuts[idx1].mode;
                dbCamera->sub.nFrames = sDbCameraCuts[idx1].nFrames;
                dbCamera->sub.nPoints = sDbCameraCuts[idx1].nPoints;
                dbCamera->sub.unkIdx = 0;
                func_800B41DC(dbCamera, dbCamera->sub.unkIdx, cam);
                sp74[sDbCameraCurFileIdx] = '?';
                DbCamera_ResetCut(idx1, true);
                dbCamera->unk_00 = 1;
            }
        }

        if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, R_JPAD)) {
            Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            if (sDbCameraCurFileIdx == 0x1E) {
                sDbCameraCurFileIdx = 0;
            }
            else {
                sDbCameraCurFileIdx++;
            }
        }
        if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, L_JPAD)) {
            Audio_PlaySoundGeneral(NA_SE_SY_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            if (sDbCameraCurFileIdx == 0) {
                // diff: reordering (0x1E is loaded before sDbCameraGlobalContext)
                sDbCameraCurFileIdx = 0x1E;
            }
            else {
                sDbCameraCurFileIdx--;
            }
        }

        if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].cur, L_TRIG) && CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, R_CBUTTONS)) {
            for (i = 0; i < ARRAY_COUNT(sDbCameraCuts)-1; i++) {
                osSyncPrintf("###%2d:(%c) (%d %d) %d %d %d\n", i, sDbCameraCuts[i].letter, sDbCameraCuts[i].position, sDbCameraCuts[i].lookAt, sDbCameraCuts[i].nFrames, sDbCameraCuts[i].nPoints, sDbCameraCuts[i].mode);
            }
            DbCamera_PrintAllCuts(cam);
        }
        else if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].cur, L_TRIG) && CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, L_CBUTTONS)) {
            Audio_PlaySoundGeneral(NA_SE_SY_GET_RUPY, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            for (i = 0; i < ARRAY_COUNT(sDbCameraCuts)-1; i++) {
                if (sDbCameraCuts[i].nPoints != 0) {
                    osSyncPrintf("\n@@@ /* CUT [%d]\t*/", i);
                    DbCamera_PrintCutBytes(&sDbCameraCuts[i]);
                }
            }
        }
        else if (CHECK_PAD(sDbCameraGlobalContext->state.input[2].press, R_CBUTTONS)) {
            sDbCameraAnim.curFrame = 0.0f;
            sDbCameraAnim.keyframe = 0;
            sDbCameraAnim.unk_04 = 0.0f;
            sDbCameraAnim.unk_0A = 1;
            sDbCameraAnim.unk_0C = 0;
            Interface_ChangeAlpha(50);
            ShrinkWindow_SetVal(0x20);
            D_8016110C = 0;
            Audio_PlaySoundGeneral(NA_SE_SY_HP_RECOVER, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
        
        func_8006376C(4, 7, 5, D_8012CF50[0]);
        sp74[1] = 0;
        if (sDbCameraLastFileIdx != -1) {
            sp74[0] = D_801612EA;
            func_8006376C(sDbCameraLastFileIdx + 5, 7, 2, sp74);
        }
        else {
            sp74[0] =  '_';
        }
        func_8006376C(sDbCameraCurFileIdx + 5, 7, 7, sp74);

        break;
    }
    
    }

    return 1;
}
#else
s32 (*D_8012D14C[])(char*) = { DbCamera_SaveCallback, DbCamera_LoadCallback, DbCamera_ClearCallback };
u32 sDbCameraColors[] = { 4, 4, 4, 7, 4, 4, };
u32 D_8012D170 = 0;
#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/DbCamera_UpdateDemoControl.s")
#endif

void func_800BB03C(Camera* cam) {
    func_800B91B0(cam, sDbCameraPtr);
}

void func_800BB060() {
    sDbCameraAnim.unk_0A = 0;
}

s32 func_800BB06C() {
    return sDbCameraPtr->unk_00 == 2 && sDbCameraAnim.unk_0A != 0;
}
