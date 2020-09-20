#include "z_bg_spot16_bombstone.h"

#define FLAGS 0x00000010

#define THIS ((BgSpot16Bombstone*)thisx)

void BgSpot16Bombstone_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot16Bombstone_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot16Bombstone_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot16Bombstone_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808B5A94(BgSpot16Bombstone* this, GlobalContext* globalCtx);
void func_808B5B04(BgSpot16Bombstone* this, GlobalContext* globalCtx);
void func_808B5B6C(BgSpot16Bombstone* this, GlobalContext* globalCtx);
void func_808B5B58(BgSpot16Bombstone* this);
void func_808B5950(BgSpot16Bombstone* this, GlobalContext* globalCtx);
void func_808B5934(BgSpot16Bombstone* this);
void func_808B5AF0(BgSpot16Bombstone* this);
void func_808B5A78(BgSpot16Bombstone* this);

extern UNK_TYPE D_06000C20;
extern Gfx D_060009E0;

typedef struct D_808B5DD8Struct {
    s16 speed;
    s16 velocity;
    s16 scale;
    s16 unk_6;
    s16 unk_8;
    s16 unk_A;
    s16 unk_C;
    Vec3s rotation;
} D_808B5DD8Struct; // size = 0x14

typedef struct D_808B5EB0Struct {
    s16 unk_0;
    s16 unk_2;
    s16 unk_4;
    s16 unk_6;
    s16 scale;
    s16 scaleStep;
    s16 life;
} D_808B5EB0Struct; // size = 0xE

EnBombf* playerBomb = NULL;

s16 timer = 0;

D_808B5DD8Struct D_808B5DD8[] = { { 0x0008, 0x0004, 0x0046, 0x07D0, 0xFCE0, 0x0000, 0x0064, 0x0000, 0x0000, 0x0000 },
                                  { 0x0006, 0x0003, 0x0032, 0x00C8, 0x0A28, 0xC350, 0x005A, 0x0000, 0x0000, 0x0000 },
                                  { 0x0005, 0x0003, 0x0028, 0xF63C, 0x0190, 0x30B0, 0x0032, 0x0000, 0x0000, 0x0000 },
                                  { 0x0003, 0x0001, 0x003C, 0x0258, 0xFF9C, 0xAFC8, 0x0032, 0x0000, 0x0000, 0x0000 },
                                  { 0x0003, 0x0001, 0x0028, 0xF2B8, 0xFF9C, 0x6590, 0x001E, 0x0000, 0x0000, 0x0000 },
                                  { 0x0006, 0x0009, 0x0028, 0x0000, 0x0BB8, 0xD8F0, 0x001E, 0x0000, 0x0000, 0x0000 } };

static ColliderJntSphItemInit sJntSphItemsInit[] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x4FC1FFF6, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 0, { { 0, 50, 0 }, 288 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK12, 0x00, 0x0D, 0x39, 0x20, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x00, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000008, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 190, 80, 0, { 10, 0, 50 } },
};

