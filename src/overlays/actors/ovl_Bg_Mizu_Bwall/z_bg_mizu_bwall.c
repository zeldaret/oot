/*
 * File: z_bg_mizu_bwall.c
 * Overlay: ovl_Bg_Mizu_Bwall
 * Description: Water Temple bombable walls
 */

#include "z_bg_mizu_bwall.h"
#include "overlays/actors/ovl_Bg_Mizu_Water/z_bg_mizu_water.h"
#include "assets/objects/object_mizu_objects/object_mizu_objects.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void BgMizuBwall_Init(Actor* thisx, PlayState* play);
void BgMizuBwall_Destroy(Actor* thisx, PlayState* play);
void BgMizuBwall_Update(Actor* thisx, PlayState* play);
void BgMizuBwall_Draw(Actor* thisx, PlayState* play2);

void BgMizuBwall_Idle(BgMizuBwall* this, PlayState* play);
void BgMizuBwall_Break(BgMizuBwall* this, PlayState* play);
void BgMizuBwall_DoNothing(BgMizuBwall* this, PlayState* play);

ActorProfile Bg_Mizu_Bwall_Profile = {
    /**/ ACTOR_BG_MIZU_BWALL,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_MIZU_OBJECTS,
    /**/ sizeof(BgMizuBwall),
    /**/ BgMizuBwall_Init,
    /**/ BgMizuBwall_Destroy,
    /**/ BgMizuBwall_Update,
    /**/ BgMizuBwall_Draw,
};

static ColliderTrisElementInit sTrisElementInitFloor[2] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000008, 0x00, 0x00 },
            ATELEM_NONE,
            ACELEM_ON,
            OCELEM_NONE,
        },
        { { { -40.0f, 0.0f, -40.0f }, { -40.0f, 0.0f, 40.0f }, { 40.0f, 0.0f, 40.0f } } },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000008, 0x00, 0x00 },
            ATELEM_NONE,
            ACELEM_ON,
            OCELEM_NONE,
        },
        { { { -40.0f, 0.0f, -40.0f }, { 40.0f, 0.0f, 40.0f }, { 40.0f, 0.0f, -40.0f } } },
    },
};

static ColliderTrisInit sTrisInitFloor = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_TRIS,
    },
    2,
    sTrisElementInitFloor,
};

static ColliderTrisElementInit sTrisElementInitRutoWall[1] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000008, 0x00, 0x00 },
            ATELEM_NONE,
            ACELEM_ON,
            OCELEM_NONE,
        },
        { { { 0.0f, 116.0f, 0.0f }, { 0.0f, 0.0f, 70.0f }, { 0.0f, 0.0f, -70.0f } } },
    },
};

static ColliderTrisInit sTrisInitRutoWall = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_TRIS,
    },
    1,
    sTrisElementInitRutoWall,
};

static ColliderTrisElementInit sTrisElementInitWall[2] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000008, 0x00, 0x00 },
            ATELEM_NONE,
            ACELEM_ON,
            OCELEM_NONE,
        },
        { { { 0.0f, 120.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 60.0f, 0.0f, 0.0f } } },
    },
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0x00000008, 0x00, 0x00 },
            ATELEM_NONE,
            ACELEM_ON,
            OCELEM_NONE,
        },
        { { { 0.0f, 120.0f, 0.0f }, { 60.0f, 0.0f, 0.0f }, { 60.0f, 120.0f, 0.0f } } },
    },
};

static ColliderTrisInit sTrisInitUnusedWall = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_TRIS,
    },
    2,
    sTrisElementInitWall,
};

static ColliderTrisInit sTrisInitStingerWall = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_TRIS,
    },
    2,
    sTrisElementInitWall,
};

