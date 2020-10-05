/*
 * File: z_obj_hana.c
 * Overlay: Obj_Hana
 * Description: Grave Flower
 */

#include "z_obj_hana.h"

#define FLAGS 0x00000000

#define THIS ((ObjHana*)thisx)

void ObjHana_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjHana_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjHana_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjHana_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Obj_Hana_InitVars = {
    ACTOR_OBJ_HANA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_FIELD_KEEP,
    sizeof(ObjHana),
    (ActorFunc)ObjHana_Init,
    (ActorFunc)ObjHana_Destroy,
    (ActorFunc)ObjHana_Update,
    (ActorFunc)ObjHana_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 8, 10, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 0, 0xC, 0x3C, 0xFF };

typedef struct {
    /* 0x00 */ Gfx* dList;
    /* 0x04 */ f32 scale;
    /* 0x08 */ f32 yOffset;
    /* 0x0C */ s16 radius;
    /* 0x0E */ s16 height;
} HanaParams; // size = 0x10

static HanaParams sHanaParams[] = {
    { 0x05000500, 0.01f, 0.0f, -1, 0 },
    { 0x0500A880, 0.1f, 58.0f, 10, 18 },
    { 0x0500B9D0, 0.4f, 0.0f, 12, 44 },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 900, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 60, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 800, ICHAIN_STOP),
};

void ObjHana_Init(Actor* thisx, GlobalContext* globalCtx) {
    ObjHana* this = THIS;
    s16 type = this->actor.params & 3;
    HanaParams* params = &sHanaParams[type];

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Actor_SetScale(&this->actor, params->scale);
    this->actor.shape.unk_08 = params->yOffset;
    if (params->radius >= 0) {
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
        Collider_CylinderUpdate(&this->actor, &this->collider);
        this->collider.dim.radius = params->radius;
        this->collider.dim.height = params->height;
        func_80061ED4(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    }

    if (type == 2 && (gSaveContext.eventChkInf[4] & 1)) {
        Actor_Kill(&this->actor);
    }
}

void ObjHana_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    ObjHana* this = THIS;

    if (sHanaParams[this->actor.params & 3].radius >= 0) {
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

void ObjHana_Update(Actor* thisx, GlobalContext* globalCtx) {
    ObjHana* this = THIS;

    if (sHanaParams[this->actor.params & 3].radius >= 0 && this->actor.xzDistFromLink < 400.0f) {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

void ObjHana_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, sHanaParams[thisx->params & 3].dList);
}
