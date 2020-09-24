#include <ultra64.h>
#include <global.h>
#include <vt.h>
#include "overlays/actors/ovl_Arms_Hook/z_arms_hook.h"

#include "overlays/actors/ovl_En_Part/z_en_part.h"

void ActorShape_Init(ActorShape* shape, f32 arg1, void* shadowDrawFunc, f32 arg3) {
    shape->unk_08 = arg1;
    shape->shadowDrawFunc = shadowDrawFunc;
    shape->unk_10 = arg3;
    shape->unk_14 = -1;
}

void func_8002B200(Actor* actor, Lights* lights, GlobalContext* globalCtx, Gfx* dlist, Color_RGBA8* color) {
    f32 temp1;
    f32 temp2;
    MtxF sp60;

    if (actor->floorPoly != NULL) {
        temp1 = actor->posRot.pos.y - actor->groundY;

        if (temp1 >= -50.0f && temp1 < 500.0f) {
            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 1553);

            oGfxCtx->polyOpa.p = Gfx_CallSetupDL(oGfxCtx->polyOpa.p, 0x2C);

            gDPSetCombineLERP(oGfxCtx->polyOpa.p++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0,
                              0, 0, COMBINED);

            temp1 = (temp1 < 0.0f) ? 0.0f : ((temp1 > 150.0f) ? 150.0f : temp1);
            temp2 = 1.0f - (temp1 * (1.f / 350));

            if (color != NULL) {
                gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, color->r, color->g, color->b,
                                (u32)(actor->shape.unk_14 * temp2) & 0xFF);
            } else {
                gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, 0, 0, 0, (u32)(actor->shape.unk_14 * temp2) & 0xFF);
            }

            func_80038A28(actor->floorPoly, actor->posRot.pos.x, actor->groundY, actor->posRot.pos.z, &sp60);
            Matrix_Put(&sp60);

            if (dlist != D_04049210) {
                Matrix_RotateY(actor->shape.rot.y * (M_PI / 32768), MTXMODE_APPLY);
            }

            temp2 = (1.0f - (temp1 * (1.f / 350))) * actor->shape.unk_10;
            Matrix_Scale(actor->scale.x * temp2, 1.0f, actor->scale.z * temp2, MTXMODE_APPLY);

            gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_actor.c", 1588),
                      G_MTX_MODELVIEW | G_MTX_LOAD);
            gSPDisplayList(oGfxCtx->polyOpa.p++, dlist);

            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 1594);
        }
    }
}

void ActorShadow_DrawFunc_Circle(Actor* actor, Lights* lights, GlobalContext* globalCtx) {
    func_8002B200(actor, lights, globalCtx, &D_04049210, NULL);
}

Color_RGBA8 D_80115F80 = { 255, 255, 255, 255 };

void ActorShadow_DrawFunc_WhiteCircle(Actor* actor, Lights* lights, GlobalContext* globalCtx) {
    func_8002B200(actor, lights, globalCtx, &D_04049210, &D_80115F80);
}

void ActorShadow_DrawFunc_Squiggly(Actor* actor, Lights* lights, GlobalContext* globalCtx) {
    func_8002B200(actor, lights, globalCtx, &D_04049AD0, NULL);
}

void func_8002B66C(GlobalContext* globalCtx, Light* light, MtxF* arg2, s32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    s32 pad1;
    f32 sp58;
    s32 pad2[2];

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 1661);

    gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, 0, 0, 0,
                    (u32)(((arg3 * 0.00005f) > 1.0f ? 1.0f : (arg3 * 0.00005f)) * arg4) & 0xFF);

    sp58 = Math_atan2f(light->l.dir[0], light->l.dir[2]);
    arg6 *= (4.5f - (light->l.dir[1] * 0.035f));
    arg6 = (arg6 < 1.0f) ? 1.0f : arg6;
    Matrix_Put(arg2);
    Matrix_RotateY(sp58, MTXMODE_APPLY);
    Matrix_Scale(arg5, 1.0f, arg5 * arg6, MTXMODE_APPLY);

    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_actor.c", 1687),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(oGfxCtx->polyOpa.p++, &D_04048180);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 1693);
}

#ifdef NON_MATCHING
// saved register, stack usage and minor ordering differences
void ActorShadow_DrawFunc_Teardrop(Actor* actor, Lights* lights, GlobalContext* globalCtx) {
    MtxF spE8;
    f32 spE0[2];
    s32 i;
    f32* spAC;
    f32 temp_10;
    u8 temp_14;
    f32 temp_f0;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f22_2;
    f32 temp_f24;
    s32 temp_a3;
    s32 temp_lo;
    u8 temp_s6;
    Vec3f* phi_s7;
    f32 phi_f2;
    Light* phi_s0;
    s32 phi_s1;
    s32 phi_s2;

    temp_f20 = actor->posRot.pos.y - actor->groundY;

    if (temp_f20 > 20.0f) {
        temp_10 = actor->shape.unk_10;
        temp_14 = actor->shape.unk_14;
        actor->shape.unk_10 *= 0.3f;
        actor->shape.unk_14 *= ((temp_f20 - 20.0f) * 0.02f) > 1.0f ? 1.0f : ((temp_f20 - 20.0f) * 0.02f);
        ActorShadow_DrawFunc_Circle(actor, lights, globalCtx);
        actor->shape.unk_10 = temp_10;
        actor->shape.unk_14 = temp_14;
    }

    if (temp_f20 < 200.0f) {
        phi_s7 = &actor->unk_CC[0];
        spAC = &spE0[0];
        temp_s6 = lights->numLights;
        temp_s6 -= 2;

        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 1741);

        oGfxCtx->polyOpa.p = Gfx_CallSetupDL(oGfxCtx->polyOpa.p, 0x2C);
        actor->shape.unk_15 = 0;

        for (i = 0; i < 2; i++) {
            phi_s7->y += 50.0f;
            *spAC = func_800BFCB8(globalCtx, &spE8, phi_s7);
            phi_s7->y -= 50.0f;

            actor->shape.unk_15 *= 2;

            phi_f2 = phi_s7->y - *spAC;

            if ((phi_f2 >= -1.0f) && (phi_f2 < 500.0f)) {
                phi_s0 = &lights->l.l[0];

                if (phi_f2 <= 0.0f) {
                    actor->shape.unk_15++;
                }

                if (30.0f < phi_f2) {
                    phi_f2 = 30.0f;
                }

                temp_f24 = actor->shape.unk_14 * (1.0f - (phi_f2 * (1.0f / 30)));

                if (30.0f < phi_f2) {
                    phi_f2 = 30.0f;
                }

                temp_f20_2 = 1.0f - (phi_f2 * (1.0f / 70));
                temp_f22_2 = (actor->shape.unk_10 * temp_f20_2) * actor->scale.x;

                phi_s2 = 0;

                for (phi_s1 = 0; phi_s1 < temp_s6; phi_s1++) {
                    if (phi_s0->l.dir[1] > 0) {
                        temp_lo = ABS(phi_s0->l.dir[1]) * ((phi_s0->l.col[0] + phi_s0->l.col[1]) + phi_s0->l.col[2]);
                        if (temp_lo > 0) {
                            func_8002B66C(globalCtx, phi_s0, &spE8, temp_lo, temp_f24, temp_f22_2, temp_f20_2);
                            phi_s2 += temp_lo;
                        }
                    }
                    phi_s0++;
                }

                for (phi_s1 = 0; phi_s1 < 2; phi_s1++) {
                    if (phi_s0->l.dir[1] > 0) {
                        temp_a3 = (ABS(phi_s0->l.dir[1]) * ((phi_s0->l.col[0] + phi_s0->l.col[1]) + phi_s0->l.col[2])) -
                                  (phi_s2 * 8);
                        if (temp_a3 > 0) {
                            func_8002B66C(globalCtx, phi_s0, &spE8, temp_a3, temp_f24, temp_f22_2, temp_f20_2);
                        }
                    }
                    phi_s0++;
                }
            }

            spAC++;
            phi_s7++;
        }

        if (!(actor->bgCheckFlags & 1)) {
            actor->shape.unk_15 = 0;
        } else if (actor->shape.unk_15 == 3) {
            temp_f0 = actor->unk_CC[0].y - actor->unk_CC[1].y;
            actor->shape.unk_15 = ((spE0[0] + temp_f0) < (spE0[1] - temp_f0)) ? 2 : 1;
        }

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 1831);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/ActorShadow_DrawFunc_Teardrop.s")
#endif

void func_8002BDB0(Actor* actor, s32 arg1, s32 arg2, Vec3f* arg3, s32 arg4, Vec3f* arg5) {
    if (arg1 == arg2) {
        Matrix_MultVec3f(arg3, &actor->unk_CC[0]);
    } else if (arg1 == arg4) {
        Matrix_MultVec3f(arg5, &actor->unk_CC[1]);
    }
}

void func_8002BE04(GlobalContext* globalCtx, Vec3f* arg1, Vec3f* arg2, f32* arg3) {
    SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, arg1, arg2, arg3);
    *arg3 = (*arg3 < 1.0f) ? 1.0f : (1.0f / *arg3);
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

void func_8002BE98(TargetContext* targetCtx, s32 actorType, GlobalContext* globalCtx) {
    TargetContextEntry* entry;
    NaviColor* naviColor;
    s32 i;

    Math_Vec3f_Copy(&targetCtx->targetCenterPos, &globalCtx->view.eye);
    targetCtx->unk_44 = 500.0f;
    targetCtx->unk_48 = 0x100;

    naviColor = &sNaviColorList[actorType];

    entry = &targetCtx->arr_50[0];
    for (i = 0; i < ARRAY_COUNT(targetCtx->arr_50); i++) {
        func_8002BE64(targetCtx, i, 0.0f, 0.0f, 0.0f);
        entry->color.r = naviColor->inner.r;
        entry->color.g = naviColor->inner.g;
        entry->color.b = naviColor->inner.b;
        entry++;
    }
}

void func_8002BF60(TargetContext* targetCtx, Actor* actor, s32 actorType, GlobalContext* globalCtx) {
    NaviColor* naviColor = &sNaviColorList[actorType];
    targetCtx->naviRefPos.x = actor->posRot2.pos.x;
    targetCtx->naviRefPos.y = actor->posRot2.pos.y + (actor->unk_4C * actor->scale.y);
    targetCtx->naviRefPos.z = actor->posRot2.pos.z;
    targetCtx->naviInner.r = naviColor->inner.r;
    targetCtx->naviInner.g = naviColor->inner.g;
    targetCtx->naviInner.b = naviColor->inner.b;
    targetCtx->naviInner.a = naviColor->inner.a;
    targetCtx->naviOuter.r = naviColor->outer.r;
    targetCtx->naviOuter.g = naviColor->outer.g;
    targetCtx->naviOuter.b = naviColor->outer.b;
    targetCtx->naviOuter.a = naviColor->outer.a;
}

void func_8002C0C0(TargetContext* targetCtx, Actor* actor, GlobalContext* globalCtx) {
    targetCtx->arrowPointedActor = NULL;
    targetCtx->targetedActor = NULL;
    targetCtx->unk_40 = 0.0f;
    targetCtx->unk_8C = NULL;
    targetCtx->unk_90 = NULL;
    targetCtx->unk_4B = 0;
    targetCtx->unk_4C = 0;
    func_8002BF60(targetCtx, actor, actor->type, globalCtx);
    func_8002BE98(targetCtx, actor->type, globalCtx);
}

void func_8002C124(TargetContext* targetCtx, GlobalContext* globalCtx) {
    Actor* actor = targetCtx->targetedActor;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 2029);

    if (targetCtx->unk_48 != 0) {
        TargetContextEntry* entry;
        Player* player;
        s16 spCE;
        f32 temp1;
        Vec3f spBC;
        s32 spB8;
        f32 spB4;
        s32 spB0;
        s32 spAC;
        f32 var1;
        f32 var2;
        s32 i;

        player = PLAYER;

        spCE = 0xFF;
        var1 = 1.0f;

        if (targetCtx->unk_4B != 0) {
            spB8 = 1;
        } else {
            spB8 = 3;
        }

        if (actor != NULL) {
            Math_Vec3f_Copy(&targetCtx->targetCenterPos, &actor->posRot2.pos);
            var1 = (500.0f - targetCtx->unk_44) / 420.0f;
        } else {
            targetCtx->unk_48 -= 120;
            if (targetCtx->unk_48 < 0) {
                targetCtx->unk_48 = 0;
            }
            spCE = targetCtx->unk_48;
        }

        func_8002BE04(globalCtx, &targetCtx->targetCenterPos, &spBC, &spB4);

        spBC.x = (160 * (spBC.x * spB4)) * var1;
        spBC.x = CLAMP(spBC.x, -320.0f, 320.0f);

        spBC.y = (120 * (spBC.y * spB4)) * var1;
        spBC.y = CLAMP(spBC.y, -240.0f, 240.0f);

        spBC.z = spBC.z * var1;

        targetCtx->unk_4C--;
        if (targetCtx->unk_4C < 0) {
            targetCtx->unk_4C = 2;
        }

        func_8002BE64(targetCtx, targetCtx->unk_4C, spBC.x, spBC.y, spBC.z);

        if ((!(player->stateFlags1 & 0x40)) || (actor != player->unk_664)) {
            oGfxCtx->overlay.p = Gfx_CallSetupDL(oGfxCtx->overlay.p, 0x39);

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

                    gDPSetPrimColor(oGfxCtx->overlay.p++, 0, 0, entry->color.r, entry->color.g, entry->color.b,
                                    (u8)spCE);

                    Matrix_RotateZ((targetCtx->unk_4B & 0x7F) * (M_PI / 64), MTXMODE_APPLY);

                    for (i = 0; i < 4; i++) {
                        Matrix_RotateZ(M_PI / 2, MTXMODE_APPLY);
                        Matrix_Push();
                        Matrix_Translate(entry->unk_0C, entry->unk_0C, 0.0f, MTXMODE_APPLY);
                        gSPMatrix(oGfxCtx->overlay.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_actor.c", 2116),
                                  G_MTX_MODELVIEW | G_MTX_LOAD);
                        gSPDisplayList(oGfxCtx->overlay.p++, D_0404D450);
                        Matrix_Pull();
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
    if ((actor != NULL) && !(actor->flags & 0x8000000)) {
        NaviColor* naviColor = &sNaviColorList[actor->type];

        oGfxCtx->polyXlu.p = Gfx_CallSetupDL(oGfxCtx->polyXlu.p, 0x7);

        Matrix_Translate(actor->posRot2.pos.x, actor->posRot2.pos.y + (actor->unk_4C * actor->scale.y) + 17.0f,
                         actor->posRot2.pos.z, MTXMODE_NEW);
        Matrix_RotateY((f32)((u16)(globalCtx->gameplayFrames * 3000)) * (M_PI / 32768), MTXMODE_APPLY);
        Matrix_Scale((iREG(27) + 35) / 1000.0f, (iREG(28) + 60) / 1000.0f, (iREG(29) + 50) / 1000.0f, MTXMODE_APPLY);

        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, naviColor->inner.r, naviColor->inner.g, naviColor->inner.b, 255);
        gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_actor.c", 2153),
                  G_MTX_MODELVIEW | G_MTX_LOAD);
        gSPDisplayList(oGfxCtx->polyXlu.p++, &D_0400CB70);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 2158);
}

void func_8002C7BC(TargetContext* targetCtx, Player* player, Actor* actorArg, GlobalContext* globalCtx) {
    s32 pad;
    Actor* unkActor;
    s32 actorType;
    Vec3f sp50;
    f32 sp4C;
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
        func_80032AF0(globalCtx, &globalCtx->actorCtx, &unkActor, player);
        targetCtx->unk_94 = unkActor;
    }

    if (targetCtx->unk_8C != NULL) {
        unkActor = targetCtx->unk_8C;
        targetCtx->unk_8C = NULL;
    } else if (actorArg != NULL) {
        unkActor = actorArg;
    }

    if (unkActor != NULL) {
        actorType = unkActor->type;
    } else {
        actorType = player->actor.type;
    }

    if ((unkActor != targetCtx->arrowPointedActor) || (actorType != targetCtx->activeType)) {
        targetCtx->arrowPointedActor = unkActor;
        targetCtx->activeType = actorType;
        targetCtx->unk_40 = 1.0f;
    }

    if (unkActor == NULL) {
        unkActor = &player->actor;
    }

    if (Math_ApproxF(&targetCtx->unk_40, 0.0f, 0.25f) == 0) {
        temp1 = 0.25f / targetCtx->unk_40;
        temp2 = unkActor->posRot.pos.x - targetCtx->naviRefPos.x;
        temp3 = (unkActor->posRot.pos.y + (unkActor->unk_4C * unkActor->scale.y)) - targetCtx->naviRefPos.y;
        temp4 = unkActor->posRot.pos.z - targetCtx->naviRefPos.z;
        targetCtx->naviRefPos.x += temp2 * temp1;
        targetCtx->naviRefPos.y += temp3 * temp1;
        targetCtx->naviRefPos.z += temp4 * temp1;
    } else {
        func_8002BF60(targetCtx, unkActor, actorType, globalCtx);
    }

    if ((actorArg != NULL) && (targetCtx->unk_4B == 0)) {
        func_8002BE04(globalCtx, &actorArg->posRot2.pos, &sp50, &sp4C);
        if (((sp50.z <= 0.0f) || (1.0f <= fabsf(sp50.x * sp4C))) || (1.0f <= fabsf(sp50.y * sp4C))) {
            actorArg = NULL;
        }
    }

    if (actorArg != NULL) {
        if (actorArg != targetCtx->targetedActor) {
            func_8002BE98(targetCtx, actorArg->type, globalCtx);
            targetCtx->targetedActor = actorArg;

            if (actorArg->id == ACTOR_EN_BOOM) {
                targetCtx->unk_48 = 0;
            }

            lockOnSfxId = ((actorArg->flags & 5) == 5) ? NA_SE_SY_LOCK_ON : NA_SE_SY_LOCK_ON_HUMAN;
            func_80078884(lockOnSfxId);
        }

        targetCtx->targetCenterPos.x = actorArg->posRot.pos.x;
        targetCtx->targetCenterPos.y = actorArg->posRot.pos.y - (actorArg->shape.unk_08 * actorArg->scale.y);
        targetCtx->targetCenterPos.z = actorArg->posRot.pos.z;

        if (targetCtx->unk_4B == 0) {
            temp5 = (500.0f - targetCtx->unk_44) * 3.0f;
            temp6 = (temp5 < 30.0f) ? 30.0f : ((100.0f < temp5) ? 100.0f : temp5);
            if (Math_ApproxF(&targetCtx->unk_44, 80.0f, temp6) != 0) {
                targetCtx->unk_4B++;
            }
        } else {
            targetCtx->unk_4B = (targetCtx->unk_4B + 3) | 0x80;
            targetCtx->unk_44 = 120.0f;
        }
    } else {
        targetCtx->targetedActor = NULL;
        Math_ApproxF(&targetCtx->unk_44, 500.0f, 80.0f);
    }
}

/**
 * Tests if current scene switch flag is set.
 */
s32 Flags_GetSwitch(GlobalContext* globalCtx, s32 flag) {
    if (flag < 0x20) {
        return globalCtx->actorCtx.flags.swch & (1 << flag);
    } else {
        return globalCtx->actorCtx.flags.tempSwch & (1 << flag);
    }
}

/**
 * Sets current scene switch flag.
 */
void Flags_SetSwitch(GlobalContext* globalCtx, s32 flag) {
    if (flag < 0x20) {
        globalCtx->actorCtx.flags.swch |= (1 << flag);
    } else {
        globalCtx->actorCtx.flags.tempSwch |= (1 << flag);
    }
}

/**
 * Unsets current scene switch flag.
 */
void Flags_UnsetSwitch(GlobalContext* globalCtx, s32 flag) {
    if (flag < 0x20) {
        globalCtx->actorCtx.flags.swch &= ~(1 << flag);
    } else {
        globalCtx->actorCtx.flags.tempSwch &= ~(1 << flag);
    }
}

/**
 * Tests if current scene unknown flag is set.
 */
s32 Flags_GetUnknown(GlobalContext* globalCtx, s32 flag) {
    if (flag < 0x20) {
        return globalCtx->actorCtx.flags.unk0 & (1 << flag);
    } else {
        return globalCtx->actorCtx.flags.unk1 & (1 << flag);
    }
}

/**
 * Sets current scene unknown flag.
 */
void Flags_SetUnknown(GlobalContext* globalCtx, s32 flag) {
    if (flag < 0x20) {
        globalCtx->actorCtx.flags.unk0 |= (1 << flag);
    } else {
        globalCtx->actorCtx.flags.unk1 |= (1 << flag);
    }
}

/**
 * Unsets current scene unknown flag.
 */
void Flags_UnsetUnknown(GlobalContext* globalCtx, s32 flag) {
    if (flag < 0x20) {
        globalCtx->actorCtx.flags.unk0 &= ~(1 << flag);
    } else {
        globalCtx->actorCtx.flags.unk1 &= ~(1 << flag);
    }
}

/**
 * Tests if current scene chest flag is set.
 */
s32 Flags_GetTreasure(GlobalContext* globalCtx, s32 flag) {
    return globalCtx->actorCtx.flags.chest & (1 << flag);
}

/**
 * Sets current scene chest flag.
 */
void Flags_SetTreasure(GlobalContext* globalCtx, s32 flag) {
    globalCtx->actorCtx.flags.chest |= (1 << flag);
}

/**
 * Tests if current scene clear flag is set.
 */
s32 Flags_GetClear(GlobalContext* globalCtx, s32 flag) {
    return globalCtx->actorCtx.flags.clear & (1 << flag);
}

/**
 * Sets current scene clear flag.
 */
void Flags_SetClear(GlobalContext* globalCtx, s32 flag) {
    globalCtx->actorCtx.flags.clear |= (1 << flag);
}

/**
 * Unsets current scene clear flag.
 */
void Flags_UnsetClear(GlobalContext* globalCtx, s32 flag) {
    globalCtx->actorCtx.flags.clear &= ~(1 << flag);
}

/**
 * Tests if current scene temp clear flag is set.
 */
s32 Flags_GetTempClear(GlobalContext* globalCtx, s32 flag) {
    return globalCtx->actorCtx.flags.tempClear & (1 << flag);
}

/**
 * Sets current scene temp clear flag.
 */
void Flags_SetTempClear(GlobalContext* globalCtx, s32 flag) {
    globalCtx->actorCtx.flags.tempClear |= 1 << flag;
}

/**
 * Unsets current scene temp clear flag.
 */
void Flags_UnsetTempClear(GlobalContext* globalCtx, s32 flag) {
    globalCtx->actorCtx.flags.tempClear &= ~(1 << flag);
}

/**
 * Tests if current scene collectible flag is set.
 */
s32 Flags_GetCollectible(GlobalContext* globalCtx, s32 flag) {
    if (flag < 0x20) {
        return globalCtx->actorCtx.flags.collect & (1 << flag);
    } else {
        return globalCtx->actorCtx.flags.tempCollect & (1 << flag);
    }
}

/**
 * Sets current scene collectible flag.
 */
void Flags_SetCollectible(GlobalContext* globalCtx, s32 flag) {
    if (flag != 0) {
        if (flag < 0x20) {
            globalCtx->actorCtx.flags.collect |= 1 << flag;
        } else {
            globalCtx->actorCtx.flags.tempCollect |= 1 << flag;
        }
    }
}

void func_8002CDE4(GlobalContext* globalCtx, TitleCardContext* titleCtx) {
    titleCtx->delayA = titleCtx->delayB = titleCtx->unk_E = titleCtx->unk_C = 0;
}

void TitleCard_InitBossName(GlobalContext* globalCtx, TitleCardContext* titleCtx, void* texture, s16 arg3, s16 arg4,
                            u8 arg5, u8 arg6) {
    titleCtx->texture = texture;
    titleCtx->unk_4 = arg3;
    titleCtx->unk_6 = arg4;
    titleCtx->unk_8 = arg5;
    titleCtx->unk_9 = arg6;
    titleCtx->delayA = 80;
    titleCtx->delayB = 0;
}

