/*
 * File: z_bg_hidan_hrock.c
 * Overlay: ovl_Bg_Hidan_Hrock
 * Description: Huge stone spike platform (Fire Temple)
 */

#include "z_bg_hidan_hrock.h"

#define FLAGS 0x00000000

#define THIS ((BgHidanHrock*)thisx)

void BgHidanHrock_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanHrock_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanHrock_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanHrock_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8088960C(BgHidanHrock* this, GlobalContext* globalCtx);

extern UNK_TYPE D_0600D054;

const ActorInit Bg_Hidan_Hrock_InitVars = {
    ACTOR_BG_HIDAN_HROCK,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanHrock),
    (ActorFunc)BgHidanHrock_Init,
    (ActorFunc)BgHidanHrock_Destroy,
    (ActorFunc)BgHidanHrock_Update,
    (ActorFunc)BgHidanHrock_Draw,
};

s32 D_80889820[] = {
    0x00000000, 0x00000000, 0x00000000, 0x40000040, 0x00000000, 0x00790000, 0xC2200000, 0x40400000,
    0xC2200000, 0xC2200000, 0x40400000, 0x42200000, 0x42200000, 0x40400000, 0x42200000, 0x00000000,
    0x00000000, 0x00000000, 0x40000040, 0x00000000, 0x00790000, 0x42200000, 0x40400000, 0x42200000,
    0x42200000, 0x40400000, 0xC2200000, 0xC2200000, 0x40400000, 0xC2200000,
};
s32 D_80889898[] = {
    0x0A000900,
    0x20020000,
    0x00000002,
};
s32 D_808898A4[] = {
    D_80889820,
};
s32 D_808898A8[] = {
    0xC8500064,
    0x306CFFFF,
};

