/*
 * File: z_en_boom.c
 * Overlay: ovl_En_Boom
 * Description: Thrown Boomerang. Actor spawns when thrown and is killed when caught.
 */

#include "z_en_boom.h"

#define FLAGS 0x00000030

#define THIS ((EnBoom*)thisx)

void EnBoom_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBoom_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBoom_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBoom_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnBoom_Fly(EnBoom* this, GlobalContext* globalCtx);

const ActorInit En_Boom_InitVars = {
    ACTOR_EN_BOOM,
    ACTORTYPE_MISC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnBoom),
    (ActorFunc)EnBoom_Init,
    (ActorFunc)EnBoom_Destroy,
    (ActorFunc)EnBoom_Update,
    (ActorFunc)EnBoom_Draw,
};

static ColliderQuadInit sQuadInit = {
    { COLTYPE_UNK10, 0x09, 0x00, 0x00, 0x08, COLSHAPE_QUAD },
    { 0x02, { 0x00000010, 0x00, 0x01 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x05, 0x00, 0x00 },
    { 0 },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(unk_1F, 5, ICHAIN_CONTINUE),
    ICHAIN_VEC3S(shape.rot, 0, ICHAIN_STOP),
};

extern Gfx D_0400C808[];

void EnBoom_SetupAction(EnBoom* this, EnBoomActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnBoom_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnBoom* this = THIS;
    EffectBlureInit1 trail;

    this->actor.room = -1;

    Actor_ProcessInitChain(&this->actor, sInitChain);

    trail.p1StartColor[0] = 255;
    trail.p1StartColor[1] = 255;
    trail.p1StartColor[2] = 100;
    trail.p1StartColor[3] = 255;

    trail.p2StartColor[0] = 255;
    trail.p2StartColor[1] = 255;
    trail.p2StartColor[2] = 100;
    trail.p2StartColor[3] = 64;

    trail.p1EndColor[0] = 255;
    trail.p1EndColor[1] = 255;
    trail.p1EndColor[2] = 100;
    trail.p1EndColor[3] = 0;

    trail.p2EndColor[0] = 255;
    trail.p2EndColor[1] = 255;
    trail.p2EndColor[2] = 100;
    trail.p2EndColor[3] = 0;

    trail.elemDuration = 8;
    trail.unkFlag = 0;
    trail.calcMode = 0;

    Effect_Add(globalCtx, &this->effectIndex, EFFECT_BLURE1, 0, 0, &trail);

    Collider_InitQuad(globalCtx, &this->collider);
    Collider_SetQuad(globalCtx, &this->collider, this, &sQuadInit);

    EnBoom_SetupAction(this, EnBoom_Fly);
}

void EnBoom_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnBoom* this = THIS;

    Effect_Delete(globalCtx, this->effectIndex);
    Collider_DestroyQuad(globalCtx, &this->collider);
}

