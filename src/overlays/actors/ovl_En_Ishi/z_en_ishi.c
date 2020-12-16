/*
 * File: z_en_ishi.c
 * Overlay: ovl_En_Ishi
 * Description: Small and large gray rocks
 */

#include "z_en_ishi.h"
#include "overlays/effects/ovl_Effect_Ss_Kakera/z_eff_ss_kakera.h"

#include "vt.h"

#define FLAGS 0x00800000

#define THIS ((EnIshi*)thisx)

void EnIshi_Init(Actor* thisx, GlobalContext* globalCtx);
void EnIshi_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnIshi_Update(Actor* thisx, GlobalContext* globalCtx);
void EnIshi_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnIshi_SetupWait(EnIshi* this);
void EnIshi_Wait(EnIshi* this, GlobalContext* globalCtx);
void EnIshi_SetupLiftedUp(EnIshi* this);
void EnIshi_LiftedUp(EnIshi* this, GlobalContext* globalCtx);
void EnIshi_SetupFly(EnIshi* this);
void EnIshi_Fly(EnIshi* this, GlobalContext* globalCtx);
void EnIshi_SpawnFragmentsSmall(EnIshi* this, GlobalContext* globalCtx);
void EnIshi_SpawnFragmentsLarge(EnIshi* this, GlobalContext* globalCtx);
void EnIshi_SpawnDustSmall(EnIshi* this, GlobalContext* globalCtx);
void EnIshi_SpawnDustLarge(EnIshi* this, GlobalContext* globalCtx);

extern Gfx D_0500A3B8[]; // Large gray rock
extern Gfx D_0500A5E8[]; // Large gray rock fragments
extern Gfx D_0500A880[]; // Small gray rock

typedef void (*EnIshiEffectSpawnFunc)(struct EnIshi*, GlobalContext*);
typedef void (*EnIshiDrawFunc)(struct EnIshi*, GlobalContext*);

static s16 sRotSpeedX = 0;
static s16 sRotSpeedY = 0;

const ActorInit En_Ishi_InitVars = {
    ACTOR_EN_ISHI,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_FIELD_KEEP,
    sizeof(EnIshi),
    (ActorFunc)EnIshi_Init,
    (ActorFunc)EnIshi_Destroy,
    (ActorFunc)EnIshi_Update,
    (ActorFunc)EnIshi_Draw,
};

static f32 sRockScales[] = { 0.1f, 0.4f };
static f32 D_80A7FA20[] = { 58.0f, 80.0f };
static f32 D_80A7FA28[] = { 0.0f, 0.005f };

// the sizes of these arrays are very large and take up way more space than it needs to.
// coincidentally the sizes are the same as the ID for NA_SE_EV_ROCK_BROKEN, which may explain a mistake that could
// have been made here
static u16 sBreakSounds[0x2852] = { NA_SE_EV_ROCK_BROKEN, NA_SE_EV_WALL_BROKEN };

static u8 sBreakSoundDurations[0x2852] = { 20, 40 };

static EnIshiEffectSpawnFunc sFragmentSpawnFuncs[] = { EnIshi_SpawnFragmentsSmall, EnIshi_SpawnFragmentsLarge };

static EnIshiEffectSpawnFunc sDustSpawnFuncs[] = { EnIshi_SpawnDustSmall, EnIshi_SpawnDustLarge };

static ColliderCylinderInit sCylinderInits[] = {
    {
        { COLTYPE_UNK12, 0x00, 0x0D, 0x39, 0x20, COLSHAPE_CYLINDER },
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x4FC1FFFE, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 10, 18, -2, { 0, 0, 0 } },
    },
    {
        { COLTYPE_UNK12, 0x00, 0x0D, 0x39, 0x20, COLSHAPE_CYLINDER },
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x4FC1FFF6, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 55, 70, 0, { 0, 0, 0 } },
    }
};

static CollisionCheckInfoInit sColChkInfoInit = { 0, 12, 60, 0xFF };

void EnIshi_InitCollider(Actor* thisx, GlobalContext* globalCtx) {
    EnIshi* this = THIS;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInits[this->actor.params & 1]);
    Collider_CylinderUpdate(&this->actor, &this->collider);
}

