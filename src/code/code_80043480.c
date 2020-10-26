#include "global.h"

void DynaPolyInfo_SetActorMove(DynaPolyActor* dynaActor, DynaPolyMoveFlag flags) {
    dynaActor->dynaPolyId = -1;
    dynaActor->unk_15C = flags;
    dynaActor->unk_160 = 0;
    dynaActor->unk_150 = 0.0f;
    dynaActor->unk_154 = 0.0f;
}

void func_800434A0(DynaPolyActor* dynaActor) {
    dynaActor->unk_160 = 0;
}

void func_800434A8(DynaPolyActor* dynaActor) {
    dynaActor->unk_160 |= 1;
}

void func_800434B8(DynaPolyActor* dynaActor) {
    dynaActor->unk_160 |= 2;
}

void func_800434C8(CollisionContext* colCtx, u32 floorPolySource) {
    DynaPolyActor* dynaActor = DynaPolyInfo_GetActor(colCtx, floorPolySource);

    if (dynaActor != NULL) {
        func_800434B8(dynaActor);
    }
}

void func_800434F8(DynaPolyActor* dynaActor) {
    dynaActor->unk_160 |= 4;
}

void func_80043508(CollisionContext* colCtx, u32 floorPolySource) {
    DynaPolyActor* dynaActor = DynaPolyInfo_GetActor(colCtx, floorPolySource);

    if (dynaActor != NULL) {
        func_800434F8(dynaActor);
    }
}

void func_80043538(DynaPolyActor* dynaActor) {
    dynaActor->unk_160 |= 8;
}

s32 func_80043548(DynaPolyActor* dynaActor) {
    if (dynaActor->unk_160 & 1) {
        return 1;
    } else {
        return 0;
    }
}

s32 func_8004356C(DynaPolyActor* dynaActor) {
    if (dynaActor->unk_160 & 2) {
        return 1;
    } else {
        return 0;
    }
}

s32 func_80043590(DynaPolyActor* dynaActor) {
    if (dynaActor->unk_160 & 4) {
        return 1;
    } else {
        return 0;
    }
}

s32 func_800435B4(DynaPolyActor* dynaActor) {
    if (dynaActor->unk_160 & 8) {
        return 1;
    } else {
        return 0;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_80043480/func_800435D8.s")