void EnBoom_Fly(EnBoom* this, GlobalContext* globalCtx) {
    Actor* target;
    Player* player;
    s32 collided;
    s16 yawTarget;
    s16 yawDiff;
    s16 pitchTarget;
    s16 pitchDiff;
    s32 pad1;
    f32 distXYZScale;
    f32 distFromLink;
    Actor* hitActor;
    s32 hitDynaID;
    Vec3f hitPoint;
    s32 pad2;

    player = PLAYER;
    target = this->moveTo;

    // If the boomerang is moving toward a targeted actor, handle setting the proper x and y angle to fly toward it.
    if (target != NULL) {
        yawTarget = func_8002DAC0(&this->actor, &target->posRot2.pos);
        yawDiff = this->actor.posRot.rot.y - yawTarget;

        pitchTarget = func_8002DB28(&this->actor, &target->posRot2.pos);
        pitchDiff = this->actor.posRot.rot.x - pitchTarget;

        distXYZScale = (200.0f - Math_Vec3f_DistXYZ(&this->actor.posRot.pos, &target->posRot2.pos)) * 0.005f;
        if (distXYZScale < 0.12f) {
            distXYZScale = 0.12f;
        }

        if ((target != (Actor*)player) && ((target->update == NULL) || (ABS(yawDiff) > 0x4000))) {
            //! @bug  This condition is why the boomerang will randomly fly off in a the down left direction sometimes.
            //      If the actor targetted is not Link and the difference between the 2 y angles is greater than 0x4000,
            //      the moveTo pointer is nulled and it flies off in a seemingly random direction.
            this->moveTo = NULL;
        } else {
            Math_ScaledStepToS(&this->actor.posRot.rot.y, yawTarget, (s16)(ABS(yawDiff) * distXYZScale));
            Math_ScaledStepToS(&this->actor.posRot.rot.x, pitchTarget, (s16)(ABS(pitchDiff) * distXYZScale));
        }
    }

    // Set xyz speed, move forward, and play the boomerang sound
    func_8002D9A4(&this->actor, 12.0f);
    Actor_MoveForward(&this->actor);
    func_8002F974(this, NA_SE_IT_BOOMERANG_FLY - SFX_FLAG);

    // If the boomerang collides with EnItem00 or a Skulltula token, set grabbed pointer to pick it up
    collided = this->collider.base.atFlags & 0x2;
    collided = !!collided;
    if (collided) {
        if (((this->collider.base.at->id == ACTOR_EN_ITEM00) || (this->collider.base.at->id == ACTOR_EN_SI))) {
            this->grabbed = this->collider.base.at;
            if (this->collider.base.at->id == ACTOR_EN_SI) {
                this->collider.base.at->flags |= 0x2000;
            }
        }
    }

    // Decrement the return timer and check if its 0. If it is, check if Link can catch it and handle accordingly.
    // Otherwise handle grabbing and colliding.
    if (DECR(this->returnTimer) == 0) {
        distFromLink = Math_Vec3f_DistXYZ(&this->actor.posRot.pos, &player->actor.posRot2.pos);
        this->moveTo = player;

        // If the boomerang is less than 40 units away from Link, he can catch it.
        if (distFromLink < 40.0f) {
            target = this->grabbed;
            if (target != NULL) {
                Math_Vec3f_Copy(&target->posRot.pos, &player->actor.posRot.pos);

                // If the grabbed actor is EnItem00 (HP/Key etc) set gravity and flags so it falls in front of Link.
                // Otherwise if its a Skulltula Token, just set flags so he collides with it to collect it.
                if (target->id == ACTOR_EN_ITEM00) {
                    target->gravity = -0.9f;
                    target->bgCheckFlags &= ~0x03;
                } else {
                    target->flags &= ~0x2000;
                }
            }
            // Set player flags and kill the boomerang beacause Link caught it.
            player->stateFlags1 &= ~0x02000000;
            Actor_Kill(&this->actor);
        }
    } else {
        collided = this->collider.base.atFlags & 0x2;
        collided = !!collided;
        if (collided) {
            // Copy the position from the prevous frame to the boomerang to start the bounce back.
            Math_Vec3f_Copy(&this->actor.posRot.pos, &this->actor.pos4);
        } else {
            collided = BgCheck_EntityLineTest1(&globalCtx->colCtx, &this->actor.pos4, &this->actor.posRot.pos,
                                               &hitPoint, &this->actor.wallPoly, 1, 1, 1, 1, &hitDynaID);

            if (collided) {
                // If the boomerang collides with something and its is a Jabu Object actor with params equal to 0, then
                // set collided to 0 so that the boomerang will go through the wall.
                // Otherwise play a clank sound and keep collided set to bounce back.
                if (func_8002F9EC(globalCtx, &this->actor, this->actor.wallPoly, hitDynaID, &hitPoint) != 0 ||
                    (hitDynaID != BGCHECK_SCENE &&
                     ((hitActor = DynaPoly_GetActor(&globalCtx->colCtx, hitDynaID)) != NULL) &&
                     hitActor->id == ACTOR_BG_BDAN_OBJECTS && hitActor->params == 0)) {
                    collided = false;
                } else {
                    func_80062D60(globalCtx, &hitPoint);
                }
            }
        }

        // If the boomerang needs to bounce back, set x and y angle accordingly.
        // Set timer to 0 and set return actor to player so it goes back to Link.
        if (collided) {
            this->actor.posRot.rot.x = -this->actor.posRot.rot.x;
            this->actor.posRot.rot.y += 0x8000;
            this->moveTo = player;
            this->returnTimer = 0;
        }
    }

    // If the actor the boomerang is holding has a null update function, set grabbed to null.
    // Otherwise, copy the position from the boomerang to the actor to move it.
    target = this->grabbed;
    if (target != NULL) {
        if (target->update == NULL) {
            this->grabbed = NULL;
        } else {
            Math_Vec3f_Copy(&target->posRot.pos, &this->actor.posRot.pos);
        }
    }
}

void EnBoom_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnBoom* this = THIS;
    Player* player = PLAYER;

    if (!(player->stateFlags1 & 0x20000000)) {
        this->actionFunc(this, globalCtx);
        Actor_SetHeight(&this->actor, 0.0f);
        this->activeTimer = this->activeTimer + 1;
    }
}

void EnBoom_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static Vec3f sMultVec1 = { -960.0f, 0.0f, 0.0f };
    static Vec3f sMultVec2 = { 960.0f, 0.0f, 0.0f };
    EnBoom* this = THIS;
    Vec3f vec1;
    Vec3f vec2;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_boom.c", 567);

    Matrix_RotateY(this->actor.posRot.rot.y * 0.0000958738f, MTXMODE_APPLY);
    Matrix_RotateZ(0.7669904f, MTXMODE_APPLY);
    Matrix_RotateX(this->actor.posRot.rot.x * 0.0000958738f, MTXMODE_APPLY);
    Matrix_MultVec3f(&sMultVec1, &vec1);
    Matrix_MultVec3f(&sMultVec2, &vec2);

    if (func_80090480(globalCtx, &this->collider, &this->boomerangInfo, &vec1, &vec2) != 0) {
        EffectBlure_AddVertex(Effect_GetByIndex(this->effectIndex), &vec1, &vec2);
    }

    func_80093D18(globalCtx->state.gfxCtx);
    Matrix_RotateY((this->activeTimer * 12000) * 0.0000958738f, MTXMODE_APPLY);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_boom.c", 601),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_0400C808);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_boom.c", 604);
}
