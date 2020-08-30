#include "z_bg_po_event.h"

#define FLAGS 0x00000000

#define THIS ((BgPoEvent*)thisx)

void BgPoEvent_Init(Actor* thisx, GlobalContext* globalCtx);
void BgPoEvent_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgPoEvent_Update(Actor* thisx, GlobalContext* globalCtx);
void BgPoEvent_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgPoEvent_InitPaintings(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_InitBlocks(BgPoEvent* this, GlobalContext* globalCtx);

void BgPoEvent_BlockCheck(BgPoEvent* this);
s32 BgPoEvent_NextPicture(BgPoEvent* this);

void BgPoEvent_BlockWait(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_BlockShake(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_BlockFall(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_BlockLift(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_BlockPush(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_BlockReset(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_BlockSolved(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_AmyWait(BgPoEvent* this, GlobalContext* globalCtx); // Amy is the green Poe
void BgPoEvent_AmyPuzzle(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_PaintingEmpty(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_PaintingAppear(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_PaintingVanish(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_PaintingPresent(BgPoEvent* this, GlobalContext* globalCtx);
void BgPoEvent_PaintingBurn(BgPoEvent* this, GlobalContext* globalCtx);

extern UNK_TYPE D_06007860;
extern Gfx D_060075A0[];
extern Gfx D_060079E0[];
extern Gfx D_06006830[];
extern Gfx D_06006D60[];
extern Gfx D_06007230[];

const ActorInit Bg_Po_Event_InitVars = {
    ACTOR_BG_PO_EVENT,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_PO_SISTERS,
    sizeof(BgPoEvent),
    (ActorFunc)BgPoEvent_Init,
    (ActorFunc)BgPoEvent_Destroy,
    (ActorFunc)BgPoEvent_Update,
    (ActorFunc)BgPoEvent_Draw,
};

static ColliderTrisItemInit sTrisItemsInit[2] = {
    {
        { 0x04, { 0x00000000, 0x00, 0x00 }, { 0x0001F820, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 25.0f, 33.0f, 0.0f }, { -25.0f, 33.0f, 0.0f }, { -25.0f, -33.0f, 0.0f } } },
    },
    {
        { 0x04, { 0x00000000, 0x00, 0x00 }, { 0x0001F820, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 25.0f, 33.0f, 0.0f }, { -25.0f, -33.0f, 0.0f }, { 25.0f, -33.0f, 0.0f } } },
    },
};

static ColliderTrisInit sTrisInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x20, COLSHAPE_TRIS },
    2,
    sTrisItemsInit,
};

static u8 blocksAtRest = 0;
static Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
static s16 paintingsX[] = { 0xFAEA, 0xFC9E, 0x058D, 0x03D9 };
static s16 paintingsY[] = { 0x0453, 0x0443 };
static s16 paintingsZ[] = { 0xF2C8, 0xF34C };
static s16 blocksX[] = { 0x0865, 0x07B1, 0x0775 };
static s16 blocksZ[] = { 0xFA7E, 0xFABA, 0xFA06 };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

static s32 firstFall = 0;
static f32 blockPushDist = 0.0f;
static u8 puzzleState;

void BgPoEvent_InitPaintings(BgPoEvent* this, GlobalContext* globalCtx) {
    ColliderTrisItemInit* item;
    Vec3f* vtxVec;
    s32 i1;
    s32 i2;
    Vec3f sp9C[3];
    f32 coss;
    f32 sins;
    f32 scaley;
    s32 phi_t2;

    sins = Math_Sins(this->dyna.actor.shape.rot.y);
    coss = Math_Coss(this->dyna.actor.shape.rot.y);
    if (this->actorType == 4) {
        sins *= 2.4f;
        scaley = 1.818f;
        coss *= 2.4f;
    } else {
        scaley = 1.0f;
    }
    for (i1 = 0; i1 < sTrisInit.count; i1++) {
        item = &sTrisInit.list[i1];
        if (1) {} // This section looks like a macro of some sort.
        for (i2 = 0; i2 != 3; i2++) {
            vtxVec = &item->dim.vtx[i2];
            sp9C[i2].x = (vtxVec->x * coss) + (this->dyna.actor.initPosRot.pos.x + (sins * vtxVec->z));
            sp9C[i2].y = (vtxVec->y * scaley) + this->dyna.actor.initPosRot.pos.y;
            sp9C[i2].z = this->dyna.actor.initPosRot.pos.z + (coss * vtxVec->z) - (vtxVec->x * sins);
        }
        func_800627A0(&this->collider1, i1, &sp9C[0], &sp9C[1], &sp9C[2]);
    }
    if (this->actorType != 4) {
        if (this->actorIndex != 2) {
            if (this->actorType == 2) {
                phi_t2 = this->actorIndex;
            } else {
                phi_t2 = this->actorIndex + 2;
            }
            if (Actor_SpawnAsChild(&globalCtx->actorCtx, &this->dyna.actor, globalCtx, ACTOR_BG_PO_EVENT,
                                   paintingsX[phi_t2], paintingsY[this->actorIndex], paintingsZ[this->actorIndex], 0,
                                   this->dyna.actor.shape.rot.y + 0x8000, 0,
                                   ((this->actorIndex + 1) << 0xC) + (this->actorType << 8) +
                                       this->dyna.actor.params) == 0) {
                Actor_Kill(&this->dyna.actor);
                return;
            }
            if (this->actorIndex == 0) {
                if (this->dyna.actor.child->child == NULL) {
                    Actor_Kill(&this->dyna.actor);
                    return;
                }
                this->dyna.actor.parent = this->dyna.actor.child->child;
                this->dyna.actor.child->child->child = &this->dyna.actor;
            }
        }
    }
    this->timer = 0;
    if (this->actorType == 4) {
        puzzleState = 0;
        this->actionFunc = &BgPoEvent_AmyWait;
    } else {
        puzzleState = (s32)(Math_Rand_ZeroOne() * 3.0f) % 3;
        this->actionFunc = &BgPoEvent_PaintingEmpty;
    }
}

void BgPoEvent_InitBlocks(BgPoEvent* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;
    s32 local_c = 0;
    s32 dummy;

    thisx->flags |= 0x30;
    DynaPolyInfo_Alloc(&D_06007860, &local_c);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, local_c);
    if ((this->actorType == 0) && (this->actorIndex != 3)) {
        if (Actor_SpawnAsChild(&globalCtx->actorCtx, thisx, globalCtx, ACTOR_BG_PO_EVENT, blocksX[this->actorIndex],
                               thisx->posRot.pos.y, blocksZ[this->actorIndex], 0, thisx->shape.rot.y,
                               thisx->shape.rot.z - 0x4000,
                               ((this->actorIndex + 1) << 0xC) + (this->actorType << 8) + thisx->params) == NULL) {
            Actor_Kill(thisx);
            return;
        }
        if (this->actorIndex == 0) {
            if (thisx->child->child == 0) {
                Actor_Kill(&this->dyna.actor);
                return;
            }
            if (thisx->child->child->child == 0) {
                Actor_Kill(thisx);
                Actor_Kill(thisx->child);
                return;
            }
            thisx->parent = thisx->child->child->child;
            thisx->child->child->child->child = thisx;
        }
    }
    thisx->posRot.pos.y = 833.0f;
    thisx->groundY = func_8003C9A4(&globalCtx->colCtx, &thisx->floorPoly, &dummy, thisx, &thisx->posRot.pos);
    this->actionFunc = BgPoEvent_BlockWait;
}

void BgPoEvent_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgPoEvent* this = THIS;
    ColliderTris* collider;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    this->actorType = (thisx->params >> 8) & 0xF;
    this->actorIndex = (thisx->params >> 0xC) & 0xF;
    thisx->params &= 0x3F;

    if (this->actorType >= 2) {
        collider = &this->collider1;
        Collider_InitTris(globalCtx, collider);
        Collider_SetTris(globalCtx, collider, &this->dyna.actor, &sTrisInit, this->colliderItems);
        if (Flags_GetSwitch(globalCtx, thisx->params)) {
            Actor_Kill(&this->dyna.actor);
        } else {
            BgPoEvent_InitPaintings(this, globalCtx);
        }
    } else {
        DynaPolyInfo_SetActorMove(&this->dyna, 0);
        if (Flags_GetSwitch(globalCtx, thisx->params)) {
            Actor_Kill(&this->dyna.actor);
        } else {
            BgPoEvent_InitBlocks(this, globalCtx);
        }
    }
}

void BgPoEvent_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgPoEvent* this = THIS;

    if (this->actorType >= 2) {
        Collider_DestroyTris(globalCtx, &this->collider1);
    } else {
        DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
        if ((this->actorType == 1) && (gSaveContext.timer1Value > 0)) {
            gSaveContext.timer1State = 0xA;
        }
    }
}

void BgPoEvent_BlockWait(BgPoEvent* this, GlobalContext* globalCtx) {

    this->dyna.actor.posRot.pos.y = 833.0f;
    if (puzzleState == 0x3F) {
        if (this->actorType == 1) {
            func_800800F8(globalCtx, 0xC4E, 0x41, NULL, 0);
        }
        this->timer = 45;
        this->actionFunc = BgPoEvent_BlockShake;
    } else if (this->dyna.actor.xzDistFromLink > 50.0f) {
        if (this->actorType != 1) {
            puzzleState |= (1 << this->actorIndex);
        } else {
            puzzleState |= 0x10;
        }
    } else if (this->actorType != 1) {
        puzzleState &= ~(1 << this->actorIndex);
    } else {
        puzzleState &= ~0x10;
    }
}

void BgPoEvent_BlockShake(BgPoEvent* this, GlobalContext* globalCtx) {

    DECR(this->timer);
    if (this->timer < 15) {
        this->dyna.actor.posRot.pos.x = this->dyna.actor.initPosRot.pos.x + 2.0f * ((this->timer % 3) - 1);
        if (!(this->timer % 4)) {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_SHAKE);
        }
    }
    if (this->timer == 0) {
        this->dyna.actor.posRot.pos.x = this->dyna.actor.initPosRot.pos.x;
        puzzleState = 0;
        this->timer = 60;
        this->actionFunc = BgPoEvent_BlockFall;
    }
}

void BgPoEvent_BlockCheck(BgPoEvent* this) {
    s32 temp_f10;
    s32 temp_f6;
    s32 phi_v1;
    s32 phi_a1;
    s32 phi_t0;
    s32 phi_a3;

    if ((this->actorIndex == 3) || (this->actorIndex == 1)) {
        temp_f6 = this->dyna.actor.posRot.pos.z;
        temp_f10 = this->dyna.actor.child->posRot.pos.z;
        if (this->actorIndex == 3) {
            phi_v1 = temp_f6;
            phi_a1 = temp_f10;
            phi_a3 = this->dyna.actor.posRot.pos.x;
            phi_t0 = this->dyna.actor.child->posRot.pos.x;
        } else { // this->actorIndex == 1
            phi_v1 = temp_f6;
            phi_a1 = temp_f10;
            phi_a3 = this->dyna.actor.child->posRot.pos.x;
            phi_t0 = this->dyna.actor.posRot.pos.x;
        }
    } else {
        temp_f6 = this->dyna.actor.posRot.pos.x;
        temp_f10 = this->dyna.actor.child->posRot.pos.x;
        if (this->actorIndex == 0) {
            phi_v1 = temp_f6;
            phi_a1 = temp_f10;
            phi_a3 = this->dyna.actor.posRot.pos.z;
            phi_t0 = this->dyna.actor.child->posRot.pos.z;
        } else { // this->actorIndex == 2
            phi_v1 = temp_f6;
            phi_a1 = temp_f10;
            phi_a3 = this->dyna.actor.child->posRot.pos.z;
            phi_t0 = this->dyna.actor.posRot.pos.z;
        }
    }
    if ((phi_v1 == phi_a1) && ((phi_t0 - phi_a3) == 60)) {
        puzzleState |= (1 << this->actorIndex);
    } else {
        puzzleState &= ~(1 << this->actorIndex);
    }
}

void BgPoEvent_BlockFall(BgPoEvent* this, GlobalContext* globalCtx) {
    s32* temp1 = &firstFall;

    this->dyna.actor.velocity.y++;
    if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, 433.0f, this->dyna.actor.velocity.y) != 0) {
        this->dyna.actor.flags &= ~0x20;
        this->dyna.actor.velocity.y = 0.0f;
        blocksAtRest++;
        if (this->actorType != 1) {
            BgPoEvent_BlockCheck(this);
        } else {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_STONE_BOUND);
            func_80033E88(&this->dyna.actor, globalCtx, 5, 5);
            func_80088B34(this->timer);
            if (*temp1 == 0) {
                *temp1 = 1;
            } else {
                func_8002DF54(globalCtx, &PLAYER->actor, 7);
            }
        }
        this->direction = 0;
        this->actionFunc = BgPoEvent_BlockLift;
    }
}

void BgPoEvent_BlockLift(BgPoEvent* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Actor* newActor;

    if (puzzleState == 0xF) {
        this->actionFunc = BgPoEvent_BlockSolved;
        if ((this->actorType == 0) && (this->actorIndex == 0)) {
            newActor =
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_PO_SISTERS, this->dyna.actor.posRot.pos.x + 30.0f,
                            this->dyna.actor.posRot.pos.y - 30.0f, this->dyna.actor.posRot.pos.z + 30.0f, 0,
                            this->dyna.actor.shape.rot.y, 0, this->dyna.actor.params + 0x300);
            if (newActor != 0) {
                func_800800F8(globalCtx, 0xC62, 0x1E, newActor, 0);
            }
            func_80078884(0x4802);
            gSaveContext.timer1State = 0xA;
            return;
        }
    } else {
        if ((gSaveContext.timer1Value == 0) && (blocksAtRest == 5)) {
            player->stateFlags2 &= ~0x10;
            puzzleState = 0x10;
            blocksAtRest = 0;
        }
        if ((puzzleState == 0x40) || ((puzzleState == 0x10) && (func_8008E988(globalCtx) == 0))) {
            this->dyna.actor.posRot.rot.z = this->dyna.actor.shape.rot.z;
            this->actionFunc = &BgPoEvent_BlockReset;
            if (puzzleState == 0x10) {
                puzzleState = 0x40;
                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_RISING);
                func_8002DF54(globalCtx, &player->actor, 8);
            }
        } else if (0.0f != this->dyna.unk_150) {
            if (this->direction == 0) {
                if (func_800435D8(globalCtx, &this->dyna, 0x1E, 0x32, -0x14) != 0) {
                    blocksAtRest--;
                    this->direction = (this->dyna.unk_150 >= 0.0f) ? 1.0f : -1.0f;
                    this->actionFunc = BgPoEvent_BlockPush;
                } else {
                    player->stateFlags2 &= ~0x10;
                    this->dyna.unk_150 = 0.0f;
                }
            } else {
                player->stateFlags2 &= ~0x10;
                this->dyna.unk_150 = 0.0f;
                DECR(this->direction);
            }
        } else {
            this->direction = 0;
        }
    }
}