void TitleCard_InitPlaceName(GlobalContext* globalCtx, TitleCardContext* titleCtx, void* texture, s32 arg3, s32 arg4,
                             s32 arg5, s32 arg6, s32 arg7) {
    Scene* loadedScene = globalCtx->loadedScene;
    u32 size = loadedScene->titleFile.vromEnd - loadedScene->titleFile.vromStart;

    if ((size != 0) && (size <= 0x3000)) {
        DmaMgr_SendRequest1(texture, loadedScene->titleFile.vromStart, size, "../z_actor.c", 2765);
    }

    titleCtx->texture = texture;
    titleCtx->unk_4 = arg3;
    titleCtx->unk_6 = arg4;
    titleCtx->unk_8 = arg5;
    titleCtx->unk_9 = arg6;
    titleCtx->delayA = 80;
    titleCtx->delayB = arg7;
}

void TitleCard_Update(GlobalContext* globalCtx, TitleCardContext* titleCtx) {
    if (DECR(titleCtx->delayB) == 0) {
        if (DECR(titleCtx->delayA) == 0) {
            Math_ApproxS(&titleCtx->unk_C, 0, 30);
            Math_ApproxS(&titleCtx->unk_E, 0, 70);
        } else {
            Math_ApproxS(&titleCtx->unk_C, 255, 10);
            Math_ApproxS(&titleCtx->unk_E, 255, 20);
        }
    }
}

void TitleCard_Draw(GlobalContext* globalCtx, TitleCardContext* titleCtx) {
    s32 spCC;
    s32 spC8;
    s32 unk1;
    s32 spC0;
    s32 sp38;
    s32 spB8;
    s32 spB4;
    s32 spB0;

    if (titleCtx->unk_C != 0) {
        spCC = titleCtx->unk_8;
        spC8 = titleCtx->unk_9;
        spC0 = (titleCtx->unk_4 * 4) - (spCC * 2);
        spB8 = (titleCtx->unk_6 * 4) - (spC8 * 2);
        sp38 = spCC * 2;

        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 2824);

        spB0 = spCC * spC8 * gSaveContext.language;
        spC8 = (spCC * spC8 > 0x1000) ? 0x1000 / spCC : spC8;
        spB4 = spB8 + (spC8 * 4);

        if (1) {} // Necessary to match

        oGfxCtx->overlay.p = func_80093808(oGfxCtx->overlay.p);

        gDPSetPrimColor(oGfxCtx->overlay.p++, 0, 0, (u8)titleCtx->unk_E, (u8)titleCtx->unk_E, (u8)titleCtx->unk_E,
                        (u8)titleCtx->unk_C);

        gDPLoadTextureBlock(oGfxCtx->overlay.p++, titleCtx->texture + spB0, G_IM_FMT_IA, G_IM_SIZ_8b, spCC, spC8, 0,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                            G_TX_NOLOD);

        gSPTextureRectangle(oGfxCtx->overlay.p++, spC0, spB8, ((sp38 * 2) + spC0) - 4, spB8 + (spC8 * 4) - 1,
                            G_TX_RENDERTILE, 0, 0, 1024, 1024);

        spC8 = titleCtx->unk_9 - spC8;

        if (spC8 > 0) {
            gDPLoadTextureBlock(oGfxCtx->overlay.p++, titleCtx->texture + spB0 + 0x1000, G_IM_FMT_IA, G_IM_SIZ_8b, spCC,
                                spC8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                G_TX_NOLOD, G_TX_NOLOD);

            gSPTextureRectangle(oGfxCtx->overlay.p++, spC0, spB4, ((sp38 * 2) + spC0) - 4, spB4 + (spC8 * 4) - 1,
                                G_TX_RENDERTILE, 0, 0, 1024, 1024);
        }

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 2880);
    }
}

s32 func_8002D53C(GlobalContext* globalCtx, TitleCardContext* titleCtx) {
    if ((globalCtx->actorCtx.titleCtx.delayB != 0) || (globalCtx->actorCtx.titleCtx.unk_C != 0)) {
        titleCtx->delayA = 0;
        titleCtx->delayB = 0;
        return 0;
    }

    return 1;
}

void Actor_Kill(Actor* actor) {
    actor->draw = NULL;
    actor->update = NULL;
    actor->flags &= ~0x1;
}

void Actor_InitPosRot(Actor* actor) {
    actor->posRot = actor->initPosRot;
}

void Actor_SetHeight(Actor* actor, f32 offset) {
    actor->posRot2.pos.x = actor->posRot.pos.x;
    actor->posRot2.pos.y = actor->posRot.pos.y + offset;
    actor->posRot2.pos.z = actor->posRot.pos.z;

    actor->posRot2.rot.x = actor->posRot.rot.x;
    actor->posRot2.rot.y = actor->posRot.rot.y;
    actor->posRot2.rot.z = actor->posRot.rot.z;
}

void func_8002D5F4(Actor* actor) {
    actor->posRot.rot = actor->shape.rot;
}

void func_8002D610(Actor* actor) {
    actor->shape.rot = actor->posRot.rot;
}

void Actor_SetScale(Actor* actor, f32 scale) {
    actor->scale.z = scale;
    actor->scale.y = scale;
    actor->scale.x = scale;
}

void Actor_SetObjectDependency(GlobalContext* globalCtx, Actor* actor) {
    gSegments[6] = VIRTUAL_TO_PHYSICAL(globalCtx->objectCtx.status[actor->objBankIndex].segment);
}

void Actor_Init(Actor* actor, GlobalContext* globalCtx) {
    Actor_InitPosRot(actor);
    func_8002D610(actor);
    Actor_SetHeight(actor, 0.0f);
    Math_Vec3f_Copy(&actor->pos4, &actor->posRot.pos);
    Actor_SetScale(actor, 0.01f);
    actor->unk_1F = 3;
    actor->minVelocityY = -20.0f;
    actor->xyzDistFromLinkSq = FLT_MAX;
    actor->naviEnemyId = 0xFF;
    actor->uncullZoneForward = 1000.0f;
    actor->uncullZoneScale = 350.0f;
    actor->uncullZoneDownward = 700.0f;
    func_80061E48(&actor->colChkInfo);
    actor->floorPolySource = 0x32;
    ActorShape_Init(&actor->shape, 0.0f, NULL, 0.0f);
    if (Object_IsLoaded(&globalCtx->objectCtx, actor->objBankIndex)) {
        Actor_SetObjectDependency(globalCtx, actor);
        actor->init(actor, globalCtx);
        actor->init = NULL;
    }
}

void Actor_Destroy(Actor* actor, GlobalContext* globalCtx) {
    ActorOverlay* overlayEntry;
    char* name;

    if (actor->destroy != NULL) {
        actor->destroy(actor, globalCtx);
        actor->destroy = NULL;
    } else {
        overlayEntry = actor->overlayEntry;
        name = overlayEntry->name != NULL ? overlayEntry->name : "";

        // Translates to: "NO Actor CLASS DESTRUCT [%s]"
        osSyncPrintf("Ａｃｔｏｒクラス デストラクトがありません [%s]\n" VT_RST, name);
    }
}

void func_8002D7EC(Actor* actor) {
    f32 speedRate = R_UPDATE_RATE * 0.5f;
    actor->posRot.pos.x += (actor->velocity.x * speedRate) + actor->colChkInfo.displacement.x;
    actor->posRot.pos.y += (actor->velocity.y * speedRate) + actor->colChkInfo.displacement.y;
    actor->posRot.pos.z += (actor->velocity.z * speedRate) + actor->colChkInfo.displacement.z;
}

void func_8002D868(Actor* actor) {
    actor->velocity.x = Math_Sins(actor->posRot.rot.y) * actor->speedXZ;
    actor->velocity.z = Math_Coss(actor->posRot.rot.y) * actor->speedXZ;

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
    f32 sp24 = Math_Coss(actor->posRot.rot.x) * actor->speedXZ;
    actor->velocity.x = Math_Sins(actor->posRot.rot.y) * sp24;
    actor->velocity.y = Math_Sins(actor->posRot.rot.x) * actor->speedXZ;
    actor->velocity.z = Math_Coss(actor->posRot.rot.y) * sp24;
}

void func_8002D97C(Actor* actor) {
    func_8002D908(actor);
    func_8002D7EC(actor);
}

void func_8002D9A4(Actor* actor, f32 arg1) {
    actor->speedXZ = Math_Coss(actor->posRot.rot.x) * arg1;
    actor->velocity.y = -Math_Sins(actor->posRot.rot.x) * arg1;
}

void func_8002D9F8(Actor* actor, SkelAnime* skelAnime) {
    Vec3f sp1C;
    func_800A54FC(skelAnime, &sp1C, actor->shape.rot.y);
    actor->posRot.pos.x += sp1C.x * actor->scale.x;
    actor->posRot.pos.y += sp1C.y * actor->scale.y;
    actor->posRot.pos.z += sp1C.z * actor->scale.z;
}

s16 func_8002DA78(Actor* actorA, Actor* actorB) {
    return Math_Vec3f_Yaw(&actorA->posRot.pos, &actorB->posRot.pos);
}

s16 func_8002DA9C(Actor* actorA, Actor* actorB) {
    return Math_Vec3f_Yaw(&actorA->posRot2.pos, &actorB->posRot2.pos);
}

s16 func_8002DAC0(Actor* actor, Vec3f* arg1) {
    return Math_Vec3f_Yaw(&actor->posRot.pos, arg1);
}

s16 func_8002DAE0(Actor* actorA, Actor* actorB) {
    return Math_Vec3f_Pitch(&actorA->posRot.pos, &actorB->posRot.pos);
}

s16 func_8002DB04(Actor* actorA, Actor* actorB) {
    return Math_Vec3f_Pitch(&actorA->posRot2.pos, &actorB->posRot2.pos);
}

s16 func_8002DB28(Actor* actor, Vec3f* arg1) {
    return Math_Vec3f_Pitch(&actor->posRot.pos, arg1);
}

f32 func_8002DB48(Actor* actorA, Actor* actorB) {
    return Math_Vec3f_DistXYZ(&actorA->posRot.pos, &actorB->posRot.pos);
}

f32 func_8002DB6C(Actor* actor, Vec3f* arg1) {
    return Math_Vec3f_DistXYZ(&actor->posRot.pos, arg1);
}

f32 func_8002DB8C(Actor* actorA, Actor* actorB) {
    return Math_Vec3f_DistXZ(&actorA->posRot.pos, &actorB->posRot.pos);
}

f32 func_8002DBB0(Actor* actor, Vec3f* arg1) {
    return Math_Vec3f_DistXZ(&actor->posRot.pos, arg1);
}

void func_8002DBD0(Actor* actor, Vec3f* result, Vec3f* arg2) {
    f32 cosRot2Y;
    f32 sinRot2Y;
    f32 deltaX;
    f32 deltaZ;

    cosRot2Y = Math_Coss(actor->shape.rot.y);
    sinRot2Y = Math_Sins(actor->shape.rot.y);
    deltaX = arg2->x - actor->posRot.pos.x;
    deltaZ = arg2->z - actor->posRot.pos.z;

    result->x = (deltaX * cosRot2Y) - (deltaZ * sinRot2Y);
    result->z = (deltaX * sinRot2Y) + (deltaZ * cosRot2Y);
    result->y = arg2->y - actor->posRot.pos.y;
}

f32 Actor_HeightDiff(Actor* actorA, Actor* actorB) {
    return actorB->posRot.pos.y - actorA->posRot.pos.y;
}

f32 Player_GetCameraYOffset(Player* player) {
    f32 offset = (player->stateFlags1 & 0x800000) ? 32.0f : 0.0f;

    if (LINK_IS_ADULT) {
        return offset + 68.0f;
    } else {
        return offset + 44.0f;
    }
}

f32 func_8002DCE4(Player* player) {
    if (player->stateFlags1 & 0x800000) {
        return 8.0f;
    } else if (player->stateFlags1 & 0x8000000) {
        return (R_RUN_SPEED_LIMIT / 100.0f) * 0.6f;
    } else {
        return R_RUN_SPEED_LIMIT / 100.0f;
    }
}

s32 func_8002DD6C(Player* player) {
    return player->stateFlags1 & 0x8;
}

s32 func_8002DD78(Player* player) {
    return func_8002DD6C(player) && player->unk_834;
}

s32 func_8002DDA8(GlobalContext* globalCtx) {
    Player* player = PLAYER;

    return (player->stateFlags1 & 0x800) || func_8002DD78(player);
}

s32 func_8002DDE4(GlobalContext* globalCtx) {
    Player* player = PLAYER;

    return player->stateFlags2 & 0x8;
}

s32 func_8002DDF4(GlobalContext* globalCtx) {
    Player* player = PLAYER;

    return player->stateFlags2 & 0x1000;
}

void func_8002DE04(GlobalContext* globalCtx, Actor* actorA, Actor* actorB) {
    ArmsHook* hookshot;

    hookshot = (ArmsHook*)Actor_Find(&globalCtx->actorCtx, ACTOR_ARMS_HOOK, ACTORTYPE_ITEMACTION);
    hookshot->grabbed = actorB;
    hookshot->grabbedDistDiff.x = 0.0f;
    hookshot->grabbedDistDiff.y = 0.0f;
    hookshot->grabbedDistDiff.z = 0.0f;
    actorB->flags |= 0x2000;
    actorA->flags &= ~0x2000;
}

void func_8002DE74(GlobalContext* globalCtx, Player* player) {
    if ((globalCtx->roomCtx.curRoom.unk_03 != 4) && func_800C0CB8(globalCtx)) {
        func_8005A77C(Gameplay_GetCamera(globalCtx, 0), 6);
    }
}

void func_8002DECC(GlobalContext* globalCtx, Player* player, Actor* horse) {
    player->rideActor = horse;
    player->stateFlags1 |= 0x800000;
    horse->child = &player->actor;
}

s32 func_8002DEEC(Player* player) {
    return (player->stateFlags1 & 0x20000080) || (player->csMode != 0);
}

void func_8002DF18(GlobalContext* globalCtx, Player* player) {
    func_8006DC68(globalCtx, player);
}

s32 func_8002DF38(GlobalContext* globalCtx, Actor* actor, u8 csMode) {
    Player* player = PLAYER;

    player->csMode = csMode;
    player->unk_448 = actor;
    player->unk_46A = 0;

    return 1;
}

s32 func_8002DF54(GlobalContext* globalCtx, Actor* actor, u8 csMode) {
    Player* player = PLAYER;

    func_8002DF38(globalCtx, actor, csMode);
    player->unk_46A = 1;

    return 1;
}

void func_8002DF90(DynaPolyActor* dynaActor) {
    dynaActor->unk_154 = 0.0f;
    dynaActor->unk_150 = 0.0f;
}

void func_8002DFA4(DynaPolyActor* dynaActor, f32 arg1, s16 arg2) {
    dynaActor->unk_150 += arg1;
    dynaActor->unk_158 = arg2;
}

s32 func_8002DFC8(Actor* actor, s16 arg1, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 var = (s16)(actor->yawTowardsLink + 0x8000) - player->actor.shape.rot.y;

    if (ABS(var) < arg1) {
        return 1;
    }

    return 0;
}

s32 func_8002E020(Actor* actorA, Actor* actorB, s16 arg2) {
    s16 var = (s16)(func_8002DA78(actorA, actorB) + 0x8000) - actorB->shape.rot.y;

    if (ABS(var) < arg2) {
        return 1;
    }

    return 0;
}

s32 func_8002E084(Actor* actor, s16 arg1) {
    s16 var = actor->yawTowardsLink - actor->shape.rot.y;

    if (ABS(var) < arg1) {
        return 1;
    }

    return 0;
}

s32 func_8002E0D0(Actor* actorA, Actor* actorB, s16 arg2) {
    s16 var = func_8002DA78(actorA, actorB) - actorA->shape.rot.y;

    if (ABS(var) < arg2) {
        return 1;
    }

    return 0;
}

s32 func_8002E12C(Actor* actor, f32 arg1, s16 arg2) {
    s16 var = actor->yawTowardsLink - actor->shape.rot.y;

    if (ABS(var) < arg2) {
        f32 xyzDistanceFromLink = sqrtf(SQ(actor->xzDistFromLink) + SQ(actor->yDistFromLink));

        if (xyzDistanceFromLink < arg1) {
            return 1;
        }
    }

    return 0;
}

s32 func_8002E1A8(Actor* actorA, Actor* actorB, f32 arg2, s16 arg3) {
    if (func_8002DB48(actorA, actorB) < arg2) {
        s16 var = func_8002DA78(actorA, actorB) - actorA->shape.rot.y;

        if (ABS(var) < arg3) {
            return 1;
        }
    }

    return 0;
}

s32 func_8002E234(Actor* actor, f32 arg1, s32 arg2) {
    if ((actor->bgCheckFlags & 0x1) && (arg1 < -11.0f)) {
        actor->bgCheckFlags &= ~0x1;
        actor->bgCheckFlags |= 0x4;

        if ((actor->velocity.y < 0.0f) && (arg2 & 0x10)) {
            actor->velocity.y = 0.0f;
        }

        return 0;
    }

    return 1;
}

UNK_TYPE D_8015BBA0;
u32 D_8015BBA4;

s32 func_8002E2AC(GlobalContext* globalCtx, Actor* actor, Vec3f* arg2, s32 arg3) {
    f32 sp34;
    u32 sp30;

    arg2->y += 50.0f;

    actor->groundY = func_8003CA0C(globalCtx, &globalCtx->colCtx, &actor->floorPoly, &sp30, actor, arg2);
    actor->bgCheckFlags &= ~0x0086;

    if (actor->groundY <= -32000.0f) {
        return func_8002E234(actor, -32000.0f, arg3);
    }

    sp34 = actor->groundY - actor->posRot.pos.y;
    actor->floorPolySource = sp30;

    if (sp34 >= 0.0f) {
        actor->bgCheckFlags |= 0x80;

        if (actor->bgCheckFlags & 0x10) {
            if (sp30 != D_8015BBA4) {
                if (sp34 > 15.0f) {
                    actor->bgCheckFlags |= 0x100;
                }
            } else {
                actor->posRot.pos.x = actor->pos4.x;
                actor->posRot.pos.z = actor->pos4.z;
            }
        }

        actor->posRot.pos.y = actor->groundY;

        if (actor->velocity.y <= 0.0f) {
            if (!(actor->bgCheckFlags & 0x1)) {
                actor->bgCheckFlags |= 0x2;
            } else if ((arg3 & 0x8) && (actor->gravity < 0.0f)) {
                actor->velocity.y = -4.0f;
            } else {
                actor->velocity.y = 0.0f;
            }

            actor->bgCheckFlags |= 0x1;
            func_80043334(&globalCtx->colCtx, actor, actor->floorPolySource);
        }
    } else {
        if ((actor->bgCheckFlags & 0x1) && (sp34 >= -11.0f)) {
            func_80043334(&globalCtx->colCtx, actor, actor->floorPolySource);
        }

        return func_8002E234(actor, sp34, arg3);
    }

    return 1;
}

void func_8002E4B4(GlobalContext* globalCtx, Actor* actor, f32 arg2, f32 arg3, f32 arg4, s32 arg5) {
    f32 sp74;
    s32 pad;
    Vec3f sp64;
    u32 sp60;
    CollisionPoly* sp5C;
    f32 sp58;
    UNK_TYPE sp54;
    f32 sp50;
    Vec3f sp44;

    sp74 = actor->posRot.pos.y - actor->pos4.y;

    if ((actor->floorPolySource != 0x32) && (actor->bgCheckFlags & 1)) {
        func_800433A4(&globalCtx->colCtx, actor->floorPolySource, actor);
    }

    if (arg5 & 1) {
        if ((!(arg5 & 0x80) && func_8003D52C(&globalCtx->colCtx, &sp64, &actor->posRot.pos, &actor->pos4, arg3,
                                             &actor->wallPoly, &sp60, actor, arg2)) ||
            ((arg5 & 0x80) && func_8003D594(&globalCtx->colCtx, &sp64, &actor->posRot.pos, &actor->pos4, arg3,
                                            &actor->wallPoly, &sp60, actor, arg2))) {
            sp5C = actor->wallPoly;
            Math_Vec3f_Copy(&actor->posRot.pos, &sp64);
            actor->wallPolyRot = atan2s(sp5C->norm.z, sp5C->norm.x);
            actor->bgCheckFlags |= 8;
            actor->wallPolySource = sp60;
        } else {
            actor->bgCheckFlags &= ~8;
        }
    }

    sp64.x = actor->posRot.pos.x;
    sp64.z = actor->posRot.pos.z;

    if (arg5 & 2) {
        sp64.y = actor->pos4.y + 10.0f;
        if (func_8003D7A0(&globalCtx->colCtx, &sp58, &sp64, (arg4 + sp74) - 10.0f, &D_8015BBA0, &D_8015BBA4, actor)) {
            actor->bgCheckFlags |= 0x10;
            actor->posRot.pos.y = (sp58 + sp74) - 10.0f;
        } else {
            actor->bgCheckFlags &= ~0x10;
        }
    }

    if (arg5 & 4) {
        sp64.y = actor->pos4.y;
        func_8002E2AC(globalCtx, actor, &sp64, arg5);
        sp50 = actor->posRot.pos.y;
        if (func_8004213C(globalCtx, &globalCtx->colCtx, actor->posRot.pos.x, actor->posRot.pos.z, &sp50, &sp54)) {
            actor->waterY = sp50 - actor->posRot.pos.y;
            if (actor->waterY < 0.0f) {
                actor->bgCheckFlags &= ~0x60;
            } else {
                if (!(actor->bgCheckFlags & 0x20)) {
                    actor->bgCheckFlags |= 0x40;
                    if (!(arg5 & 0x40)) {
                        sp44.x = actor->posRot.pos.x;
                        sp44.y = sp50;
                        sp44.z = actor->posRot.pos.z;
                        func_80029444(globalCtx, &sp44, 100, 500, 0);
                        func_80029444(globalCtx, &sp44, 100, 500, 4);
                        func_80029444(globalCtx, &sp44, 100, 500, 8);
                    }
                }
                actor->bgCheckFlags |= 0x20;
            }
        } else {
            actor->bgCheckFlags &= ~0x60;
            actor->waterY = -32000.0f;
        }
    }
}

s32 D_8015BBA8[16];

Gfx* func_8002E830(Vec3f* object, Vec3f* eye, Vec3f* lightDir, GraphicsContext* gfxCtx, Gfx* gfx, Hilite** hilite) {
    Gfx* lookAt;
    f32 correctedEyeX;

    lookAt = Graph_Alloc(gfxCtx, 4 * sizeof(Gfx));

    correctedEyeX = (eye->x == object->x) && (eye->z == object->z) ? eye->x + 0.001f : eye->x;

    *hilite = Graph_Alloc(gfxCtx, sizeof(Hilite));

    if (HREG(80) == 6) {
        osSyncPrintf("z_actor.c 3529 eye=[%f(%f) %f %f] object=[%f %f %f] light_direction=[%f %f %f]\n",
                     (f64)correctedEyeX, (f64)eye->x, (f64)eye->y, (f64)eye->z, (f64)object->x, (f64)object->y,
                     (f64)object->z, (f64)lightDir->x, (f64)lightDir->y, (f64)lightDir->z);
    }

    func_800ABE74(correctedEyeX, eye->y, eye->z);
    guLookAtHilite(&D_8015BBA8, lookAt, *hilite, correctedEyeX, eye->y, eye->z, object->x, object->y, object->z, 0.0f,
                   1.0f, 0.0f, lightDir->x, lightDir->y, lightDir->z, lightDir->x, lightDir->y, lightDir->z, 0x10,
                   0x10);

    gSPLookAt(gfx++, lookAt);
    gDPSetHilite1Tile(gfx++, 1, *hilite, 0x10, 0x10);

    return gfx;
}

