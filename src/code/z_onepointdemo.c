#include "global.h"

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_8007C680.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_8007C704.s")

void func_8007C76C(Vec3f* src, Vec3s* dst) {
    dst->x = src->x;
    dst->y = src->y;
    dst->z = src->z;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_8007C7A8.s")

void func_8007C7F8(CollisionContext* colCtx, Vec3f* pos) {
    CollisionPoly* poly;
    s32 bgId;

    BgCheck_EntityRaycastFloor3(colCtx, &poly, &bgId, pos);
}

void func_8007C820(OnePointDemoCamera* onePointCamera, s16 actionParameters, s16 initTimer,
                   CutsceneCameraPoint* atPoints, CutsceneCameraPoint* eyePoints) {
    onePointCamera->atPoints = atPoints;
    onePointCamera->eyePoints = eyePoints;
    onePointCamera->actionParameters = actionParameters;
    onePointCamera->initTimer = initTimer;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_8007C850.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_8007FFE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_80080024.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_800800F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_800803F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_80080480.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_800806BC.s")

void func_8008070C() {
    D_80120130 = 0;
}

void func_80080718() {
    D_80120130 = 1;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_onepointdemo/func_80080728.s")

void func_80080788(UNK_TYPE arg0, UNK_TYPE arg1) {
}
