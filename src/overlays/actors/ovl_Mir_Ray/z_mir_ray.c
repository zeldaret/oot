/*
 * File: z_mir_ray.c
 * Overlay: ovl_Mir_Ray
 * Description: Reflectable Light Beam
 */

#include "z_mir_ray.h"

#include "libu64/debug.h"
#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "printf.h"
#include "sfx.h"
#include "sys_math3d.h"
#include "sys_matrix.h"
#include "translation.h"
#include "z_lib.h"
#include "light.h"
#include "play_state.h"
#include "player.h"

#include "assets/objects/object_mir_ray/object_mir_ray.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void MirRay_Init(Actor* thisx, PlayState* play);
void MirRay_Destroy(Actor* thisx, PlayState* play);
void MirRay_Update(Actor* thisx, PlayState* play);
void MirRay_Draw(Actor* thisx, PlayState* play);

typedef struct struct_80B8D8A0 {
    /* 0x00 */ Vec3f reflectionPos;
    /* 0x0C */ MtxF reflectionTransform;
    /* 0x4C */ CollisionPoly* unk4C;
    /* 0x50 */ u8 unk50;
} struct_80B8D8A0; // size = 0x54

s32 MirRay_IsInConeFrustum(Vec3f* centerTop, Vec3f* centerBase, f32 x, f32 y, f32 z, s16 radiusTop, s16 radiusBase);

ActorProfile Mir_Ray_Profile = {
    /**/ ACTOR_MIR_RAY,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_MIR_RAY,
    /**/ sizeof(MirRay),
    /**/ MirRay_Init,
    /**/ MirRay_Destroy,
    /**/ MirRay_Update,
    /**/ MirRay_Draw,
};

static u8 D_80B8E670 = false;
static ColliderQuadInit D_80B8E674 = {
    { 0xA, 9, 0, 0, 0, 3 },
    { 0, { 0x200000, 0, 0 }, { 0xFFCFFFFF, 0, 0 }, 1, 0, 0 },
    { {
        { 0.0f, 0.0f, 0.0f },
        { 0.0f, 0.0f, 0.0f },
        { 0.0f, 0.0f, 0.0f },
        { 0.0f, 0.0f, 0.0f },
    } },
};
static ColliderJntSphElementInit D_80B8E6C4[1] = {
    {
        { 0, { 0x200000, 0, 0 }, { 0, 0, 0 }, 1, 0, 0 },
        { 0, { { 0, 0, 0 }, 0x32 }, 0x64 },
    },
};
static ColliderJntSphInit D_80B8E6E8 = { { 0xA, 9, 0, 0, 0, 0 }, 1, D_80B8E6C4 };
typedef struct struct_80B8E6F8 {
    /* 0x00 */ Vec3s coneFrustumCenterTop;
    /* 0x06 */ Vec3s coneFrustumCenterBase;
    /* 0x0C */ s16 coneFrustumRadiusTop;
    /* 0x0E */ s16 coneFrustumRadiusBase;
    /* 0x10 */ f32 unk10_sphereColliderPosRatioTowardsBase;
    /* 0x14 */ s16 unk14_sphereColliderRadiusModel;
    /* 0x16 */ s16 unk16_pointLightRadius;
    /* 0x18 */ f32 unk18_pointLightPosRatio;
    /* 0x1C */ Color_RGB8 unk1C_lightColor;
#define UNK1F_0 (1 << 0)
#define UNK1F_1 (1 << 1)
#define UNK1F_2 (1 << 2)
#define UNK1F_POINTLIGHTPOS_TO_PLAYER (1 << 3)
    /* 0x1F */ u8 unk1F;
} struct_80B8E6F8;
static struct_80B8E6F8 D_80B8E6F8[0xA] = {
    {
        { -1160, 686, -880 },
        { -920, 480, -889 },
        30,
        50,
        1.0f,
        50,
        150,
        0.8f,
        { 255, 255, 255 },
        UNK1F_1,
    },
    {
        { -1856, 1092, -190 },
        { -1703, 841, -186 },
        30,
        70,
        0.88f,
        54,
        150,
        0.8f,
        { 255, 255, 255 },
        UNK1F_1,
    },
    {
        { 1367, 738, -860 },
        { 1091, 476, -860 },
        30,
        85,
        0.0f,
        0,
        150,
        0.8f,
        { 255, 255, 255 },
        0,
    },
    {
        { 2200, 1103, -220 },
        { 2040, 843, -220 },
        30,
        60,
        0.0f,
        0,
        150,
        0.8f,
        { 255, 255, 255 },
        UNK1F_0,
    },
    {
        { -560, 2169, -310 },
        { -560, 1743, -310 },
        30,
        70,
        0.0f,
        0,
        150,
        0.8f,
        { 255, 255, 255 },
        0,
    },
    {
        { 60, 1802, -1090 },
        { 60, 973, -1090 },
        30,
        70,
        0.0f,
        0,
        150,
        0.9f,
        { 255, 255, 255 },
        UNK1F_0 | UNK1F_2 | UNK1F_POINTLIGHTPOS_TO_PLAYER,
    },
    {
        { 1140, 480, -860 },
        { 1140, 480, -860 },
        30,
        30,
        1.0f,
        10,
        100,
        0.9f,
        { 255, 255, 255 },
        UNK1F_1 | UNK1F_2 | UNK1F_POINTLIGHTPOS_TO_PLAYER,
    },
    {
        { -560, 1743, -310 },
        { -560, 1743, -310 },
        30,
        30,
        0.0f,
        0,
        100,
        0.94f,
        { 255, 255, 255 },
        UNK1F_2 | UNK1F_POINTLIGHTPOS_TO_PLAYER,
    },
    {
        { 60, 1743, -310 },
        { 60, 1743, -310 },
        30,
        30,
        0.0f,
        0,
        100,
        0.94f,
        { 255, 255, 255 },
        UNK1F_2 | UNK1F_POINTLIGHTPOS_TO_PLAYER,
    },
    {
        { -1174, 448, 1194 },
        { -1174, 148, 1194 },
        50,
        100,
        1.0f,
        50,
        150,
        0.8f,
        { 255, 255, 255 },
        UNK1F_0 | UNK1F_1,
    },
};
static InitChainEntry D_80B8E838[] = {
    ICHAIN_VEC3F_DIV1000(scale, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1000, ICHAIN_STOP),
};

