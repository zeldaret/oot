/*
 * File: z_obj_hsblock.c
 * Overlay: ovl_Obj_Hsblock
 * Description: Stone Hookshot Target
 */

#include "z_obj_hsblock.h"
#include "assets/objects/object_d_hsblock/object_d_hsblock.h"

#define FLAGS 0

void ObjHsblock_Init(Actor* thisx, PlayState* play);
void ObjHsblock_Destroy(Actor* thisx, PlayState* play);
void ObjHsblock_Update(Actor* thisx, PlayState* play);
void ObjHsblock_Draw(Actor* thisx, PlayState* play);

void func_80B93DF4(ObjHsblock* this, PlayState* play);
void func_80B93E5C(ObjHsblock* this, PlayState* play);

void func_80B93D90(ObjHsblock* this);
void func_80B93DB0(ObjHsblock* this);
void func_80B93E38(ObjHsblock* this);

ActorProfile Obj_Hsblock_Profile = {
    /**/ ACTOR_OBJ_HSBLOCK,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_D_HSBLOCK,
    /**/ sizeof(ObjHsblock),
    /**/ ObjHsblock_Init,
    /**/ ObjHsblock_Destroy,
    /**/ ObjHsblock_Update,
    /**/ ObjHsblock_Draw,
};

static f32 D_80B940C0[] = { 85.0f, 85.0f, 0.0f };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 2000, ICHAIN_STOP),
};

static CollisionHeader* sCollisionHeaders[] = { &gHookshotPostCol, &gHookshotPostCol, &gHookshotTargetCol };

static Color_RGB8 sFireTempleColor = { 165, 125, 55 };

static Gfx* sDLists[] = { gHookshotPostDL, gHookshotPostDL, gHookshotTargetDL };

void ObjHsblock_SetupAction(ObjHsblock* this, ObjHsblockActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void func_80B93B68(ObjHsblock* this, PlayState* play, CollisionHeader* collision, s32 transformFlags) {
    s32 pad;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, transformFlags);
    CollisionHeader_GetVirtual(collision, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

#if DEBUG_FEATURES
    if (this->dyna.bgId == BG_ACTOR_MAX) {
        s32 pad2;

        PRINTF("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_obj_hsblock.c", 163,
               this->dyna.actor.id, this->dyna.actor.params);
    }
#endif
}

void func_80B93BF0(ObjHsblock* this, PlayState* play) {
    if (PARAMS_GET_U(this->dyna.actor.params, 5, 1)) {
        Actor_SpawnAsChild(&play->actorCtx, &this->dyna.actor, play, ACTOR_OBJ_ICE_POLY, this->dyna.actor.world.pos.x,
                           this->dyna.actor.world.pos.y, this->dyna.actor.world.pos.z, this->dyna.actor.world.rot.x,
                           this->dyna.actor.world.rot.y, this->dyna.actor.world.rot.z, 1);
    }
}

void ObjHsblock_Init(Actor* thisx, PlayState* play) {
    ObjHsblock* this = (ObjHsblock*)thisx;

    func_80B93B68(this, play, sCollisionHeaders[PARAMS_GET_U(thisx->params, 0, 2)], 0);
    Actor_ProcessInitChain(thisx, sInitChain);
    func_80B93BF0(this, play);

    switch (PARAMS_GET_U(thisx->params, 0, 2)) {
        case 0:
        case 2:
            func_80B93D90(this);
            break;
        case 1:
            if (Flags_GetSwitch(play, PARAMS_GET_U(thisx->params, 8, 6))) {
                func_80B93D90(this);
            } else {
                func_80B93DB0(this);
            }
    }

#if DEBUG_FEATURES
    mREG(13) = 255;
    mREG(14) = 255;
    mREG(15) = 255;
#endif
}

void ObjHsblock_Destroy(Actor* thisx, PlayState* play) {
    ObjHsblock* this = (ObjHsblock*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void func_80B93D90(ObjHsblock* this) {
    ObjHsblock_SetupAction(this, NULL);
}

void func_80B93DB0(ObjHsblock* this) {
    this->dyna.actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
    this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y - 105.0f;
    ObjHsblock_SetupAction(this, func_80B93DF4);
}

void func_80B93DF4(ObjHsblock* this, PlayState* play) {
    if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6))) {
        func_80B93E38(this);
    }
}

void func_80B93E38(ObjHsblock* this) {
    ObjHsblock_SetupAction(this, func_80B93E5C);
}

void func_80B93E5C(ObjHsblock* this, PlayState* play) {
    Math_SmoothStepToF(&this->dyna.actor.velocity.y, 16.0f, 0.1f, 0.8f, 0.0f);
    if (fabsf(Math_SmoothStepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 0.3f,
                                 this->dyna.actor.velocity.y, 0.3f)) < 0.001f) {
        this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y;
        func_80B93D90(this);
        this->dyna.actor.flags &= ~ACTOR_FLAG_UPDATE_CULLING_DISABLED;
    }
}

void ObjHsblock_Update(Actor* thisx, PlayState* play) {
    ObjHsblock* this = (ObjHsblock*)thisx;

    if (this->actionFunc != NULL) {
        this->actionFunc(this, play);
    }
    Actor_SetFocus(thisx, D_80B940C0[PARAMS_GET_U(thisx->params, 0, 2)]);
}

void ObjHsblock_Draw(Actor* thisx, PlayState* play) {
    Color_RGB8* color;
    Color_RGB8 defaultColor;

    OPEN_DISPS(play->state.gfxCtx, "../z_obj_hsblock.c", 365);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_obj_hsblock.c", 369);

    if (play->sceneId == SCENE_FIRE_TEMPLE) {
        color = &sFireTempleColor;
    } else {
#if DEBUG_FEATURES
        defaultColor.r = mREG(13);
        defaultColor.g = mREG(14);
        defaultColor.b = mREG(15);
#else
        defaultColor.r = 255;
        defaultColor.g = 255;
        defaultColor.b = 255;
#endif

        color = &defaultColor;
    }

    gDPSetEnvColor(POLY_OPA_DISP++, color->r, color->g, color->b, 255);
    gSPDisplayList(POLY_OPA_DISP++, sDLists[PARAMS_GET_U(thisx->params, 0, 2)]);

    CLOSE_DISPS(play->state.gfxCtx, "../z_obj_hsblock.c", 399);
}
