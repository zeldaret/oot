/*
 * File: z_obj_oshihiki.c
 * Overlay: ovl_Obj_Oshihiki
 * Description: Movable Block
 */

#include "z_obj_oshihiki.h"
#include "overlays/actors/ovl_Obj_Switch/z_obj_switch.h"

#define FLAGS 0x00000010

#define THIS ((ObjOshihiki*)thisx)

#define BLOCK_TYPE this->dyna.actor.params & 0xF

typedef enum {
    /* 0 */ SMALL_SWITCH_OFF,
    /* 1 */ MEDIUM_SWITCH_OFF,
    /* 2 */ LARGE_SWITCH_OFF,
    /* 3 */ HUGE_SWITCH_OFF,
    /* 4 */ SMALL_SWITCH_ON,
    /* 5 */ MEDIUM_SWITCH_ON,
    /* 6 */ LARGE_SWITCH_ON,
    /* 7 */ HUGE_SWITCH_ON
} BlockTypes;

typedef enum {
    BLOCK_ON_SCENE = 0x0001,
    SETUP_ON_SCENE = 0x0002,
    BLOCK_ON_ACTOR = 0x0004,
    SETUP_ON_ACTOR = 0x0008,
    BLOCK_PUSH = 0x0010,
    SETUP_PUSH = 0x0020,
    BLOCK_FALL = 0x0040,
    SETUP_FALL = 0x0080,
    MOVE_UNDER = 0x0100
} OshihikiStateFlags;

void ObjOshihiki_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjOshihiki_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjOshihiki_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjOshihiki_Draw(Actor* thisx, GlobalContext* globalCtx);

void ObjOshihiki_SetupOnScene(ObjOshihiki* this, GlobalContext* globalCtx);
void ObjOshihiki_OnScene(ObjOshihiki* this, GlobalContext* globalCtx);
void ObjOshihiki_SetupOnActor(ObjOshihiki* this, GlobalContext* globalCtx);
void ObjOshihiki_OnActor(ObjOshihiki* this, GlobalContext* globalCtx);
void ObjOshihiki_SetupPush(ObjOshihiki* this, GlobalContext* globalCtx);
void ObjOshihiki_Push(ObjOshihiki* this, GlobalContext* globalCtx);
void ObjOshihiki_SetupFall(ObjOshihiki* this, GlobalContext* globalCtx);
void ObjOshihiki_Fall(ObjOshihiki* this, GlobalContext* globalCtx);

extern ColHeader D_05004E98;
extern UNK_TYPE D_05003350;
extern UNK_TYPE D_05003B50;
extern UNK_TYPE D_05004350;
extern Gfx D_05004CD0[];

const ActorInit Obj_Oshihiki_InitVars = {
    ACTOR_OBJ_OSHIHIKI,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(ObjOshihiki),
    (ActorFunc)ObjOshihiki_Init,
    (ActorFunc)ObjOshihiki_Destroy,
    (ActorFunc)ObjOshihiki_Update,
    (ActorFunc)ObjOshihiki_Draw,
};

f32 sScales[] = {
    (1 / 10.0f), (1 / 6.0f), (1 / 5.0f), (1 / 3.0f), (1 / 10.0f), (1 / 6.0f), (1 / 5.0f), (1 / 3.0f),
};

Color_RGB8 sColors[][4] = {
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

s16 sScenes[] = {
    SCENE_YDAN,      // deku
    SCENE_DDAN,      // dodongos cavern
    SCENE_BMORI1,    // forest temple
    SCENE_HIDAN,     // fire
    SCENE_MIZUSIN,   // water
    SCENE_JYASINZOU, // spirit
    SCENE_HAKADAN,   // shadow
    SCENE_GANON,     // ganons tower
    SCENE_MEN,       // gerudo training grounds
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 1800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1500, ICHAIN_STOP),
};