s32 EnIshi_SnapToFloor(EnIshi* this, GlobalContext* globalCtx, f32 arg2) {
    CollisionPoly* sp34;
    Vec3f sp28;
    UNK_TYPE sp24;
    f32 temp_f0;

    sp28.x = this->actor.posRot.pos.x;
    sp28.y = this->actor.posRot.pos.y + 30.0f;
    sp28.z = this->actor.posRot.pos.z;
    temp_f0 = func_8003C9A4(&globalCtx->colCtx, &sp34, &sp24, &this->actor, &sp28);
    if (temp_f0 > -32000.0f) {
        this->actor.posRot.pos.y = temp_f0 + arg2;
        Math_Vec3f_Copy(&this->actor.initPosRot.pos, &this->actor.posRot.pos);
        return true;
    } else {
        osSyncPrintf(VT_COL(YELLOW, BLACK));
        // Translation: Failure attaching to ground
        osSyncPrintf("地面に付着失敗(%s %d)\n", "../z_en_ishi.c", 388);
        osSyncPrintf(VT_RST);
        return false;
    }
}

void EnIshi_SpawnFragmentsSmall(EnIshi* this, GlobalContext* globalCtx) {
    static s16 scales[] = { 16, 13, 11, 9, 7, 5 };
    s32 pad;
    Vec3f velocity;
    Vec3f pos;
    s16 phi_v0;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(scales); i++) {
        pos.x = this->actor.posRot.pos.x + (Math_Rand_ZeroOne() - 0.5f) * 8.0f;
        pos.y = this->actor.posRot.pos.y + (Math_Rand_ZeroOne() * 5.0f) + 5.0f;
        pos.z = this->actor.posRot.pos.z + (Math_Rand_ZeroOne() - 0.5f) * 8.0f;
        Math_Vec3f_Copy(&velocity, &this->actor.velocity);
        if (this->actor.bgCheckFlags & 1) {
            velocity.x *= 0.8f;
            velocity.y *= -0.8f;
            velocity.z *= 0.8f;
        } else if (this->actor.bgCheckFlags & 8) {
            velocity.x *= -0.8f;
            velocity.y *= 0.8f;
            velocity.z *= -0.8f;
        }
        velocity.x += (Math_Rand_ZeroOne() - 0.5f) * 11.0f;
        velocity.y += Math_Rand_ZeroOne() * 6.0f;
        velocity.z += (Math_Rand_ZeroOne() - 0.5f) * 11.0f;
        if (Math_Rand_ZeroOne() < 0.5f) {
            phi_v0 = 65;
        } else {
            phi_v0 = 33;
        }
        EffectSsKakera_Spawn(globalCtx, &pos, &velocity, &pos, -420, phi_v0, 30, 5, 0, scales[i], 3, 10, 40,
                             KAKERA_COLOR_NONE, OBJECT_GAMEPLAY_FIELD_KEEP, D_0500A880);
    }
}

void EnIshi_SpawnFragmentsLarge(EnIshi* this, GlobalContext* globalCtx) {
    static s16 scales[] = { 145, 135, 120, 100, 70, 50, 45, 40, 35 };
    Actor* thisx = &this->actor;
    Vec3f velocity;
    Vec3f pos;
    s16 angle = 0x1000;
    s32 i;
    f32 rand;
    s16 phi_v0;
    s16 phi_v1;

    for (i = 0; i < ARRAY_COUNT(scales); i++) {
        angle += 0x4E20;
        rand = Math_Rand_ZeroOne() * 10.0f;
        pos.x = this->actor.posRot.pos.x + (Math_Sins(angle) * rand);
        pos.y = this->actor.posRot.pos.y + (Math_Rand_ZeroOne() * 40.0f) + 5.0f;
        pos.z = this->actor.posRot.pos.z + (Math_Coss(angle) * rand);
        Math_Vec3f_Copy(&velocity, &thisx->velocity);
        if (thisx->bgCheckFlags & 1) {
            velocity.x *= 0.9f;
            velocity.y *= -0.8f;
            velocity.z *= 0.9f;
        } else if (thisx->bgCheckFlags & 8) {
            velocity.x *= -0.9f;
            velocity.y *= 0.8f;
            velocity.z *= -0.9f;
        }
        rand = Math_Rand_ZeroOne() * 10.0f;
        velocity.x += rand * Math_Sins(angle);
        velocity.y += (Math_Rand_ZeroOne() * 4.0f) + ((Math_Rand_ZeroOne() * i) * 0.7f);
        velocity.z += rand * Math_Coss(angle);
        if (i == 0) {
            phi_v0 = 41;
            phi_v1 = -450;
        } else if (i < 4) {
            phi_v0 = 37;
            phi_v1 = -380;
        } else {
            phi_v0 = 69;
            phi_v1 = -320;
        }
        EffectSsKakera_Spawn(globalCtx, &pos, &velocity, &this->actor.posRot.pos, phi_v1, phi_v0, 30, 5, 0, scales[i],
                             5, 2, 70, KAKERA_COLOR_WHITE, OBJECT_GAMEPLAY_FIELD_KEEP, D_0500A5E8);
    }
}

