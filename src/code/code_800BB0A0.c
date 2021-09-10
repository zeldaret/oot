#include "global.h"

typedef struct {
    f32 x;
    f32 y;
    f32 z;
    f32 roll;
    f32 viewAngle;
} Struct_800BB040;

#define CUBE(x) ((x)*(x)*(x))

#ifdef NON_MATCHING
void func_800BB0A0(f32 arg0, Vec3f *arg1, f32 *arg2, f32 *arg3, Struct_800BB040 *arg4, Struct_800BB040 *arg5, Struct_800BB040 *arg6, Struct_800BB040 *arg7) {
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 sp0;
    // f32 arg0;
    f32 temp_f0;
    
    f32 temp_f14;
    f32 temp_f2;
    // arg0 = arg0;
    arg0 = CLAMP_MAX(arg0, 1.0f);
    // if (temp_f12 > 1.0f) {
    //     temp_f12 = 1.0f;
    // }
    // temp_f0 = 1.0f - temp_f12;
     if(1) {}
    // temp_f14 = temp_f2 * temp_f12;
    temp_f14 = SQ(arg0);
    sp0 = CUBE(1.0f - arg0) / 6.0f;
    // temp_f2 = arg0 * arg0;
     if(1) {}
    sp4 = arg0 * temp_f14 / 2.0f - temp_f14 + 2.0f / 3.0f;
     if(1) {}
    sp8 = -arg0 * arg0 * arg0 / 2.0f + temp_f14 / 2.0f + arg0 / 2.0f + 1.0f / 6.0f;
     if(1) {}
    spC = arg0 * temp_f14 / 6.0f;
     if(1) {}
    // Rand_ZeroOne();
 if(1) {} if(1) {} if(1) {} if(1) {}
    arg1->x = (sp0 * arg4->x) + (sp4 * arg5->x) + (sp8 * arg6->x) + (spC * arg7->x);
    
    arg1->y = (sp0 * arg4->y) + (sp4 * arg5->y) + (sp8 * arg6->y) + (spC * arg7->y);
    arg1->z = (sp0 * arg4->z) + (sp4 * arg5->z) + (sp8 * arg6->z) + (spC * arg7->z);
    *arg2 = (sp0 * arg4->roll) + (sp4 * arg5->roll) + (sp8 * arg6->roll) + (spC * arg7->roll);
    *arg3 = (sp0 * arg4->viewAngle) + (sp4 * arg5->viewAngle) + (sp8 * arg6->viewAngle) + (spC * arg7->viewAngle);
}
#else
void func_800BB0A0(f32, Vec3f*, f32*, f32*, Struct_800BB040*, Struct_800BB040*, Struct_800BB040*, Struct_800BB040*);
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800BB0A0/func_800BB0A0.s")
#endif

