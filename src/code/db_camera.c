#include <ultra64.h>
#include <global.h>

extern GlobalContext* D_80161100;

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3840.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3898.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B38A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B38FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3908.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3968.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B39B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3B50.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3BD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3DF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3EBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3EFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3F38.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3F54.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3F94.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B3FF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B404C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4088.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B41DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B42C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4370.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B44E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4920.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4A68.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4AA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4AE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/db_camera/func_800B4B20.s")

void func_800B4D58(DBCamera *dbCamera, Camera *camera) {
    dbCamera->unk_10C6.x = dbCamera->unk_10C6.y = dbCamera->unk_10C6.z = (u16)0;
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
    dbCamera->unk_7C = (u16)0;
    dbCamera->unk_7E = (s16) -1;
    dbCamera->unk_80 = (u16)1;
    dbCamera->unk_82 = (u16)0;
    dbCamera->unk_84 = (u16)0;
    dbCamera->unk_86 = (u16)0;
    dbCamera->unk_78 = (u16)0;
    dbCamera->unk_7A = (u16)0;
    dbCamera->unk_10C0.x = (u16)0;
    dbCamera->unk_10C0.y = (u16)0;
    dbCamera->unk_10C0.z = (u16)0;
    dbCamera->unk_6C = dbCamera->unk_70 = dbCamera->unk_74 = 0;
}

void DbgCamera_Enable(DBCamera *dbCamera, Camera *camera) {
    dbCamera->at = camera->at;
    dbCamera->eye = camera->eye;
    dbCamera->unk_1C = camera->unk_68;
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
