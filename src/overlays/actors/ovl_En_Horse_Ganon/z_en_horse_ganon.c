/*
 * File: z_en_horse_ganon.c
 * Overlay: ovl_En_Horse_Ganon
 * Description: Ganondorf's Horse
 */

#include "z_en_horse_ganon.h"

#define FLAGS 0x00000010

void EnHorseGanon_Init(EnHorseGanon* this, GlobalContext* globalCtx);
void EnHorseGanon_Destroy(EnHorseGanon* this, GlobalContext* globalCtx);
void EnHorseGanon_Update(EnHorseGanon* this, GlobalContext* globalCtx);
void EnHorseGanon_Draw(EnHorseGanon* this, GlobalContext* globalCtx);

/*
const ActorInit En_Horse_Ganon_InitVars = {
    ACTOR_EN_HORSE_GANON,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HORSE_GANON,
    sizeof(EnHorseGanon),
    (ActorFunc)EnHorseGanon_Init,
    (ActorFunc)EnHorseGanon_Destroy,
    (ActorFunc)EnHorseGanon_Update,
    (ActorFunc)EnHorseGanon_Draw,
};
*/

/*static InitChainEntry initChain[] = {
    ICHAIN_F32(unk_F8, 1200, ICHAIN_STOP),
};

static ColliderCylinderInit colliderInit = {
    0x0A000039, 0x12010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00280064, 0x00000000, 0x00000000,
};

static u32 D_80A69230[] = { 0x0A000939, 0x12000000, 0x00000001 };

static SubActor98Init subActor98Init = { 0x0A000023, 0x0064FE00 };*/

extern u32 D_80A691C0;
extern u32 D_80A691B0;

s16* func_80A68660(EnHorseGanon* this, u32 offset, f32* floatArray)
{
    s16* temp = (s16*) ((u8*)this + offset * 8);

    floatArray[0] = (f32)temp[0];
    floatArray[1] = (f32)temp[1];
    floatArray[2] = (f32)temp[2];

    return temp;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A686A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68870.s")

// void EnHorseGanon_Init(EnHorseGanon* this, GlobalContext* globalCtx)
// {
//     /*
//     arg0->unk6C = -3.5f;
//     ActorShape_Init(arg0 + 0xB4, 0, 0x80030000 + 0xB644, 0x41A00000);
//     arg0->unk3C = (s32) arg0->unk28;
//     arg0->unk38 = (s32) arg0->unk24;
//     arg0->unk14C = 0;
//     arg0->unk3C = (f32) ((bitwise f32) arg0->unk3C + 70.0f);
//     arg0->unk68 = 0.0f;
//     arg0->unk40 = (s32) arg0->unk2C;
//     func_800A663C(arg1, arg0 + 0x154, 0x6010000 + 0x8668, 0x6000000 + 0x4AA4);
//     arg0->unk150 = 0;
//     func_800A51E8(arg0 + 0x1A0, D_80A691B0);
//     temp_a1 = arg0 + 0x1FC;
//     sp28 = temp_a1;
//     ActorCollider_AllocCylinder(arg1, temp_a1);
//     ActorCollider_InitCylinder(arg1, temp_a1, arg0, &D_80A691E0);
//     temp_a1_2 = arg0 + 0x248;
//     sp28 = temp_a1_2;
//     func_8005BBF8(arg1, temp_a1_2);
//     func_8005C050(arg1, temp_a1_2, arg0, &D_80A69230, (s32) (arg0 + 0x268));
//     func_80061ED4(arg0 + 0x98, 0, &D_80A69240);
//     func_80A68AC4(arg0);
//     */
//     ColliderCylinderMain* collider = &this->collider;
//     void* colliderThing = &this->unk_248;
//     unsigned int new_var;

//     Actor_ProcessInitChain(&this->actor, initChain);
//     Actor_SetScale(&this->actor, 0.0115000000224f);

//     this->actor.velocity.z = -3.5f;

//     ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 20.0f);
//     //this->actor.posRot2.pos = this->actor.posRot.pos;
//     this->actor.posRot2.pos.y = this->actor.posRot.pos.y;
//     this->actor.posRot2.pos.x = this->actor.posRot.pos.x;
//     new_var = this->unk_268;
//     this->unk_14C = 0;
//     this->actor.posRot2.pos.y += 70.0f;
//     this->actor.speedXZ = 0.0f;
//     this->actor.posRot2.rot.y = (s32) this->actor.posRot.pos.z; // wtf is happening here arg0->unk40 = (s32) arg0->unk2C;
//     func_800A663C(globalCtx, &this->unk_154, 0x06008668, 0x06004AA4); // last two probably wrong
//     this->unk_150 = 0;
//     func_800A51E8(&this->skelAnime, D_80A691B0);

//     ActorCollider_AllocCylinder(globalCtx, collider);
//     ActorCollider_InitCylinder(globalCtx, collider, &this->actor, &colliderInit);
//     func_8005BBF8(globalCtx, colliderThing);
//     func_8005C050(globalCtx, colliderThing, this, &D_80A69230, (s16) new_var);

//     func_80061ED4(&this->actor.sub_98, 0, &subActor98Init);
//     func_80A68AC4(this);
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/EnHorseGanon_Init.s")


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/EnHorseGanon_Destroy.s")
// void EnHorseGanon_Destroy(EnHorseGanon* this, GlobalContext* globalCtx)
// {
//     // func_800A6888(globalCtx, this->unk_154);
//     // ActorCollider_FreeCylinder(globalCtx, &this->collider);
//     // func_8005BCC8(globalCtx, this->unk_248);
//     s32 new_var;
//     if (this->unk_248)
//     {
//     }

//     new_var = this->unk_154;
//     func_800A6888(globalCtx, new_var);
//     ActorCollider_FreeCylinder(globalCtx, &this->collider);
//     func_8005BCC8(globalCtx, this->unk_248);
// }

void func_80A68AC4(EnHorseGanon* this)
{
    this->unk_14C = 0;
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, D_80A691C0);
}

void func_80A68AF0(EnHorseGanon* this, s32 unused)
{
    this->actor.speedXZ = 0.0f;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68B20.s")

void func_80A68DB0(EnHorseGanon* this, s32 unknown)
{
    if (this->unk_150 == 2)
    {
        func_80A68870(this);
    }

    func_80A686A8(this, unknown);

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0)
    {
        func_80A68B20(this);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68E14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/EnHorseGanon_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68FA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/EnHorseGanon_Draw.s")
