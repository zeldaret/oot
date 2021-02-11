#include "global.h"
#include "vt.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS 0x00000010

#define THIS ((EnAObj*)thisx)

void EnAObj_Init(Actor* thisx, GlobalContext* globalCtx);
void EnAObj_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnAObj_Update(Actor* thisx, GlobalContext* globalCtx);
void EnAObj_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8001D204(EnAObj* this, GlobalContext* globalCtx);
void func_8001D25C(EnAObj* this, GlobalContext* globalCtx);
void func_8001D360(EnAObj* this, GlobalContext* globalCtx);
void func_8001D4A8(EnAObj* this, GlobalContext* globalCtx);
void func_8001D608(EnAObj* this, GlobalContext* globalCtx);

void func_8001D234(EnAObj* this, s16 params);
void func_8001D310(EnAObj* this, s16 params);
void func_8001D480(EnAObj* this, s16 params);
void func_8001D5C8(EnAObj* this, s16 params);

const ActorInit En_A_Obj_InitVars = {
    ACTOR_EN_A_OBJ,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnAObj),
    (ActorFunc)EnAObj_Init,
    (ActorFunc)EnAObj_Destroy,
    (ActorFunc)EnAObj_Update,
    (ActorFunc)EnAObj_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_ALL,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK2,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 25, 60, 0, { 0, 0, 0 } },
};

extern CollisionHeader D_06000730;

static CollisionHeader* D_8011546C[] = {
    &gUnknown1Col, &gUnknown1Col, &gUnknown4Col, &gUnknown5Col, &gUnknown6Col, &D_06000730,
};

static Gfx* D_80115484[] = {
    gUnusedRockRectangularPrism2DL,
    gUnusedRockRectangularPrism2DL,
    gUnusedRockRectangularPrism2DL,
    gUnusedRockRectangularPrism4DL,
    gUnusedRockRectangularPrism4DL,
    gUnusedRockRectangularPrism5DL,
    0x06000210,
    gUnusedGrassBladesDL,
    gUnusedTreeStumpDL,
    gSignRectangularDL,
    gSignDirectionalDL,
    gBoulderFragmentsDL,
};

void EnAObj_SetupAction(EnAObj* this, EnAObjActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnAObj_Init(Actor* thisx, GlobalContext* globalCtx) {
    CollisionHeader* colHeader = NULL;
    s32 pad;
    EnAObj* this = THIS;
    f32 sp28;

    sp28 = 6.0f;

    this->textId = (thisx->params >> 8) & 0xFF;
    thisx->params &= 0xFF;

    switch (thisx->params) {
        case A_OBJ_BLOCK_SMALL:
            Actor_SetScale(thisx, 0.025f);
            break;
        case A_OBJ_BLOCK_LARGE:
            Actor_SetScale(thisx, 0.05f);
            break;
        case A_OBJ_BLOCK_HUGE:
        case A_OBJ_CUBE_SMALL:
        case A_OBJ_UNKNOWN_6:
            Actor_SetScale(thisx, 0.1f);
            break;
        case A_OBJ_BLOCK_SMALL_ROT:
            Actor_SetScale(thisx, 0.005f);
            break;
        case A_OBJ_BLOCK_LARGE_ROT:
        default:
            Actor_SetScale(thisx, 0.01f);
            break;
    }

    if (thisx->params >= 9) {
        sp28 = 12.0f;
    }

    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawCircle, sp28);

    thisx->focus.pos = thisx->world.pos;
    this->dyna.bgId = BGACTOR_NEG_ONE;
    this->dyna.unk_160 = 0;
    this->dyna.unk_15C = DPM_UNK;
    thisx->uncullZoneDownward = 1200.0f;
    thisx->uncullZoneScale = 200.0f;

    switch (thisx->params) {
        case A_OBJ_BLOCK_LARGE:
        case A_OBJ_BLOCK_HUGE:
            this->dyna.bgId = 1;
            Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, thisx, ACTORCAT_BG);
            func_8001D5C8(this, thisx->params);
            break;
        case A_OBJ_BLOCK_SMALL_ROT:
        case A_OBJ_BLOCK_LARGE_ROT:
            this->dyna.bgId = 3;
            Actor_ChangeCategory(globalCtx, &globalCtx->actorCtx, thisx, ACTORCAT_BG);
            func_8001D310(this, thisx->params);
            break;
        case A_OBJ_UNKNOWN_6:
            // clang-format off
            thisx->flags |= 0x1; this->dyna.bgId = 5; this->unk_178 = 10.0f;
            // clang-format on
            thisx->gravity = -2.0f;
            func_8001D234(this, thisx->params);
            break;
        case A_OBJ_GRASS_CLUMP:
        case A_OBJ_TREE_STUMP:
            this->dyna.bgId = 0;
            func_8001D234(this, thisx->params);
            break;
        case A_OBJ_SIGNPOST_OBLONG:
        case A_OBJ_SIGNPOST_ARROW:
            thisx->textId = (this->textId & 0xFF) | 0x300;
            // clang-format off
            thisx->flags |= 0x1 | 0x8; thisx->targetArrowOffset = 500.0f;
            // clang-format on
            this->unk_178 = 45.0f;
            func_8001D234(this, thisx->params);
            Collider_InitCylinder(globalCtx, &this->collider);
            Collider_SetCylinder(globalCtx, &this->collider, thisx, &sCylinderInit);
            thisx->colChkInfo.mass = MASS_IMMOVABLE;
            thisx->targetMode = 0;
            break;
        case A_OBJ_KNOB:
            thisx->gravity = -1.5f;
            func_8001D480(this, thisx->params);
            break;
        default:
            thisx->gravity = -2.0f;
            func_8001D234(this, thisx->params);
            break;
    }

    if (thisx->params < 5) {
        thisx->colChkInfo.mass = MASS_IMMOVABLE;
    }

    if (this->dyna.bgId != BGACTOR_NEG_ONE) {
        CollisionHeader_GetVirtual(D_8011546C[this->dyna.bgId], &colHeader);
        this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, thisx, colHeader);
    }
}

