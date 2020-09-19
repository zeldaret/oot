#include "z_en_karebaba.h"

/**
 * File: z_en_karebaba.c
 * Overlay: ovl_En_Karebaba
 * Description: Withered Deku Baba enemies.
 */

#define THIS ((EnKarebaba*)thisx)

// Function Prototypes
void EnKarebaba_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKarebaba_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKarebaba_Update(Actor* thisx, GlobalContext* globalCtx);
void EnKarebaba_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnKarebaba_DisableHitbox(EnKarebaba* this);
void EnKarebaba_SetupGrow(EnKarebaba*);
void EnKarebaba_SetupIdle(EnKarebaba*);
void EnKarebaba_SetupAwaken(EnKarebaba* this);
void EnKarebaba_SetupUpright(EnKarebaba* this);
void EnKarebaba_SetupSpin(EnKarebaba* this);
void EnKarebaba_SetupDying(EnKarebaba* this);
void EnKarebaba_SetupDeadItemDrop(EnKarebaba* this, GlobalContext* globalCtx);
void EnKarebaba_SetupRetract(EnKarebaba* this);
void EnKarebaba_SetupWait(EnKarebaba* this);
void EnKarebaba_SetupRegrow(EnKarebaba* this);
void EnKarebaba_Grow(EnKarebaba* this, GlobalContext* globalCtx);
void EnKarebaba_Idle(EnKarebaba* this, GlobalContext* globalCtx);
void EnKarebaba_Awaken(EnKarebaba* this, GlobalContext* globalCtx);
void EnKarebaba_Upright(EnKarebaba* this, GlobalContext* globalCtx);
void EnKarebaba_Spin(EnKarebaba* this, GlobalContext* globalCtx);
void EnKarebaba_Dying(EnKarebaba* this, GlobalContext* globalCtx);
void EnKarebaba_DeadItemDrop(EnKarebaba* this, GlobalContext* globalCtx);
void EnKarebaba_Retract(EnKarebaba* this, GlobalContext* globalCtx);
void EnKarebaba_Wait(EnKarebaba* this, GlobalContext* globalCtx);
void EnKarebaba_Regrow(EnKarebaba* this, GlobalContext* globalCtx);
void EnKarebaba_DrawCenterShadow(EnKarebaba* this, GlobalContext* globalCtx);

const ActorInit En_Karebaba_InitVars = {
    ACTOR_EN_KAREBABA,
    ACTORTYPE_ENEMY,
    5,
    OBJECT_DEKUBABA,
    sizeof(EnKarebaba),
    (ActorFunc)EnKarebaba_Init,
    (ActorFunc)EnKarebaba_Destroy,
    (ActorFunc)EnKarebaba_Update,
    (ActorFunc)EnKarebaba_Draw
};

static ColliderCylinderInit karebabaHitbox = {
    { 0xC, 0, 9, 0, 0x10, COLSHAPE_CYLINDER },
    { 0, { 0x00000000, 0, 0 }, { ~0x00300000, 0, 0 }, 0, 1, 0 },
    { 7, 25, 0, { 0, 0, 0 } }
};

static ColliderCylinderInit karebabaHitbox2 = {
    { 0x0C, 0x11, 0, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0, { ~0x00300000, 0, 8 }, { 0x00000000, 0, 0 }, 9, 0, 1 },
    { 4, 25, 0, { 0, 0, 0 }}
};

static CollisionCheckInfoInit karebabaLife = {
    1, 15, 80, 254
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(unk_4C, 0x9C4, ICHAIN_CONTINUE),
    ICHAIN_U8(unk_1F, 1, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 9, ICHAIN_STOP)
};

static Vec3f VEC_ZERO = { 0.0f, 0.0f, 0.0f };

Color_RGBA8 BLACK_COLOR = { 0, 0, 0, 0 };

extern SkeletonHeader SKEL_KAREBABA;
extern AnimationHeader ANIM_KAREBABA;
extern Gfx SHADOW_DLIST[], UNK_DLIST[], UNK2_DLIST[], UNK3_DLIST[], BABA_DLIST1[], BABA_DLIST2[], BABA_DLIST3[];

Gfx* DisplayLists[] = {
    BABA_DLIST1,
    BABA_DLIST2,
    BABA_DLIST3
};

Vec3f VEC_ZERO2 = { 0.0f, 0.0f, 0.0f };

// Function Implementations

