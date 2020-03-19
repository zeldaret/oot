#include "z_en_ani.h"

#define ROOM  0x00
#define FLAGS 0x00000009


/*
const ActorInit En_Ani_InitVars =
{
    ACTOR_EN_ANI,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_ANI,
    sizeof(EnAni),
    (ActorFunc)EnAni_Init,
    (ActorFunc)EnAni_Destroy,
    (ActorFunc)EnAni_Update,
    (ActorFunc)EnAni_Draw,
};
*/

//EnAni_SetupAction
void func_809B0370(EnAni* this, ActorFunc actionFunc)
{
    this->actionFunc = actionFunc;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/EnAni_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/EnAni_Destroy.s")

s32 func_809B04B4(EnAni* this, GlobalContext* globalCtx, u16 arg2)
{
    this->actor.textId = arg2;
    this->unk_2A8 = (this->unk_2A8 | 1);
    func_8002F2CC(&this->actor, globalCtx, 100.0f);
    return 0;
}

void func_809B04F0(EnAni* this, GlobalContext* globalCtx)
{
    if (func_8002F334(&this->actor, globalCtx) != 0)
    {
        func_809B0370(this, func_809B064C);
    }
}

void func_809B0524(EnAni* this, GlobalContext* globalCtx)
{
    if (func_8002F334(&this->actor, globalCtx) != 0)
    {
        func_809B0370(this, func_809B07F8);
    }
}

void func_809B0558(EnAni* this, GlobalContext* globalCtx)
{
    if (func_8002F410(&this->actor, globalCtx) != 0)
    {
        this->actor.attachedA = 0;
        if (LINK_IS_CHILD)
        {
            func_809B0370(this, func_809B04F0);
        }
        else
        {
            func_809B0370(this, func_809B0524);
        }
        gSaveContext.item_get_inf[1] = gSaveContext.item_get_inf[1] | 0x20;
        return;
    }
    func_8002F434(&this->actor, globalCtx, GI_HEART_PIECE, 10000.0f, 200.0f);
}

void func_809B05F0(EnAni* this, GlobalContext* globalCtx)
{
    if (func_8002F334(this, globalCtx) != 0)
    {
        func_809B0370(this, func_809B0558);
    }
    func_8002F434(this, globalCtx, GI_HEART_PIECE, 10000.0f, 200.0f);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B064C.s")
// void func_809B064C(EnAni* this, GlobalContext* globalCtx)
// {
//     u16 phi_a2;
//     s16 temp_v1;
//     s32 temp_ret;

//     temp_ret = func_8006C360(globalCtx, 0xA);
//     phi_a2 = temp_ret & 0xffff;

//     if (temp_ret == 0)
//     {
//         phi_a2 = 0x5050U;
//         if (gSaveContext.night_flag != 0)
//         {
//             phi_a2 = 0x5051U;
//         }
//     }

//     temp_v1 = (this->actor.rotTowardsLinkY - this->actor.shape.rot.y);
//     if (func_8002F194(&this->actor, globalCtx) != 0)
//     {
//         if (this->actor.textId == 0x5056) // "To get a good view..."
//         {
//             func_809B0370(this, func_809B04F0);
//             return;
//         }
//         if (this->actor.textId == 0x5055) // "...I'll give you this as a memento."
//         {

//             func_809B0370(this, func_809B05F0);
//             return;
//         }
//         func_809B0370(this, func_809B04F0);
//         return;
//     }
//     if (temp_v1 >= -0x36AF)
//     {
//         if (temp_v1 < 0)
//         {
//             if (this->actor.xzDistanceFromLink < 150.0f)
//             {
//                 if (-80.0f < this->actor.yDistanceFromLink)
//                 {
//                     if ((gSaveContext.item_get_inf[1] & 0x20) == 0)
//                     {
//                         func_809B04B4(this, globalCtx, 0x5056); // "To get a good view..."
//                         return;
//                     }
//                     func_809B04B4(this, globalCtx, 0x5055); // "...I'll give you this as a memento."
//                     return;
//                 }
//             }
//         }
//     }
//     if (temp_v1 >= -0x3e7)
//     {
//         if (temp_v1 < 0x36b0)
//         {
//             if (this->actor.xzDistanceFromLink < 350.0f)
//             {
//                 func_809B04B4(this, globalCtx, phi_a2);
//             }
//         }
//     }
// } THIS IS SUPER CLOSE

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B07F8.s")

void func_809B0988(EnAni* this, GlobalContext* globalCtx) { }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B0994.s")
// void func_809B0994(EnAni* this, GlobalContext* globalCtx)
// {
//     if (globalCtx->csCtx.actorActions[0]->action == 4)
//     {
//         SkelAnime_ChangeAnimation(&this->skelAnime, 0x60070F0, 1.0f, 0.0f, (f32) SkelAnime_GetFrameCount(0x60070F0), 2, -4.0f);
//         this->actor.shape.shadowDrawFunc = 0x8003B5EC;
//         this->unk_2AA += 1;
//     }
// }

void func_809B0A28(EnAni* this, GlobalContext* globalCtx)
{   
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0)
    {
        this->unk_2AA += 1;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B0A6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/EnAni_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B0D90.s")
// ? func_809B0D90(s32 arg0, s32 arg1, ? arg2, ? arg3, void *arg4, void *arg5)
// {
//     if (arg1 == 0xf)
//     {
//         arg4->unk0 = (s16) (arg4->unk0 + arg5->unk29E);
//         arg4->unk4 = (s16) (arg4->unk4 + arg5->unk29C);
//     }
//     return 0;
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/func_809B0DD4.s")
// void func_809B0DD4(s32 arg0, Actor* arg1, ? arg2, ? arg3)
// {
//     if (arg1 == 0xf)
//     {
//         Matrix_MultVec3f(&D_809B0F74, &arg1->posRot2.pos);
//     }
// }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ani/EnAni_Draw.s")
