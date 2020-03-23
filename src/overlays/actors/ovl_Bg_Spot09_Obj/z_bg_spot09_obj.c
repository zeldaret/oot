#include "z_bg_spot09_obj.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void BgSpot09Obj_Init(BgSpot09Obj* this, GlobalContext* globalCtx);
void BgSpot09Obj_Destroy(BgSpot09Obj* this, GlobalContext* globalCtx);
void BgSpot09Obj_Update(BgSpot09Obj* this, GlobalContext* globalCtx);
void BgSpot09Obj_Draw(BgSpot09Obj* this, GlobalContext* globalCtx);

s32 func_808B1AE0(BgSpot09Obj* this, GlobalContext* globalCtx);
s32 func_808B1BA0(BgSpot09Obj* this, GlobalContext* globalCtx);
s32 func_808B1BEC(BgSpot09Obj* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot09_Obj_InitVars =
{
    ACTOR_BG_SPOT09_OBJ,
    ACTORTYPE_BG,
    ROOM,
    FLAGS,
    OBJECT_SPOT09_OBJ,
    sizeof(BgSpot09Obj),
    (ActorFunc)BgSpot09Obj_Init,
    (ActorFunc)BgSpot09Obj_Destroy,
    (ActorFunc)BgSpot09Obj_Update,
    (ActorFunc)BgSpot09Obj_Draw,
};

u32 D_808B1F90[] = {
    0x00000000, 0x06005520, 0x0600283C, 0x06008458, 0x06007580
};

typedef s32 (*ActorFuncRet)(struct Actor*, struct GlobalContext*);
ActorFuncRet D_808B1FA4[] = {
    (ActorFuncRet)func_808B1BEC, (ActorFuncRet)func_808B1AE0, (ActorFuncRet)func_808B1BA0,
};

InitChainEntry initChain1[] = {
    ICHAIN_F32(unk_F4, 7200, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F8, 3000, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 7200, ICHAIN_STOP),
};

InitChainEntry initChain2[] = {
    ICHAIN_F32(unk_F4, 7200, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_F8, 800, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_FC, 1500, ICHAIN_STOP),
};

u32 dists[] = {
    0x06000100, 0x06003970, 0x06001120, 0x06007D40, 0x06006210,
};

extern UNK_TYPE D_06008010;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot09_Obj/func_808B1AE0.s")
/*void func_808B1AE0(BgSpot09Obj* this, GlobalContext* globalCtx) {
    u16 temp_v1;
    s32 phi_v0;

    if (gSaveContext->unk1360 >= 4) {
        return (u32) arg0->unk1C < 1U;
    }
    temp_v1 = (u32) ((gSaveContext->unkEE6 & 0xF) ^ 0xF) < 1U;
    if (gSaveContext->unk4 != 0) {
        phi_v0 = 5;
    } else {
        phi_v0 = 0x11;
    }
    if (phi_v0 == 0x11) {
        if (arg0->unk1C == 0) {
            return (u16)0;
        }
        if (arg0->unk1C == 1) {
            return temp_v1 < 1U;
        }
        if (arg0->unk1C == 3) {
            return (u16)1;
        }
        if (arg0->unk1C == 4) {
            return temp_v1;
        }
        return (u16)0;
    }
    return (u32) (arg0->unk1C ^ 2) < 1U;
}*/

s32 func_808B1BA0(BgSpot09Obj *this, GlobalContext *globalCtx) {
    Actor* thisx = &this->dyna.actor;
    if (thisx->params == 3) {
        Actor_SetScale(thisx, 0.1f);
    } else {
        Actor_SetScale(thisx, 1.0f);
    }
    return 1;
}

s32 func_808B1BEC(BgSpot09Obj *this, GlobalContext *globalCtx) {
    Actor* thisx = &this->dyna.actor;
    s32 localC = 0;
    s32 pad[2];

    if (D_808B1F90[thisx->params] != 0) {
        DynaPolyInfo_SetActorMove(thisx, 0);
        DynaPolyInfo_Alloc(D_808B1F90[thisx->params], &localC);
        this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, localC);
    }
    return 1;
}

s32 func_808B1C70(BgSpot09Obj *this, GlobalContext *globalCtx) {
    s32 i;
    for (i = 0; i < ARRAY_COUNT(D_808B1FA4); i++) {
        if (!D_808B1FA4[i](this, globalCtx)) {
            return 0;
        }
    }
    return 1;
}

s32 func_808B1CEC(BgSpot09Obj* this, GlobalContext* globalCtx) {
    Actor_ProcessInitChain(&this->dyna.actor, &initChain1);
    return 1;
}

s32 func_808B1D18(BgSpot09Obj* this, GlobalContext* globalCtx) {
    Actor_ProcessInitChain(&this->dyna.actor, &initChain2);
    return 1;
}

s32 func_808B1D44(BgSpot09Obj* this, GlobalContext* globalCtx) {
    if (this->dyna.actor.params == 3) {
        return func_808B1D18(this, globalCtx);
    } else {
        return func_808B1CEC(this, globalCtx);
    }
}

void BgSpot09Obj_Init(BgSpot09Obj* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    osSyncPrintf("Spot09 Object [arg_data : 0x%04x](大工救出フラグ 0x%x)\n", thisx->params,
                 gSaveContext.event_chk_inf[9] & 0xF);
    thisx->params &= 0xFF;
    if ((thisx->params < 0) || (thisx->params >= 5)) {
        osSyncPrintf("Error : Spot 09 object の arg_data が判別出来ない(%s %d)(arg_data 0x%04x)\n",
                     "../z_bg_spot09_obj.c", 322, thisx->params);
    }

    if (!func_808B1C70(this, globalCtx)) {
        Actor_Kill(thisx);
    } else if (!func_808B1D44(this, globalCtx)) {
        Actor_Kill(thisx);
    }
}

void BgSpot09Obj_Destroy(BgSpot09Obj* this, GlobalContext* globalCtx) {
    DynaCollisionContext* dynaColCtx = &globalCtx->colCtx.dyna;
    Actor* thisx = &this->dyna.actor;

    if (thisx->params != 0) {
        DynaPolyInfo_Free(globalCtx, dynaColCtx, this->dyna.dynaPolyId);
    }
}

void BgSpot09Obj_Update(BgSpot09Obj* this, GlobalContext* globalCtx) {

}

void BgSpot09Obj_Draw(BgSpot09Obj* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* gfxArr[3];
    Actor* thisx = &this->dyna.actor;

    Draw_DListOpa(globalCtx, dists[thisx->params]);
    if (thisx->params == 3) {
        func_800C6AC4(gfxArr, globalCtx->state.gfxCtx, "../z_bg_spot09_obj.c", 388);
        func_80093D84(globalCtx->state.gfxCtx);

        gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot09_obj.c", 391),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyXlu.p++, &D_06008010);

        func_800C6B54(gfxArr, globalCtx->state.gfxCtx, "../z_bg_spot09_obj.c", 396);
    }
}
