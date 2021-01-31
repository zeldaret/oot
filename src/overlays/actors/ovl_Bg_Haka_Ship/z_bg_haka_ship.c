/*
 * File: z_bg_haka_ship.c
 * Overlay: ovl_Bg_Haka_Ship
 * Description: Shadow Temple Ship
 */

#include "z_bg_haka_ship.h"

#define FLAGS 0x00000030

#define THIS ((BgHakaShip*)thisx)

void BgHakaShip_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHakaShip_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHakaShip_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHakaShip_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8087F27C(BgHakaShip* this, GlobalContext* globalCtx);
void func_8087F2D8(BgHakaShip* this, GlobalContext* globalCtx);
void func_8087F364(BgHakaShip* this, GlobalContext* globalCtx);
void func_8087F400(BgHakaShip* this, GlobalContext* globalCtx);
void func_8087F5C8(BgHakaShip* this, GlobalContext* globalCtx);
void func_8087F624(BgHakaShip* this, GlobalContext* globalCtx);
void func_8087F6B4(BgHakaShip* this, GlobalContext* globalCtx);

extern UNK_TYPE D_06005A70;
extern UNK_TYPE D_0600D330;
extern CollisionHeader D_0600E408;
extern UNK_TYPE D_0600E910;
extern CollisionHeader D_0600ED7C;

const ActorInit Bg_Haka_Ship_InitVars = {
    ACTOR_BG_HAKA_SHIP,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_HAKA_OBJECTS,
    sizeof(BgHakaShip),
    (ActorFunc)BgHakaShip_Init,
    (ActorFunc)BgHakaShip_Destroy,
    (ActorFunc)BgHakaShip_Update,
    (ActorFunc)BgHakaShip_Draw,
};

