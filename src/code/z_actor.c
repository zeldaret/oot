#include "global.h"
#include "quake.h"
#include "terminal.h"

#include "overlays/actors/ovl_Arms_Hook/z_arms_hook.h"
#include "overlays/actors/ovl_En_Part/z_en_part.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"
#include "assets/objects/gameplay_dangeon_keep/gameplay_dangeon_keep.h"
#include "assets/objects/object_bdoor/object_bdoor.h"

static CollisionPoly* sCurCeilingPoly;
static s32 sCurCeilingBgId;

void ActorShape_Init(ActorShape* shape, f32 yOffset, ActorShadowFunc shadowDraw, f32 shadowScale) {
    shape->yOffset = yOffset;
    shape->shadowDraw = shadowDraw;
    shape->shadowScale = shadowScale;
    shape->shadowAlpha = 255;
}

void ActorShadow_Draw(Actor* actor, Lights* lights, PlayState* play, Gfx* dlist, Color_RGBA8* color) {
    f32 temp1;
    f32 temp2;
    MtxF sp60;

    if (actor->floorPoly != NULL) {
        temp1 = actor->world.pos.y - actor->floorHeight;

        if (temp1 >= -50.0f && temp1 < 500.0f) {
            OPEN_DISPS(play->state.gfxCtx, "../z_actor.c", 1553);

            POLY_OPA_DISP = Gfx_SetupDL(POLY_OPA_DISP, SETUPDL_44);

            gDPSetCombineLERP(POLY_OPA_DISP++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0,
                              COMBINED);

            temp1 = (temp1 < 0.0f) ? 0.0f : ((temp1 > 150.0f) ? 150.0f : temp1);
            temp2 = 1.0f - (temp1 * (1.0f / 350));

            if (color != NULL) {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, color->r, color->g, color->b,
                                (u32)(actor->shape.shadowAlpha * temp2) & 0xFF);
            } else {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 0, 0, 0, (u32)(actor->shape.shadowAlpha * temp2) & 0xFF);
            }

            func_80038A28(actor->floorPoly, actor->world.pos.x, actor->floorHeight, actor->world.pos.z, &sp60);
            Matrix_Put(&sp60);

            if (dlist != gCircleShadowDL) {
                Matrix_RotateY(BINANG_TO_RAD(actor->shape.rot.y), MTXMODE_APPLY);
            }

            temp2 = (1.0f - (temp1 * (1.0f / 350))) * actor->shape.shadowScale;
            Matrix_Scale(actor->scale.x * temp2, 1.0f, actor->scale.z * temp2, MTXMODE_APPLY);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_actor.c", 1588),
                      G_MTX_MODELVIEW | G_MTX_LOAD);
            gSPDisplayList(POLY_OPA_DISP++, dlist);

            CLOSE_DISPS(play->state.gfxCtx, "../z_actor.c", 1594);
        }
    }
}

void ActorShadow_DrawCircle(Actor* actor, Lights* lights, PlayState* play) {
    ActorShadow_Draw(actor, lights, play, gCircleShadowDL, NULL);
}

void ActorShadow_DrawWhiteCircle(Actor* actor, Lights* lights, PlayState* play) {
    static Color_RGBA8 white = { 255, 255, 255, 255 };

    ActorShadow_Draw(actor, lights, play, gCircleShadowDL, &white);
}

void ActorShadow_DrawHorse(Actor* actor, Lights* lights, PlayState* play) {
    ActorShadow_Draw(actor, lights, play, gHorseShadowDL, NULL);
}

void ActorShadow_DrawFoot(PlayState* play, Light* light, MtxF* arg2, s32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    s32 pad1;
    f32 sp58;
    s32 pad2[2];

    OPEN_DISPS(play->state.gfxCtx, "../z_actor.c", 1661);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 0, 0, 0,
                    (u32)(((arg3 * 0.00005f) > 1.0f ? 1.0f : (arg3 * 0.00005f)) * arg4) & 0xFF);

    sp58 = Math_FAtan2F(light->l.dir[0], light->l.dir[2]);
    arg6 *= (4.5f - (light->l.dir[1] * 0.035f));
    arg6 = (arg6 < 1.0f) ? 1.0f : arg6;
    Matrix_Put(arg2);
    Matrix_RotateY(sp58, MTXMODE_APPLY);
    Matrix_Scale(arg5, 1.0f, arg5 * arg6, MTXMODE_APPLY);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_actor.c", 1687), G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, gFootShadowDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_actor.c", 1693);
}

void ActorShadow_DrawFeet(Actor* actor, Lights* lights, PlayState* play) {
    f32 distToFloor = actor->world.pos.y - actor->floorHeight;

    if (distToFloor > 20.0f) {
        f32 shadowScale = actor->shape.shadowScale;
        u8 shadowAlpha = actor->shape.shadowAlpha;
        f32 alphaRatio;

        actor->shape.shadowScale *= 0.3f;
        alphaRatio = (distToFloor - 20.0f) * 0.02f;
        actor->shape.shadowAlpha = (f32)actor->shape.shadowAlpha * CLAMP_MAX(alphaRatio, 1.0f);
        ActorShadow_DrawCircle(actor, lights, play);
        actor->shape.shadowScale = shadowScale;
        actor->shape.shadowAlpha = shadowAlpha;
    }

    if (distToFloor < 200.0f) {
        MtxF floorMtx;
        f32 floorHeight[2]; // One for each foot
        f32 distToFloor;
        f32 shadowAlpha;
        f32 shadowScaleX;
        f32 shadowScaleZ;
        Light* lightPtr;
        s32 lightNum;
        s32 lightNumMax;
        s32 i;
        s32 j;
        s32 numLights = lights->numLights - 2;
        Light* firstLightPtr = &lights->l.l[0];
        Vec3f* feetPosPtr = actor->shape.feetPos;
        f32* floorHeightPtr = floorHeight;

        OPEN_DISPS(play->state.gfxCtx, "../z_actor.c", 1741);

        POLY_OPA_DISP = Gfx_SetupDL(POLY_OPA_DISP, SETUPDL_44);

        // feetFloorFlag is temporarily a bitfield where the bits are set if the foot is on ground
        // feetFloorFlag & 2 is left foot, feetFloorFlag & 1 is right foot
        actor->shape.feetFloorFlag = 0;

        for (i = 0; i < 2; i++) {
            feetPosPtr->y += 50.0f;
            *floorHeightPtr = func_800BFCB8(play, &floorMtx, feetPosPtr);
            feetPosPtr->y -= 50.0f;
            actor->shape.feetFloorFlag <<= 1;
            distToFloor = feetPosPtr->y - *floorHeightPtr;

            if ((-1.0f <= distToFloor) && (distToFloor < 500.0f)) {
                if (distToFloor <= 0.0f) {
                    actor->shape.feetFloorFlag++;
                }
                distToFloor = CLAMP_MAX(distToFloor, 30.0f);
                shadowAlpha = (f32)actor->shape.shadowAlpha * (1.0f - (distToFloor * (1.0f / 30.0f)));
                distToFloor = CLAMP_MAX(distToFloor, 30.0f);
                shadowScaleZ = 1.0f - (distToFloor * (1.0f / (30.0f + 40.0f)));
                shadowScaleX = shadowScaleZ * actor->shape.shadowScale * actor->scale.x;
                lightNumMax = 0;
                lightPtr = firstLightPtr;

                for (j = 0; j < numLights; j++) {
                    if (lightPtr->l.dir[1] > 0) {
                        lightNum =
                            (lightPtr->l.col[0] + lightPtr->l.col[1] + lightPtr->l.col[2]) * ABS(lightPtr->l.dir[1]);
                        if (lightNum > 0) {
                            lightNumMax += lightNum;
                            ActorShadow_DrawFoot(play, lightPtr, &floorMtx, lightNum, shadowAlpha, shadowScaleX,
                                                 shadowScaleZ);
                        }
                    }
                    lightPtr++;
                }

                for (j = 0; j < 2; j++) {
                    if (lightPtr->l.dir[1] > 0) {
                        lightNum =
                            ((lightPtr->l.col[0] + lightPtr->l.col[1] + lightPtr->l.col[2]) * ABS(lightPtr->l.dir[1])) -
                            (lightNumMax * 8);
                        if (lightNum > 0) {
                            ActorShadow_DrawFoot(play, lightPtr, &floorMtx, lightNum, shadowAlpha, shadowScaleX,
                                                 shadowScaleZ);
                        }
                    }
                    lightPtr++;
                }
            }
            feetPosPtr++;
            floorHeightPtr++;
        }

        if (!(actor->bgCheckFlags & BGCHECKFLAG_GROUND)) {
            actor->shape.feetFloorFlag = 0;
        } else if (actor->shape.feetFloorFlag == 3) {
            f32 footDistY = actor->shape.feetPos[FOOT_LEFT].y - actor->shape.feetPos[FOOT_RIGHT].y;

            if ((floorHeight[FOOT_LEFT] + footDistY) < (floorHeight[FOOT_RIGHT] - footDistY)) {
                actor->shape.feetFloorFlag = 2;
            } else {
                actor->shape.feetFloorFlag = 1;
            }
        }

        CLOSE_DISPS(play->state.gfxCtx, "../z_actor.c", 1831);
    }
}

void Actor_SetFeetPos(Actor* actor, s32 limbIndex, s32 leftFootIndex, Vec3f* leftFootPos, s32 rightFootIndex,
                      Vec3f* rightFootPos) {
    if (limbIndex == leftFootIndex) {
        Matrix_MultVec3f(leftFootPos, &actor->shape.feetPos[FOOT_LEFT]);
    } else if (limbIndex == rightFootIndex) {
        Matrix_MultVec3f(rightFootPos, &actor->shape.feetPos[FOOT_RIGHT]);
    }
}

void Actor_ProjectPos(PlayState* play, Vec3f* src, Vec3f* xyzDest, f32* cappedInvWDest) {
    SkinMatrix_Vec3fMtxFMultXYZW(&play->viewProjectionMtxF, src, xyzDest, cappedInvWDest);
    *cappedInvWDest = (*cappedInvWDest < 1.0f) ? 1.0f : (1.0f / *cappedInvWDest);
}

typedef struct {
    /* 0x00 */ Color_RGBA8 inner;
    /* 0x04 */ Color_RGBA8 outer;
} NaviColor; // size = 0x8

NaviColor sNaviColorList[] = {
    { { 0, 255, 0, 255 }, { 0, 255, 0, 0 } },         { { 0, 255, 0, 255 }, { 0, 255, 0, 0 } },
    { { 255, 255, 255, 255 }, { 0, 0, 255, 0 } },     { { 0, 255, 0, 255 }, { 0, 255, 0, 0 } },
    { { 150, 150, 255, 255 }, { 150, 150, 255, 0 } }, { { 255, 255, 0, 255 }, { 200, 155, 0, 0 } },
    { { 0, 255, 0, 255 }, { 0, 255, 0, 0 } },         { { 0, 255, 0, 255 }, { 0, 255, 0, 0 } },
    { { 0, 255, 0, 255 }, { 0, 255, 0, 0 } },         { { 255, 255, 0, 255 }, { 200, 155, 0, 0 } },
    { { 0, 255, 0, 255 }, { 0, 255, 0, 0 } },         { { 0, 255, 0, 255 }, { 0, 255, 0, 0 } },
    { { 0, 255, 0, 255 }, { 0, 255, 0, 0 } },
};

// unused
Gfx D_80115FF0[] = {
    gsSPEndDisplayList(),
};

void func_8002BE64(TargetContext* targetCtx, s32 index, f32 arg2, f32 arg3, f32 arg4) {
    targetCtx->arr_50[index].pos.x = arg2;
    targetCtx->arr_50[index].pos.y = arg3;
    targetCtx->arr_50[index].pos.z = arg4;
    targetCtx->arr_50[index].unk_0C = targetCtx->unk_44;
}

void func_8002BE98(TargetContext* targetCtx, s32 actorCategory, PlayState* play) {
    TargetContextEntry* entry;
    NaviColor* naviColor;
    s32 i;

    Math_Vec3f_Copy(&targetCtx->targetCenterPos, &play->view.eye);
    targetCtx->unk_44 = 500.0f;
    targetCtx->unk_48 = 0x100;

    naviColor = &sNaviColorList[actorCategory];

    entry = &targetCtx->arr_50[0];
    for (i = 0; i < ARRAY_COUNT(targetCtx->arr_50); i++) {
        func_8002BE64(targetCtx, i, 0.0f, 0.0f, 0.0f);
        entry->color.r = naviColor->inner.r;
        entry->color.g = naviColor->inner.g;
        entry->color.b = naviColor->inner.b;
        entry++;
    }
}

void Actor_SetNaviToActor(TargetContext* targetCtx, Actor* actor, s32 actorCategory, PlayState* play) {
    NaviColor* naviColor = &sNaviColorList[actorCategory];
    targetCtx->naviRefPos.x = actor->focus.pos.x;
    targetCtx->naviRefPos.y = actor->focus.pos.y + (actor->targetArrowOffset * actor->scale.y);
    targetCtx->naviRefPos.z = actor->focus.pos.z;
    targetCtx->naviInner.r = naviColor->inner.r;
    targetCtx->naviInner.g = naviColor->inner.g;
    targetCtx->naviInner.b = naviColor->inner.b;
    targetCtx->naviInner.a = naviColor->inner.a;
    targetCtx->naviOuter.r = naviColor->outer.r;
    targetCtx->naviOuter.g = naviColor->outer.g;
    targetCtx->naviOuter.b = naviColor->outer.b;
    targetCtx->naviOuter.a = naviColor->outer.a;
}

void func_8002C0C0(TargetContext* targetCtx, Actor* actor, PlayState* play) {
    targetCtx->arrowPointedActor = NULL;
    targetCtx->targetedActor = NULL;
    targetCtx->unk_40 = 0.0f;
    targetCtx->unk_8C = NULL;
    targetCtx->bgmEnemy = NULL;
    targetCtx->unk_4B = 0;
    targetCtx->unk_4C = 0;
    Actor_SetNaviToActor(targetCtx, actor, actor->category, play);
    func_8002BE98(targetCtx, actor->category, play);
}

void func_8002C124(TargetContext* targetCtx, PlayState* play) {
    Actor* actor = targetCtx->targetedActor;

    OPEN_DISPS(play->state.gfxCtx, "../z_actor.c", 2029);

    if (targetCtx->unk_48 != 0) {
        TargetContextEntry* entry;
        Player* player;
        s16 spCE;
        f32 temp1;
        Vec3f projTargetCenter;
        s32 spB8;
        f32 projTargetCappedInvW;
        s32 spB0;
        s32 spAC;
        f32 var1;
        f32 var2;
        s32 i;

        player = GET_PLAYER(play);

        spCE = 0xFF;
        var1 = 1.0f;

        if (targetCtx->unk_4B != 0) {
            spB8 = 1;
        } else {
            spB8 = 3;
        }

        if (actor != NULL) {
            Math_Vec3f_Copy(&targetCtx->targetCenterPos, &actor->focus.pos);
            var1 = (500.0f - targetCtx->unk_44) / 420.0f;
        } else {
            targetCtx->unk_48 -= 120;
            if (targetCtx->unk_48 < 0) {
                targetCtx->unk_48 = 0;
            }
            spCE = targetCtx->unk_48;
        }

        Actor_ProjectPos(play, &targetCtx->targetCenterPos, &projTargetCenter, &projTargetCappedInvW);

        projTargetCenter.x = (160 * (projTargetCenter.x * projTargetCappedInvW)) * var1;
        projTargetCenter.x = CLAMP(projTargetCenter.x, -320.0f, 320.0f);

        projTargetCenter.y = (120 * (projTargetCenter.y * projTargetCappedInvW)) * var1;
        projTargetCenter.y = CLAMP(projTargetCenter.y, -240.0f, 240.0f);

        projTargetCenter.z = projTargetCenter.z * var1;

        targetCtx->unk_4C--;
        if (targetCtx->unk_4C < 0) {
            targetCtx->unk_4C = 2;
        }

        func_8002BE64(targetCtx, targetCtx->unk_4C, projTargetCenter.x, projTargetCenter.y, projTargetCenter.z);

        if (!(player->stateFlags1 & PLAYER_STATE1_6) || (actor != player->unk_664)) {
            OVERLAY_DISP = Gfx_SetupDL(OVERLAY_DISP, SETUPDL_57);

            for (spB0 = 0, spAC = targetCtx->unk_4C; spB0 < spB8; spB0++, spAC = (spAC + 1) % 3) {
                entry = &targetCtx->arr_50[spAC];

                if (entry->unk_0C < 500.0f) {
                    if (entry->unk_0C <= 120.0f) {
                        var2 = 0.15f;
                    } else {
                        var2 = ((entry->unk_0C - 120.0f) * 0.001f) + 0.15f;
                    }

                    Matrix_Translate(entry->pos.x, entry->pos.y, 0.0f, MTXMODE_NEW);
                    Matrix_Scale(var2, 0.15f, 1.0f, MTXMODE_APPLY);

                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, entry->color.r, entry->color.g, entry->color.b, (u8)spCE);

                    Matrix_RotateZ((targetCtx->unk_4B & 0x7F) * (M_PI / 64), MTXMODE_APPLY);

                    for (i = 0; i < 4; i++) {
                        Matrix_RotateZ(M_PI / 2, MTXMODE_APPLY);
                        Matrix_Push();
                        Matrix_Translate(entry->unk_0C, entry->unk_0C, 0.0f, MTXMODE_APPLY);
                        gSPMatrix(OVERLAY_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_actor.c", 2116),
                                  G_MTX_MODELVIEW | G_MTX_LOAD);
                        gSPDisplayList(OVERLAY_DISP++, gZTargetLockOnTriangleDL);
                        Matrix_Pop();
                    }
                }

                spCE -= 0xFF / 3;
                if (spCE < 0) {
                    spCE = 0;
                }
            }
        }
    }

    actor = targetCtx->unk_94;
    if ((actor != NULL) && !(actor->flags & ACTOR_FLAG_27)) {
        NaviColor* naviColor = &sNaviColorList[actor->category];

        POLY_XLU_DISP = Gfx_SetupDL(POLY_XLU_DISP, SETUPDL_7);

        Matrix_Translate(actor->focus.pos.x, actor->focus.pos.y + (actor->targetArrowOffset * actor->scale.y) + 17.0f,
                         actor->focus.pos.z, MTXMODE_NEW);
        Matrix_RotateY(BINANG_TO_RAD((u16)(play->gameplayFrames * 3000)), MTXMODE_APPLY);
        Matrix_Scale((iREG(27) + 35) / 1000.0f, (iREG(28) + 60) / 1000.0f, (iREG(29) + 50) / 1000.0f, MTXMODE_APPLY);

        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, naviColor->inner.r, naviColor->inner.g, naviColor->inner.b, 255);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_actor.c", 2153),
                  G_MTX_MODELVIEW | G_MTX_LOAD);
        gSPDisplayList(POLY_XLU_DISP++, gZTargetArrowDL);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_actor.c", 2158);
}

void func_8002C7BC(TargetContext* targetCtx, Player* player, Actor* actorArg, PlayState* play) {
    s32 pad;
    Actor* unkActor;
    s32 actorCategory;
    Vec3f projectedFocusPos;
    f32 cappedInvWDest;
    f32 temp1;
    f32 temp2;
    f32 temp3;
    f32 temp4;
    f32 temp5;
    f32 temp6;
    s32 lockOnSfxId;

    unkActor = NULL;

    if ((player->unk_664 != NULL) && (player->unk_84B[player->unk_846] == 2)) {
        targetCtx->unk_94 = NULL;
    } else {
        func_80032AF0(play, &play->actorCtx, &unkActor, player);
        targetCtx->unk_94 = unkActor;
    }

    if (targetCtx->unk_8C != NULL) {
        unkActor = targetCtx->unk_8C;
        targetCtx->unk_8C = NULL;
    } else if (actorArg != NULL) {
        unkActor = actorArg;
    }

    if (unkActor != NULL) {
        actorCategory = unkActor->category;
    } else {
        actorCategory = player->actor.category;
    }

    if ((unkActor != targetCtx->arrowPointedActor) || (actorCategory != targetCtx->activeCategory)) {
        targetCtx->arrowPointedActor = unkActor;
        targetCtx->activeCategory = actorCategory;
        targetCtx->unk_40 = 1.0f;
    }

    if (unkActor == NULL) {
        unkActor = &player->actor;
    }

    if (Math_StepToF(&targetCtx->unk_40, 0.0f, 0.25f) == 0) {
        temp1 = 0.25f / targetCtx->unk_40;
        temp2 = unkActor->world.pos.x - targetCtx->naviRefPos.x;
        temp3 = (unkActor->world.pos.y + (unkActor->targetArrowOffset * unkActor->scale.y)) - targetCtx->naviRefPos.y;
        temp4 = unkActor->world.pos.z - targetCtx->naviRefPos.z;
        targetCtx->naviRefPos.x += temp2 * temp1;
        targetCtx->naviRefPos.y += temp3 * temp1;
        targetCtx->naviRefPos.z += temp4 * temp1;
    } else {
        Actor_SetNaviToActor(targetCtx, unkActor, actorCategory, play);
    }

    if ((actorArg != NULL) && (targetCtx->unk_4B == 0)) {
        Actor_ProjectPos(play, &actorArg->focus.pos, &projectedFocusPos, &cappedInvWDest);
        if (((projectedFocusPos.z <= 0.0f) || (1.0f <= fabsf(projectedFocusPos.x * cappedInvWDest))) ||
            (1.0f <= fabsf(projectedFocusPos.y * cappedInvWDest))) {
            actorArg = NULL;
        }
    }

    if (actorArg != NULL) {
        if (actorArg != targetCtx->targetedActor) {
            func_8002BE98(targetCtx, actorArg->category, play);
            targetCtx->targetedActor = actorArg;

            if (actorArg->id == ACTOR_EN_BOOM) {
                targetCtx->unk_48 = 0;
            }

            lockOnSfxId = CHECK_FLAG_ALL(actorArg->flags, ACTOR_FLAG_0 | ACTOR_FLAG_2) ? NA_SE_SY_LOCK_ON
                                                                                       : NA_SE_SY_LOCK_ON_HUMAN;
            func_80078884(lockOnSfxId);
        }

        targetCtx->targetCenterPos.x = actorArg->world.pos.x;
        targetCtx->targetCenterPos.y = actorArg->world.pos.y - (actorArg->shape.yOffset * actorArg->scale.y);
        targetCtx->targetCenterPos.z = actorArg->world.pos.z;

        if (targetCtx->unk_4B == 0) {
            temp5 = (500.0f - targetCtx->unk_44) * 3.0f;
            temp6 = (temp5 < 30.0f) ? 30.0f : ((100.0f < temp5) ? 100.0f : temp5);
            if (Math_StepToF(&targetCtx->unk_44, 80.0f, temp6) != 0) {
                targetCtx->unk_4B++;
            }
        } else {
            targetCtx->unk_4B = (targetCtx->unk_4B + 3) | 0x80;
            targetCtx->unk_44 = 120.0f;
        }
    } else {
        targetCtx->targetedActor = NULL;
        Math_StepToF(&targetCtx->unk_44, 500.0f, 80.0f);
    }
}

/**
 * Tests if current scene switch flag is set.
 */
s32 Flags_GetSwitch(PlayState* play, s32 flag) {
    if (flag < 0x20) {
        return play->actorCtx.flags.swch & (1 << flag);
    } else {
        return play->actorCtx.flags.tempSwch & (1 << (flag - 0x20));
    }
}

/**
 * Sets current scene switch flag.
 */
void Flags_SetSwitch(PlayState* play, s32 flag) {
    if (flag < 0x20) {
        play->actorCtx.flags.swch |= (1 << flag);
    } else {
        play->actorCtx.flags.tempSwch |= (1 << (flag - 0x20));
    }
}

/**
 * Unsets current scene switch flag.
 */
void Flags_UnsetSwitch(PlayState* play, s32 flag) {
    if (flag < 0x20) {
        play->actorCtx.flags.swch &= ~(1 << flag);
    } else {
        play->actorCtx.flags.tempSwch &= ~(1 << (flag - 0x20));
    }
}

/**
 * Tests if unknown flag is set.
 */
s32 Flags_GetUnknown(PlayState* play, s32 flag) {
    if (flag < 0x20) {
        return play->actorCtx.flags.unk0 & (1 << flag);
    } else {
        return play->actorCtx.flags.unk1 & (1 << (flag - 0x20));
    }
}

/**
 * Sets unknown flag.
 */
void Flags_SetUnknown(PlayState* play, s32 flag) {
    if (flag < 0x20) {
        play->actorCtx.flags.unk0 |= (1 << flag);
    } else {
        play->actorCtx.flags.unk1 |= (1 << (flag - 0x20));
    }
}

/**
 * Unsets unknown flag.
 */
void Flags_UnsetUnknown(PlayState* play, s32 flag) {
    if (flag < 0x20) {
        play->actorCtx.flags.unk0 &= ~(1 << flag);
    } else {
        play->actorCtx.flags.unk1 &= ~(1 << (flag - 0x20));
    }
}

/**
 * Tests if current scene chest flag is set.
 */
s32 Flags_GetTreasure(PlayState* play, s32 flag) {
    return play->actorCtx.flags.chest & (1 << flag);
}

/**
 * Sets current scene chest flag.
 */
void Flags_SetTreasure(PlayState* play, s32 flag) {
    play->actorCtx.flags.chest |= (1 << flag);
}

/**
 * Tests if current scene clear flag is set.
 */
s32 Flags_GetClear(PlayState* play, s32 flag) {
    return play->actorCtx.flags.clear & (1 << flag);
}

/**
 * Sets current scene clear flag.
 */
void Flags_SetClear(PlayState* play, s32 flag) {
    play->actorCtx.flags.clear |= (1 << flag);
}

/**
 * Unsets current scene clear flag.
 */
void Flags_UnsetClear(PlayState* play, s32 flag) {
    play->actorCtx.flags.clear &= ~(1 << flag);
}

/**
 * Tests if current scene temp clear flag is set.
 */
s32 Flags_GetTempClear(PlayState* play, s32 flag) {
    return play->actorCtx.flags.tempClear & (1 << flag);
}

/**
 * Sets current scene temp clear flag.
 */
void Flags_SetTempClear(PlayState* play, s32 flag) {
    play->actorCtx.flags.tempClear |= (1 << flag);
}

/**
 * Unsets current scene temp clear flag.
 */
void Flags_UnsetTempClear(PlayState* play, s32 flag) {
    play->actorCtx.flags.tempClear &= ~(1 << flag);
}

/**
 * Tests if current scene collectible flag is set.
 */
s32 Flags_GetCollectible(PlayState* play, s32 flag) {
    if (flag < 0x20) {
        return play->actorCtx.flags.collect & (1 << flag);
    } else {
        return play->actorCtx.flags.tempCollect & (1 << (flag - 0x20));
    }
}

/**
 * Sets current scene collectible flag.
 */
void Flags_SetCollectible(PlayState* play, s32 flag) {
    if (flag != 0) {
        if (flag < 0x20) {
            play->actorCtx.flags.collect |= (1 << flag);
        } else {
            play->actorCtx.flags.tempCollect |= (1 << (flag - 0x20));
        }
    }
}

void TitleCard_Init(PlayState* play, TitleCardContext* titleCtx) {
    titleCtx->durationTimer = titleCtx->delayTimer = titleCtx->intensity = titleCtx->alpha = 0;
}

void TitleCard_InitBossName(PlayState* play, TitleCardContext* titleCtx, void* texture, s16 x, s16 y, u8 width,
                            u8 height) {
    titleCtx->texture = texture;
    titleCtx->x = x;
    titleCtx->y = y;
    titleCtx->width = width;
    titleCtx->height = height;
    titleCtx->durationTimer = 80;
    titleCtx->delayTimer = 0;
}