void EnKarebaba_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnKarebaba* this = THIS;

    Actor_ProcessInitChain(this, (InitChainEntry*)sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 22.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &SKEL_KAREBABA, &ANIM_KAREBABA, &this->limbDrawTable, &this->transitionDrawTable, 8);
    Collider_InitCylinder(globalCtx, &this->hitbox2);
    Collider_SetCylinder(globalCtx, &this->hitbox2, this, &karebabaHitbox);
    Collider_CylinderUpdate(this, &this->hitbox2);
    Collider_InitCylinder(globalCtx, &this->hitbox1);
    Collider_SetCylinder(globalCtx, &this->hitbox1, this, &karebabaHitbox2);
    Collider_CylinderUpdate(this, &this->hitbox1);
    func_80061ED4(&this->actor.colChkInfo, DamageTable_Get(1), &karebabaLife);

    this->boundFloor = NULL;

    if (this->actor.params == 0) {
        EnKarebaba_SetupGrow(this);
    } else {
        EnKarebaba_SetupIdle(this);
    }
}

void EnKarebaba_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnKarebaba* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->hitbox2);
    Collider_DestroyCylinder(globalCtx, &this->hitbox1);
}

void EnKarebaba_DisableHitbox(EnKarebaba* this) {
    this->hitbox2.dim.radius = 7;
    this->hitbox2.dim.height = 25;
    this->hitbox2.base.type = COLTYPE_UNK12;
    this->hitbox2.base.acFlags |= 4;
    this->hitbox2.body.bumper.flags = ~0x00300000;
    this->hitbox1.dim.height = 25;
}

void EnKarebaba_SetupGrow(EnKarebaba* this) {
    Actor_SetScale(&this->actor, 0.0f);
    this->actor.shape.rot.x = -0x4000;
    this->actionFunc = EnKarebaba_Grow;
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y + 14.0f;
}

void EnKarebaba_SetupIdle(EnKarebaba* this) {
    Actor_SetScale(&this->actor, 0.005f);
    this->actor.shape.rot.x = -0x4000;
    this->actionFunc = EnKarebaba_Idle;
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y + 14.0f;
}

void EnKarebaba_SetupAwaken(EnKarebaba* this) {
    AnimationHeader* anim = &ANIM_KAREBABA;

    SkelAnime_ChangeAnim(&this->skelAnime, anim, 4.0f, 0, SkelAnime_GetFrameCount(anim), 0, -3);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DUMMY482);
    this->actionFunc = EnKarebaba_Awaken;
}

void EnKarebaba_SetupUpright(EnKarebaba* this) {
    if (this->actionFunc != EnKarebaba_Spin) {
        Actor_SetScale(&this->actor, 0.01f);
        this->hitbox2.base.type = COLTYPE_UNK6;
        this->hitbox2.base.acFlags &= ~0x0004;
        this->hitbox2.body.bumper.flags = gSaveContext.linkAge != 0 ? 0x07C00710 : 0x0FC00710;
        this->hitbox2.dim.radius = 15;
        this->hitbox2.dim.height = 80;
        this->hitbox1.dim.height = 80;
    }

    this->actor.params = 40;
    this->actionFunc = EnKarebaba_Upright;
}

void EnKarebaba_SetupSpin(EnKarebaba* this) {
    this->actor.params = 40;
    this->actionFunc = EnKarebaba_Spin;
}

void EnKarebaba_SetupDying(EnKarebaba* this) {
    this->actor.params = 0;
    this->actor.gravity = -0.8f;
    this->actor.velocity.y = 4.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x8000;
    this->actor.speedXZ = 3.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEKU_JR_DEAD);
    this->actor.flags |= 0x30;
    this->actionFunc = EnKarebaba_Dying;
}

void EnKarebaba_SetupDeadItemDrop(EnKarebaba *this, GlobalContext *globalCtx) {
    Actor_SetScale(&this->actor, 0.03f);
    this->actor.shape.rot.x -= 0x4000;
    this->actor.shape.unk_08 = 1000.0f;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.shape.unk_10 = 3.0f;
    Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_MISC);
    this->actor.params = 200;
    this->actor.flags &= ~0x20;
    this->actionFunc = EnKarebaba_DeadItemDrop;
}

void EnKarebaba_SetupRetract(EnKarebaba* this) {
    AnimationHeader* anim = &ANIM_KAREBABA;
    SkelAnime_ChangeAnim(&this->skelAnime, anim, -3.0f, SkelAnime_GetFrameCount(anim), 0.0f, 2, -3.0f);
    EnKarebaba_DisableHitbox(this);
    this->actionFunc = EnKarebaba_Retract;
}