void EnAObj_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnAObj* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);

    switch (this->dyna.actor.params) {
        case A_OBJ_SIGNPOST_OBLONG:
        case A_OBJ_SIGNPOST_ARROW:
            Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

void func_8001D204(EnAObj* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->dyna.actor, globalCtx)) {
        func_8001D234(this, this->dyna.actor.params);
    }
}

void func_8001D234(EnAObj* this, s16 params) {
    EnAObj_SetupAction(this, func_8001D25C);
}

void func_8001D25C(EnAObj* this, GlobalContext* globalCtx) {
    s16 var;

    if (this->dyna.actor.textId != 0) {
        var = this->dyna.actor.yawTowardsPlayer - this->dyna.actor.shape.rot.y;
        if ((ABS(var) < 0x2800) || ((this->dyna.actor.params == 0xA) && (ABS(var) > 0x5800))) {
            if (func_8002F194(&this->dyna.actor, globalCtx)) {
                EnAObj_SetupAction(this, func_8001D204);
            } else {
                func_8002F2F4(&this->dyna.actor, globalCtx);
            }
        }
    }
}

void func_8001D310(EnAObj* this, s16 params) {
    this->unk_16E = 0;
    this->unk_168 = 10;
    this->dyna.actor.world.rot.y = 0;
    this->dyna.actor.shape.rot = this->dyna.actor.world.rot;
    EnAObj_SetupAction(this, func_8001D360);
}

void func_8001D360(EnAObj* this, GlobalContext* globalCtx) {
    if (this->unk_16E == 0) {
        if (this->dyna.unk_160 != 0) {
            this->unk_16E++;
            this->unk_170 = 20;

            if ((s16)(this->dyna.actor.yawTowardsPlayer + 0x4000) < 0) {
                this->unk_174 = -1000;
            } else {
                this->unk_174 = 1000;
            }

            if (this->dyna.actor.yawTowardsPlayer < 0) {
                this->unk_172 = -this->unk_174;
            } else {
                this->unk_172 = this->unk_174;
            }
        }
    } else {
        if (this->unk_168 != 0) {
            this->unk_168--;
        } else {
            this->dyna.actor.shape.rot.y += this->unk_172;
            this->dyna.actor.shape.rot.x += this->unk_174;
            this->unk_170--;
            this->dyna.actor.gravity = -1.0f;

            if (this->unk_170 == 0) {
                this->dyna.actor.world.pos = this->dyna.actor.home.pos;
                this->unk_16E = 0;
                this->unk_168 = 10;
                this->dyna.actor.velocity.y = 0.0f;
                this->dyna.actor.gravity = 0.0f;
                this->dyna.actor.shape.rot = this->dyna.actor.world.rot;
            }
        }
    }
}

