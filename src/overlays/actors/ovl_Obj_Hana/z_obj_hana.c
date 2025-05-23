/*
 * File: z_obj_hana.c
 * Overlay: Obj_Hana
 * Description: Grave Flower
 */

#include "z_obj_hana.h"
#include "assets/objects/gameplay_field_keep/gameplay_field_keep.h"

#define FLAGS 0

void ObjHana_Init(Actor* thisx, PlayState* play);
void ObjHana_Destroy(Actor* thisx, PlayState* play);
void ObjHana_Update(Actor* thisx, PlayState* play);
void ObjHana_Draw(Actor* thisx, PlayState* play);

ActorProfile Obj_Hana_Profile = {
    /**/ ACTOR_OBJ_HANA,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_FIELD_KEEP,
    /**/ sizeof(ObjHana),
    /**/ ObjHana_Init,
    /**/ ObjHana_Destroy,
    /**/ ObjHana_Update,
    /**/ ObjHana_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_NONE,
        OCELEM_ON,
    },
    { 8, 10, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 0, 12, 60, MASS_IMMOVABLE };

typedef struct HanaParams {
    /* 0x00 */ Gfx* dList;
    /* 0x04 */ f32 scale;
    /* 0x08 */ f32 yOffset;
    /* 0x0C */ s16 radius;
    /* 0x0E */ s16 height;
} HanaParams; // size = 0x10

static HanaParams sHanaParams[] = {
    { gHanaDL, 0.01f, 0.0f, -1, 0 },
    { gFieldKakeraDL, 0.1f, 58.0f, 10, 18 },
    { gFieldBushDL, 0.4f, 0.0f, 12, 44 },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 900, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 60, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 800, ICHAIN_STOP),
};

void ObjHana_Init(Actor* thisx, PlayState* play) {
    ObjHana* this = (ObjHana*)thisx;
    s16 type = PARAMS_GET_U(this->actor.params, 0, 2);
    HanaParams* params = &sHanaParams[type];

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Actor_SetScale(&this->actor, params->scale);
    this->actor.shape.yOffset = params->yOffset;
    if (params->radius >= 0) {
        Collider_InitCylinder(play, &this->collider);
        Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
        Collider_UpdateCylinder(&this->actor, &this->collider);
        this->collider.dim.radius = params->radius;
        this->collider.dim.height = params->height;
        CollisionCheck_SetInfo(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    }

    if (type == 2 && GET_EVENTCHKINF(EVENTCHKINF_40)) {
        Actor_Kill(&this->actor);
    }
}

void ObjHana_Destroy(Actor* thisx, PlayState* play) {
    ObjHana* this = (ObjHana*)thisx;

    if (sHanaParams[PARAMS_GET_U(this->actor.params, 0, 2)].radius >= 0) {
        Collider_DestroyCylinder(play, &this->collider);
    }
}

void ObjHana_Update(Actor* thisx, PlayState* play) {
    ObjHana* this = (ObjHana*)thisx;

    if (sHanaParams[PARAMS_GET_U(this->actor.params, 0, 2)].radius >= 0 && this->actor.xzDistToPlayer < 400.0f) {
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    }
}

void ObjHana_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, sHanaParams[PARAMS_GET_U(thisx->params, 0, 2)].dList);
}
