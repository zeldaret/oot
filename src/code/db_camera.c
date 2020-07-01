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
    /* 0x1044 */ char unk_1044[0x1050-0x1044];
} DbCameraSub; // size = 0x1050

typedef struct {
    /* 0x0000 */ u32 unk_00;
    /* 0x0004 */ Vec3f at;
    /* 0x0010 */ Vec3f eye;
    /* 0x001C */ Vec3f unk_1C;
    /* 0x0028 */ char unk_28[0x48-0x28];
    /* 0x0048 */ f32 unk_48;
    /* 0x004C */ s16 unk_4C;
    /* 0x004E */ char unk_4E[0x2];
    /* 0x0050 */ f32 unk_50;
    /* 0x0054 */ char unk_54[0x7C-0x54];
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

Vec3f* func_800B3B50(Vec3f* outVec, Vec3f* inVec, VecSph* sph) {
    Vec3f ret;
    Vec3f vec;

    OLib_VecSphRot90ToVec3f(&vec, sph);

    ret.x = inVec->x + vec.x;
    ret.y = inVec->y + vec.y;
    ret.z = inVec->z + vec.z;
    *outVec = ret;
    return outVec;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3BD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3DF8.s")

void func_800B3EBC(Vec3s* in, Vec3f* out)
{
    out->x = in->x;
    out->y = in->y;
    out->z = in->z;
}

void func_800B3EFC(Vec3f* in, Vec3s* out)
{
    out->x = in->x;
    out->y = in->y;
    out->z = in->z;
}

void func_800B3F38(Vec3f* in, Vec3f* out)
{
    out->x = in->x;
    out->y = in->y;
    out->z = in->z;
}

void func_800B3F54(Vec3s* in, Vec3f* out)
{
    out->x = in->x;
    out->y = in->y;
    out->z = in->z;
}

void func_800B3F94(PosRot* posRot, Vec3f* vec, Vec3s* outVec)
{
    VecSph sph;
    Vec3f tempVec;
    OLib_Vec3fDiffToVecSphRot90(&sph, &posRot->pos, vec);
    sph.theta -= posRot->rot.y;
    OLib_VecSphRot90ToVec3f(&tempVec, &sph);
    func_800B3EFC(&tempVec, outVec);
}

void func_800B3FF4(PosRot* posRot, Vec3f* vec, Vec3f* outVec)
{
    VecSph sph;
    Vec3f tempVec;
    func_800B3F38(vec, &tempVec);
    OLib_Vec3fToVecSphRot90(&sph, &tempVec);
    sph.theta += posRot->rot.y;
    func_800B3B50(outVec, &posRot->pos, &sph);
}

void func_800B404C(PosRot* posRot, Vec3s* vec, Vec3f* outVec)
{
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

#ifdef NON_MACTHING
void func_800B4B20(DbCameraCut* cut) {
    CutsceneCameraPoint* point;
    s32 i;

    point = cut->lookAt;
    osSyncPrintf("\n@@@ 0,0,0,2,\t/* Look Camera\t*/");
    osSyncPrintf("\n@@@ 0,1,\t/* dousa\t*/");

    osSyncPrintf("\n@@@ 0,0,\t/* Start Flame\t*/");
    func_800B4AA8(cut->nFrames);
    osSyncPrintf("\t/*  End   Flame\t*/");

    osSyncPrintf("\n@@@0,0,\t/*  Dammy\t*/\n@@@ ");
    for (i = 0; i < cut->nPoints; i++) {
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
        osSyncPrintf("\t/*  z pos\t*/");
        osSyncPrintf("\n@@@0,0,\t/*  Dammy\t*/\n@@@ ");
        point++;
    }

    point = cut->position;
    osSyncPrintf("\n@@@ 0,0,0,1,\t/* Position Camera */");
    osSyncPrintf("\n@@@ 0,1,\t/* dousa\t*/");

    osSyncPrintf("\n@@@ 0,0,\t/* Start Flame\t*/");
    func_800B4AA8(cut->nFrames);
    osSyncPrintf("\t/*  End   Flame\t*/");

    osSyncPrintf("\n@@@0,0,\t/*  Dammy\t*/\n@@@ ");
    for (i = 0; i < cut->nPoints; i++) {
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
        osSyncPrintf("\t/*  z pos\t*/");
        osSyncPrintf("\n@@@0,0,\t/*  Dammy\t*/\n@@@ ");
        point++;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4B20.s")
#endif

#ifdef NON_MATCHING
void func_800B4D58(DbCamera* dbCamera, Camera* cameraPtr) {

}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4D58.s")
#endif

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
