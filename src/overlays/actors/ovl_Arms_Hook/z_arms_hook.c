#include "z_arms_hook.h"

#define FLAGS 0x00000030

#define THIS ((ArmsHook*)thisx)

void ArmsHook_Init(Actor* thisx, GlobalContext* globalCtx);
void ArmsHook_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ArmsHook_Update(Actor* thisx, GlobalContext* globalCtx);
void ArmsHook_Draw(Actor* thisx, GlobalContext* globalCtx);

void ArmsHook_Wait(ArmsHook* this, GlobalContext* globalCtx);
void ArmsHook_Shoot(ArmsHook* this, GlobalContext* globalCtx);

const ActorInit Arms_Hook_InitVars = {
    ACTOR_ARMS_HOOK,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_LINK_BOY,
    sizeof(ArmsHook),
    (ActorFunc)ArmsHook_Init,
    (ActorFunc)ArmsHook_Destroy,
    (ActorFunc)ArmsHook_Update,
    (ActorFunc)ArmsHook_Draw,
};

ColliderQuadInit sQuadInit = {
    { COLTYPE_UNK10, 0x09, 0x00, 0x00, 0x08, COLSHAPE_QUAD },
    { 0x02, { 0x00000080, 0x00, 0x01 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x05, 0x00, 0x00 },
    { 0 },
};

Vec3f sUnusedVec1 = { 0.0f, 0.5f, 0.0f };
Vec3f sUnusedVec2 = { 0.0f, 0.5f, 0.0f };

Color_RGB8 sUnusedColors[] = {
    { 0xFF, 0xFF, 0x64 },
    { 0xFF, 0xFF, 0x32 },
};

Vec3f D_80865B70 = { 0.0f, 0.0f, 0.0f };
Vec3f D_80865B7C = { 0.0f, 0.0f, 900.0f };
Vec3f D_80865B88 = { 0.0f, 500.0f, -3000.0f };
Vec3f D_80865B94 = { 0.0f, -500.0f, -3000.0f };
Vec3f D_80865BA0 = { 0.0f, 500.0f, 1200.0f };
Vec3f D_80865BAC = { 0.0f, -500.0f, 1200.0f };

extern Gfx D_0602B288[];
extern Gfx D_0602AFF0[];

void ArmsHook_SetupAction(ArmsHook* this, ArmsHookActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void ArmsHook_Init(Actor* thisx, GlobalContext* globalCtx) {
    ArmsHook* this = THIS;

    Collider_InitQuad(globalCtx, &this->collider);
    Collider_SetQuad(globalCtx, &this->collider, &this->actor, &sQuadInit);
    ArmsHook_SetupAction(this, ArmsHook_Wait);
    this->unk_1E8 = this->actor.posRot.pos;
}

void ArmsHook_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    ArmsHook* this = THIS;

    if (this->grabbed != NULL) {
        this->grabbed->flags &= ~0x2000;
    }
    Collider_DestroyQuad(globalCtx, &this->collider);
}

void ArmsHook_Wait(ArmsHook* this, GlobalContext* globalCtx) {
    Player* player;
    s32 length;

    if (this->actor.attachedA == NULL) {
        player = PLAYER;
        // get correct timer length for hookshot or longshot
        length = (player->heldItemActionParam == 0x10) ? 13 : 26;

        ArmsHook_SetupAction(this, ArmsHook_Shoot);
        func_8002D9A4(&this->actor, 20.0f);
        this->actor.attachedA = &PLAYER->actor;
        this->timer = length;
    }
}

void func_80865044(ArmsHook* this) {
    this->actor.attachedB = this->actor.attachedA;
    this->actor.attachedA->attachedA = &this->actor;
}

s32 ArmsHook_AttachToPlayer(ArmsHook* this, Player* player) {
    player->actor.attachedB = &this->actor;
    player->heldActor = &this->actor;
    if (this->actor.attachedB != NULL) {
        player->actor.attachedA = NULL;
        this->actor.attachedB = NULL;
        return 1;
    }
    return 0;
}

void ArmsHook_DetachHookFromActor(ArmsHook* this) {
    if (this->grabbed != NULL) {
        this->grabbed->flags &= ~0x2000;
        this->grabbed = NULL;
    }
}

s32 ArmsHook_CheckForCancel(ArmsHook* this) {
    Player* player = (Player*)this->actor.attachedA;
    if (func_8008F104(player)) {
        if ((player->unk_154 != player->heldItemActionParam) || ((player->actor.flags & 0x100)) ||
            ((player->stateFlags1 & 0x4000080))) {
            this->timer = 0;
            ArmsHook_DetachHookFromActor(this);
            Math_Vec3f_Copy(&this->actor.posRot.pos, &player->unk_3C8);
            return 1;
        }
    }
    return 0;
}

void ArmsHook_AttachHookToActor(ArmsHook* this, Actor* actor) {
    actor->flags |= 0x2000;
    this->grabbed = actor;
    Math_Vec3f_Diff(&actor->posRot.pos, &this->actor.posRot.pos, &this->grabbedDistDiff);
}

void ArmsHook_Shoot(ArmsHook* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Actor* touchedActor;
    Actor* grabbed;
    Vec3f bodyDistDiffVec;
    Vec3f newPos;
    f32 bodyDistDiff;
    f32 phi_f16;
    DynaPolyActor* dynaPolyActor;
    f32 sp94;
    f32 sp90;
    s32 pad;
    CollisionPoly* poly;
    u32 dynaPolyID;
    Vec3f sp78;
    Vec3f prevFrameDiff;
    Vec3f sp60;
    f32 sp5C;
    f32 sp58;
    f32 velocity;
    s32 pad1;

    if ((this->actor.attachedA == NULL) || (!func_8008F104(player))) {
        ArmsHook_DetachHookFromActor(this);
        Actor_Kill(&this->actor);
        return;
    }

    func_8002F8F0(&player->actor, NA_SE_IT_HOOKSHOT_CHAIN - SFX_FLAG);
    ArmsHook_CheckForCancel(this);

    if (this->timer != 0) {
        if ((this->collider.base.atFlags & 2) && (this->collider.body.atHitItem->flags != 4)) {
            touchedActor = this->collider.base.at;
            if ((touchedActor->update != NULL) && (touchedActor->flags & 0x600)) {
                if (this->collider.body.atHitItem->bumperFlags & 4) {
                    ArmsHook_AttachHookToActor(this, touchedActor);
                    if ((touchedActor->flags & 0x400) == 0x400) {
                        func_80865044(this);
                    }
                }
            }
            this->timer = 0;
            Audio_PlaySoundGeneral(NA_SE_IT_ARROW_STICK_CRE, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                   &D_801333E8);
            return;
        }
    }

    if (DECR(this->timer) == 0) {
        grabbed = this->grabbed;
        if (grabbed != NULL) {
            if ((grabbed->update == NULL) || (grabbed->flags & 0x2000) != 0x2000) {
                grabbed = NULL;
                this->grabbed = NULL;
            } else {
                if (this->actor.attachedB != NULL) {
                    sp94 = func_8002DB48(this, grabbed);
                    sp90 =
                        sqrtf(SQ(this->grabbedDistDiff.x) + SQ(this->grabbedDistDiff.y) + SQ(this->grabbedDistDiff.z));
                    Math_Vec3f_Diff(&grabbed->posRot.pos, &this->grabbedDistDiff, &this->actor.posRot.pos);
                    if (50.0f < (sp94 - sp90)) {
                        ArmsHook_DetachHookFromActor(this);
                        grabbed = NULL;
                    }
                }
            }
        }

        bodyDistDiff = Math_Vec3f_DistXYZAndStoreDiff(&player->unk_3C8, &this->actor.posRot.pos, &bodyDistDiffVec);
        if (bodyDistDiff < 30.0f) {
            velocity = 0.0f;
            phi_f16 = 0.0f;
        } else {
            if (this->actor.attachedB != NULL) {
                velocity = 30.0f;
            } else {
                if (grabbed != NULL) {
                    velocity = 50.0f;
                } else {
                    velocity = 200.0f;
                }
            }
            phi_f16 = bodyDistDiff - velocity;
            if (bodyDistDiff <= velocity) {
                phi_f16 = 0.0f;
            }
            velocity = phi_f16 / bodyDistDiff;
        }

        newPos.x = bodyDistDiffVec.x * velocity;
        newPos.y = bodyDistDiffVec.y * velocity;
        newPos.z = bodyDistDiffVec.z * velocity;

        if (this->actor.attachedB == NULL) {
            if ((grabbed != NULL) && (grabbed->id == ACTOR_BG_SPOT06_OBJECTS)) {
                Math_Vec3f_Diff(&grabbed->posRot.pos, &this->grabbedDistDiff, &this->actor.posRot.pos);
                phi_f16 = 1.0f;
            } else {
                Math_Vec3f_Sum(&player->unk_3C8, &newPos, &this->actor.posRot.pos);
                if (grabbed != NULL) {
                    Math_Vec3f_Sum(&this->actor.posRot.pos, &this->grabbedDistDiff, &grabbed->posRot.pos);
                }
            }
        } else {
            Math_Vec3f_Diff(&bodyDistDiffVec, &newPos, &player->actor.velocity);
            player->actor.posRot.rot.x =
                atan2s(sqrtf(SQ(bodyDistDiffVec.x) + SQ(bodyDistDiffVec.z)), -bodyDistDiffVec.y);
        }

        if (phi_f16 < 50.0f) {
            ArmsHook_DetachHookFromActor(this);
            if (phi_f16 == 0.0f) {
                ArmsHook_SetupAction(this, ArmsHook_Wait);
                if (ArmsHook_AttachToPlayer(this, player)) {
                    Math_Vec3f_Diff(&this->actor.posRot.pos, &player->actor.posRot.pos, &player->actor.velocity);
                    player->actor.velocity.y -= 20.0f;
                    return;
                }
            }
        }
    } else {
        Actor_MoveForward(&this->actor);
        Math_Vec3f_Diff(&this->actor.posRot.pos, &this->actor.pos4, &prevFrameDiff);
        Math_Vec3f_Sum(&this->unk_1E8, &prevFrameDiff, &this->unk_1E8);
        this->actor.shape.rot.x = atan2s(this->actor.speedXZ, -this->actor.velocity.y);
        sp60.x = this->unk_1F4.x - (this->unk_1E8.x - this->unk_1F4.x);
        sp60.y = this->unk_1F4.y - (this->unk_1E8.y - this->unk_1F4.y);
        sp60.z = this->unk_1F4.z - (this->unk_1E8.z - this->unk_1F4.z);
        if (func_8003DE84(&globalCtx->colCtx, &sp60, &this->unk_1E8, &sp78, &poly, 1, 1, 1, 1, &dynaPolyID) != 0) {
            if (func_8002F9EC(globalCtx, &this->actor, poly, dynaPolyID, &sp78) == 0) {
                sp5C = poly->norm.x * (1 / SHT_MAX);
                sp58 = poly->norm.z * (1 / SHT_MAX);
                Math_Vec3f_Copy(&this->actor.posRot.pos, &sp78);
                this->actor.posRot.pos.x += 10.0f * sp5C;
                this->actor.posRot.pos.z += 10.0f * sp58;
                this->timer = 0;
                if (func_80041FE8(&globalCtx->colCtx, poly, dynaPolyID) != 0) {
                    if (dynaPolyID != 0x32) {
                        dynaPolyActor = DynaPolyInfo_GetActor(&globalCtx->colCtx, dynaPolyID);
                        if (dynaPolyActor != NULL) {
                            ArmsHook_AttachHookToActor(this, &dynaPolyActor->actor);
                        }
                    }
                    func_80865044(this);
                    Audio_PlaySoundGeneral(NA_SE_IT_HOOKSHOT_STICK_OBJ, &this->actor.projectedPos, 4, &D_801333E0,
                                           &D_801333E0, &D_801333E8);
                    return;
                }
                func_80062D60(globalCtx, &this->actor.posRot.pos);
                Audio_PlaySoundGeneral(NA_SE_IT_HOOKSHOT_REFLECT, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                       &D_801333E8);
                return;
            }
        }

        if ((globalCtx->state.input[0].press.in.button &
             (A_BUTTON | B_BUTTON | R_TRIG | U_CBUTTONS | L_CBUTTONS | R_CBUTTONS | D_CBUTTONS))) {
            this->timer = 0;
        }
    }
}

void ArmsHook_Update(Actor* thisx, GlobalContext* globalCtx) {
    ArmsHook* this = THIS;

    this->actionFunc(this, globalCtx);
    this->unk_1F4 = this->unk_1E8;
}

void ArmsHook_Draw(Actor* thisx, GlobalContext* globalCtx) {
    ArmsHook* this = THIS;
    u32 pad3;
    Player* player = PLAYER;
    Vec3f sp78;
    Vec3f sp6C;
    Vec3f sp60;
    f32 sp5C;
    f32 sp58;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    if (player->actor.draw != NULL) {
        if (player->unk_15D == 0xF) {
            gfxCtx = globalCtx->state.gfxCtx;
            Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_arms_hook.c", 850);

            if ((ArmsHook_Shoot != this->actionFunc) || (this->timer <= 0)) {
                Matrix_MultVec3f(&D_80865B70, &this->unk_1E8);
                Matrix_MultVec3f(&D_80865B88, &sp6C);
                Matrix_MultVec3f(&D_80865B94, &sp60);
                this->unk_1CC = 0;
            } else {
                Matrix_MultVec3f(&D_80865B7C, &this->unk_1E8);
                Matrix_MultVec3f(&D_80865BA0, &sp6C);
                Matrix_MultVec3f(&D_80865BAC, &sp60);
            }

            func_80090480(globalCtx, &this->collider.base, &this->unk_1CC, &sp6C, &sp60);
            func_80093D18(globalCtx->state.gfxCtx);
            gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_arms_hook.c", 895),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_0602B288);
            Matrix_Translate(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, MTXMODE_NEW);
            Math_Vec3f_Diff(&player->unk_3C8, &this->actor.posRot.pos, &sp78);
            sp58 = SQ(sp78.x) + SQ(sp78.z);
            sp5C = sqrtf(sp58);
            Matrix_RotateY(Math_atan2f(sp78.x, sp78.z), MTXMODE_APPLY);
            Matrix_RotateX(Math_atan2f(-sp78.y, sp5C), MTXMODE_APPLY);
            Matrix_Scale(0.015f, 0.015f, sqrtf(SQ(sp78.y) + sp58) * 0.01f, MTXMODE_APPLY);
            gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_arms_hook.c", 910),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(gfxCtx->polyOpa.p++, D_0602AFF0);

            Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_arms_hook.c", 913);
        }
    }
}
