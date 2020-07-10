#include "z_en_bom.h"

#define FLAGS 0x00000030

#define THIS ((EnBom*)thisx)

void EnBom_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBom_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBom_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBom_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809C282C(EnBom* this, GlobalContext* globalCtx);
void func_809C29F4(EnBom* this, GlobalContext* globalCtx);

const ActorInit En_Bom_InitVars = {
    ACTOR_EN_BOM,
    ACTORTYPE_EXPLOSIVES,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnBom),
    (ActorFunc)EnBom_Init,
    (ActorFunc)EnBom_Destroy,
    (ActorFunc)EnBom_Update,
    (ActorFunc)EnBom_Draw,
};

// sCylinderInit
ColliderCylinderInit D_809C3430 = {
    { COLTYPE_UNK0, 0x00, 0x29, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x02, { 0x00000000, 0x00, 0x00 }, { 0x0003F828, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 6, 11, 14, { 0, 0, 0 } },
};

// sJntSphItemsInit[1]
ColliderJntSphItemInit D_809C345C[1] = {
    {
        { 0x00, { 0x00000008, 0x00, 0x08 }, { 0x00000000, 0x00, 0x00 }, 0x19, 0x00, 0x00 },
        { 0, { { 0, 0, 0 }, 0 }, 100 },
    },
};

// sJntSphInit
ColliderJntSphInit D_809C3480 = {
    { COLTYPE_UNK0, 0x39, 0x00, 0x00, 0x00, COLSHAPE_JNTSPH },
    1,
    D_809C345C,
};

// sInitChain
InitChainEntry D_809C3490[] = {
    ICHAIN_VEC3F(scale, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 2000, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 61536, ICHAIN_STOP),
};

s32 D_809C34B4[] = { 0x00000000, 0x00000000, 0x00000000 };
s32 D_809C34C0[] = { 0x00000000, 0x3F19999A, 0x00000000 };
s32 D_809C34CC = 0xFFFFFFFF;

// EnBom_SetupAction
void func_809C26D0(EnBom* this, EnBomActionFunc* actionFunc) {
    this->actionFunc = actionFunc;
}

void EnBom_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnBom* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_809C3490);
    ActorShape_Init(&this->actor.shape, 700.0f, ActorShadow_DrawFunc_Circle, 16.0f);
    this->actor.colChkInfo.mass = 200;
    this->actor.colChkInfo.unk_10 = 5;
    this->actor.colChkInfo.unk_12 = 0xA;
    this->timer = 70;
    this->unk_1FA = 7;
    Collider_InitCylinder(globalCtx, &this->bombCollider);
    Collider_InitJntSph(globalCtx, &this->jntSphList);
    Collider_SetCylinder(globalCtx, &this->bombCollider, &this->actor, &D_809C3430);
    Collider_SetJntSph(globalCtx, &this->jntSphList, &this->actor, &D_809C3480, &this->explosionCollider);
    this->explosionCollider[0].body.toucher.damage += (THIS->actor.shape.rot.z & 0xFF00) >> 8;
    this->actor.shape.rot.z &= 0xFF;
    if (this->actor.shape.rot.z & 0x80) {
        this->actor.shape.rot.z |= 0xFF00;
    }
    func_809C26D0(this, func_809C282C);
}

void EnBom_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnBom* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->jntSphList);
    Collider_DestroyCylinder(globalCtx, &this->bombCollider);
}

void func_809C282C(EnBom* this, GlobalContext* globalCtx) {
    if (func_8002F410(&this->actor, globalCtx)) {
        func_809C26D0(this, func_809C29F4);
        this->actor.room = -1;
        return;
    }

    if ((this->actor.velocity.y > 0.0f) && (this->actor.bgCheckFlags & 0x10)) {
        this->actor.velocity.y = -this->actor.velocity.y;
    }

    if ((this->actor.speedXZ != 0.0f) && (this->actor.bgCheckFlags & 8)) {
        if (ABS((s16)(this->actor.wallPolyRot - this->actor.posRot.rot.y)) >= 0x4001) {
            this->actor.posRot.rot.y =
                ((this->actor.wallPolyRot - this->actor.posRot.rot.y) + this->actor.wallPolyRot) - 0x8000;
        }
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_BOMB_BOUND);
        Actor_MoveForward(&this->actor);
        this->actor.speedXZ *= 0.7f;
        this->actor.bgCheckFlags &= 0xFFF7;
    }
    if (!(this->actor.bgCheckFlags & 1)) {
        Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.08f);
    } else {
        Math_ApproxF(&this->actor.speedXZ, 0.0f, 1.0f);
        if ((this->actor.bgCheckFlags & 2) && (this->actor.velocity.y < -3.0f)) {
            func_8002F850(globalCtx, &this->actor);
            this->actor.velocity.y *= -0.3f;
            this->actor.bgCheckFlags &= 0xFFFD;
        } else if (this->timer >= 4) {
            func_8002F580(&this->actor, globalCtx);
        }
    }
    Actor_MoveForward(&this->actor);
}