void TitleCard_InitPlaceName(PlayState* play, TitleCardContext* titleCtx, void* texture, s32 x, s32 y, s32 width,
                             s32 height, s32 delay) {
    SceneTableEntry* loadedScene = play->loadedScene;
    u32 size = loadedScene->titleFile.vromEnd - loadedScene->titleFile.vromStart;

    if ((size != 0) && (size <= 0x3000)) {
        DmaMgr_RequestSyncDebug(texture, loadedScene->titleFile.vromStart, size, "../z_actor.c", 2765);
    }

    titleCtx->texture = texture;
    titleCtx->x = x;
    titleCtx->y = y;
    titleCtx->width = width;
    titleCtx->height = height;
    titleCtx->durationTimer = 80;
    titleCtx->delayTimer = delay;
}

void TitleCard_Update(PlayState* play, TitleCardContext* titleCtx) {
    if (DECR(titleCtx->delayTimer) == 0) {
        if (DECR(titleCtx->durationTimer) == 0) {
            Math_StepToS(&titleCtx->alpha, 0, 30);
            Math_StepToS(&titleCtx->intensity, 0, 70);
        } else {
            Math_StepToS(&titleCtx->alpha, 255, 10);
            Math_StepToS(&titleCtx->intensity, 255, 20);
        }
    }
}

