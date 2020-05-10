/*
 * File: z_en_tubo_trap.c
 * Overlay: ovl_En_Tubo_Trap
 * Description: Flying pot enemy
 */

#include "z_en_tubo_trap.h"

#include <vt.h>

#define FLAGS 0x00000010

#define THIS ((EnTuboTrap*)thisx)

void EnTuboTrap_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTuboTrap_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTuboTrap_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTuboTrap_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnTuboTrap_WaitForProximity(EnTuboTrap* this, GlobalContext* globalCtx);
void EnTuboTrap_Levitate(EnTuboTrap* this, GlobalContext* globalCtx);
void EnTuboTrap_Fly(EnTuboTrap* this, GlobalContext* globalCtx);

static ColliderCylinderInit cylinderInitData = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x00, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x04 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x00 },
    { 9, 23, 0, { 0 } },
};

const ActorInit En_Tubo_Trap_InitVars = {
    ACTOR_EN_TUBO_TRAP,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(EnTuboTrap),
    (ActorFunc)EnTuboTrap_Init,
    (ActorFunc)EnTuboTrap_Destroy,
    (ActorFunc)EnTuboTrap_Update,
    (ActorFunc)EnTuboTrap_Draw,
};

extern UNK_TYPE D_05017A60;
extern Gfx D_05017870[];

void EnTuboTrap_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnTuboTrap* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 2.0f);
    osSyncPrintf("\n\n");
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 壷トラップ ☆☆☆☆☆ %x\n" VT_RST, this->actor.params); // "Urn Trap"
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &cylinderInitData);
    Actor_SetScale(&this->actor, 0.1f);
    this->actionFunc = EnTuboTrap_WaitForProximity;
}

void EnTuboTrap_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnTuboTrap* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnTuboTrap_DropCollectible(EnTuboTrap* this, GlobalContext* globalCtx) {
    s16 params = this->actor.params;
    s16 param3FF = (params >> 6) & 0x3FF;

    if (param3FF >= 0 && param3FF < 0x1A) {
        Item_DropCollectible(globalCtx, &this->actor.posRot, param3FF | ((params & 0x3F) << 8));
    }
}

