/*
 * File: z_bg_ice_objects.c
 * Overlay: ovl_Bg_Ice_Objects
 * Description: Pushable ice block (Ice Cavern)
 */

#include "z_bg_ice_objects.h"

#define FLAGS 0x00000000

#define THIS ((BgIceObjects*)thisx)

void BgIceObjects_Init(Actor* thisx, GlobalContext* globalCtx);
void BgIceObjects_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgIceObjects_Update(Actor* thisx, GlobalContext* globalCtx);
void BgIceObjects_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgIceObjects_Idle(BgIceObjects* this, GlobalContext* globalCtx);
void BgIceObjects_Slide(BgIceObjects* this, GlobalContext* globalCtx);
void BgIceObjects_Reset(BgIceObjects* this, GlobalContext* globalCtx);
void BgIceObjects_Stuck(BgIceObjects* this, GlobalContext* globalCtx);

extern Gfx D_06000190[];
extern CollisionHeader D_060003F0;

static Color_RGBA8 sWhite = { 250, 250, 250, 255 };
static Color_RGBA8 sGray = { 180, 180, 180, 255 };
static Vec3f sZeroVec = { 0.0f, 0.0f, 0.0f };

const ActorInit Bg_Ice_Objects_InitVars = {
    ACTOR_BG_ICE_OBJECTS,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_ICE_OBJECTS,
    sizeof(BgIceObjects),
    (ActorFunc)BgIceObjects_Init,
    (ActorFunc)BgIceObjects_Destroy,
    (ActorFunc)BgIceObjects_Update,
    (ActorFunc)BgIceObjects_Draw,
};

InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgIceObjects_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgIceObjects* this = THIS;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, DPM_UNK);
    CollisionHeader_GetVirtual(&D_060003F0, &colHeader);
    Math_Vec3f_Copy(&this->targetPos, &this->dyna.actor.initPosRot.pos);
    this->actionFunc = BgIceObjects_Idle;
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);
    this->dyna.actor.params = 0;
}

void BgIceObjects_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgIceObjects* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

static s16 sXStarts[] = {
    -1060, -1200, -1240, -1387, -1580, -1680, -1780,
};
static s16 sZStarts[] = {
    -580, -660, -780, -820, -860, -900, -1087,
};
static s16 sZStops[7][2] = {
    { -580, -1087 }, { -780, -1260 }, { -340, -820 }, { -260, -1260 }, { -340, -860 }, { -660, -1260 }, { -340, -740 },
};
static s16 sXStops[7][2] = {
    { -860, -1580 },  { -1240, -1780 }, { -860, -1680 }, { -860, -1680 },
    { -1387, -1680 }, { -860, -1200 },  { -860, -1800 },
};

/*
 * Checks which of the eight possible x and z positions the block is at,
 * defaulting to the maximum x wall or minimum z wall. Each x and z position
 * has only one possible wall or pit on each side of it.
 */
void BgIceObjects_SetNextTarget(BgIceObjects* this, GlobalContext* globalCtx) {
    s16 x16;
    s16 z16 = 0; // needed to match
    s32 i;

    if ((this->dyna.unk_158 == 0) || (this->dyna.unk_158 == -0x8000)) {
        x16 = this->dyna.actor.posRot.pos.x;
        for (i = 0; i < 7; i++) {
            if (x16 == sXStarts[i]) {
                z16 = (this->dyna.unk_158 == 0) ? sZStops[i][0] : sZStops[i][1];
                this->targetPos.z = z16;
                return;
            }
        }
        this->targetPos.z = (this->dyna.unk_158 == 0) ? -340 : -1260;
    } else {
        z16 = this->dyna.actor.posRot.pos.z;
        for (i = 0; i < 7; i++) {
            if (z16 == sZStarts[i]) {
                x16 = (this->dyna.unk_158 == 0x4000) ? sXStops[i][0] : sXStops[i][1];
                this->targetPos.x = x16;
                return;
            }
        }
        this->targetPos.x = (this->dyna.unk_158 == 0x4000) ? -860 : -1780;
    }
}

/*
 * Checks if the block has fallen into any of the pits.
 */
void BgIceObjects_CheckPits(BgIceObjects* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;

    if ((thisx->velocity.y > 0.0f) || ((thisx->posRot.pos.x <= -1660.0f) && (thisx->posRot.pos.z <= -1060.0f)) ||
        ((thisx->posRot.pos.x <= -1580.0f) && (thisx->posRot.pos.z >= -420.0f)) ||
        ((thisx->posRot.pos.x >= -980.0f) && (thisx->posRot.pos.z <= -1180.0f)) ||
        ((thisx->posRot.pos.x >= -860.0f) && (thisx->posRot.pos.z >= -700.0f))) {

        thisx->velocity.y += 1.0f;
        if (Math_StepToF(&thisx->posRot.pos.y, -300.0f, thisx->velocity.y)) {
            thisx->velocity.y = 0.0f;
            thisx->posRot.pos.x = thisx->initPosRot.pos.x;
            thisx->posRot.pos.y = thisx->initPosRot.pos.y - 60.0f;
            thisx->posRot.pos.z = thisx->initPosRot.pos.z;
            if (thisx->params != 0) {
                func_8002DF54(globalCtx, thisx, 7);
            }
            this->actionFunc = BgIceObjects_Reset;
        }
    }
}