void EnKarebaba_SetupWait(EnKarebaba* this) {
    AnimationHeader* anim = &ANIM_KAREBABA;
    SkelAnime_ChangeAnim(&this->skelAnime, anim, 0.0f, 0.0f, 0.0f, 2, 0.0f); // Anim Mode == STOP
    EnKarebaba_DisableHitbox(this);
    this->actor.shape.rot.x = -0x4000;
    this->actor.params = 200;
    this->actor.parent = NULL;
    this->actor.shape.unk_10 = 0.0f;
    Math_Vec3f_Copy(&this->actor.posRot.pos, &this->actor.initPosRot.pos);
    this->actionFunc = EnKarebaba_Wait;
}

void EnKarebaba_SetupRegrow(EnKarebaba* this) {
    this->actor.shape.unk_08 = 0.0f;
    this->actor.shape.unk_10 = 22.0f;
    this->hitbox1.dim.radius = karebabaHitbox2.dim.radius;
    Actor_SetScale(&this->actor, 0.0f);
    this->actionFunc = EnKarebaba_Regrow;
}

void EnKarebaba_Grow(EnKarebaba* this, GlobalContext* globalCtx) {
    f32 scale;

    this->actor.params++;
    scale = this->actor.params * 0.05f;
    Actor_SetScale(&this->actor, 0.005f * scale);
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y + (14.0f * scale);
    if (this->actor.params == 20) {
        EnKarebaba_SetupIdle(this);
    }
}

void EnKarebaba_Idle(EnKarebaba* this, GlobalContext* globalCtx) {
    if (this->actor.xzDistFromLink < 200.0f && fabsf(this->actor.yDistFromLink) < 30.0f) {
        EnKarebaba_SetupAwaken(this);
    }
}

void EnKarebaba_Awaken(EnKarebaba* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxF(&this->actor.scale.x, 0.01f, 0.0005f);
    this->actor.scale.y = this->actor.scale.z = this->actor.scale.x;
    if (Math_ApproxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y + 60.0f, 5.0f)) {
        EnKarebaba_SetupUpright(this);
    }
    this->actor.shape.rot.y += 0x1999;
    func_800297A4(globalCtx, &this->actor.initPosRot.pos, 3.0f, 0, 12, 5, 1, -1, 10, 0);
}

void EnKarebaba_Upright(EnKarebaba* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (this->actor.params != 0) {
        this->actor.params--;
    }

    if (func_800A56C8(&this->skelAnime, 0.0f) || func_800A56C8(&this->skelAnime, 12.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEKU_JR_MOUTH);
    }

    // Check if colliding with Link
    if ((this->hitbox2.base.acFlags & 2) != 0) {
        EnKarebaba_SetupDying(this);
        func_80032C7C(globalCtx, &this->actor);
    } else if (240.0f < Math_Vec3f_DistXZ(&this->actor.initPosRot.pos, &player->actor.posRot.pos)) {
        EnKarebaba_SetupRetract(this);
    } else if (this->actor.params == 0) {
        EnKarebaba_SetupSpin(this);
    }
}

void EnKarebaba_Spin(EnKarebaba* this, GlobalContext* globalCtx) {
    s32 value;
    f32 thing;

    if (this->actor.params != 0) {
        this->actor.params--;
    }

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (func_800A56C8(&this->skelAnime, 0.0f) || func_800A56C8(&this->skelAnime, 12.0f)) {
        do { Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEKU_JR_MOUTH); } while (false);
    }

    value = 20 - this->actor.params;
    value = 20 - ABS(value);

    if (value > 10) {
        value = 10;
    }

    this->hitbox1.dim.radius = karebabaHitbox2.dim.radius + (value * 2);
    this->actor.shape.rot.x = 0xC000 - (value * 256);
    this->actor.shape.rot.y += (value * 11) * 64;
    this->actor.posRot.pos.y = (Math_Sins(this->actor.shape.rot.x) * -60.0f) + this->actor.initPosRot.pos.y;

    thing = Math_Coss(this->actor.shape.rot.x) * 60.0f;

    this->actor.posRot.pos.x = (Math_Sins(this->actor.shape.rot.y) * thing) + this->actor.initPosRot.pos.x;
    this->actor.posRot.pos.z = (Math_Coss(this->actor.shape.rot.y) * thing) + this->actor.initPosRot.pos.z;

    if ((this->hitbox2.base.acFlags & 2) != 0) {
        EnKarebaba_SetupDying(this);
        func_80032C7C(globalCtx, &this->actor);
        return;
    }

    if (this->actor.params == 0) {
        EnKarebaba_SetupUpright(this);
    }
}

