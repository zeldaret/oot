/*
 * File: z_en_boom.c
 * Overlay: ovl_En_Boom
 * Description: Thrown Boomerang. Actor spawns when thrown and is killed when caught.
 */

#include "z_en_boom.h"

#define ROOM 0x00
#define FLAGS 0x00000030

static void EnBoom_SetupAction(EnBoom* this, ActorFunc* actionFunc);
static void EnBoom_Init(EnBoom* this, GlobalContext* globalCtx);
static void EnBoom_Destroy(EnBoom* this, GlobalContext* globalCtx);
static void EnBoom_Fly(EnBoom* this, GlobalContext* globalCtx);
static void EnBoom_Update(EnBoom* this, GlobalContext* globalCtx);
static void EnBoom_Draw(EnBoom* this, GlobalContext* globalCtx);

const ActorInit En_Boom_InitVars = {
    ACTOR_EN_BOOM,
    ACTORTYPE_MISC,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnBoom),
    (ActorFunc)EnBoom_Init,
    (ActorFunc)EnBoom_Destroy,
    (ActorFunc)EnBoom_Update,
    (ActorFunc)EnBoom_Draw,
};

// Related to collision, should be moved somewhere else when collision_check is decompiled.
// Seems to be made up of a bunch of substructs, but I didnt do too much digging.
// This is probably not accurate.
typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u16 pad_06;
    u8 unk_08;
    u8 pad_09;
    u8 pad_0A;
    u8 pad_0B;
    u32 unk_0C;
    u8 unk_10;
    u8 unk_11;
    u16 pad_12;
    u32 unk_14;
    u8 unk_18;
    u8 unk_19;
    u16 pad_1A;
    u8 unk_1C;
    u8 unk_1D;
    u8 unk_1E;
    u8 pad_1F;
    u32 unk_20;
    u32 unk_24;
    u32 unk_28;
    u32 unk_2C;
    u32 unk_30;
    u32 unk_34;
    u32 unk_38;
    u32 unk_3C;
    u32 unk_40;
    u32 unk_44;
    u32 unk_48;
    u32 unk_4C;
} unkCollision; // size = 0x50

static unkCollision col = {
    0x0A,       0x09,       0x00,       0x00,       0x08,       0x03,       0x0000,     0x02,       0x00,
    0x00,       0x00,       0x00000010, 0x00,       0x01,       0x0000,     0xFFCFFFFF, 0x00,       0x00,
    0x0000,     0x05,       0x00,       0x00,       0x00,       0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
};

static InitChainEntry initChain[] = {
    ICHAIN_S8(unk_1F, 5, ICHAIN_CONTINUE),
    ICHAIN_VEC3S(shape.rot, 0, ICHAIN_STOP),
};

static Vec3f mtxSrc1 = { -960.0f, 0.0f, 0.0f };
static Vec3f mtxSrc2 = { 960.0f, 0.0f, 0.0f };

extern D_0400C808;

static void EnBoom_SetupAction(EnBoom* this, ActorFunc* actionFunc) {
    this->actionFunc = actionFunc;
}

static void EnBoom_Init(EnBoom* this, GlobalContext* globalCtx) {
    u32 pad;
    TrailEffect trail;

    this->actor.room = -1;

    Actor_ProcessInitChain(&this->actor, initChain);

    trail.p1Start.r = 0xFF;
    trail.p1Start.g = 0xFF;
    trail.p1Start.b = 0x64;
    trail.p1Start.a = 0xFF;

    trail.p2Start.r = 0xFF;
    trail.p2Start.g = 0xFF;
    trail.p2Start.b = 0x64;
    trail.p2Start.a = 0x40;

    trail.p1End.r = 0xFF;
    trail.p1End.g = 0xFF;
    trail.p1End.b = 0x64;
    trail.p1End.a = 0x00;

    trail.p2End.r = 0xFF;
    trail.p2End.g = 0xFF;
    trail.p2End.b = 0x64;
    trail.p2End.a = 0x00;

    trail.unk_194 = 0x00000008;
    trail.unk_198 = 0x00000000;
    trail.unk_19C = 0x00000000;

    Effect_Add(globalCtx, &this->effect, 1, 0, 0, &trail);

    func_8005D018(globalCtx, &this->collider);
    func_8005D104(globalCtx, &this->collider, this, &col);

    EnBoom_SetupAction(this, &EnBoom_Fly);
}

static void EnBoom_Destroy(EnBoom* this, GlobalContext* globalCtx) {
    func_8002709C(globalCtx, this->effect);
    func_8005D060(globalCtx, &this->collider);
}

