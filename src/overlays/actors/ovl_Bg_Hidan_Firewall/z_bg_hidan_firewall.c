#include "z_bg_hidan_firewall.h"

#define ROOM  0x00
#define FLAGS 0x00000000

// static ColliderCylinderInit cylinderInitData =
// {
//     {
//         0x0A, 0x11, 0x00, 0x09,
//         0x20, 0x01,  { 0x00, 0x00, },
//         0x00, { 0x00, 0x00, 0x00, },
//         0x20000000,
//         0x01, 0x04, { 0x00, 0x00, },
//         0xFFCFFFFF,
//         { 0x00, 0x00, 0x00, 0x00, },
//         0x19, 0x00, 0x01, 0x00,
//     },
//     0x001E,
//     0x0053,
//     0x0000, 
//     {
//         0x0000, 0x0000, 0x0000,
//     },
// };

/*
const ActorInit Bg_Hidan_Firewall_InitVars =
{
    ACTOR_BG_HIDAN_FIREWALL,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanFirewall),
    (ActorFunc)BgHidanFirewall_Init,
    (ActorFunc)BgHidanFirewall_Destroy,
    (ActorFunc)BgHidanFirewall_Update,
    NULL,
};
*/

void BgHidanFirewall_Init(BgHidanFirewall* this, GlobalContext* globalCtx){
  
    f32 scale;

    scale = D_80886D84;
    this->actor.scale.x = scale;
    this->actor.scale.z = scale;

    scale = D_80886D88;
    this->actor.scale.y = D_80886D88;

    this->unk_150 = 0;

    ActorCollider_AllocCylinder(globalCtx, ((s32*)this+0x55));//TODO: fix this. multiple cylinders?
    ActorCollider_InitCylinder(globalCtx, ((s32*)this+0x55), &this->actor, &D_80886CD0);

    this->pos_19A.y = this->actor.posRot.pos.y;

    func_80061ED4(&this->actor.sub_98, 0, D_80886CFC);
    
    this->actionFunc = BgHidanFirewall_Wait;
    return;
}

void BgHidanFirewall_Destroy(BgHidanFirewall* this, GlobalContext* globalCtx)
{
    BgHidanFirewall* thing = this;
    ActorCollider_FreeCylinder(globalCtx, (char*)this + 0x154);//TODO: fix this. multiple cylinders?
}

// BgHidanFirewall_Proximity
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Firewall/func_80886728.s")
// s32 func_80886728(BgHidanFirewall* this, GlobalContext* globalCtx)
// {
//     Vec3f* sp18; //TODO: where does this come from?
//     f32 phi_return;

//     func_8002DBD0(&this->actor, sp18, &(globalCtx->actorCtx.actorList[2].first->posRot.pos));

//     phi_return = 0.0f;
//     if (fabsf(sp18->x) < 100.0f)
//     {
//         phi_return = fabsf(sp18->z);
//         if (phi_return < 120.0f)
//         {
//             phi_return = 1.401298464324817e-45f;
//         }
//     }
//     return phi_return;
// }

void BgHidanFirewall_Wait(BgHidanFirewall* this, GlobalContext* globalCtx)
{
    if (func_80886728(this, globalCtx) != 0)
    {
        this->actor.draw = func_80886B34;
        this->actor.params = 5;
        this->actionFunc = BgHidanFirewall_Countdown;
    }
}

void BgHidanFirewall_Countdown(BgHidanFirewall* this, GlobalContext* globalCtx)
{

    if (this->actor.params != 0)
    {
        this->actor.params--;
    }
    if (this->actor.params == 0)
    {
        this->actionFunc = &func_80886810;
    }
}

void func_80886810(BgHidanFirewall* this, GlobalContext* globalCtx)
{
    if (func_80886728(this, globalCtx) != 0)
    {
        Math_ApproxF(&this->actor.scale.y, 0.1f, 0.024999999f);
        return;
    }
    if (Math_ApproxF(&this->actor.scale.y, D_80886D8C, D_80886D8C) != 0)
    {
        this->actor.draw = 0;
        this->actionFunc = BgHidanFirewall_Wait;
    }
    else
    {
        this->actor.params = 0;
    }
}