void MirRay_UpdateColliderSphereShape(MirRay* this) {
    Vec3f vec;
    struct_80B8E6F8* temp_v0;
    ColliderJntSphElement* new_var;

    temp_v0 = &D_80B8E6F8[this->actor.params];
    vec.x = (this->coneFrustumCenterBase.x - this->coneFrustumCenterTop.x) *
            temp_v0->unk10_sphereColliderPosRatioTowardsBase;
    vec.y = (this->coneFrustumCenterBase.y - this->coneFrustumCenterTop.y) *
            temp_v0->unk10_sphereColliderPosRatioTowardsBase;
    vec.z = (this->coneFrustumCenterBase.z - this->coneFrustumCenterTop.z) *
            temp_v0->unk10_sphereColliderPosRatioTowardsBase;
    this->unk14C.elements[0].dim.worldSphere.center.x = this->coneFrustumCenterTop.x + vec.x;
    this->unk14C.elements[0].dim.worldSphere.center.y = this->coneFrustumCenterTop.y + vec.y;
    this->unk14C.elements[0].dim.worldSphere.center.z = this->coneFrustumCenterTop.z + vec.z;
    new_var = &this->unk14C.elements[0];
    new_var->dim.worldSphere.radius = temp_v0->unk14_sphereColliderRadiusModel * new_var->dim.scale;
}