void BgPoEvent_BlockPush(BgPoEvent* this, GlobalContext* globalCtx) {
    f32 sp34;
    s32 sp30;
    Player* player = PLAYER;
    f32 temp_f0;

    this->dyna.actor.speedXZ += 0.1f;
    temp_f0 = this->dyna.actor.speedXZ;
    if (2.0f < temp_f0) {
        this->dyna.actor.speedXZ = 2.0f;
    } else {
        this->dyna.actor.speedXZ = temp_f0;
    }
    sp30 = Math_ApproxF(&blockPushDist, 20.0f, this->dyna.actor.speedXZ);
    sp34 = this->direction * blockPushDist;
    this->dyna.actor.posRot.pos.x = (Math_Sins(this->dyna.unk_158) * sp34) + this->dyna.actor.initPosRot.pos.x;
    this->dyna.actor.posRot.pos.z = (Math_Coss(this->dyna.unk_158) * sp34) + this->dyna.actor.initPosRot.pos.z;
    if (sp30 != 0) {
        player->stateFlags2 &= ~0x10;
        if ((0.0f < this->dyna.unk_150) && (func_800435D8(globalCtx, &this->dyna, 0x1E, 0x32, -0x14) == 0)) {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
        }
        this->dyna.unk_150 = 0.0f;
        this->dyna.actor.initPosRot.pos.x = this->dyna.actor.posRot.pos.x;
        this->dyna.actor.initPosRot.pos.z = this->dyna.actor.posRot.pos.z;
        blockPushDist = 0.0f;
        this->dyna.actor.speedXZ = 0.0f;
        this->direction = 5;
        blocksAtRest++;
        this->actionFunc = BgPoEvent_BlockLift;
        if (this->actorType == 1) {
            return;
        }
        BgPoEvent_BlockCheck(this);
        BgPoEvent_BlockCheck((BgPoEvent*)this->dyna.actor.parent);
    }
    func_8002F974(&this->dyna.actor, 0x200A);
}