static Gfx* sDLists[] = {
    gObjectMizuObjectsBwallDL_001A30, gObjectMizuObjectsBwallDL_002390, gObjectMizuObjectsBwallDL_001CD0,
    gObjectMizuObjectsBwallDL_002090, gObjectMizuObjectsBwallDL_001770,
};
static CollisionHeader* sColHeaders[] = {
    &gObjectMizuObjectsBwallCol_001C58, &gObjectMizuObjectsBwallCol_0025A4, &gObjectMizuObjectsBwallCol_001DE8,
    &gObjectMizuObjectsBwallCol_001DE8, &gObjectMizuObjectsBwallCol_001DE8,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(cullingVolumeScale, 1500, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1100, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 1000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgMizuBwall_RotateVec3f(Vec3f* out, Vec3f* in, f32 sin, f32 cos) {
    out->x = (in->z * sin) + (in->x * cos);
    out->y = in->y;
    out->z = (in->z * cos) - (in->x * sin);
}

void BgMizuBwall_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgMizuBwall* this = (BgMizuBwall*)thisx;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    this->yRot = this->dyna.actor.world.pos.y;
    this->dList = sDLists[PARAMS_GET_U((u16)this->dyna.actor.params, 0, 4)];
    DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS);
    CollisionHeader_GetVirtual(sColHeaders[PARAMS_GET_U((u16)this->dyna.actor.params, 0, 4)], &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

    switch (PARAMS_GET_U((u16)this->dyna.actor.params, 0, 4)) {
        case MIZUBWALL_FLOOR: {
            f32 sin;
            f32 cos;
            s32 i;
            s32 j;
            Vec3f offset;
            Vec3f vtx[3];

            if (Flags_GetSwitch(play, PARAMS_GET_U((u16)this->dyna.actor.params, 8, 6))) {
                DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
                this->dList = NULL;
                this->actionFunc = BgMizuBwall_DoNothing;
            } else {
                Collider_InitTris(play, &this->collider);
                if (!Collider_SetTris(play, &this->collider, &this->dyna.actor, &sTrisInitFloor, this->elements)) {
                    PRINTF("Error : コリジョンデータセット失敗(%s %d)(arg_data 0x%04x)\n", "../z_bg_mizu_bwall.c", 484,
                           this->dyna.actor.params);
                    Actor_Kill(&this->dyna.actor);
                } else {
                    sin = Math_SinS(this->dyna.actor.shape.rot.y);
                    cos = Math_CosS(this->dyna.actor.shape.rot.y);

                    for (i = 0; i < ARRAY_COUNT(sTrisElementInitFloor); i++) {
                        for (j = 0; j < 3; j++) {
                            offset.x = sTrisInitFloor.elements[i].dim.vtx[j].x;
                            offset.y = sTrisInitFloor.elements[i].dim.vtx[j].y;
                            offset.z = sTrisInitFloor.elements[i].dim.vtx[j].z + 2.0f;
                            BgMizuBwall_RotateVec3f(&vtx[j], &offset, sin, cos);
                            vtx[j].x += this->dyna.actor.world.pos.x;
                            vtx[j].y += this->dyna.actor.world.pos.y;
                            vtx[j].z += this->dyna.actor.world.pos.z;
                        }
                        Collider_SetTrisVertices(&this->collider, i, &vtx[0], &vtx[1], &vtx[2]);
                    }
                    this->actionFunc = BgMizuBwall_Idle;
                }
            }
            break;
        }
        case MIZUBWALL_RUTO_ROOM: {
            f32 sin;
            f32 cos;
            s32 i;
            s32 j;
            Vec3f offset;
            Vec3f vtx[3];

            if (Flags_GetSwitch(play, PARAMS_GET_U((u16)this->dyna.actor.params, 8, 6))) {
                DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
                this->dList = NULL;
                this->actionFunc = BgMizuBwall_DoNothing;
            } else {
                Collider_InitTris(play, &this->collider);
                if (!Collider_SetTris(play, &this->collider, &this->dyna.actor, &sTrisInitRutoWall, this->elements)) {
                    PRINTF("Error : コリジョンデータセット失敗(%s %d)(arg_data 0x%04x)\n", "../z_bg_mizu_bwall.c", 558,
                           this->dyna.actor.params);
                    Actor_Kill(&this->dyna.actor);
                } else {
                    sin = Math_SinS(this->dyna.actor.shape.rot.y);
                    cos = Math_CosS(this->dyna.actor.shape.rot.y);

                    for (i = 0; i < ARRAY_COUNT(sTrisElementInitRutoWall); i++) {
                        for (j = 0; j < 3; j++) {
                            offset.x = sTrisInitRutoWall.elements[i].dim.vtx[j].x;
                            offset.y = sTrisInitRutoWall.elements[i].dim.vtx[j].y;
                            offset.z = sTrisInitRutoWall.elements[i].dim.vtx[j].z + 2.0f;
                            BgMizuBwall_RotateVec3f(&vtx[j], &offset, sin, cos);
                            vtx[j].x += this->dyna.actor.world.pos.x;
                            vtx[j].y += this->dyna.actor.world.pos.y;
                            vtx[j].z += this->dyna.actor.world.pos.z;
                        }
                        Collider_SetTrisVertices(&this->collider, i, &vtx[0], &vtx[1], &vtx[2]);
                    }
                    this->actionFunc = BgMizuBwall_Idle;
                }
            }
            break;
        }
        case MIZUBWALL_UNUSED: {
            f32 sin;
            f32 cos;
            s32 i;
            s32 j;
            Vec3f offset;
            Vec3f vtx[3];

            if (Flags_GetSwitch(play, PARAMS_GET_U((u16)this->dyna.actor.params, 8, 6))) {
                DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
                this->dList = NULL;
                this->actionFunc = BgMizuBwall_DoNothing;
            } else {
                Collider_InitTris(play, &this->collider);
                if (!Collider_SetTris(play, &this->collider, &this->dyna.actor, &sTrisInitUnusedWall, this->elements)) {
                    PRINTF("Error : コリジョンデータセット失敗(%s %d)(arg_data 0x%04x)\n", "../z_bg_mizu_bwall.c", 638,
                           this->dyna.actor.params);
                    Actor_Kill(&this->dyna.actor);
                } else {
                    sin = Math_SinS(this->dyna.actor.shape.rot.y);
                    cos = Math_CosS(this->dyna.actor.shape.rot.y);

                    for (i = 0; i < ARRAY_COUNT(sTrisElementInitFloor); i++) {
                        for (j = 0; j < 3; j++) {
                            //! @bug This uses the wrong set of collision triangles, causing the collider to be
                            //!      flat to the ground instead of vertical. It should use sTrisInitUnusedWall.
                            offset.x = sTrisInitFloor.elements[i].dim.vtx[j].x;
                            offset.y = sTrisInitFloor.elements[i].dim.vtx[j].y;
                            offset.z = sTrisInitFloor.elements[i].dim.vtx[j].z;
                            BgMizuBwall_RotateVec3f(&vtx[j], &offset, sin, cos);
                            vtx[j].x += this->dyna.actor.world.pos.x;
                            vtx[j].y += this->dyna.actor.world.pos.y;
                            vtx[j].z += this->dyna.actor.world.pos.z;
                        }
                        Collider_SetTrisVertices(&this->collider, i, &vtx[0], &vtx[1], &vtx[2]);
                    }
                    this->actionFunc = BgMizuBwall_Idle;
                }
            }
            break;
        }
        case MIZUBWALL_STINGER_ROOM_1: {
            f32 sin;
            f32 cos;
            s32 i;
            s32 j;
            Vec3f offset;
            Vec3f vtx[3];

            if (Flags_GetSwitch(play, PARAMS_GET_U((u16)this->dyna.actor.params, 8, 6))) {
                DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
                this->dList = NULL;
                this->actionFunc = BgMizuBwall_DoNothing;
            } else {
                Collider_InitTris(play, &this->collider);
                if (!Collider_SetTris(play, &this->collider, &this->dyna.actor, &sTrisInitStingerWall,
                                      this->elements)) {
                    PRINTF("Error : コリジョンデータセット失敗(%s %d)(arg_data 0x%04x)\n", "../z_bg_mizu_bwall.c", 724,
                           this->dyna.actor.params);
                    Actor_Kill(&this->dyna.actor);
                } else {
                    sin = Math_SinS(this->dyna.actor.shape.rot.y);
                    cos = Math_CosS(this->dyna.actor.shape.rot.y);

                    for (i = 0; i < ARRAY_COUNT(sTrisElementInitFloor); i++) {
                        for (j = 0; j < 3; j++) {
                            //! @bug This uses the wrong set of collision triangles, causing the collider to be
                            //!      flat to the ground instead of vertical. It should use sTrisInitStingerWall.
                            offset.x = sTrisInitFloor.elements[i].dim.vtx[j].x;
                            offset.y = sTrisInitFloor.elements[i].dim.vtx[j].y;
                            offset.z = sTrisInitFloor.elements[i].dim.vtx[j].z + 2.0f;
                            BgMizuBwall_RotateVec3f(&vtx[j], &offset, sin, cos);
                            vtx[j].x += this->dyna.actor.world.pos.x;
                            vtx[j].y += this->dyna.actor.world.pos.y;
                            vtx[j].z += this->dyna.actor.world.pos.z;
                        }
                        Collider_SetTrisVertices(&this->collider, i, &vtx[0], &vtx[1], &vtx[2]);
                    }
                    this->actionFunc = BgMizuBwall_Idle;
                }
            }
            break;
        }
        case MIZUBWALL_STINGER_ROOM_2: {
            f32 sin;
            f32 cos;
            s32 i;
            s32 j;
            Vec3f offset;
            Vec3f vtx[3];

            if (Flags_GetSwitch(play, PARAMS_GET_U((u16)this->dyna.actor.params, 8, 6))) {
                DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
                this->dList = NULL;
                this->actionFunc = BgMizuBwall_DoNothing;
            } else {
                Collider_InitTris(play, &this->collider);
                if (!Collider_SetTris(play, &this->collider, &this->dyna.actor, &sTrisInitStingerWall,
                                      this->elements)) {
                    PRINTF("Error : コリジョンデータセット失敗(%s %d)(arg_data 0x%04x)\n", "../z_bg_mizu_bwall.c", 798,
                           this->dyna.actor.params);
                    Actor_Kill(&this->dyna.actor);
                } else {
                    sin = Math_SinS(this->dyna.actor.shape.rot.y);
                    cos = Math_CosS(this->dyna.actor.shape.rot.y);

                    for (i = 0; i < ARRAY_COUNT(sTrisElementInitFloor); i++) {
                        for (j = 0; j < 3; j++) {
                            //! @bug This uses the wrong set of collision triangles, causing the collider to be
                            //!      flat to the ground instead of vertical. It should use sTrisInitStingerWall.
                            offset.x = sTrisInitFloor.elements[i].dim.vtx[j].x;
                            offset.y = sTrisInitFloor.elements[i].dim.vtx[j].y;
                            offset.z = sTrisInitFloor.elements[i].dim.vtx[j].z + 2.0f;
                            BgMizuBwall_RotateVec3f(&vtx[j], &offset, sin, cos);
                            vtx[j].x += this->dyna.actor.world.pos.x;
                            vtx[j].y += this->dyna.actor.world.pos.y;
                            vtx[j].z += this->dyna.actor.world.pos.z;
                        }
                        Collider_SetTrisVertices(&this->collider, i, &vtx[0], &vtx[1], &vtx[2]);
                    }
                    this->actionFunc = BgMizuBwall_Idle;
                }
            }
            break;
        }
    }
}

void BgMizuBwall_Destroy(Actor* thisx, PlayState* play) {
    s32 pad;
    BgMizuBwall* this = (BgMizuBwall*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    Collider_DestroyTris(play, &this->collider);
}

void BgMizuBwall_SetAlpha(BgMizuBwall* this, PlayState* play) {
    WaterBox* waterBoxes = play->colCtx.colHeader->waterBoxes;
    f32 waterLevel = waterBoxes[2].ySurface;

    if (waterLevel < WATER_TEMPLE_WATER_F1_Y) {
        this->scrollAlpha1 = 255;
    } else if (waterLevel < WATER_TEMPLE_WATER_F2_Y) {
        this->scrollAlpha1 = 255 - (s32)((waterLevel - WATER_TEMPLE_WATER_F1_Y) /
                                         (WATER_TEMPLE_WATER_F2_Y - WATER_TEMPLE_WATER_F1_Y) * (255 - 160));
    } else {
        this->scrollAlpha1 = 160;
    }

    if (waterLevel < WATER_TEMPLE_WATER_F2_Y) {
        this->scrollAlpha2 = 255;
    } else if (waterLevel < WATER_TEMPLE_WATER_F3_Y) {
        this->scrollAlpha2 = 255 - (s32)((waterLevel - WATER_TEMPLE_WATER_F2_Y) /
                                         (WATER_TEMPLE_WATER_F3_Y - WATER_TEMPLE_WATER_F2_Y) * (255 - 160));
    } else {
        this->scrollAlpha2 = 160;
    }

    if (waterLevel < WATER_TEMPLE_WATER_B1_Y) {
        this->scrollAlpha3 = 255;
    } else if (waterLevel < WATER_TEMPLE_WATER_F1_Y) {
        this->scrollAlpha3 = 255 - (s32)((waterLevel - WATER_TEMPLE_WATER_B1_Y) /
                                         (WATER_TEMPLE_WATER_F1_Y - WATER_TEMPLE_WATER_B1_Y) * (255 - 160));
    } else {
        this->scrollAlpha3 = 160;
    }

    this->scrollAlpha4 = this->scrollAlpha3;
}

void BgMizuBwall_SpawnDebris(BgMizuBwall* this, PlayState* play) {
    s32 i;
    s32 pad;
    s16 rand1;
    s16 rand2;
    Vec3f* thisPos = &this->dyna.actor.world.pos;
    Vec3f debrisPos;
    f32 tempx;
    f32 tempz;
    f32 sin = Math_SinS(this->dyna.actor.shape.rot.y);
    f32 cos = Math_CosS(this->dyna.actor.shape.rot.y);
    Vec3f debrisOffsets[15];

    for (i = 0; i < ARRAY_COUNT(debrisOffsets); i++) {
        switch (PARAMS_GET_U((u16)this->dyna.actor.params, 0, 4)) {
            case MIZUBWALL_FLOOR:
                debrisOffsets[i].x = (Rand_ZeroOne() * 80.0f) - 40.0f;
                debrisOffsets[i].y = Rand_ZeroOne() * 0;
                debrisOffsets[i].z = (Rand_ZeroOne() * 80.0f) - 40.0f;
                break;
            case MIZUBWALL_RUTO_ROOM:
                debrisOffsets[i].x = Rand_ZeroOne() * 0;
                debrisOffsets[i].y = Rand_ZeroOne() * 100.0f;
                debrisOffsets[i].z = (Rand_ZeroOne() * 80.0f) - 40.0f;
                break;
            case MIZUBWALL_UNUSED:
            case MIZUBWALL_STINGER_ROOM_1:
            default:
                debrisOffsets[i].x = (Rand_ZeroOne() * 120) - 60.0f;
                debrisOffsets[i].y = Rand_ZeroOne() * 120;
                debrisOffsets[i].z = Rand_ZeroOne() * 0;
                break;
        }
    }

    for (i = 0; i < ARRAY_COUNT(debrisOffsets); i++) {
        tempx = debrisOffsets[i].x;
        tempz = debrisOffsets[i].z;

        debrisPos.x = thisPos->x + tempz * sin + tempx * cos;
        debrisPos.y = thisPos->y + debrisOffsets[i].y;
        debrisPos.z = thisPos->z + tempz * cos - tempx * sin;

        rand1 = (s16)(Rand_ZeroOne() * 120.0f) + 20;
        rand2 = (s16)(Rand_ZeroOne() * 240.0f) + 20;
        func_80033480(play, &debrisPos, 50.0f, 2, rand1, rand2, 0);
        Actor_Spawn(&play->actorCtx, play, ACTOR_EN_A_OBJ, debrisPos.x, debrisPos.y, debrisPos.z, 0, 0, 0, 0xB);
    }
}

void BgMizuBwall_Idle(BgMizuBwall* this, PlayState* play) {
    BgMizuBwall_SetAlpha(this, play);
    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        Flags_SetSwitch(play, PARAMS_GET_U((u16)this->dyna.actor.params, 8, 6));
        this->breakTimer = 1;
        DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
        this->dList = NULL;
        BgMizuBwall_SpawnDebris(this, play);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_WALL_BROKEN);
        Audio_PlaySfxGeneral(NA_SE_SY_CORRECT_CHIME, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        this->actionFunc = BgMizuBwall_Break;
    } else if (this->dyna.actor.xzDistToPlayer < 600.0f) {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
    }
}

void BgMizuBwall_Break(BgMizuBwall* this, PlayState* play) {
    if (this->breakTimer > 0) {
        this->breakTimer--;
    } else {
        this->actionFunc = BgMizuBwall_DoNothing;
    }
}

void BgMizuBwall_DoNothing(BgMizuBwall* this, PlayState* play) {
}

void BgMizuBwall_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    BgMizuBwall* this = (BgMizuBwall*)thisx;

    this->actionFunc(this, play);
}