Vec3f sColCheckPoints[5] = {
    { 29.99f, 1.01f, -29.99f }, { -29.99f, 1.01f, -29.99f }, { -29.99f, 1.01f, 29.99f },
    { 29.99f, 1.01f, 29.99f },  { 0.0f, 1.01f, 0.0f },
}; // The vertices and center of the bottom face

Vec2f sFaceVtx[] = {
    { -30.0f, 0.0f },
    { 30.0f, 0.0f },
    { -30.0f, 60.0f },
    { 30.0f, 60.0f },
};

Vec2f sFaceDirection[] = {
    { 1.0f, 1.0f },
    { -1.0f, 1.0f },
    { 1.0f, -1.0f },
    { -1.0f, -1.0f },
};

void ObjOshihiki_InitDynapoly(ObjOshihiki* this, GlobalContext* globalCtx, ColHeader* collision,
                              DynaPolyMoveFlag moveFlag) {
    s32 pad;
    ColHeader* colHeader = NULL;
    s32 pad2;

    DynaPolyInfo_SetActorMove(&this->dyna, moveFlag);
    DynaPolyInfo_Alloc(collision, &colHeader);
    this->dyna.dynaPolyId =
        DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);

    if (this->dyna.dynaPolyId == 0x32 /*BGACTOR_MAX*/) {
        // Warning : move BG registration failure
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_obj_oshihiki.c", 280,
                     this->dyna.actor.id, this->dyna.actor.params);
    }
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
    switch (BLOCK_TYPE) {
        case SMALL_SWITCH_OFF:
        case MEDIUM_SWITCH_OFF:
        case SMALL_SWITCH_ON:
        case MEDIUM_SWITCH_ON:
            return 1;
            break;
        case LARGE_SWITCH_OFF:
        case LARGE_SWITCH_ON:
            return strength > 0;
            break;
        case HUGE_SWITCH_OFF:
        case HUGE_SWITCH_ON:
            return strength >= 2;
            break;
    }
    return 0;
}

void ObjOshihiki_ResetFloors(ObjOshihiki* this) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(this->floorBgIds); i++) {
        this->floorBgIds[i] = 0x32 /*BGCHECK_SCENE*/;
    }
}

ObjOshihiki* ObjOshihiki_GetBlockUnder(ObjOshihiki* this, GlobalContext* globalCtx) {
    DynaPolyActor* dyna;

    if ((this->floorBgIds[this->highestFloor] != 0x32 /*BGCHECK_SCENE*/) &&
        (fabsf(this->dyna.actor.groundY - this->dyna.actor.posRot.pos.y) < 0.001f)) {
        dyna = DynaPolyInfo_GetActor(&globalCtx->colCtx, this->floorBgIds[this->highestFloor]);
        if ((dyna != NULL) && (dyna->actor.id == ACTOR_OBJ_OSHIHIKI)) {
            return (ObjOshihiki*)dyna;
        }
    }
    return NULL;
}

void ObjOshihiki_UpdateInitPos(ObjOshihiki* this) {
    if (this->dyna.actor.initPosRot.pos.x < this->dyna.actor.posRot.pos.x) {
        while ((this->dyna.actor.posRot.pos.x - this->dyna.actor.initPosRot.pos.x) >= 20.0f) {
            this->dyna.actor.initPosRot.pos.x += 20.0f;
        }
    } else {
        while ((this->dyna.actor.initPosRot.pos.x - this->dyna.actor.posRot.pos.x) >= 20.0f) {
            this->dyna.actor.initPosRot.pos.x -= 20.0f;
        }
    }
    if (this->dyna.actor.initPosRot.pos.z < this->dyna.actor.posRot.pos.z) {
        while ((this->dyna.actor.posRot.pos.z - this->dyna.actor.initPosRot.pos.z) >= 20.0f) {
            this->dyna.actor.initPosRot.pos.z += 20.0f;
        }
    } else {
        while ((this->dyna.actor.initPosRot.pos.z - this->dyna.actor.posRot.pos.z) >= 20.0f) {
            this->dyna.actor.initPosRot.pos.z -= 20.0f;
        }
    }
}

