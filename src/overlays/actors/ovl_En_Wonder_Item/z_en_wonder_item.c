/*
 * File: z_en_wonder_item.c
 * Overlay: ovl_En_Wonder_Item
 * Description: Invisible Collectable; Used in MQ to create "Cow" switches
 */

#include "z_en_wonder_item.h"
#include "terminal.h"

#define FLAGS 0

void EnWonderItem_Init(Actor* thisx, PlayState* play);
void EnWonderItem_Destroy(Actor* thisx, PlayState* play);
void EnWonderItem_Update(Actor* thisx, PlayState* play);

void EnWonderItem_MultitagFree(EnWonderItem* this, PlayState* play);
void EnWonderItem_ProximityDrop(EnWonderItem* this, PlayState* play);
void EnWonderItem_InteractSwitch(EnWonderItem* this, PlayState* play);
void EnWonderItem_ProximitySwitch(EnWonderItem* this, PlayState* play);
void EnWonderItem_MultitagOrdered(EnWonderItem* this, PlayState* play);
void EnWonderItem_BombSoldier(EnWonderItem* this, PlayState* play);
void EnWonderItem_RollDrop(EnWonderItem* this, PlayState* play);

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_NONE,
    },
    { 20, 30, 0, { 0, 0, 0 } },
};

ActorProfile En_Wonder_Item_Profile = {
    /**/ ACTOR_EN_WONDER_ITEM,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnWonderItem),
    /**/ EnWonderItem_Init,
    /**/ EnWonderItem_Destroy,
    /**/ EnWonderItem_Update,
    /**/ NULL,
};

#pragma increment_block_number "gc-eu:0 gc-eu-mq:0 gc-jp:0 gc-jp-ce:0 gc-jp-mq:0 gc-us:0 gc-us-mq:0"

static Vec3f sTagPointsFree[9];
static Vec3f sTagPointsOrdered[9];

void EnWonderItem_Destroy(Actor* thisx, PlayState* play) {
    s32 pad;
    EnWonderItem* this = (EnWonderItem*)thisx;

    if ((this->collider.dim.radius != 0) || (this->collider.dim.height != 0)) {
        Collider_DestroyCylinder(play, &this->collider);
    }
}

void EnWonderItem_DropCollectible(EnWonderItem* this, PlayState* play, s32 autoCollect) {
    static s16 dropTable[] = {
        ITEM00_NUTS,           ITEM00_HEART_PIECE,  ITEM00_MAGIC_LARGE,   ITEM00_MAGIC_SMALL,
        ITEM00_RECOVERY_HEART, ITEM00_ARROWS_SMALL, ITEM00_ARROWS_MEDIUM, ITEM00_ARROWS_LARGE,
        ITEM00_RUPEE_GREEN,    ITEM00_RUPEE_BLUE,   ITEM00_RUPEE_RED,     ITEM00_FLEXIBLE,
    };
    s32 i;
    s32 randomDrop;

    Sfx_PlaySfxCentered(NA_SE_SY_GET_ITEM);

    if (this->dropCount == 0) {
        this->dropCount++;
    }
    for (i = this->dropCount; i > 0; i--) {
        if (this->itemDrop < WONDERITEM_DROP_RANDOM) {
            if ((this->itemDrop == WONDERITEM_DROP_FLEXIBLE) || !autoCollect) {
                Item_DropCollectible(play, &this->actor.world.pos, dropTable[this->itemDrop]);
            } else {
                Item_DropCollectible(play, &this->actor.world.pos, dropTable[this->itemDrop] | 0x8000);
            }
        } else {
            randomDrop = this->itemDrop - WONDERITEM_DROP_RANDOM;
            if (!autoCollect) {
                Item_DropCollectibleRandom(play, NULL, &this->actor.world.pos, randomDrop);
            } else {
                Item_DropCollectibleRandom(play, NULL, &this->actor.world.pos, randomDrop | 0x8000);
            }
        }
    }
    if (this->switchFlag >= 0) {
        Flags_SetSwitch(play, this->switchFlag);
    }
    Actor_Kill(&this->actor);
}

