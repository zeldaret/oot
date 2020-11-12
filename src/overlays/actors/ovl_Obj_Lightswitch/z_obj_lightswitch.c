/*
 * File: z_obj_lightswitch.c
 * Overlay: ovl_Obj_Lightswitch
 * Description: Sun Emblem Trigger (Spirit Temple)
 */

#include "z_obj_lightswitch.h"
#include "vt.h"
#include "overlays/actors/ovl_Obj_Oshihiki/z_obj_oshihiki.h"

#define FLAGS 0x00000010

#define THIS ((ObjLightswitch*)thisx)

typedef enum {
    /* 0x00 */ FACE_EYES_CLOSED,
    /* 0x01 */ FACE_EYES_OPEN,
    /* 0x02 */ FACE_EYES_OPEN_SMILING
} FaceTextureIndex;

void ObjLightswitch_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjLightswitch_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjLightswitch_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjLightswitch_Draw(Actor* thisx, GlobalContext* globalCtx);

void ObjLightswitch_SetupOff(ObjLightswitch* this);
void ObjLightswitch_Off(ObjLightswitch* this, GlobalContext* globalCtx);
void ObjLightswitch_SetupTurnOn(ObjLightswitch* this);
void ObjLightswitch_TurnOn(ObjLightswitch* this, GlobalContext* globalCtx);
void ObjLightswitch_SetupOn(ObjLightswitch* this);
void ObjLightswitch_On(ObjLightswitch* this, GlobalContext* globalCtx);
void ObjLightswitch_SetupTurnOff(ObjLightswitch* this);
void ObjLightswitch_TurnOff(ObjLightswitch* this, GlobalContext* globalCtx);
void ObjLightswitch_SetupDisappearDelay(ObjLightswitch* this);
void ObjLightswitch_DisappearDelay(ObjLightswitch* this, GlobalContext* globalCtx);
void ObjLightswitch_SetupDisappear(ObjLightswitch* this);
void ObjLightswitch_Disappear(ObjLightswitch* this, GlobalContext* globalCtx);

extern Gfx D_06000260[]; // face, uses rgba16 32x32 texture at 0x08000000, branches to dlist 0x09000000, uses env color
extern Gfx D_06000398[]; // flame ring, branches to dlist 0x09000000, uses env color
extern Gfx D_06000408[]; // a square, geometry only
extern UNK_TYPE D_06000420[]; // rgba16 32x32 eyes open
extern UNK_TYPE D_06000C20[]; // rgba16 32x32 eyes closed
extern UNK_TYPE D_06001420[]; // rgba16 32x32 eyes open, smiling

const ActorInit Obj_Lightswitch_InitVars = {
    ACTOR_OBJ_LIGHTSWITCH,
    ACTORTYPE_SWITCH,
    FLAGS,
    OBJECT_LIGHTSWITCH,
    sizeof(ObjLightswitch),
    (ActorFunc)ObjLightswitch_Init,
    (ActorFunc)ObjLightswitch_Destroy,
    (ActorFunc)ObjLightswitch_Update,
    (ActorFunc)ObjLightswitch_Draw,
};

static ColliderJntSphItemInit sColliderJntSphItemInit[] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00200000, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 0, { { 0, 0, 0 }, 19 }, 100 },
    },
};
static ColliderJntSphInit sColliderJntSphInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x20, COLSHAPE_JNTSPH },
    1,
    sColliderJntSphItemInit,
};
static CollisionCheckInfoInit sCollisionCheckInfoInit = { 0, 0xC, 0x3C, 0xFF };

static UNK_PTR faceTextures[] = { D_06000C20, D_06000420, D_06001420 };

static Vec3f D_80B97F68 = { -1707.0f, 843.0f, -180.0f };
static Vec3f D_80B97F74 = { 0.0f, 0.0f, 0.0f };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

void ObjLightswitch_InitCollider(ObjLightswitch* this, GlobalContext* globalCtx) {
    s32 pad;

    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sColliderJntSphInit, this->colliderItems);
    func_800D1694(this->actor.posRot.pos.x, this->actor.posRot.pos.y + (this->actor.shape.unk_08 * this->actor.scale.y),
                  this->actor.posRot.pos.z, &this->actor.shape.rot);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, MTXMODE_APPLY);
    func_800628A4(0, &this->collider);
}