s32 ObjOshihiki_NoSwitchPress(ObjOshihiki* this, DynaPolyActor* dyna, GlobalContext* globalCtx) {
    s16 dynaSwitchFlag;

    if (dyna == NULL) {
        return 1;
    } else if (dyna->actor.id == ACTOR_OBJ_SWITCH) {
        dynaSwitchFlag = (dyna->actor.params >> 8) & 0x3F;
        switch (dyna->actor.params & 0x33) {
            case 0x20: // (OBJSWITCH_SUBTYPE_FLOOR_2 << 4) | OBJSWITCH_TYPE_FLOOR
                if ((dynaSwitchFlag == ((this->dyna.actor.params >> 8) & 0x3F)) &&
                    Flags_GetSwitch(globalCtx, dynaSwitchFlag)) {
                    return 0;
                }
                break;
            case 0x30: // (OBJSWITCH_SUBTYPE_FLOOR_3 << 4) | OBJSWITCH_TYPE_FLOOR
                if ((dynaSwitchFlag == ((this->dyna.actor.params >> 8) & 0x3F)) &&
                    !Flags_GetSwitch(globalCtx, dynaSwitchFlag)) {
                    return 0;
                }
                break;
        }
    }
    return 1;
}

void ObjOshihiki_CheckType(ObjOshihiki* this, GlobalContext* globalCtx) {
    switch (BLOCK_TYPE) {
        case SMALL_SWITCH_OFF:
        case MEDIUM_SWITCH_OFF:
        case LARGE_SWITCH_OFF:
        case HUGE_SWITCH_OFF:
        case SMALL_SWITCH_ON:
        case MEDIUM_SWITCH_ON:
        case LARGE_SWITCH_ON:
        case HUGE_SWITCH_ON:
            ObjOshihiki_InitDynapoly(this, globalCtx, &D_05004E98, 1);
            return;
    }
    // Error : type cannot be determined
    osSyncPrintf("Error : タイプが判別できない(%s %d)(arg_data 0x%04x)\n", "../z_obj_oshihiki.c", 444,
                 this->dyna.actor.params);
}

void ObjOshihiki_SetScale(ObjOshihiki* this, GlobalContext* globalCtx) {
    Actor_SetScale(&this->dyna.actor, sScales[BLOCK_TYPE]);
}

void ObjOshihiki_SetTexture(ObjOshihiki* this, GlobalContext* globalCtx) {
    switch (BLOCK_TYPE) {
        case SMALL_SWITCH_OFF:
        case MEDIUM_SWITCH_OFF:
        case SMALL_SWITCH_ON:
        case MEDIUM_SWITCH_ON:
            this->texture = &D_05003350;
            break;
        case LARGE_SWITCH_OFF:
        case LARGE_SWITCH_ON:
            this->texture = &D_05003B50;
            break;
        case HUGE_SWITCH_OFF:
        case HUGE_SWITCH_ON:
            this->texture = &D_05004350;
            break;
    }
}

void ObjOshihiki_SetColor(ObjOshihiki* this, GlobalContext* globalCtx) {
    Color_RGB8* src;
    Color_RGB8* color = &this->color;
    s16 paramsColorIdx;
    s32 i;

    paramsColorIdx = (this->dyna.actor.params >> 6) & 3;

    for (i = 0; i < ARRAY_COUNT(sScenes); i++) {
        if (sScenes[i] == globalCtx->sceneNum) {
            break;
        }
    }

    if (i > 8) {
        // "Error : scene_data_ID cannot be determined"
        osSyncPrintf("Error : scene_data_ID が判別できない。(%s %d)\n", "../z_obj_oshihiki.c", 579);
        color->r = color->g = color->b = 255;
    } else {
        src = &sColors[i][paramsColorIdx];
        color->r = src->r;
        color->g = src->g;
        color->b = src->b;
    }
}