void MirRay_UpdateLight(MirRay* this, PlayState* play) {
    Player* player;
    struct_80B8E6F8* temp_s1;
    Vec3f sp44;
    Vec3s pointLightPos;

    player = GET_PLAYER(play);
    temp_s1 = &D_80B8E6F8[this->actor.params];
    if (MirRay_IsInConeFrustum(&this->coneFrustumCenterTop, &this->coneFrustumCenterBase, player->actor.world.pos.x,
                               player->actor.world.pos.y + 30.0f, player->actor.world.pos.z, this->coneFrustumRadiusTop,
                               this->coneFrustumRadiusBase)) {
        if (temp_s1->unk1F & UNK1F_POINTLIGHTPOS_TO_PLAYER) {
            Math_Vec3f_Diff(&player->actor.world.pos, &this->coneFrustumCenterTop, &sp44);
        } else {
            Math_Vec3f_Diff(&this->coneFrustumCenterBase, &this->coneFrustumCenterTop, &sp44);
        }
        pointLightPos.x = (temp_s1->unk18_pointLightPosRatio * sp44.x) + this->coneFrustumCenterTop.x;
        pointLightPos.y = (temp_s1->unk18_pointLightPosRatio * sp44.y) + this->coneFrustumCenterTop.y;
        pointLightPos.z = (temp_s1->unk18_pointLightPosRatio * sp44.z) + this->coneFrustumCenterTop.z;
        Math_StepToS(&this->pointLightRadius, temp_s1->unk16_pointLightRadius, 6);
        Lights_PointNoGlowSetInfo(&this->lightInfo, pointLightPos.x, pointLightPos.y, pointLightPos.z,
                                  temp_s1->unk1C_lightColor.r, temp_s1->unk1C_lightColor.g, temp_s1->unk1C_lightColor.b,
                                  this->pointLightRadius);
    } else {
        Math_StepToS(&this->pointLightRadius, 0, 6);
        Lights_PointSetColorAndRadius(&this->lightInfo, temp_s1->unk1C_lightColor.r, temp_s1->unk1C_lightColor.g,
                                      temp_s1->unk1C_lightColor.b, this->pointLightRadius);
    }
}

void MirRay_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    struct_80B8E6F8* temp_s1;
    MirRay* this = (MirRay*)thisx;

    temp_s1 = &D_80B8E6F8[this->actor.params];
    Actor_ProcessInitChain(&this->actor, D_80B8E838);
    ActorShape_Init(&this->actor.shape, 0.0f, NULL, 0.0f);
    PRINTF("反射用 光の発生!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
#if DEBUG_FEATURES
    LogUtils_LogThreadId("../z_mir_ray.c", 518);
    PRINTF("this->actor.arg_data = %d\n", this->actor.params);
#endif
    if (this->actor.params >= ARRAY_COUNT(D_80B8E6F8)) {
        LOG_STRING("反射光 発生失敗", "../z_mir_ray.c", 521);
        Actor_Kill(&this->actor);
    }
    this->coneFrustumCenterTop.x = temp_s1->coneFrustumCenterTop.x;
    this->coneFrustumCenterTop.y = temp_s1->coneFrustumCenterTop.y;
    this->coneFrustumCenterTop.z = temp_s1->coneFrustumCenterTop.z;
    this->coneFrustumRadiusTop = temp_s1->coneFrustumRadiusTop;
    this->coneFrustumCenterBase.x = temp_s1->coneFrustumCenterBase.x;
    this->coneFrustumCenterBase.y = temp_s1->coneFrustumCenterBase.y;
    this->coneFrustumCenterBase.z = temp_s1->coneFrustumCenterBase.z;
    this->coneFrustumRadiusBase = temp_s1->coneFrustumRadiusBase;
    Lights_PointNoGlowSetInfo(&this->lightInfo, this->coneFrustumCenterTop.x, this->coneFrustumCenterTop.y,
                              this->coneFrustumCenterTop.z, 255, 255, 255, 100);
    this->lightNode = LightContext_InsertLight(play, &play->lightCtx, &this->lightInfo);
    this->reflectionOriginModelPositions[0].x = -536.0f;
    this->reflectionOriginModelPositions[0].y = -939.0f;
    this->reflectionOriginModelPositions[1].x = -1690.0f;
    this->reflectionOriginModelPositions[1].y = 0.0f;
    this->reflectionOriginModelPositions[2].x = -536.0f;
    this->reflectionOriginModelPositions[2].y = 938.0f;
    this->reflectionOriginModelPositions[3].x = 921.0f;
    this->reflectionOriginModelPositions[3].y = 0.0f;
    this->reflectionOriginModelPositions[4].x = 758.0f;
    this->reflectionOriginModelPositions[4].y = 800.0f;
    this->reflectionOriginModelPositions[5].x = 758.0f;
    this->reflectionOriginModelPositions[5].y = -800.0f;
    if (temp_s1->unk1F & UNK1F_1) {
        Collider_InitJntSph(play, &this->unk14C);
        Collider_SetJntSph(play, &this->unk14C, &this->actor, &D_80B8E6E8, &this->unk16C);
        if (!(temp_s1->unk1F & UNK1F_2)) {
            MirRay_UpdateColliderSphereShape(this);
        }
    }
    Collider_InitQuad(play, &this->unk1AC);
    Collider_SetQuad(play, &this->unk1AC, &this->actor, &D_80B8E674);
    if ((this->actor.params == 5) || (this->actor.params == 7) || (this->actor.params == 8)) {
        this->actor.room = -1;
    }
}

