/*
 * File: z_en_river_sound.c
 * Overlay: ovl_En_River_Sound
 * Description: Ambient Sound Effects
 */

#include "z_en_river_sound.h"

#define FLAGS 0x00000030

#define THIS ((EnRiverSound*)thisx)

void EnRiverSound_Init(Actor* thisx, GlobalContext* globalCtx);
void EnRiverSound_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnRiverSound_Update(Actor* thisx, GlobalContext* globalCtx);
void EnRiverSound_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_River_Sound_InitVars = {
    ACTOR_EN_RIVER_SOUND,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnRiverSound),
    (ActorFunc)EnRiverSound_Init,
    (ActorFunc)EnRiverSound_Destroy,
    (ActorFunc)EnRiverSound_Update,
    (ActorFunc)EnRiverSound_Draw,
};

void EnRiverSound_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnRiverSound* this = THIS;

    this->unk_14C = 0;
    this->pathIndex = (this->actor.params >> 8) & 0xFF;
    this->actor.params = this->actor.params & 0xFF;

    if (this->actor.params >= 248) {
        func_800F4870(this->actor.params - 248);
        Actor_Kill(&this->actor);
    } else if (this->actor.params == 247) {
        func_800F6FB4(4);
        Actor_Kill(&this->actor);
    } else if (this->actor.params == 12) {
        if (!CHECK_QUEST_ITEM(QUEST_SONG_LULLABY) || CHECK_QUEST_ITEM(QUEST_SONG_SARIA)) {
            Actor_Kill(&this->actor);
        }
    }
}

void EnRiverSound_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnRiverSound* this = THIS;

    if (this->actor.params == 12) {
        func_800F50EC(&this->actor.projectedPos);
    } else if (this->actor.params == 13) {
        func_800F5504();
    }
}