Hilite* func_8002EABC(Vec3f* object, Vec3f* eye, Vec3f* lightDir, GraphicsContext* gfxCtx) {
    Hilite* hilite;

    OPEN_DISPS(gfxCtx, "../z_actor.c", 4306);

    oGfxCtx->polyOpa.p = func_8002E830(object, eye, lightDir, gfxCtx, oGfxCtx->polyOpa.p, &hilite);

    CLOSE_DISPS(gfxCtx, "../z_actor.c", 4313);

    return hilite;
}

Hilite* func_8002EB44(Vec3f* object, Vec3f* eye, Vec3f* lightDir, GraphicsContext* gfxCtx) {
    Hilite* hilite;

    OPEN_DISPS(gfxCtx, "../z_actor.c", 4332);

    oGfxCtx->polyXlu.p = func_8002E830(object, eye, lightDir, gfxCtx, oGfxCtx->polyXlu.p, &hilite);

    CLOSE_DISPS(gfxCtx, "../z_actor.c", 4339);

    return hilite;
}

void func_8002EBCC(Actor* actor, GlobalContext* globalCtx, s32 flag) {
    Hilite* hilite;
    Vec3f lightDir;
    Gfx* displayListHead;
    Gfx* displayList;

    lightDir.x = globalCtx->envCtx.unk_2A;
    lightDir.y = globalCtx->envCtx.unk_2B;
    lightDir.z = globalCtx->envCtx.unk_2C;

    if (HREG(80) == 6) {
        osSyncPrintf("z_actor.c 3637 game_play->view.eye=[%f(%f) %f %f]\n", (f64)globalCtx->view.eye.x,
                     (f64)globalCtx->view.eye.y, (f64)globalCtx->view.eye.z);
    }

    hilite = func_8002EABC(&actor->posRot.pos, &globalCtx->view.eye, &lightDir, globalCtx->state.gfxCtx);

    if (flag != 0) {
        displayList = Graph_Alloc(globalCtx->state.gfxCtx, 2 * sizeof(Gfx));
        displayListHead = displayList;

        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 4384);

        gDPSetHilite1Tile(displayListHead++, 1, hilite, 0x10, 0x10);
        gSPEndDisplayList(displayListHead);
        gSPSegment(oGfxCtx->polyOpa.p++, 0x07, displayList);

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 4394);
    }
}

void func_8002ED80(Actor* actor, GlobalContext* globalCtx, s32 flag) {
    Hilite* hilite;
    Vec3f lightDir;
    Gfx* displayListHead;
    Gfx* displayList;

    lightDir.x = globalCtx->envCtx.unk_2A;
    lightDir.y = globalCtx->envCtx.unk_2B;
    lightDir.z = globalCtx->envCtx.unk_2C;

    hilite = func_8002EB44(&actor->posRot.pos, &globalCtx->view.eye, &lightDir, globalCtx->state.gfxCtx);

    if (flag != 0) {
        displayList = Graph_Alloc(globalCtx->state.gfxCtx, 2 * sizeof(Gfx));
        displayListHead = displayList;

        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 4429);

        gDPSetHilite1Tile(displayListHead++, 1, hilite, 0x10, 0x10);
        gSPEndDisplayList(displayListHead);
        gSPSegment(oGfxCtx->polyXlu.p++, 0x07, displayList);

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 4439);
    }
}

PosRot* func_8002EEE4(PosRot* arg0, Actor* actor) {
    *arg0 = actor->posRot2;

    return arg0;
}

PosRot* func_8002EF14(PosRot* arg0, Actor* actor) {
    *arg0 = actor->posRot;

    return arg0;
}

PosRot* func_8002EF44(PosRot* arg0, Actor* actor) {
    PosRot sp1C;

    Math_Vec3f_Copy(&sp1C.pos, &actor->posRot.pos);
    sp1C.rot = actor->shape.rot;
    *arg0 = sp1C;

    return arg0;
}

f32 func_8002EFC0(Actor* actor, Player* player, s16 arg2) {
    s16 yawTemp;
    s16 yawTempAbs;
    f32 ret;

    yawTemp = (s16)(actor->yawTowardsLink - 0x8000) - arg2;
    yawTempAbs = ABS(yawTemp);

    if (player->unk_664 != NULL) {
        if ((yawTempAbs > 0x4000) || (actor->flags & 0x8000000)) {
            return FLT_MAX;
        } else {
            ret = actor->xyzDistFromLinkSq -
                  actor->xyzDistFromLinkSq * 0.8f * ((0x4000 - yawTempAbs) * 3.0517578125e-05f);
            return ret;
        }
    }

    if (yawTempAbs > 0x2AAA) {
        return FLT_MAX;
    }

    return actor->xyzDistFromLinkSq;
}

typedef struct {
    f32 unk_0, unk_4;
} struct_80115FF8; // size = 0x8

struct_80115FF8 D_80115FF8[] = {
    { 4900.0f, 0.5f },         { 28900.0f, 0.6666667f },   { 78400.0f, 0.05f },       { 122500.0f, 0.6666667f },
    { 490000.0f, 0.6666667f }, { 1000000.0f, 0.6666667f }, { 10000.0f, 0.94905096f }, { 19600.0f, 0.85714287f },
    { 57600.0f, 0.41666666f }, { 78400.0f, 0.001f },
};

u32 func_8002F090(Actor* actor, f32 arg1) {
    return arg1 < D_80115FF8[actor->unk_1F].unk_0;
}

s32 func_8002F0C8(Actor* actor, Player* player, s32 flag) {
    s16 var;
    s16 abs_var;
    f32 dist;

    if ((actor->update == NULL) || !(actor->flags & 1)) {
        return 1;
    }

    if (!flag) {
        var = (s16)(actor->yawTowardsLink - 0x8000) - player->actor.shape.rot.y;
        abs_var = ABS(var);

        if ((player->unk_664 == NULL) && (abs_var > 0x2AAA)) {
            dist = FLT_MAX;
        } else {
            dist = actor->xyzDistFromLinkSq;
        }

        return !func_8002F090(actor, D_80115FF8[actor->unk_1F].unk_4 * dist);
    }

    return 0;
}

u32 func_8002F194(Actor* actor, GlobalContext* globalCtx) {
    if (actor->flags & 0x100) {
        actor->flags &= ~0x100;
        return 1;
    }

    return 0;
}

s32 func_8002F1C4(Actor* actor, GlobalContext* globalCtx, f32 arg2, f32 arg3, u32 exchangeItemId) {
    Player* player = PLAYER;

    // This is convoluted but it seems like it must be a single if statement to match
    if ((player->actor.flags & 0x100) || ((exchangeItemId != EXCH_ITEM_NONE) && Player_InCsMode(globalCtx)) ||
        ((actor->unk_10C == 0) &&
         ((arg3 < fabsf(actor->yDistFromLink)) || (player->targetActorDistance < actor->xzDistFromLink) ||
          (arg2 < actor->xzDistFromLink)))) {
        return 0;
    }

    player->targetActor = actor;
    player->targetActorDistance = actor->xzDistFromLink;
    player->exchangeItemId = exchangeItemId;

    return 1;
}

s32 func_8002F298(Actor* actor, GlobalContext* globalCtx, f32 arg2, u32 exchangeItemId) {
    return func_8002F1C4(actor, globalCtx, arg2, arg2, exchangeItemId);
}

s32 func_8002F2CC(Actor* actor, GlobalContext* globalCtx, f32 arg2) {
    return func_8002F298(actor, globalCtx, arg2, EXCH_ITEM_NONE);
}

s32 func_8002F2F4(Actor* actor, GlobalContext* globalCtx) {
    f32 var1 = 50.0f + actor->colChkInfo.unk_10;
    return func_8002F2CC(actor, globalCtx, var1);
}

u32 func_8002F334(Actor* actor, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        return 1;
    } else {
        return 0;
    }
}

s8 func_8002F368(GlobalContext* globalCtx) {
    Player* player = PLAYER;

    return player->exchangeItemId;
}

void func_8002F374(GlobalContext* globalCtx, Actor* actor, s16* arg2, s16* arg3) {
    Vec3f sp1C;
    f32 sp18;

    func_8002BE04(globalCtx, &actor->posRot2.pos, &sp1C, &sp18);
    *arg2 = sp1C.x * sp18 * 160.0f + 160.0f;
    *arg3 = sp1C.y * sp18 * -120.0f + 120.0f;
}

u32 Actor_HasParent(Actor* actor, GlobalContext* globalCtx) {
    if (actor->parent != NULL) {
        return true;
    } else {
        return false;
    }
}

s32 func_8002F434(Actor* actor, GlobalContext* globalCtx, s32 getItemId, f32 xzRange, f32 yRange) {
    Player* player = PLAYER;
    s16 yawDiff;
    s32 absYawDiff;

    if (!(player->stateFlags1 & 0x3C7080) && Player_GetExplosiveHeld(player) < 0) {
        if ((((player->heldActor != NULL) || (actor == player->targetActor)) && (getItemId > GI_NONE) &&
             (getItemId < GI_MAX)) ||
            (!(player->stateFlags1 & 0x20000800))) {
            if ((actor->xzDistFromLink < xzRange) && (fabsf(actor->yDistFromLink) < yRange)) {
                yawDiff = actor->yawTowardsLink - player->actor.shape.rot.y;
                absYawDiff = ABS(yawDiff);
                if ((getItemId != GI_NONE) || (player->getItemDirection < absYawDiff)) {
                    player->getItemId = getItemId;
                    player->interactRangeActor = actor;
                    player->getItemDirection = absYawDiff;
                    return 1;
                }
            }
        }
    }

    return 0;
}

void func_8002F554(Actor* actor, GlobalContext* globalCtx, s32 getItemId) {
    func_8002F434(actor, globalCtx, getItemId, 50.0f, 10.0f);
}

void func_8002F580(Actor* actor, GlobalContext* globalCtx) {
    func_8002F554(actor, globalCtx, GI_NONE);
}

u32 Actor_HasNoParent(Actor* actor, GlobalContext* globalCtx) {
    if (actor->parent == NULL) {
        return true;
    } else {
        return false;
    }
}

void func_8002F5C4(Actor* actorA, Actor* actorB, GlobalContext* globalCtx) {
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

void func_8002F5F0(Actor* actor, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (actor->xyzDistFromLinkSq < player->unk_6A4) {
        player->unk_6A4 = actor->xyzDistFromLinkSq;
    }
}

u32 Actor_HasChild(GlobalContext* globalCtx, Actor* actor) {
    if (actor->child != NULL) {
        return true;
    } else {
        return false;
    }
}

u32 func_8002F63C(GlobalContext* globalCtx, Actor* horse, s32 arg2) {
    Player* player = PLAYER;

    if (!(player->stateFlags1 & 0x003C7880)) {
        player->rideActor = horse;
        player->unk_43C = arg2;
        return 1;
    }

    return 0;
}

u32 Actor_HasNoChild(GlobalContext* globalCtx, Actor* actor) {
    if (actor->child == NULL) {
        return true;
    } else {
        return false;
    }
}

void func_8002F698(GlobalContext* globalCtx, Actor* actor, f32 arg2, s16 arg3, f32 arg4, u32 arg5, u32 arg6) {
    Player* player = PLAYER;

    player->unk_8A0 = arg6;
    player->unk_8A1 = arg5;
    player->unk_8A2 = arg3;
    player->unk_8A4 = arg2;
    player->unk_8A8 = arg4;
}

void func_8002F6D4(GlobalContext* globalCtx, Actor* actor, f32 arg2, s16 arg3, f32 arg4, u32 arg5) {
    func_8002F698(globalCtx, actor, arg2, arg3, arg4, 2, arg5);
}

void func_8002F71C(GlobalContext* globalCtx, Actor* actor, f32 arg2, s16 arg3, f32 arg4) {
    func_8002F6D4(globalCtx, actor, arg2, arg3, arg4, 0);
}

void func_8002F758(GlobalContext* globalCtx, Actor* actor, f32 arg2, s16 arg3, f32 arg4, u32 arg5) {
    func_8002F698(globalCtx, actor, arg2, arg3, arg4, 1, arg5);
}

void func_8002F7A0(GlobalContext* globalCtx, Actor* actor, f32 arg2, s16 arg3, f32 arg4) {
    func_8002F758(globalCtx, actor, arg2, arg3, arg4, 0);
}

void func_8002F7DC(Actor* actor, u16 sfxId) {
    Audio_PlaySoundGeneral(sfxId, &actor->projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

void Audio_PlayActorSound2(Actor* actor, u16 sfxId) {
    func_80078914(&actor->projectedPos, sfxId);
}

void func_8002F850(GlobalContext* globalCtx, Actor* actor) {
    s32 sfxId;

    if (actor->bgCheckFlags & 0x20) {
        if (actor->waterY < 20.0f) {
            sfxId = NA_SE_PL_WALK_WATER0 - SFX_FLAG;
        } else {
            sfxId = NA_SE_PL_WALK_WATER1 - SFX_FLAG;
        }
    } else {
        sfxId = func_80041F34(&globalCtx->colCtx, actor->floorPoly, actor->floorPolySource);
    }

    func_80078914(&actor->projectedPos, NA_SE_EV_BOMB_BOUND);
    func_80078914(&actor->projectedPos, sfxId + SFX_FLAG);
}

void func_8002F8F0(Actor* actor, u16 sfxId) {
    actor->sfx = sfxId;
    actor->flags |= 0x80000;
    actor->flags &= ~0x10300000;
}

void func_8002F91C(Actor* actor, u16 sfxId) {
    actor->sfx = sfxId;
    actor->flags |= 0x100000;
    actor->flags &= ~0x10280000;
}

void func_8002F948(Actor* actor, u16 sfxId) {
    actor->sfx = sfxId;
    actor->flags |= 0x200000;
    actor->flags &= ~0x10180000;
}

void func_8002F974(Actor* actor, u16 sfxId) {
    actor->flags &= ~0x10380000;
    actor->sfx = sfxId;
}

void func_8002F994(Actor* actor, s32 arg1) {
    actor->flags |= 0x10000000;
    actor->flags &= ~0x00380000;
    if (arg1 < 40) {
        actor->sfx = NA_SE_PL_WALK_DIRT - SFX_FLAG;
    } else if (arg1 < 100) {
        actor->sfx = NA_SE_PL_WALK_CONCRETE - SFX_FLAG;
    } else {
        actor->sfx = NA_SE_PL_WALK_SAND - SFX_FLAG;
    }
}

s32 func_8002F9EC(GlobalContext* globalCtx, Actor* actor, CollisionPoly* arg2, u32 arg3, Vec3f* arg4) {
    if (func_80041D4C(&globalCtx->colCtx, arg2, arg3) == 8) {
        globalCtx->unk_11D30[0] = 1;
        func_8005DFAC(globalCtx, 0, arg4);
        Audio_PlayActorSound2(actor, NA_SE_IT_WALL_HIT_BUYO);
        return 1;
    }

    return 0;
}

// Local data used for Farore's Wind light (stored in BSS, possibly a struct?)
LightInfo D_8015BC00;
LightNode* D_8015BC10;
s32 D_8015BC14;
f32 D_8015BC18;

void func_8002FA60(GlobalContext* globalCtx) {
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

    D_8015BC10 = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &D_8015BC00);
    D_8015BC14 = 0;
    D_8015BC18 = 0.0f;
}

Vec3f D_80116048 = { 0.0f, -0.05f, 0.0f };
Vec3f D_80116054 = { 0.0f, -0.025f, 0.0f };
Color_RGB8 D_80116060 = { 255, 255, 255 };
Color_RGB8 D_80116064 = { 100, 200, 0 };

#ifdef NON_MATCHING
// saved register, stack usage and minor ordering differences
// this also doesn't generate a few useless struct copies
void func_8002FBAC(GlobalContext* globalCtx) {
    Vec3f lightPos;
    f32 spD8;
    f32 spD4;
    s32 spD0;
    s32 spCC;
    f32 spC0;
    Vec3f spB4;
    Vec3f spA4;
    f32 sp9C;
    Vec3f sp7C;
    Vec3f sp70;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    f32 temp_ret;
    s32 temp_a3;
    f32 phi_f14;
    f32 phi_f10;
    f32 phi_f6;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 5308);

    if (gSaveContext.respawn[RESPAWN_MODE_TOP].data != 0) {
        if (LINK_IS_ADULT) {
            spD8 = 80.0f;
        } else {
            spD8 = 60.0f;
        }

        spD0 = 0xFF;
        spD4 = 1.0f;

        temp_a3 = gSaveContext.respawn[RESPAWN_MODE_TOP].data - 0x28;
        spCC = temp_a3;

        if (temp_a3 < 0) {
            gSaveContext.respawn[RESPAWN_MODE_TOP].data++;
            spD4 = ABS(gSaveContext.respawn[RESPAWN_MODE_TOP].data) * 0.025f;
            D_8015BC14 = 60;
            D_8015BC18 = 1.0f;
        } else if (D_8015BC14 != 0) {
            D_8015BC14--;
        } else if (D_8015BC18 > 0.0f) {
            spC0 = D_8015BC18;
            temp_ret = Math_Vec3f_DistXYZAndStoreDiff(&gSaveContext.respawn[RESPAWN_MODE_DOWN].pos,
                                                      &gSaveContext.respawn[RESPAWN_MODE_TOP].pos, &spB4);

            if (temp_ret < 20.0f) {
                D_8015BC18 = 0.0f;
                Math_Vec3f_Copy(&gSaveContext.respawn[RESPAWN_MODE_TOP].pos,
                                &gSaveContext.respawn[RESPAWN_MODE_DOWN].pos);
            } else {
                sp9C = (1.0f / D_8015BC18) * temp_ret;
                phi_f14 = 20.0f / sp9C;
                phi_f14 = (phi_f14 < 0.05f) ? 0.05f : phi_f14;
                Math_ApproxF(&D_8015BC18, 0.0f, phi_f14);
                temp_f2 = ((D_8015BC18 / spC0) * temp_ret) / temp_ret;
                gSaveContext.respawn[RESPAWN_MODE_TOP].pos.x =
                    gSaveContext.respawn[RESPAWN_MODE_DOWN].pos.x + (spB4.x * temp_f2);
                gSaveContext.respawn[RESPAWN_MODE_TOP].pos.y =
                    gSaveContext.respawn[RESPAWN_MODE_DOWN].pos.y + (spB4.y * temp_f2);
                gSaveContext.respawn[RESPAWN_MODE_TOP].pos.z =
                    gSaveContext.respawn[RESPAWN_MODE_DOWN].pos.z + (spB4.z * temp_f2);
                temp_f12 = sp9C * 0.5f;
                temp_f14 = temp_ret - temp_f12;
                spD8 += sqrtf((temp_f12 * temp_f12) - (temp_f14 * temp_f14)) * 0.2f;
                osSyncPrintf("-------- DISPLAY Y=%f\n", spD8);
            }

            spA4.x = Math_Rand_CenteredFloat(6.0f) + gSaveContext.respawn[RESPAWN_MODE_TOP].pos.x;
            spA4.y = Math_Rand_ZeroOne() * 6.0f + gSaveContext.respawn[RESPAWN_MODE_TOP].pos.y + 80.0f;
            spA4.z = Math_Rand_CenteredFloat(6.0f) + gSaveContext.respawn[RESPAWN_MODE_TOP].pos.z;

            func_80028BB0(globalCtx, &spA4, &D_80116048, &D_80116054, &D_80116060, &D_80116064, 1000, 0x10);

            if (D_8015BC18 == 0.0f) {
                gSaveContext.respawn[RESPAWN_MODE_TOP] = gSaveContext.respawn[RESPAWN_MODE_DOWN];
                gSaveContext.respawn[RESPAWN_MODE_TOP].playerParams = 0x06FF;
                gSaveContext.respawn[RESPAWN_MODE_TOP].data = 0x28;
            }

            // somehow this shouldn't be optimized out
            gSaveContext.respawn[RESPAWN_MODE_TOP].pos = gSaveContext.respawn[RESPAWN_MODE_TOP].pos;
        } else if (temp_a3 > 0) {
            temp_f12 = temp_a3 * 0.1f;

            if (temp_f12 < 1.0f) {
                sp7C.x = globalCtx->view.eye.x;
                sp7C.y = globalCtx->view.eye.y - spD8;
                sp7C.z = globalCtx->view.eye.z;
                temp_ret = Math_Vec3f_DistXYZAndStoreDiff(&sp7C, &gSaveContext.respawn[RESPAWN_MODE_TOP].pos, &sp70);
                temp_f2 = (((1.0f - temp_f12) / (1.0f - ((f32)(temp_a3 - 1) * 0.1f))) * temp_ret) / temp_ret;
                gSaveContext.respawn[RESPAWN_MODE_TOP].pos.x = sp70.x * temp_f2 + sp7C.x;
                gSaveContext.respawn[RESPAWN_MODE_TOP].pos.y = sp70.y * temp_f2 + sp7C.y;
                gSaveContext.respawn[RESPAWN_MODE_TOP].pos.z = sp70.z * temp_f2 + sp7C.z;
            }

            // somehow this shouldn't be optimized out
            gSaveContext.respawn[RESPAWN_MODE_TOP].pos = gSaveContext.respawn[RESPAWN_MODE_TOP].pos;

            spD0 = 0xFF - (((temp_a3 * 0x10) - temp_a3) * 2);

            if (spD0 < 0) {
                gSaveContext.fw.set = 0;
                gSaveContext.respawn[RESPAWN_MODE_TOP].data = 0;
                spD0 = 0;
            } else {
                gSaveContext.respawn[RESPAWN_MODE_TOP].data++;
            }

            spD4 = spCC * 0.200000000000000011102230246252 + 1.0f;
        }

        if ((globalCtx->csCtx.state == 0) &&
            (gSaveContext.respawn[RESPAWN_MODE_TOP].entranceIndex == gSaveContext.entranceIndex) &&
            (globalCtx->roomCtx.curRoom.num == gSaveContext.respawn[RESPAWN_MODE_TOP].roomIndex)) {
            oGfxCtx->polyXlu.p = Gfx_CallSetupDL(oGfxCtx->polyXlu.p, 0x19);

            Matrix_Translate(gSaveContext.respawn[RESPAWN_MODE_TOP].pos.x,
                             gSaveContext.respawn[RESPAWN_MODE_TOP].pos.y + spD8,
                             gSaveContext.respawn[RESPAWN_MODE_TOP].pos.z, MTXMODE_NEW);
            Matrix_Scale(0.025f * spD4, 0.025f * spD4, 0.025f * spD4, MTXMODE_APPLY);
            Matrix_Mult(&globalCtx->mf_11D60, MTXMODE_APPLY);
            Matrix_Push();

            gDPPipeSync(oGfxCtx->polyXlu.p++);
            gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 255, 255, 200, spD0);
            gDPSetEnvColor(oGfxCtx->polyXlu.p++, 100, 200, 0, 255);

            phi_f10 = (globalCtx->gameplayFrames * 1500) & 0xFFFF;
            Matrix_RotateZ((phi_f10 * M_PI) / 32768.0f, MTXMODE_APPLY);

            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_actor.c", 5458),
                      G_MTX_MODELVIEW | G_MTX_LOAD);
            gSPDisplayList(oGfxCtx->polyXlu.p++, &D_04010130);

            Matrix_Pull();
            phi_f6 = ~((globalCtx->gameplayFrames * 1200) & 0xFFFF);
            Matrix_RotateZ((phi_f6 * M_PI) / 32768.0f, MTXMODE_APPLY);

            gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_actor.c", 5463),
                      G_MTX_MODELVIEW | G_MTX_LOAD);
            gSPDisplayList(oGfxCtx->polyXlu.p++, &D_04010130);
        }

        lightPos.x = gSaveContext.respawn[RESPAWN_MODE_TOP].pos.x;
        lightPos.y = gSaveContext.respawn[RESPAWN_MODE_TOP].pos.y + spD8;
        lightPos.z = gSaveContext.respawn[RESPAWN_MODE_TOP].pos.z;

        Lights_PointNoGlowSetInfo(&D_8015BC00, lightPos.x, lightPos.y, lightPos.z, 0xFF, 0xFF, 0xFF, 500.0f * spD4);

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 5474);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_8002FBAC.s")
#endif

