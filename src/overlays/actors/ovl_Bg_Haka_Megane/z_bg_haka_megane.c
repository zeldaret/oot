#include "z_bg_haka_megane.h"

#define ROOM 0x00
#define FLAGS 0x000000B0

void BgHakaMegane_Init(BgHakaMegane* this, GlobalContext* globalCtx);
void BgHakaMegane_Destroy(BgHakaMegane* this, GlobalContext* globalCtx);
void BgHakaMegane_Update(BgHakaMegane* this, GlobalContext* globalCtx);

void func_8087DB24(BgHakaMegane* this, GlobalContext* globalCtx);
void func_8087DBF0(BgHakaMegane* this, GlobalContext* globalCtx);
void func_8087DC64(BgHakaMegane* this, GlobalContext* globalCtx);
void func_8087DC94(BgHakaMegane* this, GlobalContext* globalCtx);

const ActorInit Bg_Haka_Megane_InitVars =
{
    ACTOR_BG_HAKA_MEGANE,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgHakaMegane),
    (ActorFunc)BgHakaMegane_Init,
    (ActorFunc)BgHakaMegane_Destroy,
    (ActorFunc)BgHakaMegane_Update,
    NULL,
};

InitChainEntry initChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

UNK_TYPE D_8087DD54[] = {
    0x06001830, 0x06001AB8, 0x00000000, 0x06004330, 0x060044D0, 0x00000000, 0x06004780,
    0x06004940, 0x00000000, 0x06004B00, 0x00000000, 0x06004CC0, 0x00000000,
};

UNK_TYPE D_8087DD88[] = {
    0x06001060, 0x06001920, 0x060003F0, 0x060040F0, 0x060043B0, 0x06001120, 0x060045A0,
    0x060047F0, 0x060018F0, 0x060049B0, 0x06003CF0, 0x06004B70, 0x06002ED0, 0x00000000,
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
    Actor* thisx = &this->dyna.actor;
    s32 local_c;
    u32 collision;

    if (Object_IsLoaded(&globalCtx->objectCtx, this->objBankIndex)) {
        thisx->draw = (ActorFunc)func_8087DC94;
        thisx->objBankIndex = this->objBankIndex;
        Actor_SetObjectDependency(globalCtx, thisx);
        if (globalCtx->roomCtx.curRoom.showInvisActors) {
            this->actionFunc = (ActorFunc)func_8087DBF0;
            collision = D_8087DD54[thisx->params];
            if (collision != 0) {
                DynaPolyInfo_Alloc(&collision, &local_c);
                this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, local_c);
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
        thisx->flags &= -0x81;
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
        Draw_DListXlu(globalCtx, D_8087DD88[thisx->params]);
    } else {
        Draw_DListOpa(globalCtx, D_8087DD88[thisx->params]);
    }

    if (thisx->params == 0) {
        Draw_DListXlu(globalCtx, &D_06001250);
    }
}