void TitleCard_Draw(PlayState* play, TitleCardContext* titleCtx) {
    s32 width;
    s32 height;
    s32 unused;
    s32 titleX;
    s32 doubleWidth;
    s32 titleY;
    s32 titleSecondY;
    s32 textureLanguageOffset;

    if (titleCtx->alpha != 0) {
        width = titleCtx->width;
        height = titleCtx->height;
        titleX = (titleCtx->x * 4) - (width * 2);
        titleY = (titleCtx->y * 4) - (height * 2);
        doubleWidth = width * 2;

        OPEN_DISPS(play->state.gfxCtx, "../z_actor.c", 2824);

        textureLanguageOffset = width * height * gSaveContext.language;
        height = (width * height > 0x1000) ? 0x1000 / width : height;
        titleSecondY = titleY + (height * 4);

        OVERLAY_DISP = Gfx_SetupDL_52NoCD(OVERLAY_DISP);

        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, (u8)titleCtx->intensity, (u8)titleCtx->intensity, (u8)titleCtx->intensity,
                        (u8)titleCtx->alpha);

        gDPLoadTextureBlock(OVERLAY_DISP++, (s32)titleCtx->texture + textureLanguageOffset, G_IM_FMT_IA, G_IM_SIZ_8b,
                            width, height, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                            G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        gSPTextureRectangle(OVERLAY_DISP++, titleX, titleY, ((doubleWidth * 2) + titleX) - 4, titleY + (height * 4) - 1,
                            G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

        height = titleCtx->height - height;

        // If texture is bigger than 0x1000, display the rest
        if (height > 0) {
            gDPLoadTextureBlock(OVERLAY_DISP++, (s32)titleCtx->texture + textureLanguageOffset + 0x1000, G_IM_FMT_IA,
                                G_IM_SIZ_8b, width, height, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                                G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

            gSPTextureRectangle(OVERLAY_DISP++, titleX, titleSecondY, ((doubleWidth * 2) + titleX) - 4,
                                titleSecondY + (height * 4) - 1, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);
        }

        CLOSE_DISPS(play->state.gfxCtx, "../z_actor.c", 2880);
    }
}

s32 TitleCard_Clear(PlayState* play, TitleCardContext* titleCtx) {
    if ((play->actorCtx.titleCtx.delayTimer != 0) || (play->actorCtx.titleCtx.alpha != 0)) {
        titleCtx->durationTimer = 0;
        titleCtx->delayTimer = 0;
        return false;
    }

    return true;
}

void Actor_Kill(Actor* actor) {
    actor->draw = NULL;
    actor->update = NULL;
    actor->flags &= ~ACTOR_FLAG_0;
}

void Actor_SetWorldToHome(Actor* actor) {
    actor->world = actor->home;
}

void Actor_SetFocus(Actor* actor, f32 yOffset) {
    actor->focus.pos.x = actor->world.pos.x;
    actor->focus.pos.y = actor->world.pos.y + yOffset;
    actor->focus.pos.z = actor->world.pos.z;

    actor->focus.rot.x = actor->world.rot.x;
    actor->focus.rot.y = actor->world.rot.y;
    actor->focus.rot.z = actor->world.rot.z;
}

void Actor_SetWorldRotToShape(Actor* actor) {
    actor->world.rot = actor->shape.rot;
}

void Actor_SetShapeRotToWorld(Actor* actor) {
    actor->shape.rot = actor->world.rot;
}

void Actor_SetScale(Actor* actor, f32 scale) {
    actor->scale.z = scale;
    actor->scale.y = scale;
    actor->scale.x = scale;
}

void Actor_SetObjectDependency(PlayState* play, Actor* actor) {
    gSegments[6] = VIRTUAL_TO_PHYSICAL(play->objectCtx.status[actor->objBankIndex].segment);
}

void Actor_Init(Actor* actor, PlayState* play) {
    Actor_SetWorldToHome(actor);
    Actor_SetShapeRotToWorld(actor);
    Actor_SetFocus(actor, 0.0f);
    Math_Vec3f_Copy(&actor->prevPos, &actor->world.pos);
    Actor_SetScale(actor, 0.01f);
    actor->targetMode = 3;
    actor->minVelocityY = -20.0f;
    actor->xyzDistToPlayerSq = FLT_MAX;
    actor->naviEnemyId = NAVI_ENEMY_NONE;
    actor->uncullZoneForward = 1000.0f;
    actor->uncullZoneScale = 350.0f;
    actor->uncullZoneDownward = 700.0f;
    CollisionCheck_InitInfo(&actor->colChkInfo);
    actor->floorBgId = BGCHECK_SCENE;
    ActorShape_Init(&actor->shape, 0.0f, NULL, 0.0f);
    if (Object_IsLoaded(&play->objectCtx, actor->objBankIndex)) {
        Actor_SetObjectDependency(play, actor);
        actor->init(actor, play);
        actor->init = NULL;
    }
}

void Actor_Destroy(Actor* actor, PlayState* play) {
    ActorOverlay* overlayEntry;
    char* name;

    if (actor->destroy != NULL) {
        actor->destroy(actor, play);
        actor->destroy = NULL;
    } else {
        overlayEntry = actor->overlayEntry;
        name = overlayEntry->name != NULL ? overlayEntry->name : "";

        // "No Actor class destruct [%s]"
        osSyncPrintf("Ａｃｔｏｒクラス デストラクトがありません [%s]\n" VT_RST, name);
    }
}

void func_8002D7EC(Actor* actor) {
    f32 speedRate = R_UPDATE_RATE * 0.5f;

    actor->world.pos.x += (actor->velocity.x * speedRate) + actor->colChkInfo.displacement.x;
    actor->world.pos.y += (actor->velocity.y * speedRate) + actor->colChkInfo.displacement.y;
    actor->world.pos.z += (actor->velocity.z * speedRate) + actor->colChkInfo.displacement.z;
}

void func_8002D868(Actor* actor) {
    actor->velocity.x = Math_SinS(actor->world.rot.y) * actor->speedXZ;
    actor->velocity.z = Math_CosS(actor->world.rot.y) * actor->speedXZ;

    actor->velocity.y += actor->gravity;
    if (actor->velocity.y < actor->minVelocityY) {
        actor->velocity.y = actor->minVelocityY;
    }
}

void Actor_MoveForward(Actor* actor) {
    func_8002D868(actor);
    func_8002D7EC(actor);
}

void func_8002D908(Actor* actor) {
    f32 sp24 = Math_CosS(actor->world.rot.x) * actor->speedXZ;

    actor->velocity.x = Math_SinS(actor->world.rot.y) * sp24;
    actor->velocity.y = Math_SinS(actor->world.rot.x) * actor->speedXZ;
    actor->velocity.z = Math_CosS(actor->world.rot.y) * sp24;
}

void func_8002D97C(Actor* actor) {
    func_8002D908(actor);
    func_8002D7EC(actor);
}

void func_8002D9A4(Actor* actor, f32 arg1) {
    actor->speedXZ = Math_CosS(actor->world.rot.x) * arg1;
    actor->velocity.y = -Math_SinS(actor->world.rot.x) * arg1;
}

void func_8002D9F8(Actor* actor, SkelAnime* skelAnime) {
    Vec3f sp1C;

    SkelAnime_UpdateTranslation(skelAnime, &sp1C, actor->shape.rot.y);
    actor->world.pos.x += sp1C.x * actor->scale.x;
    actor->world.pos.y += sp1C.y * actor->scale.y;
    actor->world.pos.z += sp1C.z * actor->scale.z;
}

s16 Actor_WorldYawTowardActor(Actor* actorA, Actor* actorB) {
    return Math_Vec3f_Yaw(&actorA->world.pos, &actorB->world.pos);
}

s16 Actor_FocusYawTowardActor(Actor* actorA, Actor* actorB) {
    return Math_Vec3f_Yaw(&actorA->focus.pos, &actorB->focus.pos);
}

s16 Actor_WorldYawTowardPoint(Actor* actor, Vec3f* refPoint) {
    return Math_Vec3f_Yaw(&actor->world.pos, refPoint);
}

s16 Actor_WorldPitchTowardActor(Actor* actorA, Actor* actorB) {
    return Math_Vec3f_Pitch(&actorA->world.pos, &actorB->world.pos);
}

s16 Actor_FocusPitchTowardActor(Actor* actorA, Actor* actorB) {
    return Math_Vec3f_Pitch(&actorA->focus.pos, &actorB->focus.pos);
}

s16 Actor_WorldPitchTowardPoint(Actor* actor, Vec3f* refPoint) {
    return Math_Vec3f_Pitch(&actor->world.pos, refPoint);
}

f32 Actor_WorldDistXYZToActor(Actor* actorA, Actor* actorB) {
    return Math_Vec3f_DistXYZ(&actorA->world.pos, &actorB->world.pos);
}

f32 Actor_WorldDistXYZToPoint(Actor* actor, Vec3f* refPoint) {
    return Math_Vec3f_DistXYZ(&actor->world.pos, refPoint);
}

f32 Actor_WorldDistXZToActor(Actor* actorA, Actor* actorB) {
    return Math_Vec3f_DistXZ(&actorA->world.pos, &actorB->world.pos);
}

f32 Actor_WorldDistXZToPoint(Actor* actor, Vec3f* refPoint) {
    return Math_Vec3f_DistXZ(&actor->world.pos, refPoint);
}

/**
 * Convert `pos` to be relative to the actor's position and yaw, store into `dest`.
 * Actor_WorldToActorCoords
 */
void func_8002DBD0(Actor* actor, Vec3f* dest, Vec3f* pos) {
    f32 cosY;
    f32 sinY;
    f32 deltaX;
    f32 deltaZ;

    cosY = Math_CosS(actor->shape.rot.y);
    sinY = Math_SinS(actor->shape.rot.y);
    deltaX = pos->x - actor->world.pos.x;
    deltaZ = pos->z - actor->world.pos.z;

    dest->x = (deltaX * cosY) - (deltaZ * sinY);
    dest->z = (deltaX * sinY) + (deltaZ * cosY);
    dest->y = pos->y - actor->world.pos.y;
}

f32 Actor_HeightDiff(Actor* actorA, Actor* actorB) {
    return actorB->world.pos.y - actorA->world.pos.y;
}

f32 Player_GetHeight(Player* player) {
    f32 offset = (player->stateFlags1 & PLAYER_STATE1_23) ? 32.0f : 0.0f;

    if (LINK_IS_ADULT) {
        return offset + 68.0f;
    } else {
        return offset + 44.0f;
    }
}

f32 func_8002DCE4(Player* player) {
    if (player->stateFlags1 & PLAYER_STATE1_23) {
        return 8.0f;
    } else if (player->stateFlags1 & PLAYER_STATE1_27) {
        return (R_RUN_SPEED_LIMIT / 100.0f) * 0.6f;
    } else {
        return R_RUN_SPEED_LIMIT / 100.0f;
    }
}

s32 func_8002DD6C(Player* player) {
    return player->stateFlags1 & PLAYER_STATE1_3;
}

s32 func_8002DD78(Player* player) {
    return func_8002DD6C(player) && player->unk_834;
}

s32 func_8002DDA8(PlayState* play) {
    Player* player = GET_PLAYER(play);

    return (player->stateFlags1 & PLAYER_STATE1_11) || func_8002DD78(player);
}

s32 func_8002DDE4(PlayState* play) {
    Player* player = GET_PLAYER(play);

    return player->stateFlags2 & PLAYER_STATE2_3;
}

s32 func_8002DDF4(PlayState* play) {
    Player* player = GET_PLAYER(play);

    return player->stateFlags2 & PLAYER_STATE2_12;
}

void func_8002DE04(PlayState* play, Actor* actorA, Actor* actorB) {
    ArmsHook* hookshot = (ArmsHook*)Actor_Find(&play->actorCtx, ACTOR_ARMS_HOOK, ACTORCAT_ITEMACTION);

    hookshot->grabbed = actorB;
    hookshot->grabbedDistDiff.x = 0.0f;
    hookshot->grabbedDistDiff.y = 0.0f;
    hookshot->grabbedDistDiff.z = 0.0f;
    actorB->flags |= ACTOR_FLAG_13;
    actorA->flags &= ~ACTOR_FLAG_13;
}

void func_8002DE74(PlayState* play, Player* player) {
    if ((play->roomCtx.curRoom.behaviorType1 != ROOM_BEHAVIOR_TYPE1_4) && Play_CamIsNotFixed(play)) {
        Camera_ChangeSetting(Play_GetCamera(play, CAM_ID_MAIN), CAM_SET_HORSE);
    }
}

void Actor_MountHorse(PlayState* play, Player* player, Actor* horse) {
    player->rideActor = horse;
    player->stateFlags1 |= PLAYER_STATE1_23;
    horse->child = &player->actor;
}

s32 func_8002DEEC(Player* player) {
    return (player->stateFlags1 & (PLAYER_STATE1_7 | PLAYER_STATE1_29)) || (player->csMode != 0);
}

void func_8002DF18(PlayState* play, Player* player) {
    func_8006DC68(play, player);
}

s32 func_8002DF38(PlayState* play, Actor* actor, u8 csMode) {
    Player* player = GET_PLAYER(play);

    player->csMode = csMode;
    player->unk_448 = actor;
    player->doorBgCamIndex = 0;

    return true;
}

s32 func_8002DF54(PlayState* play, Actor* actor, u8 csMode) {
    Player* player = GET_PLAYER(play);

    func_8002DF38(play, actor, csMode);
    player->doorBgCamIndex = 1;

    return true;
}

void func_8002DF90(DynaPolyActor* dynaActor) {
    dynaActor->unk_154 = 0.0f;
    dynaActor->unk_150 = 0.0f;
}

void func_8002DFA4(DynaPolyActor* dynaActor, f32 arg1, s16 arg2) {
    dynaActor->unk_150 += arg1;
    dynaActor->unk_158 = arg2;
}

/**
 * Chcek if the player is facing the specified actor.
 * The maximum angle difference that qualifies as "facing" is specified by `maxAngle`.
 */
s32 Player_IsFacingActor(Actor* actor, s16 maxAngle, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 yawDiff = (s16)(actor->yawTowardsPlayer + 0x8000) - player->actor.shape.rot.y;

    if (ABS(yawDiff) < maxAngle) {
        return true;
    }

    return false;
}

/**
 * Chcek if `actorB` is facing `actorA`.
 * The maximum angle difference that qualifies as "facing" is specified by `maxAngle`.
 *
 * This function is unused in the original game.
 */
s32 Actor_ActorBIsFacingActorA(Actor* actorA, Actor* actorB, s16 maxAngle) {
    s16 yawDiff = (s16)(Actor_WorldYawTowardActor(actorA, actorB) + 0x8000) - actorB->shape.rot.y;

    if (ABS(yawDiff) < maxAngle) {
        return true;
    }

    return false;
}

/**
 * Chcek if the specified actor is facing the player.
 * The maximum angle difference that qualifies as "facing" is specified by `maxAngle`.
 */
s32 Actor_IsFacingPlayer(Actor* actor, s16 maxAngle) {
    s16 yawDiff = actor->yawTowardsPlayer - actor->shape.rot.y;

    if (ABS(yawDiff) < maxAngle) {
        return true;
    }

    return false;
}

/**
 * Chcek if `actorA` is facing `actorB`.
 * The maximum angle difference that qualifies as "facing" is specified by `maxAngle`.
 *
 * This function is unused in the original game.
 */
s32 Actor_ActorAIsFacingActorB(Actor* actorA, Actor* actorB, s16 maxAngle) {
    s16 yawDiff = Actor_WorldYawTowardActor(actorA, actorB) - actorA->shape.rot.y;

    if (ABS(yawDiff) < maxAngle) {
        return true;
    }

    return false;
}

/**
 * Chcek if the specified actor is facing the player and is nearby.
 * The maximum angle difference that qualifies as "facing" is specified by `maxAngle`.
 * The minimum distance that qualifies as "nearby" is specified by `range`.
 */
s32 Actor_IsFacingAndNearPlayer(Actor* actor, f32 range, s16 maxAngle) {
    s16 yawDiff = actor->yawTowardsPlayer - actor->shape.rot.y;

    if (ABS(yawDiff) < maxAngle) {
        f32 xyzDistanceFromLink = sqrtf(SQ(actor->xzDistToPlayer) + SQ(actor->yDistToPlayer));

        if (xyzDistanceFromLink < range) {
            return true;
        }
    }

    return false;
}

/**
 * Chcek if `actorA` is facing `actorB` and is nearby.
 * The maximum angle difference that qualifies as "facing" is specified by `maxAngle`.
 * The minimum distance that qualifies as "nearby" is specified by `range`.
 */
s32 Actor_ActorAIsFacingAndNearActorB(Actor* actorA, Actor* actorB, f32 range, s16 maxAngle) {
    if (Actor_WorldDistXYZToActor(actorA, actorB) < range) {
        s16 yawDiff = Actor_WorldYawTowardActor(actorA, actorB) - actorA->shape.rot.y;

        if (ABS(yawDiff) < maxAngle) {
            return true;
        }
    }

    return false;
}

s32 func_8002E234(Actor* actor, f32 arg1, s32 arg2) {
    if ((actor->bgCheckFlags & BGCHECKFLAG_GROUND) && (arg1 < -11.0f)) {
        actor->bgCheckFlags &= ~BGCHECKFLAG_GROUND;
        actor->bgCheckFlags |= BGCHECKFLAG_GROUND_LEAVE;

        if ((actor->velocity.y < 0.0f) && (arg2 & UPDBGCHECKINFO_FLAG_4)) {
            actor->velocity.y = 0.0f;
        }

        return false;
    }

    return true;
}

s32 func_8002E2AC(PlayState* play, Actor* actor, Vec3f* pos, s32 arg3) {
    f32 floorHeightDiff;
    s32 floorBgId;

    pos->y += 50.0f;

    actor->floorHeight = BgCheck_EntityRaycastDown5(play, &play->colCtx, &actor->floorPoly, &floorBgId, actor, pos);
    actor->bgCheckFlags &= ~(BGCHECKFLAG_GROUND_TOUCH | BGCHECKFLAG_GROUND_LEAVE | BGCHECKFLAG_GROUND_STRICT);

    if (actor->floorHeight <= BGCHECK_Y_MIN) {
        return func_8002E234(actor, BGCHECK_Y_MIN, arg3);
    }

    floorHeightDiff = actor->floorHeight - actor->world.pos.y;
    actor->floorBgId = floorBgId;

    if (floorHeightDiff >= 0.0f) { // actor is on or below the ground
        actor->bgCheckFlags |= BGCHECKFLAG_GROUND_STRICT;

        if (actor->bgCheckFlags & BGCHECKFLAG_CEILING) {
            if (floorBgId != sCurCeilingBgId) {
                if (floorHeightDiff > 15.0f) {
                    actor->bgCheckFlags |= BGCHECKFLAG_CRUSHED;
                }
            } else {
                actor->world.pos.x = actor->prevPos.x;
                actor->world.pos.z = actor->prevPos.z;
            }
        }

        actor->world.pos.y = actor->floorHeight;

        if (actor->velocity.y <= 0.0f) {
            if (!(actor->bgCheckFlags & BGCHECKFLAG_GROUND)) {
                actor->bgCheckFlags |= BGCHECKFLAG_GROUND_TOUCH;
            } else if ((arg3 & UPDBGCHECKINFO_FLAG_3) && (actor->gravity < 0.0f)) {
                actor->velocity.y = -4.0f;
            } else {
                actor->velocity.y = 0.0f;
            }

            actor->bgCheckFlags |= BGCHECKFLAG_GROUND;
            func_80043334(&play->colCtx, actor, actor->floorBgId);
        }
    } else { // actor is above ground
        if ((actor->bgCheckFlags & BGCHECKFLAG_GROUND) && (floorHeightDiff >= -11.0f)) {
            func_80043334(&play->colCtx, actor, actor->floorBgId);
        }

        return func_8002E234(actor, floorHeightDiff, arg3);
    }

    return true;
}

void Actor_UpdateBgCheckInfo(PlayState* play, Actor* actor, f32 wallCheckHeight, f32 wallCheckRadius,
                             f32 ceilingCheckHeight, s32 flags) {
    f32 sp74;
    s32 pad;
    Vec3f sp64;
    s32 bgId;
    CollisionPoly* wallPoly;
    f32 sp58;
    WaterBox* waterBox;
    f32 waterBoxYSurface;
    Vec3f ripplePos;

    sp74 = actor->world.pos.y - actor->prevPos.y;

    if ((actor->floorBgId != BGCHECK_SCENE) && (actor->bgCheckFlags & BGCHECKFLAG_GROUND)) {
        DynaPolyActor_TransformCarriedActor(&play->colCtx, actor->floorBgId, actor);
    }

    if (flags & UPDBGCHECKINFO_FLAG_0) {
        if ((!(flags & UPDBGCHECKINFO_FLAG_7) &&
             BgCheck_EntitySphVsWall3(&play->colCtx, &sp64, &actor->world.pos, &actor->prevPos, wallCheckRadius,
                                      &actor->wallPoly, &bgId, actor, wallCheckHeight)) ||
            ((flags & UPDBGCHECKINFO_FLAG_7) &&
             BgCheck_EntitySphVsWall4(&play->colCtx, &sp64, &actor->world.pos, &actor->prevPos, wallCheckRadius,
                                      &actor->wallPoly, &bgId, actor, wallCheckHeight))) {
            wallPoly = actor->wallPoly;
            Math_Vec3f_Copy(&actor->world.pos, &sp64);
            actor->wallYaw = Math_Atan2S(wallPoly->normal.z, wallPoly->normal.x);
            actor->bgCheckFlags |= BGCHECKFLAG_WALL;
            actor->wallBgId = bgId;
        } else {
            actor->bgCheckFlags &= ~BGCHECKFLAG_WALL;
        }
    }

    sp64.x = actor->world.pos.x;
    sp64.z = actor->world.pos.z;

    if (flags & UPDBGCHECKINFO_FLAG_1) {
        sp64.y = actor->prevPos.y + 10.0f;
        if (BgCheck_EntityCheckCeiling(&play->colCtx, &sp58, &sp64, (ceilingCheckHeight + sp74) - 10.0f,
                                       &sCurCeilingPoly, &sCurCeilingBgId, actor)) {
            actor->bgCheckFlags |= BGCHECKFLAG_CEILING;
            actor->world.pos.y = (sp58 + sp74) - 10.0f;
        } else {
            actor->bgCheckFlags &= ~BGCHECKFLAG_CEILING;
        }
    }

    if (flags & UPDBGCHECKINFO_FLAG_2) {
        sp64.y = actor->prevPos.y;
        func_8002E2AC(play, actor, &sp64, flags);
        waterBoxYSurface = actor->world.pos.y;
        if (WaterBox_GetSurface1(play, &play->colCtx, actor->world.pos.x, actor->world.pos.z, &waterBoxYSurface,
                                 &waterBox)) {
            actor->yDistToWater = waterBoxYSurface - actor->world.pos.y;
            if (actor->yDistToWater < 0.0f) {
                actor->bgCheckFlags &= ~(BGCHECKFLAG_WATER | BGCHECKFLAG_WATER_TOUCH);
            } else {
                if (!(actor->bgCheckFlags & BGCHECKFLAG_WATER)) {
                    actor->bgCheckFlags |= BGCHECKFLAG_WATER_TOUCH;
                    if (!(flags & UPDBGCHECKINFO_FLAG_6)) {
                        ripplePos.x = actor->world.pos.x;
                        ripplePos.y = waterBoxYSurface;
                        ripplePos.z = actor->world.pos.z;
                        EffectSsGRipple_Spawn(play, &ripplePos, 100, 500, 0);
                        EffectSsGRipple_Spawn(play, &ripplePos, 100, 500, 4);
                        EffectSsGRipple_Spawn(play, &ripplePos, 100, 500, 8);
                    }
                }
                actor->bgCheckFlags |= BGCHECKFLAG_WATER;
            }
        } else {
            actor->bgCheckFlags &= ~(BGCHECKFLAG_WATER | BGCHECKFLAG_WATER_TOUCH);
            actor->yDistToWater = BGCHECK_Y_MIN;
        }
    }
}

Mtx D_8015BBA8;

Gfx* func_8002E830(Vec3f* object, Vec3f* eye, Vec3f* lightDir, GraphicsContext* gfxCtx, Gfx* gfx, Hilite** hilite) {
    LookAt* lookAt;
    f32 correctedEyeX;

    lookAt = Graph_Alloc(gfxCtx, sizeof(LookAt));

    correctedEyeX = (eye->x == object->x) && (eye->z == object->z) ? eye->x + 0.001f : eye->x;

    *hilite = Graph_Alloc(gfxCtx, sizeof(Hilite));

    if (R_HREG_MODE == HREG_MODE_PRINT_HILITE_INFO) {
        osSyncPrintf("z_actor.c 3529 eye=[%f(%f) %f %f] object=[%f %f %f] light_direction=[%f %f %f]\n", correctedEyeX,
                     eye->x, eye->y, eye->z, object->x, object->y, object->z, lightDir->x, lightDir->y, lightDir->z);
    }

    View_ErrorCheckEyePosition(correctedEyeX, eye->y, eye->z);
    guLookAtHilite(&D_8015BBA8, lookAt, *hilite, correctedEyeX, eye->y, eye->z, object->x, object->y, object->z, 0.0f,
                   1.0f, 0.0f, lightDir->x, lightDir->y, lightDir->z, lightDir->x, lightDir->y, lightDir->z, 16, 16);

    gSPLookAt(gfx++, lookAt);
    gDPSetHilite1Tile(gfx++, 1, *hilite, 16, 16);

    return gfx;
}

Hilite* func_8002EABC(Vec3f* object, Vec3f* eye, Vec3f* lightDir, GraphicsContext* gfxCtx) {
    Hilite* hilite;

    OPEN_DISPS(gfxCtx, "../z_actor.c", 4306);

    POLY_OPA_DISP = func_8002E830(object, eye, lightDir, gfxCtx, POLY_OPA_DISP, &hilite);

    CLOSE_DISPS(gfxCtx, "../z_actor.c", 4313);

    return hilite;
}

Hilite* func_8002EB44(Vec3f* object, Vec3f* eye, Vec3f* lightDir, GraphicsContext* gfxCtx) {
    Hilite* hilite;

    OPEN_DISPS(gfxCtx, "../z_actor.c", 4332);

    POLY_XLU_DISP = func_8002E830(object, eye, lightDir, gfxCtx, POLY_XLU_DISP, &hilite);

    CLOSE_DISPS(gfxCtx, "../z_actor.c", 4339);

    return hilite;
}

void func_8002EBCC(Actor* actor, PlayState* play, s32 flag) {
    Hilite* hilite;
    Vec3f lightDir;
    Gfx* displayListHead;
    Gfx* displayList;

    lightDir.x = play->envCtx.dirLight1.params.dir.x;
    lightDir.y = play->envCtx.dirLight1.params.dir.y;
    lightDir.z = play->envCtx.dirLight1.params.dir.z;

    if (R_HREG_MODE == HREG_MODE_PRINT_HILITE_INFO) {
        osSyncPrintf("z_actor.c 3637 game_play->view.eye=[%f(%f) %f %f]\n", play->view.eye.x, play->view.eye.y,
                     play->view.eye.z);
    }

    hilite = func_8002EABC(&actor->world.pos, &play->view.eye, &lightDir, play->state.gfxCtx);

    if (flag != 0) {
        displayList = Graph_Alloc(play->state.gfxCtx, 2 * sizeof(Gfx));
        displayListHead = displayList;

        OPEN_DISPS(play->state.gfxCtx, "../z_actor.c", 4384);

        gDPSetHilite1Tile(displayListHead++, 1, hilite, 16, 16);
        gSPEndDisplayList(displayListHead);
        gSPSegment(POLY_OPA_DISP++, 0x07, displayList);

        CLOSE_DISPS(play->state.gfxCtx, "../z_actor.c", 4394);
    }
}

void func_8002ED80(Actor* actor, PlayState* play, s32 flag) {
    Hilite* hilite;
    Vec3f lightDir;
    Gfx* displayListHead;
    Gfx* displayList;

    lightDir.x = play->envCtx.dirLight1.params.dir.x;
    lightDir.y = play->envCtx.dirLight1.params.dir.y;
    lightDir.z = play->envCtx.dirLight1.params.dir.z;

    hilite = func_8002EB44(&actor->world.pos, &play->view.eye, &lightDir, play->state.gfxCtx);

    if (flag != 0) {
        displayList = Graph_Alloc(play->state.gfxCtx, 2 * sizeof(Gfx));
        displayListHead = displayList;

        OPEN_DISPS(play->state.gfxCtx, "../z_actor.c", 4429);

        gDPSetHilite1Tile(displayListHead++, 1, hilite, 16, 16);
        gSPEndDisplayList(displayListHead);
        gSPSegment(POLY_XLU_DISP++, 0x07, displayList);

        CLOSE_DISPS(play->state.gfxCtx, "../z_actor.c", 4439);
    }
}

PosRot* Actor_GetFocus(PosRot* dest, Actor* actor) {
    *dest = actor->focus;

    return dest;
}

PosRot* Actor_GetWorld(PosRot* dest, Actor* actor) {
    *dest = actor->world;

    return dest;
}

PosRot* Actor_GetWorldPosShapeRot(PosRot* arg0, Actor* actor) {
    PosRot sp1C;

    Math_Vec3f_Copy(&sp1C.pos, &actor->world.pos);
    sp1C.rot = actor->shape.rot;
    *arg0 = sp1C;

    return arg0;
}

f32 func_8002EFC0(Actor* actor, Player* player, s16 arg2) {
    s16 yawTemp = (s16)(actor->yawTowardsPlayer - 0x8000) - arg2;
    s16 yawTempAbs = ABS(yawTemp);

    if (player->unk_664 != NULL) {
        if ((yawTempAbs > 0x4000) || (actor->flags & ACTOR_FLAG_27)) {
            return FLT_MAX;
        } else {
            f32 ret =
                actor->xyzDistToPlayerSq - actor->xyzDistToPlayerSq * 0.8f * ((0x4000 - yawTempAbs) * (1.0f / 0x8000));

            return ret;
        }
    }

    if (yawTempAbs > 0x2AAA) {
        return FLT_MAX;
    }

    return actor->xyzDistToPlayerSq;
}

typedef struct {
    /* 0x0 */ f32 rangeSq;
    /* 0x4 */ f32 leashScale;
} TargetRangeParams; // size = 0x8

#define TARGET_RANGE(range, leash) \
    { SQ(range), (f32)range / leash }

TargetRangeParams D_80115FF8[] = {
    TARGET_RANGE(70, 140),   TARGET_RANGE(170, 255),    TARGET_RANGE(280, 5600),      TARGET_RANGE(350, 525),
    TARGET_RANGE(700, 1050), TARGET_RANGE(1000, 1500),  TARGET_RANGE(100, 105.36842), TARGET_RANGE(140, 163.33333),
    TARGET_RANGE(240, 576),  TARGET_RANGE(280, 280000),
};

u32 func_8002F090(Actor* actor, f32 arg1) {
    return arg1 < D_80115FF8[actor->targetMode].rangeSq;
}

s32 func_8002F0C8(Actor* actor, Player* player, s32 flag) {
    if ((actor->update == NULL) || !(actor->flags & ACTOR_FLAG_0)) {
        return true;
    }

    if (!flag) {
        s16 var = (s16)(actor->yawTowardsPlayer - 0x8000) - player->actor.shape.rot.y;
        s16 abs_var = ABS(var);
        f32 dist;

        if ((player->unk_664 == NULL) && (abs_var > 0x2AAA)) {
            dist = FLT_MAX;
        } else {
            dist = actor->xyzDistToPlayerSq;
        }

        return !func_8002F090(actor, D_80115FF8[actor->targetMode].leashScale * dist);
    }

    return false;
}

u32 Actor_ProcessTalkRequest(Actor* actor, PlayState* play) {
    if (actor->flags & ACTOR_FLAG_8) {
        actor->flags &= ~ACTOR_FLAG_8;
        return true;
    }

    return false;
}

s32 func_8002F1C4(Actor* actor, PlayState* play, f32 arg2, f32 arg3, u32 exchangeItemId) {
    Player* player = GET_PLAYER(play);

    if ((player->actor.flags & ACTOR_FLAG_8) || ((exchangeItemId != EXCH_ITEM_NONE) && Player_InCsMode(play)) ||
        (!actor->isTargeted &&
         ((arg3 < fabsf(actor->yDistToPlayer)) || (player->targetActorDistance < actor->xzDistToPlayer) ||
          (arg2 < actor->xzDistToPlayer)))) {
        return false;
    }

    player->targetActor = actor;
    player->targetActorDistance = actor->xzDistToPlayer;
    player->exchangeItemId = exchangeItemId;

    return true;
}

s32 func_8002F298(Actor* actor, PlayState* play, f32 arg2, u32 exchangeItemId) {
    return func_8002F1C4(actor, play, arg2, arg2, exchangeItemId);
}

s32 func_8002F2CC(Actor* actor, PlayState* play, f32 arg2) {
    return func_8002F298(actor, play, arg2, EXCH_ITEM_NONE);
}

s32 func_8002F2F4(Actor* actor, PlayState* play) {
    f32 var1 = 50.0f + actor->colChkInfo.cylRadius;

    return func_8002F2CC(actor, play, var1);
}

u32 Actor_TextboxIsClosing(Actor* actor, PlayState* play) {
    if (Message_GetState(&play->msgCtx) == TEXT_STATE_CLOSING) {
        return true;
    } else {
        return false;
    }
}

s8 func_8002F368(PlayState* play) {
    Player* player = GET_PLAYER(play);

    return player->exchangeItemId;
}

void Actor_GetScreenPos(PlayState* play, Actor* actor, s16* x, s16* y) {
    Vec3f projectedPos;
    f32 cappedInvW;

    Actor_ProjectPos(play, &actor->focus.pos, &projectedPos, &cappedInvW);
    *x = projectedPos.x * cappedInvW * (SCREEN_WIDTH / 2) + (SCREEN_WIDTH / 2);
    *y = projectedPos.y * cappedInvW * -(SCREEN_HEIGHT / 2) + (SCREEN_HEIGHT / 2);
}

u32 Actor_HasParent(Actor* actor, PlayState* play) {
    if (actor->parent != NULL) {
        return true;
    } else {
        return false;
    }
}

/**
 * This function covers various interactions with the player actor, using Get Item IDs (see `GetItemID` enum).
 * It is typically used to give items to the player, but also has other purposes.
 *
 * This function carries a get item request to the player actor if context allows it (e.g. the player is in range and
 * not busy with certain things). The player actor performs the requested action itself.
 *
 * The following description of what the `getItemId` values can do is provided here for completeness, but these
 * behaviors are entirely out of the scope of this function. All behavior is defined by the player actor.
 *
 * - Positive values (`GI_NONE < getItemId < GI_MAX`):
 *    Give an item to the player. The player may not get it immediately (for example if diving), but is expected to
 *    in the near future.
 * - Negative values (`-GI_MAX < getItemId < GI_NONE`):
 *    Used by treasure chests to indicate the chest can be opened (by pressing A).
 *    The item gotten corresponds to the positive Get Item ID `abs(getItemId)`.
 * - `GI_NONE`:
 *    Allows the player to pick up the actor (by pressing A), to carry it around.
 * - `GI_MAX`:
 *    Allows the player to catch specific actors in a bottle.
 *
 * @return true If the player actor is capable of accepting the offer.
 */
s32 Actor_OfferGetItem(Actor* actor, PlayState* play, s32 getItemId, f32 xzRange, f32 yRange) {
    Player* player = GET_PLAYER(play);

    if (!(player->stateFlags1 & (PLAYER_STATE1_7 | PLAYER_STATE1_12 | PLAYER_STATE1_13 | PLAYER_STATE1_14 |
                                 PLAYER_STATE1_18 | PLAYER_STATE1_19 | PLAYER_STATE1_20 | PLAYER_STATE1_21)) &&
        Player_GetExplosiveHeld(player) < 0) {
        if ((((player->heldActor != NULL) || (actor == player->targetActor)) && (getItemId > GI_NONE) &&
             (getItemId < GI_MAX)) ||
            (!(player->stateFlags1 & (PLAYER_STATE1_11 | PLAYER_STATE1_29)))) {
            if ((actor->xzDistToPlayer < xzRange) && (fabsf(actor->yDistToPlayer) < yRange)) {
                s16 yawDiff = actor->yawTowardsPlayer - player->actor.shape.rot.y;
                s32 absYawDiff = ABS(yawDiff);

                if ((getItemId != GI_NONE) || (player->getItemDirection < absYawDiff)) {
                    player->getItemId = getItemId;
                    player->interactRangeActor = actor;
                    player->getItemDirection = absYawDiff;
                    return true;
                }
            }
        }
    }

    return false;
}

s32 Actor_OfferGetItemNearby(Actor* actor, PlayState* play, s32 getItemId) {
    return Actor_OfferGetItem(actor, play, getItemId, 50.0f, 10.0f);
}

s32 Actor_OfferCarry(Actor* actor, PlayState* play) {
    return Actor_OfferGetItemNearby(actor, play, GI_NONE);
}

u32 Actor_HasNoParent(Actor* actor, PlayState* play) {
    if (actor->parent == NULL) {
        return true;
    } else {
        return false;
    }
}

void func_8002F5C4(Actor* actorA, Actor* actorB, PlayState* play) {
    Actor* parent = actorA->parent;

    if (parent->id == ACTOR_PLAYER) {
        Player* player = (Player*)parent;

        player->heldActor = actorB;
        player->interactRangeActor = actorB;
    }

    parent->child = actorB;
    actorB->parent = parent;
    actorA->parent = NULL;
}

void Actor_SetClosestSecretDistance(Actor* actor, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (actor->xyzDistToPlayerSq < player->closestSecretDistSq) {
        player->closestSecretDistSq = actor->xyzDistToPlayerSq;
    }
}

s32 Actor_IsMounted(PlayState* play, Actor* horse) {
    if (horse->child != NULL) {
        return true;
    } else {
        return false;
    }
}

u32 Actor_SetRideActor(PlayState* play, Actor* horse, s32 mountSide) {
    Player* player = GET_PLAYER(play);

    if (!(player->stateFlags1 &
          (PLAYER_STATE1_7 | PLAYER_STATE1_11 | PLAYER_STATE1_12 | PLAYER_STATE1_13 | PLAYER_STATE1_14 |
           PLAYER_STATE1_18 | PLAYER_STATE1_19 | PLAYER_STATE1_20 | PLAYER_STATE1_21))) {
        player->rideActor = horse;
        player->mountSide = mountSide;
        return true;
    }

    return false;
}

s32 Actor_NotMounted(PlayState* play, Actor* horse) {
    if (horse->child == NULL) {
        return true;
    } else {
        return false;
    }
}

void func_8002F698(PlayState* play, Actor* actor, f32 arg2, s16 arg3, f32 arg4, u32 arg5, u32 arg6) {
    Player* player = GET_PLAYER(play);

    player->unk_8A0 = arg6;
    player->unk_8A1 = arg5;
    player->unk_8A2 = arg3;
    player->unk_8A4 = arg2;
    player->unk_8A8 = arg4;
}

void func_8002F6D4(PlayState* play, Actor* actor, f32 arg2, s16 arg3, f32 arg4, u32 arg5) {
    func_8002F698(play, actor, arg2, arg3, arg4, 2, arg5);
}

void func_8002F71C(PlayState* play, Actor* actor, f32 arg2, s16 arg3, f32 arg4) {
    func_8002F6D4(play, actor, arg2, arg3, arg4, 0);
}

void func_8002F758(PlayState* play, Actor* actor, f32 arg2, s16 arg3, f32 arg4, u32 arg5) {
    func_8002F698(play, actor, arg2, arg3, arg4, 1, arg5);
}

void func_8002F7A0(PlayState* play, Actor* actor, f32 arg2, s16 arg3, f32 arg4) {
    func_8002F758(play, actor, arg2, arg3, arg4, 0);
}

void func_8002F7DC(Actor* actor, u16 sfxId) {
    Audio_PlaySfxGeneral(sfxId, &actor->projectedPos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultReverb);
}

void Audio_PlayActorSfx2(Actor* actor, u16 sfxId) {
    func_80078914(&actor->projectedPos, sfxId);
}

void func_8002F850(PlayState* play, Actor* actor) {
    s32 surfaceSfxOffset;

    if (actor->bgCheckFlags & BGCHECKFLAG_WATER) {
        if (actor->yDistToWater < 20.0f) {
            surfaceSfxOffset = SURFACE_SFX_OFFSET_WATER_SHALLOW;
        } else {
            surfaceSfxOffset = SURFACE_SFX_OFFSET_WATER_DEEP;
        }
    } else {
        surfaceSfxOffset = SurfaceType_GetSfxOffset(&play->colCtx, actor->floorPoly, actor->floorBgId);
    }

    func_80078914(&actor->projectedPos, NA_SE_EV_BOMB_BOUND);
    func_80078914(&actor->projectedPos, NA_SE_PL_WALK_GROUND + surfaceSfxOffset);
}

void func_8002F8F0(Actor* actor, u16 sfxId) {
    actor->sfx = sfxId;
    actor->flags |= ACTOR_FLAG_19;
    actor->flags &= ~(ACTOR_FLAG_20 | ACTOR_FLAG_21 | ACTOR_FLAG_28);
}

void func_8002F91C(Actor* actor, u16 sfxId) {
    actor->sfx = sfxId;
    actor->flags |= ACTOR_FLAG_20;
    actor->flags &= ~(ACTOR_FLAG_19 | ACTOR_FLAG_21 | ACTOR_FLAG_28);
}

void func_8002F948(Actor* actor, u16 sfxId) {
    actor->sfx = sfxId;
    actor->flags |= ACTOR_FLAG_21;
    actor->flags &= ~(ACTOR_FLAG_19 | ACTOR_FLAG_20 | ACTOR_FLAG_28);
}

void func_8002F974(Actor* actor, u16 sfxId) {
    actor->flags &= ~(ACTOR_FLAG_19 | ACTOR_FLAG_20 | ACTOR_FLAG_21 | ACTOR_FLAG_28);
    actor->sfx = sfxId;
}

void func_8002F994(Actor* actor, s32 timer) {
    actor->flags |= ACTOR_FLAG_28;
    actor->flags &= ~(ACTOR_FLAG_19 | ACTOR_FLAG_20 | ACTOR_FLAG_21);

    // The sfx field is not used for an actual sound effect here.
    // Instead, it controls the tick speed of the timer sound effect.
    if (timer < 40) {
        actor->sfx = 3;
    } else if (timer < 100) {
        actor->sfx = 2;
    } else {
        actor->sfx = 1;
    }
}

// Tests if something hit Jabu Jabu surface, displaying hit splash and playing sfx if true
s32 func_8002F9EC(PlayState* play, Actor* actor, CollisionPoly* poly, s32 bgId, Vec3f* pos) {
    if (SurfaceType_GetFloorType(&play->colCtx, poly, bgId) == FLOOR_TYPE_8) {
        play->roomCtx.unk_74[0] = 1;
        CollisionCheck_BlueBlood(play, NULL, pos);
        Audio_PlayActorSfx2(actor, NA_SE_IT_WALL_HIT_BUYO);
        return true;
    }

    return false;
}

// Local data used for Farore's Wind light (stored in BSS, possibly a struct?)
LightInfo D_8015BC00;
LightNode* D_8015BC10;
s32 D_8015BC14;
f32 D_8015BC18;

void func_8002FA60(PlayState* play) {
    Vec3f lightPos;

    if (gSaveContext.fw.set) {
        gSaveContext.respawn[RESPAWN_MODE_TOP].data = 0x28;
        gSaveContext.respawn[RESPAWN_MODE_TOP].pos.x = gSaveContext.fw.pos.x;
        gSaveContext.respawn[RESPAWN_MODE_TOP].pos.y = gSaveContext.fw.pos.y;
        gSaveContext.respawn[RESPAWN_MODE_TOP].pos.z = gSaveContext.fw.pos.z;
        gSaveContext.respawn[RESPAWN_MODE_TOP].yaw = gSaveContext.fw.yaw;
        gSaveContext.respawn[RESPAWN_MODE_TOP].playerParams = gSaveContext.fw.playerParams;
        gSaveContext.respawn[RESPAWN_MODE_TOP].entranceIndex = gSaveContext.fw.entranceIndex;
        gSaveContext.respawn[RESPAWN_MODE_TOP].roomIndex = gSaveContext.fw.roomIndex;
        gSaveContext.respawn[RESPAWN_MODE_TOP].tempSwchFlags = gSaveContext.fw.tempSwchFlags;
        gSaveContext.respawn[RESPAWN_MODE_TOP].tempCollectFlags = gSaveContext.fw.tempCollectFlags;
    } else {
        gSaveContext.respawn[RESPAWN_MODE_TOP].data = 0;
        gSaveContext.respawn[RESPAWN_MODE_TOP].pos.x = 0.0f;
        gSaveContext.respawn[RESPAWN_MODE_TOP].pos.y = 0.0f;
        gSaveContext.respawn[RESPAWN_MODE_TOP].pos.z = 0.0f;
    }

    lightPos.x = gSaveContext.respawn[RESPAWN_MODE_TOP].pos.x;
    lightPos.y = gSaveContext.respawn[RESPAWN_MODE_TOP].pos.y + 80.0f;
    lightPos.z = gSaveContext.respawn[RESPAWN_MODE_TOP].pos.z;

    Lights_PointNoGlowSetInfo(&D_8015BC00, lightPos.x, lightPos.y, lightPos.z, 0xFF, 0xFF, 0xFF, -1);

    D_8015BC10 = LightContext_InsertLight(play, &play->lightCtx, &D_8015BC00);
    D_8015BC14 = 0;
    D_8015BC18 = 0.0f;
}

void Actor_DrawFaroresWindPointer(PlayState* play) {
    s32 lightRadius = -1;
    s32 params;

    OPEN_DISPS(play->state.gfxCtx, "../z_actor.c", 5308);

    params = gSaveContext.respawn[RESPAWN_MODE_TOP].data;

    if (params) {
        f32 yOffset = LINK_IS_ADULT ? 80.0f : 60.0f;
        f32 ratio = 1.0f;
        s32 alpha = 255;
        s32 temp = params - 40;

        if (temp < 0) {
            gSaveContext.respawn[RESPAWN_MODE_TOP].data = ++params;
            ratio = ABS(params) * 0.025f;
            D_8015BC14 = 60;
            D_8015BC18 = 1.0f;
        } else if (D_8015BC14) {
            D_8015BC14--;
        } else if (D_8015BC18 > 0.0f) {
            static Vec3f effectVel = { 0.0f, -0.05f, 0.0f };
            static Vec3f effectAccel = { 0.0f, -0.025f, 0.0f };
            static Color_RGBA8 effectPrimCol = { 255, 255, 255, 0 };
            static Color_RGBA8 effectEnvCol = { 100, 200, 0, 0 };
            Vec3f* curPos = &gSaveContext.respawn[RESPAWN_MODE_TOP].pos;
            Vec3f* nextPos = &gSaveContext.respawn[RESPAWN_MODE_DOWN].pos;
            f32 prevNum = D_8015BC18;
            Vec3f dist;
            f32 diff = Math_Vec3f_DistXYZAndStoreDiff(nextPos, curPos, &dist);
            Vec3f effectPos;
            f32 factor;
            f32 length;
            f32 dx;
            f32 speed;

            if (diff < 20.0f) {
                D_8015BC18 = 0.0f;
                Math_Vec3f_Copy(curPos, nextPos);
            } else {
                length = diff * (1.0f / D_8015BC18);
                speed = 20.0f / length;
                speed = CLAMP_MIN(speed, 0.05f);
                Math_StepToF(&D_8015BC18, 0.0f, speed);
                factor = (diff * (D_8015BC18 / prevNum)) / diff;
                curPos->x = nextPos->x + (dist.x * factor);
                curPos->y = nextPos->y + (dist.y * factor);
                curPos->z = nextPos->z + (dist.z * factor);
                length *= 0.5f;
                dx = diff - length;
                yOffset += sqrtf(SQ(length) - SQ(dx)) * 0.2f;
                osSyncPrintf("-------- DISPLAY Y=%f\n", yOffset);
            }

            effectPos.x = curPos->x + Rand_CenteredFloat(6.0f);
            effectPos.y = curPos->y + 80.0f + (6.0f * Rand_ZeroOne());
            effectPos.z = curPos->z + Rand_CenteredFloat(6.0f);

            EffectSsKiraKira_SpawnDispersed(play, &effectPos, &effectVel, &effectAccel, &effectPrimCol, &effectEnvCol,
                                            1000, 16);

            if (D_8015BC18 == 0.0f) {
                gSaveContext.respawn[RESPAWN_MODE_TOP] = gSaveContext.respawn[RESPAWN_MODE_DOWN];
                gSaveContext.respawn[RESPAWN_MODE_TOP].playerParams = 0x06FF;
                gSaveContext.respawn[RESPAWN_MODE_TOP].data = 40;
            }

            gSaveContext.respawn[RESPAWN_MODE_TOP].pos = *curPos;
        } else if (temp > 0) {
            Vec3f* curPos = &gSaveContext.respawn[RESPAWN_MODE_TOP].pos;
            f32 nextRatio = 1.0f - temp * 0.1f;
            f32 curRatio = 1.0f - (f32)(temp - 1) * 0.1f;
            Vec3f eye;
            Vec3f dist;
            f32 diff;

            if (nextRatio > 0.0f) {
                eye.x = play->view.eye.x;
                eye.y = play->view.eye.y - yOffset;
                eye.z = play->view.eye.z;
                diff = Math_Vec3f_DistXYZAndStoreDiff(&eye, curPos, &dist);
                diff = (diff * (nextRatio / curRatio)) / diff;
                curPos->x = eye.x + (dist.x * diff);
                curPos->y = eye.y + (dist.y * diff);
                curPos->z = eye.z + (dist.z * diff);
                gSaveContext.respawn[RESPAWN_MODE_TOP].pos = *curPos;
            }

            alpha = 255 - (temp * 30);

            if (alpha < 0) {
                gSaveContext.fw.set = 0;
                gSaveContext.respawn[RESPAWN_MODE_TOP].data = 0;
                alpha = 0;
            } else {
                gSaveContext.respawn[RESPAWN_MODE_TOP].data = ++params;
            }

            ratio = 1.0f + ((f32)temp * 0.2); // required to match
        }

        lightRadius = 500.0f * ratio;

        if ((play->csCtx.state == CS_STATE_IDLE) &&
            (((void)0, gSaveContext.respawn[RESPAWN_MODE_TOP].entranceIndex) ==
             ((void)0, gSaveContext.entranceIndex)) &&
            (((void)0, gSaveContext.respawn[RESPAWN_MODE_TOP].roomIndex) == play->roomCtx.curRoom.num)) {
            f32 scale = 0.025f * ratio;

            POLY_XLU_DISP = Gfx_SetupDL(POLY_XLU_DISP, SETUPDL_25);

            Matrix_Translate(((void)0, gSaveContext.respawn[RESPAWN_MODE_TOP].pos.x),
                             ((void)0, gSaveContext.respawn[RESPAWN_MODE_TOP].pos.y) + yOffset,
                             ((void)0, gSaveContext.respawn[RESPAWN_MODE_TOP].pos.z), MTXMODE_NEW);
            Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
            Matrix_Mult(&play->billboardMtxF, MTXMODE_APPLY);
            Matrix_Push();

            gDPPipeSync(POLY_XLU_DISP++);
            gDPSetPrimColor(POLY_XLU_DISP++, 128, 128, 255, 255, 200, alpha);
            gDPSetEnvColor(POLY_XLU_DISP++, 100, 200, 0, 255);

            Matrix_RotateZ(BINANG_TO_RAD_ALT2((play->gameplayFrames * 1500) & 0xFFFF), MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_actor.c", 5458),
                      G_MTX_MODELVIEW | G_MTX_LOAD | G_MTX_NOPUSH);
            gSPDisplayList(POLY_XLU_DISP++, gEffFlash1DL);

            Matrix_Pop();
            Matrix_RotateZ(BINANG_TO_RAD_ALT2(~((play->gameplayFrames * 1200) & 0xFFFF)), MTXMODE_APPLY);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_actor.c", 5463),
                      G_MTX_MODELVIEW | G_MTX_LOAD | G_MTX_NOPUSH);
            gSPDisplayList(POLY_XLU_DISP++, gEffFlash1DL);
        }

        Lights_PointNoGlowSetInfo(&D_8015BC00, ((void)0, gSaveContext.respawn[RESPAWN_MODE_TOP].pos.x),
                                  ((void)0, gSaveContext.respawn[RESPAWN_MODE_TOP].pos.y) + yOffset,
                                  ((void)0, gSaveContext.respawn[RESPAWN_MODE_TOP].pos.z), 255, 255, 255, lightRadius);

        CLOSE_DISPS(play->state.gfxCtx, "../z_actor.c", 5474);
    }
}

void func_80030488(PlayState* play) {
    LightContext_RemoveLight(play, &play->lightCtx, D_8015BC10);
}

void Actor_DisableLens(PlayState* play) {
    if (play->actorCtx.lensActive) {
        play->actorCtx.lensActive = false;
        Magic_Reset(play);
    }
}

void Actor_InitContext(PlayState* play, ActorContext* actorCtx, ActorEntry* playerEntry) {
    ActorOverlay* overlayEntry;
    SavedSceneFlags* savedSceneFlags;
    s32 i;

    savedSceneFlags = &gSaveContext.sceneFlags[play->sceneId];

    bzero(actorCtx, sizeof(ActorContext));

    ActorOverlayTable_Init();
    Matrix_MtxFCopy(&play->billboardMtxF, &gMtxFClear);
    Matrix_MtxFCopy(&play->viewProjectionMtxF, &gMtxFClear);

    overlayEntry = &gActorOverlayTable[0];
    for (i = 0; i < ARRAY_COUNT(gActorOverlayTable); i++) {
        overlayEntry->loadedRamAddr = NULL;
        overlayEntry->numLoaded = 0;
        overlayEntry++;
    }

    actorCtx->flags.chest = savedSceneFlags->chest;
    actorCtx->flags.swch = savedSceneFlags->swch;
    actorCtx->flags.clear = savedSceneFlags->clear;
    actorCtx->flags.collect = savedSceneFlags->collect;

    TitleCard_Init(play, &actorCtx->titleCtx);

    actorCtx->absoluteSpace = NULL;

    Actor_SpawnEntry(actorCtx, playerEntry, play);
    func_8002C0C0(&actorCtx->targetCtx, actorCtx->actorLists[ACTORCAT_PLAYER].head, play);
    func_8002FA60(play);
}

u32 sCategoryFreezeMasks[ACTORCAT_MAX] = {
    // ACTORCAT_SWITCH
    PLAYER_STATE1_6 | PLAYER_STATE1_7 | PLAYER_STATE1_28,
    // ACTORCAT_BG
    PLAYER_STATE1_6 | PLAYER_STATE1_7 | PLAYER_STATE1_28,
    // ACTORCAT_PLAYER
    0,
    // ACTORCAT_EXPLOSIVE
    PLAYER_STATE1_6 | PLAYER_STATE1_7 | PLAYER_STATE1_10 | PLAYER_STATE1_28,
    // ACTORCAT_NPC
    PLAYER_STATE1_7,
    // ACTORCAT_ENEMY
    PLAYER_STATE1_6 | PLAYER_STATE1_7 | PLAYER_STATE1_28 | PLAYER_STATE1_29,
    // ACTORCAT_PROP
    PLAYER_STATE1_7 | PLAYER_STATE1_28,
    // ACTORCAT_ITEMACTION
    0,
    // ACTORCAT_MISC
    PLAYER_STATE1_6 | PLAYER_STATE1_7 | PLAYER_STATE1_28 | PLAYER_STATE1_29,
    // ACTORCAT_BOSS
    PLAYER_STATE1_6 | PLAYER_STATE1_7 | PLAYER_STATE1_10 | PLAYER_STATE1_28,
    // ACTORCAT_DOOR
    0,
    // ACTORCAT_CHEST
    PLAYER_STATE1_6 | PLAYER_STATE1_7 | PLAYER_STATE1_28,
};

void Actor_UpdateAll(PlayState* play, ActorContext* actorCtx) {
    Actor* refActor;
    Actor* actor;
    Player* player;
    u32* categoryFreezeMaskP;
    u32 requiredActorFlag;
    u32 canFreezeCategory;
    Actor* sp74;
    ActorEntry* actorEntry;
    s32 i;

    player = GET_PLAYER(play);

    if (0) {
        // This ASSERT is optimized out but it exists due to its presence in rodata
        ASSERT(gMaxActorId == ACTOR_ID_MAX, "MaxProfile == ACTOR_DLF_MAX", "../z_actor.c", UNK_LINE);
    }

    sp74 = NULL;
    requiredActorFlag = 0;

    if (play->numActorEntries != 0) {
        actorEntry = &play->actorEntryList[0];
        for (i = 0; i < play->numActorEntries; i++) {
            Actor_SpawnEntry(&play->actorCtx, actorEntry++, play);
        }
        play->numActorEntries = 0;
    }

    if (actorCtx->unk_02 != 0) {
        actorCtx->unk_02--;
    }

    if (KREG(0) == -100) {
        refActor = &GET_PLAYER(play)->actor;
        KREG(0) = 0;
        Actor_Spawn(&play->actorCtx, play, ACTOR_EN_CLEAR_TAG, refActor->world.pos.x, refActor->world.pos.y + 100.0f,
                    refActor->world.pos.z, 0, 0, 0, 1);
    }

    categoryFreezeMaskP = &sCategoryFreezeMasks[0];

    if (player->stateFlags2 & PLAYER_STATE2_27) {
        requiredActorFlag = ACTOR_FLAG_25;
    }

    if ((player->stateFlags1 & PLAYER_STATE1_6) && ((player->actor.textId & 0xFF00) != 0x600)) {
        sp74 = player->targetActor;
    }

    for (i = 0; i < ARRAY_COUNT(actorCtx->actorLists); i++, categoryFreezeMaskP++) {
        canFreezeCategory = (*categoryFreezeMaskP & player->stateFlags1);

        actor = actorCtx->actorLists[i].head;
        while (actor != NULL) {
            if (actor->world.pos.y < -25000.0f) {
                actor->world.pos.y = -25000.0f;
            }

            actor->sfx = 0;

            if (actor->init != NULL) {
                if (Object_IsLoaded(&play->objectCtx, actor->objBankIndex)) {
                    Actor_SetObjectDependency(play, actor);
                    actor->init(actor, play);
                    actor->init = NULL;
                }
                actor = actor->next;
            } else if (!Object_IsLoaded(&play->objectCtx, actor->objBankIndex)) {
                Actor_Kill(actor);
                actor = actor->next;
            } else if ((requiredActorFlag && !(actor->flags & requiredActorFlag)) ||
                       (!requiredActorFlag && canFreezeCategory &&
                        !((sp74 == actor) || (actor == player->naviActor) || (actor == player->heldActor) ||
                          (&player->actor == actor->parent)))) {
                CollisionCheck_ResetDamage(&actor->colChkInfo);
                actor = actor->next;
            } else if (actor->update == NULL) {
                if (!actor->isDrawn) {
                    actor = Actor_Delete(&play->actorCtx, actor, play);
                } else {
                    Actor_Destroy(actor, play);
                    actor = actor->next;
                }
            } else {
                Math_Vec3f_Copy(&actor->prevPos, &actor->world.pos);
                actor->xzDistToPlayer = Actor_WorldDistXZToActor(actor, &player->actor);
                actor->yDistToPlayer = Actor_HeightDiff(actor, &player->actor);
                actor->xyzDistToPlayerSq = SQ(actor->xzDistToPlayer) + SQ(actor->yDistToPlayer);

                actor->yawTowardsPlayer = Actor_WorldYawTowardActor(actor, &player->actor);
                actor->flags &= ~ACTOR_FLAG_24;

                if ((DECR(actor->freezeTimer) == 0) && (actor->flags & (ACTOR_FLAG_4 | ACTOR_FLAG_6))) {
                    if (actor == player->unk_664) {
                        actor->isTargeted = true;
                    } else {
                        actor->isTargeted = false;
                    }

                    if ((actor->targetPriority != 0) && (player->unk_664 == NULL)) {
                        actor->targetPriority = 0;
                    }

                    Actor_SetObjectDependency(play, actor);
                    if (actor->colorFilterTimer != 0) {
                        actor->colorFilterTimer--;
                    }
                    actor->update(actor, play);
                    DynaPoly_UnsetAllInteractFlags(play, &play->colCtx.dyna, actor);
                }

                CollisionCheck_ResetDamage(&actor->colChkInfo);

                actor = actor->next;
            }
        }

        if (i == ACTORCAT_BG) {
            DynaPoly_UpdateContext(play, &play->colCtx.dyna);
        }
    }

    actor = player->unk_664;

    if ((actor != NULL) && (actor->update == NULL)) {
        actor = NULL;
        func_8008EDF0(player);
    }

    if ((actor == NULL) || (player->unk_66C < 5)) {
        actor = NULL;
        if (actorCtx->targetCtx.unk_4B != 0) {
            actorCtx->targetCtx.unk_4B = 0;
            func_80078884(NA_SE_SY_LOCK_OFF);
        }
    }

    func_8002C7BC(&actorCtx->targetCtx, player, actor, play);
    TitleCard_Update(play, &actorCtx->titleCtx);
    DynaPoly_UpdateBgActorTransforms(play, &play->colCtx.dyna);
}

void Actor_FaultPrint(Actor* actor, char* command) {
    ActorOverlay* overlayEntry;
    char* name;

    if ((actor == NULL) || (actor->overlayEntry == NULL)) {
        FaultDrawer_SetCursor(48, 24);
        FaultDrawer_Printf("ACTOR NAME is NULL");
    }

    overlayEntry = actor->overlayEntry;
    name = overlayEntry->name != NULL ? overlayEntry->name : "";

    osSyncPrintf("アクターの名前(%08x:%s)\n", actor, name); // "Actor name (%08x:%s)"

    if (command != NULL) {
        osSyncPrintf("コメント:%s\n", command); // "Command:%s"
    }

    FaultDrawer_SetCursor(48, 24);
    FaultDrawer_Printf("ACTOR NAME %08x:%s", actor, name);
}

void Actor_Draw(PlayState* play, Actor* actor) {
    FaultClient faultClient;
    Lights* lights;

    Fault_AddClient(&faultClient, Actor_FaultPrint, actor, "Actor_draw");

    OPEN_DISPS(play->state.gfxCtx, "../z_actor.c", 6035);

    lights = LightContext_NewLights(&play->lightCtx, play->state.gfxCtx);

    Lights_BindAll(lights, play->lightCtx.listHead, (actor->flags & ACTOR_FLAG_22) ? NULL : &actor->world.pos);
    Lights_Draw(lights, play->state.gfxCtx);

    if (actor->flags & ACTOR_FLAG_IGNORE_QUAKE) {
        Matrix_SetTranslateRotateYXZ(actor->world.pos.x + play->mainCamera.quakeOffset.x,
                                     actor->world.pos.y +
                                         ((actor->shape.yOffset * actor->scale.y) + play->mainCamera.quakeOffset.y),
                                     actor->world.pos.z + play->mainCamera.quakeOffset.z, &actor->shape.rot);
    } else {
        Matrix_SetTranslateRotateYXZ(actor->world.pos.x, actor->world.pos.y + (actor->shape.yOffset * actor->scale.y),
                                     actor->world.pos.z, &actor->shape.rot);
    }

    Matrix_Scale(actor->scale.x, actor->scale.y, actor->scale.z, MTXMODE_APPLY);
    Actor_SetObjectDependency(play, actor);

    gSPSegment(POLY_OPA_DISP++, 0x06, play->objectCtx.status[actor->objBankIndex].segment);
    gSPSegment(POLY_XLU_DISP++, 0x06, play->objectCtx.status[actor->objBankIndex].segment);

    if (actor->colorFilterTimer != 0) {
        Color_RGBA8 color = { 0, 0, 0, 255 };

        if (actor->colorFilterParams & COLORFILTER_COLORFLAG_GRAY) {
            color.r = color.g = color.b = COLORFILTER_GET_COLORINTENSITY(actor->colorFilterParams) | 7;
        } else if (actor->colorFilterParams & COLORFILTER_COLORFLAG_RED) {
            color.r = COLORFILTER_GET_COLORINTENSITY(actor->colorFilterParams) | 7;
        } else {
            color.b = COLORFILTER_GET_COLORINTENSITY(actor->colorFilterParams) | 7;
        }

        if (actor->colorFilterParams & COLORFILTER_BUFFLAG_XLU) {
            func_80026860(play, &color, actor->colorFilterTimer, COLORFILTER_GET_DURATION(actor->colorFilterParams));
        } else {
            func_80026400(play, &color, actor->colorFilterTimer, COLORFILTER_GET_DURATION(actor->colorFilterParams));
        }
    }

    actor->draw(actor, play);

    if (actor->colorFilterTimer != 0) {
        if (actor->colorFilterParams & COLORFILTER_BUFFLAG_XLU) {
            func_80026A6C(play);
        } else {
            func_80026608(play);
        }
    }

    if (actor->shape.shadowDraw != NULL) {
        actor->shape.shadowDraw(actor, lights, play);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_actor.c", 6119);

    Fault_RemoveClient(&faultClient);
}

void func_80030ED8(Actor* actor) {
    if (actor->flags & ACTOR_FLAG_19) {
        Audio_PlaySfxGeneral(actor->sfx, &actor->projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    } else if (actor->flags & ACTOR_FLAG_20) {
        func_80078884(actor->sfx);
    } else if (actor->flags & ACTOR_FLAG_21) {
        func_800788CC(actor->sfx);
    } else if (actor->flags & ACTOR_FLAG_28) {
        func_800F4C58(&gSfxDefaultPos, NA_SE_SY_TIMER - SFX_FLAG, (s8)(actor->sfx - 1));
    } else {
        func_80078914(&actor->projectedPos, actor->sfx);
    }
}

#define LENS_MASK_WIDTH 64
#define LENS_MASK_HEIGHT 64
// 26 and 6 are for padding between the mask texture and the screen borders
#define LENS_MASK_OFFSET_S ((SCREEN_WIDTH / 2 - LENS_MASK_WIDTH) - 26)
#define LENS_MASK_OFFSET_T ((SCREEN_HEIGHT / 2 - LENS_MASK_HEIGHT) - 6)

void Actor_DrawLensOverlay(GraphicsContext* gfxCtx) {
    OPEN_DISPS(gfxCtx, "../z_actor.c", 6161);

    gDPLoadTextureBlock(POLY_XLU_DISP++, gLensOfTruthMaskTex, G_IM_FMT_I, G_IM_SIZ_8b, LENS_MASK_WIDTH,
                        LENS_MASK_HEIGHT, 0, G_TX_MIRROR | G_TX_CLAMP, G_TX_MIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD,
                        G_TX_NOLOD);

    gDPSetTileSize(POLY_XLU_DISP++, G_TX_RENDERTILE, (SCREEN_WIDTH / 2 - LENS_MASK_WIDTH) << 2,
                   (SCREEN_HEIGHT / 2 - LENS_MASK_HEIGHT) << 2, (SCREEN_WIDTH / 2 + LENS_MASK_WIDTH - 1) << 2,
                   (SCREEN_HEIGHT / 2 + LENS_MASK_HEIGHT - 1) << 2);
    gSPTextureRectangle(POLY_XLU_DISP++, 0, 0, SCREEN_WIDTH << 2, SCREEN_HEIGHT << 2, G_TX_RENDERTILE,
                        LENS_MASK_OFFSET_S << 5, LENS_MASK_OFFSET_T << 5,
                        (1 << 10) * (SCREEN_WIDTH - 2 * LENS_MASK_OFFSET_S) / SCREEN_WIDTH,
                        (1 << 10) * (SCREEN_HEIGHT - 2 * LENS_MASK_OFFSET_T) / SCREEN_HEIGHT);
    gDPPipeSync(POLY_XLU_DISP++);

    CLOSE_DISPS(gfxCtx, "../z_actor.c", 6183);
}

void Actor_DrawLensActors(PlayState* play, s32 numInvisibleActors, Actor** invisibleActors) {
    Actor** invisibleActor;
    GraphicsContext* gfxCtx;
    s32 i;

    gfxCtx = play->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_actor.c", 6197);

    gDPNoOpString(POLY_OPA_DISP++, "魔法のメガネ START", 0); // "Magic lens START"

    gDPPipeSync(POLY_XLU_DISP++);

    if (play->roomCtx.curRoom.lensMode == LENS_MODE_HIDE_ACTORS) {
        // Update both the color frame buffer and the z-buffer
        gDPSetOtherMode(POLY_XLU_DISP++,
                        G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                            G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                        G_AC_THRESHOLD | G_ZS_PRIM | Z_UPD | G_RM_CLD_SURF | G_RM_CLD_SURF2);

        gDPSetCombineMode(POLY_XLU_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 0, 0, 255);

        // the z-buffer will later only allow drawing inside the lens circle
    } else {
        // Update the z-buffer but not the color frame buffer
        gDPSetOtherMode(POLY_XLU_DISP++,
                        G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                            G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                        G_AC_THRESHOLD | G_ZS_PRIM | Z_UPD | IM_RD | CVG_DST_SAVE | ZMODE_OPA | FORCE_BL |
                            GBL_c1(G_BL_CLR_BL, G_BL_0, G_BL_CLR_MEM, G_BL_1MA) |
                            GBL_c2(G_BL_CLR_BL, G_BL_0, G_BL_CLR_MEM, G_BL_1MA));

        // inverts the mask image, which initially is 0 inner and 74 outer,
        // by setting the combiner to draw 74 - image instead of the image
        gDPSetCombineLERP(POLY_XLU_DISP++, PRIMITIVE, TEXEL0, PRIM_LOD_FRAC, 0, PRIMITIVE, TEXEL0, PRIM_LOD_FRAC, 0,
                          PRIMITIVE, TEXEL0, PRIM_LOD_FRAC, 0, PRIMITIVE, TEXEL0, PRIM_LOD_FRAC, 0);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0xFF, 74, 74, 74, 74);

        // the z-buffer will later only allow drawing outside the lens circle
    }

    // Together with the depth source set above, this sets the depth to the closest.
    // For a pixel with such a depth value, the z-buffer will reject drawing to that pixel.
    gDPSetPrimDepth(POLY_XLU_DISP++, 0, 0);

    // The z-buffer will be updated where the mask is not fully transparent.
    Actor_DrawLensOverlay(gfxCtx);

    // "Magic lens invisible Actor display START"
    gDPNoOpString(POLY_OPA_DISP++, "魔法のメガネ 見えないＡcｔｏｒ表示 START", numInvisibleActors);

    invisibleActor = &invisibleActors[0];
    for (i = 0; i < numInvisibleActors; i++) {
        // "Magic lens invisible Actor display"
        gDPNoOpString(POLY_OPA_DISP++, "魔法のメガネ 見えないＡcｔｏｒ表示", i);
        Actor_Draw(play, *(invisibleActor++));
    }

    // "Magic lens invisible Actor display END"
    gDPNoOpString(POLY_OPA_DISP++, "魔法のメガネ 見えないＡcｔｏｒ表示 END", numInvisibleActors);

    if (play->roomCtx.curRoom.lensMode != LENS_MODE_HIDE_ACTORS) {
        // Draw the lens overlay to the color frame buffer

        gDPNoOpString(POLY_OPA_DISP++, "青い眼鏡(外側)", 0); // "Blue spectacles (exterior)"

        gDPPipeSync(POLY_XLU_DISP++);

        gDPSetOtherMode(POLY_XLU_DISP++,
                        G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                            G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                        G_AC_THRESHOLD | G_ZS_PRIM | G_RM_CLD_SURF | G_RM_CLD_SURF2);
        gDPSetCombineMode(POLY_XLU_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 0, 0, 255);

        Actor_DrawLensOverlay(gfxCtx);

        gDPNoOpString(POLY_OPA_DISP++, "青い眼鏡(外側)", 1); // "Blue spectacles (exterior)"
    }

    gDPNoOpString(POLY_OPA_DISP++, "魔法のメガネ END", 0); // "Magic lens END"

    CLOSE_DISPS(gfxCtx, "../z_actor.c", 6284);
}

s32 func_800314B0(PlayState* play, Actor* actor) {
    return func_800314D4(play, actor, &actor->projectedPos, actor->projectedW);
}

s32 func_800314D4(PlayState* play, Actor* actor, Vec3f* arg2, f32 arg3) {
    f32 var;

    if ((arg2->z > -actor->uncullZoneScale) && (arg2->z < (actor->uncullZoneForward + actor->uncullZoneScale))) {
        var = (arg3 < 1.0f) ? 1.0f : 1.0f / arg3;

        if ((((fabsf(arg2->x) - actor->uncullZoneScale) * var) < 1.0f) &&
            (((arg2->y + actor->uncullZoneDownward) * var) > -1.0f) &&
            (((arg2->y - actor->uncullZoneScale) * var) < 1.0f)) {
            return true;
        }
    }

    return false;
}

void func_800315AC(PlayState* play, ActorContext* actorCtx) {
    s32 invisibleActorCounter;
    Actor* invisibleActors[INVISIBLE_ACTOR_MAX];
    ActorListEntry* actorListEntry;
    Actor* actor;
    s32 i;

    invisibleActorCounter = 0;

    OPEN_DISPS(play->state.gfxCtx, "../z_actor.c", 6336);

    actorListEntry = &actorCtx->actorLists[0];

    for (i = 0; i < ARRAY_COUNT(actorCtx->actorLists); i++, actorListEntry++) {
        actor = actorListEntry->head;

        while (actor != NULL) {
            ActorOverlay* overlayEntry = actor->overlayEntry;
            char* actorName = overlayEntry->name != NULL ? overlayEntry->name : "";

            gDPNoOpString(POLY_OPA_DISP++, actorName, i);
            gDPNoOpString(POLY_XLU_DISP++, actorName, i);

            HREG(66) = i;

            if ((HREG(64) != 1) || ((HREG(65) != -1) && (HREG(65) != HREG(66))) || (HREG(68) == 0)) {
                SkinMatrix_Vec3fMtxFMultXYZW(&play->viewProjectionMtxF, &actor->world.pos, &actor->projectedPos,
                                             &actor->projectedW);
            }

            if ((HREG(64) != 1) || ((HREG(65) != -1) && (HREG(65) != HREG(66))) || (HREG(69) == 0)) {
                if (actor->sfx != 0) {
                    func_80030ED8(actor);
                }
            }

            if ((HREG(64) != 1) || ((HREG(65) != -1) && (HREG(65) != HREG(66))) || (HREG(70) == 0)) {
                if (func_800314B0(play, actor)) {
                    actor->flags |= ACTOR_FLAG_6;
                } else {
                    actor->flags &= ~ACTOR_FLAG_6;
                }
            }

            actor->isDrawn = false;

            if ((HREG(64) != 1) || ((HREG(65) != -1) && (HREG(65) != HREG(66))) || (HREG(71) == 0)) {
                if ((actor->init == NULL) && (actor->draw != NULL) && (actor->flags & (ACTOR_FLAG_5 | ACTOR_FLAG_6))) {
                    if ((actor->flags & ACTOR_FLAG_7) &&
                        ((play->roomCtx.curRoom.lensMode == LENS_MODE_HIDE_ACTORS) || play->actorCtx.lensActive ||
                         (actor->room != play->roomCtx.curRoom.num))) {
                        ASSERT(invisibleActorCounter < INVISIBLE_ACTOR_MAX,
                               "invisible_actor_counter < INVISIBLE_ACTOR_MAX", "../z_actor.c", 6464);
                        invisibleActors[invisibleActorCounter] = actor;
                        invisibleActorCounter++;
                    } else {
                        if ((HREG(64) != 1) || ((HREG(65) != -1) && (HREG(65) != HREG(66))) || (HREG(72) == 0)) {
                            Actor_Draw(play, actor);
                            actor->isDrawn = true;
                        }
                    }
                }
            }

            actor = actor->next;
        }
    }

    if ((HREG(64) != 1) || (HREG(73) != 0)) {
        Effect_DrawAll(play->state.gfxCtx);
    }

    if ((HREG(64) != 1) || (HREG(74) != 0)) {
        EffectSs_DrawAll(play);
    }

    if ((HREG(64) != 1) || (HREG(72) != 0)) {
        if (play->actorCtx.lensActive) {
            Actor_DrawLensActors(play, invisibleActorCounter, invisibleActors);
            if ((play->csCtx.state != CS_STATE_IDLE) || Player_InCsMode(play)) {
                Actor_DisableLens(play);
            }
        }
    }

    Actor_DrawFaroresWindPointer(play);

    if (IREG(32) == 0) {
        Lights_DrawGlow(play);
    }

    if ((HREG(64) != 1) || (HREG(75) != 0)) {
        TitleCard_Draw(play, &actorCtx->titleCtx);
    }

    if ((HREG(64) != 1) || (HREG(76) != 0)) {
        CollisionCheck_DrawCollision(play, &play->colChkCtx);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_actor.c", 6563);
}

/**
 * Kill every actor which depends on an object that is not loaded.
 */
void Actor_KillAllWithMissingObject(PlayState* play, ActorContext* actorCtx) {
    Actor* actor;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(actorCtx->actorLists); i++) {
        actor = actorCtx->actorLists[i].head;
        while (actor != NULL) {
            if (!Object_IsLoaded(&play->objectCtx, actor->objBankIndex)) {
                Actor_Kill(actor);
            }
            actor = actor->next;
        }
    }
}

u8 sEnemyActorCategories[] = { ACTORCAT_ENEMY, ACTORCAT_BOSS };

void Actor_FreezeAllEnemies(PlayState* play, ActorContext* actorCtx, s32 duration) {
    Actor* actor;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(sEnemyActorCategories); i++) {
        actor = actorCtx->actorLists[sEnemyActorCategories[i]].head;
        while (actor != NULL) {
            actor->freezeTimer = duration;
            actor = actor->next;
        }
    }
}

/**
 * Kill actors on room change and update flags accordingly
 */
void func_80031B14(PlayState* play, ActorContext* actorCtx) {
    Actor* actor;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(actorCtx->actorLists); i++) {
        actor = actorCtx->actorLists[i].head;
        while (actor != NULL) {
            if ((actor->room >= 0) && (actor->room != play->roomCtx.curRoom.num) &&
                (actor->room != play->roomCtx.prevRoom.num)) {
                if (!actor->isDrawn) {
                    actor = Actor_Delete(actorCtx, actor, play);
                } else {
                    Actor_Kill(actor);
                    Actor_Destroy(actor, play);
                    actor = actor->next;
                }
            } else {
                actor = actor->next;
            }
        }
    }

    CollisionCheck_ClearContext(play, &play->colChkCtx);
    actorCtx->flags.tempClear = 0;
    actorCtx->flags.tempSwch &= 0xFFFFFF;
    play->msgCtx.unk_E3F4 = 0;
}