void EnWonderItem_Init(Actor* thisx, PlayState* play) {
    static u32 damageFlags[] = {
        DMG_SLASH | DMG_DEKU_STICK,
        DMG_ARROW,
        DMG_HAMMER_SWING,
        DMG_EXPLOSIVE,
        DMG_SLINGSHOT,
        DMG_BOOMERANG,
        DMG_HOOKSHOT,
    };
    s32 pad;
    s16 colTypeIndex;
    EnWonderItem* this = (EnWonderItem*)thisx;
    s16 rotZover10;
    s16 tagIndex;

    PRINTF("\n\n");
    PRINTF(VT_FGCOL(GREEN) T("☆☆☆☆☆ 不思議不思議まか不思議 \t   ☆☆☆☆☆ %x\n",
                             "☆☆☆☆☆ Mysterious mystery, very mysterious \t   ☆☆☆☆☆ %x\n") VT_RST,
           this->actor.params);
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;

    this->wonderMode = PARAMS_GET_U(this->actor.params, 11, 5);
    this->itemDrop = PARAMS_GET_U(this->actor.params, 6, 5);
    this->switchFlag = PARAMS_GET_U(this->actor.params, 0, 6);
    if (this->switchFlag == 0x3F) {
        this->switchFlag = -1;
    }
    this->actor.attentionRangeType = ATTENTION_RANGE_1;
    if ((this->switchFlag >= 0) && Flags_GetSwitch(play, this->switchFlag)) {
        PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ Ｙｏｕ ａｒｅ Ｓｈｏｃｋ！  ☆☆☆☆☆ %d\n" VT_RST, this->switchFlag);
        Actor_Kill(&this->actor);
        return;
    }
    switch (this->wonderMode) {
        case WONDERITEM_MULTITAG_FREE:
            this->numTagPoints = this->actor.world.rot.z & 0xF;
            rotZover10 = 0;
            if (this->actor.world.rot.z >= 10) {
                rotZover10 = this->actor.world.rot.z / 10;
                this->timerMod = rotZover10 * 20;
            }
            this->numTagPoints = this->actor.world.rot.z - rotZover10 * 10;
            // i.e timerMod = rot.z / 10 seconds, numTagPoints = rot.z % 10
            this->updateFunc = EnWonderItem_MultitagFree;
            break;
        case WONDERITEM_TAG_POINT_FREE:
            tagIndex = this->actor.world.rot.z & 0xFF;
            sTagPointsFree[tagIndex] = this->actor.world.pos;
            Actor_Kill(&this->actor);
            break;
        case WONDERITEM_PROXIMITY_DROP:
            this->dropCount = this->actor.world.rot.z & 0xFF;
            this->updateFunc = EnWonderItem_ProximityDrop;
            break;
        case WONDERITEM_INTERACT_SWITCH:
            colTypeIndex = this->actor.world.rot.z & 0xFF;
            Collider_InitCylinder(play, &this->collider);
            Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
            this->collider.elem.acDmgInfo.dmgFlags = damageFlags[colTypeIndex];
            this->collider.dim.radius = 20;
            this->collider.dim.height = 30;
            this->updateFunc = EnWonderItem_InteractSwitch;
            break;
        case WONDERITEM_UNUSED:
            break;
        case WONDERITEM_MULTITAG_ORDERED:
            this->numTagPoints = this->actor.world.rot.z & 0xF;
            rotZover10 = 0;
            if (this->actor.world.rot.z >= 10) {
                rotZover10 = this->actor.world.rot.z / 10;
                this->timerMod = rotZover10 * 20;
            }
            this->numTagPoints = this->actor.world.rot.z - rotZover10 * 10;
            // i.e timerMod = rot.z / 10 seconds, numTagPoints = rot.z % 10
            this->updateFunc = EnWonderItem_MultitagOrdered;
            break;
        case WONDERITEM_TAG_POINT_ORDERED:
            tagIndex = this->actor.world.rot.z & 0xFF;
            sTagPointsOrdered[tagIndex] = this->actor.world.pos;
            Actor_Kill(&this->actor);
            break;
        case WONDERITEM_PROXIMITY_SWITCH:
            this->updateFunc = EnWonderItem_ProximitySwitch;
            break;
        case WONDERITEM_BOMB_SOLDIER:
            Collider_InitCylinder(play, &this->collider);
            Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
            this->collider.elem.acDmgInfo.dmgFlags = DMG_SLINGSHOT;
            this->unkPos = this->actor.world.pos;
            this->collider.dim.radius = 35;
            this->collider.dim.height = 75;
            this->updateFunc = EnWonderItem_BombSoldier;
            break;
        case WONDERITEM_ROLL_DROP:
            this->dropCount = this->actor.world.rot.z & 0xFF;
            this->updateFunc = EnWonderItem_RollDrop;
            break;
        default:
            Actor_Kill(&this->actor);
            break;
    }
}

