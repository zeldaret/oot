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

// internal functions
void func_80A68AC4(EnHorseGanon* this);
void func_80A68870(EnHorseGanon* this); // can be removed once this function matches
void func_80A686A8(EnHorseGanon* this, s32 unknown); // can be removed once this function matches
void func_80A68B20(EnHorseGanon* this); // can be removed once this function matches

// external functions
void func_80A68FA8();
void func_800A6888(GlobalContext*, s32*); // not exactly sure on 2nd arg type
void func_8005BCC8(GlobalContext*, u32*); // not exactly sure on 2nd arg type
void func_800A6330(Actor* this, GlobalContext* globalCtx, s32*, void (fn)(), s32); // not exactly sure on most of these

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


// static InitChainEntry initChain[] = {
//     ICHAIN_F32(unk_F8, 1200, ICHAIN_STOP),
// };

// static ColliderCylinderInit colliderInit = {
//     0x0A000039, 0x12010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00280064, 0x00000000, 0x00000000,
// };

// static u32 D_80A69230[] = { 0x0A000939, 0x12000000, 0x00000001 };

// static SubActor98Init subActor98Init = { 0x0A000023, 0x0064FE00 };

extern UNK_PTR D_80A691C0;
extern UNK_PTR D_80A691B0;
extern UNK_PTR D_06018668;
extern UNK_PTR D_06004AA4;
extern s32 D_80A692B8;
extern void (*D_80A692C4[3])();

// the rest are padding
const f32 D_80A692D0[] = { 10430.3779297f, 0.0f, 0.0f, 0.0f };

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
/*void func_80A68870(EnHorseGanon* this)
// regalloc mismatch
{
    if (this->skelAnime.animCurrentFrame > (f32) (&D_80A692B8)[this->unk_1e8])
    {
        if ((&D_80A692B8)[this->unk_1e8] != 0 || !(this->skelAnime.animCurrentFrame > (f32) (&D_80A692B8)[1]))
        {
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_WALK, &this->actor.unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);

            this->unk_1e8 += 1;
            if (this->unk_1e8 >= 2)
            {
                this->unk_1e8 = 0;
            }
        }
    }
}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/EnHorseGanon_Init.s")
// void EnHorseGanon_Init(EnHorseGanon* this, GlobalContext* globalCtx)
// {
//     ColliderCylinderMain* collider = &this->collider;

//     Actor_ProcessInitChain(&this->actor, initChain);
//     Actor_SetScale(&this->actor, 0.0115f);

//     this->actor.gravity = -3.5f;

//     ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 20.0f);
//     this->actor.speedXZ = 0.0f;
//     this->actor.posRot2.pos = this->actor.posRot.pos;
//     this->unk_14C = 0;
//     this->actor.posRot2.pos.y += 70.0f;
//     func_800A663C(globalCtx, &this->unk_154, &D_06018668, &D_06004AA4);
//     this->unk_150 = 0;
//     func_800A51E8(&this->skelAnime, D_80A691B0);

//     ActorCollider_AllocCylinder(globalCtx, collider);
//     ActorCollider_InitCylinder(globalCtx, collider, &this->actor, &colliderInit);
//     func_8005BBF8(globalCtx, &this->unk_248);
//     func_8005C050(globalCtx, &this->unk_248, this, &D_80A69230, &this->unk_268);

//     func_80061ED4(&this->actor.sub_98, 0, &subActor98Init);
//     func_80A68AC4(this);
// }

void EnHorseGanon_Destroy(EnHorseGanon* this, GlobalContext* globalCtx)
{
    func_800A6888(globalCtx, &this->unk_154);
    Collider_DestroyCylinder(globalCtx, &this->collider);
    Collider_DestroyJntSph(globalCtx, &this->unk_248);
}

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

void func_80A68E14(EnHorseGanon* this, GlobalContext* globalCtx)
{
    u32 junk; // aligns stack properly
    CollisionPoly* col;
    f32 temp_ret;
    Vec3f v;
    s32 temp1;

    v.x = Math_Sins(this->actor.shape.rot.y) * 30.0f + this->actor.posRot.pos.x;
    v.y = this->actor.posRot.pos.y + 60.0f;
    v.z = Math_Coss(this->actor.shape.rot.y) * 30.0f + this->actor.posRot.pos.z;

    temp_ret = func_8003C940(&globalCtx->colCtx, &col, &temp1, &v);

    this->unk_1f4 = temp_ret;
    this->actor.shape.rot.x = D_80A692D0[0] * Math_atan2f(this->actor.posRot.pos.y - temp_ret, 30.0f);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/EnHorseGanon_Update.s")
// void EnHorseGanon_Update(EnHorseGanon* this, GlobalContext* globalCtx)
// // simply needs to store a0 in s0 a few instructions earlier
// {
//     u32 junk1;
//     u32 junk2;

//     D_80A692C4[this->unk_14C]();
//     Actor_MoveForward(&this->actor);
//     func_8002E4B4(globalCtx, &this->actor, 20.0f, 55.0f, 100.0f, 29);
//     this->actor.posRot2.pos = this->actor.posRot.pos;
//     this->actor.posRot2.pos.y += 70.0f;
//     ActorCollider_Cylinder_Update(&this->actor, &this->collider);
//     Actor_CollisionCheck_SetOT(globalCtx, &globalCtx->sub_11E60, &this->collider);
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68FA8.s")

void EnHorseGanon_Draw(EnHorseGanon* this, GlobalContext* globalCtx)
{
    func_80A68E14(this, globalCtx);
    func_80093D18(globalCtx->state.gfxCtx);
    func_800A6330(&this->actor, globalCtx, &this->unk_154, func_80A68FA8, 1);
}