void func_809C29F4(EnBom* this, GlobalContext* globalCtx) {
    if (func_8002F5A0(&this->actor, globalCtx)) {
        func_809C26D0(this, func_809C282C);
        func_809C282C(this, globalCtx);
    }
}

void func_809C2A38(EnBom* this, GlobalContext* globalCtx) {
    Player* player;

    if (this->jntSphList.list->dim.modelSphere.radius == 0) {
        this->actor.flags |= 0x20;
        func_800AA000(this->actor.xzDistFromLink, 0xFF, 0x14, 0x96);
    }

    this->jntSphList.list->dim.worldSphere.radius += this->actor.shape.rot.z + 8;

    if (this->actor.params == 1) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->jntSphList.base);
    }

    if (globalCtx->envCtx.unk_8C[3] != 0) {
        globalCtx->envCtx.unk_8C[3] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[4] != 0) {
        globalCtx->envCtx.unk_8C[4] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[5] != 0) {
        globalCtx->envCtx.unk_8C[5] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[0] != 0) {
        globalCtx->envCtx.unk_8C[0] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[1] != 0) {
        globalCtx->envCtx.unk_8C[1] -= 0x19;
    }

    if (globalCtx->envCtx.unk_8C[2] != 0) {
        globalCtx->envCtx.unk_8C[2] -= 0x19;
    }

    if (this->timer == 0) {
        player = PLAYER;

        if ((player->stateFlags1 & 0x800) && (player->heldActor == &this->actor)) {
            player->actor.attachedB = NULL;
            player->heldActor = NULL;
            player->interactRangeActor = NULL;
            player->stateFlags1 &= ~0x800;
        }

        Actor_Kill(&this->actor);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom/EnBom_Update.s")
void EnBom_Update(EnBom* this, GlobalContext* globalCtx) {
    Vec3f sp84 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp78 = { 0.0f, 0.1f, 0.0f };
    Vec3f sp6C = { 0.0f, 0.0f, 0.0f };
    Vec3f posCopy; // 60
    Vec3f sp54 = { 0.0f, 0.0f, 0.0f };
    s32 sp50;

    sp50 = D_809C34CC;

    this->actor.gravity = -1.2f;

    if (this->timer != 0) {
        this->timer--;
    }

    if (this->timer == 67) {
        Audio_PlayActorSound2(&this->actor, NA_SE_PL_TAKE_OUT_SHIELD);
        Actor_SetScale(&this->actor, 0.01f);
    }

    // activate bump collider if link is 20 or more units away from the bomb in the xz plane
    // or if the height difference is 80 or more units

    // use an or?
    if (!(this->actor.xzDistFromLink >= 20.0f) || (ABS(this->actor.yDistFromLink) >= 80.0f)) {
        this->bump = true;
    }

    this->actionFunc(this, globalCtx);

    func_8002E4B4(globalCtx, &this->actor, 5.0f, 10.0f, 15.0f, 0x1F);

    // has not exploded yet
    if (this->actor.params == 0) {
        if (this->timer < 63) {
            sp54.y = 0.2f;
            posCopy = this->actor.posRot.pos;
            posCopy.y += 17.0f;

            // spawn spark effect on even frames
            if ((globalCtx->gameplayFrames % 2) == 0) {
                func_80029184(globalCtx, this, &posCopy, &sp84, &sp6C);
            }

            Audio_PlayActorSound2(&this->actor, NA_SE_IT_BOMB_IGNIT - SFX_FLAG);
            posCopy.y += 3.0f;

            func_8002829C(globalCtx, &posCopy, &sp84, &sp54, &sp50, &sp50, 0x32, 5);
        }

        if (!(this->bombCollider.base.acFlags & 2)) {
            if ((this->bombCollider.base.maskA & 2) != 0) {
                if (this->bombCollider.base.oc->type == 5) {
                block_18:
                    this->timer = (u16)0;
                    this->actor.shape.rot.z = (u16)0;
                } else {
                block_19:
                    if ((s32)this->timer >= 0x65) {
                        if (func_8008EF5C(globalCtx, &this->actor.posRot, 0x41F00000, 0x42480000) != 0) {
                            this->timer = (u16)0x64;
                        }
                    }
                }
            } else {
                goto block_19;
            }
        } else {
            goto block_18;
        }

        sp54.y = 0.2f;
        posCopy = this->actor.posRot.pos;
        posCopy.y += 10.0f;
        if (this->timer != 3) {
            if (this->timer != 0x14) {
                if (this->timer == 0x28) {
                block_25:
                    this->actor.shape.rot.z = (u16)0;
                    this->unk_1FA = (s16)((s32)this->unk_1FA >> 1);
                }
            } else {
                goto block_25;
            }
        } else {
            goto block_25;
        }

        if ((s32)this->timer < 0x64) {
            if (((s32)this->timer & (this->unk_1FA + 1)) != 0) {
                Math_SmoothScaleMaxMinF((f32*)this->unk_1FC, 140.0f, 1.0f, 140.0f / (f32)this->unk_1FA, 0.0f);
            } else {
            block_29:
                Math_SmoothScaleMaxMinF((f32*)this->unk_1FC, 0.0f, 1.0f, 140.0f / (f32)this->unk_1FA, 0.0f);
            }
        } else {
            goto block_29;
        }

        if (this->timer < 3) {
            Actor_SetScale(&this->actor, this->actor.scale.x + 0.002f);
        }

        if (this->timer == 0) {
            posCopy = this->actor.posRot.pos;

            posCopy.y += 10.0f;
            if (func_8002F410(&this->actor, globalCtx) != 0) {
                posCopy.y += 30.0f;
            }

            func_80028E84(globalCtx, &posCopy, &sp84, &sp78, 0x64, (this->actor.shape.rot.z * 6) + 0x13);

            posCopy.y = this->actor.groundY;
            if (this->actor.groundY > -32000.0f) {
                func_80029024(globalCtx, &posCopy, &sp84, &sp6C);
            }

            Audio_PlayActorSound2(&this->actor, NA_SE_IT_BOMB_EXPLOSION);

            // order might be wrong. might also be one chain
            globalCtx->envCtx.unk_8C[3] = globalCtx->envCtx.unk_8C[4] = globalCtx->envCtx.unk_8C[5] = 0xFA;
            globalCtx->envCtx.unk_8C[0] = globalCtx->envCtx.unk_8C[1] = globalCtx->envCtx.unk_8C[2] = 0xFA;

            func_8005AA1C(globalCtx->cameras, 2, 0xB, 8);
            this->actor.params = 1;
            this->timer = 10;
            this->actor.flags |= 0x20;
            func_809C26D0(this, func_809C2A38);
        }
    }

    Actor_SetHeight(&this->actor, 20.0f);

    if (this->actor.params <= 0) {
        Collider_CylinderUpdate(&this->actor, &this->bombCollider);
        // if link is not holding the bomb anymore and bump conditions are met, subscribe to bump
        if ((!func_8002F410(&this->actor, globalCtx)) && (this->bump)) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->bombCollider);
        }
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->bombCollider);
    }

    if ((this->actor.scale.x >= 0.01f) && (this->actor.params != 1)) {
        if (this->actor.waterY >= 20.0f) {
            func_8002A9F4(globalCtx, &this->actor.projectedPos, 0x180F, 1, 1, 0xA);
            Actor_Kill(&this->actor);
            return;
        }
        if (this->actor.bgCheckFlags & 0x40) {
            this->actor.bgCheckFlags &= ~0x40;
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_BOMB_DROP_WATER);
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bom/EnBom_Draw.s")
