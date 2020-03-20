#include "z_demo_geff.h"

#include <vt.h>

#define ROOM  0x00
#define FLAGS 0x00000030

void DemoGeff_Init(DemoGeff* this, GlobalContext* globalCtx);
void DemoGeff_Destroy(DemoGeff* this, GlobalContext* globalCtx);
void DemoGeff_Update(DemoGeff* this, GlobalContext* globalCtx);
void DemoGeff_Draw(DemoGeff* this, GlobalContext* globalCtx);

void func_809783D4(DemoGeff* this, GlobalContext* globalCtx);
void func_80978308(DemoGeff* this, GlobalContext* globalCtx);

void func_809784D4(DemoGeff* this, GlobalContext* globalCtx);
void func_80978344(DemoGeff* this, GlobalContext* globalCtx);

void func_80978030(DemoGeff* this, GlobalContext* globalCtx);

s16 D_80978570[] = { 0x0186, 0x0186, 0x0186, 0x0186, 0x0186, 0x0186, 0x0186, 0x0186, 0x0186, 0x0000, };

ActorFunc D_80978584[] = { func_80978030, func_80978030, func_80978030, func_80978030, func_80978030, func_80978030,
                           func_80978030, func_80978030, func_80978030, };
ActorFunc D_809785A8[] = { func_809783D4, func_80978308, };
ActorFunc D_809785B0[] = { func_809784D4, func_80978344, };

const ActorInit Demo_Geff_InitVars =
{
    ACTOR_DEMO_GEFF,
    ACTORTYPE_BOSS,
    ROOM,
    FLAGS,
    OBJECT_GEFF,
    sizeof(DemoGeff),
    (ActorFunc)DemoGeff_Init,
    (ActorFunc)DemoGeff_Destroy,
    (ActorFunc)DemoGeff_Update,
    (ActorFunc)DemoGeff_Draw,
};

extern u32 D_06000EA0;

void DemoGeff_Destroy(DemoGeff* this, GlobalContext* globalCtx) {

}

void DemoGeff_Init(DemoGeff* this, GlobalContext* globalCtx) {
    if (this->actor.params < 0 || this->actor.params >= 9) {
        osSyncPrintf(VT_FGCOL(RED) "Demo_Geff_Actor_ct:arg_dataがおかしい!!!!!!!!!!!!\n" VT_RST);
        Actor_Kill(&this->actor);
        return;
    }
    this->action = 0;
    this->unk_150 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/func_80977EA8.s")
/*void func_80977EA8(GlobalContext* globalCtx, u32 dlist) {
    GraphicsContext* gfxCtx = &globalCtx->state.gfxCtx;
    Gfx* gfxArr[4];

    func_800C6AC4(gfxArr, globalCtx->state.gfxCtx, "../z_demo_geff.c", 181);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_demo_geff.c", 183),
              G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, dlist);
    gSPPopMatrix(gfxCtx->polyOpa.p++, G_MTX_MODELVIEW);

    func_800C6B54(gfxArr, globalCtx->state.gfxCtx, "../z_demo_geff.c", 188);
}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/func_80977F80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/func_80978030.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/func_809781FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/func_809782A0.s")
/*void func_809782A0(DemoGeff* this, GlobalContext* globalCtx) {
    s16 params;
    if (this->unk_158 != 0) {
        params = this->actor.params;
        if ((params != 6) && (params != 7) && (params != 8)) {
            this->actor.posRot.pos.x = this->unk_158->posRot.pos.x + this->unk_15C;
            this->actor.posRot.pos.y = this->unk_158->posRot.pos.y + this->unk_160;
            this->actor.posRot.pos.z = this->unk_158->posRot.pos.z + this->unk_164;
        }
    } 
}*/

void func_80978308(DemoGeff* this, GlobalContext* globalCtx) {
    func_809781FC(this, globalCtx);
    func_809782A0(this, globalCtx);
    func_80978030(this, globalCtx);
}

void func_80978344(DemoGeff* this, GlobalContext* globalCtx) {
    func_80977EA8(globalCtx, &D_06000EA0);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/func_80978370.s")
/*
void func_80978370(DemoGeff* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;
    s32 params = thisx->params;
    ActorFunc actorFunc = D_80978584[params];
    if (actorFunc == NULL) {
        osSyncPrintf(VT_FGCOL(RED) " Demo_Geff_main_init:初期化処理がおかしいarg_data = %d!\n" VT_RST, params);
        Actor_Kill(thisx);
        return;
    }
    actorFunc(this, globalCtx);
}*/

void func_809783D4(DemoGeff* this, GlobalContext* globalCtx) {
    ObjectContext* objCtx = &globalCtx->objectCtx;
    Actor* thisx = &this->actor;
    s32 params = thisx->params;
    s16 objectId = D_80978570[params];
    s32 objBankIndex = Object_GetIndex(objCtx, objectId);
    s32 pad;

    if (objBankIndex < 0) {
        osSyncPrintf(VT_FGCOL(RED) "Demo_Geff_main_bank:バンクを読めない arg_data = %d!\n" VT_RST, params);
        Actor_Kill(thisx);
        return;
    }
    if (Object_IsLoaded(objCtx, objBankIndex)) {
        this->unk_154 = objBankIndex;
        func_80978370(this, globalCtx);
    }
}

void DemoGeff_Update(DemoGeff* this, GlobalContext* globalCtx) {
    if (this->action < 0 || this->action >= 2 || D_809785A8[this->action] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    D_809785A8[this->action](this, globalCtx);
}

void func_809784D4(DemoGeff* this, GlobalContext* globalCtx) {

}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/DemoGeff_Draw.s")
