#include "global.h"

extern GlobalContext* D_80161100;
extern s32 D_8012CED8;
extern s32 D_8012CED4;
extern s32 D_8012CED0;
extern char D_801612D0[0x1A];
extern char D_801612EA;
extern DBCamera* D_80161108;
extern s16 D_80161148;
extern s16 D_8016114A;
extern s16 D_8016111A;
extern s16 D_8016110C;

typedef struct {
    u8 state;
    s16 mode;
    CutsceneCameraPoint* eyePoints;
    CutsceneCameraPoint* atPoints;
    s16 frameCnt;
    s16 csPointsCnt;
} DBCSEditorSlot;

extern DBCSEditorSlot sDbgEditorSlots[];
extern char sDbgEditorStates[];

// DbgCamera_Vec3fVecSphGeoAdd
Vec3f* func_800B3B50(Vec3f* dest, Vec3f* a, VecSph* b) {
    Vec3f copy, vecB;
    OLib_VecSphGeoToVec3f(&vecB, b);

    copy.x = a->x + vecB.x;
    copy.y = a->y + vecB.y;
    copy.z = a->z + vecB.z;

    *dest = copy;
    return dest;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3BD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3DF8.s")

void func_800B3EBC(Vec3s* src, Vec3f* dest) {
    dest->x = src->x;
    dest->y = src->y;
    dest->z = src->z;
}

void func_800B3EFC(Vec3f* src, Vec3s* dest) {
    dest->x = src->x;
    dest->y = src->y;
    dest->z = src->z;
}

void func_800B3F38(Vec3f* src, Vec3f* dest) {
    dest->x = src->x;
    dest->y = src->y;
    dest->z = src->z;
}

void func_800B3F54(Vec3s* src, Vec3f* dest) {
    dest->x = src->x;
    dest->y = src->y;
    dest->z = src->z;
}

void func_800B3F94(PosRot* arg0, Vec3f* arg1, Vec3s* arg2) {
    VecSph sp28;
    Vec3f sp1C;

    OLib_Vec3fDiffToVecSphGeo(&sp28, &arg0->pos, arg1);
    sp28.yaw -= arg0->rot.y;
    OLib_VecSphGeoToVec3f((Vec3f*)&sp1C, &sp28);
    func_800B3EFC(&sp1C, arg2);
}

void func_800B3FF4(PosRot* arg0, Vec3f* arg1, Vec3f* arg2) {
    VecSph sp28;
    Vec3f sp1C;

    func_800B3F38(arg1, &sp1C);
    OLib_Vec3fToVecSphGeo(&sp28, &sp1C);
    sp28.yaw += arg0->rot.y;
    func_800B3B50(arg2, &arg0->pos, &sp28);
}

void func_800B404C(s32 arg0, Vec3s* arg1, Vec3f* arg2) {
    Vec3f sp1C;

    func_800B3EBC(arg1, &sp1C);
    func_800B3FF4(arg0, &sp1C, arg2);
}

void func_800B4088(DBCamera* dbCamera, Camera* camera);
#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4088.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B41DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B42C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4370.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B44E0.s")

/**
 * Prints individual csSlot point information
 */
void func_800B4920(char* varName, s16 pointCnt, CutsceneCameraPoint* csPoints) {
    s32 i;
    CutsceneCameraPoint* csPoint;

    osSyncPrintf("@@@static SplinedatZ  %s[] = {\n", varName);
    for (i = 0, csPoint = csPoints; i < pointCnt; i++, csPoint++) {
        osSyncPrintf("@@@    /* key frame %2d */ {\n", i);
        osSyncPrintf("@@@    /*     code     */ %d,\n", csPoint->continueFlag);
        osSyncPrintf("@@@    /*     z        */ %d,\n", csPoint->cameraRoll);
        osSyncPrintf("@@@    /*     T        */ %d,\n", csPoint->nextPointFrame);
        osSyncPrintf("@@@    /*     zoom     */ %f,\n", csPoint->viewAngle);
        osSyncPrintf("@@@    /*     pos      */ { %d, %d, %d }\n", csPoint->pos.x, csPoint->pos.y, csPoint->pos.z);
        osSyncPrintf("@@@    },\n");
    }
    osSyncPrintf("@@@};\n@@@\n");
}

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4A68.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4AA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4AE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4B20.s")

void DbgCamera_Init(DBCamera* dbCamera, Camera* camera) {
    dbCamera->unk_10C6.x = dbCamera->unk_10C6.y = dbCamera->unk_10C6.z = 0;
    dbCamera->unk_44 = 0;
    dbCamera->unk_00 = 0;
    dbCamera->unk_34 = 0;
    dbCamera->unk_3C = 0;
    dbCamera->unk_38 = -1;
    dbCamera->unk_40 = -1;
    dbCamera->unk_4C = 0;
    dbCamera->fov = 0.0f;
    dbCamera->unk_50 = 0.0f;
    D_80161100 = camera->globalCtx;
    dbCamera->unk_7C = 0;
    dbCamera->unk_7E = -1;
    dbCamera->unk_80 = 1;
    dbCamera->unk_82 = 0;
    dbCamera->unk_84 = 0;
    dbCamera->unk_86 = 0;
    dbCamera->unk_78 = 0;
    dbCamera->unk_7A = 0;
    dbCamera->unk_10C0.x = 0;
    dbCamera->unk_10C0.y = 0;
    dbCamera->unk_10C0.z = 0;
    dbCamera->unk_6C = dbCamera->unk_70 = dbCamera->unk_74 = 0;
}

void DbgCamera_Enable(DBCamera* dbCamera, Camera* camera) {
    dbCamera->at = camera->at;
    dbCamera->eye = camera->eye;
    dbCamera->up = camera->up;
    dbCamera->fov = camera->fov;
    dbCamera->unk_4C = 0;
    dbCamera->unk_80 = 1;
    dbCamera->unk_82 = 0;
    dbCamera->unk_84 = 0;
    dbCamera->unk_86 = 1;
    dbCamera->unk_88 = 1;
    dbCamera->unk_78 = 0;
    dbCamera->unk_7A = 0;
    dbCamera->unk_50 = 0.0f;
    func_800B4088(dbCamera, camera);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/DbgCamera_Update.s")

s32 func_800B8730(void) {
    s32 temp_v1;
    void* phi_v0;
    s32 phi_v1;

    for (phi_v1 = 0; phi_v1 < 0x1A; phi_v1++) {
        if (D_801612D0[phi_v1] != 'O') {
            return phi_v1 + 'A';
        }
    }
    return '?';
}

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B87D8.s")

/**
 * Clears a DBCSEditorSlot
 */
void func_800B8978(s32 editorSlot, s32 free) {

    if (sDbgEditorSlots[editorSlot].state != '?') {
        sDbgEditorStates[sDbgEditorSlots[editorSlot].state] = 'X';
    }
    if (free) {
        DebugArena_FreeDebug(sDbgEditorSlots[editorSlot].atPoints, "../db_camera.c", 2784);
        DebugArena_FreeDebug(sDbgEditorSlots[editorSlot].eyePoints, "../db_camera.c", 2785);
    }
    sDbgEditorSlots[editorSlot].state = '?';
    sDbgEditorSlots[editorSlot].atPoints = NULL;
    sDbgEditorSlots[editorSlot].eyePoints = NULL;
    sDbgEditorSlots[editorSlot].mode = 0;
    sDbgEditorSlots[editorSlot].frameCnt = 0;
    sDbgEditorSlots[editorSlot].csPointsCnt = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B8A0C.s")

extern s32 D_801612EC;

s32 func_800B8BA4(void) {
    return D_801612EC;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B8BB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B8DB0.s")

void func_800B8F30(char* arg0) {
    Mempak_DeleteFile(2, *arg0);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B8F58.s")

/**
 * Prints cs editor slot inforation
 */
void func_800B9060(s32 arg0) {
    DBCSEditorSlot* csSlot;
    s32 i;

    Audio_PlaySoundGeneral(NA_SE_SY_GET_RUPY, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    osSyncPrintf("@@@\n@@@\n@@@/* ****** spline point data ** start here ***** */\n@@@\n");
    for (i = 0, csSlot = sDbgEditorSlots; i < 0xF; i++, csSlot++) {
        if (csSlot->csPointsCnt != 0) {
            if (i != 0) {
                osSyncPrintf("@@@\n@@@/* ** %d ** */\n@@@\n", i);
            }
            func_800B4920("Lookat", csSlot->csPointsCnt, csSlot->atPoints);
            func_800B4920("Position", csSlot->csPointsCnt, csSlot->eyePoints);
            osSyncPrintf("@@@static short  nPoints = %d;\n@@@\n", csSlot->csPointsCnt);
            osSyncPrintf("@@@static short  nFrames = %d;\n@@@\n", csSlot->frameCnt);
            osSyncPrintf("@@@static short  Mode = %d;\n@@@\n", csSlot->mode);
        }
    }
    osSyncPrintf("@@@\n@@@\n@@@/* ****** spline point data ** finish! ***** */\n@@@\n");
}

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B91B0.s")

/**
 * Initalizes the custscene editor
 */
void DbgCamera_FirstInit(Camera* camera, DBCamera* dbCamera) {
    s32 temp_s0;
    u32 temp_v0;
    u32 phi_v0;
    s32 i;
    char* p;

    D_801612EA = '*';
    for (p = D_801612D0; p < &D_801612D0[0x1A]; p++) {
        *p = 'X';
    }

    for (i = 0; i < 0xF; i++) {
        func_800B8978(i, 0);
    }

    D_80161108 = dbCamera;
    D_8016110C = 0;
    D_80161148 = 0;
    D_8016114A = -1;
    D_8016111A = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B9638.s")