void func_80030488(GlobalContext* globalCtx) {
    LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, D_8015BC10);
}

void func_800304B0(GlobalContext* globalCtx) {
    if (globalCtx->actorCtx.unk_03 != 0) {
        globalCtx->actorCtx.unk_03 = 0;
        func_800876C8(globalCtx);
    }
}

// Actor_InitContext
void func_800304DC(GlobalContext* globalCtx, ActorContext* actorCtx, ActorEntry* actorEntry) {
    ActorOverlay* overlayEntry;
    SaveSceneFlags* saveSceneFlags;
    s32 i;

    saveSceneFlags = &gSaveContext.sceneFlags[globalCtx->sceneNum];

    bzero(actorCtx, sizeof(*actorCtx));

    ActorOverlayTable_Init();
    Matrix_MtxFCopy(&globalCtx->mf_11DA0, &gMtxFClear);
    Matrix_MtxFCopy(&globalCtx->mf_11D60, &gMtxFClear);

    overlayEntry = &gActorOverlayTable[0];
    for (i = 0; i < ARRAY_COUNT(gActorOverlayTable); i++) {
        overlayEntry->loadedRamAddr = NULL;
        overlayEntry->nbLoaded = 0;
        overlayEntry++;
    }

    actorCtx->flags.chest = saveSceneFlags->chest;
    actorCtx->flags.swch = saveSceneFlags->swch;
    actorCtx->flags.clear = saveSceneFlags->clear;
    actorCtx->flags.collect = saveSceneFlags->collect;

    func_8002CDE4(globalCtx, &actorCtx->titleCtx);

    actorCtx->absoluteSpace = NULL;

    Actor_SpawnEntry(actorCtx, actorEntry, globalCtx);
    func_8002C0C0(&actorCtx->targetCtx, actorCtx->actorList[ACTORTYPE_PLAYER].first, globalCtx);
    func_8002FA60(globalCtx);
}

u32 D_80116068[] = {
    0x100000C0, 0x100000C0, 0x00000000, 0x100004C0, 0x00000080, 0x300000C0,
    0x10000080, 0x00000000, 0x300000C0, 0x100004C0, 0x00000000, 0x100000C0,
};

void Actor_UpdateAll(GlobalContext* globalCtx, ActorContext* actorCtx) {
    Actor* refActor;
    Actor* actor;
    Player* player;
    u32* sp80;
    u32 unkFlag;
    u32 unkCondition;
    Actor* sp74;
    ActorEntry* actorEntry;
    s32 i;

    player = PLAYER;

    if (0) {
        // This assert is optimized out but it exists due to its presence in rodata
        if (gMaxActorId != ACTOR_ID_MAX) {
            __assert("MaxProfile == ACTOR_DLF_MAX", "../z_actor.c", UNK_LINE);
        }
    }

    sp74 = NULL;
    unkFlag = 0;

    if (globalCtx->nbSetupActors != 0) {
        actorEntry = &globalCtx->setupActorList[0];
        for (i = 0; i < globalCtx->nbSetupActors; i++) {
            Actor_SpawnEntry(&globalCtx->actorCtx, actorEntry++, globalCtx);
        }
        globalCtx->nbSetupActors = 0;
    }

    if (actorCtx->unk_02 != 0) {
        actorCtx->unk_02--;
    }

    if (KREG(0) == -100) {
        refActor = &PLAYER->actor;
        KREG(0) = 0;
        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_CLEAR_TAG, refActor->posRot.pos.x,
                    refActor->posRot.pos.y + 100.0f, refActor->posRot.pos.z, 0, 0, 0, 1);
    }

    sp80 = &D_80116068[0];

    if (player->stateFlags2 & 0x8000000) {
        unkFlag = 0x2000000;
    }

    if ((player->stateFlags1 & 0x40) && ((player->actor.textId & 0xFF00) != 0x600)) {
        sp74 = player->targetActor;
    }

    for (i = 0; i < ARRAY_COUNT(actorCtx->actorList); i++, sp80++) {
        unkCondition = (*sp80 & player->stateFlags1);

        actor = actorCtx->actorList[i].first;
        while (actor != NULL) {
            if (actor->posRot.pos.y < -25000.0f) {
                actor->posRot.pos.y = -25000.0f;
            }

            actor->sfx = 0;

            if (actor->init != NULL) {
                if (Object_IsLoaded(&globalCtx->objectCtx, actor->objBankIndex)) {
                    Actor_SetObjectDependency(globalCtx, actor);
                    actor->init(actor, globalCtx);
                    actor->init = NULL;
                }
                actor = actor->next;
            } else if (!Object_IsLoaded(&globalCtx->objectCtx, actor->objBankIndex)) {
                Actor_Kill(actor);
                actor = actor->next;
            } else if ((unkFlag && !(actor->flags & unkFlag)) ||
                       (!unkFlag && unkCondition && (sp74 != actor) && (actor != player->naviActor) &&
                        (actor != player->heldActor) && (&player->actor != actor->parent))) {
                func_80061E8C(&actor->colChkInfo);
                actor = actor->next;
            } else if (actor->update == NULL) {
                if (!actor->isDrawn) {
                    actor = Actor_Delete(&globalCtx->actorCtx, actor, globalCtx);
                } else {
                    Actor_Destroy(actor, globalCtx);
                    actor = actor->next;
                }
            } else {
                Math_Vec3f_Copy(&actor->pos4, &actor->posRot.pos);
                actor->xzDistFromLink = func_8002DB8C(actor, &player->actor);
                actor->yDistFromLink = Actor_HeightDiff(actor, &player->actor);
                actor->xyzDistFromLinkSq = SQ(actor->xzDistFromLink) + SQ(actor->yDistFromLink);

                actor->yawTowardsLink = func_8002DA78(actor, &player->actor);
                actor->flags &= ~0x1000000;

                if ((DECR(actor->freezeTimer) == 0) && (actor->flags & 0x50)) {
                    if (actor == player->unk_664) {
                        actor->unk_10C = 1;
                    } else {
                        actor->unk_10C = 0;
                    }

                    if ((actor->unk_10D != 0) && (player->unk_664 == NULL)) {
                        actor->unk_10D = 0;
                    }

                    Actor_SetObjectDependency(globalCtx, actor);
                    if (actor->dmgEffectTimer != 0) {
                        actor->dmgEffectTimer--;
                    }
                    actor->update(actor, globalCtx);
                    func_8003F8EC(globalCtx, &globalCtx->colCtx.dyna, actor);
                }

                func_80061E8C(&actor->colChkInfo);

                actor = actor->next;
            }
        }

        if (i == ACTORTYPE_BG) {
            func_8003F984(globalCtx, &globalCtx->colCtx.dyna);
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

    func_8002C7BC(&actorCtx->targetCtx, player, actor, globalCtx);
    TitleCard_Update(globalCtx, &actorCtx->titleCtx);
    func_8003FB64(globalCtx, &globalCtx->colCtx.dyna);
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

    // Translates to: "ACTOR NAME(%08x:%s)"
    osSyncPrintf("アクターの名前(%08x:%s)\n", actor, name);

    if (command != NULL) {
        // Translates to: "COMMAND:%s"
        osSyncPrintf("コメント:%s\n", command);
    }

    FaultDrawer_SetCursor(48, 24);
    FaultDrawer_Printf("ACTOR NAME %08x:%s", actor, name);
}

void Actor_Draw(GlobalContext* globalCtx, Actor* actor) {
    FaultClient faultClient;
    Lights* lights;

    Fault_AddClient(&faultClient, Actor_FaultPrint, actor, "Actor_draw");

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 6035);

    lights = LightContext_NewLights(&globalCtx->lightCtx, globalCtx->state.gfxCtx);

    Lights_BindAll(lights, globalCtx->lightCtx.listHead, (actor->flags & 0x400000) ? NULL : &actor->posRot.pos);
    Lights_Draw(lights, globalCtx->state.gfxCtx);

    if (actor->flags & 0x1000) {
        func_800D1694(actor->posRot.pos.x + globalCtx->mainCamera.unk_80.x,
                      actor->posRot.pos.y +
                          (f32)((actor->shape.unk_08 * actor->scale.y) + globalCtx->mainCamera.unk_80.y),
                      actor->posRot.pos.z + globalCtx->mainCamera.unk_80.z, &actor->shape.rot);
    } else {
        func_800D1694(actor->posRot.pos.x, actor->posRot.pos.y + (actor->shape.unk_08 * actor->scale.y),
                      actor->posRot.pos.z, &actor->shape.rot);
    }

    Matrix_Scale(actor->scale.x, actor->scale.y, actor->scale.z, MTXMODE_APPLY);
    Actor_SetObjectDependency(globalCtx, actor);

    gSPSegment(oGfxCtx->polyOpa.p++, 0x06, globalCtx->objectCtx.status[actor->objBankIndex].segment);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x06, globalCtx->objectCtx.status[actor->objBankIndex].segment);

    if (actor->dmgEffectTimer != 0) {
        // Must be inline data to match
        Color_RGBA8 sp2C = { 0, 0, 0, 255 };
        if (actor->dmgEffectParams & 0x8000) {
            sp2C.r = sp2C.g = sp2C.b = ((actor->dmgEffectParams & 0x1F00) >> 5) | 7;
        } else if (actor->dmgEffectParams & 0x4000) {
            sp2C.r = ((actor->dmgEffectParams & 0x1F00) >> 5) | 7;
        } else {
            sp2C.b = ((actor->dmgEffectParams & 0x1F00) >> 5) | 7;
        }

        if (actor->dmgEffectParams & 0x2000) {
            func_80026860(globalCtx, &sp2C, actor->dmgEffectTimer, actor->dmgEffectParams & 0xFF);
        } else {
            func_80026400(globalCtx, &sp2C, actor->dmgEffectTimer, actor->dmgEffectParams & 0xFF);
        }
    }

    actor->draw(actor, globalCtx);

    if (actor->dmgEffectTimer != 0) {
        if (actor->dmgEffectParams & 0x2000) {
            func_80026A6C(globalCtx);
        } else {
            func_80026608(globalCtx);
        }
    }

    if (actor->shape.shadowDrawFunc != NULL) {
        actor->shape.shadowDrawFunc(actor, lights, globalCtx);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 6119);

    Fault_RemoveClient(&faultClient);
}

void func_80030ED8(Actor* actor) {
    if (actor->flags & 0x80000) {
        Audio_PlaySoundGeneral(actor->sfx, &actor->projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    } else if (actor->flags & 0x100000) {
        func_80078884(actor->sfx);
    } else if (actor->flags & 0x200000) {
        func_800788CC(actor->sfx);
    } else if (actor->flags & 0x10000000) {
        func_800F4C58(&D_801333D4, NA_SE_SY_TIMER - SFX_FLAG, (s8)(actor->sfx - 1));
    } else {
        func_80078914(&actor->projectedPos, actor->sfx);
    }
}

void func_80030FA8(GraphicsContext* gfxCtx) {
    OPEN_DISPS(gfxCtx, "../z_actor.c", 6161);

    gDPLoadTextureBlock(oGfxCtx->polyXlu.p++, &D_0401E370, G_IM_FMT_I, G_IM_SIZ_8b, 64, 64, 0, G_TX_MIRROR | G_TX_CLAMP,
                        G_TX_MIRROR | G_TX_CLAMP, 6, 6, G_TX_NOLOD, G_TX_NOLOD);

    gDPSetTileSize(oGfxCtx->polyXlu.p++, G_TX_RENDERTILE, 384, 224, 892, 732);
    gSPTextureRectangle(oGfxCtx->polyXlu.p++, 0, 0, 1280, 960, G_TX_RENDERTILE, 2240, 1600, 576, 597);
    gDPPipeSync(oGfxCtx->polyXlu.p++);

    CLOSE_DISPS(gfxCtx, "../z_actor.c", 6183);
}

void func_8003115C(GlobalContext* globalCtx, s32 nbInvisibleActors, Actor** invisibleActors) {
    Actor** invisibleActor;
    GraphicsContext* gfxCtx;
    s32 i;

    gfxCtx = globalCtx->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_actor.c", 6197);

    // Translates to: "MAGIC LENS START"
    gDPNoOpString(oGfxCtx->polyOpa.p++, "魔法のメガネ START", 0);

    gDPPipeSync(oGfxCtx->polyXlu.p++);

    if (globalCtx->roomCtx.curRoom.showInvisActors == 0) {
        gDPSetOtherMode(oGfxCtx->polyXlu.p++,
                        G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                            G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                        G_AC_THRESHOLD | G_ZS_PRIM | Z_UPD | G_RM_CLD_SURF | G_RM_CLD_SURF2);
        gDPSetCombineMode(oGfxCtx->polyXlu.p++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 255, 0, 0, 255);
    } else {
        gDPSetOtherMode(oGfxCtx->polyXlu.p++,
                        G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                            G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                        G_AC_THRESHOLD | G_ZS_PRIM | Z_UPD | IM_RD | CVG_DST_SAVE | ZMODE_OPA | FORCE_BL |
                            GBL_c1(G_BL_CLR_BL, G_BL_0, G_BL_CLR_MEM, G_BL_1MA) |
                            GBL_c2(G_BL_CLR_BL, G_BL_0, G_BL_CLR_MEM, G_BL_1MA));
        gDPSetCombineLERP(oGfxCtx->polyXlu.p++, PRIMITIVE, TEXEL0, PRIM_LOD_FRAC, 0, PRIMITIVE, TEXEL0, PRIM_LOD_FRAC,
                          0, PRIMITIVE, TEXEL0, PRIM_LOD_FRAC, 0, PRIMITIVE, TEXEL0, PRIM_LOD_FRAC, 0);
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0xFF, 74, 74, 74, 74);
    }

    gDPSetPrimDepth(oGfxCtx->polyXlu.p++, 0, 0);

    func_80030FA8(gfxCtx);

    // Translates to: "MAGIC LENS INVISIBLE ACTOR DISPLAY START"
    gDPNoOpString(oGfxCtx->polyOpa.p++, "魔法のメガネ 見えないＡcｔｏｒ表示 START", nbInvisibleActors);

    invisibleActor = &invisibleActors[0];
    for (i = 0; i < nbInvisibleActors; i++) {
        // Translates to: "MAGIC LENS INVISIBLE ACTOR DISPLAY"
        gDPNoOpString(oGfxCtx->polyOpa.p++, "魔法のメガネ 見えないＡcｔｏｒ表示", i);
        Actor_Draw(globalCtx, *(invisibleActor++));
    }

    // Translates to: "MAGIC LENS INVISIBLE ACTOR DISPLAY END"
    gDPNoOpString(oGfxCtx->polyOpa.p++, "魔法のメガネ 見えないＡcｔｏｒ表示 END", nbInvisibleActors);

    if (globalCtx->roomCtx.curRoom.showInvisActors != 0) {
        // Translates to: "BLUE SPECTACLES (EXTERIOR)"
        gDPNoOpString(oGfxCtx->polyOpa.p++, "青い眼鏡(外側)", 0);

        gDPPipeSync(oGfxCtx->polyXlu.p++);

        gDPSetOtherMode(oGfxCtx->polyXlu.p++,
                        G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                            G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_NPRIMITIVE,
                        G_AC_THRESHOLD | G_ZS_PRIM | G_RM_CLD_SURF | G_RM_CLD_SURF2);
        gDPSetCombineMode(oGfxCtx->polyXlu.p++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 255, 0, 0, 255);

        func_80030FA8(gfxCtx);

        // Translates to: "BLUE SPECTACLES (EXTERIOR)"
        gDPNoOpString(oGfxCtx->polyOpa.p++, "青い眼鏡(外側)", 1);
    }

    // Translates to: "MAGIC LENS END"
    gDPNoOpString(oGfxCtx->polyOpa.p++, "魔法のメガネ END", 0);

    CLOSE_DISPS(gfxCtx, "../z_actor.c", 6284);
}

s32 func_800314B0(GlobalContext* globalCtx, Actor* actor) {
    return func_800314D4(globalCtx, actor, &actor->projectedPos, actor->projectedW);
}

s32 func_800314D4(GlobalContext* globalCtx, Actor* actor, Vec3f* arg2, f32 arg3) {
    f32 var;

    if ((arg2->z > -actor->uncullZoneScale) && (arg2->z < (actor->uncullZoneForward + actor->uncullZoneScale))) {
        var = (arg3 < 1.0f) ? 1.0f : 1.0f / arg3;

        if ((((fabsf(arg2->x) - actor->uncullZoneScale) * var) < 1.0f) &&
            (((arg2->y + actor->uncullZoneDownward) * var) > -1.0f) &&
            (((arg2->y - actor->uncullZoneScale) * var) < 1.0f)) {
            return 1;
        }
    }

    return 0;
}

void func_800315AC(GlobalContext* globalCtx, ActorContext* actorCtx) {
    s32 invisibleActorCounter;
    Actor* invisibleActors[INVISIBLE_ACTOR_MAX];
    ActorListEntry* actorListEntry;
    Actor* actor;
    s32 i;

    invisibleActorCounter = 0;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 6336);

    actorListEntry = &actorCtx->actorList[0];

    for (i = 0; i < ARRAY_COUNT(actorCtx->actorList); i++, actorListEntry++) {
        actor = actorListEntry->first;

        while (actor != NULL) {
            ActorOverlay* overlayEntry = actor->overlayEntry;
            char* actorName = overlayEntry->name != NULL ? overlayEntry->name : "";

            gDPNoOpString(oGfxCtx->polyOpa.p++, actorName, i);
            gDPNoOpString(oGfxCtx->polyXlu.p++, actorName, i);

            HREG(66) = i;

            if ((HREG(64) != 1) || ((HREG(65) != -1) && (HREG(65) != HREG(66))) || (HREG(68) == 0)) {
                SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->mf_11D60, &actor->posRot.pos, &actor->projectedPos,
                                             &actor->projectedW);
            }

            if ((HREG(64) != 1) || ((HREG(65) != -1) && (HREG(65) != HREG(66))) || (HREG(69) == 0)) {
                if (actor->sfx != 0) {
                    func_80030ED8(actor);
                }
            }

            if ((HREG(64) != 1) || ((HREG(65) != -1) && (HREG(65) != HREG(66))) || (HREG(70) == 0)) {
                if (func_800314B0(globalCtx, actor)) {
                    actor->flags |= 0x40;
                } else {
                    actor->flags &= ~0x40;
                }
            }

            actor->isDrawn = 0;

            if ((HREG(64) != 1) || ((HREG(65) != -1) && (HREG(65) != HREG(66))) || (HREG(71) == 0)) {
                if ((actor->init == NULL) && (actor->draw != NULL) && (actor->flags & 0x60)) {
                    if ((actor->flags & 0x80) &&
                        ((globalCtx->roomCtx.curRoom.showInvisActors == 0) || (globalCtx->actorCtx.unk_03 != 0) ||
                         (actor->room != globalCtx->roomCtx.curRoom.num))) {
                        if (invisibleActorCounter >= INVISIBLE_ACTOR_MAX) {
                            __assert("invisible_actor_counter < INVISIBLE_ACTOR_MAX", "../z_actor.c", 6464);
                        }
                        invisibleActors[invisibleActorCounter] = actor;
                        invisibleActorCounter++;
                    } else {
                        if ((HREG(64) != 1) || ((HREG(65) != -1) && (HREG(65) != HREG(66))) || (HREG(72) == 0)) {
                            Actor_Draw(globalCtx, actor);
                            actor->isDrawn = 1;
                        }
                    }
                }
            }

            actor = actor->next;
        }
    }

    if ((HREG(64) != 1) || (HREG(73) != 0)) {
        Effect_DrawAll(globalCtx->state.gfxCtx);
    }

    if ((HREG(64) != 1) || (HREG(74) != 0)) {
        EffectSs_DrawAll(globalCtx);
    }

    if ((HREG(64) != 1) || (HREG(72) != 0)) {
        if (globalCtx->actorCtx.unk_03 != 0) {
            func_8003115C(globalCtx, invisibleActorCounter, invisibleActors);
            if ((globalCtx->csCtx.state != 0) || Player_InCsMode(globalCtx)) {
                func_800304B0(globalCtx);
            }
        }
    }

    func_8002FBAC(globalCtx);

    if (IREG(32) == 0) {
        Lights_DrawGlow(globalCtx);
    }

    if ((HREG(64) != 1) || (HREG(75) != 0)) {
        TitleCard_Draw(globalCtx, &actorCtx->titleCtx);
    }

    if ((HREG(64) != 1) || (HREG(76) != 0)) {
        CollisionCheck_Draw(globalCtx, &globalCtx->colChkCtx);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 6563);
}

void func_80031A28(GlobalContext* globalCtx, ActorContext* actorCtx) {
    Actor* actor;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(actorCtx->actorList); i++) {
        actor = actorCtx->actorList[i].first;
        while (actor != NULL) {
            if (!Object_IsLoaded(&globalCtx->objectCtx, actor->objBankIndex)) {
                Actor_Kill(actor);
            }
            actor = actor->next;
        }
    }
}

u8 sEnemyActorTypes[] = { ACTORTYPE_ENEMY, ACTORTYPE_BOSS };

void Actor_FreezeAllEnemies(GlobalContext* globalCtx, ActorContext* actorCtx, s32 duration) {
    Actor* actor;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(sEnemyActorTypes); i++) {
        actor = actorCtx->actorList[sEnemyActorTypes[i]].first;
        while (actor != NULL) {
            actor->freezeTimer = duration;
            actor = actor->next;
        }
    }
}

void func_80031B14(GlobalContext* globalCtx, ActorContext* actorCtx) {
    Actor* actor;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(actorCtx->actorList); i++) {
        actor = actorCtx->actorList[i].first;
        while (actor != NULL) {
            if ((actor->room >= 0) && (actor->room != globalCtx->roomCtx.curRoom.num) &&
                (actor->room != globalCtx->roomCtx.prevRoom.num)) {
                if (!actor->isDrawn) {
                    actor = Actor_Delete(actorCtx, actor, globalCtx);
                } else {
                    Actor_Kill(actor);
                    Actor_Destroy(actor, globalCtx);
                    actor = actor->next;
                }
            } else {
                actor = actor->next;
            }
        }
    }

    CollisionCheck_InitContext(globalCtx, &globalCtx->colChkCtx);
    actorCtx->flags.tempClear = 0;
    actorCtx->flags.tempSwch &= 0xFFFFFF;
    globalCtx->msgCtx.unk_E3F4 = 0;
}

// Actor_CleanupContext
void func_80031C3C(ActorContext* actorCtx, GlobalContext* globalCtx) {
    Actor* actor;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(actorCtx->actorList); i++) {
        actor = actorCtx->actorList[i].first;
        while (actor != NULL) {
            Actor_Delete(actorCtx, actor, globalCtx);
            actor = actorCtx->actorList[i].first;
        }
    }

    if (HREG(20) != 0) {
        // Translates to: "ABSOLUTE MAGIC FIELD DEALLOCATION"
        osSyncPrintf("絶対魔法領域解放\n");
    }

    if (actorCtx->absoluteSpace != NULL) {
        ZeldaArena_FreeDebug(actorCtx->absoluteSpace, "../z_actor.c", 6731);
        actorCtx->absoluteSpace = NULL;
    }

    Gameplay_SaveSceneFlags(globalCtx);
    func_80030488(globalCtx);
    ActorOverlayTable_Cleanup();
}

/**
 * Adds a given actor instance at the front of the actor list of the specified type.
 * Also sets the actor instance as being of that type.
 */
void Actor_AddToTypeList(ActorContext* actorCtx, Actor* actorToAdd, u8 actorType) {
    Actor* prevFirstActor;

    actorToAdd->type = actorType;

    actorCtx->total++;
    actorCtx->actorList[actorType].length++;
    prevFirstActor = actorCtx->actorList[actorType].first;

    if (prevFirstActor != NULL) {
        prevFirstActor->prev = actorToAdd;
    }

    actorCtx->actorList[actorType].first = actorToAdd;
    actorToAdd->next = prevFirstActor;
}

/**
 * Removes a given actor instance from its actor list.
 * Also sets the temp clear flag of the current room if the actor removed was the last enemy loaded.
 */
