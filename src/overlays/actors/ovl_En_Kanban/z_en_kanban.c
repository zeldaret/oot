#include "z_en_kanban.h"

#define FLAGS 0x00000019

#define THIS ((EnKanban*)thisx)

#define PIECE_TOP_LEFT (1 << 0) 
#define PIECE_LEFT_TOP (1 << 1) 
#define PIECE_LEFT_BOTTOM (1 << 2) 
#define PIECE_RIGHT_TOP (1 << 3) 
#define PIECE_RIGHT_BOTTOM (1 << 4) 
#define PIECE_BOTTOM_LEFT (1 << 5)
#define PIECE_TOP_RIGHT (1 << 6) 
#define PIECE_BOTTOM_RIGHT (1 << 7) 
#define PIECE_POST_TOP (1 << 8) 
#define PIECE_POST_BOTTOM (1 << 9) 
#define PIECE_POST_STAND (1 << 10)
#define PIECE_LEFT (PIECE_TOP_LEFT | PIECE_LEFT_TOP | PIECE_LEFT_BOTTOM | PIECE_BOTTOM_LEFT)
#define PIECE_RIGHT (PIECE_TOP_RIGHT | PIECE_RIGHT_TOP | PIECE_RIGHT_BOTTOM | PIECE_BOTTOM_RIGHT)
#define PIECE_TOP (PIECE_POST_TOP | PIECE_TOP_RIGHT | PIECE_RIGHT_TOP | PIECE_TOP_LEFT | PIECE_LEFT_TOP)
#define PIECE_UPPER_LEFT (PIECE_POST_TOP | PIECE_TOP_RIGHT | PIECE_LEFT_BOTTOM | PIECE_TOP_LEFT | PIECE_LEFT_TOP)
#define PIECE_UPPER_RIGHT (PIECE_POST_TOP | PIECE_TOP_RIGHT | PIECE_RIGHT_TOP | PIECE_TOP_LEFT | PIECE_RIGHT_BOTTOM)
#define PIECE_ALL (PIECE_LEFT | PIECE_RIGHT | PIECE_POST_TOP | PIECE_POST_BOTTOM)

typedef enum {
    CUT_POST,
    CUT_LEFT,
    CUT_FLAT,
    CUT_UP,
    CUT_DOWN,
    CUT_RIGHT
} EnKanbanCutType;

typedef enum {
    ENKANBAN_SIGN,
    ENKANBAN_AIR,
    ENKANBAN_UNUSED,
    ENKANBAN_GROUND,
    ENKANBAN_WATER,
    ENKANBAN_REPAIR
} EnKanbanActionState;

void EnKanban_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKanban_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKanban_Update(Actor* thisx, GlobalContext* globalCtx);
void EnKanban_Draw(Actor* thisx, GlobalContext* globalCtx);

extern Gfx D_0403C050[];
extern Gfx D_06000C30[];
extern Gfx D_06001630[];

const ActorInit En_Kanban_InitVars = {
    ACTOR_EN_KANBAN,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_KANBAN,
    sizeof(EnKanban),
    (ActorFunc)EnKanban_Init,
    (ActorFunc)EnKanban_Destroy,
    (ActorFunc)EnKanban_Update,
    (ActorFunc)EnKanban_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
    { 20, 50, 5, { 0, 0, 0 } },
};

static u16 sPartFlags[] = { PIECE_TOP_LEFT, PIECE_LEFT_TOP, PIECE_LEFT_BOTTOM, PIECE_RIGHT_TOP, PIECE_RIGHT_BOTTOM, PIECE_BOTTOM_LEFT, PIECE_TOP_RIGHT, PIECE_BOTTOM_RIGHT, PIECE_POST_TOP, PIECE_POST_BOTTOM, PIECE_POST_STAND, };

void EnKanban_SetFloorRot(EnKanban* this) {
    if (this->actor.floorPoly != NULL) {
        f32 nx = this->actor.floorPoly->norm.x * COLPOLY_NORM_FRAC;
        f32 ny = this->actor.floorPoly->norm.y * COLPOLY_NORM_FRAC;
        f32 nz = this->actor.floorPoly->norm.z * COLPOLY_NORM_FRAC;

        this->floorRot.x = -Math_atan2f(-nz * ny, 1.0f);
        this->floorRot.z = Math_atan2f(-nx * ny, 1.0f);
    }
}

void EnKanban_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnKanban* this = THIS;

    Actor_SetScale(&this->actor, 0.01f);
    if (this->actor.params != -0x23) {
        this->actor.unk_1F = 0;
        this->actor.flags |= 1;
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
        osSyncPrintf("KANBAN ARG    %x\n", this->actor.params);
        if (this->actor.params == 0x300) {
            if (gSaveContext.linkAge == 1) {
                this->actor.textId = 0x409D;
            } else {
                this->actor.textId = 0x4090;
            }
        } else {
            this->actor.textId = this->actor.params | 0x300;
        }
        this->unk_176 = 1;
        this->partFlags = 0xFFFF;
        func_8002E4B4(globalCtx, &this->actor, 10.0f, 10.0f, 50.0f, 4);
        EnKanban_SetFloorRot(this);
        if (gSaveContext.linkAge == 1) {
            this->actor.posRot.pos.y -= 15.0f;
        }
    }
}

