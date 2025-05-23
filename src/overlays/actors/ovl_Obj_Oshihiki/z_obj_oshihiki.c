/*
 * File: z_obj_oshihiki.c
 * Overlay: ovl_Obj_Oshihiki
 * Description: Push Block
 */

#include "z_obj_oshihiki.h"
#include "overlays/actors/ovl_Obj_Switch/z_obj_switch.h"
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keep.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void ObjOshihiki_Init(Actor* thisx, PlayState* play2);
void ObjOshihiki_Destroy(Actor* thisx, PlayState* play);
void ObjOshihiki_Update(Actor* thisx, PlayState* play);
void ObjOshihiki_Draw(Actor* thisx, PlayState* play);

void ObjOshihiki_SetupOnScene(ObjOshihiki* this, PlayState* play);
void ObjOshihiki_OnScene(ObjOshihiki* this, PlayState* play);
void ObjOshihiki_SetupOnActor(ObjOshihiki* this, PlayState* play);
void ObjOshihiki_OnActor(ObjOshihiki* this, PlayState* play);
void ObjOshihiki_SetupPush(ObjOshihiki* this, PlayState* play);
void ObjOshihiki_Push(ObjOshihiki* this, PlayState* play);
void ObjOshihiki_SetupFall(ObjOshihiki* this, PlayState* play);
void ObjOshihiki_Fall(ObjOshihiki* this, PlayState* play);

ActorProfile Obj_Oshihiki_Profile = {
    /**/ ACTOR_OBJ_OSHIHIKI,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_DANGEON_KEEP,
    /**/ sizeof(ObjOshihiki),
    /**/ ObjOshihiki_Init,
    /**/ ObjOshihiki_Destroy,
    /**/ ObjOshihiki_Update,
    /**/ ObjOshihiki_Draw,
};

static f32 sScales[] = {
    (1 / 10.0f), (1 / 6.0f), (1 / 5.0f), (1 / 3.0f), (1 / 10.0f), (1 / 6.0f), (1 / 5.0f), (1 / 3.0f),
};

static Color_RGB8 sColors[][4] = {
    { { 110, 86, 40 }, { 110, 86, 40 }, { 110, 86, 40 }, { 110, 86, 40 } },         // deku tree
    { { 106, 120, 110 }, { 104, 80, 20 }, { 0, 0, 0 }, { 0, 0, 0 } },               // dodongos cavern
    { { 142, 99, 86 }, { 72, 118, 96 }, { 0, 0, 0 }, { 0, 0, 0 } },                 // forest temple
    { { 210, 150, 80 }, { 210, 170, 80 }, { 0, 0, 0 }, { 0, 0, 0 } },               // fire temple
    { { 102, 144, 182 }, { 176, 167, 100 }, { 100, 167, 100 }, { 117, 97, 96 } },   // water temple
    { { 232, 210, 176 }, { 232, 210, 176 }, { 232, 210, 176 }, { 232, 210, 176 } }, // spirit temple
    { { 135, 125, 95 }, { 135, 125, 95 }, { 135, 125, 95 }, { 135, 125, 95 } },     // shadow temple
    { { 255, 255, 255 }, { 255, 255, 255 }, { 255, 255, 255 }, { 255, 255, 255 } }, // ganons castle
    { { 232, 210, 176 }, { 232, 210, 176 }, { 232, 210, 176 }, { 232, 210, 176 } }, // gerudo training grounds
};

static s16 sSceneIds[] = {
    SCENE_DEKU_TREE,     SCENE_DODONGOS_CAVERN, SCENE_FOREST_TEMPLE,
    SCENE_FIRE_TEMPLE,   SCENE_WATER_TEMPLE,    SCENE_SPIRIT_TEMPLE,
    SCENE_SHADOW_TEMPLE, SCENE_GANONS_TOWER,    SCENE_GERUDO_TRAINING_GROUND,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(cullingVolumeDistance, 1800, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1500, ICHAIN_STOP),
};