void ObjOshihiki_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    ObjOshihiki* this = THIS;
    s32 switchFlag;

    ObjOshihiki_CheckType(this, globalCtx);

    switchFlag = this->dyna.actor.params >> 8;

    if (((u8)switchFlag >= 0) && ((u8)switchFlag <= 0x3F)) {
        if (Flags_GetSwitch(globalCtx, (switchFlag & 0x3F))) {
            switch (BLOCK_TYPE) {
                case SMALL_SWITCH_OFF:
                case MEDIUM_SWITCH_OFF:
                case LARGE_SWITCH_OFF:
                case HUGE_SWITCH_OFF:
                    Actor_Kill(&this->dyna.actor);
                    return;
            }
        } else {
            switch (BLOCK_TYPE) {
                case SMALL_SWITCH_ON:
                case MEDIUM_SWITCH_ON:
                case LARGE_SWITCH_ON:
                case HUGE_SWITCH_ON:
                    Actor_Kill(&this->dyna.actor);
                    return;
            }
        }
    }

    ObjOshihiki_SetScale(this, globalCtx);
    ObjOshihiki_SetTexture(this, globalCtx);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    thisx->colChkInfo.mass = 0xFF;
    ObjOshihiki_SetColor(this, globalCtx);
    ObjOshihiki_ResetFloors(this);
    ObjOshihiki_SetupOnActor(this, globalCtx);
    // (dungeon keep push-pull block)
    osSyncPrintf("(dungeon keep 押し引きブロック)(arg_data 0x%04x)\n", this->dyna.actor.params);
}

void ObjOshihiki_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    ObjOshihiki* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void ObjOshihiki_SetFloors(ObjOshihiki* this, GlobalContext* globalCtx) {
    s32 i;

    for (i = 0; i < 5; i++) {
        Vec3f colCheckPoint;
        Vec3f colCheckOffset;
        CollisionPoly** floorPoly;
        s32* floorBgId;

        colCheckOffset.x = sColCheckPoints[i].x * (this->dyna.actor.scale.x * 10.0f);
        colCheckOffset.y = sColCheckPoints[i].y * (this->dyna.actor.scale.y * 10.0f);
        colCheckOffset.z = sColCheckPoints[i].z * (this->dyna.actor.scale.z * 10.0f);
        ObjOshihiki_RotateXZ(&colCheckPoint, &colCheckOffset, this->yawSin, this->yawCos);
        colCheckPoint.x += this->dyna.actor.posRot.pos.x;
        colCheckPoint.y += this->dyna.actor.pos4.y;
        colCheckPoint.z += this->dyna.actor.posRot.pos.z;

        floorPoly = &this->floorPolys[i];
        floorBgId = &this->floorBgIds[i];
        this->floorHeights[i] =
            func_8003CA64(&globalCtx->colCtx, floorPoly, floorBgId, &this->dyna.actor, &colCheckPoint, 0.0f);
    }
}

s16 ObjOshihiki_GetHighestFloor(ObjOshihiki* this) {
    s16 highestFloor = 0;
    s16 temp = 1;
    f32 phi_f0 = this->floorHeights[temp];

    if (phi_f0 > this->floorHeights[highestFloor]) {
        highestFloor = temp;
    } else if ((this->floorBgIds[temp] == 0x32 /*BGCHECK_SCENE*/) &&
               ((phi_f0 - this->floorHeights[highestFloor]) > -0.001f)) {
        highestFloor = temp;
    }
    if (this->floorHeights[temp + 1] > this->floorHeights[highestFloor]) {
        highestFloor = temp + 1;
    } else if ((this->floorBgIds[temp + 1] == 0x32 /*BGCHECK_SCENE*/) &&
               ((this->floorHeights[temp + 1] - this->floorHeights[highestFloor]) > -0.001f)) {
        highestFloor = temp + 1;
    }
    if (this->floorHeights[temp + 2] > this->floorHeights[highestFloor]) {
        highestFloor = temp + 2;
    } else if ((this->floorBgIds[temp + 2] == 0x32 /*BGCHECK_SCENE*/) &&
               ((this->floorHeights[temp + 2] - this->floorHeights[highestFloor]) > -0.001f)) {
        highestFloor = temp + 2;
    }
    if (this->floorHeights[temp + 3] > this->floorHeights[highestFloor]) {
        highestFloor = temp + 3;
    } else if ((this->floorBgIds[temp + 3] == 0x32 /*BGCHECK_SCENE*/) &&
               ((this->floorHeights[temp + 3] - this->floorHeights[highestFloor]) > -0.001f)) {
        highestFloor = temp + 3;
    }
    return highestFloor;
}