void EnWonderItem_MultitagFree(EnWonderItem* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 prevTagFlags = this->tagFlags;
    s32 i;
    s32 mask;
    f32 dx;
    f32 dy;
    f32 dz;

    for (i = 0, mask = 1; i < this->numTagPoints; i++, mask <<= 1) {
        if (!(prevTagFlags & mask)) {
            dx = player->actor.world.pos.x - sTagPointsFree[i].x;
            dy = player->actor.world.pos.y - sTagPointsFree[i].y;
            dz = player->actor.world.pos.z - sTagPointsFree[i].z;

            if (sqrtf(SQ(dx) + SQ(dy) + SQ(dz)) < 50.0f) {
                this->tagFlags |= mask;
                this->tagCount++;
                this->timer = this->timerMod + 81;
                return;
            }

#if DEBUG_FEATURES
            if (BREG(0) != 0) {
                DebugDisplay_AddObject(sTagPointsFree[i].x, sTagPointsFree[i].y, sTagPointsFree[i].z,
                                       this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f,
                                       1.0f, 1.0f, 0, 255, 0, 255, 4, play->state.gfxCtx);
            }
#endif
        }
    }
    if (this->timer == 1) {
        Actor_Kill(&this->actor);
        return;
    }
    if (this->tagCount == this->numTagPoints) {
        if (this->switchFlag >= 0) {
            Flags_SetSwitch(play, this->switchFlag);
        }
        EnWonderItem_DropCollectible(this, play, true);
    }
}

void EnWonderItem_ProximityDrop(EnWonderItem* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if ((this->actor.xzDistToPlayer < 50.0f) && (fabsf(this->actor.world.pos.y - player->actor.world.pos.y) < 30.0f)) {
        EnWonderItem_DropCollectible(this, play, true);
    }
}

void EnWonderItem_InteractSwitch(EnWonderItem* this, PlayState* play) {
    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        EnWonderItem_DropCollectible(this, play, false);
    }
}

void EnWonderItem_ProximitySwitch(EnWonderItem* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if ((this->actor.xzDistToPlayer < 50.0f) && (fabsf(this->actor.world.pos.y - player->actor.world.pos.y) < 30.0f)) {
        if (this->switchFlag >= 0) {
            Flags_SetSwitch(play, this->switchFlag);
        }
        Actor_Kill(&this->actor);
    }
}