void EnIshi_SpawnDustSmall(EnIshi* this, GlobalContext* globalCtx) {
    Vec3f pos;

    Math_Vec3f_Copy(&pos, &this->actor.posRot.pos);
    if (this->actor.bgCheckFlags & 1) {
        pos.x += 2.0f * this->actor.velocity.x;
        pos.y -= 2.0f * this->actor.velocity.y;
        pos.z += 2.0f * this->actor.velocity.z;
    } else if (this->actor.bgCheckFlags & 8) {
        pos.x -= 2.0f * this->actor.velocity.x;
        pos.y += 2.0f * this->actor.velocity.y;
        pos.z -= 2.0f * this->actor.velocity.z;
    }
    func_80033480(globalCtx, &pos, 60.0f, 3, 0x50, 0x3C, 1);
}

void EnIshi_SpawnDustLarge(EnIshi* this, GlobalContext* globalCtx) {
    Vec3f pos;

    Math_Vec3f_Copy(&pos, &this->actor.posRot.pos);
    if (this->actor.bgCheckFlags & 1) {
        pos.x += 2.0f * this->actor.velocity.x;
        pos.y -= 2.0f * this->actor.velocity.y;
        pos.z += 2.0f * this->actor.velocity.z;
    } else if (this->actor.bgCheckFlags & 8) {
        pos.x -= 2.0f * this->actor.velocity.x;
        pos.y += 2.0f * this->actor.velocity.y;
        pos.z -= 2.0f * this->actor.velocity.z;
    }
    func_80033480(globalCtx, &pos, 140.0f, 0xA, 0xB4, 0x5A, 1);
}

void EnIshi_DropCollectible(EnIshi* this, GlobalContext* globalCtx) {
    s16 dropParams;

    if ((this->actor.params & 1) == ROCK_SMALL) {
        dropParams = (this->actor.params >> 8) & 0xF;

        if (dropParams >= 0xD) {
            dropParams = 0;
        }

        Item_DropCollectibleRandom(globalCtx, NULL, &this->actor.posRot.pos, dropParams << 4);
    }
}

void EnIshi_Fall(EnIshi* this) {
    this->actor.velocity.y += this->actor.gravity;

    if (this->actor.velocity.y < this->actor.minVelocityY) {
        this->actor.velocity.y = this->actor.minVelocityY;
    }
}

void func_80A7ED94(Vec3f* arg0, f32 arg1) {
    arg1 += ((Math_Rand_ZeroOne() * 0.2f) - 0.1f) * arg1;
    arg0->x -= arg0->x * arg1;
    arg0->y -= arg0->y * arg1;
    arg0->z -= arg0->z * arg1;
}

void EnIshi_SpawnBugs(EnIshi* this, GlobalContext* globalCtx) {
    s32 i;

    for (i = 0; i < 3; i++) {
        Actor* bug =
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_INSECT, this->actor.posRot.pos.x,
                        this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, Math_Rand_ZeroOne() * 0xFFFF, 0, 1);

        if (bug == NULL) {
            break;
        }
    }
}

static InitChainEntry sInitChains[][5] = {
    {
        ICHAIN_F32_DIV1000(gravity, -1200, ICHAIN_CONTINUE),
        ICHAIN_F32_DIV1000(minVelocityY, -20000, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneForward, 1200, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneScale, 150, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneDownward, 400, ICHAIN_STOP),
    },
    {
        ICHAIN_F32_DIV1000(gravity, -2500, ICHAIN_CONTINUE),
        ICHAIN_F32_DIV1000(minVelocityY, -20000, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneForward, 2000, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneScale, 250, ICHAIN_CONTINUE),
        ICHAIN_F32(uncullZoneDownward, 500, ICHAIN_STOP),
    },
};