void EnKanban_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnKanban* this = THIS;

    if (this->actionState == ENKANBAN_SIGN) {
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

void EnKanban_Message(EnKanban* this, GlobalContext* globalCtx) {
    if (!this->msgFlag) {
        if (this->msgTimer == 0) {
            if (ABS((s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y)) < 0x2800) {
                if (func_8002F194(&this->actor, globalCtx)) {
                    this->msgFlag = true;
                } else {
                    func_8002F2CC(&this->actor, globalCtx, 68.0f);
                }
            }
        } else {
            this->msgTimer--;
        }
    } else {
        if (func_8002F334(&this->actor, globalCtx)) {
            this->msgFlag = false;
            this->msgTimer = 20;
        }
    }
}

static Vec3f D_80A944D4[] = {
    { 0.0f, 44.0f, 0.0f },   { 0.0f, 50.0f, 0.0f },   { 0.0f, 38.0f, 0.0f },   { 10.0f, 44.0f, 0.0f },
    { -10.0f, 44.0f, 0.0f }, { -10.0f, 50.0f, 0.0f }, { 10.0f, 50.0f, 0.0f },  { -10.0f, 38.0f, 0.0f },
    { 10.0f, 38.0f, 0.0f },  { -7.5f, 51.0f, 0.0f },  { -12.5f, 48.0f, 0.0f }, { -12.5f, 40.0f, 0.0f },
    { -7.5f, 37.0f, 0.0f },  { 7.5f, 51.0f, 0.0f },   { 12.5f, 48.0f, 0.0f },  { 12.5f, 40.0f, 0.0f },
    { 7.5f, 37.0f, 0.0f },   { 0.0f, 50.0f, 0.0f },   { 0.0f, 38.0f, 0.0f },
};

static Vec3f D_80A945B8[] = {
    { 1500.0f, 1000.0f, 0.0f }, { 1500.0f, 500.0f, 0.0f }, { 1500.0f, 500.0f, 0.0f }, { 700.0f, 1000.0f, 0.0f },
    { 700.0f, 1000.0f, 0.0f },  { 700.0f, 500.0f, 0.0f },  { 700.0f, 500.0f, 0.0f },  { 700.0f, 500.0f, 0.0f },
    { 700.0f, 500.0f, 0.0f },   { 700.0f, 500.0f, 0.0f },  { 700.0f, 500.0f, 0.0f },  { 700.0f, 500.0f, 0.0f },
    { 700.0f, 500.0f, 0.0f },   { 700.0f, 500.0f, 0.0f },  { 700.0f, 500.0f, 0.0f },  { 700.0f, 500.0f, 0.0f },
    { 700.0f, 500.0f, 0.0f },   { 200.0f, 500.0f, 0.0f },  { 200.0f, 500.0f, 0.0f },
};

static u8 sCutTypes[] = {
    CUT_LEFT, CUT_LEFT, CUT_DOWN, CUT_DOWN, CUT_FLAT, CUT_FLAT, CUT_FLAT, CUT_FLAT, CUT_FLAT, CUT_FLAT, CUT_FLAT, CUT_FLAT, CUT_POST, CUT_POST,
    CUT_POST, CUT_POST, CUT_LEFT, CUT_LEFT, CUT_LEFT, CUT_LEFT, CUT_FLAT, CUT_FLAT, CUT_POST, CUT_POST, CUT_POST, CUT_POST, CUT_POST, CUT_POST,
};

static u16 sCutFlags[] = {
    PIECE_ALL, PIECE_LEFT, PIECE_TOP, PIECE_UPPER_LEFT, PIECE_UPPER_RIGHT, PIECE_RIGHT,
};

void EnKanban_Update(Actor* thisx, GlobalContext* globalCtx2) {
    u8 spFF = false;
    GlobalContext* globalCtx = globalCtx2;
    EnKanban* this = THIS;
    EnKanban* signpost;
    EnKanban* piece;
    Player* spE8 = PLAYER;
    Vec3f offset;

    this->frameCount++;
    switch (this->actionState) {
        case ENKANBAN_SIGN:
            if (this->invincibilityTimer != 0) {
                this->invincibilityTimer--;
            }
            if (this->zTargetTimer != 0) {
                this->zTargetTimer--;
            }
            if (this->zTargetTimer == 1) {
                this->actor.flags &= ~1;
            }
            if (this->partFlags == 0xFFFF) {
                EnKanban_Message(this, globalCtx);
            }
            if ((this->invincibilityTimer == 0) && (this->collider.base.acFlags & 2)) {
                this->collider.base.acFlags &= ~2;
                this->invincibilityTimer = 6;
                piece = (EnKanban*)Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_KANBAN,
                                                      this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                                                      this->actor.posRot.pos.z, this->actor.shape.rot.x,
                                                      this->actor.shape.rot.y, this->actor.shape.rot.z, -0x23);
                if (piece != NULL) {
                    ColliderBody* hitItem = this->collider.body.acHitItem;
                    s16 yawDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;
                    u8 i;

                    if (hitItem->toucher.flags & 0x700) {
                        this->cutType = sCutTypes[spE8->swordAnimation];
                    } else {
                        this->cutType = CUT_POST;
                    }
                    if (ABS(yawDiff) > 0x4000) {
                        if (this->cutType == CUT_DOWN) {
                            this->cutType = CUT_UP;
                        } else if (this->cutType == CUT_LEFT) {
                            this->cutType = CUT_RIGHT;
                        }
                    }
                    piece->partFlags = sCutFlags[this->cutType] & this->partFlags;
                    if (piece->partFlags == 0) {
                        Actor_Kill(&piece->actor);
                        return;
                    }
                    piece->partCount = 0;
                    for (i = 0; i < ARRAY_COUNT(sPartFlags); i++) {
                        if (sPartFlags[i] & piece->partFlags) {
                            piece->partCount++;
                        }
                    }
                    this->partFlags &= ~sCutFlags[this->cutType];
                    if (!(this->partFlags & PIECE_ALL)) {
                        this->zTargetTimer = 10;
                    }
                    

                    if ((piece->partFlags & PIECE_TOP_LEFT) && (piece->partFlags & PIECE_BOTTOM_RIGHT)) {
                        piece->pieceType = 0;
                    } else if ((piece->partFlags & PIECE_LEFT_TOP) && (piece->partFlags & PIECE_RIGHT_TOP)) {
                        piece->pieceType = 1;
                    } else if ((piece->partFlags & PIECE_LEFT_BOTTOM) && (piece->partFlags & PIECE_RIGHT_BOTTOM)) {
                        piece->pieceType = 2;
                    } else if ((piece->partFlags & PIECE_TOP_RIGHT) && (piece->partFlags & PIECE_BOTTOM_RIGHT)) {
                        piece->pieceType = 3;
                    } else if ((piece->partFlags & PIECE_TOP_LEFT) && (piece->partFlags & PIECE_BOTTOM_LEFT)) {
                        piece->pieceType = 4;
                    } else if ((piece->partFlags & PIECE_TOP_LEFT) && (piece->partFlags & PIECE_LEFT_TOP)) {
                        piece->pieceType = 5;
                    } else if ((piece->partFlags & PIECE_TOP_RIGHT) && (piece->partFlags & PIECE_RIGHT_TOP)) {
                        piece->pieceType = 6;
                    } else if ((piece->partFlags & PIECE_LEFT_BOTTOM) && (piece->partFlags & PIECE_BOTTOM_LEFT)) {
                        piece->pieceType = 7;
                    } else if ((piece->partFlags & PIECE_RIGHT_BOTTOM) && (piece->partFlags & PIECE_BOTTOM_RIGHT)) {
                        piece->pieceType = 8;
                    } else if (piece->partFlags & PIECE_TOP_LEFT) {
                        piece->pieceType = 9;
                    } else if (piece->partFlags & PIECE_LEFT_TOP) {
                        piece->pieceType = 10;
                    } else if (piece->partFlags & PIECE_LEFT_BOTTOM) {
                        piece->pieceType = 11;
                    } else if (piece->partFlags & PIECE_BOTTOM_LEFT) {
                        piece->pieceType = 12;
                    } else if (piece->partFlags & PIECE_TOP_RIGHT) {
                        piece->pieceType = 13;
                    } else if (piece->partFlags & PIECE_RIGHT_TOP) {
                        piece->pieceType = 14;
                    } else if (piece->partFlags & PIECE_RIGHT_BOTTOM) {
                        piece->pieceType = 15;
                    } else if (piece->partFlags & PIECE_BOTTOM_RIGHT) {
                        piece->pieceType = 16;
                    } else if (piece->partFlags & PIECE_POST_TOP) {
                        piece->pieceType = 17;
                    } else if (piece->partFlags & PIECE_POST_BOTTOM) {
                        piece->pieceType = 18;
                    } else {
                        piece->pieceType = 100;
                    }
                    if (piece->pieceType == 100) {
                        piece->pieceType = 0;
                    }

                    Matrix_RotateY((this->actor.shape.rot.y / 32768.0f) * 3.1415927f, 0);
                    Matrix_MultVec3f(&D_80A944D4[piece->pieceType], &offset);
                    piece->actor.posRot.pos.x += offset.x;
                    piece->actor.posRot.pos.y += offset.y;
                    piece->actor.posRot.pos.z += offset.z;
                    piece->offset.x = -D_80A944D4[piece->pieceType].x / this->actor.scale.x;
                    piece->offset.y = -D_80A944D4[piece->pieceType].y / this->actor.scale.x;
                    piece->offset.z = -D_80A944D4[piece->pieceType].z / this->actor.scale.x;
                    piece->unk_17C = D_80A945B8[piece->pieceType].x;
                    piece->unk_180 = D_80A945B8[piece->pieceType].y;
                    piece->actor.gravity = -1.0f;
                    piece->actionState = ENKANBAN_AIR;
                    piece->actor.posRot.rot.y =
                        (s16)Math_Rand_CenteredFloat(12288.0f) + this->actor.yawTowardsLink + 0x8000;
                    piece->actor.velocity.y = Math_Rand_ZeroFloat(2.0f) + 3.0f;
                    piece->actor.speedXZ = Math_Rand_ZeroFloat(2.0f) + 3.0f;
                    if (piece->partCount >= 4) {
                        piece->unk_176 = (s16)Math_Rand_ZeroFloat(10.0f) + 6;
                        piece->unk_178 = (s16)Math_Rand_ZeroFloat(10.0f) + 6;
                    } else {
                        piece->unk_176 = (s16)Math_Rand_ZeroFloat(7.0f) + 3;
                        piece->unk_178 = (s16)Math_Rand_ZeroFloat(7.0f) + 3;
                    }
                    piece->spinVel.y = Math_Rand_CenteredFloat(6144.0f);
                    if (Math_Rand_ZeroOne() < 0.5f) {
                        piece->unk_184 = 1;
                    } else {
                        piece->unk_184 = -1;
                    }
                    piece->airTimer = 100;
                    piece->actor.flags &= ~1;
                    piece->actor.flags |= 0x02000000;
                    this->cutMarkTimer = 5;
                    Audio_PlayActorSound2(&this->actor, NA_SE_IT_SWORD_STRIKE);
                }
            }
            this->actor.posRot2.pos = this->actor.posRot.pos;
            this->actor.posRot2.pos.y += 44.0f;
            Collider_CylinderUpdate(&this->actor, &this->collider);
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            if (this->actor.xzDistFromLink > 500.0f) {
                this->actor.flags |= 1;
                this->partFlags = 0xFFFF;
            }
            if (this->cutMarkTimer != 0) {
                if (this->cutMarkTimer >= 5) {
                    this->cutMarkAlpha += 255;
                    if (this->cutMarkAlpha > 255) {
                        this->cutMarkAlpha = 255;
                    }
                } else {
                    this->cutMarkAlpha -= 65;
                    if (this->cutMarkAlpha < 0) {
                        this->cutMarkAlpha = 0;
                    }
                }
                this->cutMarkTimer--;
            }
            break;
        case ENKANBAN_AIR:
        case ENKANBAN_UNUSED: {
            u16 tempBgFlags;
            f32 tempX;
            f32 tempY;
            f32 tempZ;
            f32 tempWaterY;
            u8 cond;

            Actor_MoveForward(&this->actor);
            func_8002E4B4(globalCtx, &this->actor, 30.0f, 30.0f, 50.0f, 5);

            tempX = this->actor.posRot.pos.x;
            tempY = this->actor.posRot.pos.y;
            tempZ = this->actor.posRot.pos.z;
            tempBgFlags = this->actor.bgCheckFlags;
            tempWaterY = this->actor.waterY;

            this->actor.posRot.pos.z += ((this->actor.posRot.pos.y - this->actor.groundY) * -50.0f) / 100.0f;
            func_8002E4B4(globalCtx, &this->actor, 10.0f, 10.0f, 50.0f, 4);
            EnKanban_SetFloorRot(this);

            this->actor.posRot.pos.x = tempX;
            this->actor.posRot.pos.y = tempY;
            this->actor.posRot.pos.z = tempZ;
            this->actor.bgCheckFlags = tempBgFlags;
            this->actor.waterY = tempWaterY;

            osSyncPrintf("\x1b[m");
            cond = (this->actor.bgCheckFlags & 1);
            if (this->spinXFlag) {
                this->spinRot.x += this->spinVel.x;
                this->spinVel.x -= 0x800;
                if ((this->spinRot.x <= 0) && cond) {
                    this->spinRot.x = 0;
                    this->spinVel.x = 0;
                }
            } else {
                this->spinRot.x -= this->spinVel.x;
                this->spinVel.x -= 0x800;
                if ((this->spinRot.x >= 0) && cond) {
                    this->spinRot.x = 0;
                    this->spinVel.x = 0;
                }
            }
            if (this->spinVel.x < -0xC00) {
                this->spinVel.x = -0xC00;
            }
            if (this->spinZFlag) {
                this->spinRot.z += this->spinVel.z;
                this->spinVel.z -= 0x800;
                if ((this->spinRot.z <= 0) && cond) {
                    this->spinRot.z = 0;
                    this->spinVel.z = 0;
                }
            } else {
                this->spinRot.z -= this->spinVel.z;
                this->spinVel.z -= 0x800;
                if ((this->spinRot.z >= 0) && cond) {
                    this->spinRot.z = 0;
                    this->spinVel.z = 0;
                }
            }
            if (this->spinVel.z < -0xC00) {
                this->spinVel.z = -0xC00;
            }
            if (this->actor.bgCheckFlags & 8) {
                this->actor.speedXZ *= -0.5f;
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_WOODPLATE_BOUND);
            }
            if (this->actor.bgCheckFlags & 0x40) {
                this->actionState = ENKANBAN_WATER;
                Audio_PlayActorSound2(&this->actor, NA_SE_EV_BOMB_DROP_WATER);
                this->unk_176 = this->unk_178 = 0;
                this->actor.posRot.pos.y += this->actor.waterY;
                EffectSsGSplash_Spawn(globalCtx, &this->actor.posRot.pos, NULL, NULL, 0,
                                      (this->partCount * 20) + 300);
                EffectSsGRipple_Spawn(globalCtx, &this->actor.posRot.pos, 0x96, 0x28A, 0);
                EffectSsGRipple_Spawn(globalCtx, &this->actor.posRot.pos, 0x12C, 0x320, 5);
                this->actor.velocity.y = 0.0f;
                this->actor.gravity = 0.0f;
                osSyncPrintf(" WAT  Y  = %f\n", this->actor.waterY);
                osSyncPrintf(" POS  Y  = %f\n", this->actor.posRot.pos.y);
                osSyncPrintf(" GROUND Y  = %f\n", this->actor.groundY);
                break;
            }

            if (cond) {
                if (this->bounceCount <= 0) {
                    this->bounceCount++;
                    this->actor.velocity.y *= -0.3f;
                    this->actor.posRot.rot.y += (s16)Math_Rand_CenteredFloat(16384.0f);
                } else {
                    this->actor.velocity.y = 0.0f;
                }
                this->actor.speedXZ *= 0.7f;
                if ((this->spinRot.x == 0) && (this->unk_176 != 0)) {
                    this->spinVel.x = this->unk_176 * 0x200;
                    if (this->unk_176 != 0) {
                        this->unk_176 -= 5;
                        if (this->unk_176 <= 0) {
                            this->unk_176 = 0;
                        }
                    }
                    if (Math_Rand_ZeroOne() < 0.5f) {
                        this->spinXFlag = true;
                    } else {
                        this->spinXFlag = false;
                    }
                    spFF = true;
                }
                if ((this->spinRot.z == 0) && (this->unk_178 != 0)) {
                    this->spinVel.z = this->unk_178 * 0x200;
                    if (this->unk_178 != 0) {
                        this->unk_178 -= 5;
                        if (this->unk_178 <= 0) {
                            this->unk_178 = 0;
                        }
                    }
                    if (Math_Rand_ZeroOne() < 0.5f) {
                        this->spinZFlag = true;
                    } else {
                        this->spinZFlag = false;
                    }
                    spFF = true;
                }
                Math_SmoothScaleMaxS(&this->actor.shape.rot.x, this->unk_184 << 0xE, 1, 0x2000);
            } else {
                this->actor.shape.rot.y += this->spinVel.y;
                this->actor.shape.rot.x += this->unk_184 * 0x7D0;
            }
            if (spFF) {
                s16 sp54;
                s16 j;
                Vec3f velocity = { 0.0f, 0.0f, 0.0f };
                Vec3f accel;
                Vec3f pos;

                Audio_PlayActorSound2(&this->actor, NA_SE_EV_WOODPLATE_BOUND);
                accel.x = 0.0f;
                accel.y = 0.1f;
                accel.z = 0.0f;
                pos.y = this->actor.groundY + 3.0f;
                sp54 = this->partCount * 0.5f;
                for (j = 0; j < sp54 + 3; j++) {
                    pos.x = Math_Rand_CenteredFloat((this->partCount * 0.5f) + 20.0f) + this->actor.posRot.pos.x;
                    pos.z = Math_Rand_CenteredFloat((this->partCount * 0.5f) + 20.0f) + this->actor.posRot.pos.z;
                    func_800286CC(globalCtx, &pos, &velocity, &accel, 100, 5);
                }
            }
            if (DECR(this->airTimer) == 0) {
                this->actionState = ENKANBAN_GROUND;
            }
        }
        case ENKANBAN_GROUND:
        case ENKANBAN_WATER:
            signpost = (EnKanban*)this->actor.parent;

            if (signpost->partFlags == 0xFFFF) {
                Actor_Kill(&this->actor);
            }
            Math_SmoothScaleMaxF(&this->actor.shape.unk_08, 100.0f, 1.0f, 5.0f);
            if (this->actionState == ENKANBAN_WATER) {
                s32 phi_v0;
                s32 rippleScale;

                if ((spE8->actor.speedXZ > 0.0f) && (spE8->actor.posRot.pos.y < this->actor.posRot.pos.y) &&
                    (this->actor.xyzDistFromLinkSq < 2500.0f)) {
                    Math_SmoothScaleMaxF(&this->actor.speedXZ, spE8->actor.speedXZ, 1.0f, 0.2f);
                    if (this->actor.speedXZ > 1.0f) {
                        this->actor.speedXZ = 1.0f;
                    }
                    if (Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink + 0x8000, 1,
                                                0x1000, 0) > 0) {
                        this->spinVel.y = this->actor.speedXZ * 1000.0f;
                    } else {
                        this->spinVel.y = this->actor.speedXZ * -1000.0f;
                    }
                }
                if (this->actor.bgCheckFlags & 1) {
                    this->actor.speedXZ = 0.0f;
                }
                Actor_MoveForward(&this->actor);
                if (this->actor.speedXZ != 0.0f) {
                    func_8002E4B4(globalCtx, &this->actor, 10.0f, 10.0f, 50.0f, 5);
                    if (this->actor.bgCheckFlags & 8) {
                        this->actor.speedXZ *= -0.5f;
                        if (this->spinVel.y > 0) {
                            this->spinVel.y = -0x7D0;
                        } else {
                            this->spinVel.y = 0x7D0;
                        }
                    }
                    Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 1.0f, 0.15f);
                }
                this->actor.shape.rot.y += this->spinVel.y;
                Math_SmoothScaleMaxS(&this->spinVel.y, 0, 1, 0x3A);
                Math_SmoothScaleMaxS(&this->actor.shape.rot.x, this->unk_184 << 0xE, 2, 0x1000);
                Math_SmoothScaleMaxS(&this->spinRot.x, Math_Sins(2500 * this->frameCount) * 500.0f, 2, 0x1000);
                Math_SmoothScaleMaxS(&this->spinRot.z, Math_Coss(3000 * this->frameCount) * 500.0f, 2, 0x1000);
                Math_SmoothDownscaleMaxF(&this->floorRot.x, 0.5f, 0.2f);
                Math_SmoothDownscaleMaxF(&this->floorRot.z, 0.5f, 0.2f);
                if (fabsf(this->actor.speedXZ) > 1.0f) {
                    phi_v0 = 0;
                } else if (fabsf(this->actor.speedXZ) > 0.5f) {
                    phi_v0 = 3;
                } else {
                    phi_v0 = 7;
                }
                if (!(this->frameCount & phi_v0)) {
                    if (this->partCount < 3) {
                        rippleScale = 0;
                    } else if (this->partCount < 6) {
                        rippleScale = 100;
                    } else {
                        rippleScale = 200;
                    }
                    EffectSsGRipple_Spawn(globalCtx, &this->actor.posRot.pos, rippleScale, rippleScale + 500, 0);
                }
            } else if ((globalCtx->actorCtx.unk_02 != 0) && (this->actor.xyzDistFromLinkSq < SQ(100.0f))) {
                f32 sp88 = (100.0f - sqrtf(this->actor.xyzDistFromLinkSq)) * 0.05f;

                this->actionState = ENKANBAN_AIR;
                this->actor.gravity = -1.0f;
                this->actor.posRot.rot.y = Math_Rand_CenteredFloat(65536.0f);
                if (this->partCount >= 4) {
                    this->unk_176 = (s16)Math_Rand_ZeroFloat(10.0f) + 6;
                    this->unk_178 = (s16)Math_Rand_ZeroFloat(10.0f) + 6;
                    this->actor.velocity.y = 2.0f + sp88;
                    this->actor.speedXZ = Math_Rand_ZeroFloat(1.0f);
                } else {
                    this->unk_176 = (s16)Math_Rand_ZeroFloat(7.0f) + 3;
                    this->unk_178 = (s16)Math_Rand_ZeroFloat(7.0f) + 3;
                    this->actor.velocity.y = 3.0f + sp88;
                    this->actor.speedXZ = Math_Rand_ZeroFloat(1.5f);
                }
                this->spinVel.y = Math_Rand_CenteredFloat(6144.0f);
                if (Math_Rand_ZeroOne() < 0.5f) {
                    this->unk_184 = 1;
                } else {
                    this->unk_184 = -1;
                }
                this->airTimer = 70;
            }
            if (this->unk_176 == 0) {
                Actor* bomb = globalCtx->actorCtx.actorList[ACTORTYPE_EXPLOSIVES].first;
                f32 dx;
                f32 dy;
                f32 dz;
                
                while (bomb != NULL) {
                    if (bomb->params != 1) {
                        bomb = bomb->next;
                        continue;
                    }
                    dx = this->actor.posRot.pos.x - bomb->posRot.pos.x;
                    dy = this->actor.posRot.pos.y - bomb->posRot.pos.y;
                    dz = this->actor.posRot.pos.z - bomb->posRot.pos.z;
                    if (sqrtf(SQ(dx) + SQ(dy) + SQ(dz)) < 100.0f) {
                        f32 sp74 = (100.0f - sqrtf(SQ(dx) + SQ(dy) + SQ(dz))) * 0.05f;

                        this->actionState = ENKANBAN_AIR;
                        this->actor.gravity = -1.0f;
                        this->actor.posRot.rot.y = Math_atan2f(dx, dz) * 10430.378f;
                        if (this->partCount >= 4) {
                            this->unk_176 = (s16)Math_Rand_ZeroFloat(10.0f) + 6;
                            this->unk_178 = (s16)Math_Rand_ZeroFloat(10.0f) + 6;
                            this->actor.velocity.y = 2.5f + sp74;
                            this->actor.speedXZ = 3.0f + sp74;
                        } else {
                            this->unk_176 = (s16)Math_Rand_ZeroFloat(7.0f) + 3;
                            this->unk_178 = (s16)Math_Rand_ZeroFloat(7.0f) + 3;
                            this->actor.velocity.y = 5.0f + sp74;
                            this->actor.speedXZ = 4.0f + sp74;
                        }
                        this->spinVel.y = Math_Rand_CenteredFloat(6144.0f);
                        if (Math_Rand_ZeroOne() < 0.5f) {
                            this->unk_184 = 1;
                        } else {
                            this->unk_184 = -1;
                        }
                        this->airTimer = 70;
                    }
                    bomb = bomb->next;
                }
            }
            osSyncPrintf("\x1b[32m");
            osSyncPrintf("OCARINA_MODE %d\n", globalCtx->msgCtx.unk_E3EE);
            osSyncPrintf("\x1b[m");
            switch (this->ocarinaFlag) {
                case 0:
                    if (globalCtx->msgCtx.unk_E3EE == 1) {
                        this->ocarinaFlag = 1;
                    }
                    break;
                case 1:
                    if ((globalCtx->msgCtx.unk_E3EE == 4) && (globalCtx->msgCtx.unk_E3F2 == 8)) {
                        this->actionState = ENKANBAN_REPAIR;
                        this->unk_176 = 1;
                        Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                    }
                    break;
            }
            break;
        case ENKANBAN_REPAIR: {
            f32 distX;
            f32 distY;
            f32 distZ;
            s16 pDiff;
            s16 yDiff;
            s16 rDiff;
            signpost = (EnKanban*)this->actor.parent;

            if (signpost->partFlags == 0xFFFF) {
                Actor_Kill(&this->actor);
            }

            Matrix_RotateY((signpost->actor.shape.rot.y / 32768.0f) * 3.1415927f, 0);
            Matrix_MultVec3f(&D_80A944D4[this->pieceType], &offset);
            distX = Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.x, signpost->actor.posRot.pos.x + offset.x, 1.0f,
                                            3.0f, 0.0f);
            distY = Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, signpost->actor.posRot.pos.y + offset.y, 1.0f,
                                            3.0f, 0.0f);
            distZ = Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z, signpost->actor.posRot.pos.z + offset.z, 1.0f,
                                            3.0f, 0.0f);
            pDiff = Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, signpost->actor.shape.rot.x, 1, 0x200, 0);
            yDiff = Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, signpost->actor.shape.rot.y, 1, 0x200, 0);
            rDiff = Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, signpost->actor.shape.rot.z, 1, 0x200, 0);
            Math_SmoothScaleMaxS(&this->spinRot.x, 0, 1, 0x200);
            Math_SmoothScaleMaxS(&this->spinRot.z, 0, 1, 0x200);
            Math_SmoothDownscaleMaxF(&this->floorRot.x, 1.0f, 0.05f);
            Math_SmoothDownscaleMaxF(&this->floorRot.z, 1.0f, 0.05f);
            Math_SmoothDownscaleMaxF(&this->actor.shape.unk_08, 1.0f, 2.0f);
            if (((distX + distY + distZ) == 0.0f) && ((pDiff + yDiff + rDiff + this->spinRot.x + this->spinRot.z) == 0) &&
                (this->floorRot.x == 0.0f) && (this->floorRot.z == 0.0f)) {
                signpost->partFlags |= this->partFlags;
                signpost->actor.flags |= 1;
                Actor_Kill(&this->actor);
            }
        } break;
    }
}