// The vertices and center of the bottom face
static Vec3f sColCheckPoints[5] = {
    { 29.99f, 1.01f, -29.99f }, { -29.99f, 1.01f, -29.99f }, { -29.99f, 1.01f, 29.99f },
    { 29.99f, 1.01f, 29.99f },  { 0.0f, 1.01f, 0.0f },
};

static Vec2f sFaceVtx[] = {
    { -30.0f, 0.0f },
    { 30.0f, 0.0f },
    { -30.0f, 60.0f },
    { 30.0f, 60.0f },
};

static Vec2f sFaceDirection[] = {
    { 1.0f, 1.0f },
    { -1.0f, 1.0f },
    { 1.0f, -1.0f },
    { -1.0f, -1.0f },
};

void ObjOshihiki_InitDynapoly(ObjOshihiki* this, PlayState* play, CollisionHeader* collision, s32 moveFlag) {
    s32 pad;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, moveFlag);
    CollisionHeader_GetVirtual(collision, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

#if DEBUG_FEATURES
    if (this->dyna.bgId == BG_ACTOR_MAX) {
        s32 pad2;

        // "Warning : move BG registration failure"
        PRINTF("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_obj_oshihiki.c", 280,
               this->dyna.actor.id, this->dyna.actor.params);
    }
#endif
}

void ObjOshihiki_RotateXZ(Vec3f* out, Vec3f* in, f32 sn, f32 cs) {
    out->x = (in->z * sn) + (in->x * cs);
    out->y = in->y;
    out->z = (in->z * cs) - (in->x * sn);
}

s32 ObjOshihiki_StrongEnough(ObjOshihiki* this) {
    s32 strength;

    if (this->cantMove) {
        return 0;
    }
    strength = Player_GetStrength();
    switch (PARAMS_GET_U(this->dyna.actor.params, 0, 4)) {
        case PUSHBLOCK_SMALL_START_ON:
        case PUSHBLOCK_MEDIUM_START_ON:
        case PUSHBLOCK_SMALL_START_OFF:
        case PUSHBLOCK_MEDIUM_START_OFF:
            return 1;
            break;
        case PUSHBLOCK_LARGE_START_ON:
        case PUSHBLOCK_LARGE_START_OFF:
            return strength >= PLAYER_STR_BRACELET;
            break;
        case PUSHBLOCK_HUGE_START_ON:
        case PUSHBLOCK_HUGE_START_OFF:
            return strength >= PLAYER_STR_SILVER_G;
            break;
    }
    return 0;
}

void ObjOshihiki_ResetFloors(ObjOshihiki* this) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(this->floorBgIds); i++) {
        this->floorBgIds[i] = BGCHECK_SCENE;
    }
}

ObjOshihiki* ObjOshihiki_GetBlockUnder(ObjOshihiki* this, PlayState* play) {
    DynaPolyActor* dynaPolyActor;

    if ((this->floorBgIds[this->highestFloor] != BGCHECK_SCENE) &&
        (fabsf(this->dyna.actor.floorHeight - this->dyna.actor.world.pos.y) < 0.001f)) {
        dynaPolyActor = DynaPoly_GetActor(&play->colCtx, this->floorBgIds[this->highestFloor]);
        if ((dynaPolyActor != NULL) && (dynaPolyActor->actor.id == ACTOR_OBJ_OSHIHIKI)) {
            return (ObjOshihiki*)dynaPolyActor;
        }
    }
    return NULL;
}