void ObjOshihiki_SetGround(ObjOshihiki* this, GlobalContext* globalCtx) {
    ObjOshihiki_ResetFloors(this);
    ObjOshihiki_SetFloors(this, globalCtx);
    this->highestFloor = ObjOshihiki_GetHighestFloor(this);
    this->dyna.actor.groundY = this->floorHeights[this->highestFloor];
}

s32 ObjOshihiki_CheckFloor(ObjOshihiki* this, GlobalContext* globalCtx) {
    ObjOshihiki_SetGround(this, globalCtx);

    if ((this->dyna.actor.groundY - this->dyna.actor.posRot.pos.y) >= -0.001f) {
        this->dyna.actor.posRot.pos.y = this->dyna.actor.groundY;
        return 1;
    }

    return 0;
}

s32 ObjOshihiki_CheckGround(ObjOshihiki* this, GlobalContext* globalCtx) {
    if (this->dyna.actor.posRot.pos.y <= -31990.0f) {
        // Warning : Push-pull block fell too much
        osSyncPrintf("Warning : 押し引きブロック落ちすぎた(%s %d)(arg_data 0x%04x)\n", "../z_obj_oshihiki.c", 809,
                     this->dyna.actor.params);
        Actor_Kill(&this->dyna.actor);
        return 0;
    }
    if ((this->dyna.actor.groundY - this->dyna.actor.posRot.pos.y) >= -0.001f) {
        this->dyna.actor.posRot.pos.y = this->dyna.actor.groundY;
        return 1;
    }
    return 0;
}

s32 ObjOshihiki_CheckWall(GlobalContext* globalCtx, s16 angle, f32 direction, ObjOshihiki* this) {
    f32 maxDist = ((direction >= 0.0f) ? 1.0f : -1.0f) * (300.0f * this->dyna.actor.scale.x + 20.0f - 0.5f);
    f32 sn = Math_Sins(angle);
    f32 cs = Math_Coss(angle);
    s32 i;

    for (i = 0; i < 4; i++) {
        Vec3f faceVtx;
        Vec3f faceVtxNext;
        Vec3f posResult; // dummy value
        Vec3f faceVtxOffset;
        u32 bgId;               // dummy value
        CollisionPoly* outPoly; // dummy value

        faceVtxOffset.x = (sFaceVtx[i].x * this->dyna.actor.scale.x * 10.0f) + sFaceDirection[i].x;
        faceVtxOffset.y = (sFaceVtx[i].y * this->dyna.actor.scale.y * 10.0f) + sFaceDirection[i].y;
        faceVtxOffset.z = 0.0f;
        ObjOshihiki_RotateXZ(&faceVtx, &faceVtxOffset, sn, cs);
        faceVtx.x += this->dyna.actor.posRot.pos.x;
        faceVtx.y += this->dyna.actor.posRot.pos.y;
        faceVtx.z += this->dyna.actor.posRot.pos.z;
        faceVtxNext.x = faceVtx.x + maxDist * sn;
        faceVtxNext.y = faceVtx.y;
        faceVtxNext.z = faceVtx.z + maxDist * cs;
        if (func_8003DFA0(&globalCtx->colCtx, &faceVtx, &faceVtxNext, &posResult, &outPoly, 1, 0, 0, 1, &bgId,
                          &this->dyna.actor, 0.0f)) {
            return 1;
        }
    }
    return 0;
}

