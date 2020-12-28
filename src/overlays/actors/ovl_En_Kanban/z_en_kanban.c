#include "z_en_kanban.h"
#include "vt.h"

#define FLAGS 0x00000019

#define THIS ((EnKanban*)thisx)

#define PART_UPPER_LEFT (1 << 0)
#define PART_LEFT_UPPER (1 << 1)
#define PART_LEFT_LOWER (1 << 2)
#define PART_RIGHT_UPPER (1 << 3)
#define PART_RIGHT_LOWER (1 << 4)
#define PART_LOWER_LEFT (1 << 5)
#define PART_UPPER_RIGHT (1 << 6)
#define PART_LOWER_RIGHT (1 << 7)
#define PART_POST_UPPER (1 << 8)
#define PART_POST_LOWER (1 << 9)
#define PART_POST_STAND (1 << 10)
#define LEFT_HALF (PART_UPPER_LEFT | PART_LEFT_UPPER | PART_LEFT_LOWER | PART_LOWER_LEFT)
#define RIGHT_HALF (PART_UPPER_RIGHT | PART_RIGHT_UPPER | PART_RIGHT_LOWER | PART_LOWER_RIGHT)
#define UPPER_HALF (PART_POST_UPPER | PART_UPPER_RIGHT | PART_RIGHT_UPPER | PART_UPPER_LEFT | PART_LEFT_UPPER)
#define UPPERLEFT_HALF (PART_POST_UPPER | PART_UPPER_RIGHT | PART_LEFT_LOWER | PART_UPPER_LEFT | PART_LEFT_UPPER)
#define UPPERRIGHT_HALF (PART_POST_UPPER | PART_UPPER_RIGHT | PART_RIGHT_UPPER | PART_UPPER_LEFT | PART_RIGHT_LOWER)
#define ALL_PARTS (LEFT_HALF | RIGHT_HALF | PART_POST_UPPER | PART_POST_LOWER)

typedef enum {
    ENKANBAN_SIGN,
    ENKANBAN_AIR,
    ENKANBAN_UNUSED,
    ENKANBAN_GROUND,
    ENKANBAN_WATER,
    ENKANBAN_REPAIR
} EnKanbanActionState;

typedef enum {
    PIECE_WHOLE_SIGN,
    PIECE_UPPER_HALF,
    PIECE_LOWER_HALF,
    PIECE_RIGHT_HALF,
    PIECE_LEFT_HALF,
    PIECE_2ND_QUAD,
    PIECE_1ST_QUAD,
    PIECE_3RD_QUAD,
    PIECE_4TH_QUAD,
    PIECE_UPPER_LEFT,
    PIECE_LEFT_UPPER,
    PIECE_LEFT_LOWER,
    PIECE_LOWER_LEFT,
    PIECE_UPPER_RIGHT,
    PIECE_RIGHT_UPPER,
    PIECE_RIGHT_LOWER,
    PIECE_LOWER_RIGHT,
    PIECE_POST_UPPER,
    PIECE_POST_LOWER,
    PIECE_OTHER = 100
} EnKanbanPiece;

typedef enum {
    CUT_POST,
    CUT_VERT_L,
    CUT_HORIZ,
    CUT_DIAG_L, // lower left to upper right
    CUT_DIAG_R, // upper left to lower right
    CUT_VERT_R
} EnKanbanCutType;

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

static u16 sPartFlags[] = {
    PART_UPPER_LEFT,  PART_LEFT_UPPER,  PART_LEFT_LOWER, PART_RIGHT_UPPER, PART_RIGHT_LOWER, PART_LOWER_LEFT,
    PART_UPPER_RIGHT, PART_LOWER_RIGHT, PART_POST_UPPER, PART_POST_LOWER,  PART_POST_STAND,
};

