/*
 * File: z_item_b_heart.c
 * Overlay: ovl_Item_B_Heart
 * Description: Heart Container
 */

#include "z_item_b_heart.h"

#define FLAGS 0x00000000

#define THIS ((ItemBHeart*)thisx)

void ItemBHeart_Init(Actor* thisx, GlobalContext* globalCtx);
void ItemBHeart_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ItemBHeart_Update(Actor* thisx, GlobalContext* globalCtx);
void ItemBHeart_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B85264(ItemBHeart* this, GlobalContext* globalCtx);

extern Gfx D_06001290[];
extern Gfx D_06001470[];

const ActorInit Item_B_Heart_InitVars = {
    ACTOR_ITEM_B_HEART,
    ACTORCAT_MISC,
    FLAGS,
    OBJECT_GI_HEARTS,
    sizeof(ItemBHeart),
    (ActorFunc)ItemBHeart_Init,
    (ActorFunc)ItemBHeart_Destroy,
    (ActorFunc)ItemBHeart_Update,
    (ActorFunc)ItemBHeart_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 800, ICHAIN_STOP),
};

void ItemBHeart_Init(Actor* thisx, GlobalContext* globalCtx) {
    ItemBHeart* this = THIS;

    if (Flags_GetCollectible(globalCtx, 0x1F)) {
        Actor_Kill(&this->actor);
    } else {
        Actor_ProcessInitChain(&this->actor, sInitChain);
        ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.8f);
    }
}

void ItemBHeart_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void ItemBHeart_Update(Actor* thisx, GlobalContext* globalCtx) {
    ItemBHeart* this = THIS;

    func_80B85264(this, globalCtx);
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    if (Actor_HasParent(&this->actor, globalCtx)) {
        Flags_SetCollectible(globalCtx, 0x1F);
        Actor_Kill(&this->actor);
    } else {
        func_8002F434(&this->actor, globalCtx, GI_HEART_CONTAINER_2, 30.0f, 40.0f);
    }
}

void func_80B85264(ItemBHeart* this, GlobalContext* globalCtx) {
    f32 temp;

    this->unk_164 += 1;
    temp = ((Math_SinS(this->unk_164 * 1548) * 5.0f) + 20.0f);
    Math_ApproachF(&this->actor.world.pos.y, this->actor.home.pos.y + temp, 0.1f, this->unk_158);
    Math_ApproachF(&this->unk_158, 2.0f, 1.0f, 0.1f);
    this->actor.shape.rot.y += 0x400;

    Math_ApproachF(&this->actor.scale.x, 0.4f, 0.1f, 0.01f);
    this->actor.scale.y = this->actor.scale.z = this->actor.scale.x;
}

void ItemBHeart_Draw(Actor* thisx, GlobalContext* globalCtx) {
    ItemBHeart* this = THIS;
    Actor* actorIt;
    u8 flag = 0;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_item_b_heart.c", 506);

    actorIt = globalCtx->actorCtx.actorLists[ACTORCAT_ITEMACTION].head;

    while (actorIt != NULL) {
        if ((actorIt->id == ACTOR_DOOR_WARP1) && (actorIt->projectedPos.z > this->actor.projectedPos.z)) {
            flag = 1;
            break;
        } else {
            actorIt = actorIt->next;
        }
    }

    if (flag) {
        func_80093D84(globalCtx->state.gfxCtx);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_item_b_heart.c", 551),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_06001290);
        gSPDisplayList(POLY_XLU_DISP++, D_06001470);
    } else {
        func_80093D18(globalCtx->state.gfxCtx);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_item_b_heart.c", 557),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, D_06001290);
        gSPDisplayList(POLY_OPA_DISP++, D_06001470);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_item_b_heart.c", 561);
}