void MirRay_Destroy(Actor* thisx, PlayState* play) {
    MirRay* this = (MirRay*)thisx;

    LightContext_RemoveLight(play, &play->lightCtx, this->lightNode);
    if (D_80B8E6F8[this->actor.params].unk1F & UNK1F_1) {
        Collider_DestroyJntSph(play, &this->unk14C);
    }
    Collider_DestroyQuad(play, &this->unk1AC);
}

void MirRay_Update(Actor* thisx, PlayState* play) {
    s32 pad[2];
    Player* player;
    MirRay* this = (MirRay*)thisx;

    player = GET_PLAYER(play);
    D_80B8E670 = false;
    if (this->unk2AE == 0) {
        if (D_80B8E6F8[this->actor.params].unk1F & UNK1F_1) {
            if (D_80B8E6F8[this->actor.params].unk1F & UNK1F_2) {
                MirRay_UpdateColliderSphereShape(this);
            }
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk14C.base);
        }
        if (this->lightReflectionFactor > 0.0f) {
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk1AC.base);
        }
        MirRay_UpdateLight(this, play);
        if (this->lightReflectionFactor > 0.0f) {
            Actor_PlaySfx_Flagged2(&player->actor, NA_SE_IT_SHIELD_BEAM - SFX_FLAG);
        }
    }
}

void func_80B8D6F0(MirRay* this, PlayState* play) {
    Vec3f sp4C_lightShineDirection;
    f32 temp_fv0;
    f32 temp_fv0_2;
    f32 temp_fv1_2;
    MtxF* shieldMf;
    Player* player;

    player = GET_PLAYER(play);
    this->lightReflectionFactor = 0.0f;
    shieldMf = &player->shieldMf;
    if (MirRay_IsInConeFrustum(&this->coneFrustumCenterTop, &this->coneFrustumCenterBase, shieldMf->xw, shieldMf->yw,
                               shieldMf->zw, this->coneFrustumRadiusTop, this->coneFrustumRadiusBase)) {
        temp_fv0 = sqrtf(SQ(shieldMf->zz) + (SQ(shieldMf->xz) + SQ(shieldMf->yz)));
        if (temp_fv0 == 0.0f) {
            this->shieldForwardNormalizeFactor = 1.0f;
        } else {
            this->shieldForwardNormalizeFactor = 1.0f / temp_fv0;
        }
        if (D_80B8E6F8[this->actor.params].unk1F & UNK1F_0) {
            this->lightReflectionFactor = 1.0f;
        } else {
            sp4C_lightShineDirection.x = this->coneFrustumCenterBase.x - this->coneFrustumCenterTop.x;
            sp4C_lightShineDirection.y = this->coneFrustumCenterBase.y - this->coneFrustumCenterTop.y;
            sp4C_lightShineDirection.z = this->coneFrustumCenterBase.z - this->coneFrustumCenterTop.z;
            sp4C_lightShineDirection = sp4C_lightShineDirection; //! FAKE
            // The shield's forward direction is -z in model space
            temp_fv1_2 = (-shieldMf->xz * sp4C_lightShineDirection.x) - (shieldMf->yz * sp4C_lightShineDirection.y) -
                         (sp4C_lightShineDirection.z * shieldMf->zz);
            if (temp_fv1_2 < 0.0f) {
                temp_fv0_2 = sqrtf(SQ(sp4C_lightShineDirection.z) +
                                   (SQ(sp4C_lightShineDirection.x) + SQ(sp4C_lightShineDirection.y)));
                if ((temp_fv0 != 0.0f) && (temp_fv0_2 != 0.0f)) {
                    this->lightReflectionFactor = -temp_fv1_2 / (temp_fv0 * temp_fv0_2);
                }
            }
        }
    }
}