// Actor_CleanupContext
void func_80031C3C(ActorContext* actorCtx, PlayState* play) {
    Actor* actor;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(actorCtx->actorLists); i++) {
        actor = actorCtx->actorLists[i].head;
        while (actor != NULL) {
            Actor_Delete(actorCtx, actor, play);
            actor = actorCtx->actorLists[i].head;
        }
    }

    if (HREG(20) != 0) {
        osSyncPrintf("絶対魔法領域解放\n"); // "Absolute magic field deallocation"
    }

    if (actorCtx->absoluteSpace != NULL) {
        ZeldaArena_FreeDebug(actorCtx->absoluteSpace, "../z_actor.c", 6731);
        actorCtx->absoluteSpace = NULL;
    }

    Play_SaveSceneFlags(play);
    func_80030488(play);
    ActorOverlayTable_Cleanup();
}

/**
 * Adds a given actor instance at the front of the actor list of the specified category.
 * Also sets the actor instance as being of that category.
 */
void Actor_AddToCategory(ActorContext* actorCtx, Actor* actorToAdd, u8 actorCategory) {
    Actor* prevHead;

    actorToAdd->category = actorCategory;

    actorCtx->total++;
    actorCtx->actorLists[actorCategory].length++;
    prevHead = actorCtx->actorLists[actorCategory].head;

    if (prevHead != NULL) {
        prevHead->prev = actorToAdd;
    }

    actorCtx->actorLists[actorCategory].head = actorToAdd;
    actorToAdd->next = prevHead;
}

/**
 * Removes a given actor instance from its actor list.
 * Also sets the temp clear flag of the current room if the actor removed was the last enemy loaded.
 */
Actor* Actor_RemoveFromCategory(PlayState* play, ActorContext* actorCtx, Actor* actorToRemove) {
    Actor* newHead;

    actorCtx->total--;
    actorCtx->actorLists[actorToRemove->category].length--;

    if (actorToRemove->prev != NULL) {
        actorToRemove->prev->next = actorToRemove->next;
    } else {
        actorCtx->actorLists[actorToRemove->category].head = actorToRemove->next;
    }

    newHead = actorToRemove->next;

    if (newHead != NULL) {
        newHead->prev = actorToRemove->prev;
    }

    actorToRemove->next = NULL;
    actorToRemove->prev = NULL;

    if ((actorToRemove->room == play->roomCtx.curRoom.num) && (actorToRemove->category == ACTORCAT_ENEMY) &&
        (actorCtx->actorLists[ACTORCAT_ENEMY].length == 0)) {
        Flags_SetTempClear(play, play->roomCtx.curRoom.num);
    }

    return newHead;
}

