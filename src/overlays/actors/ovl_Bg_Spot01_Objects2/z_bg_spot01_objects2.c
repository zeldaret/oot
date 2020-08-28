/*
 * File: z_bg_spot01_objects2.c
 * Overlay: ovl_Bg_Spot01_Objects2
 * Description: Kakariko Village Set Pieces
 */

#include "z_bg_spot01_objects2.h"

#define FLAGS 0x00000010

#define THIS ((BgSpot01Objects2*)thisx)

void BgSpot01Objects2_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot01Objects2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot01Objects2_Update(Actor* thisx, GlobalContext* globalCtx);

void func_808AC2BC(BgSpot01Objects2* this, GlobalContext* globalCtx);
void func_808AC474(BgSpot01Objects2* this, GlobalContext* globalCtx);
void func_808AC4A4(Actor* this, GlobalContext* globalCtx);

const ActorInit Bg_Spot01_Objects2_InitVars = {
    ACTOR_BG_SPOT01_OBJECTS2,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgSpot01Objects2),
    (ActorFunc)BgSpot01Objects2_Init,
    (ActorFunc)BgSpot01Objects2_Destroy,
    (ActorFunc)BgSpot01Objects2_Update,
};


static InitChainEntry D_808AC500[] = {
    ICHAIN_F32(uncullZoneForward, 12800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1500, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

Gfx* D_808AC510[] = { 0x06001EB0, 0x06002780, 0x06003078, 0x06001228, 0x06001528 };

extern UNK_TYPE D_06001A38;
extern UNK_TYPE D_06001C58;

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Objects2/BgSpot01Objects2_Init.s")
void BgSpot01Objects2_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot01Objects2* this = THIS;

    switch (this->dyna.actor.params & 7) {
        case 0:
        case 1:
        case 2:
            this->objectId = 0x180;
            break;
        case 3:
            this->objectId = 0x181;
            break;
        case 4:
            this->objectId = 0x180;
    }

    if (this->objectId >= 0) {
        this->objBankIndex = Object_GetIndex(&globalCtx->objectCtx, this->objectId);
        if (this->objBankIndex < 0) {
            // There was no bank setting.
            osSyncPrintf("-----------------------------バンク設定ありませんでした.");
            Actor_Kill(&this->dyna.actor);
            return;
        }
    } else {
        Actor_Kill(&this->dyna.actor);
    }
    this->actionFunc = func_808AC2BC;
    Actor_ProcessInitChain(&this->dyna.actor, D_808AC500);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Objects2/BgSpot01Objects2_Destroy.s")
void BgSpot01Objects2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

s32 func_808AC22C(Path* pathList, Vec3f* pos, s32 path, s32 waypoint) {
    Vec3s* pointPos = &((Vec3s*)SEGMENTED_TO_VIRTUAL(((Path*)pathList + path)->points))[waypoint];

    pos->x = pointPos->x;
    pos->y = pointPos->y;
    pos->z = pointPos->z;
    return 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot01_Objects2/func_808AC2BC.s")
void func_808AC2BC(BgSpot01Objects2* this, GlobalContext* globalCtx) {
    s32 sp54;
    Actor* thisx = &this->dyna.actor;
    s16 pad[2];
    Vec3f position;

    sp54 = 0;
    if (Object_IsLoaded(&globalCtx->objectCtx, this->objBankIndex) != 0) {
        // ---- Successful bank switching!!
        osSyncPrintf("-----バンク切り換え成功！！\n");
        gSegments[6] = PHYSICAL_TO_VIRTUAL(globalCtx->objectCtx.status[this->objBankIndex].segment);

        this->dyna.actor.objBankIndex = (s8)this->objBankIndex;
        DynaPolyInfo_SetActorMove(&this->dyna, DPM_PLAYER);

        switch (this->dyna.actor.params & 7) {
            case 0: // Potion Shop Poster
            case 1: // Shooting gallery Poster
            case 2: // Bazaar Poster
            case 3: // Shooting gallery
                DynaPolyInfo_Alloc(&D_06001A38, &sp54);
                this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, sp54);
                break;
            case 4: // Shooting Gallery // Spawns Carpenter Sabooro during the day
                DynaPolyInfo_Alloc(&D_06001C58, &sp54);
                this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, sp54);
                if (gSaveContext.nightFlag == 0) {
                    func_808AC22C(globalCtx->setupPathList, &position, ((s32)thisx->params >> 8) & 0xFF, 0);
                    Actor_SpawnAttached(&globalCtx->actorCtx, thisx, globalCtx, ACTOR_EN_DAIKU_KAKARIKO, position.x,
                                        position.y, position.z, thisx->posRot.rot.x, thisx->posRot.rot.y,
                                        thisx->posRot.rot.z, ((((s32)thisx->params >> 8) & 0xFF) << 8) + 1);
                }
                break;
        }

        this->dyna.actor.draw = func_808AC4A4;
        this->actionFunc = func_808AC474;
    }
}

void func_808AC474(BgSpot01Objects2* this, GlobalContext* globalCtx) {
}

void BgSpot01Objects2_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot01Objects2* this = THIS;

    this->actionFunc(this, globalCtx);
}

void func_808AC4A4(Actor* this, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_808AC510[this->params & 7]);
}
