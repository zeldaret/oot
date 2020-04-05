#include <ultra64.h>
#include <global.h>

typedef enum {
    /* 0x00 */ A_OBJ_BLOCK_SMALL,
    /* 0x01 */ A_OBJ_BLOCK_LARGE,
    /* 0x02 */ A_OBJ_BLOCK_HUGE,
    /* 0x03 */ A_OBJ_BLOCK_SMALL_ROT,
    /* 0x04 */ A_OBJ_BLOCK_LARGE_ROT,
    /* 0x05 */ A_OBJ_CUBE_SMALL,
    /* 0x06 */ A_OBJ_UNKNOWN_6,
    /* 0x07 */ A_OBJ_GRASS_CLUMP,
    /* 0x08 */ A_OBJ_TREE_STUMP,
    /* 0x09 */ A_OBJ_SIGNPOST_OBLONG,
    /* 0x0A */ A_OBJ_SIGNPOST_ARROW,
    /* 0x0B */ A_OBJ_KNOB
} AObjType;

typedef struct {
    /* 0x000 */ Actor actor;
    /* 0x14C */ u32 dynaPolyId;
    /* 0x150 */ f32 unk_150;
    /* 0x154 */ f32 unk_154;
    /* 0x158 */ s16 unk_158;
    /* 0x15C */ u32 unk_15C;
    /* 0x160 */ u8 unk_160;
    /* 0x164 */ ActorFunc updateFunc;
    /* 0x168 */ s32 unk_168;
    /* 0x16C */ s16 textId;
    /* 0x16E */ s16 unk_16E;
    /* 0x170 */ s16 unk_170;
    /* 0x172 */ s16 unk_172;
    /* 0x174 */ s16 unk_174;
    /* 0x178 */ f32 unk_178;
    /* 0x17C */ ColliderCylinderMain cylinderCollider;
} ActorEnAObj; // size = 0x1C8

void func_8001D204(ActorEnAObj* this, GlobalContext* globalCtx);
void func_8001D25C(ActorEnAObj* this, GlobalContext* globalCtx);
void func_8001D360(ActorEnAObj* this, GlobalContext* globalCtx);
void func_8001D4A8(ActorEnAObj* this, GlobalContext* globalCtx);
void func_8001D608(ActorEnAObj* this, GlobalContext* globalCtx);

void func_8001D234(ActorEnAObj* this, s16 params);
void func_8001D310(ActorEnAObj* this, s16 params);
void func_8001D480(ActorEnAObj* this, s16 params);
void func_8001D5C8(ActorEnAObj* this, s16 params);

// TODO: Define this part of code .data here and rename the symbols
extern ActorInit En_A_Obj_InitVars;
extern ColliderCylinderInit D_80115440;
extern u32 D_8011546C[];
extern u32 D_80115484[];

void En_A_Obj_SetNewUpdate(ActorEnAObj* this, ActorFunc newUpdateFunc) {
    this->updateFunc = newUpdateFunc;
}