s32 ObjOshihiki_MoveWithBlockUnder(ObjOshihiki* this, GlobalContext* globalCtx) {
    s32 pad;
    ObjOshihiki* blockUnder = ObjOshihiki_GetBlockUnder(this, globalCtx);

    if ((blockUnder != NULL) && (blockUnder->stateFlags & SETUP_PUSH) &&
        !ObjOshihiki_CheckWall(globalCtx, blockUnder->dyna.unk_158, blockUnder->direction, this)) {
        this->blockUnder = blockUnder;
    }

    if ((this->stateFlags & MOVE_UNDER) && (this->blockUnder != NULL)) {
        if (this->blockUnder->stateFlags & BLOCK_PUSH) {
            this->underDistX = this->blockUnder->dyna.actor.posRot.pos.x - this->blockUnder->dyna.actor.pos4.x;
            this->underDistZ = this->blockUnder->dyna.actor.posRot.pos.z - this->blockUnder->dyna.actor.pos4.z;
            this->dyna.actor.posRot.pos.x += this->underDistX;
            this->dyna.actor.posRot.pos.z += this->underDistZ;
            ObjOshihiki_UpdateInitPos(this);
            return 1;
        } else if (!(this->blockUnder->stateFlags & SETUP_PUSH)) {
            this->blockUnder = NULL;
        }
    }
    return 0;
}

void ObjOshihiki_SetupOnScene(ObjOshihiki* this, GlobalContext* globalCtx) {
    this->stateFlags |= SETUP_ON_SCENE;
    this->actionFunc = ObjOshihiki_OnScene;
    this->dyna.actor.gravity = 0.0f;
    this->dyna.actor.velocity.x = this->dyna.actor.velocity.y = this->dyna.actor.velocity.z = 0.0f;
}

void ObjOshihiki_OnScene(ObjOshihiki* this, GlobalContext* globalCtx) {
    s32 pad;
    Player* player = PLAYER;

    this->stateFlags |= BLOCK_ON_SCENE;
    if ((this->timer <= 0) && (fabsf(this->dyna.unk_150) > 0.001f)) {
        if (ObjOshihiki_StrongEnough(this) &&
            !ObjOshihiki_CheckWall(globalCtx, this->dyna.unk_158, this->dyna.unk_150, this)) {
            this->direction = this->dyna.unk_150;
            ObjOshihiki_SetupPush(this, globalCtx);
        } else {
            player->stateFlags2 &= ~0x10;
            this->dyna.unk_150 = 0.0f;
        }
    } else {
        player->stateFlags2 &= ~0x10;
        this->dyna.unk_150 = 0.0f;
    }
}

void ObjOshihiki_SetupOnActor(ObjOshihiki* this, GlobalContext* globalCtx) {
    this->stateFlags |= SETUP_ON_ACTOR;
    this->actionFunc = ObjOshihiki_OnActor;
    this->dyna.actor.velocity.z = 0.0f;
    this->dyna.actor.velocity.y = 0.0f;
    this->dyna.actor.velocity.x = 0.0f;
    this->dyna.actor.gravity = -1.0f;
}