void ObjOshihiki_UpdateInitPos(ObjOshihiki* this) {
    if (this->dyna.actor.home.pos.x < this->dyna.actor.world.pos.x) {
        while ((this->dyna.actor.world.pos.x - this->dyna.actor.home.pos.x) >= 20.0f) {
            this->dyna.actor.home.pos.x += 20.0f;
        }
    } else {
        while ((this->dyna.actor.home.pos.x - this->dyna.actor.world.pos.x) >= 20.0f) {
            this->dyna.actor.home.pos.x -= 20.0f;
        }
    }
    if (this->dyna.actor.home.pos.z < this->dyna.actor.world.pos.z) {
        while ((this->dyna.actor.world.pos.z - this->dyna.actor.home.pos.z) >= 20.0f) {
            this->dyna.actor.home.pos.z += 20.0f;
        }
    } else {
        while ((this->dyna.actor.home.pos.z - this->dyna.actor.world.pos.z) >= 20.0f) {
            this->dyna.actor.home.pos.z -= 20.0f;
        }
    }
}

s32 ObjOshihiki_NoSwitchPress(ObjOshihiki* this, DynaPolyActor* dyna, PlayState* play) {
    s16 dynaSwitchFlag;

    if (dyna == NULL) {
        return 1;
    } else if (dyna->actor.id == ACTOR_OBJ_SWITCH) {
        dynaSwitchFlag = PARAMS_GET_U(dyna->actor.params, 8, 6);
        switch (dyna->actor.params & 0x33) { // Does not fit any standard params getter macro
            case 0x20:                       // Normal blue switch
                if ((dynaSwitchFlag == PARAMS_GET_U(this->dyna.actor.params, 8, 6)) &&
                    Flags_GetSwitch(play, dynaSwitchFlag)) {
                    return 0;
                }
                break;
            case 0x30: // Inverse blue switch
                if ((dynaSwitchFlag == PARAMS_GET_U(this->dyna.actor.params, 8, 6)) &&
                    !Flags_GetSwitch(play, dynaSwitchFlag)) {
                    return 0;
                }
                break;
        }
    }
    return 1;
}

void ObjOshihiki_CheckType(ObjOshihiki* this, PlayState* play) {
    switch (PARAMS_GET_U(this->dyna.actor.params, 0, 4)) {
        case PUSHBLOCK_SMALL_START_ON:
        case PUSHBLOCK_MEDIUM_START_ON:
        case PUSHBLOCK_LARGE_START_ON:
        case PUSHBLOCK_HUGE_START_ON:
        case PUSHBLOCK_SMALL_START_OFF:
        case PUSHBLOCK_MEDIUM_START_OFF:
        case PUSHBLOCK_LARGE_START_OFF:
        case PUSHBLOCK_HUGE_START_OFF:
            ObjOshihiki_InitDynapoly(this, play, &gPushBlockCol, 1);
            break;
        default:
            // "Error : type cannot be determined"
            PRINTF("Error : タイプが判別できない(%s %d)(arg_data 0x%04x)\n", "../z_obj_oshihiki.c", 444,
                   this->dyna.actor.params);
            break;
    }
}

void ObjOshihiki_SetScale(ObjOshihiki* this, PlayState* play) {
    Actor_SetScale(&this->dyna.actor, sScales[PARAMS_GET_U(this->dyna.actor.params, 0, 4)]);
}

void ObjOshihiki_SetTexture(ObjOshihiki* this, PlayState* play) {
    switch (PARAMS_GET_U(this->dyna.actor.params, 0, 4)) {
        case PUSHBLOCK_SMALL_START_ON:
        case PUSHBLOCK_MEDIUM_START_ON:
        case PUSHBLOCK_SMALL_START_OFF:
        case PUSHBLOCK_MEDIUM_START_OFF:
            this->texture = gPushBlockSilverTex;
            break;
        case PUSHBLOCK_LARGE_START_ON:
        case PUSHBLOCK_LARGE_START_OFF:
            this->texture = gPushBlockBaseTex;
            break;
        case PUSHBLOCK_HUGE_START_ON:
        case PUSHBLOCK_HUGE_START_OFF:
            this->texture = gPushBlockGrayTex;
            break;
    }
}