#ifdef NON_MATCHING
// minor ordering and regalloc differences
void En_A_Obj_Init(ActorEnAObj* this, GlobalContext* globalCtx) {
    u32 sp34;
    s16 type;
    s16 initialParams;
    s32 params;
    f32 sp28;

    sp34 = 0;
    sp28 = 6.0f;

    initialParams = this->actor.params;
    type = initialParams & 0xFF;
    this->textId = (initialParams >> 8) & 0xFF;
    this->actor.params = type;

    switch (type & 0xFFFF) {
        case A_OBJ_BLOCK_SMALL:
            Actor_SetScale(&this->actor, 0.025f);
            break;
        case A_OBJ_BLOCK_LARGE:
            Actor_SetScale(&this->actor, 0.05f);
            break;
        case A_OBJ_BLOCK_HUGE:
        case A_OBJ_CUBE_SMALL:
        case A_OBJ_UNKNOWN_6:
            Actor_SetScale(&this->actor, 0.1f);
            break;
        case A_OBJ_BLOCK_SMALL_ROT:
            Actor_SetScale(&this->actor, 0.005f);
            break;
        case A_OBJ_BLOCK_LARGE_ROT:
        default:
            Actor_SetScale(&this->actor, 0.01f);
            break;
    }

    if (this->actor.params >= 9) {
        sp28 = 12.0f;
    }

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, sp28);

    this->dynaPolyId = -1;
    this->unk_160 = 0;
    this->unk_15C = 0;
    this->actor.unk_FC = 1200.0f;
    this->actor.unk_F8 = 200.0f;
    params = this->actor.params;
    this->actor.posRot2.pos = this->actor.posRot.pos;

    switch (params) {
        case A_OBJ_BLOCK_LARGE:
        case A_OBJ_BLOCK_HUGE:
            this->dynaPolyId = 1;
            Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_BG);
            func_8001D5C8(this, this->actor.params);
            break;
        case A_OBJ_BLOCK_SMALL_ROT:
        case A_OBJ_BLOCK_LARGE_ROT:
            this->dynaPolyId = 3;
            Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_BG);
            func_8001D310(this, this->actor.params);
            break;
        case A_OBJ_UNKNOWN_6:
            this->actor.flags |= 0x1;
            this->dynaPolyId = 5;
            this->unk_178 = 10.0f;
            this->actor.gravity = -2.0f;
            func_8001D234(this, this->actor.params);
            break;
        case A_OBJ_GRASS_CLUMP:
        case A_OBJ_TREE_STUMP:
            this->dynaPolyId = 0;
            func_8001D234(this, this->actor.params);
            break;
        case A_OBJ_SIGNPOST_OBLONG:
        case A_OBJ_SIGNPOST_ARROW:
            this->actor.textId = (this->textId & 0xFF) | 0x300;
            this->actor.flags |= 0x8 | 0x1;
            this->actor.unk_4C = 500.0f;
            this->unk_178 = 45.0f;
            func_8001D234(this, this->actor.params);
            ActorCollider_AllocCylinder(globalCtx, &this->cylinderCollider);
            ActorCollider_InitCylinder(globalCtx, &this->cylinderCollider, &this->actor, &D_80115440);
            this->actor.sub_98.mass = 0xFF;
            this->actor.unk_1F = 0;
            break;
        case A_OBJ_KNOB:
            this->actor.gravity = -1.5f;
            func_8001D480(this, params);
            break;
        default:
            this->actor.gravity = -2.0f;
            func_8001D234(this, params);
            break;
    }

    if (this->actor.params < 5) {
        this->actor.sub_98.mass = 0xFF;
    }

    if (this->dynaPolyId != -1) {
        DynaPolyInfo_Alloc(D_8011546C[this->dynaPolyId], &sp34);
        this->dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->actor, sp34);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_en_a_keep/En_A_Obj_Init.s")
#endif

void En_A_Obj_Destroy(ActorEnAObj* this, GlobalContext* globalCtx) {
    ColliderCylinderMain* cylinderCollider = &this->cylinderCollider;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dynaPolyId);

    switch (this->actor.params) {
        case A_OBJ_SIGNPOST_OBLONG:
        case A_OBJ_SIGNPOST_ARROW:
            ActorCollider_FreeCylinder(globalCtx, cylinderCollider);
    }
}

void func_8001D204(ActorEnAObj* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx)) {
        func_8001D234(this, this->actor.params);
    }
}

void func_8001D234(ActorEnAObj* this, s16 params) {
    En_A_Obj_SetNewUpdate(this, (ActorFunc)func_8001D25C);
}

void func_8001D25C(ActorEnAObj* this, GlobalContext* globalCtx) {
    s16 var;

    if (this->actor.textId != 0) {
        var = this->actor.rotTowardsLinkY - this->actor.shape.rot.y;
        if ((ABS(var) < 0x2800) || ((this->actor.params == 0xA) && (ABS(var) > 0x5800))) {
            if (func_8002F194(&this->actor, globalCtx)) {
                En_A_Obj_SetNewUpdate(this, (ActorFunc)func_8001D204);
            } else {
                func_8002F2F4(&this->actor, globalCtx);
            }
        }
    }
}

void func_8001D310(ActorEnAObj* this, s16 params) {
    this->unk_16E = 0;
    this->unk_168 = 10;
    this->actor.posRot.rot.y = 0;
    this->actor.shape.rot = this->actor.posRot.rot;
    En_A_Obj_SetNewUpdate(this, (ActorFunc)func_8001D360);
}