void func_80B8D8A0(MirRay* this, PlayState* play, struct_80B8D8A0* arg2) {
    Player* player; // v0
    MtxF* shieldMf; // s0
    s32 i;
    Vec3f reflectionOriginPos; // sp88
    Vec3f reflectionMaxPos;    // sp7C
    Vec3f sp70;                // sp70
    CollisionPoly* sp6C;       // sp6C
    Vec3f forwards;            // sp60

    player = GET_PLAYER(play);
    shieldMf = &player->shieldMf;
    forwards.x = -(shieldMf->xz * this->shieldForwardNormalizeFactor) * this->lightReflectionFactor * 400.0f;
    forwards.y = -(shieldMf->yz * this->shieldForwardNormalizeFactor) * this->lightReflectionFactor * 400.0f;
    forwards.z = -(shieldMf->zz * this->shieldForwardNormalizeFactor) * this->lightReflectionFactor * 400.0f;
    for (i = 0; i < 6; i++) {
        if (!(&forwards) != 0) {} //! FAKE
        //! FAKE (*shieldMf)
        reflectionOriginPos.x = shieldMf->xw + (this->reflectionOriginModelPositions[i].x * shieldMf->xx) +
                                (this->reflectionOriginModelPositions[i].y * (*shieldMf).xy);
        reflectionOriginPos.y = shieldMf->yw + (this->reflectionOriginModelPositions[i].x * shieldMf->yx) +
                                (this->reflectionOriginModelPositions[i].y * (*shieldMf).yy);
        reflectionOriginPos.z = shieldMf->zw + (this->reflectionOriginModelPositions[i].x * shieldMf->zx) +
                                (this->reflectionOriginModelPositions[i].y * (*shieldMf).zy);
        reflectionMaxPos.x = forwards.x + reflectionOriginPos.x;
        reflectionMaxPos.y = forwards.y + reflectionOriginPos.y;
        reflectionMaxPos.z = forwards.z + reflectionOriginPos.z;
        if (BgCheck_AnyLineTest1(&play->colCtx, &reflectionOriginPos, &reflectionMaxPos, &sp70, &sp6C, 1) != 0) {
            arg2[i].unk4C = sp6C;
        } else {
            arg2[i].unk4C = NULL;
        }
    }
}

void func_80B8DA78(struct_80B8D8A0* arg0) {
    s32 i;
    s32 j;

    for (i = 0; i < 6; i++) {
        for (j = i + 1; j < 6; j++) {
            if ((arg0[i].unk4C != NULL) && (arg0[j].unk4C != NULL) &&
                (ABS(arg0[i].unk4C->normal.x - arg0[j].unk4C->normal.x) < 100) &&
                (ABS(arg0[i].unk4C->normal.y - arg0[j].unk4C->normal.y) < 100) &&
                (ABS(arg0[i].unk4C->normal.z - arg0[j].unk4C->normal.z) < 100) &&
                (arg0[i].unk4C->dist == arg0[j].unk4C->dist)) {
                arg0[j].unk4C = NULL;
            }
        }
    }
}