void Actor_FreeOverlay(ActorOverlay* actorOverlay) {
    osSyncPrintf(VT_FGCOL(CYAN));

    if (actorOverlay->numLoaded == 0) {
        if (HREG(20) != 0) {
            osSyncPrintf("アクタークライアントが０になりました\n"); // "Actor client is now 0"
        }

        if (actorOverlay->loadedRamAddr != NULL) {
            if (actorOverlay->allocType & ACTOROVL_ALLOC_PERSISTENT) {
                if (HREG(20) != 0) {
                    osSyncPrintf("オーバーレイ解放しません\n"); // "Overlay will not be deallocated"
                }
            } else if (actorOverlay->allocType & ACTOROVL_ALLOC_ABSOLUTE) {
                if (HREG(20) != 0) {
                    // "Absolute magic field reserved, so deallocation will not occur"
                    osSyncPrintf("絶対魔法領域確保なので解放しません\n");
                }
                actorOverlay->loadedRamAddr = NULL;
            } else {
                if (HREG(20) != 0) {
                    osSyncPrintf("オーバーレイ解放します\n"); // "Overlay deallocated"
                }
                ZeldaArena_FreeDebug(actorOverlay->loadedRamAddr, "../z_actor.c", 6834);
                actorOverlay->loadedRamAddr = NULL;
            }
        }
    } else if (HREG(20) != 0) {
        // "%d of actor client remains"
        osSyncPrintf("アクタークライアントはあと %d 残っています\n", actorOverlay->numLoaded);
    }

    osSyncPrintf(VT_RST);
}

Actor* Actor_Spawn(ActorContext* actorCtx, PlayState* play, s16 actorId, f32 posX, f32 posY, f32 posZ, s16 rotX,
                   s16 rotY, s16 rotZ, s16 params) {
    s32 pad;
    Actor* actor;
    ActorInit* actorInit;
    s32 objBankIndex;
    ActorOverlay* overlayEntry;
    uintptr_t temp;
    char* name;
    u32 overlaySize;

    overlayEntry = &gActorOverlayTable[actorId];
    ASSERT(actorId < ACTOR_ID_MAX, "profile < ACTOR_DLF_MAX", "../z_actor.c", 6883);

    name = overlayEntry->name != NULL ? overlayEntry->name : "";
    overlaySize = (u32)overlayEntry->vramEnd - (u32)overlayEntry->vramStart;

    if (HREG(20) != 0) {
        // "Actor class addition [%d:%s]"
        osSyncPrintf("アクタークラス追加 [%d:%s]\n", actorId, name);
    }

    if (actorCtx->total > ACTOR_NUMBER_MAX) {
        // "Ａｃｔｏｒ set number exceeded"
        osSyncPrintf(VT_COL(YELLOW, BLACK) "Ａｃｔｏｒセット数オーバー\n" VT_RST);
        return NULL;
    }

    if (overlayEntry->vramStart == NULL) {
        if (HREG(20) != 0) {
            osSyncPrintf("オーバーレイではありません\n"); // "Not an overlay"
        }

        actorInit = overlayEntry->initInfo;
    } else {
        if (overlayEntry->loadedRamAddr != NULL) {
            if (HREG(20) != 0) {
                osSyncPrintf("既にロードされています\n"); // "Already loaded"
            }
        } else {
            if (overlayEntry->allocType & ACTOROVL_ALLOC_ABSOLUTE) {
                ASSERT(overlaySize <= ACTOROVL_ABSOLUTE_SPACE_SIZE, "actor_segsize <= AM_FIELD_SIZE", "../z_actor.c",
                       6934);

                if (actorCtx->absoluteSpace == NULL) {
                    // "AMF: absolute magic field"
                    actorCtx->absoluteSpace =
                        ZeldaArena_MallocRDebug(ACTOROVL_ABSOLUTE_SPACE_SIZE, "AMF:絶対魔法領域", 0);
                    if (HREG(20) != 0) {
                        // "Absolute magic field reservation - %d bytes reserved"
                        osSyncPrintf("絶対魔法領域確保 %d バイト確保\n", ACTOROVL_ABSOLUTE_SPACE_SIZE);
                    }
                }

                overlayEntry->loadedRamAddr = actorCtx->absoluteSpace;
            } else if (overlayEntry->allocType & ACTOROVL_ALLOC_PERSISTENT) {
                overlayEntry->loadedRamAddr = ZeldaArena_MallocRDebug(overlaySize, name, 0);
            } else {
                overlayEntry->loadedRamAddr = ZeldaArena_MallocDebug(overlaySize, name, 0);
            }

            if (overlayEntry->loadedRamAddr == NULL) {
                // "Cannot reserve actor program memory"
                osSyncPrintf(VT_COL(RED, WHITE) "Ａｃｔｏｒプログラムメモリが確保できません\n" VT_RST);
                return NULL;
            }

            Overlay_Load(overlayEntry->vromStart, overlayEntry->vromEnd, overlayEntry->vramStart, overlayEntry->vramEnd,
                         overlayEntry->loadedRamAddr);

            osSyncPrintf(VT_FGCOL(GREEN));
            osSyncPrintf("OVL(a):Seg:%08x-%08x Ram:%08x-%08x Off:%08x %s\n", overlayEntry->vramStart,
                         overlayEntry->vramEnd, overlayEntry->loadedRamAddr,
                         (u32)overlayEntry->loadedRamAddr + (u32)overlayEntry->vramEnd - (u32)overlayEntry->vramStart,
                         (u32)overlayEntry->vramStart - (u32)overlayEntry->loadedRamAddr, name);
            osSyncPrintf(VT_RST);

            overlayEntry->numLoaded = 0;
        }

        actorInit = (void*)(u32)((overlayEntry->initInfo != NULL)
                                     ? (void*)((u32)overlayEntry->initInfo -
                                               (s32)((u32)overlayEntry->vramStart - (u32)overlayEntry->loadedRamAddr))
                                     : NULL);
    }

    objBankIndex = Object_GetIndex(&play->objectCtx, actorInit->objectId);

    if ((objBankIndex < 0) ||
        ((actorInit->category == ACTORCAT_ENEMY) && Flags_GetClear(play, play->roomCtx.curRoom.num))) {
        // "No data bank!! <data bank＝%d> (profilep->bank=%d)"
        osSyncPrintf(VT_COL(RED, WHITE) "データバンク無し！！<データバンク＝%d>(profilep->bank=%d)\n" VT_RST,
                     objBankIndex, actorInit->objectId);
        Actor_FreeOverlay(overlayEntry);
        return NULL;
    }

    actor = ZeldaArena_MallocDebug(actorInit->instanceSize, name, 1);

    if (actor == NULL) {
        // "Actor class cannot be reserved! %s <size＝%d bytes>"
        osSyncPrintf(VT_COL(RED, WHITE) "Ａｃｔｏｒクラス確保できません！ %s <サイズ＝%dバイト>\n", VT_RST, name,
                     actorInit->instanceSize);
        Actor_FreeOverlay(overlayEntry);
        return NULL;
    }

    ASSERT(overlayEntry->numLoaded < 255, "actor_dlftbl->clients < 255", "../z_actor.c", 7031);

    overlayEntry->numLoaded++;

    if (HREG(20) != 0) {
        // "Actor client No. %d"
        osSyncPrintf("アクタークライアントは %d 個目です\n", overlayEntry->numLoaded);
    }

    Lib_MemSet((u8*)actor, actorInit->instanceSize, 0);
    actor->overlayEntry = overlayEntry;
    actor->id = actorInit->id;
    actor->flags = actorInit->flags;

    if (actorInit->id == ACTOR_EN_PART) {
        actor->objBankIndex = rotZ;
        rotZ = 0;
    } else {
        actor->objBankIndex = objBankIndex;
    }

    actor->init = actorInit->init;
    actor->destroy = actorInit->destroy;
    actor->update = actorInit->update;
    actor->draw = actorInit->draw;
    actor->room = play->roomCtx.curRoom.num;
    actor->home.pos.x = posX;
    actor->home.pos.y = posY;
    actor->home.pos.z = posZ;
    actor->home.rot.x = rotX;
    actor->home.rot.y = rotY;
    actor->home.rot.z = rotZ;
    actor->params = params;

    Actor_AddToCategory(actorCtx, actor, actorInit->category);

    temp = gSegments[6];
    Actor_Init(actor, play);
    gSegments[6] = temp;

    return actor;
}

Actor* Actor_SpawnAsChild(ActorContext* actorCtx, Actor* parent, PlayState* play, s16 actorId, f32 posX, f32 posY,
                          f32 posZ, s16 rotX, s16 rotY, s16 rotZ, s16 params) {
    Actor* spawnedActor = Actor_Spawn(actorCtx, play, actorId, posX, posY, posZ, rotX, rotY, rotZ, params);

    if (spawnedActor == NULL) {
        return NULL;
    }

    parent->child = spawnedActor;
    spawnedActor->parent = parent;

    if (spawnedActor->room >= 0) {
        spawnedActor->room = parent->room;
    }

    return spawnedActor;
}

void Actor_SpawnTransitionActors(PlayState* play, ActorContext* actorCtx) {
    TransitionActorEntry* transitionActor;
    u8 numActors;
    s32 i;

    transitionActor = play->transiActorCtx.list;
    numActors = play->transiActorCtx.numActors;

    for (i = 0; i < numActors; i++) {
        if (transitionActor->id >= 0) {
            if (((transitionActor->sides[0].room >= 0) &&
                 ((transitionActor->sides[0].room == play->roomCtx.curRoom.num) ||
                  (transitionActor->sides[0].room == play->roomCtx.prevRoom.num))) ||
                ((transitionActor->sides[1].room >= 0) &&
                 ((transitionActor->sides[1].room == play->roomCtx.curRoom.num) ||
                  (transitionActor->sides[1].room == play->roomCtx.prevRoom.num)))) {
                Actor_Spawn(actorCtx, play, (s16)(transitionActor->id & 0x1FFF), transitionActor->pos.x,
                            transitionActor->pos.y, transitionActor->pos.z, 0, transitionActor->rotY, 0,
                            (i << TRANSITION_ACTOR_PARAMS_INDEX_SHIFT) + transitionActor->params);

                transitionActor->id = -transitionActor->id;
                numActors = play->transiActorCtx.numActors;
            }
        }
        transitionActor++;
    }
}

Actor* Actor_SpawnEntry(ActorContext* actorCtx, ActorEntry* actorEntry, PlayState* play) {
    return Actor_Spawn(actorCtx, play, actorEntry->id, actorEntry->pos.x, actorEntry->pos.y, actorEntry->pos.z,
                       actorEntry->rot.x, actorEntry->rot.y, actorEntry->rot.z, actorEntry->params);
}

Actor* Actor_Delete(ActorContext* actorCtx, Actor* actor, PlayState* play) {
    char* name;
    Player* player;
    Actor* newHead;
    ActorOverlay* overlayEntry;

    player = GET_PLAYER(play);

    overlayEntry = actor->overlayEntry;
    name = overlayEntry->name != NULL ? overlayEntry->name : "";

    if (HREG(20) != 0) {
        osSyncPrintf("アクタークラス削除 [%s]\n", name); // "Actor class deleted [%s]"
    }

    if ((player != NULL) && (actor == player->unk_664)) {
        func_8008EDF0(player);
        Camera_ChangeMode(Play_GetCamera(play, Play_GetActiveCamId(play)), 0);
    }

    if (actor == actorCtx->targetCtx.arrowPointedActor) {
        actorCtx->targetCtx.arrowPointedActor = NULL;
    }

    if (actor == actorCtx->targetCtx.unk_8C) {
        actorCtx->targetCtx.unk_8C = NULL;
    }

    if (actor == actorCtx->targetCtx.bgmEnemy) {
        actorCtx->targetCtx.bgmEnemy = NULL;
    }

    Audio_StopSfxByPos(&actor->projectedPos);
    Actor_Destroy(actor, play);

    newHead = Actor_RemoveFromCategory(play, actorCtx, actor);

    ZeldaArena_FreeDebug(actor, "../z_actor.c", 7242);

    if (overlayEntry->vramStart == NULL) {
        if (HREG(20) != 0) {
            osSyncPrintf("オーバーレイではありません\n"); // "Not an overlay"
        }
    } else {
        ASSERT(overlayEntry->loadedRamAddr != NULL, "actor_dlftbl->allocp != NULL", "../z_actor.c", 7251);
        ASSERT(overlayEntry->numLoaded > 0, "actor_dlftbl->clients > 0", "../z_actor.c", 7252);
        overlayEntry->numLoaded--;
        Actor_FreeOverlay(overlayEntry);
    }

    return newHead;
}

s32 func_80032880(PlayState* play, Actor* actor) {
    s16 sp1E;
    s16 sp1C;

    Actor_GetScreenPos(play, actor, &sp1E, &sp1C);

    return (sp1E > -20) && (sp1E < 340) && (sp1C > -160) && (sp1C < 400);
}

Actor* D_8015BBE8;
Actor* D_8015BBEC;
f32 D_8015BBF0;
f32 sbgmEnemyDistSq;
s32 D_8015BBF8;
s16 D_8015BBFC;

void func_800328D4(PlayState* play, ActorContext* actorCtx, Player* player, u32 actorCategory) {
    f32 var;
    Actor* actor;
    Actor* sp84;
    CollisionPoly* sp80;
    s32 sp7C;
    Vec3f sp70;

    actor = actorCtx->actorLists[actorCategory].head;
    sp84 = player->unk_664;

    while (actor != NULL) {
        if ((actor->update != NULL) && ((Player*)actor != player) && CHECK_FLAG_ALL(actor->flags, ACTOR_FLAG_0)) {

            // This block below is for determining the closest actor to player in determining the volume
            // used while playing enemy background music
            if ((actorCategory == ACTORCAT_ENEMY) && CHECK_FLAG_ALL(actor->flags, ACTOR_FLAG_0 | ACTOR_FLAG_2) &&
                (actor->xyzDistToPlayerSq < SQ(500.0f)) && (actor->xyzDistToPlayerSq < sbgmEnemyDistSq)) {
                actorCtx->targetCtx.bgmEnemy = actor;
                sbgmEnemyDistSq = actor->xyzDistToPlayerSq;
            }

            if (actor != sp84) {
                var = func_8002EFC0(actor, player, D_8015BBFC);
                if ((var < D_8015BBF0) && func_8002F090(actor, var) && func_80032880(play, actor) &&
                    (!BgCheck_CameraLineTest1(&play->colCtx, &player->actor.focus.pos, &actor->focus.pos, &sp70, &sp80,
                                              1, 1, 1, 1, &sp7C) ||
                     SurfaceType_IsIgnoredByProjectiles(&play->colCtx, sp80, sp7C))) {
                    if (actor->targetPriority != 0) {
                        if (actor->targetPriority < D_8015BBF8) {
                            D_8015BBEC = actor;
                            D_8015BBF8 = actor->targetPriority;
                        }
                    } else {
                        D_8015BBE8 = actor;
                        D_8015BBF0 = var;
                    }
                }
            }
        }

        actor = actor->next;
    }
}

u8 D_801160A0[] = {
    ACTORCAT_BOSS,  ACTORCAT_ENEMY,  ACTORCAT_BG,   ACTORCAT_EXPLOSIVE, ACTORCAT_NPC,  ACTORCAT_ITEMACTION,
    ACTORCAT_CHEST, ACTORCAT_SWITCH, ACTORCAT_PROP, ACTORCAT_MISC,      ACTORCAT_DOOR, ACTORCAT_SWITCH,
};

Actor* func_80032AF0(PlayState* play, ActorContext* actorCtx, Actor** actorPtr, Player* player) {
    s32 i;
    u8* entry;

    D_8015BBE8 = D_8015BBEC = NULL;
    D_8015BBF0 = sbgmEnemyDistSq = FLT_MAX;
    D_8015BBF8 = 0x7FFFFFFF;

    if (!Player_InCsMode(play)) {
        entry = &D_801160A0[0];

        actorCtx->targetCtx.bgmEnemy = NULL;
        D_8015BBFC = player->actor.shape.rot.y;

        for (i = 0; i < 3; i++) {
            func_800328D4(play, actorCtx, player, *entry);
            entry++;
        }

        if (D_8015BBE8 == NULL) {
            for (; i < ARRAY_COUNT(D_801160A0); i++) {
                func_800328D4(play, actorCtx, player, *entry);
                entry++;
            }
        }
    }

    if (D_8015BBE8 == NULL) {
        *actorPtr = D_8015BBEC;
    } else {
        *actorPtr = D_8015BBE8;
    }

    return *actorPtr;
}

/**
 * Finds the first actor instance of a specified ID and category if there is one.
 */
Actor* Actor_Find(ActorContext* actorCtx, s32 actorId, s32 actorCategory) {
    Actor* actor = actorCtx->actorLists[actorCategory].head;

    while (actor != NULL) {
        if (actorId == actor->id) {
            return actor;
        }
        actor = actor->next;
    }

    return NULL;
}

/**
 * Play the death sound effect and flash the screen white for 4 frames.
 * While the screen flashes, the game freezes.
 */
void Enemy_StartFinishingBlow(PlayState* play, Actor* actor) {
    play->actorCtx.freezeFlashTimer = 5;
    SfxSource_PlaySfxAtFixedWorldPos(play, &actor->world.pos, 20, NA_SE_EN_LAST_DAMAGE);
}

s16 func_80032CB4(s16* arg0, s16 arg1, s16 arg2, s16 arg3) {
    if (DECR(arg0[1]) == 0) {
        arg0[1] = Rand_S16Offset(arg1, arg2);
    }

    if ((arg0[1] - arg3) > 0) {
        arg0[0] = 0;
    } else if (((arg0[1] - arg3) > -2) || (arg0[1] < 2)) {
        arg0[0] = 1;
    } else {
        arg0[0] = 2;
    }

    return arg0[0];
}

s16 func_80032D60(s16* arg0, s16 arg1, s16 arg2, s16 arg3) {
    if (DECR(arg0[1]) == 0) {
        arg0[1] = Rand_S16Offset(arg1, arg2);
        arg0[0]++;

        if ((arg0[0] % 3) == 0) {
            arg0[0] = (s32)(Rand_ZeroOne() * arg3) * 3;
        }
    }

    return arg0[0];
}

void BodyBreak_Alloc(BodyBreak* bodyBreak, s32 count, PlayState* play) {
    u32 matricesSize;
    u32 dListsSize;
    u32 objectIdsSize;

    matricesSize = (count + 1) * sizeof(*bodyBreak->matrices);
    bodyBreak->matrices = ZeldaArena_MallocDebug(matricesSize, "../z_actor.c", 7540);

    if (bodyBreak->matrices != NULL) {
        dListsSize = (count + 1) * sizeof(*bodyBreak->dLists);
        bodyBreak->dLists = ZeldaArena_MallocDebug(dListsSize, "../z_actor.c", 7543);

        if (bodyBreak->dLists != NULL) {
            objectIdsSize = (count + 1) * sizeof(*bodyBreak->objectIds);
            bodyBreak->objectIds = ZeldaArena_MallocDebug(objectIdsSize, "../z_actor.c", 7546);

            if (bodyBreak->objectIds != NULL) {
                Lib_MemSet((u8*)bodyBreak->matrices, matricesSize, 0);
                Lib_MemSet((u8*)bodyBreak->dLists, dListsSize, 0);
                Lib_MemSet((u8*)bodyBreak->objectIds, objectIdsSize, 0);
                bodyBreak->val = 1;
                return;
            }
        }
    }

    if (bodyBreak->matrices != NULL) {
        ZeldaArena_FreeDebug(bodyBreak->matrices, "../z_actor.c", 7558);
    }

    if (bodyBreak->dLists != NULL) {
        ZeldaArena_FreeDebug(bodyBreak->dLists, "../z_actor.c", 7561);
    }

    if (bodyBreak->objectIds != NULL) {
        ZeldaArena_FreeDebug(bodyBreak->objectIds, "../z_actor.c", 7564);
    }
}

void BodyBreak_SetInfo(BodyBreak* bodyBreak, s32 limbIndex, s32 minLimbIndex, s32 maxLimbIndex, u32 count, Gfx** dList,
                       s16 objectId) {
    PlayState* play = Effect_GetPlayState();

    if ((play->actorCtx.freezeFlashTimer == 0) && (bodyBreak->val > 0)) {
        if ((limbIndex >= minLimbIndex) && (limbIndex <= maxLimbIndex) && (*dList != NULL)) {
            bodyBreak->dLists[bodyBreak->val] = *dList;
            Matrix_Get(&bodyBreak->matrices[bodyBreak->val]);
            bodyBreak->objectIds[bodyBreak->val] = objectId;
            bodyBreak->val++;
        }

        if (limbIndex != bodyBreak->prevLimbIndex) {
            bodyBreak->count++;
        }

        if ((u32)bodyBreak->count >= count) {
            bodyBreak->count = bodyBreak->val - 1;
            bodyBreak->val = BODYBREAK_STATUS_READY;
        }
    }

    bodyBreak->prevLimbIndex = limbIndex;
}

s32 BodyBreak_SpawnParts(Actor* actor, BodyBreak* bodyBreak, PlayState* play, s16 type) {
    EnPart* spawnedEnPart;
    MtxF* mtx;
    s16 objBankIndex;

    if (bodyBreak->val != BODYBREAK_STATUS_READY) {
        return false;
    }

    while (bodyBreak->count > 0) {
        Matrix_Put(&bodyBreak->matrices[bodyBreak->count]);
        Matrix_Scale(1.0f / actor->scale.x, 1.0f / actor->scale.y, 1.0f / actor->scale.z, MTXMODE_APPLY);
        Matrix_Get(&bodyBreak->matrices[bodyBreak->count]);

        if (1) {
            if (bodyBreak->objectIds[bodyBreak->count] >= 0) {
                objBankIndex = bodyBreak->objectIds[bodyBreak->count];
            } else {
                objBankIndex = actor->objBankIndex;
            }
        }

        mtx = &bodyBreak->matrices[bodyBreak->count];

        spawnedEnPart = (EnPart*)Actor_SpawnAsChild(&play->actorCtx, actor, play, ACTOR_EN_PART, mtx->xw, mtx->yw,
                                                    mtx->zw, 0, 0, objBankIndex, type);

        if (spawnedEnPart != NULL) {
            Matrix_MtxFToYXZRotS(&bodyBreak->matrices[bodyBreak->count], &spawnedEnPart->actor.shape.rot, 0);
            spawnedEnPart->displayList = bodyBreak->dLists[bodyBreak->count];
            spawnedEnPart->actor.scale = actor->scale;
        }

        bodyBreak->count--;
    }

    bodyBreak->val = BODYBREAK_STATUS_FINISHED;

    ZeldaArena_FreeDebug(bodyBreak->matrices, "../z_actor.c", 7678);
    ZeldaArena_FreeDebug(bodyBreak->dLists, "../z_actor.c", 7679);
    ZeldaArena_FreeDebug(bodyBreak->objectIds, "../z_actor.c", 7680);

    return true;
}

void Actor_SpawnFloorDustRing(PlayState* play, Actor* actor, Vec3f* posXZ, f32 radius, s32 amountMinusOne,
                              f32 randAccelWeight, s16 scale, s16 scaleStep, u8 useLighting) {
    Vec3f pos;
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.3f, 0.0f };
    f32 angle;
    s32 i;

    angle = (Rand_ZeroOne() - 0.5f) * (2.0f * 3.14f);
    pos.y = actor->floorHeight;
    accel.y += (Rand_ZeroOne() - 0.5f) * 0.2f;

    for (i = amountMinusOne; i >= 0; i--) {
        pos.x = Math_SinF(angle) * radius + posXZ->x;
        pos.z = Math_CosF(angle) * radius + posXZ->z;
        accel.x = (Rand_ZeroOne() - 0.5f) * randAccelWeight;
        accel.z = (Rand_ZeroOne() - 0.5f) * randAccelWeight;

        if (scale == 0) {
            func_8002857C(play, &pos, &velocity, &accel);
        } else {
            if (useLighting) {
                func_800286CC(play, &pos, &velocity, &accel, scale, scaleStep);
            } else {
                func_8002865C(play, &pos, &velocity, &accel, scale, scaleStep);
            }
        }

        angle += (2.0f * 3.14f) / (amountMinusOne + 1.0f);
    }
}

void func_80033480(PlayState* play, Vec3f* posBase, f32 randRangeDiameter, s32 amountMinusOne, s16 scaleBase,
                   s16 scaleStep, u8 arg6) {
    Vec3f pos;
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.3f, 0.0f };
    s16 scale;
    u32 var2;
    s32 i;

    for (i = amountMinusOne; i >= 0; i--) {
        pos.x = posBase->x + ((Rand_ZeroOne() - 0.5f) * randRangeDiameter);
        pos.y = posBase->y + ((Rand_ZeroOne() - 0.5f) * randRangeDiameter);
        pos.z = posBase->z + ((Rand_ZeroOne() - 0.5f) * randRangeDiameter);

        scale = (s16)((Rand_ZeroOne() * scaleBase) * 0.2f) + scaleBase;
        var2 = arg6;

        if (var2 != 0) {
            func_800286CC(play, &pos, &velocity, &accel, scale, scaleStep);
        } else {
            func_8002865C(play, &pos, &velocity, &accel, scale, scaleStep);
        }
    }
}

Actor* Actor_GetCollidedExplosive(PlayState* play, Collider* collider) {
    if ((collider->acFlags & AC_HIT) && (collider->ac->category == ACTORCAT_EXPLOSIVE)) {
        collider->acFlags &= ~AC_HIT;
        return collider->ac;
    }

    return NULL;
}

Actor* func_80033684(PlayState* play, Actor* explosiveActor) {
    Actor* actor = play->actorCtx.actorLists[ACTORCAT_EXPLOSIVE].head;

    while (actor != NULL) {
        if ((actor == explosiveActor) || (actor->params != 1)) {
            actor = actor->next;
        } else {
            if (Actor_WorldDistXYZToActor(explosiveActor, actor) <= (actor->shape.rot.z * 10) + 80.0f) {
                return actor;
            } else {
                actor = actor->next;
            }
        }
    }

    return NULL;
}

/**
 * Dynamically changes the category of a given actor instance.
 * This is done by moving it to the corresponding category list and setting its category variable accordingly.
 */
void Actor_ChangeCategory(PlayState* play, ActorContext* actorCtx, Actor* actor, u8 actorCategory) {
    Actor_RemoveFromCategory(play, actorCtx, actor);
    Actor_AddToCategory(actorCtx, actor, actorCategory);
}

/**
 * Checks if a hookshot or arrow actor is going to collide with the cylinder denoted by the
 * actor's `cylRadius` and `cylHeight`.
 * The check is only peformed if the projectile actor is within the provided sphere radius.
 *
 * Returns the actor if there will be collision, NULL otherwise.
 */
Actor* Actor_GetProjectileActor(PlayState* play, Actor* refActor, f32 radius) {
    Actor* actor;
    Vec3f spA8;
    f32 deltaX;
    f32 deltaY;
    f32 deltaZ;
    Vec3f sp90;
    Vec3f sp84;

    actor = play->actorCtx.actorLists[ACTORCAT_ITEMACTION].head;
    while (actor != NULL) {
        if (((actor->id != ACTOR_ARMS_HOOK) && (actor->id != ACTOR_EN_ARROW)) || (actor == refActor)) {
            actor = actor->next;
        } else {
            //! @bug The projectile actor gets unsafely casted to a hookshot to check its timer, even though
            //  it can also be an arrow.
            //  Luckily, the field at the same offset in the arrow actor is the x component of a vector
            //  which will rarely ever be 0. So it's very unlikely for this bug to cause an issue.
            if ((Math_Vec3f_DistXYZ(&refActor->world.pos, &actor->world.pos) > radius) ||
                (((ArmsHook*)actor)->timer == 0)) {
                actor = actor->next;
            } else {
                deltaX = Math_SinS(actor->world.rot.y) * (actor->speedXZ * 10.0f);
                deltaY = actor->velocity.y + (actor->gravity * 10.0f);
                deltaZ = Math_CosS(actor->world.rot.y) * (actor->speedXZ * 10.0f);

                spA8.x = actor->world.pos.x + deltaX;
                spA8.y = actor->world.pos.y + deltaY;
                spA8.z = actor->world.pos.z + deltaZ;

                if (CollisionCheck_CylSideVsLineSeg(refActor->colChkInfo.cylRadius, refActor->colChkInfo.cylHeight,
                                                    0.0f, &refActor->world.pos, &actor->world.pos, &spA8, &sp90,
                                                    &sp84)) {
                    return actor;
                } else {
                    actor = actor->next;
                }
            }
        }
    }

    return NULL;
}

