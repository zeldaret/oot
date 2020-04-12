/*
 * File: z_bg_haka_megane.c
 * Overlay: ovl_Bg_Haka_Megane
 * Description: Shadow Temple Fake Walls
 */

#include "z_bg_haka_megane.h"

#define FLAGS 0x000000B0

void BgHakaMegane_Init(BgHakaMegane* this, GlobalContext* globalCtx);
void BgHakaMegane_Destroy(BgHakaMegane* this, GlobalContext* globalCtx);
void BgHakaMegane_Update(BgHakaMegane* this, GlobalContext* globalCtx);

void func_8087DB24(BgHakaMegane* this, GlobalContext* globalCtx);
void func_8087DBF0(BgHakaMegane* this, GlobalContext* globalCtx);
void func_8087DC64(BgHakaMegane* this, GlobalContext* globalCtx);
void func_8087DC94(BgHakaMegane* this, GlobalContext* globalCtx);

const ActorInit Bg_Haka_Megane_InitVars = {
    ACTOR_BG_HAKA_MEGANE,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgHakaMegane),
    (ActorFunc)BgHakaMegane_Init,
    (ActorFunc)BgHakaMegane_Destroy,
    (ActorFunc)BgHakaMegane_Update,
    NULL,
};

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

static UNK_TYPE collisions[] = {
    0x06001830, 0x06001AB8, 0x00000000, 0x06004330, 0x060044D0, 0x00000000, 0x06004780,
    0x06004940, 0x00000000, 0x06004B00, 0x00000000, 0x06004CC0, 0x00000000,
};

static UNK_TYPE dlists[] = {
    0x06001060, 0x06001920, 0x060003F0, 0x060040F0, 0x060043B0, 0x06001120, 0x060045A0,
    0x060047F0, 0x060018F0, 0x060049B0, 0x06003CF0, 0x06004B70, 0x06002ED0,
};

extern UNK_TYPE D_06001250;

void BgHakaMegane_Init(BgHakaMegane* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    Actor_ProcessInitChain(thisx, initChain);
    DynaPolyInfo_SetActorMove(thisx, 0);

    if (thisx->params < 3) {
        this->objBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_HAKACH_OBJECTS);
    } else {
        this->objBankIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_HAKA_OBJECTS);
    }

    if (this->objBankIndex < 0) {
        Actor_Kill(thisx);
    } else {
        this->actionFunc = (ActorFunc)func_8087DB24;
    }
}

void BgHakaMegane_Destroy(BgHakaMegane* this, GlobalContext* globalCtx) {
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_8087DB24(BgHakaMegane* this, GlobalContext* globalCtx) {
    s32 localC;
    UNK_TYPE collision;

    if (Object_IsLoaded(&globalCtx->objectCtx, this->objBankIndex)) {
        this->dyna.actor.objBankIndex = this->objBankIndex;
        this->dyna.actor.draw = (ActorFunc)func_8087DC94;
        Actor_SetObjectDependency(globalCtx, &this->dyna.actor);
        if (globalCtx->roomCtx.curRoom.showInvisActors) {
            this->actionFunc = (ActorFunc)func_8087DBF0;
            collision = collisions[this->dyna.actor.params];
            if (collision != 0) {
                DynaPolyInfo_Alloc(collision, &localC);
                this->dyna.dynaPolyId =
                    DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, localC);
            }
        } else {
            this->actionFunc = (ActorFunc)func_8087DC64;
        }
    }
}

void func_8087DBF0(BgHakaMegane* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;
    if (globalCtx->actorCtx.unk_03 != 0) {
        thisx->flags |= 0x80;
        func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    } else {
        thisx->flags &= ~0x80;
        func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    }
}

void func_8087DC64(BgHakaMegane* this, GlobalContext* globalCtx) {
}

void BgHakaMegane_Update(BgHakaMegane* this, GlobalContext* globalCtx) {
    this->actionFunc(this, globalCtx);
}

void func_8087DC94(BgHakaMegane* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    if ((thisx->flags & 0x80) == 0x80) {
        Gfx_DrawDListXlu(globalCtx, dlists[thisx->params]);
    } else {
        Gfx_DrawDListOpa(globalCtx, dlists[thisx->params]);
    }

    if (thisx->params == 0) {
        Gfx_DrawDListXlu(globalCtx, &D_06001250);
    }
}