void EnWonderItem_MultitagOrdered(EnWonderItem* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 prevTagFlags = this->tagFlags;
    s32 i;
    s32 mask;
    f32 dx;
    f32 dy;
    f32 dz;

    for (i = 0, mask = 1; i < this->numTagPoints; i++, mask <<= 1) {
        if (!(prevTagFlags & mask)) {
            dx = player->actor.world.pos.x - sTagPointsOrdered[i].x;
            dy = player->actor.world.pos.y - sTagPointsOrdered[i].y;
            dz = player->actor.world.pos.z - sTagPointsOrdered[i].z;

            if (sqrtf(SQ(dx) + SQ(dy) + SQ(dz)) < 50.0f) {
                if (prevTagFlags & mask) {
                    return;
                } else if (i == this->nextTag) {
                    this->tagFlags |= mask;
                    this->tagCount++;
                    this->nextTag++;
                    this->timer = this->timerMod + 81;
                    return;
                } else {
                    Actor_Kill(&this->actor);
                    return;
                }
            }

#if DEBUG_FEATURES
            if (BREG(0) != 0) {
                DebugDisplay_AddObject(sTagPointsOrdered[i].x, sTagPointsOrdered[i].y, sTagPointsOrdered[i].z,
                                       this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f,
                                       1.0f, 1.0f, 0, 0, 255, 255, 4, play->state.gfxCtx);
            }
#endif
        }
    }
    if (this->timer == 1) {
        Actor_Kill(&this->actor);
        return;
    }
    if (this->tagCount == this->numTagPoints) {
        EnWonderItem_DropCollectible(this, play, true);
    }
}

void EnWonderItem_BombSoldier(EnWonderItem* this, PlayState* play) {
    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        if (Actor_Spawn(&play->actorCtx, play, ACTOR_EN_HEISHI2, this->actor.world.pos.x, this->actor.world.pos.y,
                        this->actor.world.pos.z, 0, this->actor.yawTowardsPlayer, 0, 9) != NULL) {
            PRINTF(VT_FGCOL(YELLOW) T("☆☆☆☆☆ うっかり兵セット完了 ☆☆☆☆☆ \n", "☆☆☆☆☆ Careless soldier spawned ☆☆☆☆☆ \n")
                       VT_RST);
        }
        if (this->switchFlag >= 0) {
            Flags_SetSwitch(play, this->switchFlag);
        }
        Actor_Kill(&this->actor);
    }
}

void EnWonderItem_RollDrop(EnWonderItem* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if ((this->actor.xzDistToPlayer < 50.0f) && (player->invincibilityTimer < 0) &&
        (fabsf(this->actor.world.pos.y - player->actor.world.pos.y) < 30.0f)) {
        EnWonderItem_DropCollectible(this, play, true);
    }
}

void EnWonderItem_Update(Actor* thisx, PlayState* play) {
    static s16 debugArrowColors[] = {
        255, 255, 0,   255, 0,   255, 0,   255, 255, 255, 0,   0, 0, 255, 0,   0, 0, 255, 128, 128,
        128, 128, 128, 0,   128, 0,   128, 0,   128, 0,   128, 0, 0, 0,   128, 0, 0, 0,   128,
    }; // These seem to be mistyped. Logically they should be s16[13][3] and be indexed as [colorIndex][i]
    s32 pad;
    EnWonderItem* this = (EnWonderItem*)thisx;
    s32 colorIndex;

    if (this->timer != 0) {
        this->timer--;
    }
    this->updateFunc(this, play);

    if (this->wonderMode == WONDERITEM_UNUSED) {
        Actor_SetFocus(&this->actor, this->unkHeight);
    }
    if ((this->wonderMode == WONDERITEM_INTERACT_SWITCH) || (this->wonderMode == WONDERITEM_BOMB_SOLDIER)) {
        Collider_UpdateCylinder(&this->actor, &this->collider);
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
    }

    colorIndex = this->wonderMode;
    if (this->wonderMode > 12) {
        colorIndex = 0;
    }

    if (DEBUG_FEATURES && BREG(0) != 0) {
        DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                               this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f, 1.0f,
                               1.0f, debugArrowColors[colorIndex], debugArrowColors[colorIndex + 1],
                               debugArrowColors[colorIndex + 2], 255, 4, play->state.gfxCtx);
    }
}