/**
 * Sets the actor's text id with a dynamic prefix based on the current scene.
 */
void Actor_SetTextWithPrefix(PlayState* play, Actor* actor, s16 baseTextId) {
    s16 prefix;

    switch (play->sceneId) {
        case SCENE_DEKU_TREE:
        case SCENE_DEKU_TREE_BOSS:
        case SCENE_FOREST_TEMPLE_BOSS:
        case SCENE_KNOW_IT_ALL_BROS_HOUSE:
        case SCENE_TWINS_HOUSE:
        case SCENE_MIDOS_HOUSE:
        case SCENE_SARIAS_HOUSE:
        case SCENE_KOKIRI_SHOP:
        case SCENE_LINKS_HOUSE:
        case SCENE_KOKIRI_FOREST:
        case SCENE_SACRED_FOREST_MEADOW:
        case SCENE_LOST_WOODS:
        case 112:
            prefix = 0x1000;
            break;
        case SCENE_STABLE:
        case SCENE_HYRULE_FIELD:
        case SCENE_LON_LON_RANCH:
            prefix = 0x2000;
            break;
        case SCENE_FIRE_TEMPLE:
        case SCENE_DODONGOS_CAVERN_BOSS:
        case SCENE_FIRE_TEMPLE_BOSS:
        case SCENE_DEATH_MOUNTAIN_TRAIL:
        case SCENE_DEATH_MOUNTAIN_CRATER:
        case SCENE_GORON_CITY:
            prefix = 0x3000;
            break;
        case SCENE_JABU_JABU:
        case SCENE_JABU_JABU_BOSS:
        case SCENE_ZORAS_RIVER:
        case SCENE_ZORAS_DOMAIN:
        case SCENE_ZORAS_FOUNTAIN:
            prefix = 0x4000;
            break;
        case SCENE_SHADOW_TEMPLE:
        case SCENE_SHADOW_TEMPLE_BOSS:
        case SCENE_KAKARIKO_CENTER_GUEST_HOUSE:
        case SCENE_BACK_ALLEY_HOUSE:
        case SCENE_DOG_LADY_HOUSE:
        case SCENE_GRAVEKEEPERS_HUT:
        case SCENE_REDEAD_GRAVE:
        case SCENE_WINDMILL_AND_DAMPES_GRAVE:
        case SCENE_KAKARIKO_VILLAGE:
        case SCENE_GRAVEYARD:
            prefix = 0x5000;
            break;
        case SCENE_SPIRIT_TEMPLE:
        case SCENE_SPIRIT_TEMPLE_BOSS:
        case SCENE_IMPAS_HOUSE:
        case SCENE_CARPENTERS_TENT:
        case SCENE_LAKE_HYLIA:
        case SCENE_GERUDO_VALLEY:
        case SCENE_DESERT_COLOSSUS:
            prefix = 0x6000;
            break;
        case SCENE_MARKET_ENTRANCE_DAY:
        case SCENE_BACK_ALLEY_DAY:
        case SCENE_BACK_ALLEY_NIGHT:
        case SCENE_MARKET_DAY:
        case SCENE_MARKET_NIGHT:
        case SCENE_MARKET_RUINS:
        case SCENE_HYRULE_CASTLE:
            prefix = 0x7000;
            break;
        default:
            prefix = 0x0000;
            break;
    }

    actor->textId = prefix | baseTextId;
}

/**
 * Checks if a given actor will be standing on the ground after being translated
 * by the provided distance and angle.
 *
 * Returns true if the actor will be standing on ground.
 */
s16 Actor_TestFloorInDirection(Actor* actor, PlayState* play, f32 distance, s16 angle) {
    s16 ret;
    s16 prevBgCheckFlags;
    f32 dx;
    f32 dz;
    Vec3f prevActorPos;

    Math_Vec3f_Copy(&prevActorPos, &actor->world.pos);
    prevBgCheckFlags = actor->bgCheckFlags;

    dx = Math_SinS(angle) * distance;
    dz = Math_CosS(angle) * distance;
    actor->world.pos.x += dx;
    actor->world.pos.z += dz;

    Actor_UpdateBgCheckInfo(play, actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);

    Math_Vec3f_Copy(&actor->world.pos, &prevActorPos);

    ret = actor->bgCheckFlags & BGCHECKFLAG_GROUND;
    actor->bgCheckFlags = prevBgCheckFlags;

    return ret;
}

/**
 * Returns true if the player is targeting the provided actor
 */
s32 Actor_IsTargeted(PlayState* play, Actor* actor) {
    Player* player = GET_PLAYER(play);

    if ((player->stateFlags1 & PLAYER_STATE1_4) && actor->isTargeted) {
        return true;
    } else {
        return false;
    }
}

/**
 * Returns true if the player is targeting an actor other than the provided actor
 */
s32 Actor_OtherIsTargeted(PlayState* play, Actor* actor) {
    Player* player = GET_PLAYER(play);

    if ((player->stateFlags1 & PLAYER_STATE1_4) && !actor->isTargeted) {
        return true;
    } else {
        return false;
    }
}

f32 func_80033AEC(Vec3f* arg0, Vec3f* arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5) {
    f32 ret = 0.0f;

    if (arg4 <= Math_Vec3f_DistXYZ(arg0, arg1)) {
        ret = Math_SmoothStepToF(&arg1->x, arg0->x, arg2, arg3, 0.0f);
        ret += Math_SmoothStepToF(&arg1->y, arg0->y, arg2, arg3, 0.0f);
        ret += Math_SmoothStepToF(&arg1->z, arg0->z, arg2, arg3, 0.0f);
    } else if (arg5 < Math_Vec3f_DistXYZ(arg0, arg1)) {
        ret = Math_SmoothStepToF(&arg1->x, arg0->x, arg2, arg3, 0.0f);
        ret += Math_SmoothStepToF(&arg1->y, arg0->y, arg2, arg3, 0.0f);
        ret += Math_SmoothStepToF(&arg1->z, arg0->z, arg2, arg3, 0.0f);
    }

    return ret;
}

void func_80033C30(Vec3f* arg0, Vec3f* arg1, u8 alpha, PlayState* play) {
    MtxF sp60;
    f32 yIntersect;
    Vec3f checkPos;
    CollisionPoly* groundPoly;

    OPEN_DISPS(play->state.gfxCtx, "../z_actor.c", 8120);

    if (0) {} // Necessary to match

    POLY_OPA_DISP = Gfx_SetupDL(POLY_OPA_DISP, SETUPDL_44);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 0, 0, 0, alpha);

    checkPos.x = arg0->x;
    checkPos.y = arg0->y + 1.0f;
    checkPos.z = arg0->z;

    yIntersect = BgCheck_EntityRaycastDown2(play, &play->colCtx, &groundPoly, &checkPos);

    if (groundPoly != NULL) {
        func_80038A28(groundPoly, arg0->x, yIntersect, arg0->z, &sp60);
        Matrix_Put(&sp60);
    } else {
        Matrix_Translate(arg0->x, arg0->y, arg0->z, MTXMODE_NEW);
    }

    Matrix_Scale(arg1->x, 1.0f, arg1->z, MTXMODE_APPLY);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_actor.c", 8149), G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, gCircleShadowDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_actor.c", 8155);
}

void Actor_RequestQuake(PlayState* play, s16 y, s16 duration) {
    s16 quakeIndex = Quake_Request(&play->mainCamera, QUAKE_TYPE_3);

    Quake_SetSpeed(quakeIndex, 20000);
    Quake_SetPerturbations(quakeIndex, y, 0, 0, 0);
    Quake_SetDuration(quakeIndex, duration);
}

void Actor_RequestQuakeWithSpeed(PlayState* play, s16 y, s16 duration, s16 speed) {
    s16 quakeIndex = Quake_Request(&play->mainCamera, QUAKE_TYPE_3);

    Quake_SetSpeed(quakeIndex, speed);
    Quake_SetPerturbations(quakeIndex, y, 0, 0, 0);
    Quake_SetDuration(quakeIndex, duration);
}

void Actor_RequestQuakeAndRumble(Actor* actor, PlayState* play, s16 quakeY, s16 quakeDuration) {
    if (quakeY >= 5) {
        Rumble_Request(actor->xyzDistToPlayerSq, 255, 20, 150);
    } else {
        Rumble_Request(actor->xyzDistToPlayerSq, 180, 20, 100);
    }
    Actor_RequestQuake(play, quakeY, quakeDuration);
}

f32 Rand_ZeroFloat(f32 f) {
    return Rand_ZeroOne() * f;
}

f32 Rand_CenteredFloat(f32 f) {
    return (Rand_ZeroOne() - 0.5f) * f;
}

typedef struct {
    /* 0x00 */ f32 chainAngle;
    /* 0x04 */ f32 chainLength;
    /* 0x08 */ f32 yShift;
    /* 0x0C */ f32 chainsScale;
    /* 0x10 */ f32 chainsRotZInit;
    /* 0x14 */ Gfx* chainDL;
    /* 0x18 */ Gfx* lockDL;
} DoorLockInfo; // size = 0x1C

static DoorLockInfo sDoorLocksInfo[] = {
    /* DOORLOCK_NORMAL */ { 0.54f, 6000.0f, 5000.0f, 1.0f, 0.0f, gDoorChainDL, gDoorLockDL },
    /* DOORLOCK_BOSS */ { 0.644f, 12000.0f, 8000.0f, 1.0f, 0.0f, gBossDoorChainDL, gBossDoorLockDL },
    /* DOORLOCK_NORMAL_SPIRIT */ { 0.64000005f, 8500.0f, 8000.0f, 1.75f, 0.1f, gDoorChainDL, gDoorLockDL },
};

/**
 * Draws chains and lock of a locked door, of the specified `type` (see `DoorLockType`).
 * `frame` can be 0 to 10, where 0 is "open" and 10 is "closed", the chains slide accordingly.
 */
void Actor_DrawDoorLock(PlayState* play, s32 frame, s32 type) {
    DoorLockInfo* entry;
    s32 i;
    MtxF baseMtxF;
    f32 chainRotZ;
    f32 chainsTranslateX;
    f32 chainsTranslateY;
    f32 rotZStep;

    entry = &sDoorLocksInfo[type];
    chainRotZ = entry->chainsRotZInit;

    OPEN_DISPS(play->state.gfxCtx, "../z_actor.c", 8265);

    Matrix_Translate(0.0f, entry->yShift, 500.0f, MTXMODE_APPLY);
    Matrix_Get(&baseMtxF);

    chainsTranslateX = sinf(entry->chainAngle - chainRotZ) * -(10 - frame) * 0.1f * entry->chainLength;
    chainsTranslateY = cosf(entry->chainAngle - chainRotZ) * (10 - frame) * 0.1f * entry->chainLength;

    for (i = 0; i < 4; i++) {
        Matrix_Put(&baseMtxF);
        Matrix_RotateZ(chainRotZ, MTXMODE_APPLY);
        Matrix_Translate(chainsTranslateX, chainsTranslateY, 0.0f, MTXMODE_APPLY);

        if (entry->chainsScale != 1.0f) {
            Matrix_Scale(entry->chainsScale, entry->chainsScale, entry->chainsScale, MTXMODE_APPLY);
        }

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_actor.c", 8299),
                  G_MTX_MODELVIEW | G_MTX_LOAD);
        gSPDisplayList(POLY_OPA_DISP++, entry->chainDL);

        if (i % 2) {
            rotZStep = 2.0f * entry->chainAngle;
        } else {
            rotZStep = M_PI - (2.0f * entry->chainAngle);
        }

        chainRotZ += rotZStep;
    }

    Matrix_Put(&baseMtxF);
    Matrix_Scale(frame * 0.1f, frame * 0.1f, frame * 0.1f, MTXMODE_APPLY);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_actor.c", 8314), G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, entry->lockDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_actor.c", 8319);
}

void func_8003424C(PlayState* play, Vec3f* arg1) {
    CollisionCheck_SpawnShieldParticlesMetal(play, arg1);
}

void Actor_SetColorFilter(Actor* actor, s16 colorFlag, s16 colorIntensityMax, s16 bufFlag, s16 duration) {
    if ((colorFlag == COLORFILTER_COLORFLAG_GRAY) && !(colorIntensityMax & COLORFILTER_INTENSITY_FLAG)) {
        Audio_PlayActorSfx2(actor, NA_SE_EN_LIGHT_ARROW_HIT);
    }

    actor->colorFilterParams = colorFlag | bufFlag | ((colorIntensityMax & 0xF8) << 5) | duration;
    actor->colorFilterTimer = duration;
}

Hilite* func_800342EC(Vec3f* object, PlayState* play) {
    Vec3f lightDir;

    lightDir.x = play->envCtx.dirLight1.params.dir.x;
    lightDir.y = play->envCtx.dirLight1.params.dir.y;
    lightDir.z = play->envCtx.dirLight1.params.dir.z;

    return func_8002EABC(object, &play->view.eye, &lightDir, play->state.gfxCtx);
}

Hilite* func_8003435C(Vec3f* object, PlayState* play) {
    Vec3f lightDir;

    lightDir.x = play->envCtx.dirLight1.params.dir.x;
    lightDir.y = play->envCtx.dirLight1.params.dir.y;
    lightDir.z = play->envCtx.dirLight1.params.dir.z;

    return func_8002EB44(object, &play->view.eye, &lightDir, play->state.gfxCtx);
}

/**
 * Updates NPC talking state. Checks for a talk request and updates
 * the talkState parameter when a dialog is ongoing. Otherwise checks if
 * the actor is onscreen, advertises the interaction in a range and sets
 * the current text id if necessary.
 *
 * The talk state values are defined in the NpcTalkState enum.
 *
 * @see NpcTalkState
 *
 * @param[in,out] talkState Talk state
 * @param interactRange The interact (talking) range for the actor
 * @param getTextId Callback for getting the next text id
 * @param updateTalkState Callback for getting the next talkState value
 * @return True if a new dialog was started (player talked to the actor). False otherwise.
 */
s32 Npc_UpdateTalking(PlayState* play, Actor* actor, s16* talkState, f32 interactRange, NpcGetTextIdFunc getTextId,
                      NpcUpdateTalkStateFunc updateTalkState) {
    s16 x;
    s16 y;

    if (Actor_ProcessTalkRequest(actor, play)) {
        *talkState = NPC_TALK_STATE_TALKING;
        return true;
    }

    if (*talkState != NPC_TALK_STATE_IDLE) {
        *talkState = updateTalkState(play, actor);
        return false;
    }

    Actor_GetScreenPos(play, actor, &x, &y);
    if ((x < 0) || (x > SCREEN_WIDTH) || (y < 0) || (y > SCREEN_HEIGHT)) {
        // Actor is offscreen
        return false;
    }

    if (!func_8002F2CC(actor, play, interactRange)) {
        return false;
    }

    actor->textId = getTextId(play, actor);

    return false;
}

typedef struct {
    /* 0x00 */ s16 maxHeadYaw;
    /* 0x02 */ s16 minHeadPitch;
    /* 0x04 */ s16 maxHeadPitch;
    /* 0x06 */ s16 maxTorsoYaw;
    /* 0x08 */ s16 minTorsoPitch;
    /* 0x0A */ s16 maxTorsoPitch;
    /* 0x0C */ u8 rotateYaw;
} NpcTrackingRotLimits; // size = 0x10

typedef struct {
    /* 0x00 */ NpcTrackingRotLimits rotLimits;
    // Fields specific to NPC_TRACKING_PLAYER_AUTO_TURN mode
    /* 0x10 */ f32 autoTurnDistanceRange;   // Max distance to player to enable tracking and auto-turn
    /* 0x14 */ s16 maxYawForPlayerTracking; // Player is tracked if within this yaw
} NpcTrackingParams;                        // size = 0x18

/**
 * Npc tracking angle limit presets to use with Npc_TrackPoint.
 *
 * @see Npc_TrackPoint
 */
static NpcTrackingParams sNpcTrackingPresets[] = {
    { { 0x2AA8, -0x0E38, 0x18E2, 0x1554, 0x0000, 0x0000, true }, 170.0f, 0x3FFC },
    { { 0x2AA8, -0x1554, 0x1554, 0x1554, -0x071C, 0x0E38, true }, 170.0f, 0x3FFC },
    { { 0x31C4, -0x1C70, 0x0E38, 0x0E38, -0x0E38, 0x071C, true }, 170.0f, 0x3FFC },
    { { 0x1554, -0x0E38, 0x0000, 0x071C, -0x071C, 0x0000, true }, 170.0f, 0x3FFC },
    { { 0x2AA8, -0x071C, 0x071C, 0x0E38, -0x2AA8, 0x2AA8, true }, 170.0f, 0x3FFC },
    { { 0x0000, -0x1C70, 0x2AA8, 0x3FFC, -0x0E38, 0x0E38, true }, 170.0f, 0x3FFC },
    { { 0x2AA8, -0x0E38, 0x0E38, 0x0E38, 0x0000, 0x0000, true }, 0.0f, 0x0000 },
    { { 0x2AA8, -0x0E38, 0x0000, 0x0E38, 0x0000, 0x1C70, true }, 0.0f, 0x0000 },
    { { 0x2AA8, -0x0E38, -0x0E38, 0x0000, 0x0000, 0x0000, true }, 0.0f, 0x0000 },
    { { 0x071C, -0x0E38, 0x0E38, 0x1C70, 0x0000, 0x0000, true }, 0.0f, 0x0000 },
    { { 0x0E38, -0x0E38, 0x0000, 0x1C70, 0x0000, 0x0E38, true }, 0.0f, 0x0000 },
    { { 0x2AA8, -0x1C70, 0x1C70, 0x0E38, -0x0E38, 0x0E38, true }, 0.0f, 0x0000 },
    { { 0x18E2, -0x0E38, 0x0E38, 0x0E38, 0x0000, 0x0000, true }, 0.0f, 0x0000 },
};

/**
 * Smoothly turns the actor's whole body and updates torso and head rotations in
 * NpcInteractInfo so that the actor tracks the point specified in NpcInteractInfo.trackPos.
 * Rotations are limited to specified angles.
 *
 * Head and torso rotation angles are determined by calculating the pitch and yaw
 * from the actor position to the given target position.
 *
 * The y position of the actor is offset by NpcInteractInfo.yOffset
 * before calculating the angles. It can be used to configure the height difference
 * between the actor and the target.
 *
 * @param maxHeadYaw maximum head yaw difference from neutral position
 * @param maxHeadPitch maximum head pitch angle
 * @param minHeadPitch minimum head pitch angle
 * @param maxTorsoYaw maximum torso yaw difference from neutral position
 * @param maxTorsoPitch maximum torso pitch angle
 * @param minTorsoPitch minimum torso pitch angle
 * @param rotateYaw if true, the actor's yaw (shape.rot.y) is updated to turn the actor's whole body
 */
void Npc_TrackPointWithLimits(Actor* actor, NpcInteractInfo* interactInfo, s16 maxHeadYaw, s16 maxHeadPitch,
                              s16 minHeadPitch, s16 maxTorsoYaw, s16 maxTorsoPitch, s16 minTorsoPitch, u8 rotateYaw) {
    s16 pitchTowardsTarget;
    s16 yawTowardsTarget;
    s16 torsoPitch;
    s16 bodyYawDiff;
    s16 temp;
    Vec3f offsetActorPos;

    offsetActorPos.x = actor->world.pos.x;
    offsetActorPos.y = actor->world.pos.y + interactInfo->yOffset;
    offsetActorPos.z = actor->world.pos.z;

    pitchTowardsTarget = Math_Vec3f_Pitch(&offsetActorPos, &interactInfo->trackPos);
    yawTowardsTarget = Math_Vec3f_Yaw(&offsetActorPos, &interactInfo->trackPos);
    bodyYawDiff = Math_Vec3f_Yaw(&actor->world.pos, &interactInfo->trackPos) - actor->shape.rot.y;

    temp = CLAMP(bodyYawDiff, -maxHeadYaw, maxHeadYaw);
    Math_SmoothStepToS(&interactInfo->headRot.y, temp, 6, 2000, 1);

    temp = (ABS(bodyYawDiff) >= 0x8000) ? 0 : ABS(bodyYawDiff);
    interactInfo->headRot.y = CLAMP(interactInfo->headRot.y, -temp, temp);

    bodyYawDiff -= interactInfo->headRot.y;

    temp = CLAMP(bodyYawDiff, -maxTorsoYaw, maxTorsoYaw);
    Math_SmoothStepToS(&interactInfo->torsoRot.y, temp, 6, 2000, 1);

    temp = (ABS(bodyYawDiff) >= 0x8000) ? 0 : ABS(bodyYawDiff);
    interactInfo->torsoRot.y = CLAMP(interactInfo->torsoRot.y, -temp, temp);

    if (rotateYaw) {
        Math_SmoothStepToS(&actor->shape.rot.y, yawTowardsTarget, 6, 2000, 1);
    }

    temp = CLAMP(pitchTowardsTarget, minHeadPitch, (s16)(u16)maxHeadPitch);
    Math_SmoothStepToS(&interactInfo->headRot.x, temp, 6, 2000, 1);

    torsoPitch = pitchTowardsTarget - interactInfo->headRot.x;

    temp = CLAMP(torsoPitch, minTorsoPitch, maxTorsoPitch);
    Math_SmoothStepToS(&interactInfo->torsoRot.x, temp, 6, 2000, 1);
}

s16 Npc_GetTrackingPresetMaxPlayerYaw(s16 presetIndex) {
    return sNpcTrackingPresets[presetIndex].maxYawForPlayerTracking;
}

/**
 * Handles NPC tracking modes and auto-turning towards the player when
 * NPC_TRACKING_PLAYER_AUTO_TURN tracking mode is used.
 *
 * Returns a tracking mode that will determine which actor limbs
 * will be rotated towards the target.
 *
 * When the player is behind the actor (i.e. not in the yaw range in front of the actor
 * defined by maxYawForPlayerTracking), the actor will start an auto-turn sequence:
 *   - look forward for 30-60 frames
 *   - turn head to look at the player for 10-20 frames
 *   - look forward for 30-60 frames
 *   - turn the entire body to face the player
 *
 * @param distanceRange Max distance to player that tracking and auto-turning will be active for
 * @param maxYawForPlayerTracking Maximum angle for tracking the player.
 * @param trackingMode The tracking mode selected by the actor. If this is not
 *        NPC_TRACKING_PLAYER_AUTO_TURN this function does nothing
 *
 * @return The tracking mode (NpcTrackingMode) to use for the current frame.
 */
s16 Npc_UpdateAutoTurn(Actor* actor, NpcInteractInfo* interactInfo, f32 distanceRange, s16 maxYawForPlayerTracking,
                       s16 trackingMode) {

    s32 pad;
    s16 yaw;
    s16 yawDiff;

    if (trackingMode != NPC_TRACKING_PLAYER_AUTO_TURN) {
        return trackingMode;
    }

    if (interactInfo->talkState != NPC_TALK_STATE_IDLE) {
        // When talking, always fully turn to face the player
        return NPC_TRACKING_FULL_BODY;
    }

    if (distanceRange < Math_Vec3f_DistXYZ(&actor->world.pos, &interactInfo->trackPos)) {
        // Player is too far away, do not track
        interactInfo->autoTurnTimer = 0;
        interactInfo->autoTurnState = 0;
        return NPC_TRACKING_NONE;
    }

    yaw = Math_Vec3f_Yaw(&actor->world.pos, &interactInfo->trackPos);
    yawDiff = ABS((s16)((f32)yaw - actor->shape.rot.y));
    if (maxYawForPlayerTracking >= yawDiff) {
        // Player is in front of the actor, track with the head and the torso
        interactInfo->autoTurnTimer = 0;
        interactInfo->autoTurnState = 0;
        return NPC_TRACKING_HEAD_AND_TORSO;
    }

    // Player is behind the actor, run the auto-turn sequence.

    if (DECR(interactInfo->autoTurnTimer) != 0) {
        // While the timer is still running, return the previous tracking mode
        return interactInfo->trackingMode;
    }

    switch (interactInfo->autoTurnState) {
        case 0:
        case 2:
            // Just stand still, not tracking the player
            interactInfo->autoTurnTimer = Rand_S16Offset(30, 30);
            interactInfo->autoTurnState++;
            return NPC_TRACKING_NONE;
        case 1:
            // Glance at the player by only turning the head
            interactInfo->autoTurnTimer = Rand_S16Offset(10, 10);
            interactInfo->autoTurnState++;
            return NPC_TRACKING_HEAD;
    }

    // Auto-turn sequence complete, turn towards the player
    return NPC_TRACKING_FULL_BODY;
}

/**
 * Rotates the actor's whole body, torso and head tracking the point specified in NpcInteractInfo.trackPos.
 * Uses angle limits from a preset selected from from sNpcTrackingPresets.
 *
 * The trackingMode parameter controls whether the head and torso are turned towards the target.
 * If not, they are smoothly turned towards zero. Setting the parameter to NPC_TRACKING_FULL_BODY
 * causes the actor's whole body to be rotated to face the target.
 *
 * If NPC_TRACKING_PLAYER_AUTO_TURN is used, the actor will track the player with its head and torso as long
 * as the player is in front of the actor (within a yaw angle specified in the option preset).
 * If the player is outside of this angle, the actor will turn to face the player after a while.
 *
 * @see Npc_UpdateAutoTurn
 * @see sNpcTrackingPresets
 * @see NpcTrackingMode
 *
 * @param presetIndex The index to a preset in sNpcTrackingPresets
 * @param trackingMode A value from NpcTrackingMode enum
 */
void Npc_TrackPoint(Actor* actor, NpcInteractInfo* interactInfo, s16 presetIndex, s16 trackingMode) {
    NpcTrackingRotLimits rotLimits;

    interactInfo->trackingMode =
        Npc_UpdateAutoTurn(actor, interactInfo, sNpcTrackingPresets[presetIndex].autoTurnDistanceRange,
                           sNpcTrackingPresets[presetIndex].maxYawForPlayerTracking, trackingMode);

    rotLimits = sNpcTrackingPresets[presetIndex].rotLimits;

    switch (interactInfo->trackingMode) {
        case NPC_TRACKING_NONE:
            rotLimits.maxHeadYaw = 0;
            rotLimits.maxHeadPitch = 0;
            rotLimits.minHeadPitch = 0;
            FALLTHROUGH;
        case NPC_TRACKING_HEAD:
            rotLimits.maxTorsoYaw = 0;
            rotLimits.maxTorsoPitch = 0;
            rotLimits.minTorsoPitch = 0;
            FALLTHROUGH;
        case NPC_TRACKING_HEAD_AND_TORSO:
            rotLimits.rotateYaw = false;
            break;
    }

    Npc_TrackPointWithLimits(actor, interactInfo, rotLimits.maxHeadYaw, rotLimits.maxHeadPitch, rotLimits.minHeadPitch,
                             rotLimits.maxTorsoYaw, rotLimits.maxTorsoPitch, rotLimits.minTorsoPitch,
                             rotLimits.rotateYaw);
}