void ObjOshihiki_OnActor(ObjOshihiki* this, GlobalContext* globalCtx) {
    s32 bgId;
    Player* player = PLAYER;
    DynaPolyActor* dynaActor;

    this->stateFlags |= BLOCK_ON_ACTOR;
    Actor_MoveForward(&this->dyna.actor);

    if (ObjOshihiki_CheckFloor(this, globalCtx)) {
        bgId = this->floorBgIds[this->highestFloor];
        if (bgId == 0x32 /*BGCHECK_SCENE*/) {
            ObjOshihiki_SetupOnScene(this, globalCtx);
        } else {
            dynaActor = DynaPolyInfo_GetActor(&globalCtx->colCtx, bgId);
            if (dynaActor != NULL) {
                func_800434A8(dynaActor);
                func_80043538(dynaActor);

                if ((this->timer <= 0) && (fabsf(this->dyna.unk_150) > 0.001f)) {
                    if (ObjOshihiki_StrongEnough(this) && ObjOshihiki_NoSwitchPress(this, dynaActor, globalCtx) &&
                        !ObjOshihiki_CheckWall(globalCtx, this->dyna.unk_158, this->dyna.unk_150, this)) {

                        this->direction = this->dyna.unk_150;
                        ObjOshihiki_SetupPush(this, globalCtx);
                    } else {
                        player->stateFlags2 &= ~0x10;
                        this->dyna.unk_150 = 0.0f;
                    }
                } else {
                    player->stateFlags2 &= ~0x10;
                    this->dyna.unk_150 = 0.0f;
                }
            } else {
                ObjOshihiki_SetupOnScene(this, globalCtx);
            }
        }
    } else {
        bgId = this->floorBgIds[this->highestFloor];
        if (bgId == 0x32 /*BGCHECK_SCENE*/) {
            ObjOshihiki_SetupFall(this, globalCtx);
        } else {
            dynaActor = DynaPolyInfo_GetActor(&globalCtx->colCtx, bgId);

            if ((dynaActor != NULL) && (dynaActor->unk_15C & 1)) {
                func_800434A8(dynaActor);
                func_80043538(dynaActor);
                this->dyna.actor.posRot.pos.y = this->dyna.actor.groundY;
            } else {
                ObjOshihiki_SetupFall(this, globalCtx);
            }
        }
    }
}

void ObjOshihiki_SetupPush(ObjOshihiki* this, GlobalContext* globalCtx) {
    this->stateFlags |= SETUP_PUSH;
    this->actionFunc = ObjOshihiki_Push;
    this->dyna.actor.gravity = 0.0f;
}

void ObjOshihiki_Push(ObjOshihiki* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->dyna.actor;
    Player* player = PLAYER;
    f32 pushDistSigned;
    s32 stopFlag;

    this->pushSpeed += 0.5f;
    this->stateFlags |= BLOCK_PUSH;
    this->pushSpeed = CLAMP_MAX(this->pushSpeed, 2.0f);
    stopFlag = Math_ApproxF(&this->pushDist, 20.0f, this->pushSpeed);
    pushDistSigned = ((this->direction >= 0.0f) ? 1.0f : -1.0f) * this->pushDist;
    thisx->posRot.pos.x = thisx->initPosRot.pos.x + (pushDistSigned * this->yawSin);
    thisx->posRot.pos.z = thisx->initPosRot.pos.z + (pushDistSigned * this->yawCos);

    if (!ObjOshihiki_CheckFloor(this, globalCtx)) {
        thisx->initPosRot.pos.x = thisx->posRot.pos.x;
        thisx->initPosRot.pos.z = thisx->posRot.pos.z;
        player->stateFlags2 &= ~0x10;
        this->dyna.unk_150 = 0.0f;
        this->pushDist = 0.0f;
        this->pushSpeed = 0.0f;
        ObjOshihiki_SetupFall(this, globalCtx);
    } else if (stopFlag) {
        player = PLAYER;
        if (ObjOshihiki_CheckWall(globalCtx, this->dyna.unk_158, this->dyna.unk_150, this)) {
            Audio_PlayActorSound2(thisx, NA_SE_EV_BLOCK_BOUND);
        }

        thisx->initPosRot.pos.x = thisx->posRot.pos.x;
        thisx->initPosRot.pos.z = thisx->posRot.pos.z;
        player->stateFlags2 &= ~0x10;
        this->dyna.unk_150 = 0.0f;
        this->pushDist = 0.0f;
        this->pushSpeed = 0.0f;
        this->timer = 10;
        if (this->floorBgIds[this->highestFloor] == 0x32 /*BGCHECK_SCENE*/) {
            ObjOshihiki_SetupOnScene(this, globalCtx);
        } else {
            ObjOshihiki_SetupOnActor(this, globalCtx);
        }
    }
    Audio_PlayActorSound2(thisx, NA_SE_EV_ROCK_SLIDE - SFX_FLAG);
}

