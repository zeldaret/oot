/*
 * File: z_en_part.c
 * Overlay: ovl_En_Part
 * Description: Effect spawner for enemies' death
 */

#include "z_en_part.h"

#define FLAGS 0x00000010

#define THIS ((EnPart*)thisx)

void EnPart_Init(Actor* thisx, GlobalContext* globalCtx);
void EnPart_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnPart_Update(Actor* thisx, GlobalContext* globalCtx);
void EnPart_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Part_InitVars = {
    ACTOR_EN_PART,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnPart),
    (ActorFunc)EnPart_Init,
    (ActorFunc)EnPart_Destroy,
    (ActorFunc)EnPart_Update,
    (ActorFunc)EnPart_Draw,
};

extern UNK_TYPE D_06001300[];
extern UNK_TYPE D_06001700[];
extern UNK_TYPE D_06001900[];
extern UNK_TYPE D_06001B00[];
extern UNK_TYPE D_06001F00[];
extern UNK_TYPE D_06002100[];
extern Gfx D_06002FF0[];
extern Gfx D_06015380[];

void EnPart_Init(Actor* thisx, GlobalContext* globalCtx) {
}

void EnPart_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void func_80ACDDE8(EnPart* this, GlobalContext* globalCtx) {
    f32 sign = 1.0f;

    this->action = 1;
    this->actor.posRot.rot.y = Math_Rand_ZeroOne() * 20000.0f;

    switch (this->actor.params) {
        case 0:
            this->actor.velocity.y = 0.0f;
            this->actor.gravity = -0.3f - Math_Rand_ZeroOne() * 0.5f;
            this->rotZSpeed = 0.3f;
            this->timer = 25;
            this->actor.speedXZ = (Math_Rand_ZeroOne() - 0.5f) * 2.0f;
            break;
        case 13:
            this->timer = 400;
        case 12:
            this->actor.speedXZ = Math_Rand_CenteredFloat(6.0f);
            this->actor.initPosRot.pos = this->actor.posRot.pos;
            this->timer += 60;
            this->actor.velocity.y = Math_Rand_ZeroOne() * 5.0f + 4.0f;
            this->actor.gravity = -0.6f - Math_Rand_ZeroOne() * 0.5f;
            this->rotZSpeed = 0.15f;
            break;
        case 14:
            EffectSsEnFire_SpawnVec3f(globalCtx, &this->actor, &this->actor.posRot.pos, 40, 0x8001, 0, -1);
        case 1:
        case 4:
        case 9:
        case 10:
            this->timer += (s16)(Math_Rand_ZeroOne() * 17.0f) + 5;
        case 2:
            this->actor.velocity.y = Math_Rand_ZeroOne() * 5.0f + 4.0f;
            this->actor.gravity = -0.6f - Math_Rand_ZeroOne() * 0.5f;
            this->rotZSpeed = 0.15f;
            break;
        case 11:
            EffectSsEnFire_SpawnVec3f(globalCtx, &this->actor, &this->actor.posRot.pos, 40, 0x8001, 0, -1);
        case 3:
            this->actor.speedXZ = (Math_Rand_ZeroOne() - 0.5f) * 3.0f;
            this->timer = (s16)(Math_Rand_ZeroOne() * 17.0f) + 10;
            this->actor.velocity.y = Math_Rand_ZeroOne() * 3.0f + 8.0f;
            this->actor.gravity = -0.6f - Math_Rand_ZeroOne() * 0.3f;
            this->rotZSpeed = 0.15f;
            break;
        case 5:
        case 6:
        case 7:
        case 8:
            this->actor.posRot.rot.y = this->actor.parent->shape.rot.y;
            if (this->displayList == D_06015380) {
                sign = -1.0f;
            }
            this->actor.velocity.y = 0.0f;
            this->actor.speedXZ = 6.0f * sign;
            this->actor.gravity = -1.2f;
            this->rotZSpeed = 0.15f * sign;
            ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
            this->timer = 18;
            break;
    }
}

