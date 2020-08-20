#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ s16 mode;
    /* 0x0002 */ s16 nFrames;
    /* 0x0004 */ s16 nPoints;
    /* 0x0006 */ s16 unkIdx;
    /* 0x0008 */ s16 unk_08;
    /* 0x000A */ s16 unk_0A;
    /* 0x000C */ char unk_0C[0x24-0xC];
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
    /* 0x0048 */ f32 unk_48;
    /* 0x004C */ s16 unk_4C;
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
    /* 0x00 */ u8 unk_00;
    /* 0x01 */ u8 unk_01;
    /* 0x02 */ u16 mode;
    /* 0x04 */ CutsceneCameraPoint* position;
    /* 0x08 */ CutsceneCameraPoint* lookAt;
    /* 0x0C */ s16 nFrames;
    /* 0x0E */ s16 nPoints;
} DbCameraCut; // size = 0x10

extern s16 D_8016111A;


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
char D_8012D114[] = "\x8Cﾌﾚ-ﾑ         \0\0";
char D_8012D128[] = "\x8Cﾄ-ﾀﾙ         \0\0";
char D_8012D13C[] = "\x8Cｷ-     /   ";

void func_800B8DB0();
void func_800B8BB0();
void func_800B8F30();

void* D_8012D14C[] = { func_800B8DB0, func_800B8BB0, func_800B8F30 };
u8 D_8012D158[] = {
0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
};

u32 D_8012D170 = 0;
extern DbCamera* D_80161108;
extern GlobalContext* D_80161100;

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

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3DF8.s")

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

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4088.s")

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

    dbCamera->unk_4C = lookAt->cameraRoll;
    dbCamera->unk_50 = dbCamera->unk_4C * 1.40625000f;
    dbCamera->unk_48 = lookAt->viewAngle;
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

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4370.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B44E0.s")

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
    dbCamera->unk_4C = 0;
    dbCamera->sub.unk_104C = dbCamera->sub.unk_104E;
    dbCamera->sub.unk_104A = dbCamera->sub.unk_104E;
    dbCamera->unk_48 = 0.0f;
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

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4DE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4E7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B8730.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B87D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B8978.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B8A0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B8BA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B8F58.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B9060.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B91B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B958C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B9638.s")

void func_800BB03C(Camera* cameraPtr) {
    func_800B91B0(cameraPtr, D_80161108);
}

void func_800BB060() {
    D_8016111A = 0;
}

s32 func_800BB06C() {
    return D_80161108->unk_00 == 2 && D_8016111A != 0;
}