/*
static ColliderTrisItemInit sTrisItemsInit[2] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x40000040, 0x00, 0x00 }, 0x00, 0x79, 0x00 },
        { { { -40.0f, 3.0f, -40.0f }, { -40.0f, 3.0f, 40.0f }, { 40.0f, 3.0f, 40.0f } } },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x40000040, 0x00, 0x00 }, 0x00, 0x79, 0x00 },
        { { { 40.0f, 3.0f, 40.0f }, { 40.0f, 3.0f, -40.0f }, { -40.0f, 3.0f, -40.0f } } },
    },
};

static ColliderTrisInit sTrisInit =
{
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x20, COLSHAPE_TRIS },
    2, &sTrisItemsInit,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(velocity, -1, ICHAIN_STOP),
};
*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Hrock/BgHidanHrock_Init.s")
// void BgHidanHrock_Init(Actor *thisx, GlobalContext *globalCtx) {
//     BgHidanHrock* this = THIS;
//     s32 localC;

//     ? spA8;
//     ? sp9C;
//     ? sp90;
//     ? sp84;
//     f32 temp_f14;
//     f32 temp_f14_2;
//     f32 temp_f16;
//     f32 temp_f16_2;
//     s32 temp_s2;
//     void *temp_v0;
//     void *temp_v0_2;
//     void *temp_v0_3;
//     void *temp_v1;
//     void *temp_v1_2;
//     f32 phi_f14;
//     f32 phi_f22;
//     f32 phi_f16;
//     void *phi_v1;
//     void *phi_v0;
//     f32 phi_f20;
//     f32 phi_f14_2;
//     f32 phi_f16_2;
//     void *phi_v1_2;
//     void *phi_v0_2;
//     s32 phi_s2;
//     s32 phi_s3;

//     localC = 0;
//     Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
//     this->unk_16A = (u8) (this->dyna.actor.params & 0x3F);
//     this->dyna.actor.params = ((s32) this->dyna.actor.params >> 8) & 0xFF;
//     Collider_InitTris(globalCtx, &this->collider);
//     Collider_SetTris(globalCtx, &this->collider, &this->dyna.actor, &sTrisInit, this->colliderItems);
//     DynaPolyInfo_SetActorMove(&this->dyna, DPM_UNK);

//     phi_f22 = Math_Sins(this->dyna.actor.shape.rot.y);
//     phi_f20 = Math_Coss(this->dyna.actor.shape.rot.y);

//     if (this->dyna.actor.params == 0) {
//         phi_f22 *= 1.5f;
//         phi_f20 *= 1.5f;
//     }

//     phi_s2 = 0;
//     phi_s3 = 0;
// loop_3:
//     temp_v0 = phi_s3 + *D_808898A4;
//     temp_v1 = &sp84 + 0xC;
//     temp_f16 = temp_v0->unk18 * phi_f20;
//     temp_f14 = temp_v0->unk20;
//     phi_f14 = temp_f14;
//     phi_f16 = temp_f16;
//     phi_v1 = temp_v1;
//     phi_v0 = temp_v0;
//     phi_f14_2 = temp_f14;
//     phi_f16_2 = temp_f16;
//     phi_v1_2 = temp_v1;
//     phi_v0_2 = temp_v0;
//     if (temp_v1 != &spA8) {
// loop_4:
//         temp_v1_2 = phi_v1 + 0xC;
//         temp_v0_2 = phi_v0 + 0xC;
//         temp_v1_2->unk-18 = (f32) ((phi_f14 * phi_f22) + (this->dyna.actor.initPosRot.pos.x + phi_f16));
//         temp_v1_2->unk-14 = (f32) (temp_v0_2->unk10 + this->dyna.actor.initPosRot.pos.y);
//         temp_v1_2->unk-10 = (f32) ((temp_v0_2->unk14 * phi_f20) + (this->dyna.actor.initPosRot.pos.z -
//         (temp_v0_2->unkC * phi_f22))); temp_f14_2 = temp_v0_2->unk20; temp_f16_2 = temp_v0_2->unk18 * phi_f20;
//         phi_f14 = temp_f14_2;
//         phi_f16 = temp_f16_2;
//         phi_v1 = temp_v1_2;
//         phi_v0 = temp_v0_2;
//         phi_f14_2 = temp_f14_2;
//         phi_f16_2 = temp_f16_2;
//         phi_v1_2 = temp_v1_2;
//         phi_v0_2 = temp_v0_2;
//         if (temp_v1_2 != &spA8) {
//             goto loop_4;
//         }
//     }
//     temp_v0_3 = phi_v0_2 + 0xC;
//     phi_v1_2->unk-C = (f32) ((phi_f14_2 * phi_f22) + (this->dyna.actor.initPosRot.pos.x + phi_f16_2));
//     phi_v1_2->unk-8 = (f32) (temp_v0_3->unk10 + this->dyna.actor.initPosRot.pos.y);
//     phi_v1_2->unk-4 = (f32) ((temp_v0_3->unk14 * phi_f20) + (this->dyna.actor.initPosRot.pos.z - (temp_v0_3->unkC *
//     phi_f22))); func_800627A0(&this->collider, phi_s2, (Vec3f *) &sp84, (Vec3f *) &sp90, &sp9C); temp_s2 = phi_s2 +
//     1; phi_s2 = temp_s2; phi_s3 = phi_s3 + 0x3C; if (temp_s2 != 2) {
//         goto loop_3;
//     }

//     if (Flags_GetSwitch(globalCtx, this->unk_16A)) {
//         this->actionFunc = func_808894A4;

//         if (this->dyna.actor.params == 0) {
//             this->dyna.actor.posRot.pos.y -= 2800.0f;
//             this->dyna.actor.uncullZoneForward = 3000.0f;
//         } else if (this->dyna.actor.params == 1) {
//             this->dyna.actor.posRot.pos.y -= 800.0f;
//         } else if (this->dyna.actor.params == 2) {
//             this->dyna.actor.posRot.pos.y -= 240.0f;
//         }
//     } else {
//         if (this->dyna.actor.params == 0) {
//             this->dyna.actor.flags |= 0x30;
//             this->dyna.actor.uncullZoneForward = 3000.0f;
//         }
//         this->actionFunc = func_808896B8;
//     }

//     if (this->dyna.actor.params == 0) {
//         DynaPolyInfo_Alloc(&D_0600D054, &localC);
//     } else {
//         DynaPolyInfo_Alloc(&D_0600D188, &localC);
//     }

//     this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor,
//     localC);
// }

void BgHidanHrock_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanHrock* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    Collider_DestroyTris(globalCtx, &this->collider);
}

void func_808894A4(BgHidanHrock* this, GlobalContext* globalCtx) {
}

void func_808894B0(BgHidanHrock* this, GlobalContext* globalCtx) {
    if (this->unk_168 != 0) {
        this->unk_168--;
    }

    this->dyna.actor.posRot.pos.x =
        (Math_Sins(this->dyna.actor.posRot.rot.y + (this->unk_168 << 0xE)) * 5.0f) + this->dyna.actor.initPosRot.pos.x;
    this->dyna.actor.posRot.pos.z =
        (Math_Coss(this->dyna.actor.posRot.rot.y + (this->unk_168 << 0xE)) * 5.0f) + this->dyna.actor.initPosRot.pos.z;

    if (this->unk_168 % 4) {

    } else {
        func_800AA000(this->dyna.actor.xyzDistFromLinkSq, 180, 10, 100);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_SHAKE);
    }

    if (this->unk_168 == 0) {
        if (this->dyna.actor.params == 0) {
            this->dyna.actor.initPosRot.pos.y -= 2800.0f;
        } else if (this->dyna.actor.params == 1) {
            this->dyna.actor.initPosRot.pos.y -= 800.0f;
        } else {
            this->dyna.actor.initPosRot.pos.y -= 240.0f;
        }

        this->actionFunc = func_8088960C;
        this->dyna.actor.posRot.pos.x = this->dyna.actor.initPosRot.pos.x;
        this->dyna.actor.posRot.pos.z = this->dyna.actor.initPosRot.pos.z;
    }
}

void func_8088960C(BgHidanHrock* this, GlobalContext* globalCtx) {
    this->dyna.actor.velocity.y++;

    if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y, this->dyna.actor.velocity.y)) {
        this->dyna.actor.flags &= ~0x30;
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);

        if (this->dyna.actor.params == 0) {
            if (globalCtx->roomCtx.curRoom.num == 10) {
                this->dyna.actor.room = 10;
            } else {
                Actor_Kill(&this->dyna.actor);
            }
        }

        this->actionFunc = func_808894A4;
    }
}

void func_808896B8(BgHidanHrock* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;
        this->actionFunc = func_808894B0;
        this->dyna.actor.flags |= 0x10;

        if (this->dyna.actor.params == 0) {
            this->dyna.actor.room = -1;
        }

        this->unk_168 = 20;
        Flags_SetSwitch(globalCtx, this->unk_16A);
    } else {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }

    if (func_8004356C(&this->dyna)) {
        Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y - 5.0f, 1.0f);
    } else {
        Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y, 1.0f);
    }
}

void BgHidanHrock_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanHrock* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgHidanHrock_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static Gfx* dlists[] = { 0x0600A240, 0x0600C838, 0x0600C838 };

    Gfx_DrawDListOpa(globalCtx, dlists[thisx->params]);
}
