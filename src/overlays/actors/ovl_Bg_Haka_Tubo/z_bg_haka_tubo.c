/*
 * File: z_bg_haka_tubo.c
 * Overlay: ovl_Bg_Haka_Tubo
 * Description: Shadow Temple Giant Skull Jar
 */

#include "z_bg_haka_tubo.h"

#define FLAGS 0x00000010

#define THIS ((BgHakaTubo*)thisx)

void BgHakaTubo_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHakaTubo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHakaTubo_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHakaTubo_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgHakaTubo_Idle(BgHakaTubo* this, GlobalContext* globalCtx);
void BgHakaTubo_DropCollectible(BgHakaTubo* this, GlobalContext* globalCtx);

const ActorInit Bg_Haka_Tubo_InitVars = {
    ACTOR_BG_HAKA_TUBO,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HAKA_OBJECTS,
    sizeof(BgHakaTubo),
    (ActorFunc)BgHakaTubo_Init,
    (ActorFunc)BgHakaTubo_Destroy,
    (ActorFunc)BgHakaTubo_Update,
    (ActorFunc)BgHakaTubo_Draw,
};

static ColliderCylinderInit sPotColliderInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000008, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 25, 60, 30, { 0, 0, 0 } },
};

static ColliderCylinderInit sFlamesColliderInit = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x09, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x20000000, 0x01, 0x04 }, { 0x00000008, 0x00, 0x00 }, 0x19, 0x00, 0x01 },
    { 60, 45, 235, { 0, 0, 0 } },
};

static s32 sPotsDestroyed = 0;

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

extern UNK_TYPE D_060108B8;
extern Gfx D_0600FE40[];
extern UNK_TYPE D_0400CD80;
extern Gfx D_040184B0[];

void BgHakaTubo_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaTubo* this = THIS;
    s32 pad;
    s32 sp24 = 0;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyInfo_SetActorMove(&this->dyna, DPM_UNK3);
    DynaPolyInfo_Alloc(&D_060108B8, &sp24);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp24);
    Collider_InitCylinder(globalCtx, &this->potCollider);
    Collider_SetCylinder(globalCtx, &this->potCollider, &this->dyna.actor, &sPotColliderInit);
    Collider_InitCylinder(globalCtx, &this->flamesCollider);
    Collider_SetCylinder(globalCtx, &this->flamesCollider, &this->dyna.actor, &sFlamesColliderInit);
    this->fireScroll = Math_Rand_ZeroOne() * 15.0f;
    sPotsDestroyed = 0;
    this->actionFunc = BgHakaTubo_Idle;
}

void BgHakaTubo_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaTubo* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    Collider_DestroyCylinder(globalCtx, &this->potCollider);
    Collider_DestroyCylinder(globalCtx, &this->flamesCollider);
}

void BgHakaTubo_Idle(BgHakaTubo* this, GlobalContext* globalCtx) {
    static Vec3f sZeroVector = { 0.0f, 0.0f, 0.0f };
    Vec3f pos;

    if (this->dyna.actor.room == 12) { // 3 spinning pots room in Shadow Temple
        this->dyna.actor.shape.rot.y += 0x180;
        this->dyna.actor.posRot.pos.x = Math_Sins(this->dyna.actor.shape.rot.y - 0x4000) * 145.0f + -5559.0f;
        this->dyna.actor.posRot.pos.z = Math_Coss(this->dyna.actor.shape.rot.y - 0x4000) * 145.0f + -1587.0f;
    }
    // Colliding with flame circle
    if (this->flamesCollider.base.atFlags & 2) {
        this->flamesCollider.base.atFlags &= ~2;
        func_8002F71C(globalCtx, &this->dyna.actor, 5.0f, this->dyna.actor.yawTowardsLink, 5.0f);
    }
    // Colliding with hitbox inside the pot
    if (this->potCollider.base.acFlags & 2) {
        this->potCollider.base.acFlags &= ~2;
        // If the colliding actor is within a 50 unit radius and 50 unit height cylinder centered
        // on the actor's position, break the pot
        if (func_8002DBB0(&this->dyna.actor, &this->potCollider.base.ac->posRot.pos) < 50.0f &&
            (this->potCollider.base.ac->posRot.pos.y - this->dyna.actor.posRot.pos.y) < 50.0f) {
            pos.x = this->dyna.actor.posRot.pos.x;
            pos.z = this->dyna.actor.posRot.pos.z;
            pos.y = this->dyna.actor.posRot.pos.y + 80.0f;
            EffectSsBomb2_SpawnLayered(globalCtx, &pos, &sZeroVector, &sZeroVector, 100, 45);
            Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.posRot.pos, 50, NA_SE_EV_BOX_BREAK);
            EffectSsHahen_SpawnBurst(globalCtx, &pos, 20.0f, 0, 350, 100, 50, OBJECT_HAKA_OBJECTS, 40, &D_0400CD80);
            this->dropTimer = 5;
            this->dyna.actor.draw = NULL;
            Actor_SetScale(&this->dyna.actor, 0.0f);
            this->actionFunc = BgHakaTubo_DropCollectible;
        }
    } else {
        Collider_CylinderUpdate(&this->dyna.actor, &this->flamesCollider);
        Collider_CylinderUpdate(&this->dyna.actor, &this->potCollider);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->potCollider.base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->flamesCollider.base);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->flamesCollider.base);
    }
}

