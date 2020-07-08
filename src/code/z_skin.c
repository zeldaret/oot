#include <ultra64.h>
#include <global.h>

extern MtxF D_801600C0[];

typedef struct {
    char unk_0[0x8];
    s32 unk_8;
    Gfx* unk_C;
} Struct_800A5F60;

typedef struct {
    char unk_0[0x4];
    MtxF unk_4;
} Struct_800A6408;

typedef struct {
    u16 unk_0;
    u16 unk_2;
    s32 unk_4;
    s32 unk_8;
    s32 unk_C;
} Struct_800A598C; // size = 0x10

typedef struct {
    u16 unk_0;
    char unk_2[0x4];
    s8 unk_6;
    s8 unk_7;
    s8 unk_8;
    char unk_9[0x1];
} Struct_800A57C0; // size = 0xA

typedef struct {
    s16 unk_0;
    s16 unk_2;
    s16 unk_4;
    char unk_6[0x6];
    s8 unk_C;
    s8 unk_D;
    s8 unk_E;
    char unk_F[0x1];
} Struct_800A57C0_2; // size = 0x10

#ifdef NON_MATCHING
// Stack only
void func_800A57C0(MtxF *mtx, Struct_800A57C0* arg1, Struct_800A598C* arg2, Struct_800A57C0_2* arg3, Vec3f *arg4) {
    Vec3f sp70;
    Vec3f sp64;
    f32 temp_x;
    f32 temp_y;
    f32 temp_z;
    Struct_800A57C0_2 *temp_s2;
    Struct_800A57C0 *phi_s1;

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
        func_800A6EF4(mtx, &sp64, &sp70);
        temp_s2->unk_C = sp70.x;
        temp_s2->unk_D = sp70.y;
        temp_s2->unk_E = sp70.z;
        mtx->wx = temp_x;
        mtx->wy = temp_y;
        mtx->wz = temp_z;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin/func_800A57C0.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin/func_800A598C.s")
/* void func_800A598C(GraphicsContext* gfxCtx, PSkinAwb *arg1, s32 arg2, s32 arg3) {
    void *sp100;
    s32 spEC;
    f32 spE4;
    f32 spE0;
    f32 spDC;
    f32 spD8;
    f32 spD4;
    f32 spD0;
    Gfx *spB8;
    f32 spB4;
    f32 spB0;
    f32 spAC;
    f32 spA8;
    f32 spA4;
    f32 spA0;
    f32 sp90;
    f32 sp8C;
    f32 sp88;
    u32 sp80;
    Gfx *temp_v1_2;
    f32 *temp_a1;
    f32 *temp_a1_2;
    f32 *temp_a1_3;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f26;
    f32 temp_f2;
    f32 temp_f6;
    s32 temp_v0;
    s32 temp_v1;
    u16 temp_a0_2;
    u32 temp_ra;
    u32 temp_s6;
    u8 temp_t7_2;
    void *temp_a0;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s1;
    void *temp_s3;
    void *temp_s6_2;
    void *temp_t5;
    void *temp_t7;
    void *temp_t9;
    void *phi_s6;
    void *phi_s0;
    f32 phi_f6;
    f32 phi_f26;
    f32 phi_f24;
    f32 phi_f22;
    void *phi_t5;
    f32 phi_f26_2;
    f32 phi_f24_2;
    f32 phi_f22_2;

    Graph_OpenDisps(&spB8, gfxCtx, "../z_skin.c", 0xFE);
    temp_t7 = ((gSegments[((u32) (*arg1->unk0 * 0x10) >> 0x1C)] + (*arg1->unk0 & 0xFFFFFF)) + 0x80000000) + (arg2 * 4);
    temp_t9 = ((*temp_t7 & 0xFFFFFF) + gSegments[((u32) (*temp_t7 * 0x10) >> 0x1C)]) + 0x80000000;
    temp_a0 = ((temp_t9->unkC & 0xFFFFFF) + gSegments[((u32) (temp_t9->unkC * 0x10) >> 0x1C)]) + 0x80000000;
    temp_t5 = arg1->unk48 + (arg2 * 0xC);
    temp_s6 = (gSegments[((u32) (temp_a0->unk4 * 0x10) >> 0x1C)] + (temp_a0->unk4 & 0xFFFFFF)) + 0x80000000;
    spEC = (temp_t5 + (*temp_t5 * 4))->unk4;
    temp_ra = (temp_a0->unk2 * 0x10) + temp_s6;
    phi_t5 = temp_t5;
    if (temp_s6 < temp_ra) {
        sp100 = temp_t5;
        sp80 = temp_ra;
        phi_s6 = (void *) temp_s6;
loop_2:
        temp_v0 = phi_s6->unk8;
        temp_v1 = phi_s6->unkC;
        temp_a0_2 = phi_s6->unk2;
        temp_s3 = (gSegments[((u32) (temp_v1 * 0x10) >> 0x1C)] + (temp_v1 & 0xFFFFFF)) + 0x80000000;
        if (temp_a0_2 == 1) {
            temp_a1 = &spAC;
            spAC = (f32) temp_s3->unk2;
            spB0 = (f32) temp_s3->unk4;
            spB4 = (f32) temp_s3->unk6;
            func_800A6EF4(&D_801600C0 + (temp_s3->unk0 << 6), (Vec3f *) temp_a1, (Vec3f *) &spDC);
        } else {
            if (arg3 == 1) {
                temp_a1_2 = &spA0;
                temp_s0 = (phi_s6->unk4 * 0xA) + temp_s3;
                spA0 = (f32) temp_s0->unk2;
                spA4 = (f32) temp_s0->unk4;
                spA8 = (f32) temp_s0->unk6;
                func_800A6EF4(&D_801600C0 + (temp_s0->unk0 << 6), (Vec3f *) temp_a1_2, (Vec3f *) &spDC);
            } else {
                temp_s1 = (temp_a0_2 * 0xA) + temp_s3;
                phi_s0 = temp_s3;
                phi_f26 = 0.0f;
                phi_f24 = 0.0f;
                phi_f22 = 0.0f;
                phi_f26_2 = 0.0f;
                phi_f24_2 = 0.0f;
                phi_f22_2 = 0.0f;
                if ((u32) temp_s3 < (u32) temp_s1) {
loop_7:
                    temp_t7_2 = phi_s0->unk8;
                    temp_f6 = (f32) temp_t7_2;
                    phi_f6 = temp_f6;
                    if ((s32) temp_t7_2 < 0) {
                        phi_f6 = temp_f6 + 4294967296.0f;
                    }
                    temp_f20 = phi_f6 * 0.01f;
                    temp_a1_3 = &sp88;
                    sp88 = (f32) phi_s0->unk2;
                    sp8C = (f32) phi_s0->unk4;
                    sp90 = (f32) phi_s0->unk6;
                    func_800A6EF4(&D_801600C0 + (phi_s0->unk0 << 6), (Vec3f *) temp_a1_3, (Vec3f *) &spD0);
                    temp_f0 = spD0 * temp_f20;
                    temp_s0_2 = phi_s0 + 0xA;
                    temp_f2 = spD4 * temp_f20;
                    temp_f12 = spD8 * temp_f20;
                    spD0 = temp_f0;
                    temp_f26 = phi_f26_2 + temp_f0;
                    spD4 = temp_f2;
                    temp_f24 = phi_f24_2 + temp_f2;
                    spD8 = temp_f12;
                    temp_f22 = phi_f22_2 + temp_f12;
                    phi_s0 = temp_s0_2;
                    phi_f26 = temp_f26;
                    phi_f24 = temp_f24;
                    phi_f22 = temp_f22;
                    phi_f26_2 = temp_f26;
                    phi_f24_2 = temp_f24;
                    phi_f22_2 = temp_f22;
                    if ((u32) temp_s0_2 < (u32) temp_s1) {
                        goto loop_7;
                    }
                }
                spDC = phi_f26;
                spE0 = phi_f24;
                spE4 = phi_f22;
            }
        }
        func_800A57C0(&D_801600C0 + (*(temp_s3 + (phi_s6->unk4 * 0xA)) << 6), (gSegments[((u32) (temp_v0 * 0x10) >> 0x1C)] + (temp_v0 & 0xFFFFFF)) + 0x80000000, phi_s6, spEC, &spDC);
        temp_s6_2 = phi_s6 + 0x10;
        phi_s6 = temp_s6_2;
        if ((u32) temp_s6_2 < sp80) {
            goto loop_2;
        }
        phi_t5 = sp100;
    }
    temp_v1_2 = gfxCtx->polyOpa.p;
    gfxCtx->polyOpa.p = (Gfx *) (temp_v1_2 + 8);
    temp_v1_2->words.w0 = 0xDB060020U;
    temp_v1_2->words.w1 = (u32) (phi_t5 + (*phi_t5 * 4))->unk4;
    if (*phi_t5 == 0) {
        *phi_t5 = 1;
    } else {
        *phi_t5 = 0;
    }
    Graph_CloseDisps(&spB8, gfxCtx, "../z_skin.c", 0x158);
} */

typedef struct {
    char unk_0[0x8];
    Gfx* unk_8;
} Struct_800A5E28;

#ifdef NON_MATCHING
// Regalloc, Small reorderings
void func_800A5E28(GraphicsContext* gfxCtxIn, PSkinAwb* arg1, s32 arg2, s32 arg3, s32 arg4) {
    Struct_800A5E28* temp_t9;
    u32 *temp_t2;
    Struct_800A5F60 *temp_t5;

    GraphicsContext* gfxCtx = gfxCtxIn;
    Gfx* dispRefs[4];
    Graph_OpenDisps(dispRefs, gfxCtxIn, "../z_skin.c", 0x16C);
    temp_t2 = SEGMENTED_TO_VIRTUAL(arg1->unk_0->unk_0);
    temp_t5 = (Struct_800A5F60*)SEGMENTED_TO_VIRTUAL(temp_t2[arg2]);
    temp_t9 = (Struct_800A5E28*)SEGMENTED_TO_VIRTUAL(temp_t5->unk_C);
    if (!(arg4 & 1)) {
        func_800A598C(gfxCtxIn, arg1, arg2, arg3);
    }
    gSPDisplayList(gfxCtx->polyOpa.p++, temp_t9->unk_8);
    Graph_CloseDisps(dispRefs, gfxCtxIn, "../z_skin.c", 0x179);
}
#else
void func_800A5E28(GraphicsContext* gfxCtxIn, PSkinAwb* arg1, s32 arg2, s32 arg3, s32 arg4);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin/func_800A5E28.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin/func_800A5F60.s")
void func_800A5F60(GraphicsContext *gfxCtxIn, PSkinAwb *arg1, s32 arg2, Gfx* arg3) {
    Gfx* temp_t0 = arg3;
    u32* temp_t8;
    Mtx *mtx;

    GraphicsContext* gfxCtx = gfxCtxIn;
    Gfx* dispRefs[4];
    Graph_OpenDisps(dispRefs, gfxCtxIn, "../z_skin.c", 0x18B);
    temp_t8 = SEGMENTED_TO_VIRTUAL(arg1->unk_0->unk_0);
    if (arg3 == NULL) {
        temp_t0 = ((Struct_800A5F60*)SEGMENTED_TO_VIRTUAL(temp_t8[arg2]))->unk_C;
    }
    if (temp_t0 != NULL) {
        mtx = func_800A7E70(gfxCtxIn, &D_801600C0[arg2]);
        if (mtx != NULL) {
            gSPMatrix(gfxCtx->polyOpa.p++, mtx, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
            gSPDisplayList(gfxCtx->polyOpa.p++, temp_t0);
            gSPPopMatrix(gfxCtx->polyOpa.p++, G_MTX_MODELVIEW);
            gDPPipeSync(gfxCtx->polyOpa.p++);
        }
    }
    Graph_CloseDisps(dispRefs, gfxCtxIn, "../z_skin.c", 0x1B1);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin/func_800A60D8.s")
/* void func_800A60D8(Actor* actor, GlobalContext* globalCtx, PSkinAwb *arg2, SkinCallback arg3, SkinCallback2 arg4, s32 arg5, s32 arg6, s32 arg7) {
    Mtx *temp_v0;
    s32 temp_s0;
    Struct_800A5F60 *temp_v1;
    s32 phi_s0;
    u32 *phi_s1;
    s32 phi_a0;

    GraphicsContext *gfxCtx = globalCtx->state.gfxCtx;
    Gfx *dispRefs[4];
    Graph_OpenDisps(dispRefs, gfxCtx, "../z_skin.c", 0x1D7);
    if (!(arg7 & 1)) {
        func_800A6AC4(arg2, &D_801600C0, actor, arg5);
    }
    phi_s1 = SEGMENTED_TO_VIRTUAL(arg2->unk_0->unk_0);
    if (!(arg7 & 2)) {
        gSPMatrix(gfxCtx->polyOpa.p++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        temp_v0 = func_800A7E70(gfxCtx, &arg2->mtx);
        if (temp_v0 != NULL) {
            gSPMatrix(gfxCtx->polyOpa.p++, temp_v0, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        }
    }
    for (phi_s0 = 0; phi_s0 < arg2->unk_0->unk_4; phi_s0++, phi_s1++) {
        phi_a0 = (arg4 != NULL) ? arg4(actor, globalCtx, phi_s0, arg2) : 1;
        temp_v1 = (Struct_800A5F60*)SEGMENTED_TO_VIRTUAL(phi_s1[0]);
        if (temp_v1->unk_8 == 4 && phi_a0 == 1) {
            func_800A5E28(gfxCtx, arg2, phi_s0, arg6, arg7);
        } else if (temp_v1->unk_8 == 0xB && phi_a0 == 1) {
            func_800A5F60(gfxCtx, arg2, phi_s0, 0);
        }
    }
    if (arg3 != NULL) {
        arg3(actor, globalCtx, arg2);
    }
    Graph_CloseDisps(dispRefs, gfxCtx, "../z_skin.c", 0x216);
} */

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin/func_800A6330.s")
void func_800A6330(Actor* this, GlobalContext *globalCtx, PSkinAwb* arg2, SkinCallback callback, s32 arg4) {
    func_800A60D8(this, globalCtx, arg2, callback, NULL, arg4, 0, 0);
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin/func_800A6360.s")
void func_800A6360(Actor* this, GlobalContext *globalCtx, PSkinAwb* arg2, SkinCallback callback, SkinCallback2 arg4, s32 arg5) {
    func_800A60D8(this, globalCtx, arg2, callback, arg4, arg5, 0, 0);
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin/func_800A6394.s")
void func_800A6394(Actor* this, GlobalContext *globalCtx, PSkinAwb* arg2, SkinCallback callback, SkinCallback2 arg4, s32 arg5, s32 arg6) {
    func_800A60D8(this, globalCtx, arg2, callback, arg4, arg5, arg6, 0);
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin/func_800A63CC.s")
void func_800A63CC(Actor* this, GlobalContext *globalCtx, PSkinAwb* arg2, SkinCallback callback, SkinCallback2 arg4, s32 arg5, s32 arg6, s32 arg7) {
    func_800A60D8(this, globalCtx, arg2, callback, arg4, arg5, arg6, arg7);
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/z_skin/func_800A6408.s")
void func_800A6408(Struct_800A6408* arg0, s32 arg1, Vec3f *arg2, Vec3f *arg3) {
    MtxF sp18;

    func_800A6FA0(&arg0->unk_4, &D_801600C0[arg1], &sp18);
    func_800A6EF4(&sp18, arg2, arg3);
}