void ObjOshihiki_SetColor(ObjOshihiki* this, PlayState* play2) {
    PlayState* play = play2;
    s16 paramsColorIdx = PARAMS_GET_U(this->dyna.actor.params, 6, 2);
    Color_RGB8* color = &this->color;
    Color_RGB8* src;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(sSceneIds); i++) {
        if (sSceneIds[i] == play->sceneId) {
            break;
        }
    }

    if (i >= ARRAY_COUNT(sColors)) {
        // "Error : scene_data_ID cannot be determined"
        PRINTF("Error : scene_data_ID が判別できない。(%s %d)\n", "../z_obj_oshihiki.c", 579);
        color->r = color->g = color->b = 255;
    } else {
        src = &sColors[i][paramsColorIdx];
        color->r = src->r;
        color->g = src->g;
        color->b = src->b;
    }
}

void ObjOshihiki_Init(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    ObjOshihiki* this = (ObjOshihiki*)thisx;

    ObjOshihiki_CheckType(this, play);

    if ((PARAMS_GET_U(this->dyna.actor.params, 8, 8) >= 0) && (PARAMS_GET_U(this->dyna.actor.params, 8, 8) <= 0x3F)) {
        if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6))) {
            switch (PARAMS_GET_U(this->dyna.actor.params, 0, 4)) {
                case PUSHBLOCK_SMALL_START_ON:
                case PUSHBLOCK_MEDIUM_START_ON:
                case PUSHBLOCK_LARGE_START_ON:
                case PUSHBLOCK_HUGE_START_ON:
                    Actor_Kill(&this->dyna.actor);
                    return;
            }
        } else {
            switch (PARAMS_GET_U(this->dyna.actor.params, 0, 4)) {
                case PUSHBLOCK_SMALL_START_OFF:
                case PUSHBLOCK_MEDIUM_START_OFF:
                case PUSHBLOCK_LARGE_START_OFF:
                case PUSHBLOCK_HUGE_START_OFF:
                    Actor_Kill(&this->dyna.actor);
                    return;
            }
        }
    }

    ObjOshihiki_SetScale(this, play);
    ObjOshihiki_SetTexture(this, play);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    this->dyna.actor.colChkInfo.mass = MASS_IMMOVABLE;
    ObjOshihiki_SetColor(this, play);
    ObjOshihiki_ResetFloors(this);
    ObjOshihiki_SetupOnActor(this, play);
    // "(dungeon keep push-pull block)"
    PRINTF("(dungeon keep 押し引きブロック)(arg_data 0x%04x)\n", this->dyna.actor.params);
}