void ObjLightswitch_SetSwitchFlag(ObjLightswitch* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor; // required
    s32 type;

    if (!Flags_GetSwitch(globalCtx, this->actor.params >> 8 & 0x3F)) {
        type = this->actor.params >> 4 & 3;

        Flags_SetSwitch(globalCtx, this->actor.params >> 8 & 0x3F);

        if (type == OBJLIGHTSWITCH_TYPE_1) {
            func_800806BC(globalCtx, thisx, 0x4807);
        } else if (type == OBJLIGHTSWITCH_TYPE_BURN) {
            func_800806BC(globalCtx, thisx, 0x4806);
        } else {
            func_800806BC(globalCtx, thisx, 0x4802);
        }
    }
}

void ObjLightswitch_ClearSwitchFlag(ObjLightswitch* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->actor.params >> 8 & 0x3F)) {
        Flags_UnsetSwitch(globalCtx, this->actor.params >> 8 & 0x3F);

        if ((this->actor.params >> 4 & 3) == OBJLIGHTSWITCH_TYPE_1) {
            func_800806BC(globalCtx, &this->actor, 0x4807);
        }
    }
}

void ObjLightswitch_SpawnDisappearEffects(ObjLightswitch* this, GlobalContext* globalCtx) {
    Vec3f pos;
    f32 s = Math_Sins(this->actor.shape.rot.y);
    f32 c = Math_Coss(this->actor.shape.rot.y);
    f32 x;
    f32 y;
    f32 z;
    s32 pad;

    if (this->alpha >= (100 << 6)) {
        x = (CLAMP_MAX((1.0f - 1.0f / (255 << 6) * this->alpha) * 400.0f, 60.0f) - 30.0f + 30.0f) * Math_Rand_ZeroOne();
        y = x - 30.0f;
        if (x > 30.0f) {
            x = 30.0f;
        } else {
            x = 900.0f - (y * y);
            if (x < 100.0f) {
                x = 100.0f;
            }
            x = sqrtf(x);
        }
        x = 2.0f * (x * (Math_Rand_ZeroOne() - 0.5f));
        z = (30.0f - fabsf(x)) * 0.5f + 10.0f * Math_Rand_ZeroOne();
        pos.x = this->actor.posRot.pos.x + ((z * s) + (x * c));
        pos.y = this->actor.posRot.pos.y + y + 10.0f;
        pos.z = this->actor.posRot.pos.z + ((z * c) - (x * s));
        EffectSsDeadDb_Spawn(globalCtx, &pos, &D_80B97F74, &D_80B97F74, 100, 0, 255, 255, 160, 160, 255, 0, 0, 1, 9,
                             true);
    }
}

void ObjLightswitch_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjLightswitch* this = THIS;
    s32 switchFlagSet = Flags_GetSwitch(globalCtx, this->actor.params >> 8 & 0x3F);
    s32 removeSelf = false;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Actor_SetHeight(&this->actor, 0.0f);
    if (switchFlagSet) {
        if ((this->actor.params >> 4 & 3) == OBJLIGHTSWITCH_TYPE_BURN) {
            removeSelf = true;
        } else {
            ObjLightswitch_SetupOn(this);
        }
    } else {
        ObjLightswitch_SetupOff(this);
    }
    if ((this->actor.params & 1) == 1) {
        if (switchFlagSet) {
            Math_Vec3f_Copy(&this->actor.posRot.pos, &D_80B97F68);
            Math_Vec3f_Copy(&this->actor.initPosRot.pos, &D_80B97F68);
        }
        this->actor.shape.rot.x = -0x4000;
        this->actor.shape.rot.z = 0;
        this->actor.posRot.rot.x = this->actor.initPosRot.rot.x = this->actor.shape.rot.x;
        this->actor.posRot.rot.z = this->actor.initPosRot.rot.z = this->actor.shape.rot.z;
        this->actor.flags |= 0x20;
        if (Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_OBJ_OSHIHIKI,
                               this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z,
                               0, this->actor.initPosRot.rot.y, 0, (0xFF << 8) | PUSHBLOCK_SMALL_START_ON) == NULL) {
            osSyncPrintf(VT_COL(RED, WHITE));
            // Push-pull block occurrence failure
            osSyncPrintf("押引ブロック発生失敗(%s %d)(arg_data 0x%04x)\n", "../z_obj_lightswitch.c", 452,
                         this->actor.params);
            osSyncPrintf(VT_RST);
            removeSelf = true;
        }
    }
    ObjLightswitch_InitCollider(this, globalCtx);
    func_80061ED4(&this->actor.colChkInfo, NULL, &sCollisionCheckInfoInit);
    if (removeSelf) {
        Actor_Kill(&this->actor);
    }
    // Light switch
    osSyncPrintf("(光スイッチ)(arg_data 0x%04x)\n", this->actor.params);
}

