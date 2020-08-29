#include "z_en_box.h"

#define FLAGS 0x00000000

#define THIS ((EnBox*)thisx)

typedef enum {
    /*
     set on init unless treasure flag is set
     if clear, chest moves (Actor_MoveForward) (falls, likely)
     ends up cleared from SWITCH_FLAG_FALL types when switch flag is set
    */
    ENBOX_MOVE_IMMOBILE = 1 << 0,
    /*
     set in the logic for SWITCH_FLAG_FALL types
     otherwise unused
    */
    ENBOX_MOVE_UNUSED = 1 << 1,
    /*
     set with 50% chance on init for SWITCH_FLAG_FALL types
     only used for SWITCH_FLAG_FALL types
     ends up "blinking" (set/clear every frame) once switch flag is set,
        if some collision-related condition (?) is met
     only used for signum of z rotation
    */
    ENBOX_MOVE_FALL_ANGLE_SIDE = 1 << 2,
    /*
     when set, gets cleared next EnBox_Update call and clip to the floor
    */
    ENBOX_MOVE_STICK_TO_GROUND = 1 << 4
} EnBox_MovementFlags;

typedef enum {
    ENBOX_STATE_0, // waiting for player near / player available / player ? (IDLE)
    ENBOX_STATE_1, // used only temporarily, maybe "player is ready" ?
    ENBOX_STATE_2  // waiting for something message context-related
} EnBox_StateUnk1FB;

void EnBox_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBox_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBox_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBox_Draw(Actor* thisx, GlobalContext* globalCtx);
void EnBox_SetActionFunc(EnBox*, EnBoxActionFunc);
void EnBox_ClipToGround(EnBox*, GlobalContext*);
void EnBox_RandomMovement(EnBox*, Vec3f*, Vec3f*, Vec3f*);
void EnBox_SpawnLandingEffects(EnBox*, GlobalContext*);
void EnBox_Fall(EnBox*, GlobalContext*);
void EnBox_FallOnSwitchFlag(EnBox*, GlobalContext*);
void func_809C9700(EnBox*, GlobalContext*);
void EnBox_AppearOnSwitchFlag(EnBox*, GlobalContext*);
void EnBox_AppearOnRoomClear(EnBox*, GlobalContext*);
void EnBox_AppearInit(EnBox*, GlobalContext*);
void EnBox_AppearAnimation(EnBox*, GlobalContext*);
void EnBox_WaitOpen(EnBox*, GlobalContext*);
void EnBox_Open(EnBox*, GlobalContext*);
void func_809C9EF8(EnBox*, GlobalContext*);
void EnBox_PostLimbDraw2(GlobalContext*, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx, Gfx** gfx);
Gfx* EnBox_EmptyDList(GraphicsContext*);
Gfx* func_809CA4A0(GraphicsContext*);
Gfx* func_809CA518(GraphicsContext*);

// object
extern AnimationHeader D_06000128;
extern AnimationHeader D_0600024C;
extern AnimationHeader D_0600043C;
extern Gfx D_060006F0[]; // regular chest base
extern Gfx D_06000AE8[]; // boss key chest base
extern Gfx D_060010C0[]; // regular chest top
extern Gfx D_06001678[]; // boss key chest top
extern SkeletonHeader D_060047D8;
extern UNK_TYPE D_06005FC8;

const ActorInit En_Box_InitVars = {
    ACTOR_EN_BOX,
    ACTORTYPE_CHEST,
    FLAGS,
    OBJECT_BOX,
    sizeof(EnBox),
    (ActorFunc)EnBox_Init,
    (ActorFunc)EnBox_Destroy,
    (ActorFunc)EnBox_Update,
    (ActorFunc)EnBox_Draw,
};

AnimationHeader* D_809CA800[4] = { &D_0600024C, &D_06000128, &D_0600043C, &D_0600043C };

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(unk_1F, 0, ICHAIN_STOP),
};

Vec3f D_809CA814 = { 0, 1, 0 };
Vec3f D_809CA820 = { 0, 0, 0 };