void func_80B8DB7C(MirRay* this, PlayState* play, struct_80B8D8A0* arg2) {
    MirRay* new_var4 = this;
    float new_var2;
    MtxF* shieldMf;             // s1
    Vec3f originPos;            // sp130
    Vec3f inFrontPos;           // sp124
    Vec3f intersect;            // sp118
    Vec3f originPosWithOffset;  // sp10C
    Vec3f inFrontPosWithOffset; // sp100
    Vec3f intersectWithOffset;  // spF4
    Vec3f forwards;             // spE8
    Vec3f spDC;                 // spDC
    Player* player;             // s3

    player = GET_PLAYER(play);
    shieldMf = &player->shieldMf;
    forwards.x = -(shieldMf->xz * this->shieldForwardNormalizeFactor) * this->lightReflectionFactor * 400.0f;
    new_var2 = 100.0f;
    forwards.y = -(shieldMf->yz * this->shieldForwardNormalizeFactor) * new_var4->lightReflectionFactor * 400.0f;
    forwards.z = -(shieldMf->zz * new_var4->shieldForwardNormalizeFactor) * new_var4->lightReflectionFactor * 400.0f;
    // Where the mirror shield is located
    originPos.x = shieldMf->xw;
    originPos.y = shieldMf->yw;
    originPos.z = shieldMf->zw;
    // In front of the mirror shield
    inFrontPos.x = forwards.x + originPos.x;
    inFrontPos.y = forwards.y + originPos.y;
    inFrontPos.z = forwards.z + originPos.z;

    {
        Vec3f upPos;             // spCC
        Vec3f upAndInFrontPos;   // spC0
        s32 i;                   // s2
        struct_80B8D8A0* var_s0; // s0
        float new_var3;
        f32* new_var;
        f32 sp80; // sp80
        s32 pad2;
        f32 temp_fv0;

        // Above the mirror shield origin
        upPos.x = (shieldMf->xx * 300.0f) + originPos.x;
        upPos.y = (shieldMf->yx * 300.0f) + originPos.y;
        upPos.z = (shieldMf->zx * 300.0f) + originPos.z;
        // Above and in front of the origin
        upAndInFrontPos.x = (shieldMf->xx * 300.0f) + inFrontPos.x;
        upAndInFrontPos.y = (shieldMf->yx * 300.0f) + inFrontPos.y;
        upAndInFrontPos.z = (shieldMf->zx * 300.0f) + inFrontPos.z;
        Collider_SetQuadVertices(&this->unk1AC, &upPos, &originPos, &upAndInFrontPos, &inFrontPos);
        for (i = 0; i < 6; i++) {
            new_var = &spDC.x; //! FAKE
            var_s0 = &arg2[i];
            if (var_s0->unk4C != NULL) {
                if (&forwards) {} //! FAKE
                spDC.x = COLPOLY_GET_NORMAL(var_s0->unk4C->normal.x);
                spDC.y = COLPOLY_GET_NORMAL(var_s0->unk4C->normal.y);
                spDC.z = COLPOLY_GET_NORMAL(var_s0->unk4C->normal.z);
                if (Math3D_LineSegVsPlane(*new_var, spDC.y, spDC.z, var_s0->unk4C->dist, &originPos, &inFrontPos,
                                          &intersect, true)) {
                    var_s0->reflectionPos.x = intersect.x;
                    var_s0->reflectionPos.y = intersect.y;
                    var_s0->reflectionPos.z = intersect.z;
                    temp_fv0 = sqrtf(SQ(intersect.x - originPos.x) + SQ(intersect.y - originPos.y) +
                                     SQ(intersect.z - originPos.z));
                    //! @bug temp_fv0 is at most
                    //! norm(sp124_inFront - sp130_origin) = norm(spE8_forwards) = this->lightReflectionFactor * 400
                    //! so this condition always passes. This logic was probably meant to fade the reflections with
                    //! distance. (TODO test in-game)
                    if (temp_fv0 < (this->lightReflectionFactor * 600.0f)) {
                        var_s0->unk50 = 200;
                    } else {
                        var_s0->unk50 = (u8)(s32)(800.0f - temp_fv0);
                    }

                    // The rest of the function computes a transformation that transforms the XY plane (corresponding to
                    // the reflection in model space) into the surface plane. It does so by computing the same
                    // intersection as above but with an offset in the x direction, which gives the transformation for
                    // the x axis, then the same in the y direction.

                    originPosWithOffset.x = (shieldMf->xx * new_var2) + originPos.x;
                    originPosWithOffset.y = (shieldMf->yx * new_var2) + originPos.y;
                    originPosWithOffset.z = (shieldMf->zx * 100.0f) + originPos.z;
                    inFrontPosWithOffset.x = (forwards.x * 4.0f) + originPosWithOffset.x;
                    inFrontPosWithOffset.y = (forwards.y * 4.0f) + originPosWithOffset.y;
                    inFrontPosWithOffset.z = (forwards.z * 4.0f) + originPosWithOffset.z;
                    var_s0->reflectionTransform.xx = var_s0->reflectionTransform.yy = var_s0->reflectionTransform.zz =
                        var_s0->reflectionTransform.ww = 1.0f;

                    //! FAKE
                    sp80 = var_s0->reflectionTransform.zw = 0.0f;
                    new_var3 = var_s0->reflectionTransform.xz = var_s0->reflectionTransform.yz =
                        var_s0->reflectionTransform.wz = var_s0->reflectionTransform.xw =
                            var_s0->reflectionTransform.yw = sp80;
                    var_s0->reflectionTransform.yx = var_s0->reflectionTransform.zx = var_s0->reflectionTransform.wx =
                        var_s0->reflectionTransform.xy = var_s0->reflectionTransform.zy =
                            var_s0->reflectionTransform.wy = new_var3;
                    if (Math3D_LineSegVsPlane(spDC.x, spDC.y, spDC.z, var_s0->unk4C->dist, &originPosWithOffset,
                                              &inFrontPosWithOffset, &intersectWithOffset, true)) {
                        do {
                        } while (0); //! FAKE
                        var_s0->reflectionTransform.xx = intersectWithOffset.x - intersect.x;
                        var_s0->reflectionTransform.yx = intersectWithOffset.y - intersect.y;
                        var_s0->reflectionTransform.zx = intersectWithOffset.z - intersect.z;
                    }
                    originPosWithOffset.x = (shieldMf->xy * 100.0f) + originPos.x;
                    originPosWithOffset.y = (shieldMf->yy * 100.0f) + originPos.y;
                    originPosWithOffset.z = (shieldMf->zy * 100.0f) + originPos.z;
                    inFrontPosWithOffset.x = (forwards.x * 4.0f) + originPosWithOffset.x;
                    inFrontPosWithOffset.y = (forwards.y * 4.0f) + originPosWithOffset.y;
                    inFrontPosWithOffset.z = (forwards.z * 4.0f) + originPosWithOffset.z;
                    if (Math3D_LineSegVsPlane(spDC.x, spDC.y, spDC.z, var_s0->unk4C->dist, &originPosWithOffset,
                                              &inFrontPosWithOffset, &intersectWithOffset, true)) {
                        if (!intersect.z) {} //! FAKE
                        var_s0->reflectionTransform.xy = intersectWithOffset.x - intersect.x;
                        var_s0->reflectionTransform.yy = intersectWithOffset.y - intersect.y;
                        var_s0->reflectionTransform.zy = intersectWithOffset.z - intersect.z;
                    }
                } else {
                    var_s0->unk4C = NULL;
                }
            }
        }
    }
}