void ObjLightswitch_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    GlobalContext* globalCtx2 = globalCtx;
    ObjLightswitch* this = THIS;

    Collider_DestroyJntSph(globalCtx2, &this->collider);
}

void ObjLightswitch_SetupOff(ObjLightswitch* this) {
    this->actionFunc = ObjLightswitch_Off;
    this->faceTextureIndex = FACE_EYES_CLOSED;
    this->color[0] = 155 << 6;
    this->color[1] = 125 << 6;
    this->color[2] = 255 << 6;
    this->alpha = 255 << 6;
}

void ObjLightswitch_Off(ObjLightswitch* this, GlobalContext* globalCtx) {
    switch (this->actor.params >> 4 & 3) {
        case OBJLIGHTSWITCH_TYPE_STAY_ON:
        case OBJLIGHTSWITCH_TYPE_2:
            if (this->collider.base.acFlags & 2) {
                ObjLightswitch_SetupTurnOn(this);
                ObjLightswitch_SetSwitchFlag(this, globalCtx);
            }
            break;
        case OBJLIGHTSWITCH_TYPE_1:
            if ((this->collider.base.acFlags & 2) && !(this->prevFrameACflags & 2)) {
                ObjLightswitch_SetupTurnOn(this);
                ObjLightswitch_SetSwitchFlag(this, globalCtx);
            }
            break;
        case OBJLIGHTSWITCH_TYPE_BURN:
            if (this->collider.base.acFlags & 2) {
                ObjLightswitch_SetupDisappearDelay(this);
                ObjLightswitch_SetSwitchFlag(this, globalCtx);
            }
            break;
    }
}

void ObjLightswitch_SetupTurnOn(ObjLightswitch* this) {
    this->actionFunc = ObjLightswitch_TurnOn;
    this->toggleDelay = 100;
    this->timer = 0;
    this->faceTextureIndex = FACE_EYES_CLOSED;
}

void ObjLightswitch_TurnOn(ObjLightswitch* this, GlobalContext* globalCtx) {
    if (func_8005B198() == this->actor.type || this->toggleDelay <= 0) {
        if (this->timer == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_TRIFORCE_FLASH);
        }

        this->timer++;

        Math_ApproxS(&this->flameRingRotSpeed, -0xAA, 0xA);
        this->flameRingRot += this->flameRingRotSpeed;

        this->color[0] = this->timer * (((255 - 155) << 6) / 20) + (155 << 6);
        this->color[1] = this->timer * (((255 - 125) << 6) / 20) + (125 << 6);

        if (this->timer >= 20) {
            ObjLightswitch_SetupOn(this);
        } else if (this->timer == 15) {
            this->faceTextureIndex = FACE_EYES_OPEN;
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_FOOT_SWITCH);
        }
    }
}

void ObjLightswitch_SetupOn(ObjLightswitch* this) {
    this->actionFunc = ObjLightswitch_On;
    this->faceTextureIndex = FACE_EYES_OPEN_SMILING;

    this->color[0] = 255 << 6;
    this->color[1] = 255 << 6;
    this->color[2] = 255 << 6;
    this->alpha = 255 << 6;

    this->flameRingRotSpeed = -0xAA;
    this->timer = 0;
}