// s32 D_8087FAC0 = 0x48500064;
// sInitChain
static InitChainEntry D_8087FAC0[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/BgHakaShip_Init.s")
void BgHakaShip_Init(Actor* thisx, GlobalContext* globalCtx)
{
	BgHakaShip* this = THIS;
	s32 pad;
	CollisionHeader* colHeader;

	colHeader = NULL;
    Actor_ProcessInitChain(&this->dyna.actor, D_8087FAC0);
    DynaPolyActor_Init(&this->dyna, 1);
	this->switchFlag = (thisx->params >> 8) & 0xFF;
	this->dyna.actor.params &= 0xFF;

    if (this->dyna.actor.params == 0)
    {
        CollisionHeader_GetVirtual(&D_0600E408, &colHeader);
        this->counter = 8;
        this->actionFunc = func_8087F2D8;
    }
    else
    {
        CollisionHeader_GetVirtual(&D_0600ED7C, &colHeader);
        this->actionFunc = func_8087F27C;
    }
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);
    this->dyna.actor.world.rot.y = this->dyna.actor.shape.rot.y - 0x4000;
    this->unk_16A = 0;
    if (!this->dyna.actor.params &&
		!Actor_SpawnAsChild(&globalCtx->actorCtx,
							&this->dyna.actor,
							globalCtx,
							0xB0,
							this->dyna.actor.world.pos.x + -10.0f,
							this->dyna.actor.world.pos.y + 82.0f,
							this->dyna.actor.world.pos.z,
							0, 0, 0, 1))
    {
		Actor_Kill(&this->dyna.actor);
	}
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/BgHakaShip_Destroy.s")
void BgHakaShip_Destroy(Actor* thisx, GlobalContext* globalCtx)
{
	BgHakaShip* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
    func_800F89E8(&this->unk_16C);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F27C.s")
void func_8087F27C(BgHakaShip *this, GlobalContext *globalCtx)
{
	BgHakaShip* parent;

	parent = (BgHakaShip*) this->dyna.actor.parent;
	if (parent && parent->dyna.actor.update)
	{
		 this->dyna.actor.world.pos.x = parent->dyna.actor.world.pos.x + -10.0f;
		 this->dyna.actor.world.pos.y = parent->dyna.actor.world.pos.y + 82.0f;
		 this->dyna.actor.world.pos.z = parent->dyna.actor.world.pos.z;
	}
	else
	{
		this->dyna.actor.parent = NULL;
	}
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F2D8.s")
void func_8087F2D8(BgHakaShip *this, GlobalContext *globalCtx)
{
    if (Flags_GetSwitch(globalCtx, this->switchFlag))
    {
        if (this->counter)
        {
            this->counter -= 1;
        }
        if (this->counter == 0)
        {
            this->counter = 130;
            this->actionFunc = func_8087F364;
            osSyncPrintf("シーン 外輪船 ...  アァクション！！\n");
            func_800800F8(globalCtx, 3390, 999, &this->dyna.actor, 0);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F364.s")
void func_8087F364(BgHakaShip *this, GlobalContext *globalCtx)
{
    if (this->counter)
    {
        this->counter -= 1;
    }
    this->unk_16A = sinf(this->counter * (M_PI / 25)) * 6144.0f;
    if (this->counter == 0)
    {
        this->counter = 50;
        this->actionFunc = func_8087F400;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F400.s")
// void func_8087F400(BgHakaShip* this, GlobalContext* globalCtx)
// {
//     BgHakaShip* temp_v0_2;
//
//     if (this->counter)
//     {
// 		this->counter -= 1;
//     }
//     if (this->counter == 0)
//     {
//         this->counter = 0x32;
//     }
//     if (this->counter < 0)
//     {
// 		this->counter += 4294967296.0f; // 2^32?
//     }
//     this->dyna.actor.world.pos.y = (sinf(this->counter * (M_PI / 25)) * 50.0f) + this->dyna.actor.home.pos.y;
//     if (this->dyna.actor.home.pos.x - this->dyna.actor.world.pos.x > 7650.0f)
//     {
//         this->dyna.actor.world.pos.x = this->dyna.actor.home.pos.x - 7650.0f;
//         this->dyna.actor.speedXZ = 0.0f;
//     }
//     if ((temp_f2 > 7600.0f) && !Gameplay_InCsMode(globalCtx))
//     {
//         this->counter = 0x28;
//         this->dyna.actor.speedXZ = 0.0f;
//         func_8010B680(globalCtx, 0x5071, NULL);
//         this->actionFunc = func_8087F5C8;
//     }
//     else
//     {
//         Math_StepToF(&this->dyna.actor.speedXZ, 4.0f, 0.2f);
//     }
//     temp_v0_2 = (BgHakaShip*) this->dyna.actor.child;
//     if (temp_v0_2 && temp_v0_2->dyna.actor.update)
//     {
//         temp_v0_2->dyna.actor.shape.rot.z += 50.384617f * this->dyna.actor.speedXZ;
//     }
//     else
//     {
//         this->dyna.actor.child = NULL;
//     }
//     // if (this->counter < 0)
//     // {
//     //     this->counter += 4294967296.0f;
//     // }
//     this->unk_16A = sinf(this->counter * (M_PI / 25)) * 6144.0f;
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F5C8.s")
void func_8087F5C8(BgHakaShip *this, GlobalContext *globalCtx)
{
    if (this->counter)
    {
        this->counter -= 1;
    }
    if (this->counter == 0)
    {
        this->counter = 40;
        this->actionFunc = func_8087F624;
    }
    Math_ScaledStepToS(&this->unk_16A, 0, 0x80);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F624.s")
// void func_8087F624(BgHakaShip *this, GlobalContext *globalCtx)
// {
// 	s32 temp;
//
//     if (this->counter)
//     {
//         this->counter -= 1;
//     }
// 	temp = this->counter & 3;
//     if ((this->counter < 0) && temp)
// 	{
//             this->counter -= 4;
//     }
//     this->dyna.actor.world.pos.y = (((temp * 4) - temp) - 6) + this->dyna.actor.home.pos.y;
//     if (this->counter == 0)
//     {
//         this->actionFunc = func_8087F6B4;
//         this->dyna.actor.gravity = -1.0f;
//     }
//     func_8002F974(&this->dyna.actor, 0x205C);
// }

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/func_8087F6B4.s")
void func_8087F6B4(BgHakaShip* this, GlobalContext* globalCtx)
{
    BgHakaShip* child;

    if ((this->dyna.actor.home.pos.y - this->dyna.actor.world.pos.y) > 2000.0f)
    {
        Actor_Kill(&this->dyna.actor);
        child = (BgHakaShip*) this->dyna.actor.child;
        if (child && child->dyna.actor.update)
        {
            Actor_Kill(&child->dyna.actor);
            return;
        }
    }
    else
    {
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCKSINK - SFX_FLAG);
        if (((this->dyna.actor.home.pos.y - this->dyna.actor.world.pos.y) > 500.0f) && func_8004356C(&this->dyna))
        {
            Gameplay_TriggerVoidOut(globalCtx);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/BgHakaShip_Update.s")
void BgHakaShip_Update(Actor* thisx, GlobalContext *globalCtx)
{
	BgHakaShip* this = THIS;

    this->actionFunc(this, globalCtx);
    if (this->dyna.actor.params == 0)
    {
        Actor_MoveForward(&this->dyna.actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Ship/BgHakaShip_Draw.s")
void BgHakaShip_Draw(Actor* thisx, GlobalContext* globalCtx)
{
	BgHakaShip* this = THIS;
	f32 angleTemp;

	OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_haka_ship.c", 528);
    func_80093D18(globalCtx->state.gfxCtx);
    if (this->dyna.actor.params == 0)
    {
		gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_haka_ship.c", 534), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
		gSPDisplayList(POLY_OPA_DISP++, &D_0600D330);
		angleTemp = this->unk_16A * (M_PI / 0x8000);
        Matrix_Translate(-3670.0f, 620.0f, 1150.0f, MTXMODE_APPLY);
        Matrix_RotateZ(angleTemp, MTXMODE_APPLY);
		gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_haka_ship.c", 547), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
		gSPDisplayList(POLY_OPA_DISP++, &D_06005A70);
		Matrix_Translate(0.0f, 0.0f, -2300.0f, MTXMODE_APPLY);
        Matrix_RotateZ(-(2.0f * angleTemp), MTXMODE_APPLY);
		gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_haka_ship.c", 556), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
		gSPDisplayList(POLY_OPA_DISP++, &D_06005A70);
    }
    else
    {
		gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_haka_ship.c", 562), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
		gSPDisplayList(POLY_OPA_DISP++, &D_0600E910);
    }
	CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_haka_ship.c", 568);
    if ((this->actionFunc == func_8087F364) || (this->actionFunc == func_8087F400))
    {
		s32 pad;
		Vec3f sp2C;

        sp2C.x = this->dyna.actor.world.pos.x + -367.0f;
        sp2C.y = this->dyna.actor.world.pos.y + 62.0f;
        sp2C.z = this->dyna.actor.world.pos.z;

        SkinMatrix_Vec3fMtxFMultXYZ(&globalCtx->mf_11D60, &sp2C, &this->unk_16C);
        func_80078914(&this->unk_16C, NA_SE_EV_SHIP_BELL - SFX_FLAG);
    }
}