D_808B5EB0Struct D_808B5EB0[] = { { 0x0000, 0x000A, 0x003C, 0xFFF6, 0x0104, 0x01E0, 0x0007 },
                                  { 0x0000, 0x0000, 0x0032, 0x0000, 0x0104, 0x017C, 0x000D },
                                  { 0x0001, 0x001E, 0x0014, 0x0014, 0x00A0, 0x0104, 0x000A },
                                  { 0x0002, 0x0014, 0x0028, 0x0014, 0x00C8, 0x0096, 0x0007 },
                                  { 0x0003, 0xFFD8, 0x0064, 0x001E, 0x00D2, 0x0064, 0x0007 },
                                  { 0x0004, 0x000A, 0x0078, 0x000A, 0x00A0, 0x0028, 0x000A },
                                  { 0x0005, 0xFFA7, 0x006E, 0x0041, 0x0096, 0x0118, 0x0007 },
                                  { 0x0006, 0xFFC4, 0x0070, 0x006D, 0x006E, 0x0082, 0x0007 },
                                  { 0x0007, 0xFFF2, 0x0050, 0x007F, 0x008C, 0x00D2, 0x0007 },
                                  { 0x0008, 0x0014, 0x0032, 0x001E, 0x008C, 0x00C8, 0x0007 },
                                  { 0x0009, 0xFFEC, 0x0014, 0x0028, 0x00C8, 0x00B4, 0x0007 },
                                  { 0x000A, 0x001E, 0x0028, 0xFFE2, 0x0064, 0x0078, 0x0007 },
                                  { 0x000A, 0xFF92, 0x001D, 0x0078, 0x008C, 0x0118, 0x000A },
                                  { 0x000B, 0x001E, 0x0014, 0x001E, 0x0050, 0x00C8, 0x0006 },
                                  { 0x000C, 0x0028, 0x001E, 0xFFE2, 0x00AA, 0x010E, 0x0011 },
                                  { 0x000D, 0xFFD8, 0x0032, 0xFFEC, 0x008C, 0x0056, 0x0006 },
                                  { 0x000D, 0x0032, 0x0032, 0x0032, 0x0096, 0x00C8, 0x000A },
                                  { 0x000E, 0x0028, 0x0028, 0xFFD8, 0x003C, 0x00A0, 0x0006 },
                                  { 0x000F, 0xFFE2, 0x0014, 0x0032, 0x00AA, 0x012C, 0x0006 },
                                  { 0x0010, 0x0028, 0x0032, 0x0014, 0x00AA, 0x0078, 0x0007 },
                                  { 0x0010, 0x001E, 0x0032, 0x003C, 0x0096, 0x00C8, 0x0006 },
                                  { 0x0011, 0x000A, 0x000A, 0x0000, 0x0082, 0x00DC, 0x0006 },
                                  { 0x0012, 0x000A, 0x0028, 0x0014, 0x00B4, 0x00DC, 0x000B },
                                  { 0x0013, 0x000A, 0x0005, 0x0000, 0x006E, 0x0046, 0x0011 },
                                  { 0x0013, 0xFFEC, 0x0032, 0xFFE2, 0x0096, 0x00C8, 0x0006 },
                                  { 0x0014, 0x0050, 0x0032, 0x0000, 0x0096, 0x00C8, 0x0008 } };

const ActorInit Bg_Spot16_Bombstone_InitVars = {
    ACTOR_BG_SPOT16_BOMBSTONE,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_SPOT16_OBJ,
    sizeof(BgSpot16Bombstone),
    (ActorFunc)BgSpot16Bombstone_Init,
    (ActorFunc)BgSpot16Bombstone_Destroy,
    (ActorFunc)BgSpot16Bombstone_Update,
    (ActorFunc)BgSpot16Bombstone_Draw,
};