s32 unused; // bss

void EnBox_SetActionFunc(EnBox* this, EnBoxActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnBox_ClipToGround(EnBox* this, GlobalContext* globalCtx) {
    f32 newY;
    CollisionPoly* a1;
    void* a2;
    Vec3f pos;

    pos = this->dyna.actor.posRot.pos;
    pos.y += 1.0f;
    newY = func_8003C9A4(&globalCtx->colCtx, &a1, &a2, &this->dyna.actor, &pos);
    if (newY != -32000.0f) {
        this->dyna.actor.posRot.pos.y = newY;
    }
}

void EnBox_Init(Actor* thisx, GlobalContext* globalCtx_) {
    GlobalContext* globalCtx = globalCtx_;
    EnBox* this = THIS;
    AnimationHeader* animHeader;
    s32 dyna_unk;
    f32 animFrameStart;
    f32 animFrameCount;
    s32 linkAge;

    animFrameStart = 0.0f;
    linkAge = gSaveContext.linkAge;
    animHeader = D_809CA800[linkAge];
    dyna_unk = 0;
    animFrameCount = SkelAnime_GetFrameCount(&animHeader->genericHeader);
    Actor_ProcessInitChain(thisx, sInitChain);

    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_06005FC8, &dyna_unk);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, dyna_unk);
    func_8003ECA8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);

    this->movementFlags = 0;
    this->type = (thisx->params >> 12) & 0xF;
    this->iceEffTimer = 0;
    this->unk_1FB = ENBOX_STATE_0;
    this->dyna.actor.gravity = -5.5f;
    this->switchFlag = this->dyna.actor.posRot.rot.z;
    this->dyna.actor.minVelocityY = -50.0f;

    if (globalCtx) {} // helps the compiler store globalCtx into s1

    if (Flags_GetTreasure(globalCtx_, this->dyna.actor.params & 0x1F)) {
        this->alpha = 255;
        this->iceEffTimer = 100;
        EnBox_SetActionFunc(this, &EnBox_Open);
        this->movementFlags |= ENBOX_MOVE_STICK_TO_GROUND;
        animFrameStart = animFrameCount;
    } else if (((this->type == ENBOX_TYPE_SWITCH_FLAG_FALL_BIG) || (this->type == ENBOX_TYPE_SWITCH_FLAG_FALL_SMALL)) &&
               (!Flags_GetSwitch(globalCtx, this->switchFlag))) {
        func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
        if (Math_Rand_ZeroOne() < 0.5f) {
            this->movementFlags |= ENBOX_MOVE_FALL_ANGLE_SIDE;
        }
        this->unk_1A8 = -12;
        EnBox_SetActionFunc(this, &EnBox_FallOnSwitchFlag);
        this->alpha = 0;
        this->movementFlags |= ENBOX_MOVE_IMMOBILE;
        this->dyna.actor.flags |= 1 << 4;
    } else if (((this->type == ENBOX_TYPE_ROOM_CLEAR_BIG) || (this->type == ENBOX_TYPE_ROOM_CLEAR_SMALL)) &&
               (!Flags_GetClear(globalCtx, this->dyna.actor.room))) {
        EnBox_SetActionFunc(this, &EnBox_AppearOnRoomClear);
        func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
        this->movementFlags |= ENBOX_MOVE_IMMOBILE;
        this->dyna.actor.posRot.pos.y = this->dyna.actor.initPosRot.pos.y - 50.0f;
        this->alpha = 0;
        this->dyna.actor.flags |= 1 << 4;
    } else if ((this->type == ENBOX_TYPE_9) || (this->type == ENBOX_TYPE_10)) {
        EnBox_SetActionFunc(this, &func_809C9700);
        this->dyna.actor.flags |= 1 << 25;
        func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
        this->movementFlags |= ENBOX_MOVE_IMMOBILE;
        this->dyna.actor.posRot.pos.y = this->dyna.actor.initPosRot.pos.y - 50.0f;
        this->alpha = 0;
        this->dyna.actor.flags |= 1 << 4;
    } else if ((this->type == ENBOX_TYPE_SWITCH_FLAG_BIG) && (!Flags_GetSwitch(globalCtx, (s32)this->switchFlag))) {
        EnBox_SetActionFunc(this, &EnBox_AppearOnSwitchFlag);
        func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
        this->movementFlags |= ENBOX_MOVE_IMMOBILE;
        this->dyna.actor.posRot.pos.y = this->dyna.actor.initPosRot.pos.y - 50.0f;
        this->alpha = 0;
        this->dyna.actor.flags |= 1 << 4;
    } else {
        if ((this->type == ENBOX_TYPE_4) || (this->type == ENBOX_TYPE_6)) {
            this->dyna.actor.flags |= 1 << 7;
        }
        EnBox_SetActionFunc(this, &EnBox_WaitOpen);
        this->movementFlags |= ENBOX_MOVE_IMMOBILE;
        this->movementFlags |= ENBOX_MOVE_STICK_TO_GROUND;
    }

    this->dyna.actor.shape.rot.z = 0;
    this->dyna.actor.posRot.rot.y += 0x8000;
    this->dyna.actor.posRot.rot.z = this->dyna.actor.shape.rot.z;
    this->dyna.actor.initPosRot.rot.z = this->dyna.actor.shape.rot.z;

    SkelAnime_Init(globalCtx, &this->skelanime, &D_060047D8, animHeader, this->limbDrawTable, this->transitionDrawTable,
                   5);
    SkelAnime_ChangeAnim(&this->skelanime, animHeader, 1.5f, animFrameStart, animFrameCount, 2, 0.0f);

    switch (this->type) {
        case ENBOX_TYPE_SMALL:
        case ENBOX_TYPE_6:
        case ENBOX_TYPE_ROOM_CLEAR_SMALL:
        case ENBOX_TYPE_SWITCH_FLAG_FALL_SMALL:
            Actor_SetScale(thisx, 0.005f);
            Actor_SetHeight(thisx, 20.0f);
            break;
        default:
            Actor_SetScale(thisx, 0.01f);
            Actor_SetHeight(thisx, 40.0f);
    }
}