#ifndef NON_MATCHING
s32 func_800BB2B4(Vec3f *pos, f32 *roll, f32 *fov, CutsceneCameraPoint *point, s16 *keyframe, f32 *curFrame) {
    s32 sp9C = 0;
    Struct_800BB040 sp4C[4];
    Struct_800BB040* temp2;
    CutsceneCameraPoint* temp;
    s32 i;
    s32 j;
    f32 sp3C;
    f32 sp38;
    f32 phi_f0;
    f32 phi_f12;

    // temp_t0 = *keyframe;
    
    sp38 = 0.0f;
    sp3C = 0.0f;
    phi_f12 = *curFrame;
    if (*keyframe < 0) {
        phi_f12 = 0.0f;
    }
    
    // temp_v0 = &point[temp_t0];
    if ((point[*keyframe].continueFlag == -1) || (point[*keyframe + 1].continueFlag == -1) || (point[*keyframe + 2].continueFlag == -1)) {
        return 1;
    }
    // temp_v0_2 = &sp4C;
    // temp_v1 = &point[temp_t0];
    // temp_t8 = temp_v1->pos.x;
    // phi_t8 = temp_t8;
    // phi_v1 = temp_v1;
    // phi_a0 = 0x10;
    // phi_t8_2 = temp_t8;
    // phi_v1_2 = temp_v1;
    // phi_a0_2 = 0x10;
    // i = 0;
    // temp = &point[*keyframe];
    // // j = 0;
    // for (j = 0; j < 0x40; i++, j += 0x10, temp++) {
    //     // i += 0x10;
    //     sp4C[i].x = temp->pos.x;
    //     sp4C[i].y = temp->pos.y;
    //     sp4C[i].z = temp->pos.z;
    //     sp4C[i].roll = temp->cameraRoll;
    //     sp4C[i].viewAngle = temp->viewAngle;
    // }
    // i = 0;
    // temp = &point[*keyframe];
    // temp2 = &sp4C;
    
    
    // i = 0x10;
    // if(1) {}
    for (i = 0x10, temp2 = sp4C, temp = &point[*keyframe]; i < 0x40; i += 0x10, temp2++, temp++) {
        temp2->x = temp->pos.x;
        temp2->y = temp->pos.y;
        temp2->z = temp->pos.z;
        temp2->roll = temp->cameraRoll;
        temp2->viewAngle = temp->viewAngle;
    }
    
    // if (0x10 != 0x40) {
    //     do {
    //         temp_a0 = phi_a0 + 0x10;
    //         temp_v0_2 = phi_v0 + 0x14;
    //         temp_v1_2 = phi_v1 + 0x10;
    //         temp_v0_2->unk-14 = (f32) phi_t8;
    //         temp_v0_2->unk-10 = (f32) temp_v1_2->unk-6;
    //         temp_v0_2->unk-C = (f32) temp_v1_2->unk-4;
    //         temp_v0_2->unk-8 = (f32) temp_v1_2->unk-F;
    //         temp_v0_2->unk-4 = (f32) temp_v1_2->unk-C;
    //         temp_t8_2 = temp_v1_2->pos.x;
    //         phi_t8 = temp_t8_2;
    //         phi_v0 = temp_v0_2;
    //         phi_v1 = temp_v1_2;
    //         phi_a0 = temp_a0;
    //         phi_t8_2 = temp_t8_2;
    //         phi_v0_2 = temp_v0_2;
    //         phi_v1_2 = temp_v1_2;
    //         phi_a0_2 = temp_a0;
    //     } while (temp_a0 != 0x40);
    // }
    // temp_v0_3 = phi_v0_2 + 0x14;
    // temp_v1_3 = phi_v1_2 + 0x10;
    // temp_v0_3->unk-14 = (f32) phi_t8_2;
    // temp_v0_3->unk-10 = (f32) temp_v1_3->unk-6;
    // temp_v0_3->unk-C = (f32) temp_v1_3->unk-4;
    // temp_v0_3->unk-8 = (f32) temp_v1_3->unk-F;
    // temp_v0_3->unk-4 = (f32) temp_v1_3->unk-C;
    // sp9C = 0;
    // sp3C = 0.0f;
    // sp38 = 0.0f;
    func_800BB0A0(phi_f12, pos, roll, fov, &sp4C[0], &sp4C[1], &sp4C[2], &sp4C[3]);
    // temp_v0_4 = &point[*keyframe];
    // temp_v1_4 = temp_v0_4->unk12;
    if (point[*keyframe + 1].nextPointFrame != 0) {
        sp3C = 1.0f / point[*keyframe + 1].nextPointFrame;
    }
    // temp_v1_5 = temp_v0_4->unk22;
    if (point[*keyframe + 2].nextPointFrame != 0) {
        sp38 = 1.0f / point[*keyframe + 2].nextPointFrame;
    }
    phi_f0 = (*curFrame * (sp38 - sp3C)) + sp3C;
    if (phi_f0 < 0.0f) {
        phi_f0 = 0;
    }
    *curFrame += phi_f0;
    if (*curFrame >= 1) {
        if (point[++*keyframe + 3].continueFlag == -1) {
            *keyframe = 0;
            sp9C = 1;
        }
        *curFrame -= 1;
    }
    
    return sp9C;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800BB0A0/func_800BB2B4.s")
#endif