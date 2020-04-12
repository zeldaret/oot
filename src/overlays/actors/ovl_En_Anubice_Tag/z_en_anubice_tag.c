/*
 * File: z_en_anubice_tag.c
 * Overlay: ovl_En_Anubice_Tag
 * Description: Spawns and manages the Anubis enemy
 */

#include "z_en_anubice_tag.h"

#define FLAGS 0x00000010

void EnAnubiceTag_Init(EnAnubiceTag* this, GlobalContext* globalCtx);
void EnAnubiceTag_Destroy(EnAnubiceTag* this, GlobalContext* globalCtx);
void EnAnubiceTag_SpawnAnubis(EnAnubiceTag* this, GlobalContext* globalCtx);
void EnAnubiceTag_ManageAnubis(EnAnubiceTag* this, GlobalContext* globalCtx);
void EnAnubiceTag_Update(EnAnubiceTag* this, GlobalContext* globalCtx);
void EnAnubiceTag_Draw(EnAnubiceTag* this, GlobalContext* globalCtx);

const ActorInit En_Anubice_Tag_InitVars = {
    ACTOR_EN_ANUBICE_TAG,
    ACTORTYPE_SWITCH,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnAnubiceTag),
    (ActorFunc)EnAnubiceTag_Init,
    (ActorFunc)EnAnubiceTag_Destroy,
    (ActorFunc)EnAnubiceTag_Update,
    (ActorFunc)EnAnubiceTag_Draw,
};

void EnAnubiceTag_Init(EnAnubiceTag* this, GlobalContext* globalCtx) {
    osSyncPrintf("\n\n");
    //"Anubis control tag generated"
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ アヌビス制御タグ発生 ☆☆☆☆☆ %d\n" VT_RST, this->actor.params);

    if (this->actor.params < (s16)0xFFFF) {
        this->actor.params = 0;
    }
    if (this->actor.params != 0) {
        this->triggerRange = this->actor.params * 40.0f;
    }
    this->actionFunc = &EnAnubiceTag_SpawnAnubis;
}

void EnAnubiceTag_Destroy(EnAnubiceTag* this, GlobalContext* globalCtx) {
}

void EnAnubiceTag_SpawnAnubis(EnAnubiceTag* this, GlobalContext* globalCtx) {
    this->anubis =
        Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_ANUBICE, this->actor.posRot.pos.x,
                            this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, this->actor.rotTowardsLinkY, 0, 0);

    if (this->anubis != NULL) {
        this->actionFunc = &EnAnubiceTag_ManageAnubis;
    }
}

void EnAnubiceTag_ManageAnubis(EnAnubiceTag* this, GlobalContext* globalCtx) {
    EnAnubice* anubis;
    Vec3f offset;

    if (this->anubis != NULL) {
        anubis = this->anubis;

        if (anubis->actor.update == NULL) {
            return;
        }
    } else {
        Actor_Kill(this);
        return;
    }

    if (anubis->unk_25A != 0) {
        Actor_Kill(this);
        return;
    }

    if (this->actor.xzDistanceFromLink < (200.0f + this->triggerRange)) {
        if (anubis->unk_260 == 0) {
            if (anubis->unk_262 == 0) {
                anubis->unk_25E = 1;
                offset.x = -Math_Sins(this->actor.rotTowardsLinkY) * this->actor.xzDistanceFromLink;
                offset.z = -Math_Coss(this->actor.rotTowardsLinkY) * this->actor.xzDistanceFromLink;
                Math_SmoothScaleMaxF(&anubis->actor.posRot.pos.x, (this->actor.posRot.pos.x + offset.x), 0.3f, 10.0f);
                Math_SmoothScaleMaxF(&anubis->actor.posRot.pos.z, (this->actor.posRot.pos.z + offset.z), 0.3f, 10.0f);
                return;
            }
        }
    } else {
        if (anubis->unk_25E != 0) {
            anubis->unk_260 = 1;
        }
    }
}

void EnAnubiceTag_Update(EnAnubiceTag* this, GlobalContext* globalCtx) {
    this->actionFunc(this, globalCtx);
}

void EnAnubiceTag_Draw(EnAnubiceTag* this, GlobalContext* globalCtx) {
    if (BREG(0) != 0) {
        DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                               this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, 1.0f, 1.0f,
                               1.0f, 0xFF, 0, 0, 0xFF, 4, globalCtx->state.gfxCtx);
    }
}
