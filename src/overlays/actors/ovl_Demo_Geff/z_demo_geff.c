#include "z_demo_geff.h"

#include <vt.h>

#define ROOM  0x00
#define FLAGS 0x00000030

void DemoGeff_Init(DemoGeff* this, GlobalContext* globalCtx);
void DemoGeff_Destroy(DemoGeff* this, GlobalContext* globalCtx);
void DemoGeff_Update(DemoGeff* this, GlobalContext* globalCtx);
void DemoGeff_Draw(DemoGeff* this, GlobalContext* globalCtx);

void func_80978030(DemoGeff* this, GlobalContext* globalCtx);

void func_809783D4(DemoGeff* this, GlobalContext* globalCtx);
void func_80978308(DemoGeff* this, GlobalContext* globalCtx);

void func_809784D4(DemoGeff* this, GlobalContext* globalCtx);
void func_80978344(DemoGeff* this, GlobalContext* globalCtx);

s16 objectIds[] = { OBJECT_GEFF, OBJECT_GEFF, OBJECT_GEFF, OBJECT_GEFF, OBJECT_GEFF, OBJECT_GEFF, OBJECT_GEFF,
                    OBJECT_GEFF, OBJECT_GEFF, OBJECT_UNSET_0, };

ActorFunc D_80978584[] = { func_80978030, func_80978030, func_80978030, func_80978030, func_80978030, func_80978030,
                           func_80978030, func_80978030, func_80978030, };
ActorFunc actionFuncs[] = { func_809783D4, func_80978308, };
ActorFunc drawFuncs[] = { func_809784D4, func_80978344, };

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

extern UNK_TYPE D_06000EA0;

void DemoGeff_Destroy(DemoGeff* this, GlobalContext* globalCtx) {

}

void DemoGeff_Init(DemoGeff* this, GlobalContext* globalCtx) {
    if (this->actor.params < 0 || this->actor.params >= 9) {
        osSyncPrintf(VT_FGCOL(RED) "Demo_Geff_Actor_ct:arg_dataがおかしい!!!!!!!!!!!!\n" VT_RST);
        Actor_Kill(&this->actor);
        return;
    }
    this->action = 0;
    this->drawConfig = 0;
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
/*void func_80977F80(DemoGeff* this, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* gfxArr[4];

    func_800C6AC4(gfxArr, globalCtx->state.gfxCtx, "../z_demo_geff.c", 204);

    temp_a0 = (arg1 + (this->unk_154 * 0x44)) + 0x10000;

    gSPSegment(gfxCtx->polyOpa.p++, 0x06, temp_a0->unk17B4),

    *(void *)0x80166FC0 = (s32) (temp_a0->unk17B4 + 0x80000000);

    func_800C6B54(gfxArr, &globalCtx->state.gfxCtx, "../z_demo_geff.c", 212);
}*/

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Geff/func_80978030.s")
/*void func_80978030(DemoGeff* this, GlobalContext* globalCtx) {
    Vec3f* thisScale = &this->actor.scale;
    this->action = 1;
    this->drawConfig = 1;

    switch ((u16)this->actor.params) {
        default:
            thisScale->x = ((f32) kREG(7) * 0.01f) + 0.3f;
            thisScale->y = ((f32) kREG(8) * 0.01f) + 0.3f;
            thisScale->z = ((f32) kREG(9) * 0.01f) + 0.3f;
            break;
        case 8:
            break;
        case 1:
        case 4:
        case 7:
            thisScale->x = ((f32) kREG(10) * 0.01f) + 0.15f;
            thisScale->y = ((f32) kREG(11) * 0.01f) + 0.29f;
            thisScale->z = ((f32) kREG(12) * 0.01f) + 0.12f;
            break;
        case 2:
        case 5:
            thisScale->x = ((f32) kREG(13) * 0.01f) + 0.1f;
            thisScale->y = ((f32) kREG(14) * 0.01f) + 0.15f;
            thisScale->z = ((f32) kREG(15) * 0.01f) + 0.2f;
            break;
    }
}*/

void func_809781FC(DemoGeff* this, GlobalContext* globalCtx) {
    s32 targetParams = 2;
    Actor* demoGt;

    if (this->unk_158 == 0) {
        demoGt = globalCtx->actorCtx.actorList[ACTORTYPE_PROP].first;
        if ((this->actor.params != 0) && (this->actor.params != 1) && (this->actor.params != 2)) {
            targetParams = 2;
        } else {
            targetParams = 1;
        }
        while (demoGt != 0) {
            if (demoGt->id == ACTOR_DEMO_GT && demoGt->params == targetParams) {
                this->unk_15C = (this->actor.posRot.pos.x - demoGt->posRot.pos.x);
                this->unk_160 = (this->actor.posRot.pos.y - demoGt->posRot.pos.y);
                this->unk_164 = (this->actor.posRot.pos.z - demoGt->posRot.pos.z);
                this->unk_158 = demoGt;
            }
            demoGt = demoGt->next;
        }
    }
}

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
/*void func_80978370(DemoGeff* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;
    ActorFunc actorFunc = D_80978584[thisx->params];
    if (actorFunc == NULL) {
        osSyncPrintf(VT_FGCOL(RED) " Demo_Geff_main_init:初期化処理がおかしいarg_data = %d!\n" VT_RST, thisx->params);
        Actor_Kill(thisx);
        return;
    }
    actorFunc(this, globalCtx);
}*/

void func_809783D4(DemoGeff* this, GlobalContext* globalCtx) {
    ObjectContext* objCtx = &globalCtx->objectCtx;
    Actor* thisx = &this->actor;
    s32 params = thisx->params;
    s16 objectId = objectIds[params];
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
    if (this->action < 0 || this->action >= 2 || actionFuncs[this->action] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    actionFuncs[this->action](this, globalCtx);
}

void func_809784D4(DemoGeff* this, GlobalContext* globalCtx) {

}

void DemoGeff_Draw(DemoGeff* this, GlobalContext* globalCtx) {
    s32 drawConfig = this->drawConfig;
    s16 pad;
    if (drawConfig < 0 || drawConfig >= 2 || drawFuncs[drawConfig] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    if (drawConfig != 0) {
        func_80977F80(this, globalCtx);
    }
    drawFuncs[drawConfig](this, globalCtx);
}
