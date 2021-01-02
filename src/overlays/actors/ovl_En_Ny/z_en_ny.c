#include "z_en_ny.h"

#define FLAGS 0x00000005

#define THIS ((EnNy*)thisx)

void EnNy_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNy_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNy_Update(Actor* thisx, GlobalContext* globalCtx);
void EnNy_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06001DD0;
extern UNK_TYPE D_06001EA8;
extern UNK_TYPE D_06001FC8;

const ActorInit En_Ny_InitVars = {
    ACTOR_EN_NY,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_NY,
    sizeof(EnNy),
    (ActorFunc)EnNy_Init,
    (ActorFunc)EnNy_Destroy,
    (ActorFunc)EnNy_Update,
    (ActorFunc)EnNy_Draw,
};

//s32 D_80ABE330[] = { 0x00000000, 0xFFCFFFFF, 0x04080000, 0xFFCFFFFF, 0x00000000,
 //                    0x01010100, 0x00000000, 0x00000000, 0x000F0064 };

static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x00, { 0xFFCFFFFF, 0x04, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
        { 0, { { 0, 0, 0 }, 15 }, 100 },
    },
};
//s32 D_80ABE354[] = { 0x0A110939, 0x10000000, 0x00000001, D_80ABE330 };
static ColliderJntSphInit D_80ABE354 =
{
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, 0x10, COLSHAPE_JNTSPH },
    1, sJntSphItemsInit,
};

//s32 D_80ABE364[] = { 0x000000F2, 0x00F2F212, 0x00F2F424, 0xF2F2E400, 0x00240000, 0x000000F4, 0xF200F8F4, 0x00000000 };
static DamageTable D_80ABE364 = { { 0x00, 0x00, 0x00, 0xF2, 0x00, 0xF2, 0xF2, 0x12, 0x00, 0xF2, 0xF4, 0x24, 0xF2, 0xF2, 0xE4, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF4, 0xF2, 0x00, 0xF8, 0xF4, 0x00, 0x00, 0x00, 0x00, } };

//s32 D_80ABE384[] = { 0x89170028, 0x801F0002, 0x304C001E };
static InitChainEntry D_80ABE384[] = {
    ICHAIN_S8(naviEnemyId, 40, ICHAIN_CONTINUE),
    ICHAIN_U8(unk_1F, 2, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 30, ICHAIN_STOP),
};

s32 D_80ABE390[] = { 0x00000000, 0x00000000, 0x00000000 };

s32 D_80ABE39C[] = { 0x00000000, 0x3DCCCCCD, 0x00000000 };

s32 D_80ABE3A8[] = { 0x40A00000, 0x00000000, 0x00000000, 0xC0A00000, 0x00000000, 0x00000000, 0x00000000,
                     0x00000000, 0x40A00000, 0x00000000, 0x00000000, 0xC0A00000, 0x00000000, 0x00000000 };

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/EnNy_Init.s")
void EnNy_Init(Actor *thisx, GlobalContext *globalCtx) {
    ColliderJntSph *sp28;
    ColliderJntSph *temp_a1;
    s16 temp_a1_2;

    Actor_ProcessInitChain(thisx, D_80ABE384);
    thisx->colChkInfo.damageTable = &D_80ABE364;
    thisx->colChkInfo.health = 2;
    temp_a1 = thisx + 0x150;
    sp28 = temp_a1;
    Collider_InitJntSph(globalCtx, temp_a1);
    Collider_SetJntSph(globalCtx, temp_a1, thisx, &D_80ABE354, thisx + 0x170);
    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFunc_Circle, 20.0f);
    thisx->unk1CA = (u16)0;
    thisx->unk1D0 = (u8)0;
    Actor_SetScale(thisx, 0.01f);
    thisx->shape.rot.y = 0;
    thisx->speedXZ = 0.0f;
    temp_a1_2 = thisx->params;
    thisx->unk1CC = (u16)0;
    thisx->unk1CE = (u16)2;
    thisx->unk1D4 = 0xFF;
    thisx->unk1D8 = 0;
    thisx->velocity.y = 0.0f;
    thisx->unk1E8 = 0.0f;
    thisx->gravity = -0.4f;
    thisx->unk1E0 = 0.25f;
    if (temp_a1_2 == 0) {
        //New initials
        osSyncPrintf((const char *) "ニュウ イニシャル[ %d ] ！！\n", temp_a1_2);
        thisx->colChkInfo.mass = 0;
        thisx->unk1D4 = 0;
        thisx->unk1D8 = 0xFF;
        thisx->unk1E0 = 1.0f;
        func_80ABCDBC(thisx);
        return;
    }

    //Dummy new initials
    osSyncPrintf("ダミーニュウ イニシャル[ %d ] ！！\n", temp_a1_2);
    sp28 = &func_80ABDBF8;
    osSyncPrintf("En_Ny_actor_move2[ %x ] ！！\n", func_80ABDBF8);
    thisx->colChkInfo.mass = 0xFF;
    thisx->unk164 = (u8)9;
    thisx->update = (void (*)(struct Actor *, struct GlobalContext *)) &func_80ABDBF8;
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/EnNy_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCD40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCD84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCD94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCDAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCDBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCDFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCE38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCE50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCE90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCEEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABCF4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD05C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD11C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD190.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD3B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/EnNy_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD728.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABD9AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABDBB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABDBF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/EnNy_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ny/func_80ABE040.s")