void func_8001D360(ActorEnAObj* this, GlobalContext* globalCtx) {
    if (this->unk_16E == 0) {
        if (this->unk_160 != 0) {
            this->unk_16E++;
            this->unk_170 = 20;

            if ((s16)(this->actor.rotTowardsLinkY + 0x4000) < 0) {
                this->unk_174 = -1000;
            } else {
                this->unk_174 = 1000;
            }

            if (this->actor.rotTowardsLinkY < 0) {
                this->unk_172 = -this->unk_174;
            } else {
                this->unk_172 = this->unk_174;
            }
        }
    } else {
        if (this->unk_168 != 0) {
            this->unk_168--;
        } else {
            this->actor.shape.rot.y += this->unk_172;
            this->actor.shape.rot.x += this->unk_174;
            this->unk_170--;
            this->actor.gravity = -1.0f;

            if (this->unk_170 == 0) {
                this->actor.posRot.pos = this->actor.initPosRot.pos;
                this->unk_16E = 0;
                this->unk_168 = 10;
                this->actor.velocity.y = 0.0f;
                this->actor.gravity = 0.0f;
                this->actor.shape.rot = this->actor.posRot.rot;
            }
        }
    }
}

void func_8001D480(ActorEnAObj* this, s16 params) {
    En_A_Obj_SetNewUpdate(this, (ActorFunc)func_8001D4A8);
}

void func_8001D4A8(ActorEnAObj* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 1.0f, 1.0f, 0.5f, 0.0f);
    this->actor.shape.rot.x = this->actor.shape.rot.x + (this->actor.posRot.rot.x >> 1);
    this->actor.shape.rot.z = this->actor.shape.rot.z + (this->actor.posRot.rot.z >> 1);

    if ((this->actor.speedXZ != 0.0f) && (this->actor.bgCheckFlags & 0x8)) {
        if (1) { // Necessary to match
            this->actor.posRot.rot.y = ((this->actor.unk_7E - this->actor.posRot.rot.y) + this->actor.unk_7E) - 0x8000;
        }
        this->actor.bgCheckFlags &= ~0x8;
    }

    if (this->actor.bgCheckFlags & 0x2) {
        if (this->actor.velocity.y < -8.0f) {
            this->actor.velocity.y *= -0.6f;
            this->actor.speedXZ *= 0.6f;
            this->actor.bgCheckFlags &= ~0x3;
        } else {
            Actor_Kill(&this->actor);
        }
    }
}

void func_8001D5C8(ActorEnAObj* this, s16 params) {
    this->actor.unk_FC = 1200.0f;
    this->actor.unk_F8 = 720.0f;
    En_A_Obj_SetNewUpdate(this, (ActorFunc)func_8001D608);
}

void func_8001D608(ActorEnAObj* this, GlobalContext* globalCtx) {
    this->actor.speedXZ += this->unk_150;
    this->actor.posRot.rot.y = this->unk_158;

    this->actor.speedXZ =
        (this->actor.speedXZ < -2.5f) ? -2.5f : ((this->actor.speedXZ > 2.5f) ? 2.5f : this->actor.speedXZ);

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 1.0f, 0.0f);

    if (this->actor.speedXZ != 0.0f) {
        Audio_PlayActorSound2(&this->actor, 0x200A);
    }

    this->unk_154 = 0.0f;
    this->unk_150 = 0.0f;
}

void En_A_Obj_Update(ActorEnAObj* this, GlobalContext* globalCtx) {
    ColliderCylinderMain* cylinderCollider;

    this->updateFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);

    if (this->actor.gravity != 0.0f) {
        if (this->actor.params != A_OBJ_KNOB) {
            func_8002E4B4(globalCtx, &this->actor, 5.0f, 40.0f, 0.0f, 0x1D);
        } else {
            func_8002E4B4(globalCtx, &this->actor, 5.0f, 20.0f, 0.0f, 0x1D);
        }
    }

    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += this->unk_178;

    switch (this->actor.params) {
        case A_OBJ_SIGNPOST_OBLONG:
        case A_OBJ_SIGNPOST_ARROW:
            cylinderCollider = &this->cylinderCollider;
            ActorCollider_Cylinder_Update(&this->actor, cylinderCollider);
            Actor_CollisionCheck_SetOT(globalCtx, &globalCtx->sub_11E60, cylinderCollider);
    }
}

void En_A_Obj_Draw(ActorEnAObj* this, GlobalContext* globalCtx) {
    s32 type = this->actor.params;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_a_keep.c", 701);

    func_80093D18(globalCtx->state.gfxCtx);

    if (type > A_OBJ_KNOB) {
        type = A_OBJ_KNOB;
    }

    if (this->actor.params == A_OBJ_KNOB) {
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 1, 0x3C, 0x3C, 0x3C, 0x32);
    }

    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_a_keep.c", 712),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, D_80115484[type]);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_a_keep.c", 715);
}