void func_80ACE13C(EnPart* this, GlobalContext* globalCtx) {
    s32 i;
    Vec3f pos;
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.0f, 0.0f };
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };

    if ((this->actor.params == 12) || (this->actor.params == 13)) {
        func_8002E4B4(globalCtx, &this->actor, 5.0f, 15.0f, 0.0f, 0x1D);

        if ((this->actor.bgCheckFlags & 1) || (this->actor.posRot.pos.y <= this->actor.groundY)) {
            this->action = 4;
            this->actor.speedXZ = 0.0f;
            this->actor.gravity = 0.0f;
            this->actor.velocity.y = 0.0f;
        }

        if ((this->actor.params == 13) && (this->actor.parent != NULL) && (this->actor.parent->update == NULL)) {
            this->actor.parent = NULL;
        }
    } else if (this->timer <= 0) {
        switch (this->actor.params) {
            case 1:
            case 9:
            case 10:
            case 14:
                EffectSsDeadDb_Spawn(globalCtx, &this->actor.posRot.pos, &zeroVec, &zeroVec,
                                     (s16)(this->actor.scale.y * 100.0f) * 40, 7, 255, 255, 255, 255, 0, 255, 0, 1, 9,
                                     true);
                break;
            case 3:
            case 11:
                EffectSsDeadDb_Spawn(globalCtx, &this->actor.posRot.pos, &zeroVec, &zeroVec,
                                     (s16)(this->actor.scale.y * 100.0f) * 40, 7, 255, 255, 255, 255, 0, 0, 255, 1, 9,
                                     true);
                break;
            case 4:
                for (i = 7; i >= 0; i--) {
                    pos.x = this->actor.posRot.pos.x + Math_Rand_CenteredFloat(60.0f);
                    pos.y = this->actor.posRot.pos.y + this->actor.shape.unk_08 * this->actor.scale.y +
                            Math_Rand_CenteredFloat(50.0f);
                    pos.z = this->actor.posRot.pos.z + Math_Rand_CenteredFloat(60.0f);
                    velocity.y = Math_Rand_ZeroOne() + 1.0f;
                    EffectSsDtBubble_SpawnColorProfile(globalCtx, &pos, &velocity, &accel, Math_Rand_S16Offset(80, 100),
                                                       25, 0, true);
                }
                break;
            case 5:
            case 6:
            case 7:
            case 8:
                for (i = 4; i >= 0; i--) {
                    pos.x = this->actor.posRot.pos.x + Math_Rand_CenteredFloat(25.0f);
                    pos.y = this->actor.posRot.pos.y + Math_Rand_CenteredFloat(40.0f);
                    pos.z = this->actor.posRot.pos.z + Math_Rand_CenteredFloat(25.0f);
                    EffectSsDeadDb_Spawn(globalCtx, &pos, &zeroVec, &zeroVec, 40, 7, 255, 255, 255, 255, 0, 0, 255, 1,
                                         9, true);
                }
                break;
        }

        Actor_Kill(&this->actor);
        return;
    }

    this->timer--;
    this->rotZ += this->rotZSpeed;
}

void func_80ACE5B8(EnPart* this, GlobalContext* globalCtx) {
    this->action = 3;
}

void func_80ACE5C8(EnPart* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->timer--;
    if (this->timer == 0) {
        Actor_Kill(&this->actor);
    } else {
        Vec3f velocity = { 0.0f, 8.0f, 0.0f };
        Vec3f accel = { 0.0f, -1.5f, 0.0f };

        if (sqrt(this->actor.xyzDistFromLinkSq) <= 40.0f) {
            u8 prevInvincibilityTimer = player->invincibilityTimer;
            if (player->invincibilityTimer <= 0) {
                if (player->invincibilityTimer <= -40) {
                    player->invincibilityTimer = 0;
                } else {
                    player->invincibilityTimer = 0;
                    globalCtx->damagePlayer(globalCtx, -8);
                }
            }
            func_8002F71C(globalCtx, this->actor.parent, (650.0f - this->actor.parent->xzDistFromLink) * 0.04f + 4.0f,
                          this->actor.parent->posRot.rot.y, 8.0f);
            player->invincibilityTimer = prevInvincibilityTimer;
            this->timer = 1;
        }

        func_80033480(globalCtx, &this->actor.posRot.pos, 0.0f, 1, 300, 150, 1);
        velocity.x = Math_Rand_CenteredFloat(16.0f);
        EffectSsHahen_Spawn(globalCtx, &this->actor.posRot.pos, &velocity, &accel, 20,
                            (s32)((Math_Rand_ZeroOne() * 5.0f + 12.0f) * 2), -1, 10, NULL);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_MONBLIN_GNDWAVE - SFX_FLAG);
    }
}