#include "z_en_kanban_gfx.c"

void EnKanban_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnKanban* this = THIS;
    f32 sp98;
    f32 temp_f0;
    s16 i;
    u8* shadowTex = Graph_Alloc(globalCtx->state.gfxCtx, 0x400);

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_kanban.c", 0x67B);
    func_80093D18(globalCtx->state.gfxCtx);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPDisplayList(POLY_OPA_DISP++, D_06000C30);
    if (this->actionState != ENKANBAN_SIGN) {
        Matrix_Translate(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0);
        Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);
        Matrix_RotateX(this->floorRot.x, 1);
        Matrix_RotateZ(this->floorRot.z, 1);
        Matrix_Translate(0.0f, this->actor.shape.unk_08, 0.0f, 1);
        Matrix_RotateY((this->actor.shape.rot.y / (f32)0x8000) * M_PI, 1);
        Matrix_RotateX((this->actor.shape.rot.x / (f32)0x8000) * M_PI, 1);
        sp98 = fabsf(Math_Sins(this->spinRot.x) * this->unk_180);
        temp_f0 = fabsf(Math_Sins(this->spinRot.z) * this->unk_17C);
        if (sp98 < temp_f0) {
            sp98 = temp_f0;
        }
        sp98 *= -(f32)this->unk_184;
        Matrix_Translate(0.0f, 0.0f, sp98, 1);
        Matrix_RotateX((this->spinRot.x / (f32)0x8000) * M_PI, 1);
        Matrix_RotateY((this->spinRot.z / (f32)0x8000) * M_PI, 1);
        Matrix_Translate(this->offset.x, this->offset.y, this->offset.z - 100.0f, 1);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_kanban.c", 0x6B3),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        for (i = 0; i < ARRAY_COUNT(sPartFlags); i++) {
            if (sPartFlags[i] & this->partFlags) {
                gSPDisplayList(POLY_OPA_DISP++, sDisplayLists[i]);
            }
        }
    } else {
        Matrix_Translate(0.0f, 0.0f, -100.0f, 1);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_kanban.c", 0x6BD),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        if (this->partFlags == 0xFFFF) {
            gSPDisplayList(POLY_OPA_DISP++, D_0403C050);
        } else {
            for (i = 0; i < ARRAY_COUNT(sPartFlags); i++) {
                if (sPartFlags[i] & this->partFlags) {
                    gSPDisplayList(POLY_OPA_DISP++, sDisplayLists[i]);
                }
            }
        }
        if (this->cutMarkAlpha != 0) {
            f32 cutOffset = (this->cutType == CUT_POST) ? -1200.0f : 0.0f;

            Matrix_Translate(0.0f, 4400.0f + cutOffset, 200.0f, 1);
            Matrix_RotateZ(sCutAngles[this->cutType], 1);
            Matrix_Scale(0.0f, 10.0f, 2.0f, 1);
            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x00, 255, 255, 255, this->cutMarkAlpha);
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 150, 0);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_kanban.c", 0x6ED),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_06001630);
        }
    }
    if ((this->actor.projectedPos.z <= 400.0f) && (this->actor.projectedPos.z > 0.0f) &&
        (this->actor.groundY > -3000.0f)) {
        if ((this->unk_176 != 0) || (this->unk_178 != 0)) {
            u16 dayTime = gSaveContext.dayTime;
            f32 shadowAlpha;

            if (dayTime >= 0x8000) {
                dayTime = 0xFFFF - dayTime;
            }
            shadowAlpha = (dayTime * 0.00275f) + 10.0f;
            if (this->actor.projectedPos.z > 300.0f) {
                shadowAlpha *= ((400.0f - this->actor.projectedPos.z) * 0.01f);
            }
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x00, 0, 0, 0, (s8)shadowAlpha);

            if ((this->actionState == ENKANBAN_SIGN) && (gSaveContext.linkAge == 1)) {
                sp98 = 0.0f;
            } else {
                sp98 = ((this->actor.posRot.pos.y - this->actor.groundY) * -50.0f) / 100.0f;
            }

            Matrix_Translate(this->actor.posRot.pos.x, this->actor.groundY, this->actor.posRot.pos.z + sp98, 0);
            Matrix_RotateX(this->floorRot.x, 1);
            Matrix_RotateZ(this->floorRot.z, 1);
            Matrix_Scale(this->actor.scale.x, 0.0f, this->actor.scale.z, 1);
            if (this->actionState == ENKANBAN_SIGN) {
                Matrix_RotateX(-M_PI / 5, 1);
            }
            Matrix_RotateY((this->actor.shape.rot.y / (f32)0x8000) * M_PI, 1);
            Matrix_RotateX((this->actor.shape.rot.x / (f32)0x8000) * M_PI, 1);
            Matrix_RotateX((this->spinRot.x / (f32)0x8000) * M_PI, 1);
            Matrix_RotateY((this->spinRot.z / (f32)0x8000) * M_PI, 1);
            Matrix_Translate(this->offset.x, this->offset.y, this->offset.z, 1);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_kanban.c", 0x729),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            for (i = 0; i < 0x400; i++) {
                if (sShadowTexFlags[i] & this->partFlags) {
                    shadowTex[i] = 0xFF;
                } else {
                    shadowTex[i] = 0;
                }
            }
            gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(shadowTex));
            gSPDisplayList(POLY_XLU_DISP++, sShadowDList);
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_kanban.c", 0x741);
}