static Vec3f sPieceOffsets[] = {
    /* WHOLE_SIGN   */ { 0.0f, 44.0f, 0.0f },
    /* UPPER_HALF   */ { 0.0f, 50.0f, 0.0f },
    /* LOWER_HALF   */ { 0.0f, 38.0f, 0.0f },
    /* RIGHT_HALF  */ { 10.0f, 44.0f, 0.0f },
    /* LEFT_HALF  */ { -10.0f, 44.0f, 0.0f },
    /* 2ND_QUAD   */ { -10.0f, 50.0f, 0.0f },
    /* 1ST_QUAD    */ { 10.0f, 50.0f, 0.0f },
    /* 3RD_QUAD   */ { -10.0f, 38.0f, 0.0f },
    /* 4TH_QUAD    */ { 10.0f, 38.0f, 0.0f },
    /* UPPER_LEFT  */ { -7.5f, 51.0f, 0.0f },
    /* LEFT_UPPER */ { -12.5f, 48.0f, 0.0f },
    /* LEFT_LOWER */ { -12.5f, 40.0f, 0.0f },
    /* LOWER_LEFT  */ { -7.5f, 37.0f, 0.0f },
    /* UPPER_RIGHT  */ { 7.5f, 51.0f, 0.0f },
    /* RIGHT_UPPER */ { 12.5f, 48.0f, 0.0f },
    /* RIGHT_LOWER */ { 12.5f, 40.0f, 0.0f },
    /* LOWER_RIGHT  */ { 7.5f, 37.0f, 0.0f },
    /* POST_UPPER   */ { 0.0f, 50.0f, 0.0f },
    /* POST_LOWER   */ { 0.0f, 38.0f, 0.0f },
};

static Vec3f sPieceSizes[] = {
    /* WHOLE_SIGN */ { 1500.0f, 1000.0f, 0.0f },
    /* UPPER_HALF */ { 1500.0f, 500.0f, 0.0f },
    /* LOWER_HALF */ { 1500.0f, 500.0f, 0.0f },
    /* RIGHT_HALF  */ { 700.0f, 1000.0f, 0.0f },
    /* LEFT_HALF   */ { 700.0f, 1000.0f, 0.0f },
    /* 2ND_QUAD    */ { 700.0f, 500.0f, 0.0f },
    /* 1ST_QUAD    */ { 700.0f, 500.0f, 0.0f },
    /* 3RD_QUAD    */ { 700.0f, 500.0f, 0.0f },
    /* 4TH_QUAD    */ { 700.0f, 500.0f, 0.0f },
    /* UPPER_LEFT  */ { 700.0f, 500.0f, 0.0f },
    /* LEFT_UPPER  */ { 700.0f, 500.0f, 0.0f },
    /* LEFT_LOWER  */ { 700.0f, 500.0f, 0.0f },
    /* LOWER_LEFT  */ { 700.0f, 500.0f, 0.0f },
    /* UPPER_RIGHT */ { 700.0f, 500.0f, 0.0f },
    /* RIGHT_UPPER */ { 700.0f, 500.0f, 0.0f },
    /* RIGHT_LOWER */ { 700.0f, 500.0f, 0.0f },
    /* LOWER_RIGHT */ { 700.0f, 500.0f, 0.0f },
    /* POST_UPPER  */ { 200.0f, 500.0f, 0.0f },
    /* POST_LOWER  */ { 200.0f, 500.0f, 0.0f },
};

static u8 sCutTypes[] = {
    /* 1H_OVER     */ CUT_VERT_L, /* 2H_OVER     */ CUT_VERT_L,
    /* 1H_COMBO    */ CUT_DIAG_R, /* 2H_COMBO    */ CUT_DIAG_R,
    /* 1H_LEFT     */ CUT_HORIZ,  /* 2H_LEFT     */ CUT_HORIZ,
    /* 1H_COMBO    */ CUT_HORIZ,  /* 2H_COMBO    */ CUT_HORIZ,
    /* 1H_RIGHT    */ CUT_HORIZ,  /* 2H_RIGHT    */ CUT_HORIZ,
    /* 1H_COMBO    */ CUT_HORIZ,  /* 2H_COMBO    */ CUT_HORIZ,
    /* 1H_STAB     */ CUT_POST,   /* 2H_STAB     */ CUT_POST,
    /* 1H_COMBO    */ CUT_POST,   /* 2H_COMBO    */ CUT_POST,
    /* FLIP_START  */ CUT_VERT_L, /* JUMP_START  */ CUT_VERT_L,
    /* FLIP_END    */ CUT_VERT_L, /* JUMP_END    */ CUT_VERT_L,
    /* BACK_LEFT   */ CUT_HORIZ,  /* BACK_RIGHT  */ CUT_HORIZ,
    /* OVER_HAMMER */ CUT_POST,   /* SIDE_HAMMER */ CUT_POST,
    /* 1H_SPIN_ATK */ CUT_POST,   /* 2H_SPIN_ATK */ CUT_POST,
    /* 1H_BIG_SPIN */ CUT_POST,   /* 2H_BIG_SPIN */ CUT_POST,
};