void BgMizuBwall_Draw(Actor* thisx, PlayState* play2) {
    BgMizuBwall* this = (BgMizuBwall*)thisx;
    PlayState* play = play2;
    u32 frames;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_mizu_bwall.c", 1095);
    frames = play->gameplayFrames;

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, 1 * frames, 0, 0x20, 0x20, 1, 0, 0, 0x20,
                                        0x20, 0, 0, 0, this->scrollAlpha1));
    gSPSegment(POLY_OPA_DISP++, 0x09,
               Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, 1 * frames, 0, 0x20, 0x20, 1, 0, 0, 0x20,
                                        0x20, 0, 0, 0, this->scrollAlpha2));
    gSPSegment(POLY_OPA_DISP++, 0x0A,
               Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, 1 * frames, 0, 0x20, 0x20, 1, 0, 0, 0x20,
                                        0x20, 0, 0, 0, this->scrollAlpha3));
    gSPSegment(POLY_OPA_DISP++, 0x0B,
               Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, 3 * frames, 0, 0x20, 0x20, 1, 0, 0, 0x20,
                                        0x20, 0, 0, 0, this->scrollAlpha4));
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_mizu_bwall.c", 1129);

    if (this->dList != NULL) {
        gSPDisplayList(POLY_OPA_DISP++, this->dList);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_mizu_bwall.c", 1136);
}
