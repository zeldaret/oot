/*
 * File: z_en_river_sound.c
 * Overlay: ovl_En_River_Sound
 * Description: Ambient Sound Effects
 */

#include "z_en_river_sound.h"

#define FLAGS 0x00000030

#define THIS ((EnRiverSound*)thisx)

void func_800F4634(Vec3f*, f32);
void func_800F4870(u8);
void func_800F4E30(Vec3f*, f32);

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
    /**
     * Params format:
     *     0xPPBB
     *     P: Sence path index
     *     B: Behavior
    **/

    THIS->b_14C = 0;
    THIS->pathIndex = (thisx->params >> 8) & 0xFF;
    thisx->params = thisx->params & 0xFF;

    if (thisx->params >= 248) {
        func_800F4870(thisx->params - 248);
        Actor_Kill(thisx);
    } else if (thisx->params == 247) {
        func_800F6FB4(4);
        Actor_Kill(thisx);
    } else if (thisx->params == 12) {
        u32 q = gSaveContext.inventory.questItems;
        if (!(gBitFlags[12] & q) || (gBitFlags[14] & q))
            Actor_Kill(thisx);
    }
}

void EnRiverSound_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    if (thisx->params == 12)
        func_800F50EC(&thisx->projectedPos);
    else if (thisx->params == 13)
        func_800F5504();
}

#if defined(NON_MATCHING)
/*
 * If anyone wants to try and figure this shit out, be my guest. I'm done.
 */
