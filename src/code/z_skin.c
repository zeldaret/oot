#include "global.h"

extern MtxF D_801600C0[60];

typedef struct {
    u16 unk_0;
    char unk_2[0x4];
    s8 unk_6;
    s8 unk_7;
    s8 unk_8;
    char unk_9[0x1];
} Struct_800A57C0; // size = 0xA

typedef struct {
    /* 0x000 */ u8  unk_0;
    /* 0x002 */ s16 x;
    /* 0x004 */ s16 y;
    /* 0x006 */ s16 z;
    /* 0x008 */ u8  unk_8;
} Struct_800A598C_2; // size = 0xA

void func_800A57C0(MtxF* mtx, Struct_800A57C0* arg1, Struct_800A598C* arg2, Struct_800A57C0_2* arg3, Vec3f* arg4) {
    Struct_800A57C0_2 *temp_s2;
    Struct_800A57C0 *phi_s1;
    f32 temp_x;
    f32 temp_y;
    f32 temp_z;
    Vec3f sp70;
    Vec3f sp64;

    for (phi_s1 = arg1; phi_s1 < arg1 + (arg2->unk_0); phi_s1++) {
        temp_s2 = &arg3[phi_s1->unk_0];
        temp_s2->unk_0 = arg4->x;
        temp_s2->unk_2 = arg4->y;
        temp_s2->unk_4 = arg4->z;
        temp_x = mtx->wx;
        temp_y = mtx->wy;
        temp_z = mtx->wz;
        mtx->wz = 0.0f;
        mtx->wy = 0.0f;
        mtx->wx = 0.0f;
        sp64.x = phi_s1->unk_6;
        sp64.y = phi_s1->unk_7;
        sp64.z = phi_s1->unk_8;
        SkinMatrix_Vec3fMtxFMultXYZ(mtx, &sp64, &sp70);
        temp_s2->unk_C = sp70.x;
        temp_s2->unk_D = sp70.y;
        temp_s2->unk_E = sp70.z;
        mtx->wx = temp_x;
        mtx->wy = temp_y;
        mtx->wz = temp_z;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin/func_800A598C.s")
/* void func_800A598C(GraphicsContext* gfxCtx, PSkinAwb *arg1, s32 arg2, s32 arg3) {
    Struct_800A57C0_2* spEC;
    Vec3f spDC;
    Vec3f spD0;
    Vec3f spAC;
    Vec3f spA0;
    Vec3f sp88;
    Struct_800A598C* sp80;
    f32 temp_f20;
    Struct_800A57C0* temp_v0;
    u16 temp_a0_2;
    u8 temp_t7_2;
    Struct_800A5E28 *temp_a0;
    Struct_800A598C_2 *temp_s3;
    Struct_800A598C_2 *temp_s0;
    u32 *temp_t7;
    Struct_800A5F60 *temp_t9;
    Struct_800A598C *phi_s6;
    Struct_800A598C_2 *phi_s0;
    f32 phi_f26;
    f32 phi_f24;
    f32 phi_f22;
    SkinAvb *phi_t5;
    s32 pad[1];

    OPEN_DISPS(gfxCtx, "../z_skin.c", 254);
    temp_t7 = SEGMENTED_TO_VIRTUAL(arg1->unk_0->unk_0);
    temp_t9 = (Struct_800A5F60*)SEGMENTED_TO_VIRTUAL(temp_t7[arg2]);
    temp_a0 = (Struct_800A5E28*)SEGMENTED_TO_VIRTUAL(temp_t9->unk_C);
    phi_s6 = SEGMENTED_TO_VIRTUAL(temp_a0->unk_4);
    phi_t5 = &arg1->avbTbl[arg2];
    spEC = phi_t5->buf[phi_t5->unk_0];
    while (phi_s6 < &phi_s6[temp_a0->unk_2]) {
        temp_a0_2 = phi_s6->unk_2;
        temp_v0 = (Struct_800A57C0*)SEGMENTED_TO_VIRTUAL(phi_s6->unk_8);
        temp_s3 = (Struct_800A598C_2*)SEGMENTED_TO_VIRTUAL(phi_s6->unk_C);
        if (temp_a0_2 == 1) {
            spAC.x = temp_s3[0].x;
            spAC.y = temp_s3[0].y;
            spAC.z = temp_s3[0].z;
            SkinMatrix_Vec3fMtxFMultXYZ(&D_801600C0[temp_s3[0].unk_0], &spAC, &spDC);
        } else if (arg3 == 1) {
            temp_s0 = &temp_s3[phi_s6->unk_4];
            spA0.x = temp_s0->x;
            spA0.y = temp_s0->y;
            spA0.z = temp_s0->z;
            SkinMatrix_Vec3fMtxFMultXYZ(&D_801600C0[temp_s0->unk_0], &spA0, &spDC);
        } else {
            phi_s0 = &temp_s3[0];
            phi_f26 = 0.0f;
            phi_f24 = 0.0f;
            phi_f22 = 0.0f;
            while (phi_s0 < &temp_s3[temp_a0_2]) {
                temp_f20 = phi_s0->unk_8 * 0.01f;
                sp88.x = phi_s0->x;
                sp88.y = phi_s0->y;
                sp88.z = phi_s0->z;
                SkinMatrix_Vec3fMtxFMultXYZ(&D_801600C0[phi_s0->unk_0], &sp88, &spD0);
                spD0.x *= temp_f20;
                spD0.y *= temp_f20;
                spD0.z *= temp_f20;
                phi_f26 += spD0.x;
                phi_f24 += spD0.y;
                phi_f22 += spD0.z;
                phi_s0++;
            }
            spDC.x = phi_f26;
            spDC.y = phi_f24;
            spDC.z = phi_f22;
        }
        func_800A57C0(&D_801600C0[temp_s3[phi_s6->unk_4].unk_0], temp_v0, phi_s6, spEC, &spDC);
        phi_s6++;
    }
    gSPSegment(POLY_OPA_DISP++, 0x08, phi_t5->buf[phi_t5->unk_0]);
    if (phi_t5->unk_0 == 0) {
        phi_t5->unk_0 = 1;
    } else {
        phi_t5->unk_0 = 0;
    }
    CLOSE_DISPS(gfxCtx, "../z_skin.c", 360);
} */

void func_800A5E28(GraphicsContext* gfxCtx, PSkinAwb* arg1, s32 arg2, s32 arg3, s32 arg4) {
    UNK_TYPE* temp_t2;
    Struct_800A5E28* temp_t9;

    OPEN_DISPS(gfxCtx, "../z_skin.c", 364);
    temp_t2 = SEGMENTED_TO_VIRTUAL(arg1->unk_0->unk_0);
    temp_t9 = (Struct_800A5E28*)SEGMENTED_TO_VIRTUAL(((Struct_800A5F60*)SEGMENTED_TO_VIRTUAL(temp_t2[arg2]))->unk_C);
    if (!(arg4 & 1)) {
        func_800A598C(gfxCtx, arg1, arg2, arg3);
    }
    gSPDisplayList(POLY_OPA_DISP++, temp_t9->unk_8);
    CLOSE_DISPS(gfxCtx, "../z_skin.c", 377);
}

void func_800A5F60(GraphicsContext* gfxCtx, PSkinAwb* arg1, s32 arg2, Gfx* arg3, s32 arg4) {
    Gfx* temp_t0 = arg3;
    u32* temp_t8;
    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_skin.c", 395);
    temp_t8 = SEGMENTED_TO_VIRTUAL(arg1->unk_0->unk_0);
    if (arg3 == NULL) {
        temp_t0 = ((Struct_800A5F60*)SEGMENTED_TO_VIRTUAL(temp_t8[arg2]))->unk_C;
    }
    if (temp_t0 != NULL) {
        Mtx* mtx = SkinMatrix_MtxFToNewMtx(gfxCtx, &D_801600C0[arg2]);
        if (mtx != NULL) {
            gSPMatrix(POLY_OPA_DISP++, mtx, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, temp_t0);
            gSPPopMatrix(POLY_OPA_DISP++, G_MTX_MODELVIEW);
            gDPPipeSync(POLY_OPA_DISP++);
        }
    }
    CLOSE_DISPS(gfxCtx, "../z_skin.c", 433);
}

#ifdef NON_MATCHING
// Same regalloc issue in 2 places
void func_800A60D8(Actor* actor, GlobalContext* globalCtx, PSkinAwb* arg2, SkinCallback arg3, SkinCallback2 arg4, s32 arg5, s32 arg6, s32 arg7) {
    s32 phi_s0;
    s32 temp_v1;
    UNK_TYPE* phi_s1;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    s32 pad;

    OPEN_DISPS(gfxCtx, "../z_skin.c", 471);
    if ((arg7 & 1) == 0) {
        func_800A6AC4(arg2, &D_801600C0[0], actor, arg5);
    }
    phi_s1 = SEGMENTED_TO_VIRTUAL(arg2->unk_0->unk_0);
    if ((arg7 & 2) == 0) {
        Mtx* mtx;
        gSPMatrix(POLY_OPA_DISP++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        mtx = SkinMatrix_MtxFToNewMtx(gfxCtx, &arg2->mtx);
        if (mtx != NULL) {
            gSPMatrix(POLY_OPA_DISP++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        } else {
            goto close_disps;
        }
    }
    for (phi_s0 = 0; phi_s0 < arg2->unk_0->unk_4; phi_s0++) {
        s32 phi_a0 = 1;
        if (arg4 != NULL) {
            phi_a0 = arg4(actor, globalCtx, phi_s0, arg2);
        }
        temp_v1 = ((Struct_800A5F60*)SEGMENTED_TO_VIRTUAL(phi_s1[phi_s0]))->unk_8;
        if (temp_v1 == 4 && phi_a0 == 1) {
            func_800A5E28(gfxCtx, arg2, phi_s0, arg6, arg7);
        } else if (temp_v1 == 0xB && phi_a0 == 1) {
            func_800A5F60(gfxCtx, arg2, phi_s0, NULL, arg7);
        }
    }
    if (arg3 != NULL) {
        arg3(actor, globalCtx, arg2);
    }
close_disps:
    CLOSE_DISPS(gfxCtx, "../z_skin.c", 534);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin/func_800A60D8.s")
#endif

void func_800A6330(Actor* this, GlobalContext* globalCtx, PSkinAwb* skin, SkinCallback callback, s32 arg4) {
    func_800A60D8(this, globalCtx, skin, callback, NULL, arg4, 0, 0);
}

void func_800A6360(Actor* this, GlobalContext* globalCtx, PSkinAwb* skin, SkinCallback callback, SkinCallback2 arg4, s32 arg5) {
    func_800A60D8(this, globalCtx, skin, callback, arg4, arg5, 0, 0);
}

void func_800A6394(Actor* this, GlobalContext* globalCtx, PSkinAwb* skin, SkinCallback callback, SkinCallback2 arg4, s32 arg5, s32 arg6) {
    func_800A60D8(this, globalCtx, skin, callback, arg4, arg5, arg6, 0);
}

void func_800A63CC(Actor* this, GlobalContext *globalCtx, PSkinAwb* skin, SkinCallback callback, SkinCallback2 arg4, s32 arg5, s32 arg6, s32 arg7) {
    func_800A60D8(this, globalCtx, skin, callback, arg4, arg5, arg6, arg7);
}

void func_800A6408(PSkinAwb* skin, s32 joint, Vec3f* arg2, Vec3f* arg3) {
    MtxF sp18;

    SkinMatrix_MtxFMtxFMult(&skin->mtx, &D_801600C0[joint], &sp18);
    SkinMatrix_Vec3fMtxFMultXYZ(&sp18, arg2, arg3);
}