void MirRay_Draw(Actor* thisx, PlayState* play) {
    MirRay* this = (MirRay*)thisx;
    s32 i;
    s32 pad;
    struct_80B8D8A0 sp7C[6];
    Player* player;

    player = GET_PLAYER(play);
    this->lightReflectionFactor = 0.0f;
    if (!D_80B8E670 && (this->unk2AE == 0) && Player_HasMirrorShieldSetToDraw(play)) {
        Matrix_Mult(&player->shieldMf, MTXMODE_NEW);
        func_80B8D6F0(this, play);
        if (!(this->lightReflectionFactor <= 0.0f)) {
            OPEN_DISPS(play->state.gfxCtx, "../z_mir_ray.c", 966);
            Gfx_SetupDL_25Xlu(play->state.gfxCtx);
            Matrix_Scale(1.0f, 1.0f, this->lightReflectionFactor * 5.0f, MTXMODE_APPLY);
            MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_mir_ray.c", 972);
            gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x00, 255, 255, 150,
                            (u8)(s32)(this->lightReflectionFactor * 100.0f));
            gSPDisplayList(POLY_XLU_DISP++, object_mir_ray_000C50_DL);
            func_80B8D8A0(this, play, sp7C);
            func_80B8DA78(sp7C);
            func_80B8DB7C(this, play, sp7C);
            if (sp7C[0].unk4C == NULL) {
                sp7C[0].unk50 = 0;
            }
            for (i = 1; i < ARRAY_COUNT(sp7C); i++) {
                if (sp7C[i].unk4C != NULL) {
                    if (sp7C[0].unk50 < sp7C[i].unk50) {
                        sp7C[0].unk50 = sp7C[i].unk50;
                    }
                }
            }
            for (i = 0; i < ARRAY_COUNT(sp7C); i++) {
                if (sp7C[i].unk4C != NULL) {
                    Matrix_Translate(sp7C[i].reflectionPos.x, sp7C[i].reflectionPos.y, sp7C[i].reflectionPos.z,
                                     MTXMODE_NEW);
                    Matrix_Scale(0.01f, 0.01f, 0.01f, MTXMODE_APPLY);
                    Matrix_Mult(&sp7C[i].reflectionTransform, MTXMODE_APPLY);
                    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_mir_ray.c", 1006);
                    gDPSetRenderMode(POLY_XLU_DISP++, G_RM_FOG_SHADE_A, G_RM_AA_ZB_XLU_DECAL2);
                    gDPSetPrimColor(POLY_XLU_DISP++, 0x00, 0x00, 255, 255, 150, sp7C[0].unk50);
                    gSPDisplayList(POLY_XLU_DISP++, object_mir_ray_0000B0_DL);
                }
            }
            D_80B8E670 = true;
            CLOSE_DISPS(play->state.gfxCtx, "../z_mir_ray.c", 1027);
        }
    }
}