void EnIshi_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnIshi* this = THIS;
    s16 type = this->actor.params & 1;

    Actor_ProcessInitChain(&this->actor, sInitChains[type]);
    if (globalCtx->csCtx.state != 0) {
        this->actor.uncullZoneForward += 1000.0f;
    }
    if (this->actor.shape.rot.y == 0) {
        this->actor.shape.rot.y = this->actor.posRot.rot.y = Math_Rand_ZeroFloat(0x10000);
    }
    Actor_SetScale(&this->actor, sRockScales[type]);
    EnIshi_InitCollider(&this->actor, globalCtx);
    if ((type == ROCK_LARGE) &&
        Flags_GetSwitch(globalCtx, ((this->actor.params >> 0xA) & 0x3C) | ((this->actor.params >> 6) & 3))) {
        Actor_Kill(&this->actor);
        return;
    }
    func_80061ED4(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    this->actor.shape.unk_08 = D_80A7FA20[type];
    if (!((this->actor.params >> 5) & 1) && !EnIshi_SnapToFloor(this, globalCtx, 0.0f)) {
        Actor_Kill(&this->actor);
        return;
    }
    EnIshi_SetupWait(this);
}

void EnIshi_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    Collider_DestroyCylinder(globalCtx, &THIS->collider);
}

void EnIshi_SetupWait(EnIshi* this) {
    this->actionFunc = EnIshi_Wait;
}

void EnIshi_Wait(EnIshi* this, GlobalContext* globalCtx) {
    static u16 liftSounds[] = { NA_SE_PL_PULL_UP_ROCK, NA_SE_PL_PULL_UP_BIGROCK };
    s32 pad;
    s16 type = this->actor.params & 1;

    if (Actor_HasParent(&this->actor, globalCtx)) {
        EnIshi_SetupLiftedUp(this);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 20, liftSounds[type]);
        if ((this->actor.params >> 4) & 1) {
            EnIshi_SpawnBugs(this, globalCtx);
        }
    } else if (this->collider.base.acFlags & 2 && (type == ROCK_SMALL) &&
               this->collider.body.acHitItem->toucher.flags & 0x40000048) {
        EnIshi_DropCollectible(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, sBreakSoundDurations[type], sBreakSounds[type]);
        sFragmentSpawnFuncs[type](this, globalCtx);
        sDustSpawnFuncs[type](this, globalCtx);
        Actor_Kill(&this->actor);
    } else if (this->actor.xzDistFromLink < 600.0f) {
        Collider_CylinderUpdate(&this->actor, &this->collider);
        this->collider.base.acFlags &= ~2;
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        if (this->actor.xzDistFromLink < 400.0f) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            if (this->actor.xzDistFromLink < 90.0f) {
                if (type == ROCK_LARGE) {
                    func_8002F434(&this->actor, globalCtx, 0, 80.0f, 20.0f);
                } else {
                    func_8002F434(&this->actor, globalCtx, 0, 50.0f, 10.0f);
                }
            }
        }
    }
}

void EnIshi_SetupLiftedUp(EnIshi* this) {
    this->actionFunc = EnIshi_LiftedUp;
    this->actor.room = -1;
    this->actor.flags |= 0x10;
}

void EnIshi_LiftedUp(EnIshi* this, GlobalContext* globalCtx) {
    if (Actor_HasNoParent(&this->actor, globalCtx)) {
        this->actor.room = globalCtx->roomCtx.curRoom.num;
        if ((this->actor.params & 1) == ROCK_LARGE) {
            Flags_SetSwitch(globalCtx, ((this->actor.params >> 0xA) & 0x3C) | ((this->actor.params >> 6) & 3));
        }
        EnIshi_SetupFly(this);
        EnIshi_Fall(this);
        func_80A7ED94(&this->actor.velocity, D_80A7FA28[this->actor.params & 1]);
        func_8002D7EC(&this->actor);
        func_8002E4B4(globalCtx, &this->actor, 7.5f, 35.0f, 0.0f, 0xC5);
    }
}