void ObjLightswitch_On(ObjLightswitch* this, GlobalContext* globalCtx) {
    switch (this->actor.params >> 4 & 3) {
        case OBJLIGHTSWITCH_TYPE_STAY_ON:
            if (!Flags_GetSwitch(globalCtx, this->actor.params >> 8 & 0x3F)) {
                ObjLightswitch_SetupTurnOff(this);
            }
            break;
        case OBJLIGHTSWITCH_TYPE_1:
            if (this->collider.base.acFlags & 2 && !(this->prevFrameACflags & 2)) {
                ObjLightswitch_SetupTurnOff(this);
                ObjLightswitch_ClearSwitchFlag(this, globalCtx);
            }
            break;
        case OBJLIGHTSWITCH_TYPE_2:
            if (!(this->collider.base.acFlags & 2)) {
                if (this->timer >= 7) {
                    ObjLightswitch_SetupTurnOff(this);
                    ObjLightswitch_ClearSwitchFlag(this, globalCtx);
                } else {
                    this->timer++;
                }
            } else {
                this->timer = 0;
            }
            break;
    }
    this->flameRingRot += this->flameRingRotSpeed;
}

void ObjLightswitch_SetupTurnOff(ObjLightswitch* this) {
    this->actionFunc = ObjLightswitch_TurnOff;
    this->toggleDelay = 100;
    this->timer = 20;
    this->faceTextureIndex = FACE_EYES_OPEN;
}

void ObjLightswitch_TurnOff(ObjLightswitch* this, GlobalContext* globalCtx) {
    if ((this->actor.params >> 4 & 3) != OBJLIGHTSWITCH_TYPE_1 || func_8005B198() == this->actor.type ||
        this->toggleDelay <= 0) {
        this->timer--;

        Math_ApproxS(&this->flameRingRotSpeed, 0, 0xA);
        this->flameRingRot += this->flameRingRotSpeed;

        this->color[0] = this->timer * (((255 - 155) << 6) / 20) + (155 << 6);
        this->color[1] = this->timer * (((255 - 125) << 6) / 20) + (125 << 6);

        if (this->timer <= 0) {
            ObjLightswitch_SetupOff(this);
        } else if (this->timer == 15) {
            this->faceTextureIndex = FACE_EYES_CLOSED;
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_FOOT_SWITCH);
        }
    }
}

void ObjLightswitch_SetupDisappearDelay(ObjLightswitch* this) {
    this->actionFunc = ObjLightswitch_DisappearDelay;
    this->toggleDelay = 100;
}

void ObjLightswitch_DisappearDelay(ObjLightswitch* this, GlobalContext* globalCtx) {
    if (func_8005B198() == this->actor.type || this->toggleDelay <= 0) {
        ObjLightswitch_SetupDisappear(this);
    }
}

void ObjLightswitch_SetupDisappear(ObjLightswitch* this) {
    this->actionFunc = ObjLightswitch_Disappear;
    this->alpha = 255 << 6;
}

void ObjLightswitch_Disappear(ObjLightswitch* this, GlobalContext* globalCtx) {
    this->alpha -= 200;
    ObjLightswitch_SpawnDisappearEffects(this, globalCtx);
    if (this->alpha < 0) {
        Actor_Kill(&this->actor);
    }
}