#ifdef NON_MATCHING
// If anyone wants to try and figure this shit out, be my guest. I'm done.
s32 func_80AE6A54(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3) {
    Vec3f sp2C;
    Vec3f sp20;
    Vec3f sp14;
    f32 f;
    f32 g;
    f32 h;

    sp20.x = arg0->x - arg2->x;
    sp20.y = arg0->y - arg2->y;
    sp20.z = arg0->z - arg2->z;

    sp14.x = arg1->x - arg2->x;
    sp14.y = arg1->y - arg2->y;
    sp14.z = arg1->z - arg2->z;

    sp2C.x = sp14.x - sp20.x;
    sp2C.y = sp14.y - sp20.y;
    sp2C.z = sp14.z - sp20.z;

    f = sp20.z * sp2C.z + (sp2C.x * sp20.x + sp2C.y * sp20.y);
    g = sp14.z * sp2C.z + (sp2C.x * sp14.x + sp2C.y * sp14.y);
    h = sp2C.z * sp2C.z + (sp2C.x * sp2C.x + sp2C.y * sp2C.y);

    if (g * f < 0) {
        arg3->x = sp2C.x * (-f / h) + arg0->x;
        arg3->y = sp2C.y * (-f / h) + arg0->y;
        arg3->z = sp2C.z * (-f / h) + arg0->z;

        return 1;
    } else {
        return 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_River_Sound/func_80AE6A54.s")
#endif

s32 func_80AE6BC0(Vec3s* points, s32 numPoints, Vec3f* pos, Vec3f* res) {
    s32 i;
    s32 pointIdx;
    s32 sp78[2] = { 0, 0 };
    Vec3f pointLoc;
    Vec3f sp60;
    Vec3f sp54;
    Vec3f vec;
    f32 pointDist = 10000.0f;
    Vec3s* point;

    for (i = 0; i < numPoints; i++) {
        f32 d;
        vec.x = points[i].x;
        vec.y = points[i].y;
        vec.z = points[i].z;
        d = Math_Vec3f_DistXYZ(pos, &vec);
        if (d < pointDist) {
            pointDist = d;
            pointIdx = i;
        }
    }
    if (pointDist >= 10000.0f) {
        return 0;
    }

    point = &points[pointIdx];
    pointLoc.x = point->x;
    pointLoc.y = point->y;
    pointLoc.z = point->z;
    if (pointIdx != 0) {
        vec.x = point[-1].x;
        vec.y = point[-1].y;
        vec.z = point[-1].z;
        sp78[0] = func_80AE6A54(&vec, &pointLoc, pos, &sp54);
    }
    if (pointIdx + 1 != numPoints) {
        vec.x = point[1].x;
        vec.y = point[1].y;
        vec.z = point[1].z;
        sp78[1] = func_80AE6A54(&pointLoc, &vec, pos, &sp60);
    }

    if (sp78[0] && sp78[1]) {
        if (!func_80AE6A54(&sp54, &sp60, pos, res)) {
            res->x = (sp54.x + sp60.x) * 0.5f;
            res->y = (sp54.y + sp60.y) * 0.5f;
            res->z = (sp54.z + sp60.z) * 0.5f;
        }
    } else if (sp78[0]) {
        res->x = sp54.x;
        res->y = sp54.y;
        res->z = sp54.z;
    } else if (sp78[1]) {
        res->x = sp60.x;
        res->y = sp60.y;
        res->z = sp60.z;
    } else {
        res->x = pointLoc.x;
        res->y = pointLoc.y;
        res->z = pointLoc.z;
    }

    return 1;
}

void EnRiverSound_Update(Actor* thisx, GlobalContext* globalCtx) {
    Path* path;
    Vec3f* pos;
    Player* player = PLAYER;
    EnRiverSound* this = THIS;
    s32 sp34;

    if (thisx->params == 0 || thisx->params == 4 || thisx->params == 5) {
        path = &globalCtx->setupPathList[this->pathIndex];
        pos = &thisx->world.pos;

        if (func_80AE6BC0(SEGMENTED_TO_VIRTUAL(path->points), path->count, &player->actor.world.pos, pos)) {
            if (BgCheck_EntityRaycastFloor4(&globalCtx->colCtx, &thisx->floorPoly, &sp34, thisx, pos) !=
                BGCHECK_Y_MIN) {
                this->unk_14D = SurfaceType_GetConveyorSpeed(&globalCtx->colCtx, thisx->floorPoly, sp34);
            } else {
                this->unk_14D = 0;
            }

            if (this->unk_14D == 0) {
                if (thisx->params == 4) {
                    this->unk_14D = 0;
                } else if (thisx->params == 0) {
                    this->unk_14D = 1;
                } else {
                    this->unk_14D = 2;
                }
            } else {
                this->unk_14D--;
                this->unk_14D = CLAMP_MAX(this->unk_14D, 2);
            }
        }
    } else if (thisx->params == 13 || thisx->params == 19) {
        func_8002DBD0(&player->actor, &thisx->home.pos, &thisx->world.pos);
    } else if (globalCtx->sceneNum == SCENE_DDAN_BOSS && Flags_GetClear(globalCtx, thisx->room)) {
        Actor_Kill(thisx);
    }
}

void EnRiverSound_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnRiverSound* this = THIS;

    static s16 D_80AE71F8[] = {
        0,
        NA_SE_EV_WATER_WALL - SFX_FLAG,
        NA_SE_EV_MAGMA_LEVEL - SFX_FLAG,
        NA_SE_EV_WATER_WALL_BIG - SFX_FLAG,
        0,
        0,
        NA_SE_EV_MAGMA_LEVEL_M - SFX_FLAG,
        NA_SE_EV_MAGMA_LEVEL_L - SFX_FLAG,
        NA_SE_EV_WATERDROP - SFX_FLAG,
        NA_SE_EV_FOUNTAIN - SFX_FLAG,
        NA_SE_EV_CROWD - SFX_FLAG,
        0,
        NA_SE_EV_SARIA_MELODY - SFX_FLAG,
        0,
        NA_SE_EV_SAND_STORM - SFX_FLAG,
        NA_SE_EV_WATER_BUBBLE - SFX_FLAG,
        NA_SE_EV_KENJA_ENVIROMENT_0 - SFX_FLAG,
        NA_SE_EV_KENJA_ENVIROMENT_1 - SFX_FLAG,
        NA_SE_EV_EARTHQUAKE - SFX_FLAG,
        0,
        NA_SE_EV_TORCH - SFX_FLAG,
        NA_SE_EV_COW_CRY_LV - SFX_FLAG,
    };
    static f32 D_80AE7224[] = { 0.7f, 1.0f, 1.4f };

    if (this->unk_14C == 0) {
        this->unk_14C = 1;
    } else if (this->actor.params == 0 || this->actor.params == 4 || this->actor.params == 5) {
        func_800F4634(&this->actor.projectedPos, D_80AE7224[this->unk_14D]);
    } else if (this->actor.params == 11) {
        func_800F4A54(90);
    } else if (this->actor.params == 12) {
        func_800F4E30(&this->actor.projectedPos, this->actor.xzDistToPlayer);
    } else if (this->actor.params == 13) {
        func_800F52A0(&this->actor.home, 62, 1000);
    } else if (this->actor.params == 19) {
        func_800F52A0(&this->actor.home, 40, 800);
    } else if (this->actor.params == 14 || this->actor.params == 16 || this->actor.params == 17 ||
               this->actor.params == 18) {
        func_800788CC(D_80AE71F8[this->actor.params]);
    } else {
        Audio_PlayActorSound2(&this->actor, D_80AE71F8[this->actor.params]);
    }
}