void EnBox_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnBox* this = THIS;
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void EnBox_RandomMovement(EnBox* this, Vec3f* pos, Vec3f* velocity, Vec3f* accel) {
    f32 randomRadius = Math_Rand_ZeroOne() * 25.0f;
    s16 randomAngle = Math_Rand_ZeroOne() * 0x10000;

    *pos = this->dyna.actor.posRot.pos;
    pos->x += Math_Sins(randomAngle) * randomRadius;
    pos->z += Math_Coss(randomAngle) * randomRadius;

    velocity->y = 1.0f;
    velocity->x = Math_Sins(randomAngle);
    velocity->z = Math_Coss(randomAngle);

    accel->x = 0.0f;
    accel->y = 0.0f;
    accel->z = 0.0f;
}

/*
Spawns effects randomly around the chest
Used when the chest hits the ground after falling (FALL types)
*/
void EnBox_SpawnLandingEffects(EnBox* this, GlobalContext* globalCtx) {
    s32 i;
    Vec3f pos;
    Vec3f velocity;
    Vec3f accel;

    for (i = 0; i != 20; i++) {
        EnBox_RandomMovement(this, &pos, &velocity, &accel);
        func_8002873C(globalCtx, &pos, &velocity, &accel, 100, 30, 15);
    }
}