Actor* Actor_RemoveFromTypeList(GlobalContext* globalCtx, ActorContext* actorCtx, Actor* actorToRemove) {
    Actor* newFirstActor;

    actorCtx->total--;
    actorCtx->actorList[actorToRemove->type].length--;

    if (actorToRemove->prev != NULL) {
        actorToRemove->prev->next = actorToRemove->next;
    } else {
        actorCtx->actorList[actorToRemove->type].first = actorToRemove->next;
    }

    newFirstActor = actorToRemove->next;

    if (newFirstActor != NULL) {
        newFirstActor->prev = actorToRemove->prev;
    }

    actorToRemove->next = NULL;
    actorToRemove->prev = NULL;

    if ((actorToRemove->room == globalCtx->roomCtx.curRoom.num) && (actorToRemove->type == ACTORTYPE_ENEMY) &&
        (actorCtx->actorList[ACTORTYPE_ENEMY].length == 0)) {
        Flags_SetTempClear(globalCtx, globalCtx->roomCtx.curRoom.num);
    }

    return newFirstActor;
}

void Actor_FreeOverlay(ActorOverlay* actorOverlay) {
    osSyncPrintf(VT_FGCOL(CYAN));

    if (actorOverlay->nbLoaded == 0) {
        if (HREG(20) != 0) {
            // Translates to: "ACTOR CLIENT IS NOW 0"
            osSyncPrintf("アクタークライアントが０になりました\n");
        }

        if (actorOverlay->loadedRamAddr != NULL) {
            if (actorOverlay->allocType & ALLOCTYPE_PERMANENT) {
                if (HREG(20) != 0) {
                    // Translates to: "OVERLAY WILL NOT BE DEALLOCATED"
                    osSyncPrintf("オーバーレイ解放しません\n");
                }
            } else if (actorOverlay->allocType & ALLOCTYPE_ABSOLUTE) {
                if (HREG(20) != 0) {
                    // Translates to: "ABSOLUTE MAGIC FIELD RESERVED, SO DEALLOCATION WILL NOT OCCUR"
                    osSyncPrintf("絶対魔法領域確保なので解放しません\n");
                }
                actorOverlay->loadedRamAddr = NULL;
            } else {
                if (HREG(20) != 0) {
                    // Translates to: "OVERLAY DEALLOCATED"
                    osSyncPrintf("オーバーレイ解放します\n");
                }
                ZeldaArena_FreeDebug(actorOverlay->loadedRamAddr, "../z_actor.c", 6834);
                actorOverlay->loadedRamAddr = NULL;
            }
        }
    } else if (HREG(20) != 0) {
        // Translates to: "%d OF ACTOR CLIENT REMAINS"
        osSyncPrintf("アクタークライアントはあと %d 残っています\n", actorOverlay->nbLoaded);
    }

    osSyncPrintf(VT_RST);
}