void BgPoEvent_BlockReset(BgPoEvent* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (0.0f != this->dyna.unk_150) {
        player->stateFlags2 &= ~0x10;
        this->dyna.unk_150 = 0.0f;
    }
    if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, 493.0f, 1.0f) != 0) {
        if (Math_ApproxUpdateScaledS(&this->dyna.actor.shape.rot.z, this->dyna.actor.posRot.rot.z - 0x4000, 0x400) !=
            0) {
            this->actorIndex = (this->actorIndex + 1) % 4;
            this->actionFunc = BgPoEvent_BlockFall;
            puzzleState = 0;
            if (this->actorType == 1) {
                this->timer += 10;
                this->timer = (this->timer >= 121) ? 120 : this->timer;
            }
        }
    }
}

void BgPoEvent_BlockSolved(BgPoEvent* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (0.0f != this->dyna.unk_150) {
        player->stateFlags2 &= ~0x10;
    }
    if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, 369.0f, 2.0f) != 0) {
        puzzleState = 0x20;
        Actor_Kill(&this->dyna.actor);
    }
}

void BgPoEvent_AmyWait(BgPoEvent* this, GlobalContext* globalCtx) {
    if ((this->collider1.base.acFlags & 2) != 0) {
        puzzleState |= 0x20;
        this->timer = 5;
        func_8003426C(&this->dyna.actor, 0x4000, 0xFF, 0, 5);
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EN_PO_LAUGH2);
        this->actionFunc = BgPoEvent_AmyPuzzle;
    }
}

