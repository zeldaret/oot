#include <ultra64.h>
#include <global.h>

s32 func_800A4478(SkelAnime*,f32,f32);

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A08A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A0B40.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A0D94.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A106C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A1344.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/SkelAnime_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A180C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A1AC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A1D8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A1FC8.s")

s32 SkelAnime_GetFrameCount(u32 animation)
{
    u16* virt = (u16*)SEGMENTED_TO_VIRTUAL(animation);

    return (s16)(*virt - 1);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A2044.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A2288.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A24A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A273C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A29BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A2DBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A2DF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A2E2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A2E70.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A32EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A32F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3310.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3334.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A336C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3478.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A34DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3548.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A35B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3620.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3678.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A36A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3714.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3770.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A37F0.s")

typedef struct {
    Actor* actor;
    SkelAnime* skelAnime;
    f32 unk_8;
} UNK_800A3874_A1;
void func_800A54FC(SkelAnime*,Vec3f*,s16);
void func_800A3874(s32 arg0, UNK_800A3874_A1* arg1)
{
    char pad[4];
    Actor* temp_v0 = arg1->actor;
    Vec3f pos;

    func_800A54FC(arg1->skelAnime, &pos, temp_v0->shape.rot.y);
    temp_v0->posRot.pos.x += pos.x * temp_v0->scale.x;
    temp_v0->posRot.pos.y += pos.y * temp_v0->scale.y * arg1->unk_8;
    temp_v0->posRot.pos.z += pos.z * temp_v0->scale.z;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A390C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A39AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3B8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3BE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3C9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3D70.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3E0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3EE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A3F08.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A407C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A40DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4140.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A419C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A41FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A422C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A425C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A42A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A42E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A431C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A43B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4454.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4478.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4530.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/SkelAnime_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A46F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A487C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A49B0.s")

s32 SkelAnime_FrameUpdateMatrix(SkelAnime* skelAnime){
    return skelAnime->mtxUpdate(skelAnime);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4A20.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4AD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4C58.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4D9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4E38.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4EE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A4FE4.s")

void SkelAnime_ChangeAnimation(SkelAnime* skelAnime, u32 animation, f32 playbackSpeed, f32 unk0, /* 0x10 */ f32 frameCount, /* 0x14 */ u8 unk1, /* 0x18 */ f32 transitionRate)
{
    func_800A4FE4(skelAnime, animation, playbackSpeed, unk0, frameCount, unk1, transitionRate, 0);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A51E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A5240.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A529C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A52F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A534C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A5384.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A53DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A5408.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A5428.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A5490.s")

#ifdef NON_MATCHING
void func_800A54FC(SkelAnime* skelAnime, Vec3f* pos, s16 angle)
{
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f24;
    f32 temp_f24_2;
    f32 temp_ret;
    f32 temp_ret_2;

    if ((skelAnime->unk_35 & 0x10) != 0)
    {
        pos->z = 0.0f;
        pos->x = 0.0f;
    }
    else
    {

        temp_f20 = (f32) *(s16*)(skelAnime->actorDrawTbl);
        temp_f22 = (f32) ((s16*)skelAnime->actorDrawTbl)[2];
        temp_f24 = Math_Sins(angle);
        temp_ret = Math_Coss(angle);
        pos->x = (f32) ((temp_f20 * temp_ret) + (temp_f22 * temp_f24));
        pos->z = (f32) ((temp_f22 * temp_ret) - (temp_f20 * temp_f24));
        temp_f20_2 = (f32) skelAnime->unk_38;
        temp_f22_2 = (f32) skelAnime->unk_3C;
        temp_f24_2 = Math_Sins(skelAnime->unk_36);
        temp_ret_2 = Math_Coss(skelAnime->unk_36);
        pos->x -= ((temp_f20_2 * temp_ret_2) + (temp_f22_2 * temp_f24_2));
        pos->z -= ((temp_f22_2 * temp_ret_2) - (temp_f20_2 * temp_f24_2));
        //arg1->unk0 = (f32) (arg1->unk0 - ((temp_f20_2 * temp_ret_2) + (temp_f22_2 * temp_f24_2)));
        //arg1->unk8 = (f32) (arg1->unk8 - ((temp_f22_2 * temp_ret_2) - (temp_f20_2 * temp_f24_2)));
    }
    skelAnime->unk_36 = angle;
    skelAnime->unk_38 = *(s16*)(skelAnime->actorDrawTbl);
    *(s16*)(skelAnime->actorDrawTbl) = skelAnime->unk_3E;
    skelAnime->unk_3C = ((s16*)skelAnime->actorDrawTbl)[2];
    ((s16*)skelAnime->actorDrawTbl)[2] = skelAnime->unk_42;
    if ((skelAnime->unk_35 & 2) != 0)
    {
        if ((skelAnime->unk_35 & 0x10) != 0)
        {
            pos->y = 0.0f;
        }
        else
        {
            pos->y = (f32) ((s16*)skelAnime->actorDrawTbl)[1];
        }
        skelAnime->unk_3A = ((s16*)skelAnime->actorDrawTbl)[1];
        ((s16*)skelAnime->actorDrawTbl)[1] = skelAnime->unk_40;
    }
    else
    {
        pos->y = 0.0f;
        skelAnime->unk_3A = ((s16*)skelAnime->actorDrawTbl)[1];
    }
    skelAnime->unk_35 &= ~0x10;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_skelanime/func_800A54FC.s")
#endif

s32 func_800A56C8(SkelAnime *skelAnime, f32 arg1)
{
    return func_800A4478(skelAnime, arg1, 1.0f);
}

void func_800A56F0(SkelAnime *skelAnime, s32 arg1)
{
    if (skelAnime->actorDrawTbl != 0)
    {
        ZeldaArena_FreeDebug(skelAnime->actorDrawTbl, "../z_skelanime.c", 3729);
    }
    else
    {
        osSyncPrintf("now_joint あきまへん！！\n"); // now_joint Akimane! !
    }
    if (skelAnime->unk_24 != 0)
    {
        ZeldaArena_FreeDebug(skelAnime->unk_24, "../z_skelanime.c", 3731);
        return;
    }
    osSyncPrintf("morf_joint あきまへん！！\n"); // "morf_joint Akimane !!"
}

s32 func_800A5774(SkelAnime* skelAnime, Vec3s *dst, Vec3s *src)
{
    s32 i;
    for(i = 0; i < skelAnime->limbCount; i++)
    {
        *dst++ = *src++;
    }
}