static InitChainEntry sInitChainBoulder[] = {
    ICHAIN_F32(uncullZoneForward, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

static InitChainEntry sInitChainDebris[] = {
    ICHAIN_F32(gravity, -1, ICHAIN_CONTINUE),          ICHAIN_F32(minVelocityY, -10, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE), ICHAIN_F32(uncullZoneScale, 200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

Vec3f velocity = { 0.0f, 0.0f, 0.0f };
Vec3f acceleration = { 0.0f, 0.4f, 0.0f };

f32 D_808B6074[] = { 66.0f, 51.0f, 48.0f, 36.0f, 21.0f };

s16 D_808B6088[] = { 0, 1, 2, 3, 4 };

void func_808B4C30(BgSpot16Bombstone* this) {
    s16 params;

    params = this->actor.params;
    this->switchFlag = (params >> 8) & 0x3F;
    this->actor.params = params & 0xFF;
}

void func_808B4C4C(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    ColliderJntSph* colliderJntSph;

    colliderJntSph = &this->colliderJntSph;
    Collider_InitJntSph(globalCtx, colliderJntSph);
    Collider_SetJntSph(globalCtx, colliderJntSph, &this->actor, &sJntSphInit, &this->colliderJntSphItem);
    this->colliderJntSph.list->dim.worldSphere.center.x = this->actor.posRot.pos.x;
    this->colliderJntSph.list->dim.worldSphere.center.y = this->actor.posRot.pos.y + 50.0f;
    this->colliderJntSph.list->dim.worldSphere.center.z = this->actor.posRot.pos.z;
    this->colliderJntSph.list->dim.worldSphere.radius = 120;
}

void func_808B4D04(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    ColliderCylinder* colliderCylinder;

    colliderCylinder = &this->colliderCylinder;
    Collider_InitCylinder(globalCtx, colliderCylinder);
    Collider_SetCylinder(globalCtx, colliderCylinder, &this->actor, &sCylinderInit);
    this->colliderCylinder.dim.pos.x += (s16)this->actor.posRot.pos.x;
    this->colliderCylinder.dim.pos.y += (s16)this->actor.posRot.pos.y;
    this->colliderCylinder.dim.pos.z += (s16)this->actor.posRot.pos.z;
}

s32 func_808B4D9C(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
        osSyncPrintf("Spot16 obj 爆弾石 破壊済み\n");
        return false;
    }
    Actor_ProcessInitChain(&this->actor, sInitChainBoulder);
    Actor_SetScale(&this->actor, 0.4);
    this->actor.colChkInfo.mass = 0xFF;
    func_808B4C4C(this, globalCtx);
    func_808B4D04(this, globalCtx);
    this->sinRotation = Math_Sins(this->actor.shape.rot.y);
    this->cosRotation = Math_Coss(this->actor.shape.rot.y);
    this->unk_150 = &D_06000C20;

    func_808B5934(this);
    return true;
}

s32 func_808B4E58(BgSpot16Bombstone* this, GlobalContext* globalctx) {
    Actor* actor = &this->actor;
    f32 scaleFactor = 1.0f / 600.0f;
    f32 sinCosPosFactor = 50.0f;
    f32 sinValue;
    f32 cosValue;

    Actor_ProcessInitChain(actor, sInitChainDebris);

    actor->speedXZ = D_808B5DD8[actor->params].speed;
    actor->velocity.y = D_808B5DD8[actor->params].velocity;

    Actor_SetScale(actor, D_808B5DD8[actor->params].scale * scaleFactor);

    this->unk_210 = (f32)D_808B5DD8[actor->params].unk_6;
    this->unk_212 = (f32)D_808B5DD8[actor->params].unk_8;

    actor->posRot.rot.y = D_808B5DD8[actor->params].unk_A;

    sinValue = Math_Sins(this->actor.posRot.rot.y);
    cosValue = Math_Coss(this->actor.posRot.rot.y);

    actor->posRot.pos.x = (sinValue * sinCosPosFactor) + actor->initPosRot.pos.x;
    actor->posRot.pos.y = D_808B5DD8[actor->params].unk_C + actor->initPosRot.pos.y;
    actor->posRot.pos.z = (cosValue * sinCosPosFactor) + actor->initPosRot.pos.z;

    actor->shape.rot.x = D_808B5DD8[actor->params].rotation.x;
    actor->shape.rot.y = D_808B5DD8[actor->params].rotation.y;
    actor->shape.rot.z = D_808B5DD8[actor->params].rotation.z;

    this->unk_150 = &D_060009E0;
    this->bombiwaBankIndex = Object_GetIndex(&globalctx->objectCtx, OBJECT_BOMBIWA);

    if (this->bombiwaBankIndex < 0) {
        osSyncPrintf("Error : バンク危険！(arg_data 0x%04x)(%s %d)\n", actor->params, "../z_bg_spot16_bombstone.c",
                     589);
        return false;
    }

    func_808B5AF0(this);
    return true;
}

void BgSpot16Bombstone_Init(Actor* thisx, GlobalContext* globalCtx) {

    BgSpot16Bombstone* this = THIS;
    s16 shouldLive;

    func_808B4C30(this);

    switch (this->actor.params) {
        case 0xFF:
            // The boulder is intact
            shouldLive = func_808B4D9C(thisx, globalCtx);
            break;
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
            // The boulder is debris
            shouldLive = func_808B4E58(thisx, globalCtx);
            break;
        default:
            osSyncPrintf("Error : arg_data おかしいな(%s %d)(arg_data 0x%04x)\n", "../z_bg_spot16_bombstone.c", 668,
                         this->actor.params);
            shouldLive = false;
            break;
    }

    if (!shouldLive) {
        Actor_Kill(thisx);
        return;
    }
    osSyncPrintf("Spot16 obj 爆弾石 (scaleX %f)(arg_data 0x%04x)\n", this->actor.scale.x, this->actor.params);
}

void BgSpot16Bombstone_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot16Bombstone* this = THIS;
    ColliderJntSph* colliderJntSph;

    if (this->actor.params == 0xFF) {
        // Boulder is intact so remove its collider
        colliderJntSph = &this->colliderJntSph;
        Collider_DestroyJntSph(globalCtx, colliderJntSph);
        Collider_DestroyCylinder(globalCtx, &this->colliderCylinder);
    }
}

void func_808B51A8(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    f32 scaleX1 = this->actor.scale.x * 150;
    s16 scaleX2 = this->actor.scale.x * 250;
    Vec3f posRot;

    posRot.x = this->actor.posRot.pos.x;
    posRot.y = this->actor.posRot.pos.y + 50.0f;
    posRot.z = this->actor.posRot.pos.z;

    func_80033480(globalCtx, &posRot, scaleX1, 2, scaleX2, 0xA0, 1);
}

void func_808B5240(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    f32 tempUnk6;
    f32 tempUnk2;
    s16 index;
    Vec3f position;
    Vec3f* actorPosition = &this->actor.posRot.pos;

    if (true) {}

    while (true) {
        if (this->unk_158 >= 26U || this->unk_154 < D_808B5EB0[this->unk_158].unk_0) {
            break;
        }

        index = this->unk_158;

        tempUnk2 = D_808B5EB0[index].unk_2;
        tempUnk6 = D_808B5EB0[index].unk_6;

        position.x = ((this->sinRotation * tempUnk6) + (tempUnk2 * this->cosRotation)) + actorPosition->x;
        position.y = D_808B5EB0[index].unk_4 + actorPosition->y;
        position.z = ((this->cosRotation * tempUnk6) - (tempUnk2 * this->sinRotation)) + actorPosition->z;

        func_800287AC(globalCtx, &position, &velocity, &acceleration, D_808B5EB0[index].scale,
                      D_808B5EB0[index].scaleStep, D_808B5EB0[index].life);

        this->unk_158 += 1;
    }
}

void func_808B53A8(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    f32 velocityYMultiplier = 1.3f;
    Vec3f randomPosition;
    Vec3f randomVelocity;
    s32 index;
    s16 scale;

    if (this->actor.params == 0) {
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BG_SPOT16_BOMBSTONE, this->actor.posRot.pos.x,
                    this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 5);
        index = 3;
    } else {
        index = 0;
    }

    if (index < ARRAY_COUNT(D_808B6074)) {
        do {
            randomPosition.x = ((Math_Rand_ZeroOne() - 0.5f) * 8.0f) + this->actor.posRot.pos.x;
            randomPosition.y = ((Math_Rand_ZeroOne() * 5.0f) + this->actor.posRot.pos.y) + 8.0f;
            randomPosition.z = ((Math_Rand_ZeroOne() - 0.5f) * 8.0f) + this->actor.posRot.pos.z;

            randomVelocity.x = (Math_Rand_ZeroOne() - 0.5f) * 16.0f;
            randomVelocity.y = (Math_Rand_ZeroOne() * 14.0) + (fabsf(this->actor.velocity.y) * velocityYMultiplier);
            randomVelocity.z = (Math_Rand_ZeroOne() - 0.5f) * 16.0f;

            scale = D_808B6074[index] * this->actor.scale.x * 3;

            func_80029E8C(globalCtx, &randomPosition, &randomVelocity, &this->actor.posRot.pos, -0x1A4, 0x31, 0xF, 0xF,
                          0, scale, 2, 0x40, 0xA0, -1, OBJECT_BOMBIWA, &D_060009E0);
            index += 1;
        } while (index != ARRAY_COUNT(D_808B6074));
    }
}

void func_808B561C(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    s32 index;
    PosRot* posRot;

    posRot = &this->actor.posRot;
    for (index = 0; index < ARRAY_COUNT(D_808B6088); index++) {
        if (Actor_Spawn(&globalCtx->actorCtx, globalCtx, 0xCD, posRot->pos.x, posRot->pos.y, posRot->pos.z, 0, 0, 0,
                        D_808B6088[index]) == 0) {
            return;
        }
    }
}

void func_808B56BC(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 sinValue;
    s16 adjustedYawDiff;
    s32 yawDiff;
    s32 absYawDiff;

    if (this->actor.xzDistFromLink < 130.0f && this->actor.yDistFromLink < 160.0f &&
        this->actor.yDistFromLink >= -10.0f) {
        yawDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;
        absYawDiff = (yawDiff >= 0) ? yawDiff : -yawDiff;

        adjustedYawDiff = absYawDiff - 0x3FFF;

        if (adjustedYawDiff > 0) {
            sinValue = Math_Sins(adjustedYawDiff) * this->actor.xzDistFromLink;

            if (sinValue >= 0.0f) {
                player->actor.posRot.pos.x += sinValue * this->sinRotation;
                player->actor.posRot.pos.z += sinValue * this->cosRotation;
            } else {
                osSyncPrintf("Error 補正出来ない(%s %d)(arg_data 0x%04x)(hosei_angY %x)\n",
                             "../z_bg_spot16_bombstone.c", 935, this->actor.params, adjustedYawDiff);
            }
        }
    }
}

void func_808B57E0(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    EnBombf* playerHeldActor;
    Player* player = PLAYER;
    EnBombf* currentBomb;

    if (timer > 0) {
        timer--;
    }

    if (playerBomb != NULL) {
        if (playerBomb->actor.update == NULL) {
            playerBomb = NULL;
        } else if (timer <= 0 && playerBomb->actor.posRot.pos.y < 1400.0f &&
                   Math3D_Dist1DSq(playerBomb->actor.posRot.pos.x + 1579.0f, playerBomb->actor.posRot.pos.z + 790.0f) <
                       160000.0f &&
                   playerBomb->actor.params == 0) {
            currentBomb = playerBomb;
            if (currentBomb->timer > 0) {
                timer = currentBomb->timer + 0x14;
                func_800800F8(globalCtx, 0x1054, timer, NULL, 0);
            }
        }
    } else {
        if ((player->stateFlags1 & 0x800) != 0) {
            playerHeldActor = player->heldActor;
            if (playerHeldActor != NULL && playerHeldActor->actor.type == ACTORTYPE_EXPLOSIVES &&
                playerHeldActor->actor.id == ACTOR_EN_BOMBF) {
                playerBomb = playerHeldActor;
            }
        }
    }
}

void func_808B5934(BgSpot16Bombstone* this) {
    this->actor.draw = &BgSpot16Bombstone_Draw;
    this->actionFunc = &func_808B5950;
}

void func_808B5950(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    u8 acFlags;

    func_808B56BC(this, globalCtx);
    func_808B57E0(this, globalCtx);

    if (globalCtx) {}

    acFlags = this->colliderCylinder.base.acFlags;

    if ((acFlags & 2) != 0) {
        this->colliderCylinder.base.acFlags = acFlags & 0xFFFD;

        func_808B561C(this, globalCtx);

        func_800800F8(globalCtx, 0x1054, 0x32, NULL, 0);

        Flags_SetSwitch(globalCtx, this->switchFlag);
        gSaveContext.eventChkInf[2] |= 8;

        func_808B5A78(this);
    } else {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderCylinder);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderJntSph);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colliderJntSph);
    }

    if (gGameInfo->data[0x8e0] == 1) {
        func_808B561C(this, globalCtx);
        gGameInfo->data[0x8e0] = -0xA;
    } else if (gGameInfo->data[0x8E0] < 0) {
        gGameInfo->data[0x8E0]++;
    }
}