/*
Used while the chest is falling (FALL types)
*/
void EnBox_Fall(EnBox* this, GlobalContext* globalCtx) {
    f32 yDiff;

    this->alpha = 255;
    this->movementFlags &= ~ENBOX_MOVE_IMMOBILE;
    if (this->dyna.actor.bgCheckFlags & 1) {
        this->movementFlags |= ENBOX_MOVE_UNUSED;
        if (this->movementFlags & ENBOX_MOVE_FALL_ANGLE_SIDE) {
            this->movementFlags &= ~ENBOX_MOVE_FALL_ANGLE_SIDE;
        } else {
            this->movementFlags |= ENBOX_MOVE_FALL_ANGLE_SIDE;
        }
        if (this->type == ENBOX_TYPE_SWITCH_FLAG_FALL_BIG) {
            this->dyna.actor.velocity.y = -this->dyna.actor.velocity.y * 0.55f;
        } else {
            this->dyna.actor.velocity.y = -this->dyna.actor.velocity.y * 0.65f;
        }
        if (this->dyna.actor.velocity.y < 5.5f) {
            this->dyna.actor.shape.rot.z = 0;
            this->dyna.actor.posRot.pos.y = this->dyna.actor.groundY;
            EnBox_SetActionFunc(this, &EnBox_WaitOpen);
            func_800803F0(globalCtx, this->unk_1AC);
        }
        Audio_PlaySoundGeneral(NA_SE_EV_COFFIN_CAP_BOUND, &this->dyna.actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
        EnBox_SpawnLandingEffects(this, globalCtx);
    }
    yDiff = this->dyna.actor.posRot.pos.y - this->dyna.actor.groundY;
    if (this->movementFlags & ENBOX_MOVE_FALL_ANGLE_SIDE) {
        this->dyna.actor.shape.rot.z = yDiff * 50.0f;
    } else {
        this->dyna.actor.shape.rot.z = -yDiff * 50.0f;
    }
}

void EnBox_FallOnSwitchFlag(EnBox* this, GlobalContext* globalCtx) {
    s32 treasureFlag;

    treasureFlag = this->dyna.actor.params & 0x1F;
    if (treasureFlag >= ENBOX_TREASURE_FLAG_UNK_MIN && treasureFlag < ENBOX_TREASURE_FLAG_UNK_MAX) {
        func_8002F5F0(&this->dyna.actor, globalCtx);
    }

    if (this->unk_1A8 >= 0) {
        EnBox_SetActionFunc(this, &EnBox_Fall);
        this->unk_1AC = func_800800F8(globalCtx, 4500, 9999, &this->dyna.actor, 0);
        func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    } else if (this->unk_1A8 >= -11) {
        this->unk_1A8++;
    } else if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
        this->unk_1A8++;
    }
}

// used for types 9, 10
void func_809C9700(EnBox* this, GlobalContext* globalCtx) {
    s32 treasureFlag = this->dyna.actor.params & 0x1F;
    Player* player = PLAYER;

    if (treasureFlag >= ENBOX_TREASURE_FLAG_UNK_MIN && treasureFlag < ENBOX_TREASURE_FLAG_UNK_MAX) {
        func_8002F5F0(&this->dyna.actor, globalCtx);
    }

    if (Math3D_Vec3fDistSq(&this->dyna.actor.posRot.pos, &player->actor.posRot.pos) > 22500.0f) {
        this->unk_1FB = ENBOX_STATE_0;
    } else {
        if (this->unk_1FB == ENBOX_STATE_0) {
            if (!(player->stateFlags2 & (1 << 24))) {
                player->stateFlags2 |= (1 << 23);
                return;
            }
            this->unk_1FB = ENBOX_STATE_1;
        }

        if (this->unk_1FB == ENBOX_STATE_1) {
            func_8010BD58(globalCtx, 1);
            this->unk_1FB = ENBOX_STATE_2;
        } else if (this->unk_1FB == ENBOX_STATE_2 && globalCtx->msgCtx.unk_E3EE == 4) {
            if ((globalCtx->msgCtx.unk_E3EC == 8 && this->type == ENBOX_TYPE_9) ||
                (globalCtx->msgCtx.unk_E3EC == 9 && this->type == ENBOX_TYPE_10)) {
                this->dyna.actor.flags &= ~(1 << 25);
                EnBox_SetActionFunc(this, &EnBox_AppearInit);
                func_80080480(globalCtx, &this->dyna.actor);
                this->unk_1A8 = 0;
                this->unk_1FB = ENBOX_STATE_0;
            } else {
                this->unk_1FB = ENBOX_STATE_0;
            }
        }
    }
}

