/*
 * File: z_en_anubice_tag.c
 * Overlay: ovl_En_Anubice_Tag
 * Description: Spawns and manages the Anubis enemy
 */

#include "z_en_anubice_tag.h"
#include "terminal.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void EnAnubiceTag_Init(Actor* thisx, PlayState* play);
void EnAnubiceTag_Destroy(Actor* thisx, PlayState* play);
void EnAnubiceTag_Update(Actor* thisx, PlayState* play);
void EnAnubiceTag_Draw(Actor* thisx, PlayState* play);

void EnAnubiceTag_SpawnAnubis(EnAnubiceTag* this, PlayState* play);
void EnAnubiceTag_ManageAnubis(EnAnubiceTag* this, PlayState* play);

ActorProfile En_Anubice_Tag_Profile = {
    /**/ ACTOR_EN_ANUBICE_TAG,
    /**/ ACTORCAT_SWITCH,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnAnubiceTag),
    /**/ EnAnubiceTag_Init,
    /**/ EnAnubiceTag_Destroy,
    /**/ EnAnubiceTag_Update,
    /**/ EnAnubiceTag_Draw,
};

void EnAnubiceTag_Init(Actor* thisx, PlayState* play) {
    EnAnubiceTag* this = (EnAnubiceTag*)thisx;

    PRINTF("\n\n");
    // "Anubis control tag generated"
    PRINTF(VT_FGCOL(GREEN) "☆☆☆☆☆ アヌビス制御タグ発生 ☆☆☆☆☆ %d\n" VT_RST, this->actor.params);

    if (this->actor.params < -1) {
        this->actor.params = 0;
    }
    if (this->actor.params != 0) {
        this->extraTriggerRange = this->actor.params * 40.0f;
    }
    this->actionFunc = EnAnubiceTag_SpawnAnubis;
}

void EnAnubiceTag_Destroy(Actor* thisx, PlayState* play) {
}

void EnAnubiceTag_SpawnAnubis(EnAnubiceTag* this, PlayState* play) {
    this->anubis = (EnAnubice*)Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_ANUBICE,
                                                  this->actor.world.pos.x, this->actor.world.pos.y,
                                                  this->actor.world.pos.z, 0, this->actor.yawTowardsPlayer, 0, 0);

    if (this->anubis != NULL) {
        this->actionFunc = EnAnubiceTag_ManageAnubis;
    }
}

void EnAnubiceTag_ManageAnubis(EnAnubiceTag* this, PlayState* play) {
    EnAnubice* anubis;
    Vec3f offset;

    if (this->anubis != NULL) {
        anubis = this->anubis;
        if (anubis->actor.update == NULL) {
            return;
        }
    } else {
        Actor_Kill(&this->actor);
        return;
    }

    if (anubis->deathTimer != 0) {
        Actor_Kill(&this->actor);
        return;
    }

    if (this->actor.xzDistToPlayer < (200.0f + this->extraTriggerRange)) {
        if (!anubis->isPlayerOutOfRange && !anubis->isKnockedback) {
            anubis->isMirroringPlayer = true;
            offset.x = -Math_SinS(this->actor.yawTowardsPlayer) * this->actor.xzDistToPlayer;
            offset.z = -Math_CosS(this->actor.yawTowardsPlayer) * this->actor.xzDistToPlayer;
            Math_ApproachF(&anubis->actor.world.pos.x, this->actor.world.pos.x + offset.x, 0.3f, 10.0f);
            Math_ApproachF(&anubis->actor.world.pos.z, this->actor.world.pos.z + offset.z, 0.3f, 10.0f);
        }
    } else if (anubis->isMirroringPlayer) {
        anubis->isPlayerOutOfRange = true;
    }
}

void EnAnubiceTag_Update(Actor* thisx, PlayState* play) {
    EnAnubiceTag* this = (EnAnubiceTag*)thisx;

    this->actionFunc(this, play);
}

void EnAnubiceTag_Draw(Actor* thisx, PlayState* play) {
    EnAnubiceTag* this = (EnAnubiceTag*)thisx;

    if (DEBUG_FEATURES && BREG(0) != 0) {
        DebugDisplay_AddObject(this->actor.world.pos.x, this->actor.world.pos.y, this->actor.world.pos.z,
                               this->actor.world.rot.x, this->actor.world.rot.y, this->actor.world.rot.z, 1.0f, 1.0f,
                               1.0f, 255, 0, 0, 255, 4, play->state.gfxCtx);
    }
}