void EnKarebaba_Dying(EnKarebaba* this, GlobalContext* globalCtx) {
    s32 i;
    Vec3f position;
    Vec3f rotation;

    Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.1f);

    if (this->actor.params == 0) {
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0x4800, 1820);
        func_800297A4(globalCtx, &this->actor.posRot.pos, 3.0f, 0, 12, 5, 1, -1, 10, 0);
        if (0.005f < this->actor.scale.x && ((this->actor.bgCheckFlags & 2) != 0 || (this->actor.bgCheckFlags & 8) != 0)) {
            this->actor.scale.z = 0.0f;
            this->actor.scale.y = 0.0f;
            this->actor.scale.x = 0.0f;
            this->actor.speedXZ = 0.0f;
            this->actor.flags &= ~5;
            func_800297A4(globalCtx, &this->actor.posRot.pos, 3.0f, 0, 12, 5, 15, -1, 10, 0);
        }
        if ((this->actor.bgCheckFlags & 2) != 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
            this->actor.params = 1;
        }
    } else if (this->actor.params == 1) {
        Math_Vec3f_Copy(&position, &this->actor.posRot.pos);
        rotation.z = Math_Sins(this->actor.shape.rot.x) * 20.0f;
        rotation.x = -20.0f * Math_Coss(this->actor.shape.rot.x) * Math_Sins(this->actor.shape.rot.y);
        rotation.y = -20.0f * Math_Coss(this->actor.shape.rot.x) * Math_Coss(this->actor.shape.rot.y);

        for (i = 0; i != 4; i++) {
            func_800286CC(globalCtx, &position, &VEC_ZERO, &VEC_ZERO, 500, 50);
            position.x += rotation.x;
            position.y += rotation.z;
            position.z += rotation.y;
        };

        func_800286CC(globalCtx, &this->actor.initPosRot.pos, &VEC_ZERO, &VEC_ZERO, 500, 100);
        EnKarebaba_SetupDeadItemDrop(this, globalCtx);
    }
}

void EnKarebaba_DeadItemDrop(EnKarebaba* this, GlobalContext* globalCtx) {
    if (this->actor.params != 0) {
        this->actor.params--;
    }

    if (Actor_HasParent(&this->actor, globalCtx) != 0 || this->actor.params == 0) {
        EnKarebaba_SetupWait(this);
        return;
    }

    func_8002F554(&this->actor, globalCtx, GI_STICKS_1);
}

void EnKarebaba_Retract(EnKarebaba* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxF(&this->actor.scale.x, 0.005f, 0.0005f);
    this->actor.scale.z = this->actor.scale.x;
    this->actor.scale.y = this->actor.scale.x;

    if (Math_ApproxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y + 14.0f, 5.0f) != 0) {
        EnKarebaba_SetupIdle(this);
    }

    this->actor.shape.rot.y += 0x1999;
    func_800297A4(globalCtx, &this->actor.initPosRot.pos, 3.0f, 0, 12, 5, 1, -1, 10, 0);
}

void EnKarebaba_Wait(EnKarebaba* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (this->actor.params != 0) {
        this->actor.params--;
    }
    if (this->actor.params == 0) {
        EnKarebaba_SetupRegrow(this);
    }
}

void EnKarebaba_Regrow(EnKarebaba* this, GlobalContext* globalCtx) {
    f32 tmp;

    this->actor.params++;
    tmp = this->actor.params * 0.05f;
    Actor_SetScale(&this->actor, 0.005f * tmp);
    this->actor.posRot.pos.y = this->actor.initPosRot.pos.y + (14.0f * tmp);

    if (this->actor.params == 20) {
        this->actor.flags &= ~0x10;
        this->actor.flags |= 5;
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_ENEMY);
        EnKarebaba_SetupIdle(this);
    }
}