s32 func_80AE6A54(Vec3f* a0, Vec3f* a1, Vec3f* a2, Vec3f* a3) {
    Vec3f sp_2C;
    Vec3f sp_20;
    Vec3f sp_14;
    f32 f;
    f32 g;
    f32 h;

    sp_20.x = a0->x - a2->x;
    sp_20.y = a0->y - a2->y;
    sp_20.z = a0->z - a2->z;

    sp_14.x = a1->x - a2->x;
    sp_14.y = a1->y - a2->y;
    sp_14.z = a1->z - a2->z;

    sp_2C.x = sp_14.x - sp_20.x;
    sp_2C.y = sp_14.y - sp_20.y;
    sp_2C.z = sp_14.z - sp_20.z;

    f = sp_20.z * sp_2C.z + (sp_2C.x * sp_20.x + sp_2C.y * sp_20.y);
    g = sp_14.z * sp_2C.z + (sp_2C.x * sp_14.x + sp_2C.y * sp_14.y);
    h = sp_2C.z * sp_2C.z + (sp_2C.x * sp_2C.x + sp_2C.y * sp_2C.y);

    if (g * f < 0) {
        a3->x = sp_2C.x * (-f / h) + a0->x;
        a3->y = sp_2C.y * (-f / h) + a0->y;
        a3->z = sp_2C.z * (-f / h) + a0->z;

        return 1;
    } else {
        return 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_River_Sound/func_80AE6A54.s")
#endif

s32 func_80AE6BC0(Vec3s* points, s32 num_points, Vec3f* pos, Vec3f* res) {
    s32 i;
    s32 point_idx;
    s32 sp_78[2] = { 0, 0 };
    Vec3f point_loc;
    Vec3f sp_60;
    Vec3f sp_54;
    Vec3f vec;
    f32 point_dist = 10000.f;
    Vec3s* point;

    for (i = 0; i < num_points; i++) {
        f32 d;
        vec.x = points[i].x;
        vec.y = points[i].y;
        vec.z = points[i].z;
        d = Math_Vec3f_DistXYZ(pos, &vec);
        if (d < point_dist) {
            point_dist = d;
            point_idx = i;
        }
    }
    if (point_dist >= 10000.f)
        return 0;

    point = &points[point_idx];
    point_loc.x = point->x;
    point_loc.y = point->y;
    point_loc.z = point->z;
    if (point_idx != 0) {
        vec.x = point[-1].x;
        vec.y = point[-1].y;
        vec.z = point[-1].z;
        sp_78[0] = func_80AE6A54(&vec, &point_loc, pos, &sp_54);
    }
    if (point_idx + 1 != num_points) {
        vec.x = point[1].x;
        vec.y = point[1].y;
        vec.z = point[1].z;
        sp_78[1] = func_80AE6A54(&point_loc, &vec, pos, &sp_60);
    }

    if (sp_78[0] && sp_78[1]) {
        if (!func_80AE6A54(&sp_54, &sp_60, pos, res)) {
            res->x = (sp_54.x + sp_60.x) * .5f;
            res->y = (sp_54.y + sp_60.y) * .5f;
            res->z = (sp_54.z + sp_60.z) * .5f;
        }
    } else if (sp_78[0]) {
        res->x = sp_54.x;
        res->y = sp_54.y;
        res->z = sp_54.z;
    } else if (sp_78[1]) {
        res->x = sp_60.x;
        res->y = sp_60.y;
        res->z = sp_60.z;
    } else {
        res->x = point_loc.x;
        res->y = point_loc.y;
        res->z = point_loc.z;
    }

    return 1;
}

void EnRiverSound_Update(Actor* thisx, GlobalContext* globalCtx) {
    Path* path;
    Vec3f* pos;
    Actor* player = &PLAYER->actor;
    CollisionContext* colCtx;
    s32 sp_34;

    if (thisx->params == 0 || thisx->params == 4 || thisx->params == 5) {
        path = &globalCtx->setupPathList[THIS->pathIndex];
        pos = &thisx->world.pos;

        if (func_80AE6BC0(SEGMENTED_TO_VIRTUAL(path->points), path->count, &player->world.pos, pos)) {
            colCtx = &globalCtx->colCtx;

            if (BgCheck_EntityRaycastFloor4(colCtx, &thisx->floorPoly, &sp_34, thisx, pos) != -32000.f)
                THIS->b_14D = SurfaceType_GetConveyorSpeed(colCtx, thisx->floorPoly, sp_34);
            else
                THIS->b_14D = 0;

            if (THIS->b_14D == 0) {
                if (thisx->params == 4)
                    THIS->b_14D = 0;
                else if (thisx->params == 0)
                    THIS->b_14D = 1;
                else
                    THIS->b_14D = 2;
            } else {
                THIS->b_14D--;
                THIS->b_14D = CLAMP_MAX(THIS->b_14D, 2);
            }
        }
    } else if (thisx->params == 13 || thisx->params == 19)
        func_8002DBD0(player, &thisx->home.pos, &thisx->world.pos);
    else if (globalCtx->sceneNum == SCENE_DDAN_BOSS && Flags_GetClear(globalCtx, thisx->room))
        Actor_Kill(thisx);
}

void EnRiverSound_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static s16 D_80AE71F8[] = {
        0x0000, 0x2028, 0x200B, 0x2007, 0x0000, 0x0000, 0x2032, 0x203B, 0x2030, 0x2041, 0x205D,
        0x0000, 0x20A6, 0x0000, 0x20C0, 0x20CA, 0x20D6, 0x20D7, 0x2098, 0x0000, 0x2031, 0x20E5,
    };
    static f32 D_80AE7224[] = {
        0.7f,
        1.0f,
        1.4f,
    };

    if (THIS->b_14C == 0)
        THIS->b_14C = 1;
    else if (thisx->params == 0 || thisx->params == 4 || thisx->params == 5)
        func_800F4634(&thisx->projectedPos, D_80AE7224[THIS->b_14D]);
    else if (thisx->params == 11)
        func_800F4A54(90);
    else if (thisx->params == 12)
        func_800F4E30(&thisx->projectedPos, thisx->xzDistToPlayer);
    else if (thisx->params == 13)
        func_800F52A0(&thisx->home, 62, 1000);
    else if (thisx->params == 19)
        func_800F52A0(&thisx->home, 40, 800);
    else if (thisx->params == 14 || thisx->params == 16 || thisx->params == 17 || thisx->params == 18)
        func_800788CC(D_80AE71F8[thisx->params]);
    else
        Audio_PlayActorSound2(thisx, D_80AE71F8[thisx->params]);
}