void EnIshi_SetupFly(EnIshi* this) {
    this->actor.velocity.x = Math_Sins(this->actor.posRot.rot.y) * this->actor.speedXZ;
    this->actor.velocity.z = Math_Coss(this->actor.posRot.rot.y) * this->actor.speedXZ;
    if ((this->actor.params & 1) == ROCK_SMALL) {
        sRotSpeedX = (Math_Rand_ZeroOne() - 0.5f) * 16000.0f;
        sRotSpeedY = (Math_Rand_ZeroOne() - 0.5f) * 2400.0f;
    } else {
        sRotSpeedX = (Math_Rand_ZeroOne() - 0.5f) * 8000.0f;
        sRotSpeedY = (Math_Rand_ZeroOne() - 0.5f) * 1600.0f;
    }
    this->actor.colChkInfo.mass = 240;
    this->actionFunc = EnIshi_Fly;
}

void EnIshi_Fly(EnIshi* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 type = this->actor.params & 1;
    s32 pad2;
    s32 quakeIdx;
    Vec3f contactPos;

    if (this->actor.bgCheckFlags & 9) {
        EnIshi_DropCollectible(this, globalCtx);
        sFragmentSpawnFuncs[type](this, globalCtx);
        if (!(this->actor.bgCheckFlags & 0x20)) {
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, sBreakSoundDurations[type],
                                      sBreakSounds[type]);
            sDustSpawnFuncs[type](this, globalCtx);
        }
        if (type == ROCK_LARGE) {
            quakeIdx = Quake_Add(ACTIVE_CAM, 3);
            Quake_SetSpeed(quakeIdx, -0x3CB0);
            Quake_SetQuakeValues(quakeIdx, 3, 0, 0, 0);
            Quake_SetCountdown(quakeIdx, 7);
            func_800AA000(this->actor.xyzDistFromLinkSq, 0xFF, 0x14, 0x96);
        }
        Actor_Kill(&this->actor);
        return;
    }
    if (this->actor.bgCheckFlags & 0x40) {
        contactPos.x = this->actor.posRot.pos.x;
        contactPos.y = this->actor.posRot.pos.y + this->actor.waterY;
        contactPos.z = this->actor.posRot.pos.z;
        EffectSsGSplash_Spawn(globalCtx, &contactPos, 0, 0, 0, 350);
        if (type == ROCK_SMALL) {
            EffectSsGRipple_Spawn(globalCtx, &contactPos, 150, 650, 0);
            EffectSsGRipple_Spawn(globalCtx, &contactPos, 400, 800, 4);
            EffectSsGRipple_Spawn(globalCtx, &contactPos, 500, 1100, 8);
        } else {
            EffectSsGRipple_Spawn(globalCtx, &contactPos, 300, 700, 0);
            EffectSsGRipple_Spawn(globalCtx, &contactPos, 500, 900, 4);
            EffectSsGRipple_Spawn(globalCtx, &contactPos, 500, 1300, 8);
        }
        this->actor.minVelocityY = -6.0f;
        sRotSpeedX >>= 2;
        sRotSpeedY >>= 2;
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 40, NA_SE_EV_DIVE_INTO_WATER_L);
        this->actor.bgCheckFlags &= ~0x40;
    }
    Math_ApproxF(&this->actor.shape.unk_08, 0.0f, 2.0f);
    EnIshi_Fall(this);
    func_80A7ED94(&this->actor.velocity, D_80A7FA28[type]);
    func_8002D7EC(&this->actor);
    this->actor.shape.rot.x += sRotSpeedX;
    this->actor.shape.rot.y += sRotSpeedY;
    func_8002E4B4(globalCtx, &this->actor, 7.5f, 35.0f, 0.0f, 0xC5);
    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

void EnIshi_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnIshi* this = THIS;

    this->actionFunc(this, globalCtx);
}

void EnIshi_DrawSmall(EnIshi* this, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_0500A880);
}

void EnIshi_DrawLarge(EnIshi* this, GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ishi.c", 1050);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_ishi.c", 1055),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);
    gSPDisplayList(POLY_OPA_DISP++, D_0500A3B8);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ishi.c", 1062);
}

static EnIshiDrawFunc sDrawFuncs[] = { EnIshi_DrawSmall, EnIshi_DrawLarge };

void EnIshi_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnIshi* this = THIS;

    sDrawFuncs[this->actor.params & 1](this, globalCtx);
}