#ifdef NON_MATCHING
// regalloc and stack usage differences, most likely the same differences as EnTuboTrap_SpawnWaterFragments
void EnTuboTrap_SpawnFragments(EnTuboTrap* this, GlobalContext* globalCtx) {
    Vec3f* actorPos;
    f32 rand;
    f32 cos;
    f32 sin;
    u32 addr;
    Vec3f spC8;
    Vec3f spBC;
    s16 var;
    s32 temp;
    s32 i;

    addr = &D_05017A60;
    actorPos = &this->actor.posRot.pos;

    for (i = 0, var = 0; i < 15; i++, var += 20000) {
        sin = Math_Sins(var);
        cos = Math_Coss(var);
        spC8.x = sin * 8.0f;
        spC8.y = (Math_Rand_ZeroOne() * 5.0f) + 2.0f;
        spC8.z = cos * 8.0f;

        spBC.x = spC8.x * 0.23f;
        spBC.y = (Math_Rand_ZeroOne() * 5.0f) + 2.0f;
        spBC.z = spC8.z * 0.23f;

        spC8.x += actorPos->x;
        spC8.y += actorPos->y;
        spC8.z += actorPos->z;

        rand = Math_Rand_ZeroOne();
        if (rand < 0.2f) {
            temp = 96;
        } else if (rand < 0.6f) {
            temp = 64;
        } else {
            temp = 32;
        }

        Effect_SpawnFragment(globalCtx, &spC8, &spBC, actorPos, -240, temp, 10, 10, 0,
                             (Math_Rand_ZeroOne() * 65.0f) + 15.0f, 0, 32, 60, -1, 3, addr);
    }

    func_80033480(globalCtx, actorPos, 30.0f, 4, 20, 50, 0);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tubo_Trap/EnTuboTrap_SpawnFragments.s")
#endif

#ifdef NON_MATCHING
// regalloc and stack usage differences, most likely the same differences as EnTuboTrap_SpawnFragments
void EnTuboTrap_SpawnWaterFragments(EnTuboTrap* this, GlobalContext* globalCtx) {
    Vec3f* actorPos;
    f32 rand;
    f32 cos;
    f32 sin;
    u32 addr;
    Vec3f spC8;
    Vec3f spBC;
    s16 var;
    s32 temp;
    s32 i;

    addr = &D_05017A60;
    actorPos = &this->actor.posRot.pos;

    spC8 = *actorPos;
    spC8.y += this->actor.unk_84;

    func_8002949C(globalCtx, &spC8, 0, 0, 0, 400);

    for (i = 0, var = 0; i < 15; i++, var += 20000) {
        sin = Math_Sins(var);
        cos = Math_Coss(var);
        spC8.x = sin * 8.0f;
        spC8.y = (Math_Rand_ZeroOne() * 5.0f) + 2.0f;
        spC8.z = cos * 8.0f;

        spBC.x = spC8.x * 0.23f;
        spBC.y = (Math_Rand_ZeroOne() * 4.0f) + 2.0f;
        spBC.z = spC8.z * 0.23f;

        spC8.x += actorPos->x;
        spC8.y += actorPos->y;
        spC8.z += actorPos->z;

        rand = Math_Rand_ZeroOne();
        if (rand < 0.2f) {
            temp = 64;
        } else {
            temp = 32;
        }

        Effect_SpawnFragment(globalCtx, &spC8, &spBC, actorPos, -180, temp, 30, 30, 0,
                             (Math_Rand_ZeroOne() * 65.0f) + 15.0f, 0, 32, 70, -1, 3, addr);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tubo_Trap/EnTuboTrap_SpawnWaterFragments.s")
#endif

#ifdef NON_MATCHING
void EnTuboTrap_HandleImpact(EnTuboTrap* this, GlobalContext* globalCtx) {
    s32 pad;
    Player* player = PLAYER;

    if ((this->actor.bgCheckFlags & 0x20) && (this->actor.unk_84 > 15.0f)) {
        EnTuboTrap_SpawnWaterFragments(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 40, NA_SE_EV_BOMB_DROP_WATER);
        EnTuboTrap_DropCollectible(this, globalCtx);
        Actor_Kill(&this->actor);
        return;
    }

    if (this->collider.base.atFlags & 4) {
        this->collider.base.atFlags &= ~4;
        EnTuboTrap_SpawnFragments(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 40, NA_SE_IT_SHIELD_REFLECT_SW);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 40, NA_SE_EV_POT_BROKEN);
        EnTuboTrap_DropCollectible(this, globalCtx);
        Actor_Kill(&this->actor);
        return;
    }

    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;
        EnTuboTrap_SpawnFragments(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 40, NA_SE_EV_EXPLOSION);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 40, NA_SE_EV_POT_BROKEN);
        EnTuboTrap_DropCollectible(this, globalCtx);
        Actor_Kill(&this->actor);
        return;
    }

    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= ~2;
        if (this->collider.base.at == &player->actor) {
            EnTuboTrap_SpawnFragments(this, globalCtx);
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 40, NA_SE_EV_POT_BROKEN);
            Audio_PlaySoundAtPosition(globalCtx, &player->actor.posRot.pos, 40, 0x83E);
            EnTuboTrap_DropCollectible(this, globalCtx);
            Actor_Kill(&this->actor);
            return;
        }
    }

    if ((this->actor.bgCheckFlags & 8) || (this->actor.bgCheckFlags & 1)) {
        EnTuboTrap_SpawnFragments(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 40, NA_SE_EV_POT_BROKEN);
        EnTuboTrap_DropCollectible(this, globalCtx);
        Actor_Kill(&this->actor);
        return;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tubo_Trap/EnTuboTrap_HandleImpact.s")
#endif

void EnTuboTrap_WaitForProximity(EnTuboTrap* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 targetHeight;

    if (BREG(2) != 0) {
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ わて     ☆☆☆☆☆ %f\n" VT_RST, this->actor.posRot.pos.y);   // "You"
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ おいどん ☆☆☆☆☆ %f\n" VT_RST, player->actor.posRot.pos.y); // "Me"
        osSyncPrintf("\n\n");
    }

    if (this->actor.xzDistanceFromLink < 200.0f && this->actor.posRot.pos.y <= player->actor.posRot.pos.y) {
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, this, ACTORTYPE_ENEMY);
        this->actor.flags |= 1;
        targetHeight = 40.0f + -10.0f * gSaveContext.linkAge;

        this->targetY = player->actor.posRot.pos.y + targetHeight;
        if (this->targetY < this->actor.posRot.pos.y) {
            this->targetY = this->actor.posRot.pos.y + targetHeight;
        }

        this->originPos = this->actor.posRot.pos;
        Audio_PlayActorSound2(this, NA_SE_EV_POT_MOVE_START);
        this->actionFunc = EnTuboTrap_Levitate;
    }
}

void EnTuboTrap_Levitate(EnTuboTrap* this, GlobalContext* globalCtx) {
    this->actor.shape.rot.y += 5000;
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, this->targetY, 0.8f, 3.0f);

    if (fabsf(this->actor.posRot.pos.y - this->targetY) < 10.0f) {
        this->actor.speedXZ = 10.0f;
        this->actor.posRot.rot.y = this->actor.rotTowardsLinkY;
        this->actionFunc = EnTuboTrap_Fly;
    }
}

void EnTuboTrap_Fly(EnTuboTrap* this, GlobalContext* globalCtx) {
    f32 dx = this->originPos.x - this->actor.posRot.pos.x;
    f32 dy = this->originPos.y - this->actor.posRot.pos.y;
    f32 dz = this->originPos.z - this->actor.posRot.pos.z;

    Audio_PlayActorSound2(&this->actor, 0x3037);

    if (240.0f < sqrtf(SQ(dx) + SQ(dy) + SQ(dz))) {
        Math_SmoothScaleMaxF(&this->actor.gravity, -3.0f, 0.2f, 0.5f);
    }

    this->actor.shape.rot.y += 5000;
    EnTuboTrap_HandleImpact(this, globalCtx);
}

void EnTuboTrap_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnTuboTrap* this = THIS;
    s32 pad;

    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 10.0f, 10.0f, 20.0f, 0x1D);
    Actor_SetHeight(&this->actor, 0.0f);
    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider);
}

void EnTuboTrap_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_05017870);
}