Actor* Actor_Spawn(ActorContext* actorCtx, GlobalContext* globalCtx, s16 actorId, f32 posX, f32 posY, f32 posZ,
                   s16 rotX, s16 rotY, s16 rotZ, s16 params) {
    s32 pad;
    Actor* actor;
    ActorInit* actorInit;
    s32 objBankIndex;
    ActorOverlay* overlayEntry;
    u32 temp;
    char* name;
    u32 overlaySize;

    overlayEntry = &gActorOverlayTable[actorId];

    if (actorId >= ACTOR_ID_MAX) {
        __assert("profile < ACTOR_DLF_MAX", "../z_actor.c", 6883);
    }

    name = overlayEntry->name != NULL ? overlayEntry->name : "";
    overlaySize = (u32)overlayEntry->vramEnd - (u32)overlayEntry->vramStart;

    if (HREG(20) != 0) {
        // Translates to: "ACTOR CLASS ADDITION [%d:%s]"
        osSyncPrintf("アクタークラス追加 [%d:%s]\n", actorId, name);
    }

    if (actorCtx->total > ACTOR_NUMBER_MAX) {
        // Translates to: "Ａｃｔｏｒ SET NUMBER EXCEEDED"
        osSyncPrintf(VT_COL(YELLOW, BLACK) "Ａｃｔｏｒセット数オーバー\n" VT_RST);
        return NULL;
    }

    if (overlayEntry->vramStart == 0) {
        if (HREG(20) != 0) {
            // Translates to: "NOT AN OVERLAY"
            osSyncPrintf("オーバーレイではありません\n");
        }

        actorInit = overlayEntry->initInfo;
    } else {
        if (overlayEntry->loadedRamAddr != NULL) {
            if (HREG(20) != 0) {
                // Translates to: "ALREADY LOADED"
                osSyncPrintf("既にロードされています\n");
            }
        } else {
            if (overlayEntry->allocType & ALLOCTYPE_ABSOLUTE) {
                if (overlaySize > AM_FIELD_SIZE) {
                    __assert("actor_segsize <= AM_FIELD_SIZE", "../z_actor.c", 6934);
                }

                if (actorCtx->absoluteSpace == NULL) {
                    // Translates to: "AMF: ABSOLUTE MAGIC FIELD"
                    actorCtx->absoluteSpace = ZeldaArena_MallocRDebug(AM_FIELD_SIZE, "AMF:絶対魔法領域", 0);
                    if (HREG(20) != 0) {
                        // Translates to: "ABSOLUTE MAGIC FIELD RESERVATION - %d BYTES RESERVED"
                        osSyncPrintf("絶対魔法領域確保 %d バイト確保\n", AM_FIELD_SIZE);
                    }
                }

                overlayEntry->loadedRamAddr = actorCtx->absoluteSpace;
            } else if (overlayEntry->allocType & ALLOCTYPE_PERMANENT) {
                overlayEntry->loadedRamAddr = ZeldaArena_MallocRDebug(overlaySize, name, 0);
            } else {
                overlayEntry->loadedRamAddr = ZeldaArena_MallocDebug(overlaySize, name, 0);
            }

            if (overlayEntry->loadedRamAddr == NULL) {
                // Translates to: "CANNOT RESERVE ACTOR PROGRAM MEMORY"
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

            overlayEntry->nbLoaded = 0;
        }

        actorInit = (void*)(u32)((overlayEntry->initInfo != NULL)
                                     ? (void*)((u32)overlayEntry->initInfo -
                                               (s32)((u32)overlayEntry->vramStart - (u32)overlayEntry->loadedRamAddr))
                                     : NULL);
    }

    objBankIndex = Object_GetIndex(&globalCtx->objectCtx, actorInit->objectId);

    if ((objBankIndex < 0) ||
        ((actorInit->type == ACTORTYPE_ENEMY) && (Flags_GetClear(globalCtx, globalCtx->roomCtx.curRoom.num)))) {
        // Translates to: "NO DATA BANK!! <DATA BANK＝%d> (profilep->bank=%d)"
        osSyncPrintf(VT_COL(RED, WHITE) "データバンク無し！！<データバンク＝%d>(profilep->bank=%d)\n" VT_RST,
                     objBankIndex, actorInit->objectId);
        Actor_FreeOverlay(overlayEntry);
        return NULL;
    }

    actor = ZeldaArena_MallocDebug(actorInit->instanceSize, name, 1);

    if (actor == NULL) {
        // Translates to: "ACTOR CLASS CANNOT BE RESERVED! %s <SIZE＝%d BYTES>"
        osSyncPrintf(VT_COL(RED, WHITE) "Ａｃｔｏｒクラス確保できません！ %s <サイズ＝%dバイト>\n", VT_RST, name,
                     actorInit->instanceSize);
        Actor_FreeOverlay(overlayEntry);
        return NULL;
    }

    if (overlayEntry->nbLoaded >= 255) {
        __assert("actor_dlftbl->clients < 255", "../z_actor.c", 7031);
    }

    overlayEntry->nbLoaded++;

    if (HREG(20) != 0) {
        // Translates to: "ACTOR CLIENT No. %d"
        osSyncPrintf("アクタークライアントは %d 個目です\n", overlayEntry->nbLoaded);
    }

    Lib_MemSet(actor, actorInit->instanceSize, 0);
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
    actor->room = globalCtx->roomCtx.curRoom.num;
    actor->initPosRot.pos.x = posX;
    actor->initPosRot.pos.y = posY;
    actor->initPosRot.pos.z = posZ;
    actor->initPosRot.rot.x = rotX;
    actor->initPosRot.rot.y = rotY;
    actor->initPosRot.rot.z = rotZ;
    actor->params = params;

    Actor_AddToTypeList(actorCtx, actor, actorInit->type);

    temp = gSegments[6];
    Actor_Init(actor, globalCtx);
    gSegments[6] = temp;

    return actor;
}

Actor* Actor_SpawnAsChild(ActorContext* actorCtx, Actor* parent, GlobalContext* globalCtx, s16 actorId, f32 posX,
                          f32 posY, f32 posZ, s16 rotX, s16 rotY, s16 rotZ, s16 params) {
    Actor* spawnedActor = Actor_Spawn(actorCtx, globalCtx, actorId, posX, posY, posZ, rotX, rotY, rotZ, params);
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

void Actor_SpawnTransitionActors(GlobalContext* globalCtx, ActorContext* actorCtx) {
    TransitionActorEntry* transitionActor;
    u8 nbTransitionActors;
    s32 i;

    transitionActor = globalCtx->transitionActorList;
    nbTransitionActors = globalCtx->nbTransitionActors;

    for (i = 0; i < nbTransitionActors; i++) {
        if (transitionActor->id >= 0) {
            if (((transitionActor->sides[0].room >= 0) &&
                 ((transitionActor->sides[0].room == globalCtx->roomCtx.curRoom.num) ||
                  (transitionActor->sides[0].room == globalCtx->roomCtx.prevRoom.num))) ||
                ((transitionActor->sides[1].room >= 0) &&
                 ((transitionActor->sides[1].room == globalCtx->roomCtx.curRoom.num) ||
                  (transitionActor->sides[1].room == globalCtx->roomCtx.prevRoom.num)))) {
                Actor_Spawn(actorCtx, globalCtx, (s16)(transitionActor->id & 0x1FFF), transitionActor->pos.x,
                            transitionActor->pos.y, transitionActor->pos.z, 0, transitionActor->rotY, 0,
                            (i << 0xA) + transitionActor->params);

                transitionActor->id = -transitionActor->id;
                nbTransitionActors = globalCtx->nbTransitionActors;
            }
        }
        transitionActor++;
    }
}

Actor* Actor_SpawnEntry(ActorContext* actorCtx, ActorEntry* actorEntry, GlobalContext* globalCtx) {
    return Actor_Spawn(actorCtx, globalCtx, actorEntry->id, actorEntry->pos.x, actorEntry->pos.y, actorEntry->pos.z,
                       actorEntry->rot.x, actorEntry->rot.y, actorEntry->rot.z, actorEntry->params);
}

Actor* Actor_Delete(ActorContext* actorCtx, Actor* actor, GlobalContext* globalCtx) {
    char* name;
    Player* player;
    Actor* newFirstActor;
    ActorOverlay* overlayEntry;

    player = PLAYER;

    overlayEntry = actor->overlayEntry;
    name = overlayEntry->name != NULL ? overlayEntry->name : "";

    if (HREG(20) != 0) {
        // Translates to: "ACTOR CLASS DELETED [%s]"
        osSyncPrintf("アクタークラス削除 [%s]\n", name);
    }

    if ((player != NULL) && (actor == player->unk_664)) {
        func_8008EDF0(player);
        func_8005A444(Gameplay_GetCamera(globalCtx, Gameplay_GetActiveCamId(globalCtx)), 0);
    }

    if (actor == actorCtx->targetCtx.arrowPointedActor) {
        actorCtx->targetCtx.arrowPointedActor = NULL;
    }

    if (actor == actorCtx->targetCtx.unk_8C) {
        actorCtx->targetCtx.unk_8C = NULL;
    }

    if (actor == actorCtx->targetCtx.unk_90) {
        actorCtx->targetCtx.unk_90 = NULL;
    }

    func_800F89E8(&actor->projectedPos);
    Actor_Destroy(actor, globalCtx);

    newFirstActor = Actor_RemoveFromTypeList(globalCtx, actorCtx, actor);

    ZeldaArena_FreeDebug(actor, "../z_actor.c", 7242);

    if (overlayEntry->vramStart == 0) {
        if (HREG(20) != 0) {
            // Translates to: "NOT AN OVERLAY"
            osSyncPrintf("オーバーレイではありません\n");
        }
    } else {
        if (overlayEntry->loadedRamAddr == NULL) {
            __assert("actor_dlftbl->allocp != NULL", "../z_actor.c", 7251);
        }

        if (overlayEntry->nbLoaded <= 0) {
            __assert("actor_dlftbl->clients > 0", "../z_actor.c", 7252);
        }

        overlayEntry->nbLoaded--;
        Actor_FreeOverlay(overlayEntry);
    }

    return newFirstActor;
}

s32 func_80032880(GlobalContext* globalCtx, Actor* actor) {
    s16 sp1E;
    s16 sp1C;

    func_8002F374(globalCtx, actor, &sp1E, &sp1C);

    return (sp1E > -20) && (sp1E < 340) && (sp1C > -160) && (sp1C < 400);
}

Actor* D_8015BBE8;
Actor* D_8015BBEC;
f32 D_8015BBF0;
f32 D_8015BBF4;
s32 D_8015BBF8;
s16 D_8015BBFC;

void func_800328D4(GlobalContext* globalCtx, ActorContext* actorCtx, Player* player, u32 actorType) {
    f32 var;
    Actor* actor;
    Actor* sp84;
    CollisionPoly* sp80;
    UNK_TYPE sp7C;
    Vec3f sp70;

    actor = actorCtx->actorList[actorType].first;
    sp84 = player->unk_664;

    while (actor != NULL) {
        if ((actor->update != NULL) && ((Player*)actor != player) && ((actor->flags & 1) == 1)) {
            if ((actorType == ACTORTYPE_ENEMY) && ((actor->flags & 5) == 5) && (actor->xyzDistFromLinkSq < 250000.0f) &&
                (actor->xyzDistFromLinkSq < D_8015BBF4)) {
                actorCtx->targetCtx.unk_90 = actor;
                D_8015BBF4 = actor->xyzDistFromLinkSq;
            }

            if (actor != sp84) {
                var = func_8002EFC0(actor, player, D_8015BBFC);
                if ((var < D_8015BBF0) && func_8002F090(actor, var) && func_80032880(globalCtx, actor) &&
                    (!func_8003DD6C(&globalCtx->colCtx, &player->actor.posRot2.pos, &actor->posRot2.pos, &sp70, &sp80,
                                    1, 1, 1, 1, &sp7C) ||
                     func_80042048(&globalCtx->colCtx, sp80, sp7C))) {
                    if (actor->unk_10D != 0) {
                        if (actor->unk_10D < D_8015BBF8) {
                            D_8015BBEC = actor;
                            D_8015BBF8 = actor->unk_10D;
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
    ACTORTYPE_BOSS,  ACTORTYPE_ENEMY,  ACTORTYPE_BG,   ACTORTYPE_EXPLOSIVES, ACTORTYPE_NPC,  ACTORTYPE_ITEMACTION,
    ACTORTYPE_CHEST, ACTORTYPE_SWITCH, ACTORTYPE_PROP, ACTORTYPE_MISC,       ACTORTYPE_DOOR, ACTORTYPE_SWITCH,
};

Actor* func_80032AF0(GlobalContext* globalCtx, ActorContext* actorCtx, Actor** actorPtr, Player* player) {
    s32 i;
    u8* entry;

    D_8015BBE8 = D_8015BBEC = NULL;
    D_8015BBF0 = D_8015BBF4 = FLT_MAX;
    D_8015BBF8 = 0x7FFFFFFF;

    if (!Player_InCsMode(globalCtx)) {
        entry = &D_801160A0[0];

        actorCtx->targetCtx.unk_90 = NULL;
        D_8015BBFC = player->actor.shape.rot.y;

        for (i = 0; i < 3; i++) {
            func_800328D4(globalCtx, actorCtx, player, *entry);
            entry++;
        }

        if (D_8015BBE8 == NULL) {
            for (i; i < ARRAY_COUNT(D_801160A0); i++) {
                func_800328D4(globalCtx, actorCtx, player, *entry);
                entry++;
            }
        }
    }

    if (D_8015BBE8 == 0) {
        *actorPtr = D_8015BBEC;
    } else {
        *actorPtr = D_8015BBE8;
    }

    return *actorPtr;
}

/**
 * Finds the first actor instance of a specified id and type if there is one.
 */
Actor* Actor_Find(ActorContext* actorCtx, s32 actorId, s32 actorType) {
    Actor* actor = actorCtx->actorList[actorType].first;

    while (actor != NULL) {
        if (actorId == actor->id) {
            return actor;
        }
        actor = actor->next;
    }

    return NULL;
}

void func_80032C7C(GlobalContext* globalCtx, Actor* actor) {
    globalCtx->actorCtx.unk_00 = 5;
    Audio_PlaySoundAtPosition(globalCtx, &actor->posRot.pos, 20, NA_SE_EN_LAST_DAMAGE);
}

s16 func_80032CB4(s16* arg0, s16 arg1, s16 arg2, s16 arg3) {
    if (DECR(arg0[1]) == 0) {
        arg0[1] = Math_Rand_S16Offset(arg1, arg2);
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
        arg0[1] = Math_Rand_S16Offset(arg1, arg2);
        arg0[0]++;

        if ((arg0[0] % 3) == 0) {
            arg0[0] = (s32)(Math_Rand_ZeroOne() * arg3) * 3;
        }
    }

    return arg0[0];
}

void func_80032E24(struct_80032E24* arg0, s32 arg1, GlobalContext* globalCtx) {
    u32 sp28;
    u32 sp24;
    u32 sp20;

    sp28 = (arg1 * sizeof(*arg0->unk_00)) + sizeof(*arg0->unk_00);
    arg0->unk_00 = ZeldaArena_MallocDebug(sp28, "../z_actor.c", 7540);
    if (arg0->unk_00 != NULL) {
        sp24 = (arg1 * sizeof(*arg0->unk_0C)) + sizeof(*arg0->unk_0C);
        arg0->unk_0C = ZeldaArena_MallocDebug(sp24, "../z_actor.c", 7543);
        if (arg0->unk_0C != NULL) {
            sp20 = (arg1 * sizeof(*arg0->unk_04)) + sizeof(*arg0->unk_04);
            arg0->unk_04 = ZeldaArena_MallocDebug(sp20, "../z_actor.c", 7546);
            if (arg0->unk_04 != NULL) {
                Lib_MemSet(arg0->unk_00, sp28, 0);
                Lib_MemSet(arg0->unk_0C, sp24, 0);
                Lib_MemSet(arg0->unk_04, sp20, 0);
                arg0->unk_10 = 1;
                return;
            }
        }
    }

    if (arg0->unk_00 != NULL) {
        ZeldaArena_FreeDebug(arg0->unk_00, "../z_actor.c", 7558);
    }

    if (arg0->unk_0C != NULL) {
        ZeldaArena_FreeDebug(arg0->unk_0C, "../z_actor.c", 7561);
    }

    if (arg0->unk_04 != NULL) {
        ZeldaArena_FreeDebug(arg0->unk_04, "../z_actor.c", 7564);
    }
}

void func_80032F54(struct_80032E24* arg0, s32 arg1, s32 arg2, s32 arg3, u32 arg4, s32* arg5, s16 arg6) {
    GlobalContext* globalCtx = Effect_GetGlobalCtx();

    if ((globalCtx->actorCtx.unk_00 == 0) && (arg0->unk_10 > 0)) {
        if ((arg1 >= arg2) && (arg3 >= arg1) && (*arg5 != 0)) {
            arg0->unk_0C[arg0->unk_10] = *arg5;
            Matrix_Get(&arg0->unk_00[arg0->unk_10]);
            arg0->unk_04[arg0->unk_10] = arg6;
            arg0->unk_10++;
        }

        if (arg1 != arg0->unk_14) {
            arg0->unk_08++;
        }

        if (arg0->unk_08 >= arg4) {
            arg0->unk_08 = arg0->unk_10 - 1;
            arg0->unk_10 = -1;
        }
    }

    arg0->unk_14 = arg1;
}

s32 func_8003305C(Actor* actor, struct_80032E24* arg1, GlobalContext* globalCtx, s16 params) {
    EnPart* spawnedEnPart;
    MtxF* mtx;
    s16 objBankIndex;

    if (arg1->unk_10 != -1) {
        return 0;
    }

    while (arg1->unk_08 > 0) {
        Matrix_Put(&arg1->unk_00[arg1->unk_08]);
        Matrix_Scale(1.0f / actor->scale.x, 1.0f / actor->scale.y, 1.0f / actor->scale.z, MTXMODE_APPLY);
        Matrix_Get(&arg1->unk_00[arg1->unk_08]);

        if (1) { // Necessary to match
            if (arg1->unk_04[arg1->unk_08] >= 0) {
                objBankIndex = arg1->unk_04[arg1->unk_08];
            } else {
                objBankIndex = actor->objBankIndex;
            }
        }

        mtx = &arg1->unk_00[arg1->unk_08];
        spawnedEnPart = (EnPart*)Actor_SpawnAsChild(&globalCtx->actorCtx, actor, globalCtx, ACTOR_EN_PART, mtx->wx,
                                                    mtx->wy, mtx->wz, 0, 0, objBankIndex, params);
        if (spawnedEnPart != NULL) {
            func_800D20CC(&arg1->unk_00[arg1->unk_08], &spawnedEnPart->actor.shape.rot, 0);
            spawnedEnPart->unk_150 = arg1->unk_0C[arg1->unk_08];
            spawnedEnPart->actor.scale = actor->scale;
        }

        arg1->unk_08--;
    }

    arg1->unk_10 = 0;
    ZeldaArena_FreeDebug(arg1->unk_00, "../z_actor.c", 7678);
    ZeldaArena_FreeDebug(arg1->unk_0C, "../z_actor.c", 7679);
    ZeldaArena_FreeDebug(arg1->unk_04, "../z_actor.c", 7680);

    return 1;
}

void func_80033260(GlobalContext* globalCtx, Actor* actor, Vec3f* arg2, f32 arg3, s32 arg4, f32 arg5, s16 scale,
                   s16 scaleStep, u8 arg8) {
    Vec3f pos;
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.3f, 0.0f };
    f32 var;
    s32 i;

    var = (Math_Rand_ZeroOne() - 0.5f) * 6.28f;
    pos.y = actor->groundY;
    accel.y += (Math_Rand_ZeroOne() - 0.5f) * 0.2f;

    for (i = arg4; i >= 0; i--) {
        pos.x = (func_800CA720(var) * arg3) + arg2->x;
        pos.z = (func_800CA774(var) * arg3) + arg2->z;
        accel.x = (Math_Rand_ZeroOne() - 0.5f) * arg5;
        accel.z = (Math_Rand_ZeroOne() - 0.5f) * arg5;

        if (scale == 0) {
            func_8002857C(globalCtx, &pos, &velocity, &accel);
        } else if (arg8 != 0) {
            func_800286CC(globalCtx, &pos, &velocity, &accel, scale, scaleStep);
        } else {
            func_8002865C(globalCtx, &pos, &velocity, &accel, scale, scaleStep);
        }

        var += 6.28f / (arg4 + 1.0f);
    }
}

void func_80033480(GlobalContext* globalCtx, Vec3f* arg1, f32 arg2, s32 arg3, s16 arg4, s16 scaleStep, u8 arg6) {
    Vec3f pos;
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3f accel = { 0.0f, 0.3f, 0.0f };
    s16 scale;
    u32 var2;
    s32 i;

    for (i = arg3; i >= 0; i--) {
        pos.x = arg1->x + ((Math_Rand_ZeroOne() - 0.5f) * arg2);
        pos.y = arg1->y + ((Math_Rand_ZeroOne() - 0.5f) * arg2);
        pos.z = arg1->z + ((Math_Rand_ZeroOne() - 0.5f) * arg2);

        scale = (s16)((Math_Rand_ZeroOne() * arg4) * 0.2f) + arg4;
        var2 = arg6;

        if (var2 != 0) {
            func_800286CC(globalCtx, &pos, &velocity, &accel, scale, scaleStep);
        } else {
            func_8002865C(globalCtx, &pos, &velocity, &accel, scale, scaleStep);
        }
    }
}

Actor* Actor_GetCollidedExplosive(GlobalContext* globalCtx, Collider* collider) {
    if ((collider->acFlags & 0x2) && (collider->ac->type == ACTORTYPE_EXPLOSIVES)) {
        collider->acFlags &= ~0x2;
        return collider->ac;
    }

    return NULL;
}

Actor* func_80033684(GlobalContext* globalCtx, Actor* explosiveActor) {
    Actor* actor = globalCtx->actorCtx.actorList[ACTORTYPE_EXPLOSIVES].first;

    while (actor != NULL) {
        if ((actor == explosiveActor) || (actor->params != 1)) {
            actor = actor->next;
        } else {
            if (func_8002DB48(explosiveActor, actor) <= (actor->shape.rot.z * 10) + 80.0f) {
                return actor;
            } else {
                actor = actor->next;
            }
        }
    }

    return NULL;
}

/**
 * Dynamically changes the type of a given actor instance.
 * This is done by moving it to the corresponding type list and setting its type variable accordingly.
 */
void Actor_ChangeType(GlobalContext* globalCtx, ActorContext* actorCtx, Actor* actor, u8 actorType) {
    Actor_RemoveFromTypeList(globalCtx, actorCtx, actor);
    Actor_AddToTypeList(actorCtx, actor, actorType);
}

typedef struct {
    /* 0x000 */ Actor actor;
    /* 0x14C */ char unk_14C[0xC4];
    /* 0x210 */ s16 unk_210;
} Actor_80033780;

Actor_80033780* func_80033780(GlobalContext* globalCtx, Actor* refActor, f32 arg2) {
    Actor_80033780* itemActor;
    Vec3f spA8;
    f32 deltaX;
    f32 deltaY;
    f32 deltaZ;
    Vec3f sp90;
    Vec3f sp84;
    Actor* actor;

    actor = globalCtx->actorCtx.actorList[ACTORTYPE_ITEMACTION].first;
    while (actor != NULL) {
        if (((actor->id != ACTOR_ARMS_HOOK) && (actor->id != ACTOR_EN_ARROW)) || (actor == refActor)) {
            actor = actor->next;
        } else {
            itemActor = (Actor_80033780*)actor;
            if ((arg2 < Math_Vec3f_DistXYZ(&refActor->posRot.pos, &itemActor->actor.posRot.pos)) ||
                (itemActor->unk_210 == 0)) {
                actor = actor->next;
            } else {
                deltaX = Math_Sins(itemActor->actor.posRot.rot.y) * (itemActor->actor.speedXZ * 10.0f);
                deltaY = itemActor->actor.velocity.y + (itemActor->actor.gravity * 10.0f);
                deltaZ = Math_Coss(itemActor->actor.posRot.rot.y) * (itemActor->actor.speedXZ * 10.0f);

                spA8.x = itemActor->actor.posRot.pos.x + deltaX;
                spA8.y = itemActor->actor.posRot.pos.y + deltaY;
                spA8.z = itemActor->actor.posRot.pos.z + deltaZ;

                if (func_80062ECC(refActor->colChkInfo.unk_10, refActor->colChkInfo.unk_12, 0.0f, &refActor->posRot.pos,
                                  &itemActor->actor.posRot.pos, &spA8, &sp90, &sp84)) {
                    return itemActor;
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
void Actor_SetTextWithPrefix(GlobalContext* globalCtx, Actor* actor, s16 baseTextId) {
    s16 prefix;

    switch (globalCtx->sceneNum) {
        case SCENE_YDAN:
        case SCENE_YDAN_BOSS:
        case SCENE_MORIBOSSROOM:
        case SCENE_KOKIRI_HOME:
        case SCENE_KOKIRI_HOME3:
        case SCENE_KOKIRI_HOME4:
        case SCENE_KOKIRI_HOME5:
        case SCENE_KOKIRI_SHOP:
        case SCENE_LINK_HOME:
        case SCENE_SPOT04:
        case SCENE_SPOT05:
        case SCENE_SPOT10:
        case 112:
            prefix = 0x1000;
            break;
        case SCENE_MALON_STABLE:
        case SCENE_SPOT00:
        case SCENE_SPOT20:
            prefix = 0x2000;
            break;
        case SCENE_HIDAN:
        case SCENE_DDAN_BOSS:
        case SCENE_FIRE_BS:
        case SCENE_SPOT16:
        case SCENE_SPOT17:
        case SCENE_SPOT18:
            prefix = 0x3000;
            break;
        case SCENE_BDAN:
        case SCENE_BDAN_BOSS:
        case SCENE_SPOT03:
        case SCENE_SPOT07:
        case SCENE_SPOT08:
            prefix = 0x4000;
            break;
        case SCENE_HAKADAN:
        case SCENE_HAKADAN_BS:
        case SCENE_KAKARIKO:
        case SCENE_KAKARIKO3:
        case SCENE_IMPA:
        case SCENE_HUT:
        case SCENE_HAKAANA:
        case SCENE_HAKASITARELAY:
        case SCENE_SPOT01:
        case SCENE_SPOT02:
            prefix = 0x5000;
            break;
        case SCENE_JYASINZOU:
        case SCENE_JYASINBOSS:
        case SCENE_LABO:
        case SCENE_TENT:
        case SCENE_SPOT06:
        case SCENE_SPOT09:
        case SCENE_SPOT11:
            prefix = 0x6000;
            break;
        case SCENE_ENTRA:
        case SCENE_MARKET_ALLEY:
        case SCENE_MARKET_ALLEY_N:
        case SCENE_MARKET_DAY:
        case SCENE_MARKET_NIGHT:
        case SCENE_MARKET_RUINS:
        case SCENE_SPOT15:
            prefix = 0x7000;
            break;
        default:
            prefix = 0x0000;
            break;
    }

    actor->textId = prefix | baseTextId;
}

s16 func_800339B8(Actor* actor, GlobalContext* globalCtx, f32 arg2, s16 arg3) {
    s16 ret;
    s16 sp44;
    f32 sp40;
    f32 sp3C;
    Vec3f sp30;

    Math_Vec3f_Copy(&sp30, &actor->posRot.pos);
    sp44 = actor->bgCheckFlags;
    sp40 = Math_Sins(arg3) * arg2;
    sp3C = Math_Coss(arg3) * arg2;
    actor->posRot.pos.x += sp40;
    actor->posRot.pos.z += sp3C;
    func_8002E4B4(globalCtx, actor, 0.0f, 0.0f, 0.0f, 4);
    Math_Vec3f_Copy(&actor->posRot.pos, &sp30);

    ret = actor->bgCheckFlags & 1;
    actor->bgCheckFlags = sp44;

    return ret;
}

s32 func_80033A84(GlobalContext* globalCtx, Actor* actor) {
    Player* player = PLAYER;

    if ((player->stateFlags1 & 0x10) && (actor->unk_10C != 0)) {
        return 1;
    } else {
        return 0;
    }
}

s32 func_80033AB8(GlobalContext* globalCtx, Actor* actor) {
    Player* player = PLAYER;

    if ((player->stateFlags1 & 0x10) && (actor->unk_10C == 0)) {
        return 1;
    } else {
        return 0;
    }
}

f32 func_80033AEC(Vec3f* arg0, Vec3f* arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5) {
    f32 ret = 0.0f;

    if (arg4 <= Math_Vec3f_DistXYZ(arg0, arg1)) {
        ret = Math_SmoothScaleMaxMinF(&arg1->x, arg0->x, arg2, arg3, 0.0f);
        ret += Math_SmoothScaleMaxMinF(&arg1->y, arg0->y, arg2, arg3, 0.0f);
        ret += Math_SmoothScaleMaxMinF(&arg1->z, arg0->z, arg2, arg3, 0.0f);
    } else if (arg5 < Math_Vec3f_DistXYZ(arg0, arg1)) {
        ret = Math_SmoothScaleMaxMinF(&arg1->x, arg0->x, arg2, arg3, 0.0f);
        ret += Math_SmoothScaleMaxMinF(&arg1->y, arg0->y, arg2, arg3, 0.0f);
        ret += Math_SmoothScaleMaxMinF(&arg1->z, arg0->z, arg2, arg3, 0.0f);
    }

    return ret;
}

void func_80033C30(Vec3f* arg0, Vec3f* arg1, u8 alpha, GlobalContext* globalCtx) {
    MtxF sp60;
    f32 var;
    Vec3f sp50;
    CollisionPoly* sp4C;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 8120);

    if (0) {} // Necessary to match

    oGfxCtx->polyOpa.p = Gfx_CallSetupDL(oGfxCtx->polyOpa.p, 0x2C);

    gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, 0, 0, 0, alpha);

    sp50.x = arg0->x;
    sp50.y = arg0->y + 1.0f;
    sp50.z = arg0->z;

    var = func_8003C8EC(globalCtx, &globalCtx->colCtx, &sp4C, &sp50);

    if (sp4C != NULL) {
        func_80038A28(sp4C, arg0->x, var, arg0->z, &sp60);
        Matrix_Put(&sp60);
    } else {
        Matrix_Translate(arg0->x, arg0->y, arg0->z, MTXMODE_NEW);
    }

    Matrix_Scale(arg1->x, 1.0f, arg1->z, MTXMODE_APPLY);

    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_actor.c", 8149),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(oGfxCtx->polyOpa.p++, &D_04049210);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 8155);
}

void func_80033DB8(GlobalContext* globalCtx, s16 arg1, s16 arg2) {
    s16 var = Quake_Add(&globalCtx->mainCamera, 3);
    Quake_SetSpeed(var, 20000);
    Quake_SetQuakeValues(var, arg1, 0, 0, 0);
    Quake_SetCountdown(var, arg2);
}

void func_80033E1C(GlobalContext* globalCtx, s16 arg1, s16 arg2, s16 arg3) {
    s16 var = Quake_Add(&globalCtx->mainCamera, 3);
    Quake_SetSpeed(var, arg3);
    Quake_SetQuakeValues(var, arg1, 0, 0, 0);
    Quake_SetCountdown(var, arg2);
}

void func_80033E88(Actor* actor, GlobalContext* globalCtx, s16 arg2, s16 arg3) {
    if (arg2 >= 5) {
        func_800AA000(actor->xyzDistFromLinkSq, 0xFF, 0x14, 0x96);
    } else {
        func_800AA000(actor->xyzDistFromLinkSq, 0xB4, 0x14, 0x64);
    }

    func_80033DB8(globalCtx, arg2, arg3);
}

f32 Math_Rand_ZeroFloat(f32 f) {
    return Math_Rand_ZeroOne() * f;
}

f32 Math_Rand_CenteredFloat(f32 f) {
    return (Math_Rand_ZeroOne() - 0.5f) * f;
}

typedef struct {
    /* 0x00 */ f32 unk_00;
    /* 0x04 */ f32 unk_04;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ u32 unk_14;
    /* 0x18 */ u32 unk_18;
} struct_801160DC; // size = 0x1C

struct_801160DC D_801160DC[] = {
    { 0.54f, 6000.0f, 5000.0f, 1.0f, 0.0f, 0x050011F0, 0x05001100 },
    { 0.644f, 12000.0f, 8000.0f, 1.0f, 0.0f, 0x06001530, 0x06001400 },
    { 0.64000005f, 8500.0f, 8000.0f, 1.75f, 0.1f, 0x050011F0, 0x05001100 },
};

void func_80033F54(GlobalContext* globalCtx, s32 arg1, s32 arg2) {
    struct_801160DC* entry;
    s32 i;
    MtxF spB0;
    f32 var;
    f32 temp1;
    f32 temp2;
    f32 temp3;

    entry = &D_801160DC[arg2];
    var = entry->unk_10;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 8265);

    Matrix_Translate(0.0f, entry->unk_08, 500.0f, MTXMODE_APPLY);
    Matrix_Get(&spB0);

    temp1 = sinf(entry->unk_00 - var) * -(10 - arg1) * 0.1f * entry->unk_04;
    temp2 = cosf(entry->unk_00 - var) * (10 - arg1) * 0.1f * entry->unk_04;

    for (i = 0; i < 4; i++) {
        Matrix_Put(&spB0);
        Matrix_RotateZ(var, MTXMODE_APPLY);
        Matrix_Translate(temp1, temp2, 0.0f, MTXMODE_APPLY);

        if (entry->unk_0C != 1.0f) {
            Matrix_Scale(entry->unk_0C, entry->unk_0C, entry->unk_0C, MTXMODE_APPLY);
        }

        gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_actor.c", 8299),
                  G_MTX_MODELVIEW | G_MTX_LOAD);
        gSPDisplayList(oGfxCtx->polyOpa.p++, entry->unk_14);

        if (i % 2) {
            temp3 = entry->unk_00 + entry->unk_00;
        } else {
            temp3 = M_PI - (entry->unk_00 + entry->unk_00);
        }

        var += temp3;
    }

    Matrix_Put(&spB0);
    Matrix_Scale(arg1 * 0.1f, arg1 * 0.1f, arg1 * 0.1f, MTXMODE_APPLY);

    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_actor.c", 8314),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(oGfxCtx->polyOpa.p++, entry->unk_18);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 8319);
}

void func_8003424C(GlobalContext* globalCtx, Vec3f* arg1) {
    func_80062D60(globalCtx, arg1);
}

void func_8003426C(Actor* actor, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
    if ((arg1 == 0x8000) && !(arg2 & 0x8000)) {
        Audio_PlayActorSound2(actor, NA_SE_EN_LIGHT_ARROW_HIT);
    }

    actor->dmgEffectParams = arg1 | arg3 | ((arg2 & 0xF8) << 5) | arg4;
    actor->dmgEffectTimer = arg4;
}

Hilite* func_800342EC(Vec3f* object, GlobalContext* globalCtx) {
    Vec3f lightDir;

    lightDir.x = globalCtx->envCtx.unk_2A;
    lightDir.y = globalCtx->envCtx.unk_2B;
    lightDir.z = globalCtx->envCtx.unk_2C;

    return func_8002EABC(object, &globalCtx->view.eye, &lightDir, globalCtx->state.gfxCtx);
}

Hilite* func_8003435C(Vec3f* object, GlobalContext* globalCtx) {
    Vec3f lightDir;

    lightDir.x = globalCtx->envCtx.unk_2A;
    lightDir.y = globalCtx->envCtx.unk_2B;
    lightDir.z = globalCtx->envCtx.unk_2C;

    return func_8002EB44(object, &globalCtx->view.eye, &lightDir, globalCtx->state.gfxCtx);
}

s32 func_800343CC(GlobalContext* globalCtx, Actor* actor, s16* arg2, f32 arg3, callback1_800343CC unkFunc1,
                  callback2_800343CC unkFunc2) {
    s16 sp26;
    s16 sp24;

    if (func_8002F194(actor, globalCtx)) {
        *arg2 = 1;
        return 1;
    }

    if (*arg2 != 0) {
        *arg2 = unkFunc2(globalCtx, actor);
        return 0;
    }

    func_8002F374(globalCtx, actor, &sp26, &sp24);

    if ((sp26 < 0) || (sp26 > SCREEN_WIDTH) || (sp24 < 0) || (sp24 > SCREEN_HEIGHT)) {
        return 0;
    }

    if (!func_8002F2CC(actor, globalCtx, arg3)) {
        return 0;
    }

    actor->textId = unkFunc1(globalCtx, actor);

    return 0;
}

typedef struct {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ s16 unk_04;
    /* 0x06 */ s16 unk_06;
    /* 0x08 */ s16 unk_08;
    /* 0x0A */ s16 unk_0A;
    /* 0x0C */ u8 unk_0C;
} struct_80116130_0; // size = 0x10

typedef struct {
    /* 0x00 */ struct_80116130_0 sub_00;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ s16 unk_14;
} struct_80116130; // size = 0x18

struct_80116130 D_80116130[] = {
    { { 0x2AA8, 0xF1C8, 0x18E2, 0x1554, 0x0000, 0x0000, 1 }, 170.0f, 0x3FFC },
    { { 0x2AA8, 0xEAAC, 0x1554, 0x1554, 0xF8E4, 0x0E38, 1 }, 170.0f, 0x3FFC },
    { { 0x31C4, 0xE390, 0x0E38, 0x0E38, 0xF1C8, 0x071C, 1 }, 170.0f, 0x3FFC },
    { { 0x1554, 0xF1C8, 0x0000, 0x071C, 0xF8E4, 0x0000, 1 }, 170.0f, 0x3FFC },
    { { 0x2AA8, 0xF8E4, 0x071C, 0x0E38, 0xD558, 0x2AA8, 1 }, 170.0f, 0x3FFC },
    { { 0x0000, 0xE390, 0x2AA8, 0x3FFC, 0xF1C8, 0x0E38, 1 }, 170.0f, 0x3FFC },
    { { 0x2AA8, 0xF1C8, 0x0E38, 0x0E38, 0x0000, 0x0000, 1 }, 0.0f, 0x0000 },
    { { 0x2AA8, 0xF1C8, 0x0000, 0x0E38, 0x0000, 0x1C70, 1 }, 0.0f, 0x0000 },
    { { 0x2AA8, 0xF1C8, 0xF1C8, 0x0000, 0x0000, 0x0000, 1 }, 0.0f, 0x0000 },
    { { 0x071C, 0xF1C8, 0x0E38, 0x1C70, 0x0000, 0x0000, 1 }, 0.0f, 0x0000 },
    { { 0x0E38, 0xF1C8, 0x0000, 0x1C70, 0x0000, 0x0E38, 1 }, 0.0f, 0x0000 },
    { { 0x2AA8, 0xE390, 0x1C70, 0x0E38, 0xF1C8, 0x0E38, 1 }, 0.0f, 0x0000 },
    { { 0x18E2, 0xF1C8, 0x0E38, 0x0E38, 0x0000, 0x0000, 1 }, 0.0f, 0x0000 },
};

#ifdef NON_MATCHING
// regalloc differences
void func_800344BC(Actor* actor, struct_80034A14_arg1* arg1, s16 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6, s16 arg7,
                   u8 arg8) {
    s16 sp46;
    s16 sp44;
    s16 temp2;
    s16 sp40;
    s16 temp1;
    Vec3f sp30;

    sp30.x = actor->posRot.pos.x;
    sp30.y = actor->posRot.pos.y + arg1->unk_14;
    sp30.z = actor->posRot.pos.z;

    sp46 = Math_Vec3f_Pitch(&sp30, &arg1->unk_18);
    sp44 = Math_Vec3f_Yaw(&sp30, &arg1->unk_18);
    sp40 = Math_Vec3f_Yaw(&actor->posRot.pos, &arg1->unk_18) - actor->shape.rot.y;

    temp1 = CLAMP(sp40, -arg2, arg2);
    Math_SmoothScaleMaxMinS(&arg1->unk_08.y, temp1, 6, 2000, 1);

    sp40 = (ABS(sp40) >= 0x8000) ? 0 : ABS(sp40);
    arg1->unk_08.y = CLAMP(arg1->unk_08.y, -sp40, sp40);

    sp40 = sp40 - arg1->unk_08.y;

    temp1 = CLAMP(sp40, -arg5, arg5);
    Math_SmoothScaleMaxMinS(&arg1->unk_0E.y, temp1, 6, 2000, 1);

    sp40 = (ABS(sp40) >= 0x8000) ? 0 : ABS(sp40);
    arg1->unk_0E.y = CLAMP(arg1->unk_0E.y, -sp40, sp40);

    if (arg8 != 0) {
        if (arg3) {} // Seems necessary to match
        Math_SmoothScaleMaxMinS(&actor->shape.rot.y, sp44, 6, 2000, 1);
    }

    temp1 = CLAMP(sp46, arg4, arg3);
    Math_SmoothScaleMaxMinS(&arg1->unk_08.x, temp1, 6, 2000, 1);

    temp2 = sp46 - arg1->unk_08.x;

    temp1 = CLAMP(temp2, arg7, arg6);
    Math_SmoothScaleMaxMinS(&arg1->unk_0E.x, temp1, 6, 2000, 1);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_actor/func_800344BC.s")
#endif

s16 func_800347E8(s16 arg0) {
    return D_80116130[arg0].unk_14;
}

s16 func_80034810(Actor* actor, struct_80034A14_arg1* arg1, f32 arg2, s16 arg3, s16 arg4) {
    s32 pad;
    s16 var;
    s16 abs_var;

    if (arg4 != 0) {
        return arg4;
    }

    if (arg1->unk_00 != 0) {
        return 4;
    }

    if (arg2 < Math_Vec3f_DistXYZ(&actor->posRot.pos, &arg1->unk_18)) {
        arg1->unk_04 = 0;
        arg1->unk_06 = 0;
        return 1;
    }

    var = Math_Vec3f_Yaw(&actor->posRot.pos, &arg1->unk_18);
    abs_var = ABS((s16)((f32)var - actor->shape.rot.y));
    if (arg3 >= abs_var) {
        arg1->unk_04 = 0;
        arg1->unk_06 = 0;
        return 2;
    }

    if (DECR(arg1->unk_04) != 0) {
        return arg1->unk_02;
    }

    switch (arg1->unk_06) {
        case 0:
        case 2:
            arg1->unk_04 = Math_Rand_S16Offset(30, 30);
            arg1->unk_06++;
            return 1;
        case 1:
            arg1->unk_04 = Math_Rand_S16Offset(10, 10);
            arg1->unk_06++;
            return 3;
    }

    return 4;
}

void func_80034A14(Actor* actor, struct_80034A14_arg1* arg1, s16 arg2, s16 arg3) {
    struct_80116130_0 sp38;

    arg1->unk_02 = func_80034810(actor, arg1, D_80116130[arg2].unk_10, D_80116130[arg2].unk_14, arg3);

    sp38 = D_80116130[arg2].sub_00;

    switch (arg1->unk_02) {
        case 1:
            sp38.unk_00 = 0;
            sp38.unk_04 = 0;
            sp38.unk_02 = 0;
        case 3:
            sp38.unk_06 = 0;
            sp38.unk_0A = 0;
            sp38.unk_08 = 0;
        case 2:
            sp38.unk_0C = 0;
    }

    func_800344BC(actor, arg1, sp38.unk_00, sp38.unk_04, sp38.unk_02, sp38.unk_06, sp38.unk_0A, sp38.unk_08,
                  sp38.unk_0C);
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

void func_80034BA0(GlobalContext* globalCtx, SkelAnime* skelAnime, OverrideLimbDraw2 overrideLimbDraw,
                   PostLimbDraw2 postLimbDraw, Actor* actor, s16 alpha) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 8831);

    func_80093D18(globalCtx->state.gfxCtx);

    gDPPipeSync(oGfxCtx->polyOpa.p++);
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0, 0, 0, alpha);
    gDPPipeSync(oGfxCtx->polyOpa.p++);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x0C, func_80034B28(globalCtx->state.gfxCtx));

    oGfxCtx->polyOpa.p =
        SkelAnime_DrawSV2(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                          overrideLimbDraw, postLimbDraw, actor, oGfxCtx->polyOpa.p);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 8860);
}

void func_80034CC4(GlobalContext* globalCtx, SkelAnime* skelAnime, OverrideLimbDraw2 overrideLimbDraw,
                   PostLimbDraw2 postLimbDraw, Actor* actor, s16 alpha) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 8876);

    func_80093D84(globalCtx->state.gfxCtx);

    gDPPipeSync(oGfxCtx->polyXlu.p++);
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0, 0, 0, alpha);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x0C, func_80034B54(globalCtx->state.gfxCtx));

    oGfxCtx->polyXlu.p =
        SkelAnime_DrawSV2(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                          overrideLimbDraw, postLimbDraw, actor, oGfxCtx->polyXlu.p);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_actor.c", 8904);
}

s16 func_80034DD4(Actor* actor, GlobalContext* globalCtx, s16 arg2, f32 arg3) {
    Player* player = PLAYER;
    f32 var;

    if ((globalCtx->csCtx.state != 0) || (D_8011D394 != 0)) {
        var = Math_Vec3f_DistXYZ(&actor->posRot.pos, &globalCtx->view.eye) * 0.25f;
    } else {
        var = Math_Vec3f_DistXYZ(&actor->posRot.pos, &player->actor.posRot.pos);
    }

    if (arg3 < var) {
        actor->flags &= ~1;
        Math_SmoothScaleMaxMinS(&arg2, 0, 6, 0x14, 1);
    } else {
        actor->flags |= 1;
        Math_SmoothScaleMaxMinS(&arg2, 0xFF, 6, 0x14, 1);
    }

    return arg2;
}

void func_80034EC0(SkelAnime* skelAnime, struct_80034EC0_Entry* arg1, s32 arg2) {
    f32 frameCount;

    arg1 += arg2;

    if (arg1->frameCount > 0.0f) {
        frameCount = arg1->frameCount;
    } else {
        frameCount = SkelAnime_GetFrameCount(arg1->animation);
    }

    SkelAnime_ChangeAnim(skelAnime, arg1->animation, arg1->playbackSpeed, arg1->unk_08, frameCount, arg1->unk_10,
                         arg1->transitionRate);
}

void func_80034F54(GlobalContext* globalCtx, s16* arg1, s16* arg2, s32 arg3) {
    u32 frames = globalCtx->gameplayFrames;
    s32 i;

    for (i = 0; i < arg3; i++) {
        arg1[i] = (0x814 + 50 * i) * frames;
        arg2[i] = (0x940 + 50 * i) * frames;
    }
}

void Actor_Noop(Actor* actor, GlobalContext* globalCtx) {
}

s32 func_80035124(Actor* actor, GlobalContext* globalCtx) {
    s32 ret = 0;

    switch (actor->params) {
        case 0:
            if (Actor_HasParent(actor, globalCtx)) {
                actor->params = 1;
            } else if (!(actor->bgCheckFlags & 1)) {
                Actor_MoveForward(actor);
                Math_SmoothScaleMaxMinF(&actor->speedXZ, 0.0f, 1.0f, 0.1f, 0.0f);
            } else if ((actor->bgCheckFlags & 2) && (actor->velocity.y < -4.0f)) {
                ret = 1;
            } else {
                actor->shape.rot.x = actor->shape.rot.z = 0;
                func_8002F580(actor, globalCtx);
            }
            break;
        case 1:
            if (Actor_HasNoParent(actor, globalCtx)) {
                actor->params = 0;
            }
            break;
    }

    func_8002E4B4(globalCtx, actor, actor->colChkInfo.unk_12, actor->colChkInfo.unk_10, actor->colChkInfo.unk_10, 0x1D);

    return ret;
}

#include "z_cheap_proc.c"

u8 func_800353E8(GlobalContext* globalCtx) {
    Player* player = PLAYER;

    return player->unk_845;
}

/**
 * Finds the first actor instance of a specified id and type within a given range from an actor if there is one.
 * If the id provided is -1, this will look for any actor of the specified type rather than a specific id.
 */
Actor* Actor_FindNearby(GlobalContext* globalCtx, Actor* refActor, s16 actorId, u8 actorType, f32 range) {
    Actor* actor = globalCtx->actorCtx.actorList[actorType].first;

    while (actor != NULL) {
        if (actor == refActor || ((actorId != -1) && (actorId != actor->id))) {
            actor = actor->next;
        } else {
            if (func_8002DB48(refActor, actor) <= range) {
                return actor;
            } else {
                actor = actor->next;
            }
        }
    }

    return NULL;
}

s32 func_800354B4(GlobalContext* globalCtx, Actor* actor, f32 range, s16 arg3, s16 arg4, s16 arg5) {
    Player* player = PLAYER;
    s16 var1;
    s16 var2;

    var1 = (s16)(actor->yawTowardsLink + 0x8000) - player->actor.shape.rot.y;
    var2 = actor->yawTowardsLink - arg5;

    if ((actor->xzDistFromLink <= range) && (player->swordState != 0) && (arg4 >= ABS(var1)) && (arg3 >= ABS(var2))) {
        return 1;
    } else {
        return 0;
    }
}

void func_8003555C(GlobalContext* globalCtx, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3) {
    Color_RGB8 color1;
    Color_RGB8 color2;

    color1.r = 200;
    color1.g = 160;
    color1.b = 120;

    color2.r = 130;
    color2.g = 90;
    color2.b = 50;

    func_80028B74(globalCtx, arg1, arg2, arg3, &color1, &color2);
}

Vec3f D_80116268 = { 0.0f, -1.5f, 0.0f };
Vec3f D_80116274 = { 0.0f, -0.2f, 0.0f };

Gfx D_80116280[] = {
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, AA_EN | Z_CMP | Z_UPD | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_XLU |
                                            FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA)),
    gsDPSetAlphaCompare(G_AC_THRESHOLD),
    gsSPEndDisplayList(),
};

