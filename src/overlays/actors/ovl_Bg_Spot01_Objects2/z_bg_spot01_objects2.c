/*
 * File: z_bg_spot01_objects2.c
 * Overlay: ovl_Bg_Spot01_Objects2
 * Description: Kakariko Village Set Pieces
 */

#include "z_bg_spot01_objects2.h"
#include "assets/objects/object_spot01_matoya/object_spot01_matoya.h"
#include "assets/objects/object_spot01_matoyab/object_spot01_matoyab.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void BgSpot01Objects2_Init(Actor* thisx, PlayState* play);
void BgSpot01Objects2_Destroy(Actor* thisx, PlayState* play);
void BgSpot01Objects2_Update(Actor* thisx, PlayState* play);

void func_808AC2BC(BgSpot01Objects2* this, PlayState* play);
void func_808AC474(BgSpot01Objects2* this, PlayState* play);
void func_808AC4A4(Actor* thisx, PlayState* play);

ActorProfile Bg_Spot01_Objects2_Profile = {
    /**/ ACTOR_BG_SPOT01_OBJECTS2,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(BgSpot01Objects2),
    /**/ BgSpot01Objects2_Init,
    /**/ BgSpot01Objects2_Destroy,
    /**/ BgSpot01Objects2_Update,
    /**/ NULL,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(cullingVolumeDistance, 12800, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1500, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

static Gfx* D_808AC510[] = {
    gKakarikoPotionShopSignDL,   gKakarikoShootingGallerySignDL, gKakarikoBazaarSignDL,
    gKakarikoConstructionSiteDL, gKakarikoShootingGalleryDL,
};

void BgSpot01Objects2_Init(Actor* thisx, PlayState* play) {
    BgSpot01Objects2* this = (BgSpot01Objects2*)thisx;

    switch (PARAMS_GET_U(this->dyna.actor.params, 0, 3)) {
        case 0:
        case 1:
        case 2:
            this->objectId = OBJECT_SPOT01_MATOYA;
            break;
        case 3:
            this->objectId = OBJECT_SPOT01_MATOYAB;
            break;
        case 4:
            this->objectId = OBJECT_SPOT01_MATOYA;
    }

    if (this->objectId >= 0) {
        this->requiredObjectSlot = Object_GetSlot(&play->objectCtx, this->objectId);
        if (this->requiredObjectSlot < 0) {
            // "There was no bank setting."
            PRINTF("-----------------------------バンク設定ありませんでした.");
            Actor_Kill(&this->dyna.actor);
            return;
        }
    } else {
        Actor_Kill(&this->dyna.actor);
    }
    this->actionFunc = func_808AC2BC;
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
}

void BgSpot01Objects2_Destroy(Actor* thisx, PlayState* play) {
}

s32 func_808AC22C(Path* pathList, Vec3f* pos, s32 path, s32 waypoint) {
    Vec3s* pointPos = &((Vec3s*)SEGMENTED_TO_VIRTUAL((pathList + path)->points))[waypoint];

    pos->x = pointPos->x;
    pos->y = pointPos->y;
    pos->z = pointPos->z;
    return 0;
}

void func_808AC2BC(BgSpot01Objects2* this, PlayState* play) {
    CollisionHeader* colHeader = NULL;
    Actor* thisx = &this->dyna.actor;
    s32 pad;
    Vec3f position;

    if (Object_IsLoaded(&play->objectCtx, this->requiredObjectSlot)) {
        // "---- Successful bank switching!!"
        PRINTF("-----バンク切り換え成功！！\n");
        gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.slots[this->requiredObjectSlot].segment);

        this->dyna.actor.objectSlot = this->requiredObjectSlot;
        DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS);

        switch (PARAMS_GET_U(this->dyna.actor.params, 0, 3)) {
            case 4: // Shooting gallery
                CollisionHeader_GetVirtual(&gKakarikoShootingGalleryCol, &colHeader);
                this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);
                break;
            case 3: // Shooting Gallery, spawns Carpenter Sabooro during the day
                CollisionHeader_GetVirtual(&object_spot01_matoyab_col, &colHeader);
                this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, thisx, colHeader);
                if (IS_DAY) {
                    func_808AC22C(play->pathList, &position, PARAMS_GET_U((s32)thisx->params, 8, 8), 0);
                    Actor_SpawnAsChild(&play->actorCtx, thisx, play, ACTOR_EN_DAIKU_KAKARIKO, position.x, position.y,
                                       position.z, thisx->world.rot.x, thisx->world.rot.y, thisx->world.rot.z,
                                       (PARAMS_GET_U((s32)thisx->params, 8, 8) << 8) + 1);
                }
                break;
            case 0: // Potion Shop Poster
            case 1: // Shooting gallery Poster
            case 2: // Bazaar Poster
                break;
        }

        this->dyna.actor.draw = func_808AC4A4;
        this->actionFunc = func_808AC474;
    }
}

void func_808AC474(BgSpot01Objects2* this, PlayState* play) {
}

void BgSpot01Objects2_Update(Actor* thisx, PlayState* play) {
    BgSpot01Objects2* this = (BgSpot01Objects2*)thisx;

    this->actionFunc(this, play);
}

void func_808AC4A4(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, D_808AC510[PARAMS_GET_U(thisx->params, 0, 3)]);
}