void ObjOshihiki_Destroy(Actor* thisx, PlayState* play) {
    s32 pad;
    ObjOshihiki* this = (ObjOshihiki*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void ObjOshihiki_SetFloors(ObjOshihiki* this, PlayState* play) {
    s32 pad;
    Vec3f colCheckPoint;
    Vec3f colCheckOffset;
    s32 i;

    for (i = 0; i < 5; i++) {
        colCheckOffset.x = sColCheckPoints[i].x * (this->dyna.actor.scale.x * 10.0f);
        colCheckOffset.y = sColCheckPoints[i].y * (this->dyna.actor.scale.y * 10.0f);
        colCheckOffset.z = sColCheckPoints[i].z * (this->dyna.actor.scale.z * 10.0f);
        ObjOshihiki_RotateXZ(&colCheckPoint, &colCheckOffset, this->yawSin, this->yawCos);
        colCheckPoint.x += this->dyna.actor.world.pos.x;
        colCheckPoint.y += this->dyna.actor.prevPos.y;
        colCheckPoint.z += this->dyna.actor.world.pos.z;

        this->floorHeights[i] = BgCheck_EntityRaycastDown6(&play->colCtx, &this->floorPolys[i], &this->floorBgIds[i],
                                                           &this->dyna.actor, &colCheckPoint, 0.0f);
    }
}

s16 ObjOshihiki_GetHighestFloor(ObjOshihiki* this) {
    s32 i;
    s16 highestFloor = 0;

    for (i = 1; i < ARRAY_COUNT(this->floorHeights); i++) {
        if (this->floorHeights[i] > this->floorHeights[highestFloor]) {
            highestFloor = i;
        } else if ((this->floorBgIds[i] == BGCHECK_SCENE) &&
                   ((this->floorHeights[i] - this->floorHeights[highestFloor]) > -0.001f)) {
            highestFloor = i;
        }
    }

    return highestFloor;
}

void ObjOshihiki_SetGround(ObjOshihiki* this, PlayState* play) {
    ObjOshihiki_ResetFloors(this);
    ObjOshihiki_SetFloors(this, play);
    this->highestFloor = ObjOshihiki_GetHighestFloor(this);
    this->dyna.actor.floorHeight = this->floorHeights[this->highestFloor];
}

s32 ObjOshihiki_CheckFloor(ObjOshihiki* this, PlayState* play) {
    ObjOshihiki_SetGround(this, play);

    if ((this->dyna.actor.floorHeight - this->dyna.actor.world.pos.y) >= -0.001f) {
        this->dyna.actor.world.pos.y = this->dyna.actor.floorHeight;
        return 1;
    }

    return 0;
}

s32 ObjOshihiki_CheckGround(ObjOshihiki* this, PlayState* play) {
    if (this->dyna.actor.world.pos.y <= BGCHECK_Y_MIN + 10.0f) {
        // "Warning : Push-pull block fell too much"
        PRINTF("Warning : 押し引きブロック落ちすぎた(%s %d)(arg_data 0x%04x)\n", "../z_obj_oshihiki.c", 809,
               this->dyna.actor.params);
        Actor_Kill(&this->dyna.actor);
        return 0;
    }
    if ((this->dyna.actor.floorHeight - this->dyna.actor.world.pos.y) >= -0.001f) {
        this->dyna.actor.world.pos.y = this->dyna.actor.floorHeight;
        return 1;
    }
    return 0;
}

s32 ObjOshihiki_CheckWall(PlayState* play, s16 angle, f32 direction, ObjOshihiki* this) {
    f32 maxDist = ((direction >= 0.0f) ? 1.0f : -1.0f) * (300.0f * this->dyna.actor.scale.x + 20.0f - 0.5f);
    f32 sn = Math_SinS(angle);
    f32 cs = Math_CosS(angle);
    s32 i;

    for (i = 0; i < 4; i++) {
        Vec3f faceVtx;
        Vec3f faceVtxNext;
        Vec3f posResult;
        Vec3f faceVtxOffset;
        s32 bgId;
        CollisionPoly* outPoly;

        faceVtxOffset.x = (sFaceVtx[i].x * this->dyna.actor.scale.x * 10.0f) + sFaceDirection[i].x;
        faceVtxOffset.y = (sFaceVtx[i].y * this->dyna.actor.scale.y * 10.0f) + sFaceDirection[i].y;
        faceVtxOffset.z = 0.0f;
        ObjOshihiki_RotateXZ(&faceVtx, &faceVtxOffset, sn, cs);
        faceVtx.x += this->dyna.actor.world.pos.x;
        faceVtx.y += this->dyna.actor.world.pos.y;
        faceVtx.z += this->dyna.actor.world.pos.z;
        faceVtxNext.x = faceVtx.x + maxDist * sn;
        faceVtxNext.y = faceVtx.y;
        faceVtxNext.z = faceVtx.z + maxDist * cs;
        if (BgCheck_EntityLineTest3(&play->colCtx, &faceVtx, &faceVtxNext, &posResult, &outPoly, true, false, false,
                                    true, &bgId, &this->dyna.actor, 0.0f)) {
            return true;
        }
    }
    return false;
}

s32 ObjOshihiki_MoveWithBlockUnder(ObjOshihiki* this, PlayState* play) {
    s32 pad;
    ObjOshihiki* blockUnder = ObjOshihiki_GetBlockUnder(this, play);

    if ((blockUnder != NULL) && (blockUnder->stateFlags & PUSHBLOCK_SETUP_PUSH) &&
        !ObjOshihiki_CheckWall(play, blockUnder->dyna.unk_158, blockUnder->direction, this)) {
        this->blockUnder = blockUnder;
    }

    if ((this->stateFlags & PUSHBLOCK_MOVE_UNDER) && (this->blockUnder != NULL)) {
        if (this->blockUnder->stateFlags & PUSHBLOCK_PUSH) {
            this->underDistX = this->blockUnder->dyna.actor.world.pos.x - this->blockUnder->dyna.actor.prevPos.x;
            this->underDistZ = this->blockUnder->dyna.actor.world.pos.z - this->blockUnder->dyna.actor.prevPos.z;
            this->dyna.actor.world.pos.x += this->underDistX;
            this->dyna.actor.world.pos.z += this->underDistZ;
            ObjOshihiki_UpdateInitPos(this);
            return true;
        } else if (!(this->blockUnder->stateFlags & PUSHBLOCK_SETUP_PUSH)) {
            this->blockUnder = NULL;
        }
    }
    return false;
}

void ObjOshihiki_SetupOnScene(ObjOshihiki* this, PlayState* play) {
    this->stateFlags |= PUSHBLOCK_SETUP_ON_SCENE;
    this->dyna.actor.gravity = 0.0f;
    this->dyna.actor.velocity.x = this->dyna.actor.velocity.y = this->dyna.actor.velocity.z = 0.0f;
    this->actionFunc = ObjOshihiki_OnScene;
}

void ObjOshihiki_OnScene(ObjOshihiki* this, PlayState* play) {
    s32 pad;
    Player* player = GET_PLAYER(play);

    this->stateFlags |= PUSHBLOCK_ON_SCENE;
    if ((this->timer <= 0) && (fabsf(this->dyna.unk_150) > 0.001f)) {
        if (ObjOshihiki_StrongEnough(this) &&
            !ObjOshihiki_CheckWall(play, this->dyna.unk_158, this->dyna.unk_150, this)) {
            this->direction = this->dyna.unk_150;
            ObjOshihiki_SetupPush(this, play);
        } else {
            player->stateFlags2 &= ~PLAYER_STATE2_4;
            this->dyna.unk_150 = 0.0f;
        }
    } else {
        player->stateFlags2 &= ~PLAYER_STATE2_4;
        this->dyna.unk_150 = 0.0f;
    }
}

void ObjOshihiki_SetupOnActor(ObjOshihiki* this, PlayState* play) {
    this->stateFlags |= PUSHBLOCK_SETUP_ON_ACTOR;
    this->dyna.actor.velocity.x = this->dyna.actor.velocity.y = this->dyna.actor.velocity.z = 0.0f;
    this->dyna.actor.gravity = -1.0f;
    this->actionFunc = ObjOshihiki_OnActor;
}

void ObjOshihiki_OnActor(ObjOshihiki* this, PlayState* play) {
    s32 bgId;
    Player* player = GET_PLAYER(play);
    DynaPolyActor* dynaPolyActor;

    this->stateFlags |= PUSHBLOCK_ON_ACTOR;
    Actor_MoveXZGravity(&this->dyna.actor);

    if (ObjOshihiki_CheckFloor(this, play)) {
        bgId = this->floorBgIds[this->highestFloor];
        if (bgId == BGCHECK_SCENE) {
            ObjOshihiki_SetupOnScene(this, play);
        } else {
            dynaPolyActor = DynaPoly_GetActor(&play->colCtx, bgId);
            if (dynaPolyActor != NULL) {
                DynaPolyActor_SetActorOnTop(dynaPolyActor);
                DynaPolyActor_SetSwitchPressed(dynaPolyActor);

                if ((this->timer <= 0) && (fabsf(this->dyna.unk_150) > 0.001f)) {
                    if (ObjOshihiki_StrongEnough(this) && ObjOshihiki_NoSwitchPress(this, dynaPolyActor, play) &&
                        !ObjOshihiki_CheckWall(play, this->dyna.unk_158, this->dyna.unk_150, this)) {

                        this->direction = this->dyna.unk_150;
                        ObjOshihiki_SetupPush(this, play);
                    } else {
                        player->stateFlags2 &= ~PLAYER_STATE2_4;
                        this->dyna.unk_150 = 0.0f;
                    }
                } else {
                    player->stateFlags2 &= ~PLAYER_STATE2_4;
                    this->dyna.unk_150 = 0.0f;
                }
            } else {
                ObjOshihiki_SetupOnScene(this, play);
            }
        }
    } else {
        bgId = this->floorBgIds[this->highestFloor];
        if (bgId == BGCHECK_SCENE) {
            ObjOshihiki_SetupFall(this, play);
        } else {
            dynaPolyActor = DynaPoly_GetActor(&play->colCtx, bgId);

            if ((dynaPolyActor != NULL) && (dynaPolyActor->transformFlags & DYNA_TRANSFORM_POS)) {
                DynaPolyActor_SetActorOnTop(dynaPolyActor);
                DynaPolyActor_SetSwitchPressed(dynaPolyActor);
                this->dyna.actor.world.pos.y = this->dyna.actor.floorHeight;
            } else {
                ObjOshihiki_SetupFall(this, play);
            }
        }
    }
}

void ObjOshihiki_SetupPush(ObjOshihiki* this, PlayState* play) {
    this->stateFlags |= PUSHBLOCK_SETUP_PUSH;
    this->actionFunc = ObjOshihiki_Push;
    this->dyna.actor.gravity = 0.0f;
}

void ObjOshihiki_Push(ObjOshihiki* this, PlayState* play) {
    Actor* thisx = &this->dyna.actor;
    Player* player = GET_PLAYER(play);
    f32 pushDistSigned;
    s32 stopFlag;

    this->pushSpeed += 0.5f;
    this->stateFlags |= PUSHBLOCK_PUSH;
    this->pushSpeed = CLAMP_MAX(this->pushSpeed, 2.0f);
    stopFlag = Math_StepToF(&this->pushDist, 20.0f, this->pushSpeed);
    pushDistSigned = ((this->direction >= 0.0f) ? 1.0f : -1.0f) * this->pushDist;
    thisx->world.pos.x = thisx->home.pos.x + (pushDistSigned * this->yawSin);
    thisx->world.pos.z = thisx->home.pos.z + (pushDistSigned * this->yawCos);

    if (!ObjOshihiki_CheckFloor(this, play)) {
        thisx->home.pos.x = thisx->world.pos.x;
        thisx->home.pos.z = thisx->world.pos.z;
        player->stateFlags2 &= ~PLAYER_STATE2_4;
        this->dyna.unk_150 = 0.0f;
        this->pushDist = 0.0f;
        this->pushSpeed = 0.0f;
        ObjOshihiki_SetupFall(this, play);
    } else if (stopFlag) {
        player = GET_PLAYER(play);
        if (ObjOshihiki_CheckWall(play, this->dyna.unk_158, this->dyna.unk_150, this)) {
            Actor_PlaySfx(thisx, NA_SE_EV_BLOCK_BOUND);
        }

        thisx->home.pos.x = thisx->world.pos.x;
        thisx->home.pos.z = thisx->world.pos.z;
        player->stateFlags2 &= ~PLAYER_STATE2_4;
        this->dyna.unk_150 = 0.0f;
        this->pushDist = 0.0f;
        this->pushSpeed = 0.0f;
        this->timer = 10;
        if (this->floorBgIds[this->highestFloor] == BGCHECK_SCENE) {
            ObjOshihiki_SetupOnScene(this, play);
        } else {
            ObjOshihiki_SetupOnActor(this, play);
        }
    }
    Actor_PlaySfx(thisx, NA_SE_EV_ROCK_SLIDE - SFX_FLAG);
}

void ObjOshihiki_SetupFall(ObjOshihiki* this, PlayState* play) {
    this->stateFlags |= PUSHBLOCK_SETUP_FALL;
    this->dyna.actor.velocity.x = this->dyna.actor.velocity.y = this->dyna.actor.velocity.z = 0.0f;
    this->dyna.actor.gravity = -1.0f;
    ObjOshihiki_SetGround(this, play);
    this->actionFunc = ObjOshihiki_Fall;
}

void ObjOshihiki_Fall(ObjOshihiki* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    this->stateFlags |= PUSHBLOCK_FALL;
    if (fabsf(this->dyna.unk_150) > 0.001f) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= ~PLAYER_STATE2_4;
    }
    Actor_MoveXZGravity(&this->dyna.actor);
    if (ObjOshihiki_CheckGround(this, play)) {
        if (this->floorBgIds[this->highestFloor] == BGCHECK_SCENE) {
            ObjOshihiki_SetupOnScene(this, play);
        } else {
            ObjOshihiki_SetupOnActor(this, play);
        }
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_PL_WALK_GROUND + SurfaceType_GetSfxOffset(
                                                                    &play->colCtx, this->floorPolys[this->highestFloor],
                                                                    this->floorBgIds[this->highestFloor]));
    }
}