static u16 sCutFlags[] = {
    /* CUT_POST   */ ALL_PARTS,       /* CUT_VERT_L */ LEFT_HALF,
    /* CUT_HORIZ  */ UPPER_HALF,      /* CUT_DIAG_L */ UPPERLEFT_HALF,
    /* CUT_DIAG_R */ UPPERRIGHT_HALF, /* CUT_VERT_R */ RIGHT_HALF,
};

void EnKanban_SetFloorRot(EnKanban* this) {
    if (this->actor.floorPoly != NULL) {
        f32 nx = this->actor.floorPoly->norm.x * COLPOLY_NORM_FRAC;
        f32 ny = this->actor.floorPoly->norm.y * COLPOLY_NORM_FRAC;
        f32 nz = this->actor.floorPoly->norm.z * COLPOLY_NORM_FRAC;

        this->floorRot.x = -Math_FAtan2F(-nz * ny, 1.0f);
        this->floorRot.z = Math_FAtan2F(-nx * ny, 1.0f);
    }
}

void EnKanban_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnKanban* this = THIS;

    Actor_SetScale(&this->actor, 0.01f);
    if (this->actor.params != ENKANBAN_PIECE) {
        this->actor.unk_1F = 0;
        this->actor.flags |= 1;
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
        osSyncPrintf("KANBAN ARG    %x\n", this->actor.params);
        if (this->actor.params == ENKANBAN_FISHING) {
            if (gSaveContext.linkAge == 1) {
                this->actor.textId = 0x409D;
            } else {
                this->actor.textId = 0x4090;
            }
        } else {
            this->actor.textId = this->actor.params | 0x300;
        }
        this->bounceX = 1;
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

void EnKanban_Update(Actor* thisx, GlobalContext* globalCtx2) {
    u8 bounced = false;
    GlobalContext* globalCtx = globalCtx2;
    EnKanban* this = THIS;
    EnKanban* signpost;
    EnKanban* piece;
    Player* player = PLAYER;
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
                                                      this->actor.shape.rot.y, this->actor.shape.rot.z, ENKANBAN_PIECE);
                if (piece != NULL) {
                    ColliderBody* hitItem = this->collider.body.acHitItem;
                    s16 yawDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;
                    u8 i;

                    if (hitItem->toucher.flags & 0x700) {
                        this->cutType = sCutTypes[player->swordAnimation];
                    } else {
                        this->cutType = CUT_POST;
                    }
                    if (ABS(yawDiff) > 0x4000) {
                        if (this->cutType == CUT_DIAG_R) {
                            this->cutType = CUT_DIAG_L;
                        } else if (this->cutType == CUT_VERT_L) {
                            this->cutType = CUT_VERT_R;
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
                    if (!(this->partFlags & ALL_PARTS)) {
                        this->zTargetTimer = 10;
                    }
                    if ((piece->partFlags & PART_UPPER_LEFT) && (piece->partFlags & PART_LOWER_RIGHT)) {
                        piece->pieceType = PIECE_WHOLE_SIGN;
                    } else if ((piece->partFlags & PART_LEFT_UPPER) && (piece->partFlags & PART_RIGHT_UPPER)) {
                        piece->pieceType = PIECE_UPPER_HALF;
                    } else if ((piece->partFlags & PART_LEFT_LOWER) && (piece->partFlags & PART_RIGHT_LOWER)) {
                        piece->pieceType = PIECE_LOWER_HALF;
                    } else if ((piece->partFlags & PART_UPPER_RIGHT) && (piece->partFlags & PART_LOWER_RIGHT)) {
                        piece->pieceType = PIECE_RIGHT_HALF;
                    } else if ((piece->partFlags & PART_UPPER_LEFT) && (piece->partFlags & PART_LOWER_LEFT)) {
                        piece->pieceType = PIECE_LEFT_HALF;
                    } else if ((piece->partFlags & PART_UPPER_LEFT) && (piece->partFlags & PART_LEFT_UPPER)) {
                        piece->pieceType = PIECE_2ND_QUAD;
                    } else if ((piece->partFlags & PART_UPPER_RIGHT) && (piece->partFlags & PART_RIGHT_UPPER)) {
                        piece->pieceType = PIECE_1ST_QUAD;
                    } else if ((piece->partFlags & PART_LEFT_LOWER) && (piece->partFlags & PART_LOWER_LEFT)) {
                        piece->pieceType = PIECE_3RD_QUAD;
                    } else if ((piece->partFlags & PART_RIGHT_LOWER) && (piece->partFlags & PART_LOWER_RIGHT)) {
                        piece->pieceType = PIECE_4TH_QUAD;
                    } else if (piece->partFlags & PART_UPPER_LEFT) {
                        piece->pieceType = PIECE_UPPER_LEFT;
                    } else if (piece->partFlags & PART_LEFT_UPPER) {
                        piece->pieceType = PIECE_LEFT_UPPER;
                    } else if (piece->partFlags & PART_LEFT_LOWER) {
                        piece->pieceType = PIECE_LEFT_LOWER;
                    } else if (piece->partFlags & PART_LOWER_LEFT) {
                        piece->pieceType = PIECE_LOWER_LEFT;
                    } else if (piece->partFlags & PART_UPPER_RIGHT) {
                        piece->pieceType = PIECE_UPPER_RIGHT;
                    } else if (piece->partFlags & PART_RIGHT_UPPER) {
                        piece->pieceType = PIECE_RIGHT_UPPER;
                    } else if (piece->partFlags & PART_RIGHT_LOWER) {
                        piece->pieceType = PIECE_RIGHT_LOWER;
                    } else if (piece->partFlags & PART_LOWER_RIGHT) {
                        piece->pieceType = PIECE_LOWER_RIGHT;
                    } else if (piece->partFlags & PART_POST_UPPER) {
                        piece->pieceType = PIECE_POST_UPPER;
                    } else if (piece->partFlags & PART_POST_LOWER) {
                        piece->pieceType = PIECE_POST_LOWER;
                    } else {
                        piece->pieceType = PIECE_OTHER;
                    }
                    if (piece->pieceType == 100) {
                        piece->pieceType = PIECE_WHOLE_SIGN;
                    }

                    Matrix_RotateY((this->actor.shape.rot.y / (f32)0x8000) * M_PI, MTXMODE_NEW);
                    Matrix_MultVec3f(&sPieceOffsets[piece->pieceType], &offset);
                    piece->actor.posRot.pos.x += offset.x;
                    piece->actor.posRot.pos.y += offset.y;
                    piece->actor.posRot.pos.z += offset.z;
                    piece->offset.x = -sPieceOffsets[piece->pieceType].x / this->actor.scale.x;
                    piece->offset.y = -sPieceOffsets[piece->pieceType].y / this->actor.scale.x;
                    piece->offset.z = -sPieceOffsets[piece->pieceType].z / this->actor.scale.x;
                    piece->pieceWidth = sPieceSizes[piece->pieceType].x;
                    piece->pieceHeight = sPieceSizes[piece->pieceType].y;
                    piece->actor.gravity = -1.0f;
                    piece->actionState = ENKANBAN_AIR;
                    piece->actor.posRot.rot.y =
                        (s16)Rand_CenteredFloat(0x3000) + this->actor.yawTowardsLink + 0x8000;
                    piece->actor.velocity.y = Rand_ZeroFloat(2.0f) + 3.0f;
                    piece->actor.speedXZ = Rand_ZeroFloat(2.0f) + 3.0f;
                    if (piece->partCount >= 4) {
                        piece->bounceX = (s16)Rand_ZeroFloat(10.0f) + 6;
                        piece->bounceZ = (s16)Rand_ZeroFloat(10.0f) + 6;
                    } else {
                        piece->bounceX = (s16)Rand_ZeroFloat(7.0f) + 3;
                        piece->bounceZ = (s16)Rand_ZeroFloat(7.0f) + 3;
                    }
                    piece->spinVel.y = Rand_CenteredFloat(0x1800);
                    if (Rand_ZeroOne() < 0.5f) {
                        piece->direction = 1;
                    } else {
                        piece->direction = -1;
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
            u8 onGround;

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

            osSyncPrintf(VT_RST);
            onGround = (this->actor.bgCheckFlags & 1);
            if (this->spinXFlag) {
                this->spinRot.x += this->spinVel.x;
                this->spinVel.x -= 0x800;
                if ((this->spinRot.x <= 0) && onGround) {
                    this->spinRot.x = 0;
                    this->spinVel.x = 0;
                }
            } else {
                this->spinRot.x -= this->spinVel.x;
                this->spinVel.x -= 0x800;
                if ((this->spinRot.x >= 0) && onGround) {
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
                if ((this->spinRot.z <= 0) && onGround) {
                    this->spinRot.z = 0;
                    this->spinVel.z = 0;
                }
            } else {
                this->spinRot.z -= this->spinVel.z;
                this->spinVel.z -= 0x800;
                if ((this->spinRot.z >= 0) && onGround) {
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
                this->bounceX = this->bounceZ = 0;
                this->actor.posRot.pos.y += this->actor.waterY;
                EffectSsGSplash_Spawn(globalCtx, &this->actor.posRot.pos, NULL, NULL, 0, (this->partCount * 20) + 300);
                EffectSsGRipple_Spawn(globalCtx, &this->actor.posRot.pos, 150, 650, 0);
                EffectSsGRipple_Spawn(globalCtx, &this->actor.posRot.pos, 300, 800, 5);
                this->actor.velocity.y = 0.0f;
                this->actor.gravity = 0.0f;
                osSyncPrintf(" WAT  Y  = %f\n", this->actor.waterY);
                osSyncPrintf(" POS  Y  = %f\n", this->actor.posRot.pos.y);
                osSyncPrintf(" GROUND Y  = %f\n", this->actor.groundY);
                break;
            }

            if (onGround) {
                if (this->bounceCount <= 0) {
                    this->bounceCount++;
                    this->actor.velocity.y *= -0.3f;
                    this->actor.posRot.rot.y += (s16)Rand_CenteredFloat(16384.0f);
                } else {
                    this->actor.velocity.y = 0.0f;
                }
                this->actor.speedXZ *= 0.7f;
                if ((this->spinRot.x == 0) && (this->bounceX != 0)) {
                    this->spinVel.x = this->bounceX * 0x200;
                    if (this->bounceX != 0) {
                        this->bounceX -= 5;
                        if (this->bounceX <= 0) {
                            this->bounceX = 0;
                        }
                    }
                    if (Rand_ZeroOne() < 0.5f) {
                        this->spinXFlag = true;
                    } else {
                        this->spinXFlag = false;
                    }
                    bounced = true;
                }
                if ((this->spinRot.z == 0) && (this->bounceZ != 0)) {
                    this->spinVel.z = this->bounceZ * 0x200;
                    if (this->bounceZ != 0) {
                        this->bounceZ -= 5;
                        if (this->bounceZ <= 0) {
                            this->bounceZ = 0;
                        }
                    }
                    if (Rand_ZeroOne() < 0.5f) {
                        this->spinZFlag = true;
                    } else {
                        this->spinZFlag = false;
                    }
                    bounced = true;
                }
                Math_ApproachS(&this->actor.shape.rot.x, this->direction * 0x4000, 1, 0x2000);
            } else {
                this->actor.shape.rot.y += this->spinVel.y;
                this->actor.shape.rot.x += this->direction * 0x7D0;
            }
            if (bounced) {
                s16 dustCount;
                s16 j;
                Vec3f velocity = { 0.0f, 0.0f, 0.0f };
                Vec3f accel;
                Vec3f pos;

                Audio_PlayActorSound2(&this->actor, NA_SE_EV_WOODPLATE_BOUND);
                accel.x = 0.0f;
                accel.y = 0.1f;
                accel.z = 0.0f;
                pos.y = this->actor.groundY + 3.0f;
                dustCount = this->partCount * 0.5f;
                for (j = 0; j < dustCount + 3; j++) {
                    pos.x = this->actor.posRot.pos.x + Rand_CenteredFloat((this->partCount * 0.5f) + 20.0f);
                    pos.z = this->actor.posRot.pos.z + Rand_CenteredFloat((this->partCount * 0.5f) + 20.0f);
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
            Math_ApproachF(&this->actor.shape.unk_08, 100.0f, 1.0f, 5.0f);
            if (this->actionState == ENKANBAN_WATER) {
                s32 rippleDelay;
                s32 rippleScale;

                if ((player->actor.speedXZ > 0.0f) && (player->actor.posRot.pos.y < this->actor.posRot.pos.y) &&
                    (this->actor.xyzDistFromLinkSq < 2500.0f)) {
                    Math_ApproachF(&this->actor.speedXZ, player->actor.speedXZ, 1.0f, 0.2f);
                    if (this->actor.speedXZ > 1.0f) {
                        this->actor.speedXZ = 1.0f;
                    }
                    if (Math_SmoothStepToS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink + 0x8000, 1,
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
                    Math_ApproachZeroF(&this->actor.speedXZ, 1.0f, 0.15f);
                }
                this->actor.shape.rot.y += this->spinVel.y;
                Math_ApproachS(&this->spinVel.y, 0, 1, 0x3A);
                Math_ApproachS(&this->actor.shape.rot.x, this->direction * 0x4000, 2, 0x1000);
                Math_ApproachS(&this->spinRot.x, Math_SinS(2500 * this->frameCount) * 500.0f, 2, 0x1000);
                Math_ApproachS(&this->spinRot.z, Math_CosS(3000 * this->frameCount) * 500.0f, 2, 0x1000);
                Math_ApproachZeroF(&this->floorRot.x, 0.5f, 0.2f);
                Math_ApproachZeroF(&this->floorRot.z, 0.5f, 0.2f);
                if (fabsf(this->actor.speedXZ) > 1.0f) {
                    rippleDelay = 0;
                } else if (fabsf(this->actor.speedXZ) > 0.5f) {
                    rippleDelay = 3;
                } else {
                    rippleDelay = 7;
                }
                if (!(this->frameCount & rippleDelay)) {
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
                f32 hammerStrength = (100.0f - sqrtf(this->actor.xyzDistFromLinkSq)) * 0.05f;

                this->actionState = ENKANBAN_AIR;
                this->actor.gravity = -1.0f;
                this->actor.posRot.rot.y = Rand_CenteredFloat(0x10000);
                if (this->partCount >= 4) {
                    this->bounceX = (s16)Rand_ZeroFloat(10.0f) + 6;
                    this->bounceZ = (s16)Rand_ZeroFloat(10.0f) + 6;
                    this->actor.velocity.y = 2.0f + hammerStrength;
                    this->actor.speedXZ = Rand_ZeroFloat(1.0f);
                } else {
                    this->bounceX = (s16)Rand_ZeroFloat(7.0f) + 3;
                    this->bounceZ = (s16)Rand_ZeroFloat(7.0f) + 3;
                    this->actor.velocity.y = 3.0f + hammerStrength;
                    this->actor.speedXZ = Rand_ZeroFloat(1.5f);
                }
                this->spinVel.y = Rand_CenteredFloat(0x1800);
                if (Rand_ZeroOne() < 0.5f) {
                    this->direction = 1;
                } else {
                    this->direction = -1;
                }
                this->airTimer = 70;
            }
            if (this->bounceX == 0) {
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
                        f32 bombStrength = (100.0f - sqrtf(SQ(dx) + SQ(dy) + SQ(dz))) * 0.05f;

                        this->actionState = ENKANBAN_AIR;
                        this->actor.gravity = -1.0f;
                        this->actor.posRot.rot.y = Math_FAtan2F(dx, dz) * (0x8000 / M_PI);
                        if (this->partCount >= 4) {
                            this->bounceX = (s16)Rand_ZeroFloat(10.0f) + 6;
                            this->bounceZ = (s16)Rand_ZeroFloat(10.0f) + 6;
                            this->actor.velocity.y = 2.5f + bombStrength;
                            this->actor.speedXZ = 3.0f + bombStrength;
                        } else {
                            this->bounceX = (s16)Rand_ZeroFloat(7.0f) + 3;
                            this->bounceZ = (s16)Rand_ZeroFloat(7.0f) + 3;
                            this->actor.velocity.y = 5.0f + bombStrength;
                            this->actor.speedXZ = 4.0f + bombStrength;
                        }
                        this->spinVel.y = Rand_CenteredFloat(0x1800);
                        if (Rand_ZeroOne() < 0.5f) {
                            this->direction = 1;
                        } else {
                            this->direction = -1;
                        }
                        this->airTimer = 70;
                    }
                    bomb = bomb->next;
                }
            }
            osSyncPrintf(VT_FGCOL(GREEN));
            osSyncPrintf("OCARINA_MODE %d\n", globalCtx->msgCtx.unk_E3EE);
            osSyncPrintf(VT_RST);
            switch (this->ocarinaFlag) {
                case 0:
                    if (globalCtx->msgCtx.unk_E3EE == 1) {
                        this->ocarinaFlag = 1;
                    }
                    break;
                case 1:
                    if ((globalCtx->msgCtx.unk_E3EE == 4) && (globalCtx->msgCtx.unk_E3F2 == 8)) {
                        this->actionState = ENKANBAN_REPAIR;
                        this->bounceX = 1;
                        Audio_PlaySoundGeneral(NA_SE_SY_TRE_BOX_APPEAR, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                               &D_801333E8);
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

            Matrix_RotateY((signpost->actor.shape.rot.y / 32768.0f) * 3.1415927f, MTXMODE_NEW);
            Matrix_MultVec3f(&sPieceOffsets[this->pieceType], &offset);
            distX = Math_SmoothStepToF(&this->actor.posRot.pos.x, signpost->actor.posRot.pos.x + offset.x, 1.0f,
                                            3.0f, 0.0f);
            distY = Math_SmoothStepToF(&this->actor.posRot.pos.y, signpost->actor.posRot.pos.y + offset.y, 1.0f,
                                            3.0f, 0.0f);
            distZ = Math_SmoothStepToF(&this->actor.posRot.pos.z, signpost->actor.posRot.pos.z + offset.z, 1.0f,
                                            3.0f, 0.0f);
            pDiff = Math_SmoothStepToS(&this->actor.shape.rot.x, signpost->actor.shape.rot.x, 1, 0x200, 0);
            yDiff = Math_SmoothStepToS(&this->actor.shape.rot.y, signpost->actor.shape.rot.y, 1, 0x200, 0);
            rDiff = Math_SmoothStepToS(&this->actor.shape.rot.z, signpost->actor.shape.rot.z, 1, 0x200, 0);
            Math_ApproachS(&this->spinRot.x, 0, 1, 0x200);
            Math_ApproachS(&this->spinRot.z, 0, 1, 0x200);
            Math_ApproachZeroF(&this->floorRot.x, 1.0f, 0.05f);
            Math_ApproachZeroF(&this->floorRot.z, 1.0f, 0.05f);
            Math_ApproachZeroF(&this->actor.shape.unk_08, 1.0f, 2.0f);
            if (((distX + distY + distZ) == 0.0f) &&
                ((pDiff + yDiff + rDiff + this->spinRot.x + this->spinRot.z) == 0) && (this->floorRot.x == 0.0f) &&
                (this->floorRot.z == 0.0f)) {
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
    f32 zShift;
    f32 zShift2;
    s16 i;
    u8* shadowTex = Graph_Alloc(globalCtx->state.gfxCtx, 0x400);

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_kanban.c", 1659);
    func_80093D18(globalCtx->state.gfxCtx);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPDisplayList(POLY_OPA_DISP++, D_06000C30);
    if (this->actionState != ENKANBAN_SIGN) {
        Matrix_Translate(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, MTXMODE_NEW);
        Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, MTXMODE_APPLY);
        Matrix_RotateX(this->floorRot.x, MTXMODE_APPLY);
        Matrix_RotateZ(this->floorRot.z, MTXMODE_APPLY);
        Matrix_Translate(0.0f, this->actor.shape.unk_08, 0.0f, MTXMODE_APPLY);
        Matrix_RotateY((this->actor.shape.rot.y / (f32)0x8000) * M_PI, MTXMODE_APPLY);
        Matrix_RotateX((this->actor.shape.rot.x / (f32)0x8000) * M_PI, MTXMODE_APPLY);
        zShift = fabsf(Math_SinS(this->spinRot.x) * this->pieceHeight);
        zShift2 = fabsf(Math_SinS(this->spinRot.z) * this->pieceWidth);
        zShift = MAX(zShift2, zShift);
        zShift *= -(f32)this->direction;
        Matrix_Translate(0.0f, 0.0f, zShift, MTXMODE_APPLY);
        Matrix_RotateX((this->spinRot.x / (f32)0x8000) * M_PI, MTXMODE_APPLY);
        Matrix_RotateY((this->spinRot.z / (f32)0x8000) * M_PI, MTXMODE_APPLY);
        Matrix_Translate(this->offset.x, this->offset.y, this->offset.z - 100.0f, MTXMODE_APPLY);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_kanban.c", 1715),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        for (i = 0; i < ARRAY_COUNT(sPartFlags); i++) {
            if (sPartFlags[i] & this->partFlags) {
                gSPDisplayList(POLY_OPA_DISP++, sDisplayLists[i]);
            }
        }
    } else {
        Matrix_Translate(0.0f, 0.0f, -100.0f, MTXMODE_APPLY);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_kanban.c", 1725),
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

            Matrix_Translate(0.0f, 4400.0f + cutOffset, 200.0f, MTXMODE_APPLY);
            Matrix_RotateZ(sCutAngles[this->cutType], MTXMODE_APPLY);
            Matrix_Scale(0.0f, 10.0f, 2.0f, MTXMODE_APPLY);
            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x00, 255, 255, 255, this->cutMarkAlpha);
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 150, 0);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_kanban.c", 1773),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_06001630);
        }
    }
    if ((this->actor.projectedPos.z <= 400.0f) && (this->actor.projectedPos.z > 0.0f) &&
        (this->actor.groundY > -3000.0f)) {
        if ((this->bounceX != 0) || (this->bounceZ != 0)) {
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
                zShift = 0.0f;
            } else {
                zShift = ((this->actor.posRot.pos.y - this->actor.groundY) * -50.0f) / 100.0f;
            }

            Matrix_Translate(this->actor.posRot.pos.x, this->actor.groundY, this->actor.posRot.pos.z + zShift,
                             MTXMODE_NEW);
            Matrix_RotateX(this->floorRot.x, MTXMODE_APPLY);
            Matrix_RotateZ(this->floorRot.z, MTXMODE_APPLY);
            Matrix_Scale(this->actor.scale.x, 0.0f, this->actor.scale.z, MTXMODE_APPLY);
            if (this->actionState == ENKANBAN_SIGN) {
                Matrix_RotateX(-M_PI / 5, MTXMODE_APPLY);
            }
            Matrix_RotateY((this->actor.shape.rot.y / (f32)0x8000) * M_PI, MTXMODE_APPLY);
            Matrix_RotateX((this->actor.shape.rot.x / (f32)0x8000) * M_PI, MTXMODE_APPLY);
            Matrix_RotateX((this->spinRot.x / (f32)0x8000) * M_PI, MTXMODE_APPLY);
            Matrix_RotateY((this->spinRot.z / (f32)0x8000) * M_PI, MTXMODE_APPLY);
            Matrix_Translate(this->offset.x, this->offset.y, this->offset.z, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_kanban.c", 1833),
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
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_kanban.c", 1857);
}