void BgIceObjects_Idle(BgIceObjects* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Actor* thisx = &this->dyna.actor;

    if (this->dyna.unk_150 != 0.0f) {
        player->stateFlags2 &= ~0x10;
        if ((this->dyna.unk_150 > 0.0f) && !Player_InCsMode(globalCtx)) {
            BgIceObjects_SetNextTarget(this, globalCtx);
            if (func_8002DBB0(thisx, &this->targetPos) > 1.0f) {
                thisx->flags |= 0x10;
                func_8002DF54(globalCtx, thisx, 8);
                thisx->params = 1;
                this->actionFunc = BgIceObjects_Slide;
            }
        }
        this->dyna.unk_150 = 0.0f;
    }
    if (thisx->velocity.y > 0.0f) {
        BgIceObjects_CheckPits(this, globalCtx);
    }
}

void BgIceObjects_Slide(BgIceObjects* this, GlobalContext* globalCtx) {
    s32 atTarget;
    Vec3f pos;
    Vec3f velocity;
    f32 spread;
    Actor* thisx = &this->dyna.actor;

    Math_StepToF(&thisx->speedXZ, 10.0f, 0.5f);
    atTarget = Math_StepToF(&thisx->posRot.pos.x, this->targetPos.x, thisx->speedXZ);
    atTarget &= Math_StepToF(&thisx->posRot.pos.z, this->targetPos.z, thisx->speedXZ);
    if (atTarget) {
        thisx->speedXZ = 0.0f;
        this->targetPos.x = thisx->posRot.pos.x;
        this->targetPos.z = thisx->posRot.pos.z;
        if (thisx->velocity.y <= 0.0f) {
            thisx->flags &= ~0x10;
        }
        thisx->params = 0;
        func_8002DF54(globalCtx, thisx, 7);
        Audio_PlayActorSound2(thisx, NA_SE_EV_BLOCK_BOUND);
        if ((fabsf(thisx->posRot.pos.x + 1387.0f) < 1.0f) && (fabsf(thisx->posRot.pos.z + 260.0f) < 1.0f)) {
            this->actionFunc = BgIceObjects_Stuck;
        } else {
            this->actionFunc = BgIceObjects_Idle;
        }
    } else if ((thisx->speedXZ > 6.0f) && (thisx->posRot.pos.y >= 0.0f)) {
        spread = Rand_CenteredFloat(120.0f);
        velocity.x = -(1.5f + Rand_ZeroOne()) * Math_SinS(this->dyna.unk_158);
        velocity.y = Rand_ZeroOne() + 1.0f;
        velocity.z = -(1.5f + Rand_ZeroOne()) * Math_CosS(this->dyna.unk_158);
        pos.x =
            thisx->posRot.pos.x - (60.0f * Math_SinS(this->dyna.unk_158)) - (Math_CosS(this->dyna.unk_158) * spread);
        pos.z =
            thisx->posRot.pos.z - (60.0f * Math_CosS(this->dyna.unk_158)) + (Math_SinS(this->dyna.unk_158) * spread);
        pos.y = thisx->posRot.pos.y;
        func_8002829C(globalCtx, &pos, &velocity, &sZeroVec, &sWhite, &sGray, 250, Rand_S16Offset(40, 15));
        spread = Rand_CenteredFloat(120.0f);
        pos.x =
            thisx->posRot.pos.x - (60.0f * Math_SinS(this->dyna.unk_158)) + (Math_CosS(this->dyna.unk_158) * spread);
        pos.z =
            thisx->posRot.pos.z - (60.0f * Math_CosS(this->dyna.unk_158)) - (Math_SinS(this->dyna.unk_158) * spread);
        func_8002829C(globalCtx, &pos, &velocity, &sZeroVec, &sWhite, &sGray, 250, Rand_S16Offset(40, 15));
        func_8002F974(thisx, NA_SE_PL_SLIP_ICE_LEVEL - SFX_FLAG);
    }
    BgIceObjects_CheckPits(this, globalCtx);
}

void BgIceObjects_Reset(BgIceObjects* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Actor* thisx = &this->dyna.actor;

    if (this->dyna.unk_150 != 0.0f) {
        player->stateFlags2 &= ~0x10;
        this->dyna.unk_150 = 0.0f;
    }
    if (Math_StepToF(&thisx->posRot.pos.y, thisx->initPosRot.pos.y, 1.0f)) {
        thisx->flags &= ~0x10;
        Math_Vec3f_Copy(&this->targetPos, &thisx->initPosRot.pos);
        this->actionFunc = BgIceObjects_Idle;
        thisx->speedXZ = 0.0f;
    }
}

void BgIceObjects_Stuck(BgIceObjects* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->dyna.unk_150 != 0.0f) {
        player->stateFlags2 &= ~0x10;
        this->dyna.unk_150 = 0.0f;
    }
}

void BgIceObjects_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgIceObjects* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgIceObjects_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgIceObjects* this = THIS;

    Gfx_DrawDListOpa(globalCtx, D_06000190);
}