void BgHakaTubo_DropCollectible(BgHakaTubo* this, GlobalContext* globalCtx) {
    EnItem00* collectible;
    f32 rnd;
    Vec3f spawnPos;
    s32 i;
    s32 collectibleParams;

    this->dropTimer--;
    if (this->dropTimer == 0) { // Creates a delay between destroying the pot and dropping the collectible
        spawnPos.x = this->dyna.actor.posRot.pos.x;
        spawnPos.y = this->dyna.actor.posRot.pos.y + 200.0f;
        spawnPos.z = this->dyna.actor.posRot.pos.z;
        if (this->dyna.actor.room == 12) { // 3 spinning pots room in Shadow Temple
            rnd = Math_Rand_ZeroOne();
            sPotsDestroyed++;
            if (sPotsDestroyed == 3) {
                // All 3 pots destroyed
                collectibleParams = -1;
                func_80078884(NA_SE_SY_CORRECT_CHIME);
                // Drop rupees
                for (i = 0; i < 9; i++) {
                    collectible = Item_DropCollectible(globalCtx, &spawnPos, i % 3);
                    if (collectible != NULL) {
                        collectible->actor.velocity.y = 15.0f;
                        collectible->actor.posRot.rot.y = this->dyna.actor.shape.rot.y + (i * 0x1C71);
                    }
                }
            } else if (rnd < 0.2f) {
                // Unlucky, no reward and spawn keese
                collectibleParams = -1;
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_FIREFLY, this->dyna.actor.posRot.pos.x,
                            this->dyna.actor.posRot.pos.y + 80.0f, this->dyna.actor.posRot.pos.z, 0,
                            this->dyna.actor.shape.rot.y, 0, 2);
                func_80078884(NA_SE_SY_ERROR);
            } else {
                // Random rewards
                if (rnd < 0.4f) {
                    collectibleParams = ITEM00_BOMBS_A;
                } else if (rnd < 0.6f) {
                    collectibleParams = ITEM00_MAGIC_LARGE;
                } else if (rnd < 0.8f) {
                    collectibleParams = ITEM00_MAGIC_SMALL;
                } else {
                    collectibleParams = ITEM00_ARROWS_SMALL;
                }
                func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
            }
        } else if (Flags_GetCollectible(globalCtx, this->dyna.actor.params) != 0) {
            // If small key already collected, drop recovery heart instead
            collectibleParams = ITEM00_HEART;
            func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
        } else {
            // Drops a small key and sets a collect flag
            collectibleParams = ((this->dyna.actor.params & 0x3F) << 8) | ITEM00_SMALL_KEY;
            func_80078884(NA_SE_SY_CORRECT_CHIME);
        }
        if (collectibleParams != -1) {
            collectible = Item_DropCollectible(globalCtx, &spawnPos, collectibleParams);
            if (collectible != NULL) {
                collectible->actor.velocity.y = 15.0f;
                collectible->actor.posRot.rot.y = this->dyna.actor.shape.rot.y;
            }
        }
        Actor_Kill(&this->dyna.actor);
    }
}

void BgHakaTubo_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaTubo* this = THIS;

    this->actionFunc(this, globalCtx);
    this->fireScroll++;
}

void BgHakaTubo_DrawFlameCircle(BgHakaTubo* this, GlobalContext* globalCtx) {
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_haka_tubo.c", 476);

    func_80093D84(globalCtx->state.gfxCtx);
    Matrix_Translate(this->dyna.actor.posRot.pos.x, this->dyna.actor.posRot.pos.y + 235.0f,
                     this->dyna.actor.posRot.pos.z, MTXMODE_NEW);
    Matrix_RotateY(this->dyna.actor.shape.rot.y * 0.0000958738f, MTXMODE_APPLY);
    Matrix_Scale(0.07f, 0.04f, 0.07f, MTXMODE_APPLY);
    if (1) {}
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 0, 170, 255, 255);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0, 0, 255, 255);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, this->fireScroll & 127, 0, 32, 64, 1, 0,
                                (this->fireScroll * -15) & 0xFF, 32, 64));
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_haka_tubo.c", 497),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_040184B0);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_haka_tubo.c", 501);
}

void BgHakaTubo_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaTubo* this = THIS;

    Gfx_DrawDListOpa(globalCtx, D_0600FE40);
    BgHakaTubo_DrawFlameCircle(this, globalCtx);
}