void func_800355B8(GlobalContext* globalCtx, Vec3f* arg1) {
    func_8003555C(globalCtx, arg1, &D_80116268, &D_80116274);
}

u8 func_800355E4(GlobalContext* globalCtx, Collider* collider) {
    Player* player = PLAYER;

    if ((collider->acFlags & 0x08) && (player->swordState != 0) && (player->swordAnimation == 0x16)) {
        return 1;
    } else {
        return 0;
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

void func_80035650(Actor* actor, ColliderBody* colBody, s32 freezeFlag) {
    if (colBody->acHitItem == NULL) {
        actor->unk_116 = 0x00;
    } else if (freezeFlag && (colBody->acHitItem->toucher.flags & 0x10060000)) {
        actor->freezeTimer = colBody->acHitItem->toucher.damage;
        actor->unk_116 = 0x00;
    } else if (colBody->acHitItem->toucher.flags & 0x0800) {
        actor->unk_116 = 0x01;
    } else if (colBody->acHitItem->toucher.flags & 0x1000) {
        actor->unk_116 = 0x02;
    } else if (colBody->acHitItem->toucher.flags & 0x4000) {
        actor->unk_116 = 0x04;
    } else if (colBody->acHitItem->toucher.flags & 0x8000) {
        actor->unk_116 = 0x08;
    } else if (colBody->acHitItem->toucher.flags & 0x10000) {
        actor->unk_116 = 0x10;
    } else if (colBody->acHitItem->toucher.flags & 0x2000) {
        actor->unk_116 = 0x20;
    } else if (colBody->acHitItem->toucher.flags & 0x80000) {
        if (freezeFlag) {
            actor->freezeTimer = colBody->acHitItem->toucher.damage;
        }
        actor->unk_116 = 0x40;
    } else {
        actor->unk_116 = 0x00;
    }
}

void func_8003573C(Actor* actor, ColliderJntSph* jntSph, s32 freezeFlag) {
    ColliderBody* curColBody;
    s32 flag;
    s32 i;

    actor->unk_116 = 0x00;

    for (i = jntSph->count - 1; i >= 0; i--) {
        curColBody = &jntSph->list[i].body;
        if (curColBody->acHitItem == NULL) {
            flag = 0x00;
        } else if (freezeFlag && (curColBody->acHitItem->toucher.flags & 0x10060000)) {
            actor->freezeTimer = curColBody->acHitItem->toucher.damage;
            flag = 0x00;
        } else if (curColBody->acHitItem->toucher.flags & 0x0800) {
            flag = 0x01;
        } else if (curColBody->acHitItem->toucher.flags & 0x1000) {
            flag = 0x02;
        } else if (curColBody->acHitItem->toucher.flags & 0x4000) {
            flag = 0x04;
        } else if (curColBody->acHitItem->toucher.flags & 0x8000) {
            flag = 0x08;
        } else if (curColBody->acHitItem->toucher.flags & 0x10000) {
            flag = 0x10;
        } else if (curColBody->acHitItem->toucher.flags & 0x2000) {
            flag = 0x20;
        } else if (curColBody->acHitItem->toucher.flags & 0x80000) {
            if (freezeFlag) {
                actor->freezeTimer = curColBody->acHitItem->toucher.damage;
            }
            flag = 0x40;
        } else {
            flag = 0x00;
        }
        actor->unk_116 |= flag;
    }
}

void func_80035844(Vec3f* arg0, Vec3f* arg1, s16* arg2, s32 arg3) {
    f32 dx = arg1->x - arg0->x;
    f32 dz = arg1->z - arg0->z;
    f32 dy = arg3 ? (arg1->y - arg0->y) : (arg0->y - arg1->y);

    arg2[1] = atan2s(dz, dx);
    arg2[0] = atan2s(sqrtf(SQ(dx) + SQ(dz)), dy);
}

/**
 * Spawns En_Part (Dissipating Flames) actor as a child of the given actor.
 */
EnPart* func_800358DC(Actor* actor, Vec3f* spawnPos, Vec3s* spawnRot, Vec3f* arg3, s32 arg4, s32 unused,
                      GlobalContext* globalCtx, s16 params, s32 arg8) {
    EnPart* spawnedEnPart;

    spawnedEnPart =
        (EnPart*)Actor_SpawnAsChild(&globalCtx->actorCtx, actor, globalCtx, ACTOR_EN_PART, spawnPos->x, spawnPos->y,
                                    spawnPos->z, spawnRot->x, spawnRot->y, actor->objBankIndex, params);
    if (spawnedEnPart != NULL) {
        spawnedEnPart->actor.scale = actor->scale;
        spawnedEnPart->actor.speedXZ = arg3->x;
        spawnedEnPart->unk_150 = arg8;
        spawnedEnPart->unk_14C = 2;
        spawnedEnPart->unk_14E = arg4;
        spawnedEnPart->unk_154 = arg3->y;
        spawnedEnPart->unk_158 = arg3->z;
        return spawnedEnPart;
    }

    return NULL;
}

void func_800359B8(Actor* actor, s16 arg1, Vec3s* arg2) {
    f32 sp44;
    f32 sp40;
    f32 sp3C;
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
        sp44 = floorPoly->norm.x * (1.0f / 32767);
        sp40 = floorPoly->norm.y * (1.0f / 32767);
        sp3C = floorPoly->norm.z * (1.0f / 32767);

        sp38 = Math_Sins(arg1);
        sp34 = Math_Coss(arg1);
        sp28 = (-(sp44 * sp38) - (sp3C * sp34));
        arg2->x = -(s16)(Math_atan2f(sp28 * sp40, 1.0f) * (32768 / M_PI));

        sp2C = Math_Sins(arg1 - 16375);
        sp30 = Math_Coss(arg1 - 16375);
        sp24 = (-(sp44 * sp2C) - (sp3C * sp30));
        arg2->z = -(s16)(Math_atan2f(sp24 * sp40, 1.0f) * (32768 / M_PI));
    }
}

void func_80035B18(GlobalContext* globalCtx, Actor* actor, u16 textId) {
    func_8010B720(globalCtx, textId);
    actor->textId = textId;
}

/**
 * Tests if event_chk_inf flag is set.
 */
s32 Flags_GetEventChkInf(s32 flag) {
    return gSaveContext.eventChkInf[flag >> 4] & (1 << (flag & 0xF));
}

/**
 * Sets event_chk_inf flag.
 */
void Flags_SetEventChkInf(s32 flag) {
    gSaveContext.eventChkInf[flag >> 4] |= (1 << (flag & 0xF));
}

/**
 * Tests if "inf_table flag is set.
 */
s32 Flags_GetInfTable(s32 flag) {
    return gSaveContext.infTable[flag >> 4] & (1 << (flag & 0xF));
}

/**
 * Sets "inf_table" flag.
 */
void Flags_SetInfTable(s32 flag) {
    gSaveContext.infTable[flag >> 4] |= (1 << (flag & 0xF));
}

u32 func_80035BFC(GlobalContext* globalCtx, s16 arg1) {
    u16 retTextId = 0;

    switch (arg1) {
        case 0:
            if (Flags_GetEventChkInf(0x9)) {
                if (Flags_GetInfTable(0x5)) {
                    retTextId = 0x1048;
                } else {
                    retTextId = 0x1047;
                }
            } else {
                if (Flags_GetEventChkInf(0x2)) {
                    if (Flags_GetInfTable(0x3)) {
                        retTextId = 0x1032;
                    } else {
                        retTextId = 0x1031;
                    }
                } else {
                    if (Flags_GetInfTable(0x0)) {
                        if (Flags_GetInfTable(0x1)) {
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
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x9)) {
                    if (Flags_GetInfTable(0x10)) {
                        retTextId = 0x1046;
                    } else {
                        retTextId = 0x1045;
                    }
                } else {
                    if (Flags_GetEventChkInf(0x3)) {
                        if (Flags_GetInfTable(0xE)) {
                            retTextId = 0x1034;
                        } else {
                            retTextId = 0x1033;
                        }
                    } else {
                        if (Flags_GetInfTable(0xC)) {
                            retTextId = 0x1030;
                        } else {
                            retTextId = 0x102F;
                        }
                    }
                }
            } else {
                if (Flags_GetEventChkInf(0x5C)) {
                    if (Flags_GetInfTable(0x19)) {
                        retTextId = 0x1071;
                    } else {
                        retTextId = 0x1070;
                    }
                } else {
                    if (Flags_GetEventChkInf(0xB)) {
                        if (Flags_GetInfTable(0x17)) {
                            retTextId = 0x1068;
                        } else {
                            retTextId = 0x1067;
                        }
                    } else {
                        if (Flags_GetInfTable(0x15)) {
                            retTextId = 0x1061;
                        } else {
                            retTextId = 0x1060;
                        }
                    }
                }
            }
            break;
        case 2:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x9)) {
                    retTextId = 0x1042;
                } else {
                    retTextId = 0x1004;
                }
            } else {
                if (Flags_GetEventChkInf(0x5C)) {
                    retTextId = 0x1072;
                } else if (Flags_GetInfTable(0x41)) {
                    retTextId = 0x1055;
                } else {
                    retTextId = 0x1056;
                }
            }
            break;
        case 3:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x9)) {
                    retTextId = 0x1043;
                } else {
                    if (Flags_GetInfTable(0x1E)) {
                        retTextId = 0x1006;
                    } else {
                        retTextId = 0x1005;
                    }
                }
            } else {
                if (Flags_GetEventChkInf(0x5C)) {
                    retTextId = 0x1073;
                } else {
                    retTextId = 0x105A;
                }
            }
            break;
        case 4:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x9)) {
                    retTextId = 0x1042;
                } else {
                    retTextId = 0x1007;
                }
            } else {
                if (Flags_GetEventChkInf(0x5C)) {
                    retTextId = 0x1072;
                } else if (Flags_GetInfTable(0x47)) {
                    retTextId = 0x105E;
                } else {
                    retTextId = 0x105D;
                }
            }
            break;
        case 5:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x9)) {
                    retTextId = 0x1044;
                } else if (Flags_GetInfTable(0x22)) {
                    retTextId = 0x1009;
                } else {
                    retTextId = 0x1008;
                }
            } else {
                if (Flags_GetEventChkInf(0x5C)) {
                    retTextId = 0x1075;
                } else {
                    retTextId = 0x105B;
                }
            }
            break;
        case 6:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x9)) {
                    retTextId = 0x1042;
                } else if (Flags_GetInfTable(0x24)) {
                    retTextId = 0x100B;
                } else {
                    retTextId = 0x100A;
                }
            } else {
                if (Flags_GetEventChkInf(0x5C)) {
                    retTextId = 0x1056;
                } else {
                    retTextId = 0x105F;
                }
            }
            break;
        case 7:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x9)) {
                    retTextId = 0x1043;
                } else if (Flags_GetInfTable(0x26)) {
                    retTextId = 0x100D;
                } else {
                    retTextId = 0x100C;
                }
            } else {
                if (Flags_GetEventChkInf(0x5C)) {
                    retTextId = 0x1057;
                } else {
                    retTextId = 0x1057;
                }
            }
            break;
        case 8:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x9)) {
                    retTextId = 0x1043;
                } else if (Flags_GetInfTable(0x28)) {
                    retTextId = 0x1019;
                } else {
                    retTextId = 0x100E;
                }
            } else {
                if (Flags_GetEventChkInf(0x5C)) {
                    retTextId = 0x1077;
                } else if (Flags_GetInfTable(0x51)) {
                    retTextId = 0x1058;
                } else {
                    retTextId = 0x1059;
                }
            }
            break;
        case 9:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x9)) {
                    retTextId = 0x1049;
                } else {
                    retTextId = 0x1035;
                }
            } else {
                if (Flags_GetEventChkInf(0x5C)) {
                    retTextId = 0x1079;
                } else {
                    retTextId = 0x104e;
                }
            }
            break;
        case 10:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x9)) {
                    retTextId = 0x104A;
                } else {
                    retTextId = 0x1038;
                }
            } else {
                if (Flags_GetEventChkInf(0x5C)) {
                    retTextId = 0x1079;
                } else if (Flags_GetInfTable(0x59)) {
                    retTextId = 0x1050;
                } else {
                    retTextId = 0x104F;
                }
            }
            break;
        case 11:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x9)) {
                    retTextId = 0x104B;
                } else {
                    retTextId = 0x103C;
                }
            } else {
                if (Flags_GetEventChkInf(0x5C)) {
                    retTextId = 0x107b;
                } else {
                    retTextId = 0x1051;
                }
            }
            break;
        case 12:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x9)) {
                    retTextId = 0x104C;
                } else {
                    retTextId = 0x103D;
                }
            } else {
                if (Flags_GetEventChkInf(0x5C)) {
                    retTextId = 0x107C;
                } else {
                    retTextId = 0x1052;
                }
            }
            break;
        case 13:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x9)) {
                    retTextId = 0x104D;
                } else {
                    retTextId = 0x103E;
                }
            } else {
                if (Flags_GetEventChkInf(0x5C)) {
                    retTextId = 0x106E;
                } else if (Flags_GetInfTable(0x61)) {
                    retTextId = 0x1053;
                } else {
                    retTextId = 0x1054;
                }
            }
            break;
        case 15:
            if (Flags_GetEventChkInf(0x5C)) {
                retTextId = 0x1078;
            } else if (Flags_GetInfTable(0x66)) {
                retTextId = 0x1066;
            } else {
                retTextId = 0x1062;
            }
            break;
        case 16:
            if (globalCtx->sceneNum == SCENE_SPOT15) {
                retTextId = 0x7002;
            } else if (Flags_GetInfTable(0x6A)) {
                retTextId = 0x7004;
            } else if ((gSaveContext.dayTime >= 0x4000) && (gSaveContext.dayTime < 0xC556)) {
                retTextId = 0x7002;
            } else {
                retTextId = 0x7003;
            }
            break;
        case 17:
            if (Flags_GetEventChkInf(0x9) && Flags_GetEventChkInf(0x25) && Flags_GetEventChkInf(0x37)) {
                if (Flags_GetInfTable(0x6c)) {
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
            if (Flags_GetEventChkInf(0x9) && Flags_GetEventChkInf(0x25) && Flags_GetEventChkInf(0x37)) {
                retTextId = 0x7006;
            } else {
                if (Flags_GetEventChkInf(0x12)) {
                    if (Flags_GetInfTable(0x71)) {
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
            if (Flags_GetEventChkInf(0x42)) {
                retTextId = 0x2012;
            } else if (Flags_GetEventChkInf(0x41)) {
                if (Flags_GetInfTable(0x76)) {
                    retTextId = 0x2011;
                } else {
                    retTextId = 0x2010;
                }
            } else if (Flags_GetEventChkInf(0x40)) {
                retTextId = 0x200F;
            } else {
                retTextId = 0x200E;
            }
            break;
        case 24:
            if (Flags_GetEventChkInf(0x9) && Flags_GetEventChkInf(0x25) && Flags_GetEventChkInf(0x37)) {
                retTextId = 0x7044;
            } else {
                retTextId = 0x7015;
            }
            break;
        case 25:
            if (Flags_GetEventChkInf(0x9) && Flags_GetEventChkInf(0x25) && Flags_GetEventChkInf(0x37)) {
                retTextId = 0x7045;
            } else {
                Flags_GetInfTable(0xC2);
                retTextId = 0x7016;
            }
            break;
        case 26:
            if (Flags_GetEventChkInf(0x9) && Flags_GetEventChkInf(0x25) && Flags_GetEventChkInf(0x37)) {
                retTextId = 0x7046;
            } else {
                Flags_GetInfTable(0xc2);
                retTextId = 0x7018;
            }
            break;
        case 27:
            if (Flags_GetEventChkInf(0x9) && Flags_GetEventChkInf(0x25) && Flags_GetEventChkInf(0x37)) {
                retTextId = 0x7047;
            } else if (Flags_GetEventChkInf(0x14)) {
                retTextId = 0x701A;
            } else if (Flags_GetEventChkInf(0x11)) {
                if (Flags_GetInfTable(0xC6)) {
                    retTextId = 0x701C;
                } else {
                    retTextId = 0x701B;
                }
            } else {
                retTextId = 0x701A;
            }
            break;
        case 28:
            if (Flags_GetEventChkInf(0x9) && Flags_GetEventChkInf(0x25) && Flags_GetEventChkInf(0x37)) {
                retTextId = 0x7048;
            } else {
                Flags_GetInfTable(0xca);
                retTextId = 0x701D;
            }
            break;
        case 29:
            if (Flags_GetEventChkInf(0x9) && Flags_GetEventChkInf(0x25) && Flags_GetEventChkInf(0x37)) {
                retTextId = 0x7049;
            } else {
                Flags_GetInfTable(0xcc);
                retTextId = 0x701F;
            }
            break;
        case 30:
            if (Flags_GetEventChkInf(0x9) && Flags_GetEventChkInf(0x25) && Flags_GetEventChkInf(0x37)) {
                retTextId = 0x704A;
            } else {
                Flags_GetInfTable(0xCE);
                retTextId = 0x7021;
            }
            break;
        case 31:
            if (Flags_GetEventChkInf(0x9) && Flags_GetEventChkInf(0x25) && Flags_GetEventChkInf(0x37)) {
                retTextId = 0x704B;
            } else {
                Flags_GetInfTable(0xD0);
                retTextId = 0x7023;
            }
            break;
        case 32:
            if (Flags_GetEventChkInf(0x9) && Flags_GetEventChkInf(0x25) && Flags_GetEventChkInf(0x37)) {
                retTextId = 0x704C;
            } else {
                Flags_GetInfTable(0xD2);
                retTextId = 0x7025;
            }
            break;
        case 33:
            if (Flags_GetEventChkInf(0x9) && Flags_GetEventChkInf(0x25) && Flags_GetEventChkInf(0x37)) {
                retTextId = 0x704D;
            } else {
                Flags_GetInfTable(0xD4);
                retTextId = 0x7027;
            }
            break;
        case 34:
            Flags_GetInfTable(0xD6);
            retTextId = 0x403C;
            break;
        case 35:
            if (Flags_GetInfTable(0xD8)) {
                retTextId = 0x5029;
            } else {
                retTextId = 0x5028;
            }
            break;
        case 37:
            retTextId = 0x5002;
            break;
        case 38:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x25)) {
                    retTextId = 0x3027;
                } else if (Flags_GetEventChkInf(0x23)) {
                    retTextId = 0x3021;
                } else if (Flags_GetInfTable(0xE0)) {
                    retTextId = 0x302A;
                } else {
                    retTextId = 0x3008;
                }
            } else {
                if (Flags_GetEventChkInf(0x20)) {
                    retTextId = 0x4043;
                } else {
                    retTextId = 0x302A;
                }
            }
            break;
        case 39:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x25)) {
                    retTextId = 0x3027;
                } else if (Flags_GetEventChkInf(0x23)) {
                    retTextId = 0x3026;
                } else {
                    retTextId = 0x3009;
                }
            } else {
                if (Flags_GetEventChkInf(0x2A)) {
                    retTextId = 0x4043;
                } else {
                    retTextId = 0x302A;
                }
            }
            break;
        case 40:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x25)) {
                    retTextId = 0x3027;
                } else if (Flags_GetEventChkInf(0x23)) {
                    retTextId = 0x3026;
                } else if (Flags_GetInfTable(0xEB)) {
                    retTextId = 0x302B;
                } else {
                    retTextId = 0x300A;
                }
            } else {
                if (Flags_GetEventChkInf(0x2B)) {
                    retTextId = 0x4043;
                } else {
                    retTextId = 0x302A;
                }
            }
            break;
        case 41:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x25)) {
                    retTextId = 0x3027;
                } else if (Flags_GetInfTable(0xF0)) {
                    retTextId = 0x3015;
                } else {
                    retTextId = 0x3014;
                }
            } else {
                if (Flags_GetEventChkInf(0x2C)) {
                    retTextId = 0x4043;
                } else {
                    retTextId = 0x302A;
                }
            }
            break;
        case 42:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x25)) {
                    retTextId = 0x3027;
                } else if (Flags_GetInfTable(0xF4)) {
                    retTextId = 0x3017;
                } else {
                    retTextId = 0x3016;
                }
            } else {
                if (Flags_GetEventChkInf(0x2C)) {
                    retTextId = 0x4043;
                } else {
                    retTextId = 0x302A;
                }
            }
            break;
        case 43:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x25)) {
                    retTextId = 0x3027;
                } else if (Flags_GetInfTable(0xF8)) {
                    retTextId = 0x3019;
                } else {
                    retTextId = 0x3018;
                }
            } else {
                if (Flags_GetEventChkInf(0x2D)) {
                    retTextId = 0x4043;
                } else {
                    retTextId = 0x302A;
                }
            }
            break;
        case 48:
            if (Flags_GetEventChkInf(0x25)) {
                retTextId = 0x3029;
            } else if (Flags_GetEventChkInf(0x20) && Flags_GetEventChkInf(0x21)) {
                retTextId = 0x301B;
            } else {
                retTextId = 0x301A;
            }
            break;
        case 49:
            if (Flags_GetEventChkInf(0x37)) {
                retTextId = 0x402D;
            } else if (Flags_GetEventChkInf(0x30)) {
                retTextId = 0x4007;
            } else {
                retTextId = 0x4006;
            }
            break;
        case 50:
            if (Flags_GetEventChkInf(0x37)) {
                retTextId = 0x402E;
            } else if (Flags_GetEventChkInf(0x30)) {
                if (Flags_GetInfTable(0x124)) {
                    retTextId = 0x4009;
                } else {
                    retTextId = 0x4008;
                }
            } else {
                retTextId = 0x4006;
            }
            break;
        case 51:
            if (Flags_GetEventChkInf(0x37)) {
                retTextId = 0x402D;
            } else if (Flags_GetEventChkInf(0x31)) {
                if (Flags_GetInfTable(0x12A)) {
                    retTextId = 0x400B;
                } else {
                    retTextId = 0x402F;
                }
            } else if (Flags_GetEventChkInf(0x30)) {
                retTextId = 0x400A;
            } else {
                retTextId = 0x4006;
            }
            break;
        case 52:
            if (Flags_GetEventChkInf(0x37)) {
                retTextId = 0x402E;
            } else if (Flags_GetEventChkInf(0x30)) {
                retTextId = 0x400C;
            } else {
                retTextId = 0x4006;
            }
            break;
        case 53:
            if (Flags_GetEventChkInf(0x37)) {
                retTextId = 0x402D;
            } else if (Flags_GetEventChkInf(0x33)) {
                retTextId = 0x4010;
            } else if (Flags_GetEventChkInf(0x30)) {
                retTextId = 0x400F;
            } else {
                retTextId = 0x4006;
            }
            break;
        case 54:
            if (Flags_GetEventChkInf(0x37)) {
                retTextId = 0x402E;
            } else if (Flags_GetEventChkInf(0x30)) {
                retTextId = 0x4011;
            } else {
                retTextId = 0x4006;
            }
            break;
        case 55:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x37)) {
                    retTextId = 0x402B;
                } else if (Flags_GetEventChkInf(0x31)) {
                    if (Flags_GetInfTable(0x138)) {
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
            if (Flags_GetInfTable(0x166)) {
                retTextId = 0x5001;
            } else {
                retTextId = 0x5000;
            }
            break;
        case 62:
            retTextId = 0x5012;
            break;
        case 63:
            if (Flags_GetInfTable(0x16A)) {
                retTextId = 0x5001;
            } else {
                retTextId = 0x5000;
            }
            break;
        case 71:
            if (Flags_GetEventChkInf(0x16)) {
                retTextId = 0x2049;
            } else if (Flags_GetEventChkInf(0x15)) {
                retTextId = 0x2048;
            } else if (Flags_GetEventChkInf(0x14)) {
                retTextId = 0x2047;
            } else if (Flags_GetEventChkInf(0x12) && !Flags_GetEventChkInf(0x14)) {
                retTextId = 0x2044;
            } else if (Flags_GetEventChkInf(0x10)) {
                if (Flags_GetEventChkInf(0x11)) {
                    retTextId = 0x2043;
                } else {
                    retTextId = 0x2042;
                }
            } else {
                retTextId = 0x2041;
            }
            break;
        case 72:
            if (LINK_IS_CHILD) {
                if (Flags_GetEventChkInf(0x14)) {
                    retTextId = 0x2040;
                } else if (Flags_GetInfTable(0x94)) {
                    retTextId = 0x2040;
                } else {
                    retTextId = 0x203F;
                }
            } else {
                if (!Flags_GetEventChkInf(0x18)) {
                    if (gSaveContext.nightFlag) {
                        retTextId = 0x204E;
                    } else if (Flags_GetInfTable(0x9A)) {
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
                    Flags_SetInfTable(0x0);
                    return;
                case 0x1002:
                    Flags_SetInfTable(0x1);
                    return;
                case 0x1031:
                    Flags_SetEventChkInf(0x3);
                    Flags_SetInfTable(0x3);
                    return;
                case 0x1047:
                    Flags_SetInfTable(0x5);
                    return;
            }
            return;
        case 1:
            switch (textId) {
                case 0x102F:
                    Flags_SetEventChkInf(0x2);
                    Flags_SetInfTable(0xC);
                    return;
                case 0x1033:
                    Audio_PlaySoundGeneral(NA_SE_SY_CORRECT_CHIME, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                           &D_801333E8);
                    Flags_SetEventChkInf(0x4);
                    Flags_SetInfTable(0xE);
                    return;
                case 0x1045:
                    Flags_SetInfTable(0x10);
                    return;
                case 0x1060:
                    Flags_SetInfTable(0x15);
                    return;
                case 0x1067:
                    Flags_SetEventChkInf(0xA);
                    Flags_SetInfTable(0x17);
                    return;
                case 0x1070:
                    Flags_SetInfTable(0x19);
                    return;
            }
            return;
        case 2:
            if (textId == 0x1056) {
                Flags_SetInfTable(0x41);
            }
            return;
        case 3:
            if (textId == 0x1005) {
                Flags_SetInfTable(0x1E);
            }
            return;
        case 4:
            if (textId == 0x105D) {
                Flags_SetInfTable(0x47);
            }
            return;
        case 5:
            if (textId == 0x1008) {
                Flags_SetInfTable(0x22);
            }
            return;
        case 6:
            if (textId == 0x100A) {
                Flags_SetInfTable(0x24);
            }
            return;
        case 7:
            if (textId == 0x100C) {
                Flags_SetInfTable(0x26);
            }
            return;
        case 8:
            if (textId == 0x100E) {
                Flags_SetInfTable(0x28);
            }
            if (textId == 0x1059) {
                Flags_SetInfTable(0x51);
            }
            return;
        case 10:
            if (textId == 0x104F) {
                Flags_SetInfTable(0x59);
            }
            return;
        case 13:
            if (textId == 0x1054) {
                Flags_SetInfTable(0x61);
            }
            return;
        case 15:
            if (textId == 0x1062) {
                Flags_SetInfTable(0x66);
            }
            return;
        case 16:
            if (textId == 0x7002) {
                Flags_SetInfTable(0x6A);
            }
            if (textId == 0x7003) {
                Flags_SetInfTable(0x6A);
            }
            return;
        case 17:
            if (textId == 0x7007) {
                Flags_SetInfTable(0x6C);
            }
            return;
        case 18:
            if (textId == 0x7071) {
                Flags_SetInfTable(0x71);
            }
            return;
        case 20:
        case 21:
            if (textId == 0x2010) {
                Flags_SetInfTable(0x76);
            }
            return;
        case 25:
            if (textId == 0x7016) {
                Flags_SetInfTable(0xC2);
            }
            return;
        case 26:
            if (textId == 0x7018) {
                Flags_SetInfTable(0xC4);
            }
            return;
        case 28:
            if (textId == 0x701D) {
                Flags_SetInfTable(0xCA);
            }
            return;
        case 29:
            if (textId == 0x701F) {
                Flags_SetInfTable(0xCC);
            }
            return;
        case 30:
            if (textId == 0x7021) {
                Flags_SetInfTable(0xCE);
            }
            return;
        case 31:
            if (textId == 0x7023) {
                Flags_SetInfTable(0xD0);
            }
            return;
        case 32:
            if (textId == 0x7025) {
                Flags_SetInfTable(0xD2);
            }
            return;
        case 33:
            if (textId == 0x7027) {
                Flags_SetInfTable(0xD4);
            }
            return;
        case 34:
            if (textId == 0x403c) {
                Flags_SetInfTable(0xD6);
            }
            return;
        case 35:
            if (textId == 0x5028) {
                Flags_SetInfTable(0xD8);
            }
            return;
        case 38:
            if (textId == 0x3008) {
                Flags_SetInfTable(0xE0);
            }
            return;
        case 40:
            if (textId == 0x300B) {
                Flags_SetInfTable(0xEB);
            }
            return;
        case 41:
            if (textId == 0x3014) {
                Flags_SetInfTable(0xF0);
            }
            return;
        case 42:
            if (textId == 0x3016) {
                Flags_SetInfTable(0xF4);
            }
            return;
        case 43:
            if (textId == 0x3018) {
                Flags_SetEventChkInf(0x20);
                Flags_SetInfTable(0xF8);
            }
            return;
        case 48:
            if (textId == 0x3020) {
                Flags_SetEventChkInf(0x22);
                Flags_SetInfTable(0x113);
            }
            return;
        case 49:
        case 52:
        case 53:
        case 54:
            if (textId == 0x4006) {
                Flags_SetEventChkInf(0x30);
            }
            return;
        case 50:
            if (textId == 0x4006) {
                Flags_SetEventChkInf(0x30);
            }
            if (textId == 0x4008) {
                Flags_SetInfTable(0x124);
            }
            return;
        case 51:
            if (textId == 0x4006) {
                Flags_SetEventChkInf(0x30);
            }
            if (textId == 0x400A) {
                Flags_SetEventChkInf(0x32);
            }
            if (textId == 0x402F) {
                Flags_SetInfTable(0x12A);
            }
            return;
        case 55:
            if (textId == 0x401B) {
                Flags_SetEventChkInf(0x33);
                Flags_SetInfTable(0x138);
            }
            return;
        case 61:
            if (textId == 0x5000) {
                Flags_SetInfTable(0x166);
            }
            return;
        case 63:
            if (textId == 0x5013) {
                Flags_SetInfTable(0x16A);
            }
            return;
        case 71:
            if (textId == 0x2041) {
                Flags_SetEventChkInf(0x10);
            }
            if (textId == 0x2044) {
                Flags_SetEventChkInf(0x12);
            }
            if (textId == 0x2047) {
                Flags_SetEventChkInf(0x15);
            }
            if (textId == 0x2048) {
                Flags_SetEventChkInf(0x16);
            }
            return;
        case 72:
            return;
    }
}

s32 func_800374E0(GlobalContext* globalCtx, Actor* actor, u16 textId) {
    MessageContext* msgCtx = &globalCtx->msgCtx;
    s32 ret = 1;

    switch (textId) {
        case 0x1035:
            if (msgCtx->choiceIndex == 0) {
                if (Flags_GetInfTable(0x2A)) {
                    func_80035B18(globalCtx, actor, 0x1036);
                } else {
                    func_80035B18(globalCtx, actor, 0x1041);
                }
            }
            if (msgCtx->choiceIndex == 1) {
                if (Flags_GetInfTable(0x2B)) {
                    func_80035B18(globalCtx, actor, 0x1037);
                } else {
                    func_80035B18(globalCtx, actor, 0x1041);
                }
            }
            ret = 0;
            break;
        case 0x1038:
            if (msgCtx->choiceIndex == 0) {
                if (Flags_GetInfTable(0x2E)) {
                    func_80035B18(globalCtx, actor, 0x1039);
                } else {
                    func_80035B18(globalCtx, actor, 0x1041);
                }
            }
            if (msgCtx->choiceIndex == 1) {
                if (Flags_GetInfTable(0x2F)) {
                    func_80035B18(globalCtx, actor, 0x103A);
                } else {
                    func_80035B18(globalCtx, actor, 0x1041);
                }
            }
            if (msgCtx->choiceIndex == 2) {
                if (Flags_GetInfTable(0x30)) {
                    func_80035B18(globalCtx, actor, 0x103B);
                } else {
                    func_80035B18(globalCtx, actor, 0x1041);
                }
            }
            ret = 0;
            break;
        case 0x103E:
            if (msgCtx->choiceIndex == 0) {
                func_80035B18(globalCtx, actor, 0x103F);
            }
            if (msgCtx->choiceIndex == 1) {
                func_80035B18(globalCtx, actor, 0x1040);
            }
            ret = 0;
            break;
        case 0x1041:
            if (msgCtx->unk_E2FA == 0x1035) {
                if (msgCtx->choiceIndex == 0) {
                    func_80035B18(globalCtx, actor, 0x1036);
                    Flags_SetInfTable(0x2A);
                }
                if (msgCtx->choiceIndex == 1) {
                    func_80035B18(globalCtx, actor, 0x1037);
                    Flags_SetInfTable(0x2B);
                }
            }
            if (msgCtx->unk_E2FA == 0x1038) {
                if (msgCtx->choiceIndex == 0) {
                    func_80035B18(globalCtx, actor, 0x1039);
                    Flags_SetInfTable(0x2E);
                }
                if (msgCtx->choiceIndex == 1) {
                    func_80035B18(globalCtx, actor, 0x103A);
                    Flags_SetInfTable(0x2F);
                }
                if (msgCtx->choiceIndex == 2) {
                    func_80035B18(globalCtx, actor, 0x103B);
                    Flags_SetInfTable(0x30);
                }
            }
            ret = 0;
            break;
        case 0x1062:
            if (msgCtx->choiceIndex == 0) {
                func_80035B18(globalCtx, actor, 0x1063);
            }
            if (msgCtx->choiceIndex == 1) {
                func_80035B18(globalCtx, actor, 0x1064);
            }
            ret = 0;
            break;
        case 0x2030:
        case 0x2031:
            if (msgCtx->choiceIndex == 0) {
                if (gSaveContext.rupees >= 10) {
                    func_80035B18(globalCtx, actor, 0x2034);
                    Rupees_ChangeBy(-10);
                } else {
                    func_80035B18(globalCtx, actor, 0x2032);
                }
            }
            if (msgCtx->choiceIndex == 1) {
                func_80035B18(globalCtx, actor, 0x2032);
            }
            Flags_SetInfTable(0x9A);
            ret = 0;
            break;
        case 0x2036:
        case 0x2037:
            if (msgCtx->choiceIndex == 0) {
                func_80035B18(globalCtx, actor, 0x201F);
            }
            if (msgCtx->choiceIndex == 1) {
                func_80035B18(globalCtx, actor, 0x205A);
            }
            ret = 0;
            break;
        case 0x2038:
            if (msgCtx->choiceIndex == 0) {
                break;
            }
            if (msgCtx->choiceIndex == 1) {
                func_80035B18(globalCtx, actor, 0x205A);
            }
            ret = 0;
            break;
        case 0x2034:
            if (msgCtx->choiceIndex != 0) {
                break;
            }
            func_80035B18(globalCtx, actor, 0x2035);
            ret = 0;
            break;
        case 0x2043:
            if (Flags_GetEventChkInf(0x12)) {
                break;
            }
            func_80035B18(globalCtx, actor, 0x2044);
            ret = 0;
            break;
        case 0x205A:
            break;
        case 0x300A:
            if (msgCtx->choiceIndex == 0) {
                if (Flags_GetEventChkInf(0x22)) {
                    func_80035B18(globalCtx, actor, 0x300B);
                } else {
                    func_80035B18(globalCtx, actor, 0x300C);
                }
            }
            if (msgCtx->choiceIndex == 1) {
                func_80035B18(globalCtx, actor, 0x300D);
            }
            ret = 0;
            break;
        case 0x301B:
            if (msgCtx->choiceIndex == 0) {
                func_80035B18(globalCtx, actor, 0x301D);
            }
            if (msgCtx->choiceIndex == 1) {
                if (Flags_GetInfTable(0x113)) {
                    func_80035B18(globalCtx, actor, 0x301F);
                } else {
                    func_80035B18(globalCtx, actor, 0x301E);
                }
            }
            ret = 0;
            break;
        case 0x301E:
            func_80035B18(globalCtx, actor, 0x3020);
            ret = 0;
            break;
        case 0x400C:
            if (msgCtx->choiceIndex == 0) {
                func_80035B18(globalCtx, actor, 0x400D);
            }
            if (msgCtx->choiceIndex == 1) {
                func_80035B18(globalCtx, actor, 0x400E);
            }
            ret = 0;
            break;
        case 0x7007:
            func_80035B18(globalCtx, actor, 0x703E);
            ret = 0;
            break;
        case 0x703E:
            func_80035B18(globalCtx, actor, 0x703F);
            ret = 0;
            break;
        case 0x703F:
            func_80035B18(globalCtx, actor, 0x7042);
            ret = 0;
            break;
    }

    return ret;
}

u16 func_80037C30(GlobalContext* globalCtx, s16 arg1) {
    return func_80035BFC(globalCtx, arg1);
}

s32 func_80037C5C(GlobalContext* globalCtx, s16 arg1, u16 textId) {
    func_80036E50(textId, arg1);
    return 0;
}

s32 func_80037C94(GlobalContext* globalCtx, Actor* actor, s32 arg2) {
    return func_800374E0(globalCtx, actor, actor->textId);
}

s32 func_80037CB8(GlobalContext* globalCtx, Actor* actor, s16 arg2) {
    MessageContext* msgCtx = &globalCtx->msgCtx;
    s32 ret = 0;

    switch (func_8010BDBC(msgCtx)) {
        case 2:
            func_80037C5C(globalCtx, arg2, actor->textId);
            ret = 1;
            break;
        case 4:
        case 5:
            if (func_80106BC8(globalCtx) && func_80037C94(globalCtx, actor, arg2)) {
                Audio_PlaySoundGeneral(NA_SE_SY_CANCEL, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                msgCtx->msgMode = 0x36;
                ret = 1;
            }
            break;
    }

    return ret;
}

s32 func_80037D98(GlobalContext* globalCtx, Actor* actor, s16 arg2, s32* arg3) {
    s16 var;
    s16 sp2C;
    s16 sp2A;
    s16 abs_var;

    if (func_8002F194(actor, globalCtx)) {
        *arg3 = 1;
        return 1;
    }

    if (*arg3 == 1) {
        if (func_80037CB8(globalCtx, actor, arg2)) {
            *arg3 = 0;
        }
        return 0;
    }

    func_8002F374(globalCtx, actor, &sp2C, &sp2A);

    if (0) {} // Necessary to match

    if ((sp2C < 0) || (sp2C > SCREEN_WIDTH) || (sp2A < 0) || (sp2A > SCREEN_HEIGHT)) {
        return 0;
    }

    var = actor->yawTowardsLink - actor->shape.rot.y;
    abs_var = ABS(var);

    if (abs_var >= 0x4300) {
        return 0;
    }

    if ((actor->xyzDistFromLinkSq > 25600.0f) && (actor->unk_10C == 0)) {
        return 0;
    }

    if (actor->xyzDistFromLinkSq <= 6400.0f) {
        if (func_8002F2CC(actor, globalCtx, 80.0f)) {
            actor->textId = func_80037C30(globalCtx, arg2);
        }
    } else {
        if (func_8002F2F4(actor, globalCtx)) {
            actor->textId = func_80037C30(globalCtx, arg2);
        }
    }

    return 0;
}

s32 func_80037F30(Vec3s* arg0, Vec3s* arg1) {
    Math_SmoothScaleMaxMinS(&arg0->y, 0, 6, 6200, 100);
    Math_SmoothScaleMaxMinS(&arg0->x, 0, 6, 6200, 100);
    Math_SmoothScaleMaxMinS(&arg1->y, 0, 6, 6200, 100);
    Math_SmoothScaleMaxMinS(&arg1->x, 0, 6, 6200, 100);
    return 1;
}

s32 func_80037FC8(Actor* actor, Vec3f* arg1, Vec3s* arg2, Vec3s* arg3) {
    s16 sp36;
    s16 sp34;
    s16 var;

    sp36 = Math_Vec3f_Pitch(&actor->posRot2.pos, arg1);
    sp34 = Math_Vec3f_Yaw(&actor->posRot2.pos, arg1) - actor->posRot.rot.y;

    Math_SmoothScaleMaxMinS(&arg2->x, sp36, 6, 2000, 1);
    arg2->x = (arg2->x < -6000) ? -6000 : ((arg2->x > 6000) ? 6000 : arg2->x);

    var = Math_SmoothScaleMaxMinS(&arg2->y, sp34, 6, 2000, 1);
    arg2->y = (arg2->y < -8000) ? -8000 : ((arg2->y > 8000) ? 8000 : arg2->y);

    if (var && (ABS(arg2->y) < 8000)) {
        return 0;
    }

    Math_SmoothScaleMaxMinS(&arg3->y, sp34 - arg2->y, 4, 2000, 1);
    arg3->y = (arg3->y < -12000) ? -12000 : ((arg3->y > 12000) ? 12000 : arg3->y);

    return 1;
}

s32 func_80038154(GlobalContext* globalCtx, Actor* actor, Vec3s* arg2, Vec3s* arg3, f32 arg4) {
    Player* player = PLAYER;
    s32 pad;
    Vec3f sp2C;
    s16 var;
    s16 abs_var;

    actor->posRot2.pos = actor->posRot.pos;
    actor->posRot2.pos.y += arg4;

    if (!(((globalCtx->csCtx.state != 0) || (D_8011D394 != 0)) && (gSaveContext.entranceIndex == 0x00EE))) {
        var = actor->yawTowardsLink - actor->shape.rot.y;
        abs_var = ABS(var);
        if (abs_var >= 0x4300) {
            func_80037F30(arg2, arg3);
            return 0;
        }
    }

    if (((globalCtx->csCtx.state != 0) || (D_8011D394 != 0)) && (gSaveContext.entranceIndex == 0x00EE)) {
        sp2C = globalCtx->view.eye;
    } else {
        sp2C = player->actor.posRot2.pos;
    }

    func_80037FC8(actor, &sp2C, arg2, arg3);

    return 1;
}

s32 func_80038290(GlobalContext* globalCtx, Actor* actor, Vec3s* arg2, Vec3s* arg3, Vec3f arg4) {
    Player* player = PLAYER;
    s32 pad;
    Vec3f sp24;
    s16 var;
    s16 abs_var;

    actor->posRot2.pos = arg4;

    if (!(((globalCtx->csCtx.state != 0) || (D_8011D394 != 0)) && (gSaveContext.entranceIndex == 0x00EE))) {
        var = actor->yawTowardsLink - actor->shape.rot.y;
        abs_var = ABS(var);
        if (abs_var >= 0x4300) {
            func_80037F30(arg2, arg3);
            return 0;
        }
    }

    if (((globalCtx->csCtx.state != 0) || (D_8011D394 != 0)) && (gSaveContext.entranceIndex == 0x00EE)) {
        sp24 = globalCtx->view.eye;
    } else {
        sp24 = player->actor.posRot2.pos;
    }

    func_80037FC8(actor, &sp24, arg2, arg3);

    return 1;
}