void BgPoEvent_AmyPuzzle(BgPoEvent* this, GlobalContext* globalCtx) {
    Vec3f sp54;

    if (puzzleState == 0xF) {
        sp54.x = this->dyna.actor.posRot.pos.x - 5.0f;
        sp54.y = Math_Rand_CenteredFloat(120.0f) + this->dyna.actor.posRot.pos.y;
        sp54.z = Math_Rand_CenteredFloat(120.0f) + this->dyna.actor.posRot.pos.z;
        func_8002A6B8(globalCtx, &sp54, &zeroVec, &zeroVec, 0xAA, 0, 0xC8, 0xFF, 0x64, 0xAA, 0, 0xFF, 0, 1, 9, 1);
    } else if (puzzleState == 0x20) {
        Actor_Kill(&this->dyna.actor);
    } else {
        DECR(this->timer);
    }
}

s32 BgPoEvent_NextPicture(BgPoEvent* this) {

    if ((this->dyna.actor.parent != NULL) && (this->dyna.actor.child != NULL)) {
        if (Math_Rand_ZeroOne() < 0.5f) {
            puzzleState = ((BgPoEvent*)this->dyna.actor.parent)->actorIndex;
        } else {
            puzzleState = ((BgPoEvent*)this->dyna.actor.child)->actorIndex;
        }
    } else if (this->dyna.actor.parent != NULL) {
        puzzleState = ((BgPoEvent*)this->dyna.actor.parent)->actorIndex;
    } else if (this->dyna.actor.child != NULL) {
        puzzleState = ((BgPoEvent*)this->dyna.actor.child)->actorIndex;
    } else {
        return 0;
    }
    return 1;
}