void EnBox_AppearOnSwitchFlag(EnBox* this, GlobalContext* globalCtx) {
    s32 treasureFlag = this->dyna.actor.params & 0x1F;
    if (treasureFlag >= ENBOX_TREASURE_FLAG_UNK_MIN && treasureFlag < ENBOX_TREASURE_FLAG_UNK_MAX) {
        func_8002F5F0(&this->dyna.actor, globalCtx);
    }

    if (Flags_GetSwitch(globalCtx, this->switchFlag)) {
        func_80080480(globalCtx, &this->dyna.actor);
        EnBox_SetActionFunc(this, &EnBox_AppearInit);
        this->unk_1A8 = -30;
    }
}

void EnBox_AppearOnRoomClear(EnBox* this, GlobalContext* globalCtx) {
    s32 treasureFlag = this->dyna.actor.params & 0x1F;
    if (treasureFlag >= ENBOX_TREASURE_FLAG_UNK_MIN && treasureFlag < ENBOX_TREASURE_FLAG_UNK_MAX) {
        func_8002F5F0(&this->dyna.actor, globalCtx);
    }

    if (Flags_GetTempClear(globalCtx, this->dyna.actor.room) && !func_8008E988(globalCtx)) {
        Flags_SetClear(globalCtx, this->dyna.actor.room);
        EnBox_SetActionFunc(this, &EnBox_AppearInit);
        func_80080480(globalCtx, &this->dyna.actor);
        if (func_80080728(globalCtx, this->dyna.actor.type)) {
            this->unk_1A8 = 0;
        } else {
            this->unk_1A8 = -30;
        }
    }
}

/*
The chest is ready to appear, possibly waiting for camera/cutscene-related stuff to happen
*/
void EnBox_AppearInit(EnBox* this, GlobalContext* globalCtx) {
    if (func_8005B198() == this->dyna.actor.type || this->unk_1A8 != 0) {
        EnBox_SetActionFunc(this, &EnBox_AppearAnimation);
        this->unk_1A8 = 0;
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_KANKYO, this->dyna.actor.initPosRot.pos.x,
                    this->dyna.actor.initPosRot.pos.y, this->dyna.actor.initPosRot.pos.z, 0, 0, 0, 0x0011);
        Audio_PlaySoundGeneral(NA_SE_EV_TRE_BOX_APPEAR, &this->dyna.actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                               &D_801333E8);
    }
}

void EnBox_AppearAnimation(EnBox* this, GlobalContext* globalCtx) {
    func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);

    if (this->unk_1A8 < 0) {
        this->unk_1A8++;
    } else if (this->unk_1A8 < 40) {
        this->unk_1A8++;
        this->dyna.actor.posRot.pos.y += 1.25f;
    } else if (this->unk_1A8 < 60) {
        this->alpha += 12;
        this->unk_1A8++;
        this->dyna.actor.posRot.pos.y = this->dyna.actor.initPosRot.pos.y;
    } else {
        EnBox_SetActionFunc(this, &EnBox_WaitOpen);
    }
}