void ObjOshihiki_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    ObjOshihiki* this = (ObjOshihiki*)thisx;

    this->stateFlags &=
        ~(PUSHBLOCK_SETUP_FALL | PUSHBLOCK_FALL | PUSHBLOCK_SETUP_PUSH | PUSHBLOCK_PUSH | PUSHBLOCK_SETUP_ON_ACTOR |
          PUSHBLOCK_ON_ACTOR | PUSHBLOCK_SETUP_ON_SCENE | PUSHBLOCK_ON_SCENE);
    this->stateFlags |= PUSHBLOCK_MOVE_UNDER;

    if (this->timer > 0) {
        this->timer--;
    }

    this->dyna.actor.world.rot.y = this->dyna.unk_158;

    this->yawSin = Math_SinS(this->dyna.actor.world.rot.y);
    this->yawCos = Math_CosS(this->dyna.actor.world.rot.y);

    if (this->actionFunc != NULL) {
        this->actionFunc(this, play);
    }
}

void ObjOshihiki_Draw(Actor* thisx, PlayState* play) {
    s32 pad;
    ObjOshihiki* this = (ObjOshihiki*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_obj_oshihiki.c", 1289);
    if (ObjOshihiki_MoveWithBlockUnder(this, play)) {
        Matrix_Translate(this->underDistX * 10.0f, 0.0f, this->underDistZ * 10.0f, MTXMODE_APPLY);
    }
    this->stateFlags &= ~PUSHBLOCK_MOVE_UNDER;
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(this->texture));

    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_obj_oshihiki.c", 1308);

#if DEBUG_FEATURES
    switch (play->sceneId) {
        case SCENE_DEKU_TREE:
        case SCENE_DODONGOS_CAVERN:
        case SCENE_FOREST_TEMPLE:
        case SCENE_FIRE_TEMPLE:
        case SCENE_WATER_TEMPLE:
        case SCENE_SPIRIT_TEMPLE:
        case SCENE_SHADOW_TEMPLE:
        case SCENE_GERUDO_TRAINING_GROUND:
            gDPSetEnvColor(POLY_OPA_DISP++, this->color.r, this->color.g, this->color.b, 255);
            break;
        default:
            gDPSetEnvColor(POLY_OPA_DISP++, mREG(13), mREG(14), mREG(15), 255);
            break;
    }
#else
    gDPSetEnvColor(POLY_OPA_DISP++, this->color.r, this->color.g, this->color.b, 255);
#endif

    gSPDisplayList(POLY_OPA_DISP++, gPushBlockDL);
    CLOSE_DISPS(play->state.gfxCtx, "../z_obj_oshihiki.c", 1334);
}