Gfx* func_80034B28(GraphicsContext* gfxCtx) {
    Gfx* displayList;

    displayList = Graph_Alloc(gfxCtx, sizeof(Gfx));
    gSPEndDisplayList(displayList);

    return displayList;
}

Gfx* func_80034B54(GraphicsContext* gfxCtx) {
    Gfx* displayListHead;
    Gfx* displayList;

    displayList = displayListHead = Graph_Alloc(gfxCtx, 2 * sizeof(Gfx));

    gDPSetRenderMode(displayListHead++, G_RM_FOG_SHADE_A,
                     AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU | FORCE_BL |
                         GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA));

    gSPEndDisplayList(displayListHead++);

    return displayList;
}

void func_80034BA0(PlayState* play, SkelAnime* skelAnime, OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw,
                   Actor* actor, s16 alpha) {
    OPEN_DISPS(play->state.gfxCtx, "../z_actor.c", 8831);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, alpha);
    gDPPipeSync(POLY_OPA_DISP++);
    gSPSegment(POLY_OPA_DISP++, 0x0C, func_80034B28(play->state.gfxCtx));

    POLY_OPA_DISP = SkelAnime_DrawFlex(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                                       overrideLimbDraw, postLimbDraw, actor, POLY_OPA_DISP);

    CLOSE_DISPS(play->state.gfxCtx, "../z_actor.c", 8860);
}

void func_80034CC4(PlayState* play, SkelAnime* skelAnime, OverrideLimbDraw overrideLimbDraw, PostLimbDraw postLimbDraw,
                   Actor* actor, s16 alpha) {
    OPEN_DISPS(play->state.gfxCtx, "../z_actor.c", 8876);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, alpha);
    gSPSegment(POLY_XLU_DISP++, 0x0C, func_80034B54(play->state.gfxCtx));

    POLY_XLU_DISP = SkelAnime_DrawFlex(play, skelAnime->skeleton, skelAnime->jointTable, skelAnime->dListCount,
                                       overrideLimbDraw, postLimbDraw, actor, POLY_XLU_DISP);

    CLOSE_DISPS(play->state.gfxCtx, "../z_actor.c", 8904);
}

s16 func_80034DD4(Actor* actor, PlayState* play, s16 arg2, f32 arg3) {
    Player* player = GET_PLAYER(play);
    f32 var;

    if ((play->csCtx.state != CS_STATE_IDLE) || gDbgCamEnabled) {
        var = Math_Vec3f_DistXYZ(&actor->world.pos, &play->view.eye) * 0.25f;
    } else {
        var = Math_Vec3f_DistXYZ(&actor->world.pos, &player->actor.world.pos);
    }

    if (arg3 < var) {
        actor->flags &= ~ACTOR_FLAG_0;
        Math_SmoothStepToS(&arg2, 0, 6, 0x14, 1);
    } else {
        actor->flags |= ACTOR_FLAG_0;
        Math_SmoothStepToS(&arg2, 0xFF, 6, 0x14, 1);
    }

    return arg2;
}

void Animation_ChangeByInfo(SkelAnime* skelAnime, AnimationInfo* animationInfo, s32 index) {
    f32 frameCount;

    animationInfo += index;

    if (animationInfo->frameCount > 0.0f) {
        frameCount = animationInfo->frameCount;
    } else {
        frameCount = Animation_GetLastFrame(animationInfo->animation);
    }

    Animation_Change(skelAnime, animationInfo->animation, animationInfo->playSpeed, animationInfo->startFrame,
                     frameCount, animationInfo->mode, animationInfo->morphFrames);
}

void func_80034F54(PlayState* play, s16* arg1, s16* arg2, s32 arg3) {
    u32 frames = play->gameplayFrames;
    s32 i;

    for (i = 0; i < arg3; i++) {
        arg1[i] = (0x814 + 50 * i) * frames;
        arg2[i] = (0x940 + 50 * i) * frames;
    }
}

void Actor_Noop(Actor* actor, PlayState* play) {
}

s32 func_80035124(Actor* actor, PlayState* play) {
    s32 ret = 0;

    switch (actor->params) {
        case 0:
            if (Actor_HasParent(actor, play)) {
                actor->params = 1;
            } else if (!(actor->bgCheckFlags & BGCHECKFLAG_GROUND)) {
                Actor_MoveForward(actor);
                Math_SmoothStepToF(&actor->speedXZ, 0.0f, 1.0f, 0.1f, 0.0f);
            } else if ((actor->bgCheckFlags & BGCHECKFLAG_GROUND_TOUCH) && (actor->velocity.y < -4.0f)) {
                ret = 1;
            } else {
                actor->shape.rot.x = actor->shape.rot.z = 0;
                Actor_OfferCarry(actor, play);
            }
            break;
        case 1:
            if (Actor_HasNoParent(actor, play)) {
                actor->params = 0;
            }
            break;
    }

    Actor_UpdateBgCheckInfo(
        play, actor, actor->colChkInfo.cylHeight, actor->colChkInfo.cylRadius, actor->colChkInfo.cylRadius,
        UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 | UPDBGCHECKINFO_FLAG_4);

    return ret;
}

#include "z_cheap_proc.inc.c"

u8 func_800353E8(PlayState* play) {
    Player* player = GET_PLAYER(play);

    return player->unk_845;
}

/**
 * Finds the first actor instance of a specified ID and category within a given range from
 * an actor if there is one. If the ID provided is -1, this will look for any actor of the
 * specified category rather than a specific ID.
 */
Actor* Actor_FindNearby(PlayState* play, Actor* refActor, s16 actorId, u8 actorCategory, f32 range) {
    Actor* actor = play->actorCtx.actorLists[actorCategory].head;

    while (actor != NULL) {
        if (actor == refActor || ((actorId != -1) && (actorId != actor->id))) {
            actor = actor->next;
        } else {
            if (Actor_WorldDistXYZToActor(refActor, actor) <= range) {
                return actor;
            } else {
                actor = actor->next;
            }
        }
    }

    return NULL;
}

s32 func_800354B4(PlayState* play, Actor* actor, f32 range, s16 arg3, s16 arg4, s16 arg5) {
    Player* player = GET_PLAYER(play);
    s16 var1;
    s16 var2;

    var1 = (s16)(actor->yawTowardsPlayer + 0x8000) - player->actor.shape.rot.y;
    var2 = actor->yawTowardsPlayer - arg5;

    if ((actor->xzDistToPlayer <= range) && (player->meleeWeaponState != 0) && (arg4 >= ABS(var1)) &&
        (arg3 >= ABS(var2))) {
        return true;
    } else {
        return false;
    }
}

void func_8003555C(PlayState* play, Vec3f* pos, Vec3f* velocity, Vec3f* accel) {
    Color_RGBA8 color1;
    Color_RGBA8 color2;

    color1.r = 200;
    color1.g = 160;
    color1.b = 120;

    color2.r = 130;
    color2.g = 90;
    color2.b = 50;

    //! @bug color1 and color2 alpha components not set before being passed on
    EffectSsKiraKira_SpawnSmall(play, pos, velocity, accel, &color1, &color2);
}

Vec3f D_80116268 = { 0.0f, -1.5f, 0.0f };
Vec3f D_80116274 = { 0.0f, -0.2f, 0.0f };

Gfx D_80116280[] = {
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU |
                                            FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsDPSetAlphaCompare(G_AC_THRESHOLD),
    gsSPEndDisplayList(),
};

void func_800355B8(PlayState* play, Vec3f* pos) {
    func_8003555C(play, pos, &D_80116268, &D_80116274);
}

u8 func_800355E4(PlayState* play, Collider* collider) {
    Player* player = GET_PLAYER(play);

    if ((collider->acFlags & AC_TYPE_PLAYER) && (player->meleeWeaponState != 0) &&
        (player->meleeWeaponAnimation == PLAYER_MWA_HAMMER_FORWARD)) {
        return true;
    } else {
        return false;
    }
}

u8 Actor_ApplyDamage(Actor* actor) {
    if (actor->colChkInfo.damage >= actor->colChkInfo.health) {
        actor->colChkInfo.health = 0;
    } else {
        actor->colChkInfo.health -= actor->colChkInfo.damage;
    }

    return actor->colChkInfo.health;
}

void Actor_SetDropFlag(Actor* actor, ColliderInfo* colInfo, s32 freezeFlag) {
    if (colInfo->acHitInfo == NULL) {
        actor->dropFlag = 0x00;
    } else if (freezeFlag &&
               (colInfo->acHitInfo->toucher.dmgFlags & (DMG_UNKNOWN_1 | DMG_MAGIC_ICE | DMG_MAGIC_FIRE))) {
        actor->freezeTimer = colInfo->acHitInfo->toucher.damage;
        actor->dropFlag = 0x00;
    } else if (colInfo->acHitInfo->toucher.dmgFlags & DMG_ARROW_FIRE) {
        actor->dropFlag = 0x01;
    } else if (colInfo->acHitInfo->toucher.dmgFlags & DMG_ARROW_ICE) {
        actor->dropFlag = 0x02;
    } else if (colInfo->acHitInfo->toucher.dmgFlags & DMG_ARROW_UNK1) {
        actor->dropFlag = 0x04;
    } else if (colInfo->acHitInfo->toucher.dmgFlags & DMG_ARROW_UNK2) {
        actor->dropFlag = 0x08;
    } else if (colInfo->acHitInfo->toucher.dmgFlags & DMG_ARROW_UNK3) {
        actor->dropFlag = 0x10;
    } else if (colInfo->acHitInfo->toucher.dmgFlags & DMG_ARROW_LIGHT) {
        actor->dropFlag = 0x20;
    } else if (colInfo->acHitInfo->toucher.dmgFlags & DMG_MAGIC_LIGHT) {
        if (freezeFlag) {
            actor->freezeTimer = colInfo->acHitInfo->toucher.damage;
        }
        actor->dropFlag = 0x40;
    } else {
        actor->dropFlag = 0x00;
    }
}

void Actor_SetDropFlagJntSph(Actor* actor, ColliderJntSph* jntSph, s32 freezeFlag) {
    ColliderInfo* curColInfo;
    s32 flag;
    s32 i;

    actor->dropFlag = 0x00;

    for (i = jntSph->count - 1; i >= 0; i--) {
        curColInfo = &jntSph->elements[i].info;
        if (curColInfo->acHitInfo == NULL) {
            flag = 0x00;
        } else if (freezeFlag &&
                   (curColInfo->acHitInfo->toucher.dmgFlags & (DMG_UNKNOWN_1 | DMG_MAGIC_ICE | DMG_MAGIC_FIRE))) {
            actor->freezeTimer = curColInfo->acHitInfo->toucher.damage;
            flag = 0x00;
        } else if (curColInfo->acHitInfo->toucher.dmgFlags & DMG_ARROW_FIRE) {
            flag = 0x01;
        } else if (curColInfo->acHitInfo->toucher.dmgFlags & DMG_ARROW_ICE) {
            flag = 0x02;
        } else if (curColInfo->acHitInfo->toucher.dmgFlags & DMG_ARROW_UNK1) {
            flag = 0x04;
        } else if (curColInfo->acHitInfo->toucher.dmgFlags & DMG_ARROW_UNK2) {
            flag = 0x08;
        } else if (curColInfo->acHitInfo->toucher.dmgFlags & DMG_ARROW_UNK3) {
            flag = 0x10;
        } else if (curColInfo->acHitInfo->toucher.dmgFlags & DMG_ARROW_LIGHT) {
            flag = 0x20;
        } else if (curColInfo->acHitInfo->toucher.dmgFlags & DMG_MAGIC_LIGHT) {
            if (freezeFlag) {
                actor->freezeTimer = curColInfo->acHitInfo->toucher.damage;
            }
            flag = 0x40;
        } else {
            flag = 0x00;
        }
        actor->dropFlag |= flag;
    }
}

void func_80035844(Vec3f* arg0, Vec3f* arg1, Vec3s* arg2, s32 arg3) {
    f32 dx = arg1->x - arg0->x;
    f32 dz = arg1->z - arg0->z;
    f32 dy = arg3 ? (arg1->y - arg0->y) : (arg0->y - arg1->y);

    arg2->y = Math_Atan2S(dz, dx);
    arg2->x = Math_Atan2S(sqrtf(SQ(dx) + SQ(dz)), dy);
}

/**
 * Spawns En_Part (Dissipating Flames) actor as a child of the given actor.
 */
Actor* func_800358DC(Actor* actor, Vec3f* spawnPos, Vec3s* spawnRot, f32* arg3, s32 timer, s16* unused, PlayState* play,
                     s16 params, Gfx* dList) {
    EnPart* spawnedEnPart;

    spawnedEnPart = (EnPart*)Actor_SpawnAsChild(&play->actorCtx, actor, play, ACTOR_EN_PART, spawnPos->x, spawnPos->y,
                                                spawnPos->z, spawnRot->x, spawnRot->y, actor->objBankIndex, params);
    if (spawnedEnPart != NULL) {
        spawnedEnPart->actor.scale = actor->scale;
        spawnedEnPart->actor.speedXZ = arg3[0];
        spawnedEnPart->displayList = dList;
        spawnedEnPart->action = 2;
        spawnedEnPart->timer = timer;
        spawnedEnPart->rotZ = arg3[1];
        spawnedEnPart->rotZSpeed = arg3[2];
        return &spawnedEnPart->actor;
    }

    return NULL;
}

void func_800359B8(Actor* actor, s16 arg1, Vec3s* arg2) {
    f32 floorPolyNormalX;
    f32 floorPolyNormalY;
    f32 floorPolyNormalZ;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    CollisionPoly* floorPoly;
    s32 pad;

    if (actor->floorPoly != NULL) {
        floorPoly = actor->floorPoly;
        floorPolyNormalX = COLPOLY_GET_NORMAL(floorPoly->normal.x);
        floorPolyNormalY = COLPOLY_GET_NORMAL(floorPoly->normal.y);
        floorPolyNormalZ = COLPOLY_GET_NORMAL(floorPoly->normal.z);

        sp38 = Math_SinS(arg1);
        sp34 = Math_CosS(arg1);
        sp28 = (-(floorPolyNormalX * sp38) - (floorPolyNormalZ * sp34));
        arg2->x = -RAD_TO_BINANG(Math_FAtan2F(sp28 * floorPolyNormalY, 1.0f));

        sp2C = Math_SinS(arg1 - 16375);
        sp30 = Math_CosS(arg1 - 16375);
        sp24 = (-(floorPolyNormalX * sp2C) - (floorPolyNormalZ * sp30));
        arg2->z = -RAD_TO_BINANG(Math_FAtan2F(sp24 * floorPolyNormalY, 1.0f));
    }
}

void func_80035B18(PlayState* play, Actor* actor, u16 textId) {
    Message_ContinueTextbox(play, textId);
    actor->textId = textId;
}

/**
 * Tests if event_chk_inf flag is set.
 */
s32 Flags_GetEventChkInf(s32 flag) {
    return GET_EVENTCHKINF(flag);
}

/**
 * Sets event_chk_inf flag.
 */
void Flags_SetEventChkInf(s32 flag) {
    SET_EVENTCHKINF(flag);
}

/**
 * Tests if inf_table flag is set.
 */
s32 Flags_GetInfTable(s32 flag) {
    return GET_INFTABLE(flag);
}

/**
 * Sets inf_table flag.
 */
void Flags_SetInfTable(s32 flag) {
    SET_INFTABLE(flag);
}

u32 func_80035BFC(PlayState* play, s16 arg1) {
    u16 retTextId = 0;

    switch (arg1) {
        case 0:
            if (Flags_GetEventChkInf(EVENTCHKINF_09)) {
                if (Flags_GetInfTable(INFTABLE_05)) {
                    retTextId = 0x1048;
                } else {
                    retTextId = 0x1047;
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_02)) {
                    if (Flags_GetInfTable(INFTABLE_03)) {
                        retTextId = 0x1032;
                    } else {
                        retTextId = 0x1031;
                    }
                } else {
                    if (Flags_GetInfTable(INFTABLE_00)) {
                        if (Flags_GetInfTable(INFTABLE_01)) {
                            retTextId = 0x1003;
                        } else {
                            retTextId = 0x1002;
                        }
                    } else {
                        retTextId = 0x1001;
                    }
                }
            }
            break;
        case 1:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_09)) {
                    if (Flags_GetInfTable(INFTABLE_10)) {
                        retTextId = 0x1046;
                    } else {
                        retTextId = 0x1045;
                    }
                } else {
                    if (Flags_GetEventChkInf(EVENTCHKINF_03)) {
                        if (Flags_GetInfTable(INFTABLE_0E)) {
                            retTextId = 0x1034;
                        } else {
                            retTextId = 0x1033;
                        }
                    } else {
                        if (Flags_GetInfTable(INFTABLE_0C)) {
                            retTextId = 0x1030;
                        } else {
                            retTextId = 0x102F;
                        }
                    }
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_5C)) {
                    if (Flags_GetInfTable(INFTABLE_19)) {
                        retTextId = 0x1071;
                    } else {
                        retTextId = 0x1070;
                    }
                } else {
                    if (Flags_GetEventChkInf(EVENTCHKINF_0B)) {
                        if (Flags_GetInfTable(INFTABLE_17)) {
                            retTextId = 0x1068;
                        } else {
                            retTextId = 0x1067;
                        }
                    } else {
                        if (Flags_GetInfTable(INFTABLE_15)) {
                            retTextId = 0x1061;
                        } else {
                            retTextId = 0x1060;
                        }
                    }
                }
            }
            break;
        case 2:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_09)) {
                    retTextId = 0x1042;
                } else {
                    retTextId = 0x1004;
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_5C)) {
                    retTextId = 0x1072;
                } else if (Flags_GetInfTable(INFTABLE_41)) {
                    retTextId = 0x1055;
                } else {
                    retTextId = 0x1056;
                }
            }
            break;
        case 3:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_09)) {
                    retTextId = 0x1043;
                } else {
                    if (Flags_GetInfTable(INFTABLE_1E)) {
                        retTextId = 0x1006;
                    } else {
                        retTextId = 0x1005;
                    }
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_5C)) {
                    retTextId = 0x1073;
                } else {
                    retTextId = 0x105A;
                }
            }
            break;
        case 4:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_09)) {
                    retTextId = 0x1042;
                } else {
                    retTextId = 0x1007;
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_5C)) {
                    retTextId = 0x1072;
                } else if (Flags_GetInfTable(INFTABLE_47)) {
                    retTextId = 0x105E;
                } else {
                    retTextId = 0x105D;
                }
            }
            break;
        case 5:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_09)) {
                    retTextId = 0x1044;
                } else if (Flags_GetInfTable(INFTABLE_22)) {
                    retTextId = 0x1009;
                } else {
                    retTextId = 0x1008;
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_5C)) {
                    retTextId = 0x1075;
                } else {
                    retTextId = 0x105B;
                }
            }
            break;
        case 6:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_09)) {
                    retTextId = 0x1042;
                } else if (Flags_GetInfTable(INFTABLE_24)) {
                    retTextId = 0x100B;
                } else {
                    retTextId = 0x100A;
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_5C)) {
                    retTextId = 0x1056;
                } else {
                    retTextId = 0x105F;
                }
            }
            break;
        case 7:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_09)) {
                    retTextId = 0x1043;
                } else if (Flags_GetInfTable(INFTABLE_26)) {
                    retTextId = 0x100D;
                } else {
                    retTextId = 0x100C;
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_5C)) {
                    retTextId = 0x1057;
                } else {
                    retTextId = 0x1057;
                }
            }
            break;
        case 8:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_09)) {
                    retTextId = 0x1043;
                } else if (Flags_GetInfTable(INFTABLE_28)) {
                    retTextId = 0x1019;
                } else {
                    retTextId = 0x100E;
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_5C)) {
                    retTextId = 0x1077;
                } else if (Flags_GetInfTable(INFTABLE_51)) {
                    retTextId = 0x1058;
                } else {
                    retTextId = 0x1059;
                }
            }
            break;
        case 9:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_09)) {
                    retTextId = 0x1049;
                } else {
                    retTextId = 0x1035;
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_5C)) {
                    retTextId = 0x1079;
                } else {
                    retTextId = 0x104E;
                }
            }
            break;
        case 10:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_09)) {
                    retTextId = 0x104A;
                } else {
                    retTextId = 0x1038;
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_5C)) {
                    retTextId = 0x1079;
                } else if (Flags_GetInfTable(INFTABLE_59)) {
                    retTextId = 0x1050;
                } else {
                    retTextId = 0x104F;
                }
            }
            break;
        case 11:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_09)) {
                    retTextId = 0x104B;
                } else {
                    retTextId = 0x103C;
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_5C)) {
                    retTextId = 0x107B;
                } else {
                    retTextId = 0x1051;
                }
            }
            break;
        case 12:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_09)) {
                    retTextId = 0x104C;
                } else {
                    retTextId = 0x103D;
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_5C)) {
                    retTextId = 0x107C;
                } else {
                    retTextId = 0x1052;
                }
            }
            break;
        case 13:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_09)) {
                    retTextId = 0x104D;
                } else {
                    retTextId = 0x103E;
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_5C)) {
                    retTextId = 0x106E;
                } else if (Flags_GetInfTable(INFTABLE_61)) {
                    retTextId = 0x1053;
                } else {
                    retTextId = 0x1054;
                }
            }
            break;
        case 15:
            if (Flags_GetEventChkInf(EVENTCHKINF_5C)) {
                retTextId = 0x1078;
            } else if (Flags_GetInfTable(INFTABLE_66)) {
                retTextId = 0x1066;
            } else {
                retTextId = 0x1062;
            }
            break;
        case 16:
            if (play->sceneId == SCENE_HYRULE_CASTLE) {
                retTextId = 0x7002;
            } else if (Flags_GetInfTable(INFTABLE_6A)) {
                retTextId = 0x7004;
            } else if ((gSaveContext.dayTime >= CLOCK_TIME(6, 0)) && (gSaveContext.dayTime <= CLOCK_TIME(18, 30))) {
                retTextId = 0x7002;
            } else {
                retTextId = 0x7003;
            }
            break;
        case 17:
            if (Flags_GetEventChkInf(EVENTCHKINF_09) && Flags_GetEventChkInf(EVENTCHKINF_25) &&
                Flags_GetEventChkInf(EVENTCHKINF_37)) {
                if (Flags_GetInfTable(INFTABLE_6C)) {
                    retTextId = 0x7008;
                } else {
                    retTextId = 0x7007;
                }
            } else {
                retTextId = 0;
            }
            break;
        case 19:
            retTextId = 0x702D;
            break;
        case 18:
            if (Flags_GetEventChkInf(EVENTCHKINF_09) && Flags_GetEventChkInf(EVENTCHKINF_25) &&
                Flags_GetEventChkInf(EVENTCHKINF_37)) {
                retTextId = 0x7006;
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_12)) {
                    if (Flags_GetInfTable(INFTABLE_71)) {
                        retTextId = 0x7072;
                    } else {
                        retTextId = 0x7071;
                    }
                } else {
                    retTextId = 0x7029;
                }
            }
            break;
        case 20:
        case 21:
            if (Flags_GetEventChkInf(EVENTCHKINF_42)) {
                retTextId = 0x2012;
            } else if (Flags_GetEventChkInf(EVENTCHKINF_41)) {
                if (Flags_GetInfTable(INFTABLE_76)) {
                    retTextId = 0x2011;
                } else {
                    retTextId = 0x2010;
                }
            } else if (Flags_GetEventChkInf(EVENTCHKINF_40)) {
                retTextId = 0x200F;
            } else {
                retTextId = 0x200E;
            }
            break;
        case 24:
            if (Flags_GetEventChkInf(EVENTCHKINF_09) && Flags_GetEventChkInf(EVENTCHKINF_25) &&
                Flags_GetEventChkInf(EVENTCHKINF_37)) {
                retTextId = 0x7044;
            } else {
                retTextId = 0x7015;
            }
            break;
        case 25:
            if (Flags_GetEventChkInf(EVENTCHKINF_09) && Flags_GetEventChkInf(EVENTCHKINF_25) &&
                Flags_GetEventChkInf(EVENTCHKINF_37)) {
                retTextId = 0x7045;
            } else {
                Flags_GetInfTable(INFTABLE_C2);
                retTextId = 0x7016;
            }
            break;
        case 26:
            if (Flags_GetEventChkInf(EVENTCHKINF_09) && Flags_GetEventChkInf(EVENTCHKINF_25) &&
                Flags_GetEventChkInf(EVENTCHKINF_37)) {
                retTextId = 0x7046;
            } else {
                Flags_GetInfTable(INFTABLE_C2);
                retTextId = 0x7018;
            }
            break;
        case 27:
            if (Flags_GetEventChkInf(EVENTCHKINF_09) && Flags_GetEventChkInf(EVENTCHKINF_25) &&
                Flags_GetEventChkInf(EVENTCHKINF_37)) {
                retTextId = 0x7047;
            } else if (Flags_GetEventChkInf(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
                retTextId = 0x701A;
            } else if (Flags_GetEventChkInf(EVENTCHKINF_11)) {
                if (Flags_GetInfTable(INFTABLE_C6)) {
                    retTextId = 0x701C;
                } else {
                    retTextId = 0x701B;
                }
            } else {
                retTextId = 0x701A;
            }
            break;
        case 28:
            if (Flags_GetEventChkInf(EVENTCHKINF_09) && Flags_GetEventChkInf(EVENTCHKINF_25) &&
                Flags_GetEventChkInf(EVENTCHKINF_37)) {
                retTextId = 0x7048;
            } else {
                Flags_GetInfTable(INFTABLE_CA);
                retTextId = 0x701D;
            }
            break;
        case 29:
            if (Flags_GetEventChkInf(EVENTCHKINF_09) && Flags_GetEventChkInf(EVENTCHKINF_25) &&
                Flags_GetEventChkInf(EVENTCHKINF_37)) {
                retTextId = 0x7049;
            } else {
                Flags_GetInfTable(INFTABLE_CC);
                retTextId = 0x701F;
            }
            break;
        case 30:
            if (Flags_GetEventChkInf(EVENTCHKINF_09) && Flags_GetEventChkInf(EVENTCHKINF_25) &&
                Flags_GetEventChkInf(EVENTCHKINF_37)) {
                retTextId = 0x704A;
            } else {
                Flags_GetInfTable(INFTABLE_CE);
                retTextId = 0x7021;
            }
            break;
        case 31:
            if (Flags_GetEventChkInf(EVENTCHKINF_09) && Flags_GetEventChkInf(EVENTCHKINF_25) &&
                Flags_GetEventChkInf(EVENTCHKINF_37)) {
                retTextId = 0x704B;
            } else {
                Flags_GetInfTable(INFTABLE_D0);
                retTextId = 0x7023;
            }
            break;
        case 32:
            if (Flags_GetEventChkInf(EVENTCHKINF_09) && Flags_GetEventChkInf(EVENTCHKINF_25) &&
                Flags_GetEventChkInf(EVENTCHKINF_37)) {
                retTextId = 0x704C;
            } else {
                Flags_GetInfTable(INFTABLE_D2);
                retTextId = 0x7025;
            }
            break;
        case 33:
            if (Flags_GetEventChkInf(EVENTCHKINF_09) && Flags_GetEventChkInf(EVENTCHKINF_25) &&
                Flags_GetEventChkInf(EVENTCHKINF_37)) {
                retTextId = 0x704D;
            } else {
                Flags_GetInfTable(INFTABLE_D4);
                retTextId = 0x7027;
            }
            break;
        case 34:
            Flags_GetInfTable(INFTABLE_D6);
            retTextId = 0x403C;
            break;
        case 35:
            if (Flags_GetInfTable(INFTABLE_D8)) {
                retTextId = 0x5029;
            } else {
                retTextId = 0x5028;
            }
            break;
        case 37:
            retTextId = 0x5002;
            break;
        case 38:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_25)) {
                    retTextId = 0x3027;
                } else if (Flags_GetEventChkInf(EVENTCHKINF_23)) {
                    retTextId = 0x3021;
                } else if (Flags_GetInfTable(INFTABLE_E0)) {
                    retTextId = 0x302A;
                } else {
                    retTextId = 0x3008;
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_20)) {
                    retTextId = 0x4043;
                } else {
                    retTextId = 0x302A;
                }
            }
            break;
        case 39:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_25)) {
                    retTextId = 0x3027;
                } else if (Flags_GetEventChkInf(EVENTCHKINF_23)) {
                    retTextId = 0x3026;
                } else {
                    retTextId = 0x3009;
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_2A)) {
                    retTextId = 0x4043;
                } else {
                    retTextId = 0x302A;
                }
            }
            break;
        case 40:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_25)) {
                    retTextId = 0x3027;
                } else if (Flags_GetEventChkInf(EVENTCHKINF_23)) {
                    retTextId = 0x3026;
                } else if (Flags_GetInfTable(INFTABLE_EB)) {
                    retTextId = 0x302B;
                } else {
                    retTextId = 0x300A;
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_2B)) {
                    retTextId = 0x4043;
                } else {
                    retTextId = 0x302A;
                }
            }
            break;
        case 41:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_25)) {
                    retTextId = 0x3027;
                } else if (Flags_GetInfTable(INFTABLE_F0)) {
                    retTextId = 0x3015;
                } else {
                    retTextId = 0x3014;
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_2C)) {
                    retTextId = 0x4043;
                } else {
                    retTextId = 0x302A;
                }
            }
            break;
        case 42:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_25)) {
                    retTextId = 0x3027;
                } else if (Flags_GetInfTable(INFTABLE_F4)) {
                    retTextId = 0x3017;
                } else {
                    retTextId = 0x3016;
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_2C)) {
                    retTextId = 0x4043;
                } else {
                    retTextId = 0x302A;
                }
            }
            break;
        case 43:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_25)) {
                    retTextId = 0x3027;
                } else if (Flags_GetInfTable(INFTABLE_F8)) {
                    retTextId = 0x3019;
                } else {
                    retTextId = 0x3018;
                }
            } else {
                if (Flags_GetEventChkInf(EVENTCHKINF_2D)) {
                    retTextId = 0x4043;
                } else {
                    retTextId = 0x302A;
                }
            }
            break;
        case 48:
            if (Flags_GetEventChkInf(EVENTCHKINF_25)) {
                retTextId = 0x3029;
            } else if (Flags_GetEventChkInf(EVENTCHKINF_20) && Flags_GetEventChkInf(EVENTCHKINF_21)) {
                retTextId = 0x301B;
            } else {
                retTextId = 0x301A;
            }
            break;
        case 49:
            if (Flags_GetEventChkInf(EVENTCHKINF_37)) {
                retTextId = 0x402D;
            } else if (Flags_GetEventChkInf(EVENTCHKINF_30)) {
                retTextId = 0x4007;
            } else {
                retTextId = 0x4006;
            }
            break;
        case 50:
            if (Flags_GetEventChkInf(EVENTCHKINF_37)) {
                retTextId = 0x402E;
            } else if (Flags_GetEventChkInf(EVENTCHKINF_30)) {
                if (Flags_GetInfTable(INFTABLE_124)) {
                    retTextId = 0x4009;
                } else {
                    retTextId = 0x4008;
                }
            } else {
                retTextId = 0x4006;
            }
            break;
        case 51:
            if (Flags_GetEventChkInf(EVENTCHKINF_37)) {
                retTextId = 0x402D;
            } else if (Flags_GetEventChkInf(EVENTCHKINF_31)) {
                if (Flags_GetInfTable(INFTABLE_12A)) {
                    retTextId = 0x400B;
                } else {
                    retTextId = 0x402F;
                }
            } else if (Flags_GetEventChkInf(EVENTCHKINF_30)) {
                retTextId = 0x400A;
            } else {
                retTextId = 0x4006;
            }
            break;
        case 52:
            if (Flags_GetEventChkInf(EVENTCHKINF_37)) {
                retTextId = 0x402E;
            } else if (Flags_GetEventChkInf(EVENTCHKINF_30)) {
                retTextId = 0x400C;
            } else {
                retTextId = 0x4006;
            }
            break;
        case 53:
            if (Flags_GetEventChkInf(EVENTCHKINF_37)) {
                retTextId = 0x402D;
            } else if (Flags_GetEventChkInf(EVENTCHKINF_33)) {
                retTextId = 0x4010;
            } else if (Flags_GetEventChkInf(EVENTCHKINF_30)) {
                retTextId = 0x400F;
            } else {
                retTextId = 0x4006;
            }
            break;
        case 54:
            if (Flags_GetEventChkInf(EVENTCHKINF_37)) {
                retTextId = 0x402E;
            } else if (Flags_GetEventChkInf(EVENTCHKINF_30)) {
                retTextId = 0x4011;
            } else {
                retTextId = 0x4006;
            }
            break;
        case 55:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_37)) {
                    retTextId = 0x402B;
                } else if (Flags_GetEventChkInf(EVENTCHKINF_31)) {
                    if (Flags_GetInfTable(INFTABLE_138)) {
                        retTextId = 0x401C;
                    } else {
                        retTextId = 0x401B;
                    }
                } else {
                    retTextId = 0x401A;
                }
            } else {
                retTextId = 0;
            }
            break;
        case 58:
            retTextId = 0x500F;
            break;
        case 59:
            retTextId = 0x5010;
            break;
        case 60:
            retTextId = 0x5012;
            break;
        case 61:
            if (Flags_GetInfTable(INFTABLE_166)) {
                retTextId = 0x5001;
            } else {
                retTextId = 0x5000;
            }
            break;
        case 62:
            retTextId = 0x5012;
            break;
        case 63:
            if (Flags_GetInfTable(INFTABLE_16A)) {
                retTextId = 0x5001;
            } else {
                retTextId = 0x5000;
            }
            break;
        case 71:
            if (Flags_GetEventChkInf(EVENTCHKINF_16)) {
                retTextId = 0x2049;
            } else if (Flags_GetEventChkInf(EVENTCHKINF_15)) {
                retTextId = 0x2048;
            } else if (Flags_GetEventChkInf(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
                retTextId = 0x2047;
            } else if (Flags_GetEventChkInf(EVENTCHKINF_12) &&
                       !Flags_GetEventChkInf(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
                retTextId = 0x2044;
            } else if (Flags_GetEventChkInf(EVENTCHKINF_10)) {
                if (Flags_GetEventChkInf(EVENTCHKINF_11)) {
                    retTextId = 0x2043;
                } else {
                    retTextId = 0x2042;
                }
            } else {
                retTextId = 0x2041;
            }
            break;
        case 72:
            if (!LINK_IS_ADULT) {
                if (Flags_GetEventChkInf(EVENTCHKINF_TALON_RETURNED_FROM_CASTLE)) {
                    retTextId = 0x2040;
                } else if (Flags_GetInfTable(INFTABLE_94)) {
                    retTextId = 0x2040;
                } else {
                    retTextId = 0x203F;
                }
            } else {
                if (!Flags_GetEventChkInf(EVENTCHKINF_EPONA_OBTAINED)) {
                    if (!IS_DAY) {
                        retTextId = 0x204E;
                    } else if (Flags_GetInfTable(INFTABLE_9A)) {
                        retTextId = 0x2031;
                    } else {
                        retTextId = 0x2030;
                    }
                } else {
                    retTextId = 0;
                }
            }
            break;
    }

    if (retTextId == 0) {
        retTextId = 1;
    }

    return retTextId;
}