void func_80886898(BgHidanFirewall* this, GlobalContext* globalCtx)
{
    s16 phi_a3;

    if (func_8002E084(&this->actor, 0x4000) != 0)
    {
        phi_a3 = this->actor.shape.rot.y;
    }
    else
    {
        phi_a3 = (s16)(this->actor.shape.rot.y + 0x8000);
    }
    func_8002F71C(globalCtx, this, 5.0f, phi_a3, 1.0f);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Firewall/func_808868FC.s")
// void func_808868FC(BgHidanFirewall* this, GlobalContext* globalCtx)
// {
//     Vec3f* temp = &globalCtx->actorCtx.actorList[2].first->posRot.pos;
//     Vec3f sp30;
//     f32 temp_ret;
//     f32 sp28;
//     f32 phi_f0;

//     func_8002DBD0(&this->actor, &sp30, temp); 
//     if (sp30.x < -70.0f)
//     {
//         sp30.x = -70.0f;
//     }
//     else
//     {
//         if (70.0f < sp30.x)
//         {
//             phi_f0 = 70.0f;
//         }
//         else
//         {
//             phi_f0 = sp30.x;
//         }
//         sp30.x = phi_f0;
//     }
//     if (this->actor.params == 0)
//     {
//         if (0.0f < sp30.z)
//         {
//             sp30.z = -25.0f;
//             this->actor.params = -1;
//         }
//         else
//         {
//             sp30.z = 25.0f;
//             this->actor.params = 1;
//         }
//     }
//     else
//     {
//         sp30.z = this->actor.params * 25.0f;
//     }
//     sp28 = Math_Sins(this->actor.shape.rot.y); 
//     temp_ret = Math_Coss(this->actor.shape.rot.y);
//     this->pos_19A.x = ((this->actor.posRot.pos.x + (sp30.x * temp_ret)) + (sp30.z * sp28));
//     this->pos_19A.z = ((this->actor.posRot.pos.z - (sp30.x * sp28)) + (sp30.z * temp_ret));
// }


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Firewall/BgHidanFirewall_Update.s")
// void BgHidanFirewall_Update(BgHidanFirewall* this, GlobalContext* globalCtx)
// {
//     s32 phi_t8;
//     u8 t;

//     phi_t8 = (((this->ukn_150)) + 1) & 7;
//     t = this->ukn_164;

//     if ((this->ukn_150) + 1 < 0 && phi_t8)
//     {
//         phi_t8 -= 8;
//     }
//     this->ukn_150 = phi_t8;

//     if ((this->ukn_164 & 2) != 0)
//     {
//         this->ukn_164 &= 0xfffd;
//         func_80886898(this, globalCtx);
//     }
//     this->actionFunc(this, globalCtx);
//     if (&func_80886810 == this->actionFunc)
//     {
//         func_808868FC(this, globalCtx);
//         Actor_CollisionCheck_SetAT(globalCtx, &globalCtx->sub_11E60, &this->collider);
//         Actor_CollisionCheck_SetOT(globalCtx, &globalCtx->sub_11E60, &this->collider);
//         func_8002F974(&this->actor, 0x2034);
//     }
// }

// BgHidanFirewall_Draw
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Firewall/func_80886B34.s")
// void func_80886B34(BgHidanFirewall* this, GlobalContext* globalCtx)
// {
//     Gfx** sp38;
//     s32 sp28;
//     Gfx* temp_ret;
//     Gfx* temp_v0;
//     s32 temp_v0_2;
//     s32 temp_v0_3;
//     s32 temp_v0_4;
//     s32 temp_v0_5;
//     char* temp_a0;

//     func_800C6AC4(&sp38, globalCtx->gfxCtx, D_80886D30, 0x1c0);
//     temp_ret = func_80093774(globalCtx->gfxCtx->polyXlu.p, 0x14);
//     temp_v0 = temp_ret;
//     globalCtx->gfxCtx->polyXlu.p = temp_ret;
//     globalCtx->gfxCtx->polyXlu.p = (s32) (temp_v0 + 8);
//     temp_v0->unk0 = 0xdb060020;
//     temp_a0 = D_80886D04 + (this->ukn_150 * 4);
//     temp_v0->unk4 = (s32) (((*temp_a0 & 0xffffff) + ((char*)0x80160000 + (((*temp_a0 * 0x10) >> 0x1c) * 4))->unk6FA8) + 0x80000000);
//     temp_v0_2 = globalCtx->gfxCtx->polyXlu.p;
//     globalCtx->gfxCtx->polyXlu.p = (s32) (temp_v0_2 + 8);
//     temp_v0_2->unk0 = 0xfa000001;
//     temp_v0_2->unk4 = 0xffff0096;
//     temp_v0_3 = globalCtx->gfxCtx->polyXlu.p;
//     globalCtx->gfxCtx->polyXlu.p = (s32) (temp_v0_3 + 8);
//     temp_v0_3->unk0 = 0xfb000000;
//     temp_v0_3->unk4 = 0xff0000ff;
//     temp_v0_4 = globalCtx->gfxCtx->polyXlu.p;
//     globalCtx->gfxCtx->polyXlu.p = (s32) (temp_v0_4 + 8);
//     temp_v0_4->unk0 = 0xda380003;
//     sp28 = temp_v0_4;
//     sp28->unk4 = func_800D1A88(*arg1, &D_80886D4C, 0x1ca);
//     temp_v0_5 = globalCtx->gfxCtx->polyXlu.p;
//     globalCtx->gfxCtx->polyXlu.p = (s32) (temp_v0_5 + 8);
//     temp_v0_5->unk4 = (s32) (0x6010000 + 0xda80);
//     temp_v0_5->unk0 = 0xde000000;
//     func_800C6B54(&sp38, *arg1, &D_80886D68, 0x1cf);
// }
