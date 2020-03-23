#include "z_arrow_fire.h"
#include "../ovl_En_Arrow/z_en_arrow.h"

#define ROOM 0x00
#define FLAGS 0x02000010

void ArrowFire_Init(ArrowFire* this, GlobalContext* globalCtx);
void ArrowFire_Destroy(ArrowFire* this, GlobalContext* globalCtx);
void ArrowFire_Update(ArrowFire* this, GlobalContext* globalCtx);
void ArrowFire_Draw(ArrowFire* this, GlobalContext* globalCtx);

void func_80865DD8(ArrowFire* this, GlobalContext* globalCtx);
void func_808660E8(ArrowFire* this, GlobalContext* globalCtx);
void func_80865F1C(ArrowFire* this, GlobalContext* globalCtx);
/*
const ActorInit Arrow_Fire_InitVars =
{
    ACTOR_ARROW_FIRE,
    ACTORTYPE_ITEMACTION,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ArrowFire),
    (ActorFunc)ArrowFire_Init,
    (ActorFunc)ArrowFire_Destroy,
    (ActorFunc)ArrowFire_Update,
    (ActorFunc)ArrowFire_Draw,
};
*/

static InitChainEntry initChain[] = {
    ICHAIN_VEC3F(unk_F4, 2000, ICHAIN_STOP),
};

// EnFire_SetupAction
void func_80865D10(ArrowFire* this, ActorFunc* actionFunc) {
    this->actionFunc = actionFunc;
}

void ArrowFire_Init(ArrowFire* this, GlobalContext* globalCtx) {
    Actor_ProcessInitChain(&this->actor, initChain);
    this->fireRadius = 0;
    this->unk_158 = 1.0f;
    func_80865D10(this, func_80865DD8);
    Actor_SetScale(this, 0.01);
    this->unk_168 = 0xA0;
    this->unk_166 = 0;
    this->unk_15C = 0.0f;
}

void ArrowFire_Destroy(ArrowFire* this, GlobalContext* globalCtx) {
    func_800876C8(globalCtx);
    LogUtils_LogThreadId("../z_arrow_fire.c", 421);
    osSyncPrintf("\"消滅\" = %s\n", "消滅");
}

// ArrowFire_DrawBack
void func_80865DD8(ArrowFire* this, GlobalContext* globalCtx) {
    EnArrow* arrow;

    arrow = this->actor.attachedA;
    if ((arrow == NULL) || (arrow->actor.update == NULL)) {
        Actor_Kill(&this->actor);
        return;
    }

    if (this->fireRadius < 10) {
        this->fireRadius += 1;
    }
    // copy position and rotation from the attached arrow
    this->actor.posRot.pos = arrow->actor.posRot.pos;
    this->actor.shape.rot = arrow->actor.shape.rot;

    func_8002F974(&this->actor, NA_SE_PL_ARROW_CHARGE_FIRE);

    // If arrow's attached is null, Link has fired the arrow
    if (arrow->actor.attachedA == NULL) {
        this->arrowPos = this->actor.posRot.pos;
        this->fireRadius = 10;
        func_80865D10(this, &func_808660E8);
        this->unk_168 = 0xFF;
    }
}

void func_80865ECC(Vec3f* arrowPos, Vec3f* firePos, f32 scale) {
    arrowPos->x += ((firePos->x - arrowPos->x) * scale);
    arrowPos->y += ((firePos->y - arrowPos->y) * scale);
    arrowPos->z += ((firePos->z - arrowPos->z) * scale);
}

// ArrowFire_
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Fire/func_80865F1C.s")
void func_80865F1C(ArrowFire* this, GlobalContext* globalCtx) {
    f32 scale;

    if (this->actor.unk_F0 < 50.0f) {
        scale = 10.0f;
    } else {
        if (950.0f < this->actor.unk_F0) {
            scale = 310.0f;
        } else {
            scale = ((this->actor.unk_F0 - 50.0f) * 0.33333334f) + 10.0f;
        }
    }
}

// ArrowFire_Fly
void func_808660E8(ArrowFire* this, GlobalContext* globalCtx) {
    EnArrow* arrow;
    f32 distanceScaled;
    s32 pad;

    arrow = this->actor.attachedA;
    if ((arrow == NULL) || (arrow->actor.update == NULL)) {
        Actor_Kill(&this->actor);
        return;
    }
    // copy position and rotation from the attached arrow
    this->actor.posRot.pos = arrow->actor.posRot.pos;
    this->actor.shape.rot = arrow->actor.shape.rot;
    distanceScaled = Math_Vec3f_DistXYZ(&this->arrowPos, &this->actor.posRot.pos) * 0.041666668f;
    this->unk_158 = distanceScaled;
    if (distanceScaled < 1.0f) {
        this->unk_158 = 1.0f;
    }
    func_80865ECC(&this->arrowPos, &this->actor.posRot.pos, 0.05f);

    if (arrow->hitWall & 1) {
        Audio_PlayActorSound2(&this->actor, NA_SE_IT_EXPLOSION_FRAME);
        func_80865D10(this, &func_80865F1C);
        this->unk_166 = 32;
        this->unk_168 = 0xFF;
    } else if (arrow->timer < 0x22) {
        if (this->unk_168 < 0x23) {
            Actor_Kill(&this->actor);
        } else {
            this->unk_168 -= 25;
        }
    }
}

void ArrowFire_Update(ArrowFire* this, GlobalContext* globalCtx) {
    if (globalCtx->msgCtx.msgMode == 0xD || globalCtx->msgCtx.msgMode == 0x11) {
        Actor_Kill(&this->actor);
    } else {
        this->actionFunc(this, globalCtx);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Arrow_Fire/ArrowFire_Draw.s")