void func_80036E50(u16 textId, s16 arg1) {
    switch (arg1) {
        case 0:
            switch (textId) {
                case 0x1001:
                    Flags_SetInfTable(INFTABLE_00);
                    return;
                case 0x1002:
                    Flags_SetInfTable(INFTABLE_01);
                    return;
                case 0x1031:
                    Flags_SetEventChkInf(EVENTCHKINF_03);
                    Flags_SetInfTable(INFTABLE_03);
                    return;
                case 0x1047:
                    Flags_SetInfTable(INFTABLE_05);
                    return;
            }
            return;
        case 1:
            switch (textId) {
                case 0x102F:
                    Flags_SetEventChkInf(EVENTCHKINF_02);
                    Flags_SetInfTable(INFTABLE_0C);
                    return;
                case 0x1033:
                    Audio_PlaySfxGeneral(NA_SE_SY_CORRECT_CHIME, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    Flags_SetEventChkInf(EVENTCHKINF_04);
                    Flags_SetInfTable(INFTABLE_0E);
                    return;
                case 0x1045:
                    Flags_SetInfTable(INFTABLE_10);
                    return;
                case 0x1060:
                    Flags_SetInfTable(INFTABLE_15);
                    return;
                case 0x1067:
                    Flags_SetEventChkInf(EVENTCHKINF_0A);
                    Flags_SetInfTable(INFTABLE_17);
                    return;
                case 0x1070:
                    Flags_SetInfTable(INFTABLE_19);
                    return;
            }
            return;
        case 2:
            if (textId == 0x1056) {
                Flags_SetInfTable(INFTABLE_41);
            }
            return;
        case 3:
            if (textId == 0x1005) {
                Flags_SetInfTable(INFTABLE_1E);
            }
            return;
        case 4:
            if (textId == 0x105D) {
                Flags_SetInfTable(INFTABLE_47);
            }
            return;
        case 5:
            if (textId == 0x1008) {
                Flags_SetInfTable(INFTABLE_22);
            }
            return;
        case 6:
            if (textId == 0x100A) {
                Flags_SetInfTable(INFTABLE_24);
            }
            return;
        case 7:
            if (textId == 0x100C) {
                Flags_SetInfTable(INFTABLE_26);
            }
            return;
        case 8:
            if (textId == 0x100E) {
                Flags_SetInfTable(INFTABLE_28);
            }
            if (textId == 0x1059) {
                Flags_SetInfTable(INFTABLE_51);
            }
            return;
        case 10:
            if (textId == 0x104F) {
                Flags_SetInfTable(INFTABLE_59);
            }
            return;
        case 13:
            if (textId == 0x1054) {
                Flags_SetInfTable(INFTABLE_61);
            }
            return;
        case 15:
            if (textId == 0x1062) {
                Flags_SetInfTable(INFTABLE_66);
            }
            return;
        case 16:
            if (textId == 0x7002) {
                Flags_SetInfTable(INFTABLE_6A);
            }
            if (textId == 0x7003) {
                Flags_SetInfTable(INFTABLE_6A);
            }
            return;
        case 17:
            if (textId == 0x7007) {
                Flags_SetInfTable(INFTABLE_6C);
            }
            return;
        case 18:
            if (textId == 0x7071) {
                Flags_SetInfTable(INFTABLE_71);
            }
            return;
        case 20:
        case 21:
            if (textId == 0x2010) {
                Flags_SetInfTable(INFTABLE_76);
            }
            return;
        case 25:
            if (textId == 0x7016) {
                Flags_SetInfTable(INFTABLE_C2);
            }
            return;
        case 26:
            if (textId == 0x7018) {
                Flags_SetInfTable(INFTABLE_C4);
            }
            return;
        case 28:
            if (textId == 0x701D) {
                Flags_SetInfTable(INFTABLE_CA);
            }
            return;
        case 29:
            if (textId == 0x701F) {
                Flags_SetInfTable(INFTABLE_CC);
            }
            return;
        case 30:
            if (textId == 0x7021) {
                Flags_SetInfTable(INFTABLE_CE);
            }
            return;
        case 31:
            if (textId == 0x7023) {
                Flags_SetInfTable(INFTABLE_D0);
            }
            return;
        case 32:
            if (textId == 0x7025) {
                Flags_SetInfTable(INFTABLE_D2);
            }
            return;
        case 33:
            if (textId == 0x7027) {
                Flags_SetInfTable(INFTABLE_D4);
            }
            return;
        case 34:
            if (textId == 0x403C) {
                Flags_SetInfTable(INFTABLE_D6);
            }
            return;
        case 35:
            if (textId == 0x5028) {
                Flags_SetInfTable(INFTABLE_D8);
            }
            return;
        case 38:
            if (textId == 0x3008) {
                Flags_SetInfTable(INFTABLE_E0);
            }
            return;
        case 40:
            if (textId == 0x300B) {
                Flags_SetInfTable(INFTABLE_EB);
            }
            return;
        case 41:
            if (textId == 0x3014) {
                Flags_SetInfTable(INFTABLE_F0);
            }
            return;
        case 42:
            if (textId == 0x3016) {
                Flags_SetInfTable(INFTABLE_F4);
            }
            return;
        case 43:
            if (textId == 0x3018) {
                Flags_SetEventChkInf(EVENTCHKINF_20);
                Flags_SetInfTable(INFTABLE_F8);
            }
            return;
        case 48:
            if (textId == 0x3020) {
                Flags_SetEventChkInf(EVENTCHKINF_22);
                Flags_SetInfTable(INFTABLE_113);
            }
            return;
        case 49:
        case 52:
        case 53:
        case 54:
            if (textId == 0x4006) {
                Flags_SetEventChkInf(EVENTCHKINF_30);
            }
            return;
        case 50:
            if (textId == 0x4006) {
                Flags_SetEventChkInf(EVENTCHKINF_30);
            }
            if (textId == 0x4008) {
                Flags_SetInfTable(INFTABLE_124);
            }
            return;
        case 51:
            if (textId == 0x4006) {
                Flags_SetEventChkInf(EVENTCHKINF_30);
            }
            if (textId == 0x400A) {
                Flags_SetEventChkInf(EVENTCHKINF_32);
            }
            if (textId == 0x402F) {
                Flags_SetInfTable(INFTABLE_12A);
            }
            return;
        case 55:
            if (textId == 0x401B) {
                Flags_SetEventChkInf(EVENTCHKINF_33);
                Flags_SetInfTable(INFTABLE_138);
            }
            return;
        case 61:
            if (textId == 0x5000) {
                Flags_SetInfTable(INFTABLE_166);
            }
            return;
        case 63:
            if (textId == 0x5013) {
                Flags_SetInfTable(INFTABLE_16A);
            }
            return;
        case 71:
            if (textId == 0x2041) {
                Flags_SetEventChkInf(EVENTCHKINF_10);
            }
            if (textId == 0x2044) {
                Flags_SetEventChkInf(EVENTCHKINF_12);
            }
            if (textId == 0x2047) {
                Flags_SetEventChkInf(EVENTCHKINF_15);
            }
            if (textId == 0x2048) {
                Flags_SetEventChkInf(EVENTCHKINF_16);
            }
            return;
        case 72:
            return;
    }
}

s32 func_800374E0(PlayState* play, Actor* actor, u16 textId) {
    MessageContext* msgCtx = &play->msgCtx;
    s32 ret = 1;

    switch (textId) {
        case 0x1035:
            if (msgCtx->choiceIndex == 0) {
                if (Flags_GetInfTable(INFTABLE_2A)) {
                    func_80035B18(play, actor, 0x1036);
                } else {
                    func_80035B18(play, actor, 0x1041);
                }
            }
            if (msgCtx->choiceIndex == 1) {
                if (Flags_GetInfTable(INFTABLE_2B)) {
                    func_80035B18(play, actor, 0x1037);
                } else {
                    func_80035B18(play, actor, 0x1041);
                }
            }
            ret = 0;
            break;
        case 0x1038:
            if (msgCtx->choiceIndex == 0) {
                if (Flags_GetInfTable(INFTABLE_2E)) {
                    func_80035B18(play, actor, 0x1039);
                } else {
                    func_80035B18(play, actor, 0x1041);
                }
            }
            if (msgCtx->choiceIndex == 1) {
                if (Flags_GetInfTable(INFTABLE_2F)) {
                    func_80035B18(play, actor, 0x103A);
                } else {
                    func_80035B18(play, actor, 0x1041);
                }
            }
            if (msgCtx->choiceIndex == 2) {
                if (Flags_GetInfTable(INFTABLE_30)) {
                    func_80035B18(play, actor, 0x103B);
                } else {
                    func_80035B18(play, actor, 0x1041);
                }
            }
            ret = 0;
            break;
        case 0x103E:
            if (msgCtx->choiceIndex == 0) {
                func_80035B18(play, actor, 0x103F);
            }
            if (msgCtx->choiceIndex == 1) {
                func_80035B18(play, actor, 0x1040);
            }
            ret = 0;
            break;
        case 0x1041:
            if (msgCtx->choiceTextId == 0x1035) {
                if (msgCtx->choiceIndex == 0) {
                    func_80035B18(play, actor, 0x1036);
                    Flags_SetInfTable(INFTABLE_2A);
                }
                if (msgCtx->choiceIndex == 1) {
                    func_80035B18(play, actor, 0x1037);
                    Flags_SetInfTable(INFTABLE_2B);
                }
            }
            if (msgCtx->choiceTextId == 0x1038) {
                if (msgCtx->choiceIndex == 0) {
                    func_80035B18(play, actor, 0x1039);
                    Flags_SetInfTable(INFTABLE_2E);
                }
                if (msgCtx->choiceIndex == 1) {
                    func_80035B18(play, actor, 0x103A);
                    Flags_SetInfTable(INFTABLE_2F);
                }
                if (msgCtx->choiceIndex == 2) {
                    func_80035B18(play, actor, 0x103B);
                    Flags_SetInfTable(INFTABLE_30);
                }
            }
            ret = 0;
            break;
        case 0x1062:
            if (msgCtx->choiceIndex == 0) {
                func_80035B18(play, actor, 0x1063);
            }
            if (msgCtx->choiceIndex == 1) {
                func_80035B18(play, actor, 0x1064);
            }
            ret = 0;
            break;
        case 0x2030:
        case 0x2031:
            if (msgCtx->choiceIndex == 0) {
                if (gSaveContext.rupees >= 10) {
                    func_80035B18(play, actor, 0x2034);
                    Rupees_ChangeBy(-10);
                } else {
                    func_80035B18(play, actor, 0x2032);
                }
            }
            if (msgCtx->choiceIndex == 1) {
                func_80035B18(play, actor, 0x2032);
            }
            Flags_SetInfTable(INFTABLE_9A);
            ret = 0;
            break;
        case 0x2036:
        case 0x2037:
            if (msgCtx->choiceIndex == 0) {
                func_80035B18(play, actor, 0x201F);
            }
            if (msgCtx->choiceIndex == 1) {
                func_80035B18(play, actor, 0x205A);
            }
            ret = 0;
            break;
        case 0x2038:
            if (msgCtx->choiceIndex == 0) {
                break;
            }
            if (msgCtx->choiceIndex == 1) {
                func_80035B18(play, actor, 0x205A);
            }
            ret = 0;
            break;
        case 0x2034:
            if (msgCtx->choiceIndex != 0) {
                break;
            }
            func_80035B18(play, actor, 0x2035);
            ret = 0;
            break;
        case 0x2043:
            if (Flags_GetEventChkInf(EVENTCHKINF_12)) {
                break;
            }
            func_80035B18(play, actor, 0x2044);
            ret = 0;
            break;
        case 0x205A:
            break;
        case 0x300A:
            if (msgCtx->choiceIndex == 0) {
                if (Flags_GetEventChkInf(EVENTCHKINF_22)) {
                    func_80035B18(play, actor, 0x300B);
                } else {
                    func_80035B18(play, actor, 0x300C);
                }
            }
            if (msgCtx->choiceIndex == 1) {
                func_80035B18(play, actor, 0x300D);
            }
            ret = 0;
            break;
        case 0x301B:
            if (msgCtx->choiceIndex == 0) {
                func_80035B18(play, actor, 0x301D);
            }
            if (msgCtx->choiceIndex == 1) {
                if (Flags_GetInfTable(INFTABLE_113)) {
                    func_80035B18(play, actor, 0x301F);
                } else {
                    func_80035B18(play, actor, 0x301E);
                }
            }
            ret = 0;
            break;
        case 0x301E:
            func_80035B18(play, actor, 0x3020);
            ret = 0;
            break;
        case 0x400C:
            if (msgCtx->choiceIndex == 0) {
                func_80035B18(play, actor, 0x400D);
            }
            if (msgCtx->choiceIndex == 1) {
                func_80035B18(play, actor, 0x400E);
            }
            ret = 0;
            break;
        case 0x7007:
            func_80035B18(play, actor, 0x703E);
            ret = 0;
            break;
        case 0x703E:
            func_80035B18(play, actor, 0x703F);
            ret = 0;
            break;
        case 0x703F:
            func_80035B18(play, actor, 0x7042);
            ret = 0;
            break;
    }

    return ret;
}

u16 func_80037C30(PlayState* play, s16 arg1) {
    return func_80035BFC(play, arg1);
}

s32 func_80037C5C(PlayState* play, s16 arg1, u16 textId) {
    func_80036E50(textId, arg1);
    return false;
}

s32 func_80037C94(PlayState* play, Actor* actor, s32 arg2) {
    return func_800374E0(play, actor, actor->textId);
}

s32 func_80037CB8(PlayState* play, Actor* actor, s16 arg2) {
    MessageContext* msgCtx = &play->msgCtx;
    s32 ret = false;

    switch (Message_GetState(msgCtx)) {
        case TEXT_STATE_CLOSING:
            func_80037C5C(play, arg2, actor->textId);
            ret = true;
            break;
        case TEXT_STATE_CHOICE:
        case TEXT_STATE_EVENT:
            if (Message_ShouldAdvance(play) && func_80037C94(play, actor, arg2)) {
                Audio_PlaySfxGeneral(NA_SE_SY_CANCEL, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                msgCtx->msgMode = MSGMODE_TEXT_CLOSING;
                ret = true;
            }
            break;
    }

    return ret;
}

s32 func_80037D98(PlayState* play, Actor* actor, s16 arg2, s32* arg3) {
    s16 var;
    s16 sp2C;
    s16 sp2A;
    s16 abs_var;

    if (Actor_ProcessTalkRequest(actor, play)) {
        *arg3 = 1;
        return true;
    }

    if (*arg3 == 1) {
        if (func_80037CB8(play, actor, arg2)) {
            *arg3 = 0;
        }
        return false;
    }

    Actor_GetScreenPos(play, actor, &sp2C, &sp2A);

    if ((sp2C < 0) || (sp2C > SCREEN_WIDTH) || (sp2A < 0) || (sp2A > SCREEN_HEIGHT)) {
        return false;
    }

    var = actor->yawTowardsPlayer - actor->shape.rot.y;
    abs_var = ABS(var);

    if (abs_var >= 0x4300) {
        return false;
    }

    if ((actor->xyzDistToPlayerSq > SQ(160.0f)) && !actor->isTargeted) {
        return false;
    }

    if (actor->xyzDistToPlayerSq <= SQ(80.0f)) {
        if (func_8002F2CC(actor, play, 80.0f)) {
            actor->textId = func_80037C30(play, arg2);
        }
    } else {
        if (func_8002F2F4(actor, play)) {
            actor->textId = func_80037C30(play, arg2);
        }
    }

    return false;
}

s32 Actor_TrackNone(Vec3s* headRot, Vec3s* torsoRot) {
    Math_SmoothStepToS(&headRot->y, 0, 6, 6200, 100);
    Math_SmoothStepToS(&headRot->x, 0, 6, 6200, 100);
    Math_SmoothStepToS(&torsoRot->y, 0, 6, 6200, 100);
    Math_SmoothStepToS(&torsoRot->x, 0, 6, 6200, 100);
    return true;
}

s32 Actor_TrackPoint(Actor* actor, Vec3f* target, Vec3s* headRot, Vec3s* torsoRot) {
    s16 pitch;
    s16 yaw;
    s16 yawDiff;

    pitch = Math_Vec3f_Pitch(&actor->focus.pos, target);
    yaw = Math_Vec3f_Yaw(&actor->focus.pos, target) - actor->world.rot.y;

    Math_SmoothStepToS(&headRot->x, pitch, 6, 2000, 1);
    headRot->x = CLAMP(headRot->x, -6000, 6000);

    yawDiff = Math_SmoothStepToS(&headRot->y, yaw, 6, 2000, 1);
    headRot->y = CLAMP(headRot->y, -8000, 8000);

    if ((yawDiff != 0) && (ABS(headRot->y) < 8000)) {
        return false;
    }

    Math_SmoothStepToS(&torsoRot->y, yaw - headRot->y, 4, 2000, 1);
    torsoRot->y = CLAMP(torsoRot->y, -12000, 12000);

    return true;
}

/**
 * Same as Actor_TrackPlayer, except use the actor's world position as the focus point, with the height
 * specified.
 *
 * @param play
 * @param actor
 * @param headRot the computed actor's head's rotation step
 * @param torsoRot the computed actor's torso's rotation step
 * @param focusHeight the height of the focus point relative to their world position
 *
 * @return true if rotated towards player, false if rotations were stepped back to zero.
 *
 * @note same note as Actor_TrackPlayer
 */
s32 Actor_TrackPlayerSetFocusHeight(PlayState* play, Actor* actor, Vec3s* headRot, Vec3s* torsoRot, f32 focusHeight) {
    Player* player = GET_PLAYER(play);
    s16 yaw;
    Vec3f target;

    actor->focus.pos = actor->world.pos;
    actor->focus.pos.y += focusHeight;

    if (!(((play->csCtx.state != CS_STATE_IDLE) || gDbgCamEnabled) &&
          (gSaveContext.entranceIndex == ENTR_KOKIRI_FOREST_0))) {
        yaw = ABS((s16)(actor->yawTowardsPlayer - actor->shape.rot.y));
        if (yaw >= 0x4300) {
            Actor_TrackNone(headRot, torsoRot);
            return false;
        }
    }

    if (((play->csCtx.state != CS_STATE_IDLE) || gDbgCamEnabled) &&
        (gSaveContext.entranceIndex == ENTR_KOKIRI_FOREST_0)) {
        target = play->view.eye;
    } else {
        target = player->actor.focus.pos;
    }

    Actor_TrackPoint(actor, &target, headRot, torsoRot);

    return true;
}

/**
 * Computes the necessary HeadRot and TorsoRot steps to be added to the normal rotation to smoothly turn an actors's
 * head and torso towards the player if within a certain yaw, else smoothly returns the rotations back to zero.
 * Also sets the focus position with the specified point.
 *
 * @param play
 * @param actor
 * @param headRot the computed actor's head's rotation step
 * @param torsoRot the computed actor's torso's rotation step
 * @param focusPos the point to set as the actor's focus position
 *
 * @return true if rotated towards player, false if rotations were stepped back to zero.
 *
 * @note if in a cutscene or debug camera is enabled, and the last entrance used was Kokiri Forest spawn 0, the computed
 * rotation will instead turn towards the view eye no matter the yaw.
 */
s32 Actor_TrackPlayer(PlayState* play, Actor* actor, Vec3s* headRot, Vec3s* torsoRot, Vec3f focusPos) {
    Player* player = GET_PLAYER(play);
    s16 yaw;
    Vec3f target;

    actor->focus.pos = focusPos;

    if (!(((play->csCtx.state != CS_STATE_IDLE) || gDbgCamEnabled) &&
          (gSaveContext.entranceIndex == ENTR_KOKIRI_FOREST_0))) {
        yaw = ABS((s16)(actor->yawTowardsPlayer - actor->shape.rot.y));
        if (yaw >= 0x4300) {
            Actor_TrackNone(headRot, torsoRot);
            return false;
        }
    }

    if (((play->csCtx.state != CS_STATE_IDLE) || gDbgCamEnabled) &&
        (gSaveContext.entranceIndex == ENTR_KOKIRI_FOREST_0)) {
        target = play->view.eye;
    } else {
        target = player->actor.focus.pos;
    }

    Actor_TrackPoint(actor, &target, headRot, torsoRot);

    return true;
}