/*
Chest is ready to be open
something else (like, Link's actor?) probably sets unk_1F4 from outside this actor's code?
*/
void EnBox_WaitOpen(EnBox* this, GlobalContext* globalCtx) {
    f32 frameCount;
    AnimationHeader* anim;
    s32 linkAge;
    s32 t2;
    Vec3f sp4C;
    Player* player;

    this->alpha = 255;
    this->movementFlags |= ENBOX_MOVE_IMMOBILE;
    if (this->unk_1F4) {
        linkAge = gSaveContext.linkAge;
        t2 = this->unk_1F4 < 0 ? 2 : 0;
        anim = D_809CA800[t2 + linkAge];
        frameCount = SkelAnime_GetFrameCount(&anim->genericHeader);
        SkelAnime_ChangeAnim(&this->skelanime, anim, 1.5f, 0, frameCount, 2, 0.0f);
        EnBox_SetActionFunc(this, &EnBox_Open);
        if (this->unk_1F4 > 0) {
            switch (this->type) {
                case ENBOX_TYPE_SMALL:
                case ENBOX_TYPE_6:
                case ENBOX_TYPE_ROOM_CLEAR_SMALL:
                case ENBOX_TYPE_SWITCH_FLAG_FALL_SMALL:
                    break;
                default:
                    Actor_SpawnAttached(&globalCtx->actorCtx, &this->dyna.actor, globalCtx, ACTOR_DEMO_TRE_LGT,
                                        this->dyna.actor.posRot.pos.x, this->dyna.actor.posRot.pos.y,
                                        this->dyna.actor.posRot.pos.z, this->dyna.actor.shape.rot.x,
                                        this->dyna.actor.shape.rot.y, this->dyna.actor.shape.rot.z, 0xFFFF);
                    func_800F5C64(0x92B);
            }
        }
        osSyncPrintf("Actor_Environment_Tbox_On() %d\n", this->dyna.actor.params & 0x1F);
        Flags_SetTreasure(globalCtx, this->dyna.actor.params & 0x1F);
    } else {
        player = PLAYER;
        func_8002DBD0(&this->dyna.actor, &sp4C, &player->actor.posRot.pos);
        if (-50.0f < sp4C.z && sp4C.z < 0.0f && fabsf(sp4C.y) < 10.0f && fabsf(sp4C.x) < 20.0f &&
            func_8002DFC8(&this->dyna.actor, 0x3000, globalCtx)) {
            func_8002F554(&this->dyna.actor, globalCtx, 0 - ((this->dyna.actor.params >> 5) & 0x7F));
        }
        if (Flags_GetTreasure(globalCtx, this->dyna.actor.params & 0x1F)) {
            EnBox_SetActionFunc(this, &EnBox_Open);
        }
    }
}

