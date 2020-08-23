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
    /* 0x1044 */ s16 unk_1044;
    /* 0x1046 */ s16 unk_1046;
    /* 0x1048 */ s16 unk_1048;
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

extern char D_801612EA;
extern char D_801612D0[26];

extern s16 D_8016110C;

extern DbCameraAnim D_80161110;
/*
extern s32 D_80161110;
extern f32 D_80161114;
extern s16 D_80161118;
extern s16 D_8016111A;
extern s16 D_8016111C;
extern Vec3f D_80161120;
extern Vec3f D_8016112C;
extern f32 D_80161138;
extern f32 D_8016113C;
*/

extern s16 D_80161148;
extern s16 D_8016114A;
extern char D_8016128F[];


const char* D_8012CEE0 = "\x8Cｷ-ﾌﾚ-ﾑ\x8Dｶﾞ";
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
const char* D_8012CF60 = "\x8Cﾒﾓﾘﾊﾟｯｸ";
const char* D_8012CF64 = "\x8Cｾｰﾌﾞ";
const char* D_8012CF68 = "\x8Cﾛｰﾄﾞ";
const char* D_8012CF6C = "\x8Cｸﾘｱ-";
const char* D_8012CF70 = "\x8Dｦﾇｶﾅｲﾃﾞﾈ";
const char* D_8012CF74 = "FREE      BYTE";
const char* D_8012CF78 = "NEED      BYTE";
const char* D_8012CF7C = "\x8C*ﾒﾓﾘ-ﾊﾟｯｸ*";
const char* D_8012CF80 = "\x8Dｦﾐﾂｹﾗﾚﾏｾﾝ";
const char* D_8012CF84 = "\x8Cﾌｧｲﾙ \x8Dｦ";
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

s32 func_800B8DB0(char* c);
s32 func_800B8BB0(char* c);
s32 func_800B8F30(char* c);

s32 (*D_8012D14C[])(char*) = { func_800B8DB0, func_800B8BB0, func_800B8F30 };
u8 D_8012D158[] = {
0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
};

u32 D_8012D170 = 0;
extern DbCamera* D_80161108;
extern GlobalContext* D_80161100;
extern s32 D_801612EC;
// is the size correct? todo: add ALIGN32 for sizeof in Mempak functions, replace 0xF with sizeof()
extern DbCameraCut D_80161150[16];