void ObjOshihiki_SetupFall(ObjOshihiki* this, GlobalContext* globalCtx) {
    this->stateFlags |= SETUP_FALL;
    this->dyna.actor.velocity.x = this->dyna.actor.velocity.y = this->dyna.actor.velocity.z = 0.0f;
    this->dyna.actor.gravity = -1.0f;
    ObjOshihiki_SetGround(this, globalCtx);
    this->actionFunc = ObjOshihiki_Fall;
}

void ObjOshihiki_Fall(ObjOshihiki* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->stateFlags |= BLOCK_FALL;
    if (fabsf(this->dyna.unk_150) > 0.001f) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= ~0x10;
    }
    Actor_MoveForward(&this->dyna.actor);
    if (ObjOshihiki_CheckGround(this, globalCtx)) {
        if (this->floorBgIds[this->highestFloor] == 0x32 /*BGCHECK_SCENE*/) {
            ObjOshihiki_SetupOnScene(this, globalCtx);
        } else {
            ObjOshihiki_SetupOnActor(this, globalCtx);
        }
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
        Audio_PlayActorSound2(&this->dyna.actor, func_80041F34(&globalCtx->colCtx, this->floorPolys[this->highestFloor],
                                                               this->floorBgIds[this->highestFloor]) +
                                                     SFX_FLAG);
    }
}

void ObjOshihiki_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    ObjOshihiki* this = THIS;

    this->stateFlags &= ~(SETUP_FALL | BLOCK_FALL | SETUP_PUSH | BLOCK_PUSH | SETUP_ON_ACTOR | BLOCK_ON_ACTOR |
                          SETUP_ON_SCENE | BLOCK_ON_SCENE);
    this->stateFlags |= MOVE_UNDER;

    if (this->timer > 0) {
        this->timer--;
    }

    this->dyna.actor.posRot.rot.y = this->dyna.unk_158;

    this->yawSin = Math_Sins(this->dyna.actor.posRot.rot.y);
    this->yawCos = Math_Coss(this->dyna.actor.posRot.rot.y);

    if (this->actionFunc != NULL) {
        this->actionFunc(this, globalCtx);
    }
}

void ObjOshihiki_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    ObjOshihiki* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_obj_oshihiki.c", 1289);
    if (ObjOshihiki_MoveWithBlockUnder(this, globalCtx)) {
        Matrix_Translate(this->underDistX * 10.0f, 0.0f, this->underDistZ * 10.0f, 1);
    }
    this->stateFlags &= ~MOVE_UNDER;
    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(this->texture));

    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_obj_oshihiki.c", 1308),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    switch (globalCtx->sceneNum) {
        case SCENE_YDAN:
        case SCENE_DDAN:
        case SCENE_BMORI1:
        case SCENE_HIDAN:
        case SCENE_MIZUSIN:
        case SCENE_JYASINZOU:
        case SCENE_HAKADAN:
        case SCENE_MEN:
            gDPSetEnvColor(oGfxCtx->polyOpa.p++, this->color.r, this->color.g, this->color.b, 255);
            break;
        default:
            gDPSetEnvColor(oGfxCtx->polyOpa.p++, mREG(0xD), mREG(0xE), mREG(0xF), 255);
            break;
    }

    gSPDisplayList(oGfxCtx->polyOpa.p++, &D_05004CD0);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_obj_oshihiki.c", 1334);
}