static void EnBoom_Fly(EnBoom* this, GlobalContext* globalCtx) {
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
    DynaPolyActor* hitActor;
    u32 hitDynaID;
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

        distXYZScale = ((200.0f - Math_Vec3f_DistXYZ(&this->actor.posRot.pos, &target->posRot2.pos)) * 0.005f);
        if (distXYZScale < 0.12f) {
            distXYZScale = 0.12f;
        }

        if ((target != (Actor*)player) && ((target->update == NULL) || (ABS(yawDiff) > 0x4000))) {
            // BUG: This condition is why the boomerang will randomly fly off in a the down left direction sometimes.
            //      If the actor targetted is not Link and the difference between the 2 y angles is greater than 0x4000,
            //      the moveTo pointer is nulled and it flies off in a seemingly random direction.
            this->moveTo = NULL;
        } else {
            Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, yawTarget, (s16)(ABS(yawDiff) * distXYZScale));
            Math_ApproxUpdateScaledS(&this->actor.posRot.rot.x, pitchTarget, (s16)(ABS(pitchDiff) * distXYZScale));
        }
    }

    // Set xyz speed, move forward, and play the boomerang sound
    func_8002D9A4(&this->actor, 12.0f);
    Actor_MoveForward(&this->actor);
    func_8002F974(this, 0x1010);

    // If the boomerang collides with EnItem00 or a Skulltula token, set grabbed pointer to pick it up
    collided = (this->collider.colliderFlags & 0x2);
    collided = (!!(collided));
    if (collided) {
        if (((this->collider.at->id == ACTOR_EN_ITEM00) || (this->collider.at->id == ACTOR_EN_SI))) {
            this->grabbed = this->collider.at;
            if (this->collider.at->id == ACTOR_EN_SI) {
                this->collider.at->flags |= 0x2000;
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
        collided = (this->collider.colliderFlags & 0x2);
        collided = (!!(collided));
        if (collided) {
            // Copy the position from the prevous frame to the boomerang to start the bounce back.
            Math_Vec3f_Copy(&this->actor.posRot.pos, &this->actor.pos4);
        } else {
            collided = func_8003DE84(&globalCtx->colCtx, &this->actor.pos4, &this->actor.posRot.pos, &hitPoint,
                                     &this->actor.wallPoly, 1, 1, 1, 1, &hitDynaID);

            if (collided != 0) {
                // If the boomerang coolides with something and its is a Jabu Object actor with params equal to 0, then
                // set collided to 0 so that the boomerang will go through the wall.
                // Otherwise play a clank sound and keep collided set to bounce back.
                if ((func_8002F9EC(globalCtx, &this->actor, this->actor.wallPoly, hitDynaID, &hitPoint) != 0) ||
                    ((hitDynaID != 0x32) &&
                     ((hitActor = DynaPolyInfo_GetActor(&globalCtx->colCtx, hitDynaID)) != NULL) &&
                     (hitActor->actor.id == ACTOR_BG_BDAN_OBJECTS) && (hitActor->actor.params == 0))) {
                    collided = 0;
                } else {
                    func_80062D60(globalCtx, &hitPoint);
                }
            }
        }

        // If the boomerang needs to bounce back, set x and y angle accordingly.
        // Set timer to 0 and set return actor to player so it goes back to Link.
        if (collided != 0) {
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

static void EnBoom_Update(EnBoom* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    if (!(player->stateFlags1 & 0x20000000)) {
        this->actionFunc(this, globalCtx);
        Actor_SetHeight(&this->actor, 0.0f);
        this->activeTimer = this->activeTimer + 1;
    }
}

static void EnBoom_Draw(EnBoom* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f mtxDest1;
    Vec3f mtxDest2;
    GraphicsContext* gfxCtx;
    Gfx* gfxArr[4];

    gfxCtx = globalCtx->state.gfxCtx;
    func_800C6AC4(gfxArr, globalCtx->state.gfxCtx, "../z_en_boom.c", 567);
    Matrix_RotateY(this->actor.posRot.rot.y * 0.0000958738f, MTXMODE_APPLY);
    Matrix_RotateZ(0.7669904f, MTXMODE_APPLY);
    Matrix_RotateX(this->actor.posRot.rot.x * 0.0000958738f, MTXMODE_APPLY);
    Matrix_MultVec3f(&mtxSrc1, &mtxDest1);
    Matrix_MultVec3f(&mtxSrc2, &mtxDest2);

    if (func_80090480(globalCtx, &this->collider, &this->unk_1DC, &mtxDest1, &mtxDest2) != 0) {
        func_8001FDF0(func_80026B0C(this->effect), &mtxDest1, &mtxDest2);
    }

    func_80093D18(globalCtx->state.gfxCtx);
    Matrix_RotateY((this->activeTimer * 12000) * 0.0000958738f, MTXMODE_APPLY);

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_boom.c", 601),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_0400C808);

    func_800C6B54(gfxArr, globalCtx->state.gfxCtx, "../z_en_boom.c", 604);
}