void ObjLightswitch_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjLightswitch* this = THIS;
    GlobalContext* globalCtx2 = globalCtx;

    if (this->toggleDelay > 0) {
        this->toggleDelay--;
    }

    this->actionFunc(this, globalCtx2);

    if (this->actor.update != NULL) {
        if ((this->actor.params & 1) == 1) {
            this->actor.posRot.pos.x = this->actor.child->posRot.pos.x;
            this->actor.posRot.pos.y = this->actor.child->posRot.pos.y + 60.0f;
            this->actor.posRot.pos.z = this->actor.child->posRot.pos.z;
            Actor_SetHeight(&this->actor, 0.0f);
        }

        this->prevFrameACflags = this->collider.base.acFlags;
        this->collider.base.acFlags &= ~2;
        CollisionCheck_SetOC(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
        CollisionCheck_SetAC(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
    }
}

void ObjLightswitch_DrawOpa(ObjLightswitch* this, GlobalContext* globalCtx) {
    Actor* child;
    Vec3f pos;
    Vec3s rot;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 809);
    func_80093D18(globalCtx->state.gfxCtx);

    gDPSetEnvColor(POLY_OPA_DISP++, (u8)(this->color[0] >> 6), (u8)(this->color[1] >> 6),
                   (u8)(this->color[2] >> 6), (u8)(this->alpha >> 6));
    gSPSegment(POLY_OPA_DISP++, 0x09, &D_80116280[2]);

    if ((this->actor.params & 1) == 1) {
        child = this->actor.child;
        this->actor.posRot.pos.x = child->posRot.pos.x;
        this->actor.posRot.pos.y = child->posRot.pos.y + 60.0f;
        this->actor.posRot.pos.z = child->posRot.pos.z;
        Math_Vec3f_Copy(&pos, &this->actor.posRot.pos);
        func_800D1694(pos.x, pos.y, pos.z, &this->actor.shape.rot);
        Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, MTXMODE_APPLY);
    } else {
        pos.x = this->actor.posRot.pos.x;
        pos.y = this->actor.posRot.pos.y + this->actor.shape.unk_08 * this->actor.scale.y;
        pos.z = this->actor.posRot.pos.z;
    }

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 841),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(faceTextures[this->faceTextureIndex]));
    gSPDisplayList(POLY_OPA_DISP++, D_06000260);

    rot.x = this->actor.shape.rot.x;
    rot.y = this->actor.shape.rot.y;
    rot.z = this->actor.shape.rot.z + this->flameRingRot;
    func_800D1694(pos.x, pos.y, pos.z, &rot);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 859),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_06000398);

    rot.z = this->actor.shape.rot.z - this->flameRingRot;
    func_800D1694(pos.x, pos.y, pos.z, &rot);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 873),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_06000408);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 878);
}

void ObjLightswitch_DrawXlu(ObjLightswitch* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f sp68;
    Vec3s sp60;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 890);
    func_80093D84(globalCtx->state.gfxCtx);

    gDPSetEnvColor(POLY_XLU_DISP++, (u8)(this->color[0] >> 6), (u8)(this->color[1] >> 6),
                   (u8)(this->color[2] >> 6), (u8)(this->alpha >> 6));
    gSPSegment(POLY_XLU_DISP++, 0x09, D_80116280);

    sp68.x = this->actor.posRot.pos.x;
    sp68.y = this->actor.posRot.pos.y + (this->actor.shape.unk_08 * this->actor.scale.y);
    sp68.z = this->actor.posRot.pos.z;

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 912),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(faceTextures[this->faceTextureIndex]));
    gSPDisplayList(POLY_XLU_DISP++, D_06000260);

    sp60.x = this->actor.shape.rot.x;
    sp60.y = this->actor.shape.rot.y;
    sp60.z = this->actor.shape.rot.z + this->flameRingRot;

    func_800D1694(sp68.x, sp68.y, sp68.z, &sp60);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 930),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_06000398);

    sp60.z = this->actor.shape.rot.z - this->flameRingRot;
    func_800D1694(sp68.x, sp68.y, sp68.z, &sp60);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 944),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_06000408);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_obj_lightswitch.c", 949);
}

void ObjLightswitch_Draw(Actor* thisx, GlobalContext* globalCtx) {
    ObjLightswitch* this = THIS;
    s32 alpha = this->alpha >> 6 & 0xFF;

    if ((this->actor.params & 1) == 1) {
        func_800628A4(0, &this->collider);
    }

    if ((this->actor.params >> 4 & 3) == OBJLIGHTSWITCH_TYPE_BURN && (alpha > 0 || alpha < 255)) {
        ObjLightswitch_DrawXlu(this, globalCtx);
    } else {
        ObjLightswitch_DrawOpa(this, globalCtx);
    }
}