Vec3f* func_800B3B50(Vec3f* outVec, Vec3f* inVec, VecSph* sph) {
    Vec3f ret;
    Vec3f vec;

    OLib_VecSphGeoToVec3f(&vec, sph);

    ret.x = inVec->x + vec.x;
    ret.y = inVec->y + vec.y;
    ret.z = inVec->z + vec.z;
    *outVec = ret;
    return outVec;
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
#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3BD4.s")
#endif

char* func_800B3DF8(s16 value, char* str, u8 endIdx) {
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

void func_800B3EBC(Vec3s* in, Vec3f* out) {
    out->x = in->x;
    out->y = in->y;
    out->z = in->z;
}

void func_800B3EFC(Vec3f* in, Vec3s* out) {
    out->x = in->x;
    out->y = in->y;
    out->z = in->z;
}

void func_800B3F38(Vec3f* in, Vec3f* out) {
    out->x = in->x;
    out->y = in->y;
    out->z = in->z;
}

void func_800B3F54(Vec3s* in, Vec3f* out) {
    out->x = in->x;
    out->y = in->y;
    out->z = in->z;
}

void func_800B3F94(PosRot* posRot, Vec3f* vec, Vec3s* outVec) {
    VecSph sph;
    Vec3f tempVec;
    OLib_Vec3fDiffToVecSphGeo(&sph, &posRot->pos, vec);
    sph.yaw -= posRot->rot.y;
    OLib_VecSphGeoToVec3f(&tempVec, &sph);
    func_800B3EFC(&tempVec, outVec);
}

void func_800B3FF4(PosRot* posRot, Vec3f* vec, Vec3f* outVec) {
    VecSph sph;
    Vec3f tempVec;
    func_800B3F38(vec, &tempVec);
    OLib_Vec3fToVecSphGeo(&sph, &tempVec);
    sph.yaw += posRot->rot.y;
    func_800B3B50(outVec, &posRot->pos, &sph);
}

void func_800B404C(PosRot* posRot, Vec3s* vec, Vec3f* outVec) {
    Vec3f tempVec;
    func_800B3EBC(vec, &tempVec);
    func_800B3FF4(posRot, &tempVec, outVec);
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
        func_800B3EFC(&dbCamera->eye, &position->pos);
        func_800B3EFC(&dbCamera->at, &lookAt->pos);
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

        func_800B3F54(&position->pos, &dbCamera->eye);
        func_800B3F54(&lookAt->pos, &dbCamera->at);
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
        func_800B3EFC(&dbCamera->eye, &position->pos);
        func_800B3EFC(&dbCamera->at, &lookAt->pos);
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
            func_800B3F54(&position->pos, &dbCamera->at);
        } else {
            func_800B3F54(&lookAt->pos, &dbCamera->at);
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
    func_800B3B50(&dbCamera->eye, &dbCamera->at, &sph);
    dbCamera->roll = lookAt->cameraRoll;
    dbCamera->unk_50 = dbCamera->roll * 1.40625f;
    dbCamera->fov = lookAt->viewAngle;
    return idx;
}

void func_800B44E0(DbCamera* dbCamera, Camera* cam) {
    s32 i;

    if (CHECK_PAD(D_80161100->state.input[2].press, R_CBUTTONS)) {
        D_80161110.keyframe = 0;
        D_80161110.unk_0A = 1;
        D_80161110.curFrame = 0.0f;
        D_80161110.unk_04 = 0;

        for (i = 0; i < (dbCamera->sub.nPoints - 2); i++) {
            dbCamera->sub.position[i].continueFlag = dbCamera->sub.lookAt[i].continueFlag = 0;
        }

        dbCamera->sub.position[i].continueFlag = dbCamera->sub.lookAt[i].continueFlag = -1;
    }

    if (dbCamera->sub.nPoints < 6) {
        if (D_80161110.unk_0A != 0) {
            Audio_PlaySoundGeneral(NA_SE_SY_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            D_80161110.unk_0A = (u16)0;
        }
        func_8006376C(0x11, 0x17, 3, D_8012CEE0);
        func_8006376C(0x12, 0x18, 3, D_8012CEE4);
        func_8006376C(0x10, 0x1A, 1, D_8012CEE8);
        return;
    }

    if (!func_800BB2B4(&D_80161110.positionPos, &D_80161110.roll, &D_80161110.fov, dbCamera->sub.position, &D_80161110.keyframe, &D_80161110.curFrame) && 
        !func_800BB2B4(&D_80161110.lookAtPos, &D_80161110.roll, &D_80161110.fov,  dbCamera->sub.lookAt, &D_80161110.keyframe, &D_80161110.curFrame) && 
        D_80161110.unk_0A == 1
        ) {
        Audio_PlaySoundGeneral(NA_SE_SY_HP_RECOVER, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        D_80161110.unk_04++;

        if (dbCamera->sub.nFrames > 0 && dbCamera->sub.nFrames < D_80161110.unk_04) {
            D_80161110.unk_0A = (u16)0;
            func_8006376C(0xF, 0x1A, 1, D_8012CEEC);
        }

        if (dbCamera->sub.mode != 1) {
            func_800B3F38(&D_80161110.positionPos, &dbCamera->eye);
            func_800B3F38(&D_80161110.lookAtPos, &dbCamera->at);
        }
        else {
            func_800B3FF4(&cam->playerPosRot, &D_80161110.lookAtPos, &dbCamera->at);
            func_800B3FF4(&cam->playerPosRot, &D_80161110.positionPos, &dbCamera->eye);
        }

        dbCamera->fov = D_80161110.fov;
        dbCamera->roll = D_80161110.roll;
        dbCamera->unk_50 = D_80161110.roll * 1.40625f;

        func_800B3DF8(D_80161110.unk_04, D_8012CFB4 + 8, 4);
        func_8006376C(0x10, 0x17, 3, D_8012CFB4);
        D_8012CFC4[5] = ((D_80161110.keyframe + 1) / 10) + '0';
        D_8012CFC4[6] = ((D_80161110.keyframe + 1) % 10) + '0';
        D_8012CFC4[8] = ((dbCamera->sub.nPoints - 5) / 10) + '0';
        D_8012CFC4[9] = ((dbCamera->sub.nPoints - 5) % 10) + '0';
        func_8006376C(0x10, 0x18, 3, D_8012CFC4);
        func_8006376C(0x10, 0x1A, 1, D_8012CEF0);
        return;
    }

    D_80161110.unk_0A = 0;
    func_8006376C(0xF, 0x1A, 1, D_8012CEEC);
}

void func_800B4920(const char* name, s16 count, CutsceneCameraPoint* point) {
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

void func_800B4A68(f32 value)
{
    f32 b = value;
    char* a = (char*)&b;
    osSyncPrintf("\n@@@%d,%d,%d,%d,", a[0], a[1], a[2], a[3]);
}

void func_800B4AA8(u16 value)
{
    u16 pad;
    u16 b = value;
    char* a = (char*)&b;
    osSyncPrintf("\n@@@%d,%d,", a[0], a[1]);
}

void func_800B4AE4(s16 value)
{
    u16 pad;
    s16 b = value;
    char* a = (char*)&b;
    osSyncPrintf("\n@@@%d,%d,", a[0], a[1]);
}

void func_800B4B20(DbCameraCut* cut) {
    CutsceneCameraPoint* point;
    CutsceneCameraPoint* points;
    s32 i;

    points = cut->lookAt;
    osSyncPrintf("\n@@@ 0,0,0,2,\t/* Look Camera\t*/");
    osSyncPrintf("\n@@@ 0,1,\t/* dousa\t*/");

    osSyncPrintf("\n@@@ 0,0,\t/* Start Flame\t*/");
    func_800B4AA8(cut->nFrames);
    osSyncPrintf("\t/*  End   Flame\t*/");

    osSyncPrintf("\n@@@0,0,\t/*  Dammy\t*/\n@@@ ");
    for (i = 0; i < cut->nPoints; i++) {
        point = points + i;
        osSyncPrintf("\n@@@    %d, /*     code     */", point->continueFlag);
        osSyncPrintf("\n@@@    %d,  /*     z        */", point->cameraRoll);
        func_800B4AA8(point->nextPointFrame);
        osSyncPrintf("\t/*  sokudo\t*/");
        func_800B4A68(point->viewAngle);
        osSyncPrintf("\t/*  zoom\t*/");
        func_800B4AE4(point->pos.x);
        osSyncPrintf("\t/*  x pos\t*/");
        func_800B4AE4(point->pos.y);
        osSyncPrintf("\t/*  y pos\t*/");
        func_800B4AE4(point->pos.z);
        osSyncPrintf("\t/*  z pos\t*/\n");
        osSyncPrintf("\n@@@0,0,\t/*  Dammy\t*/\n@@@ ");
    }

    points = cut->position;
    osSyncPrintf("\n@@@ 0,0,0,1,\t/* Position Camera */");
    osSyncPrintf("\n@@@ 0,1,\t/* dousa\t*/");

    osSyncPrintf("\n@@@ 0,0,\t/* Start Flame\t*/");
    func_800B4AA8(cut->nFrames);
    osSyncPrintf("\t/*  End   Flame\t*/");

    osSyncPrintf("\n@@@0,0,\t/*  Dammy\t*/\n@@@ ");
    for (i = 0; i < cut->nPoints; i++) {
        point = points + i;
        osSyncPrintf("\n@@@    %d, /*     code     */", point->continueFlag);
        osSyncPrintf("\n@@@    %d, /*     z        */", point->cameraRoll);
        func_800B4AA8(point->nextPointFrame);
        osSyncPrintf("\t/*  sokudo\t*/");
        func_800B4A68(point->viewAngle);
        osSyncPrintf("\t/*  zoom\t*/");
        func_800B4AE4(point->pos.x);
        osSyncPrintf("\t/*  x pos\t*/");
        func_800B4AE4(point->pos.y);
        osSyncPrintf("\t/*  y pos\t*/");
        func_800B4AE4(point->pos.z);
        osSyncPrintf("\t/*  z pos\t*/");
        osSyncPrintf("\n@@@0,0,\t/*  Dammy\t*/\n@@@ ");
    }
}

void func_800B4D58(DbCamera* dbCamera, Camera* cameraPtr) {
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
    D_80161100 = cameraPtr->globalCtx;
    dbCamera->sub.mode = 0;
    dbCamera->sub.nFrames = -1;
    dbCamera->sub.nPoints = 1;
    dbCamera->sub.unkIdx = 0;
    dbCamera->sub.unk_08 = 0;
    dbCamera->sub.unk_0A = 0;
    dbCamera->unk_78 = 0;
    dbCamera->unk_7A = 0;
    dbCamera->sub.unk_1044 = 0;
    dbCamera->sub.unk_1046 = 0;
    dbCamera->sub.unk_1048 = 0;
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

// hard
#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4E7C.s")

s32 func_800B8730() {
    s32 i;
    for (i = 0; i < ARRAY_COUNT(D_801612D0); i++) {
        switch (D_801612D0[i])
        {
            case 'O':
                break;
            default:
                return 'A' + i;
        }
    }
    
    return '?';
}

char func_800B87D8(s32 idx, DbCameraSub* sub) {
    s32 i;

    D_80161150[idx].unk_01 = 0x61;
    D_80161150[idx].letter = func_800B8730();
    D_8016128F[D_80161150[idx].letter] = 'O';

    i = sub->nPoints * sizeof(CutsceneCameraPoint);
    D_80161150[idx].lookAt = DebugArena_MallocDebug(i, "../db_camera.c", 2748);
    if (D_80161150[idx].lookAt == NULL) {
        // Debug camera memory allocation failure
        osSyncPrintf("%s: %d: デバッグカメラ メモリ確保失敗！！\n", "../db_camera.c", 2751);
        return '?';
    }

    D_80161150[idx].position = DebugArena_MallocDebug(i, "../db_camera.c", 2754);
    if (D_80161150[idx].position == NULL) {
        // Debug camera memory allocation failure
        osSyncPrintf("%s: %d: デバッグカメラ メモリ確保失敗！！\n", "../db_camera.c", 2757);
        DebugArena_FreeDebug(D_80161150[idx].lookAt, "../db_camera.c", 2758);
        D_80161150[idx].lookAt = NULL;
        return '?';
    }

    D_80161150[idx].mode = sub->mode;
    D_80161150[idx].nFrames = sub->nFrames;
    D_80161150[idx].nPoints = sub->nPoints;

    for (i = 0; i < sub->nPoints; i++) {
        D_80161150[idx].lookAt[i] = sub->lookAt[i];
        D_80161150[idx].position[i] = sub->position[i];
    }

    return D_80161150[idx].letter;
}

void func_800B8978(s32 idx, s32 shouldFree) {
    if (D_80161150[idx].letter != '?') {
        D_8016128F[D_80161150[idx].letter] = 'X';
    }

    if (shouldFree) {
        DebugArena_FreeDebug(D_80161150[idx].lookAt, "../db_camera.c", 2784);
        DebugArena_FreeDebug(D_80161150[idx].position, "../db_camera.c", 2785);
    }

    D_80161150[idx].letter = '?';
    D_80161150[idx].lookAt = NULL;
    D_80161150[idx].position = NULL;
    D_80161150[idx].mode = 0;
    D_80161150[idx].nFrames = 0;
    D_80161150[idx].nPoints = 0;
}

s32 func_800B8A0C() {
    s32 i;

    D_801612EC = 0;
    for (i = 0; i < ARRAY_COUNT(D_80161150)-1; i++) {
        if (D_80161150[i].letter != '?') {
            D_801612EC += ALIGN32(D_80161150[i].nPoints * sizeof(CutsceneCameraPoint)) * 2;
        }
    }
    D_801612EC += 0x100;
    D_801612EC = ALIGN256(D_801612EC);
    return D_801612EC;
}

s32 func_800B8BA4(void) {
    return D_801612EC;
}

s32 func_800B8BB0(char* c) {
    s32 i;
    s32 size;
    s32 off;

    for (i = 0; i < ARRAY_COUNT(D_80161150)-1; i++) {
        if (D_80161150[i].letter != '?') {
            func_800B8978(i, true);
            D_801612D0[i] = 'X';
        }
    }

    if (!Mempak_Read(2, *c, D_80161150, 0, sizeof(D_80161150))) {
        return false;
    }

    off = sizeof(D_80161150);
    for (i = 0; i < ARRAY_COUNT(D_80161150)-1; i++) {
        if (D_80161150[i].letter != '?') {
            size = D_80161150[i].nPoints * sizeof(CutsceneCameraPoint);

            D_80161150[i].lookAt = DebugArena_MallocDebug(ALIGN32(size), "../db_camera.c", 2844);
            if (D_80161150[i].lookAt == NULL) {
                // Debug camera memory allocation failure
                osSyncPrintf("%s: %d: デバッグカメラ メモリ確保失敗！！\n", "../db_camera.c", 2847);
                return false;
            }
            if (!Mempak_Read(2, *c, D_80161150[i].lookAt, off, ALIGN32(size))) {
                return false;
            }
            off += ALIGN32(size);

            D_80161150[i].position = DebugArena_MallocDebug(ALIGN32(size), "../db_camera.c", 2855);
            if (D_80161150[i].position == NULL) {
                // Debug camera memory allocation failure
                osSyncPrintf("%s: %d: デバッグカメラ メモリ確保失敗！！\n", "../db_camera.c", 2858);
                return false;
            }
            if (!Mempak_Read(2, *c, D_80161150[i].position, off, ALIGN32(size))) {
                return false;
            }
            off += ALIGN32(size);

            D_8016128F[D_80161150[i].letter] = 'O';
        }
    }

    return true;
}

s32 func_800B8DB0(char* c) {
    s32 pad[2];
    s32 ret;
    u32 freeSize;
    s32 off;
    s32 size;
    s32 i;

    ret = Mempak_GetFileSize(2, *c);
    freeSize =  Mempak_GetFreeBytes(2);

    if (D_801612EC < (freeSize + ret)) {
        if (!Mempak_Alloc(2, c, D_801612EC)) {
            return false;
        }

        if (!Mempak_Write(2, *c, D_80161150, 0, sizeof(D_80161150))) {
            Mempak_DeleteFile(2, *c);
            return false;
        }

        off = sizeof(D_80161150);
        for (i = 0; i < ARRAY_COUNT(D_80161150)-1; i++) {
            if (D_80161150[i].letter != '?') {
                size = D_80161150[i].nPoints * sizeof(CutsceneCameraPoint);

                ret = Mempak_Write(2, *c, D_80161150[i].lookAt, off, ALIGN32(size));
                if (!ret) {
                    break;
                }
                off += ALIGN32(size);

                ret = Mempak_Write(2, *c, D_80161150[i].position, off, ALIGN32(size));
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

s32 func_800B8F30(char* c) {
    return Mempak_DeleteFile(2, *c);
}

void func_800B8F58(char* str, s16 y, s16 x, s32 colorId) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(D_80161150)-1; i++) {
        str[i*2+1] = D_80161150[i].letter;
        str[i*2+0] = '-';
    }

    str[0x14] = str[i*2+1] = '\0';
    func_8006376C(x, y, colorId, str);
    str[0x14] = str[i*2+0] = '-';
    func_8006376C(x+0x14, y, colorId, str+0x14);
}

void func_800B9060(Camera* cam) {
    s32 i;
    
    Audio_PlaySoundGeneral(NA_SE_SY_GET_RUPY, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    osSyncPrintf("@@@\n@@@\n@@@/* ****** spline point data ** start here ***** */\n@@@\n");

    for (i = 0; i < ARRAY_COUNT(D_80161150)-1; i++) {
        DbCameraCut* cut = &D_80161150[i];
        if (cut->nPoints != 0) {
            if (i != 0) {
                osSyncPrintf("@@@\n@@@/* ** %d ** */\n@@@\n", i);
            }

            func_800B4920("Lookat", cut->nPoints, cut->lookAt);
            func_800B4920("Position", cut->nPoints, cut->position);
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

    while (D_80161150[D_8016110C].letter == '?') {
        D_8016110C++;
        if (D_8016110C >= 0xF) {
            D_80161110.curFrame = 0.0f;
            D_80161110.unk_04 = 0;
            D_80161110.keyframe = 0;
            D_80161110.unk_0A = 0;
            D_8016110C = 0;
            return 0;
        }
    }

    if (!func_800BB2B4(&D_80161110.positionPos, &D_80161110.roll, &D_80161110.fov, D_80161150[D_8016110C].position, &D_80161110.keyframe, &D_80161110.curFrame) && 
        !func_800BB2B4(&D_80161110.lookAtPos, &D_80161110.roll, &D_80161110.fov,  D_80161150[D_8016110C].lookAt, &D_80161110.keyframe, &D_80161110.curFrame)
        ) {
        
        D_8012D13C[7] = ((D_80161110.keyframe + 1) / 10) + '0';
        D_8012D13C[8] = ((D_80161110.keyframe + 1) % 10) + '0';
        D_8012D13C[10] = ((D_80161150[D_8016110C].nPoints-5) / 10) + '0';
        D_8012D13C[11] = ((D_80161150[D_8016110C].nPoints-5) % 10) + '0';
        func_800B3DF8(D_80161110.unk_04, D_8012D114 + 10, 4);
        func_8006376C(0xF, 0x16, 3, D_8012D114);
        func_800B3DF8(D_80161110.unk_0C, D_8012D128 + 10, 4);
        func_8006376C(0xF, 0x17, 3, D_8012D128);
        func_8006376C(0xF, 0x18, 3, D_8012D13C);
        func_8006376C(0x10, 0x1A, 1, D_8012CEF0);

        D_80161110.unk_04++;
        D_80161110.unk_0C++;

        if (D_80161150[D_8016110C].nFrames > 0 && D_80161150[D_8016110C].nFrames < D_80161110.unk_04) {
            D_8016110C++;
            D_80161110.curFrame = 0.0f;
            D_80161110.unk_04 = 0;
            D_80161110.keyframe = 0;
            return D_8016110C | 0x8000;
        }

        if (D_80161150[D_8016110C].mode != 1) {
            func_800B3F38(&D_80161110.positionPos, &dbCamera->eye);
            func_800B3F38(&D_80161110.lookAtPos, &dbCamera->at);
        }
        else {
            func_800B3FF4(&cam->playerPosRot, &D_80161110.lookAtPos, &dbCamera->at);
            func_800B3FF4(&cam->playerPosRot, &D_80161110.positionPos, &dbCamera->eye);
        }

        dbCamera->fov = D_80161110.fov;
        dbCamera->roll = D_80161110.roll;
        dbCamera->unk_50 = D_80161110.roll * 1.40625f;

    } else {
        D_8016110C++;
        D_80161110.keyframe = 0;
        D_80161110.curFrame = 0.0f;
        D_80161110.unk_04 = 0;
        if (D_8016110C == 0xF) {
            D_8016110C = 0;
            D_80161110.curFrame = 0.0f;
            D_80161110.keyframe = 0;
            D_80161110.unk_0A = 0;
            return -1;
        }
    }

    return D_8016110C | 0x8000;
}

void func_800B958C(Camera* cam, DbCamera* dbCam) {
    s32 i;

    D_801612EA = '*';
    for (i = 0; i < ARRAY_COUNT(D_801612D0); i++) {
        D_801612D0[i] = 'X';
    }

    for (i = 0; i < 0xF; i++) {
        func_800B8978(i, false);
    }
    D_80161108 = dbCam;
    D_8016110C = 0;
    D_80161148 = 0;
    D_8016114A = -1;
    D_80161110.unk_0A = 0;
}

// hard
#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B9638.s")

void func_800BB03C(Camera* cameraPtr) {
    func_800B91B0(cameraPtr, D_80161108);
}

void func_800BB060() {
    D_80161110.unk_0A = 0;
}

s32 func_800BB06C() {
    return D_80161108->unk_00 == 2 && D_80161110.unk_0A != 0;
}