/*
Plays an animation to its end, playing sounds at key points
*/
void EnBox_Open(EnBox* this, GlobalContext* globalCtx) {
    u16 sfxId;

    this->dyna.actor.flags &= ~(1 << 7);

    if (SkelAnime_FrameUpdateMatrix(&this->skelanime)) {
        if (this->unk_1F4 > 0) {
            if (this->unk_1F4 < 120) {
                this->unk_1F4++;
            } else {
                Math_ApproxF(&this->unk_1B0, 0.0f, 0.05f);
            }
        } else {
            if (this->unk_1F4 > -120) {
                this->unk_1F4--;
            } else {
                Math_ApproxF(&this->unk_1B0, 0.0f, 0.05f);
            }
        }
    } else {
        sfxId = 0;

        if (func_800A56C8(&this->skelanime, 30.0f)) {
            sfxId = NA_SE_EV_TBOX_UNLOCK;
        } else if (func_800A56C8(&this->skelanime, 90.0f)) {
            sfxId = NA_SE_EV_TBOX_OPEN;
        }

        if (sfxId) {
            Audio_PlaySoundGeneral(sfxId, &this->dyna.actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }

        if (this->skelanime.limbDrawTbl[3].z > 0) {
            this->unk_1B0 = (0x7D00 - this->skelanime.limbDrawTbl[3].z) * 0.00006f;
            if (this->unk_1B0 < 0.0f) {
                this->unk_1B0 = 0.0f;
            } else if (this->unk_1B0 > 1.0f) {
                this->unk_1B0 = 1.0f;
            }
        }
    }
}

void func_809C9EF8(EnBox* this, GlobalContext* globalCtx) {
    Vec3f sp4c_3f;
    Vec3f sp40_3f;
    Vec3f sp34_3f;
    f32 f0;

    sp40_3f = D_809CA814;
    sp34_3f = D_809CA820;
    this->iceEffTimer++;
    func_8002F974(&this->dyna.actor, 0x31F1);
    if (Math_Rand_ZeroOne() < 0.3f) {
        f0 = Math_Rand_ZeroOne();
        sp4c_3f = this->dyna.actor.posRot.pos;
        f0 = f0 + f0 - 1.0f;
        if (this->type == 5 || this->type == 6 || this->type == 7 || this->type == 8) {
            sp4c_3f.x += f0 * 10.0f * Math_Sins(this->dyna.actor.posRot.rot.y + 0x4000);
            sp4c_3f.z += f0 * 10.0f * Math_Coss(this->dyna.actor.posRot.rot.y + 0x4000);
            f0 = Math_Rand_ZeroOne();
            f0 = f0 + f0 - 1.0f;
            sp40_3f.x = f0 * 0.8f * Math_Sins(this->dyna.actor.posRot.rot.y);
            sp40_3f.y = 1.8f;
            sp40_3f.z = f0 * 0.8f * Math_Coss(this->dyna.actor.posRot.rot.y);
        } else {
            sp4c_3f.x += f0 * 20.0f * Math_Sins(this->dyna.actor.posRot.rot.y + 0x4000);
            sp4c_3f.z += f0 * 20.0f * Math_Coss(this->dyna.actor.posRot.rot.y + 0x4000);
            f0 = Math_Rand_ZeroOne();
            f0 = f0 + f0 - 1.0f;
            sp40_3f.x = f0 * 1.6f * Math_Sins(this->dyna.actor.posRot.rot.y);
            sp40_3f.y = 1.8f;
            sp40_3f.z = f0 * 1.6f * Math_Coss(this->dyna.actor.posRot.rot.y);
        }
        func_8002AA44(globalCtx, &sp4c_3f, &sp40_3f, &sp34_3f, 0x96);
    }
}

void EnBox_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnBox* this = THIS;

    if (this->movementFlags & ENBOX_MOVE_STICK_TO_GROUND) {
        this->movementFlags &= ~ENBOX_MOVE_STICK_TO_GROUND;
        EnBox_ClipToGround(this, globalCtx);
    }

    (this->actionFunc)(this, globalCtx);

    if (!(this->movementFlags & ENBOX_MOVE_IMMOBILE)) {
        Actor_MoveForward(thisx);
        func_8002E4B4(globalCtx, thisx, 0.0f, 0.0f, 0.0f, 0x1C);
    }

    switch (this->type) {
        case ENBOX_TYPE_SMALL:
        case ENBOX_TYPE_6:
        case ENBOX_TYPE_ROOM_CLEAR_SMALL:
        case ENBOX_TYPE_SWITCH_FLAG_FALL_SMALL:
            Actor_SetHeight(thisx, 20.0f);
            break;
        default:
            Actor_SetHeight(thisx, 40.0f);
    }

    if ((thisx->params >> 5 & 0x7F) == 0x7C && this->actionFunc == &EnBox_Open &&
        this->skelanime.animCurrentFrame > 45 && this->iceEffTimer < 100) {
        func_809C9EF8(this, globalCtx);
    }
}

void EnBox_PostLimbDraw2(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx, Gfx** gfx) {
    EnBox* this = THIS;
    s32 unused;

    if (limbIndex == 1) {
        gSPMatrix((*gfx)++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_box.c", 1492),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        if (this->type != ENBOX_TYPE_DECORATED_BIG) {
            gSPDisplayList((*gfx)++, D_060006F0);
        } else {
            gSPDisplayList((*gfx)++, D_06000AE8);
        }
    } else if (limbIndex == 3) {
        gSPMatrix((*gfx)++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_box.c", 1502),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        if (this->type != ENBOX_TYPE_DECORATED_BIG) {
            gSPDisplayList((*gfx)++, D_060010C0);
        } else {
            gSPDisplayList((*gfx)++, D_06001678);
        }
    }
}