void func_808B5A78(BgSpot16Bombstone* this) {
    this->unk_154 = 0;
    this->unk_158 = 0;
    this->actor.draw = NULL;
    this->actionFunc = &func_808B5A94;
}

void func_808B5A94(BgSpot16Bombstone* this, GlobalContext* globalCtx) {

    func_808B5240(this, globalCtx);

    if (this->unk_154 == 0x38) {
        func_80078884(NA_SE_SY_CORRECT_CHIME);
    }

    if (this->unk_154 >= 0x3D) {
        Actor_Kill(&this->actor);
    }
}

void func_808B5AF0(BgSpot16Bombstone* this) {
    this->actionFunc = &func_808B5B04;
    this->actor.draw = NULL;
}

void func_808B5B04(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->bombiwaBankIndex)) {
        func_808B5B58(this);
        this->actor.draw = &BgSpot16Bombstone_Draw;
    }
}

void func_808B5B58(BgSpot16Bombstone* this) {
    this->unk_154 = 0;
    this->actionFunc = &func_808B5B6C;
}

void func_808B5B6C(BgSpot16Bombstone* this, GlobalContext* globalCtx) {
    u16 bgCheckFlags;
    Actor* actor = &this->actor;

    Actor_MoveForward(actor);
    actor->shape.rot.x = actor->shape.rot.x + this->unk_210;
    actor->shape.rot.z = actor->shape.rot.z + this->unk_212;

    if (this->unk_154 >= 0x3D) {
        Actor_Kill(actor);
        return;
    }

    bgCheckFlags = actor->bgCheckFlags;
    if ((bgCheckFlags & 8) != 0 || (bgCheckFlags & 1) != 0 && actor->velocity.y < 0.0f) {
        func_808B53A8(this, globalCtx);
        func_808B51A8(this, globalCtx);
        Audio_PlaySoundAtPosition(globalCtx, &actor->posRot, 20, NA_SE_EV_ROCK_BROKEN);
        Actor_Kill(actor);
        return;
    }

    func_8002E4B4(globalCtx, actor, 17.5f, 35.0f, 0.0f, 5);
}

void BgSpot16Bombstone_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot16Bombstone* this = THIS;

    this->unk_154++;
    if (this->actionFunc != NULL) {
        this->actionFunc(this, globalCtx);
    }
}

void BgSpot16Bombstone_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot16Bombstone* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot16_bombstone.c", 1253);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot16_bombstone.c", 1257),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (this->actor.params == 0xFF) {
        // The boulder is intact
        gSPDisplayList(oGfxCtx->polyOpa.p++, this->unk_150);
    } else {
        // The boulder is debris
        gSPSegment(oGfxCtx->polyOpa.p++, 6, globalCtx->objectCtx.status[this->bombiwaBankIndex].segment);
        gSPDisplayList(oGfxCtx->polyOpa.p++, this->unk_150);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot16_bombstone.c", 1274);
}