void EnKarebaba_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnKarebaba* this = THIS;
    f32 temp, unused;

    this->actionFunc(this, globalCtx);

    if (this->actionFunc != EnKarebaba_Wait) {
        if (this->actionFunc == EnKarebaba_Dying) {
            Actor_MoveForward(&this->actor);
            func_8002E4B4(globalCtx, &this->actor, 10.0f, 15.0f, 10.0f, 5);
        } else {
            func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
            if (this->boundFloor == NULL) {
                this->boundFloor = this->actor.floorPoly;
            }
        }
        if (this->actionFunc != EnKarebaba_Dying && this->actionFunc != EnKarebaba_DeadItemDrop) {
            if (this->actionFunc != EnKarebaba_Regrow && this->actionFunc != EnKarebaba_Grow) {
                CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->hitbox1);
                CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->hitbox2);
            }
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->hitbox1);
            Actor_SetHeight(&this->actor, (this->actor.scale.x * 10.0f) / 0.01f);
            temp = this->actor.initPosRot.pos.y + 40.0f;
            this->actor.posRot2.pos.x = this->actor.initPosRot.pos.x;
            this->actor.posRot2.pos.y = temp < this->actor.posRot2.pos.y ? temp : this->actor.posRot2.pos.y;
            this->actor.posRot2.pos.z = this->actor.initPosRot.pos.z;
        }
    }
}

void EnKarebaba_DrawCenterShadow(EnKarebaba* this, GlobalContext* globalCtx) {
    MtxF matrix;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_karebaba.c", 1013);

    func_80094044(globalCtx->state.gfxCtx);

    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0, 0, 0, 255);
    func_80038A28(this->boundFloor, this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z, &matrix);
    Matrix_Mult(&matrix, 0);
    Matrix_Scale(0.15f, 1.0f, 0.15f, 1);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_karebaba.c", 1029), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, SHADOW_DLIST);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_karebaba.c", 1034);
}

#ifdef NON_MATCHING
void EnKarebaba_Draw(Actor* thisx, GlobalContext* globalCtx) {
    f32 scale;
    Gfx** current;
    s32 tmp, i;
    EnKarebaba* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_karebaba.c", 1056);
    func_80093D18(globalCtx->state.gfxCtx);

    if (this->actionFunc == EnKarebaba_DeadItemDrop && (this->actor.params >= 41 || (this->actor.params & 1) != 0)) {
        Matrix_Translate(0.0f, 0.0f, 200.0f, 1);
        gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_karebaba.c", 1066), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyOpa.p++, UNK_DLIST);
    } else if (this->actionFunc != EnKarebaba_Wait) {
        func_80026230(globalCtx, &BLACK_COLOR, 1, 2);
        SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, 0, 0, 0);
        Matrix_Translate(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0);
        scale = (this->actionFunc == EnKarebaba_Regrow || this->actionFunc == EnKarebaba_Grow) ? (this->actor.params * 0.0005f) : 0.01f;
        Matrix_Scale(scale, scale, scale, 1);
    }

    Matrix_RotateRPY(this->actor.shape.rot.x, this->actor.shape.rot.y, 0, 1);

    tmp = this->actionFunc == EnKarebaba_Dying ? 2 : 3;

    for (i = 0; i < tmp; i++) {
        current = DisplayLists[i];
        Matrix_Translate(0, 0, -2000.0f, 1);
        gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_karebaba.c", 1116), G_MTX_LOAD | G_MTX_NOPUSH | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyOpa.p++, *current);
        if (current == &DisplayLists[0] && this->actionFunc == EnKarebaba_Dying) {
            Matrix_MultVec3f(&VEC_ZERO2, &this->actor.posRot2.pos);
        }
    }

    func_80026608(globalCtx);
    func_80026230(globalCtx, &BLACK_COLOR, 1, 2);
    Matrix_Translate(this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z, 0);
    if (this->actionFunc != EnKarebaba_Grow) {
        scale = 0.01f;
    }
    Matrix_Scale(scale, scale, scale, 1);
    Matrix_RotateY(this->actor.initPosRot.rot.y * 0.0000958738f, 1);
    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_karebaba.c", 1144), G_MTX_LOAD | G_MTX_NOPUSH | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyOpa.p++, UNK2_DLIST);

    if (this->actionFunc == EnKarebaba_Dying) {
        Matrix_RotateRPY(-0x4000, (s16) (this->actor.shape.rot.y - this->actor.initPosRot.rot.y), 0, 1);
        gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_karebaba.c", 1155), G_MTX_LOAD | G_MTX_NOPUSH | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyOpa.p++, UNK3_DLIST);
    }

    func_80026608(globalCtx);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_karebaba.c", 1163);
    
    if (this->boundFloor != NULL) {
        EnKarebaba_DrawCenterShadow(this, globalCtx);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_Draw.s")
#endif