Gfx* EnBox_EmptyDList(GraphicsContext* gfxCtx) {
    Gfx* displayList;
    Gfx* displayListHead;

    displayListHead = Graph_Alloc(gfxCtx, sizeof(Gfx));
    if (displayListHead == NULL) {
        __assert("gfxp != NULL", "../z_en_box.c", 1528);
    }

    displayList = displayListHead;
    gSPEndDisplayList(displayList++);

    return displayListHead;
}

// set render mode with a focus on transparency
Gfx* func_809CA4A0(GraphicsContext* gfxCtx) {
    Gfx* displayListHead;
    Gfx* displayList;

    displayList = Graph_Alloc(gfxCtx, 2 * sizeof(Gfx));
    if (displayList == NULL) {
        __assert("gfxp != NULL", "../z_en_box.c", 1546);
    }

    displayListHead = displayList;
    gDPSetRenderMode(displayList++,
                     AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                         GBL_c1(G_BL_CLR_FOG, G_BL_A_SHADE, G_BL_CLR_IN, G_BL_1MA),
                     AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                         GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA));
    gSPEndDisplayList(displayList++);

    return displayListHead;
}

Gfx* func_809CA518(GraphicsContext* gfxCtx) {
    Gfx* displayListHead;
    Gfx* displayList;

    displayList = Graph_Alloc(gfxCtx, 2 * sizeof(Gfx));
    if (displayList == NULL) {
        __assert("gfxp != NULL", "../z_en_box.c", 1564);
    }

    displayListHead = displayList;
    gDPSetRenderMode(displayList++,
                     AA_EN | Z_CMP | Z_UPD | IM_RD | CVG_DST_CLAMP | ZMODE_OPA | ALPHA_CVG_SEL |
                         GBL_c1(G_BL_CLR_FOG, G_BL_A_SHADE, G_BL_CLR_IN, G_BL_1MA),
                     G_RM_AA_ZB_OPA_SURF2);
    gSPEndDisplayList(displayList++);

    return displayListHead;
}

void EnBox_Draw(Actor* thisx, GlobalContext* globalCtx) {
    GraphicsContext* gfxCtx;
    EnBox* this = THIS;
    Gfx* dispRefs[4];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_box.c", 1581);

    /*
    thisx->flags & (1 << 7) is set by Init (if type is 4 or 6)
    and cleared by Open
    */
    if ((this->alpha == 255 && !(this->type == ENBOX_TYPE_4 || this->type == ENBOX_TYPE_6)) ||
        ((thisx->flags & (1 << 7)) != (1 << 7) && (this->type == ENBOX_TYPE_4 || this->type == ENBOX_TYPE_6))) {
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetEnvColor(gfxCtx->polyOpa.p++, 0, 0, 0, 255);
        gSPSegment(gfxCtx->polyOpa.p++, 0x08, EnBox_EmptyDList(globalCtx->state.gfxCtx));
        func_80093D18(globalCtx->state.gfxCtx);
        gfxCtx->polyOpa.p = SkelAnime_Draw2(globalCtx, this->skelanime.skeleton, this->skelanime.limbDrawTbl, NULL,
                                            &EnBox_PostLimbDraw2, thisx, gfxCtx->polyOpa.p);
    } else if (this->alpha != 0) {
        gDPPipeSync(gfxCtx->polyXlu.p++);
        func_80093D84(globalCtx->state.gfxCtx);
        gDPSetEnvColor(gfxCtx->polyXlu.p++, 0, 0, 0, this->alpha);
        if (this->type == ENBOX_TYPE_4 || this->type == ENBOX_TYPE_6) {
            gSPSegment(gfxCtx->polyXlu.p++, 0x08, func_809CA518(globalCtx->state.gfxCtx));
        } else {
            gSPSegment(gfxCtx->polyXlu.p++, 0x08, func_809CA4A0(globalCtx->state.gfxCtx));
        }
        gfxCtx->polyXlu.p = SkelAnime_Draw2(globalCtx, this->skelanime.skeleton, this->skelanime.limbDrawTbl, NULL,
                                            &EnBox_PostLimbDraw2, thisx, gfxCtx->polyXlu.p);
    }

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_box.c", 1639);
}