/**
 * Checks if coordinates (x,y,z) lie inside the cone frustum defined by the given top face (a disk centered on
 * `centerTop` with radius `radiusTop`) and base face (a disk centered on `centerBase` with radius `radiusBase`).
 */
s32 MirRay_IsInConeFrustum(Vec3f* centerTop, Vec3f* centerBase, f32 x, f32 y, f32 z, s16 radiusTop, s16 radiusBase) {
    f32 f;
    f32 xProj;
    f32 yProj;
    f32 zProj;
    Vec3f hVec;
    f32 radiusLocal;
    Vec3f hVec2;
    Vec3f topToPos;
    Vec3f baseToPos;

    hVec.x = centerBase->x - centerTop->x;
    hVec.y = centerBase->y - centerTop->y;
    hVec.z = centerBase->z - centerTop->z;
    f = SQ(hVec.x) + SQ(hVec.y) + SQ(hVec.z);
    if (f == 0.0f) {
        return false;
    }
    f = (((x - centerTop->x) * hVec.x) + ((y - centerTop->y) * hVec.y) + ((z - centerTop->z) * hVec.z)) / f;
    // Project (x,y,z) onto the top-base line
    xProj = (hVec.x * f) + centerTop->x;
    yProj = (hVec.y * f) + centerTop->y;
    zProj = (hVec.z * f) + centerTop->z;
    // Lerp radius to get local radius
    radiusLocal = ((radiusBase - radiusTop) * f) + radiusTop;
    // If the point lies in the infinitely extended double cone containing the frustum of interest
    if ((SQ(xProj - x) + SQ(yProj - y) + SQ(zProj - z)) <= SQ(radiusLocal)) {
        Math_Vec3f_Diff(centerBase, centerTop, &hVec2);

        topToPos.x = x - centerTop->x;
        topToPos.y = y - centerTop->y;
        topToPos.z = z - centerTop->z;
        // If the point lies above the top face
        if (Math3D_Cos(&hVec2, &topToPos) < 0.0f) {
            return false;
        }

        baseToPos.x = x - centerBase->x;
        baseToPos.y = y - centerBase->y;
        baseToPos.z = z - centerBase->z;
        // If the point lies below the base face
        if (Math3D_Cos(&hVec2, &baseToPos) > 0.0f) {
            return false;
        }

        return true;
    } else {
        return false;
    }
}