void func_80ACE7E8(EnPart* this, GlobalContext* globalCtx) {
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };

    if ((this->actor.parent == NULL) || (this->actor.parent->update == NULL)) {
        EffectSsDeadDb_Spawn(globalCtx, &this->actor.posRot.pos, &zeroVec, &zeroVec,
                             (s16)(this->actor.scale.y * 100.0f) * 40, 7, 255, 255, 255, 255, 0, 255, 0, 1, 9, true);
        Actor_Kill(&this->actor);
        return;
    }

    if (this->timer == 0) {
        f32 diffsSum =
            Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.x, this->actor.initPosRot.pos.x, 1.0f, 5.0f, 0.0f);
        diffsSum += Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, 1.0f, 5.0f, 0.0f);
        diffsSum += Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z, this->actor.initPosRot.pos.z, 1.0f, 5.0f, 0.0f);
        diffsSum += Math_SmoothScaleMaxMinF(&this->rotZ, 0.0f, 1.0f, 0.25f, 0.0f);
        if (diffsSum == 0.0f) {
            this->actor.parent->initPosRot.rot.x--;
            this->timer--;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_STAL_DAMAGE);
        }
    } else if (this->timer > 0) {
        this->timer--;
    }

    if (this->actor.parent->colChkInfo.health != 0) {
        Actor_Kill(&this->actor);
    }
}

void EnPart_Update(Actor* thisx, GlobalContext* globalCtx) {
    static EnPartActionFunc sActionFuncs[] = {
        func_80ACDDE8, func_80ACE13C, func_80ACE5B8, func_80ACE5C8, func_80ACE7E8,
    };

    EnPart* this = THIS;

    Actor_MoveForward(&this->actor);

    if ((this->actor.params > 4 && this->actor.params < 9) || this->actor.params < 0) {
        func_8002E4B4(globalCtx, &this->actor, 5.0f, 15.0f, 0.0f, 5);
        if (this->actor.params >= 0) {
            Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
            if (thisx->bgCheckFlags & 1) {
                thisx->bgCheckFlags &= ~1;
                thisx->velocity.y = 6.0f;
            }
        }
    }

    sActionFuncs[this->action](this, globalCtx);
}

Gfx* func_80ACEAC0(GraphicsContext* gfxCtx, u8 primR, u8 primG, u8 primB, u8 envR, u8 envG, u8 envB) {
    Gfx* dList;
    Gfx* dListHead;

    dList = Graph_Alloc(gfxCtx, 4 * sizeof(Gfx));
    dListHead = dList;

    gDPPipeSync(dListHead++);
    gDPSetPrimColor(dListHead++, 0, 0, primR, primG, primB, 255);
    gDPSetEnvColor(dListHead++, envR, envG, envB, 255);
    gSPEndDisplayList(dListHead++);

    return dList;
}

void EnPart_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnPart* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_part.c", 647);

    if (thisx->params > 0) {
        Matrix_RotateZ(this->rotZ, MTXMODE_APPLY);
    }

    func_80093D18(globalCtx->state.gfxCtx);
    func_8002EBCC(thisx, globalCtx, 0);

    if (thisx->params == 5) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, func_80ACEAC0(globalCtx->state.gfxCtx, 245, 255, 205, 30, 35, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, func_80ACEAC0(globalCtx->state.gfxCtx, 185, 135, 25, 20, 20, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, func_80ACEAC0(globalCtx->state.gfxCtx, 255, 255, 255, 30, 40, 20));
    } else if (thisx->params == 6) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, func_80ACEAC0(globalCtx->state.gfxCtx, 55, 65, 55, 0, 0, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, func_80ACEAC0(globalCtx->state.gfxCtx, 205, 165, 75, 25, 20, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, func_80ACEAC0(globalCtx->state.gfxCtx, 205, 165, 75, 25, 20, 0));
    } else if (thisx->params == 7) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, func_80ACEAC0(globalCtx->state.gfxCtx, 255, 255, 255, 180, 180, 180));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, func_80ACEAC0(globalCtx->state.gfxCtx, 225, 205, 115, 25, 20, 0));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, func_80ACEAC0(globalCtx->state.gfxCtx, 225, 205, 115, 25, 20, 0));
    } else if ((thisx->params == 9) && (this->displayList == D_06002FF0)) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_06001300));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(D_06001700));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, SEGMENTED_TO_VIRTUAL(D_06001900));
    } else if ((thisx->params == 10) && (this->displayList == D_06002FF0)) {
        gSPSegment(oGfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_06001B00));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(D_06001F00));
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, SEGMENTED_TO_VIRTUAL(D_06002100));
    }

    if (this->displayList != NULL) {
        gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_part.c", 696),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyOpa.p++, this->displayList);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_part.c", 700);
}
