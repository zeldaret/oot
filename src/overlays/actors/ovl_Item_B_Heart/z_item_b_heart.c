/*
 * File: z_item_b_heart.c
 * Overlay: ovl_Item_B_Heart
 * Description: Heart Container
 */

#include "z_item_b_heart.h"
#include "assets/objects/object_gi_hearts/object_gi_hearts.h"

#define FLAGS 0

void ItemBHeart_Init(Actor* thisx, PlayState* play);
void ItemBHeart_Destroy(Actor* thisx, PlayState* play);
void ItemBHeart_Update(Actor* thisx, PlayState* play);
void ItemBHeart_Draw(Actor* thisx, PlayState* play);

void func_80B85264(ItemBHeart* this, PlayState* play);

ActorProfile Item_B_Heart_Profile = {
    /**/ ACTOR_ITEM_B_HEART,
    /**/ ACTORCAT_MISC,
    /**/ FLAGS,
    /**/ OBJECT_GI_HEARTS,
    /**/ sizeof(ItemBHeart),
    /**/ ItemBHeart_Init,
    /**/ ItemBHeart_Destroy,
    /**/ ItemBHeart_Update,
    /**/ ItemBHeart_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 800, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 800, ICHAIN_STOP),
};

void ItemBHeart_Init(Actor* thisx, PlayState* play) {
    ItemBHeart* this = (ItemBHeart*)thisx;

    if (Flags_GetCollectible(play, 0x1F)) {
        Actor_Kill(&this->actor);
    } else {
        Actor_ProcessInitChain(&this->actor, sInitChain);
        ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.8f);
    }
}

void ItemBHeart_Destroy(Actor* thisx, PlayState* play) {
}

void ItemBHeart_Update(Actor* thisx, PlayState* play) {
    ItemBHeart* this = (ItemBHeart*)thisx;

    func_80B85264(this, play);
    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
    if (Actor_HasParent(&this->actor, play)) {
        Flags_SetCollectible(play, 0x1F);
        Actor_Kill(&this->actor);
    } else {
        Actor_OfferGetItem(&this->actor, play, GI_HEART_CONTAINER_2, 30.0f, 40.0f);
    }
}

void func_80B85264(ItemBHeart* this, PlayState* play) {
    f32 yOffset;

    this->unk_164++;
    yOffset = (Math_SinS(this->unk_164 * 0x60C) * 5.0f) + 20.0f;
    Math_ApproachF(&this->actor.world.pos.y, this->actor.home.pos.y + yOffset, 0.1f, this->unk_158);
    Math_ApproachF(&this->unk_158, 2.0f, 1.0f, 0.1f);
    this->actor.shape.rot.y += 0x400;

    Math_ApproachF(&this->actor.scale.x, 0.4f, 0.1f, 0.01f);
    this->actor.scale.y = this->actor.scale.z = this->actor.scale.x;
}

void ItemBHeart_Draw(Actor* thisx, PlayState* play) {
    ItemBHeart* this = (ItemBHeart*)thisx;
    Actor* actorIt;
    u8 flag = false;

    OPEN_DISPS(play->state.gfxCtx, "../z_item_b_heart.c", 506);

    actorIt = play->actorCtx.actorLists[ACTORCAT_ITEMACTION].head;

    while (actorIt != NULL) {
        if ((actorIt->id == ACTOR_DOOR_WARP1) && (actorIt->projectedPos.z > this->actor.projectedPos.z)) {
            flag = true;
            break;
        }
        actorIt = actorIt->next;
    }

    if (flag) {
        Gfx_SetupDL_25Xlu(play->state.gfxCtx);
        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_item_b_heart.c", 551);
        gSPDisplayList(POLY_XLU_DISP++, gGiHeartBorderDL);
        gSPDisplayList(POLY_XLU_DISP++, gGiHeartContainerDL);
    } else {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_item_b_heart.c", 557);
        gSPDisplayList(POLY_OPA_DISP++, gGiHeartBorderDL);
        gSPDisplayList(POLY_OPA_DISP++, gGiHeartContainerDL);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_item_b_heart.c", 561);
}