void BgPoEvent_PaintingEmpty(BgPoEvent* this, GlobalContext* globalCtx) {
    if (puzzleState == this->actorIndex) {
        this->timer = 255;
        this->actionFunc = BgPoEvent_PaintingAppear;
    }
}

void BgPoEvent_PaintingAppear(BgPoEvent* this, GlobalContext* globalCtx) {
    this->timer -= 20;
    if (this->timer <= 0) {
        this->timer = 1000;
        this->actionFunc = BgPoEvent_PaintingPresent;
    }
}

void BgPoEvent_PaintingVanish(BgPoEvent* this, GlobalContext* globalCtx) {
    this->timer += 20;
    if (this->timer >= 255) {
        BgPoEvent_NextPicture(this);
        this->actionFunc = BgPoEvent_PaintingEmpty;
    }
}

void BgPoEvent_PaintingPresent(BgPoEvent* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;
    Player* player = PLAYER;
    s32 phi_v0;

    DECR(this->timer);

    if ((this->timer == 0) || ((thisx->xzDistFromLink < 150.0f) && (thisx->yDistFromLink < 50.0f)) ||
        (((func_8002DD78(player) != 0) && (thisx->xzDistFromLink < 320.0f)) &&
         ((this->actorIndex != 2) ? (thisx->yDistFromLink < 100.0f) : (thisx->yDistFromLink < 0.0f)) &&
         (func_8002DFC8(thisx, 0x2000, globalCtx) != 0))) {
        /*This last conditional is checking if
            1) Link is holding a ranged weapon
            2) Link is too close in the xz plane
            3) Link is too close in the y direction. The painting
               under the balcony allows him to be closer.
            4) Link is within 45 degrees of facing the painting. */

        if ((thisx->parent != NULL) || (thisx->child != NULL)) {
            this->timer = 0;
            Audio_PlayActorSound2(thisx, NA_SE_EN_PO_LAUGH);
            this->actionFunc = &BgPoEvent_PaintingVanish;
            return;
        }
    }
    if ((this->collider1.base.acFlags & 2) == 0) {
        return;
    }
    if (BgPoEvent_NextPicture(this) == 0) {
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_PO_SISTERS, thisx->posRot.pos.x,
                    thisx->posRot.pos.y - 40.0f, thisx->posRot.pos.z, 0, thisx->shape.rot.y, 0,
                    thisx->params + ((this->actorType - 1) << 8));
        func_800800F8(globalCtx, 0xC58, 0x50, thisx, 0);
        func_80078884(0x4802);

    } else {
        Audio_PlayActorSound2(thisx, NA_SE_EN_PO_LAUGH2);
        func_800800F8(globalCtx, 0xC58, 0x23, thisx, 0);
    }
    if (thisx->parent != NULL) {
        thisx->parent->child = NULL;
        thisx->parent = NULL;
    }
    if (thisx->child != NULL) {
        thisx->child->parent = NULL;
        thisx->child = NULL;
    }
    this->timer = 20;
    this->actionFunc = &BgPoEvent_PaintingBurn;
}