void func_8001D480(EnAObj* this, s16 params) {
    EnAObj_SetupAction(this, func_8001D4A8);
}

void func_8001D4A8(EnAObj* this, GlobalContext* globalCtx) {
    Math_SmoothStepToF(&this->dyna.actor.speedXZ, 1.0f, 1.0f, 0.5f, 0.0f);
    this->dyna.actor.shape.rot.x = this->dyna.actor.shape.rot.x + (this->dyna.actor.world.rot.x >> 1);
    this->dyna.actor.shape.rot.z = this->dyna.actor.shape.rot.z + (this->dyna.actor.world.rot.z >> 1);

    if ((this->dyna.actor.speedXZ != 0.0f) && (this->dyna.actor.bgCheckFlags & 0x8)) {
        if (1) { // Necessary to match
            this->dyna.actor.world.rot.y =
                ((this->dyna.actor.wallYaw - this->dyna.actor.world.rot.y) + this->dyna.actor.wallYaw) - 0x8000;
        }
        this->dyna.actor.bgCheckFlags &= ~0x8;
    }

    if (this->dyna.actor.bgCheckFlags & 0x2) {
        if (this->dyna.actor.velocity.y < -8.0f) {
            this->dyna.actor.velocity.y *= -0.6f;
            this->dyna.actor.speedXZ *= 0.6f;
            this->dyna.actor.bgCheckFlags &= ~0x3;
        } else {
            Actor_Kill(&this->dyna.actor);
        }
    }
}

void func_8001D5C8(EnAObj* this, s16 params) {
    this->dyna.actor.uncullZoneDownward = 1200.0f;
    this->dyna.actor.uncullZoneScale = 720.0f;
    EnAObj_SetupAction(this, func_8001D608);
}

void func_8001D608(EnAObj* this, GlobalContext* globalCtx) {
    this->dyna.actor.speedXZ += this->dyna.unk_150;
    this->dyna.actor.world.rot.y = this->dyna.unk_158;
    this->dyna.actor.speedXZ = CLAMP(this->dyna.actor.speedXZ, -2.5f, 2.5f);

    Math_SmoothStepToF(&this->dyna.actor.speedXZ, 0.0f, 1.0f, 1.0f, 0.0f);

    if (this->dyna.actor.speedXZ != 0.0f) {
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_ROCK_SLIDE - SFX_FLAG);
    }

    this->dyna.unk_154 = 0.0f;
    this->dyna.unk_150 = 0.0f;
}

void EnAObj_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnAObj* this = THIS;

    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->dyna.actor);

    if (this->dyna.actor.gravity != 0.0f) {
        if (this->dyna.actor.params != A_OBJ_KNOB) {
            Actor_UpdateBgCheckInfo(globalCtx, &this->dyna.actor, 5.0f, 40.0f, 0.0f, 0x1D);
        } else {
            Actor_UpdateBgCheckInfo(globalCtx, &this->dyna.actor, 5.0f, 20.0f, 0.0f, 0x1D);
        }
    }

    this->dyna.actor.focus.pos = this->dyna.actor.world.pos;
    this->dyna.actor.focus.pos.y += this->unk_178;

    switch (this->dyna.actor.params) {
        case A_OBJ_SIGNPOST_OBLONG:
        case A_OBJ_SIGNPOST_ARROW:
            Collider_UpdateCylinder(&this->dyna.actor, &this->collider);
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

void EnAObj_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 type = thisx->params;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_a_keep.c", 701);

    func_80093D18(globalCtx->state.gfxCtx);

    if (type > A_OBJ_KNOB) {
        type = A_OBJ_KNOB;
    }

    if (thisx->params == A_OBJ_KNOB) {
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 1, 60, 60, 60, 50);
    }

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_a_keep.c", 712),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, D_80115484[type]);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_a_keep.c", 715);
}