void BgPoEvent_PaintingBurn(BgPoEvent* this, GlobalContext* globalCtx) {
    Vec3f sp54;

    this->timer--;
    sp54.x = (Math_Sins(this->dyna.actor.shape.rot.y) * 5.0f) + this->dyna.actor.posRot.pos.x;
    sp54.y = Math_Rand_CenteredFloat(66.0f) + this->dyna.actor.posRot.pos.y;
    sp54.z = Math_Rand_CenteredFloat(50.0f) + this->dyna.actor.posRot.pos.z;
    if (this->timer >= 0) {
        if (this->actorType == 2) {
            func_8002A6B8(globalCtx, &sp54, &zeroVec, &zeroVec, 0x64, 0, 0xFF, 0xFF, 0x96, 0xAA, 0xFF, 0, 0, 1, 9, 1);
        } else {
            func_8002A6B8(globalCtx, &sp54, &zeroVec, &zeroVec, 0x64, 0, 0xC8, 0xFF, 0xFF, 0xAA, 0x32, 0x64, 0xFF, 1, 9,
                          1);
        }
    }
    if (this->timer == 0) {
        this->dyna.actor.draw = NULL;
    }
    if (this->timer < -60) {
        Actor_Kill(&this->dyna.actor);
    }
}

void BgPoEvent_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgPoEvent* this = THIS;

    this->actionFunc(this, globalCtx);
    if ((this->actionFunc == BgPoEvent_AmyWait) || (this->actionFunc == BgPoEvent_PaintingPresent)) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }
}

Gfx* displayLists[] = { D_060075A0, D_060079E0, D_06006830, D_06006D60, D_06007230 };

void BgPoEvent_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgPoEvent* this = THIS;
    f32 pad;
    f32 pad2;
    Vec3f sp58;
    Vec3f sp4C;
    f32 temp_f0;
    u8 phi_a0;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_po_event.c", 0x5C9);
    func_80093D18(globalCtx->state.gfxCtx);
    if ((this->actorType == 3) || (this->actorType == 2)) {
        if (this->actionFunc == BgPoEvent_PaintingEmpty) {
            phi_a0 = 0xFF;
        } else if (this->actionFunc == BgPoEvent_PaintingPresent) {
            phi_a0 = 0;
        } else {
            phi_a0 = this->timer;
        }
        gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0xFF, 0xFF, 0xFF, phi_a0);
    }
    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_po_event.c", 0x5DD),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyOpa.p++, displayLists[this->actorType]);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_po_event.c", 0x5E4);

    if ((this->actorType == 0) || (this->actorType == 1)) {
        temp_f0 = (833.0f - thisx->posRot.pos.y) * 0.0025f;
        if (!(temp_f0 > 1.0f)) {
            sp58.x = thisx->posRot.pos.x;
            sp58.y = thisx->posRot.pos.y - 30.0f;
            sp58.z = thisx->posRot.pos.z;
            sp4C.y = 1.0f;
            sp4C.x = sp4C.z = (temp_f0 * 0.3f) + 0.4f;
            func_80033C30(&sp58, &sp4C, (u8)(155.0f + temp_f0 * 100.0f), globalCtx);
        }
    }
}
