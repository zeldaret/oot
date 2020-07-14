#include "z_en_bombf.h"

#define FLAGS 0x00000011

#define THIS ((EnBombf*)thisx)

void EnBombf_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBombf_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBombf_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBombf_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809C74AC(EnBombf* this, GlobalContext* globalCtx);
void func_809C71A8(EnBombf* this, GlobalContext* globalCtx);
void func_809C75C8(EnBombf* this, GlobalContext* globalCtx);
void func_809C7624(EnBombf* this, GlobalContext* globalCtx);
void func_809C7180(EnBombf* this, s16 params);

const ActorInit En_Bombf_InitVars = {
    ACTOR_EN_BOMBF,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_BOMBF,
    sizeof(EnBombf),
    (ActorFunc)EnBombf_Init,
    (ActorFunc)EnBombf_Destroy,
    (ActorFunc)EnBombf_Update,
    (ActorFunc)EnBombf_Draw,
};

// sCylinderInit
ColliderCylinderInit D_809C8260 = {
    { COLTYPE_UNK10, 0x00, 0x29, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x02, { 0x00000000, 0x00, 0x00 }, { 0x0003F828, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 9, 18, 10, { 0, 0, 0 } },
};

// sJntSphItemsInit
ColliderJntSphItemInit D_809C828C[1] = {
    {
        { 0x00, { 0x00000008, 0x00, 0x08 }, { 0x00000000, 0x00, 0x00 }, 0x19, 0x00, 0x00 },
        { 0, { { 0, 0, 0 }, 0 }, 100 },
    },
};

// sJntSphInit
ColliderJntSphInit D_809C82B0 = {
    { COLTYPE_UNK10, 0x39, 0x00, 0x00, 0x00, COLSHAPE_JNTSPH },
    1,
    D_809C828C,
};

Vec3f D_809C82C0 = { 0.0f, 0.0f, 0.0f };
Vec3f D_809C82CC = { 0.0f, 0.1f, 0.0f };
Vec3f D_809C82D8 = { 0.0f, 0.0f, 0.0f };
Vec3f D_809C82E4 = { 0.0f, 0.6f, 0.0f };
Color_RGBA8_n D_809C82F0 = { 255, 255, 255, 255 };

void func_809C6F60(EnBombf* this, EnBombfActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnBombf_Init(Actor* thisx, GlobalContext* globalCtx) {
    f32 shapeUnk10 = 0.0f;
    s32 pad;
    EnBombf* this = THIS;

    Actor_SetScale(&this->actor, 0.01f);
    this->unk_200 = 1;
    Collider_InitCylinder(globalCtx, &this->bombCollider);
    Collider_InitJntSph(globalCtx, &this->jntSphList);
    Collider_SetCylinder(globalCtx, &this->bombCollider, &this->actor, &D_809C8260);
    Collider_SetJntSph(globalCtx, &this->jntSphList, &this->actor, &D_809C82B0, &this->explosionCollider[0]);

    if (this->actor.params == 0) {
        shapeUnk10 = 1000.0f;
    }

    ActorShape_Init(&this->actor.shape, shapeUnk10, ActorShadow_DrawFunc_Circle, 12.0f);
    this->actor.posRot2.pos = this->actor.posRot.pos;

    if (Actor_FindNearby(globalCtx, &this->actor, ACTOR_BG_DDAN_KD, ACTORTYPE_BG, 10000.0f) != 0) {
        this->actor.flags |= 0x20;
    }

    this->actor.colChkInfo.unk_10 = 10.0f;
    this->actor.colChkInfo.unk_12 = 10;
    this->actor.unk_1F = 0;

    if (this->actor.params == 0) {
        this->timer = 140;
        this->flashSpeedScale = 15;
        this->actor.gravity = -1.5f;
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_EXPLOSIVES);
        this->actor.colChkInfo.mass = 200;
        this->actor.flags &= ~1;
        func_809C6F60(this, func_809C74AC);
    } else {
        this->actor.colChkInfo.mass = 0xFF;
        this->bumpOn = true;
        this->unk_20C = 1.0f;
        func_809C7180(this, THIS->actor.params);
    }

    this->actor.uncullZoneScale += 31000.0f;
    this->actor.uncullZoneForward += 31000.0f;
}

void EnBombf_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnBombf* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->jntSphList);
    Collider_DestroyCylinder(globalCtx, &this->bombCollider);
}

void func_809C7180(EnBombf* this, s16 params) {
    func_809C6F60(this, func_809C71A8);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bombf/func_809C71A8.s")
/*
void func_809C71A8(EnBombf* this, GlobalContext* globalCtx) {
    void* sp40;
    PosRot* sp38;
    Actor* temp_v0;
    Actor* temp_v0_2;
    Actor* temp_v0_3;

    if (1.0f <= this->unk_20C) {
        if (func_8002F410(&this->actor, globalCtx)) {
            temp_v0 = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOMBF, this->actor.posRot.pos.x,
                                  this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
            if (temp_v0 == 0) {
                player->actor.attachedB = NULL;
                player->unk3AC = 0;
                player->unk438 = 0;
                this->actor.attachedA = NULL;
                player->unk67C = (s32)(player->unk67C & -0x801);
                return;
            }
            func_8002F5C4(&this->actor, temp_v0, globalCtx);
            this->timer = (u16)0xB4;
            this->unk_20C = 0.0f;
            Audio_PlayActorSound2(&this->actor, (u16)0x86AU);
            this->actor.flags = (u32)(this->actor.flags & -2);
            return;
        }
        if ((this->bombCollider.base.acFlags & 2) != 0) {
            this->bombCollider.base.acFlags = (u8)(this->bombCollider.base.acFlags & 0xFFFD);
            if (this->bombCollider.base.ac->type != 9) {
                temp_v0_2 = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOMBF, this->actor.posRot.pos.x,
                                        this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
                if (temp_v0_2 != 0) {
                    temp_v0_2->unk200 = 1;
                    temp_v0_2->unk1F8 = (u16)0;
                    this->timer = (u16)0xB4;
                    this->actor.flags = (u32)(this->actor.flags & -2);
                    this->unk_20C = 0.0f;
                    return;
                }
            }
        } else {
            if (func_8008EF5C(globalCtx, (Vec3f*)&this->actor.posRot, 30.0f, 50.0f) == 0) {
                if (func_8002F410(&this->actor, globalCtx) != 0) {
                    player->actor.attachedB = NULL;
                    player->unk3AC = 0;
                    player->unk438 = 0;
                    this->actor.attachedA = NULL;
                    player->unk67C &= ~0x800;
                    this->actor.posRot.pos = this->actor.initPosRot.pos;
                    return;
                }
                func_8002F580(&this->actor, globalCtx);
                return;
            }
            temp_v0_3 = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOMBF, this->actor.posRot.pos.x,
                                    this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
            if (temp_v0_3 != 0) {
                temp_v0_3->unk1F8 = (u16)0x64;
                this->timer = (u16)0xB4;
                this->actor.flags = (u32)(this->actor.flags & -2);
                this->unk_20C = 0.0f;
                return;
            }
        }
    } else {
        if (this->timer == 0) {
            this->unk_20C = (f32)(this->unk_20C + 0.05f);
            if (1.0f <= this->unk_20C) {
                this->actor.flags = (u32)(this->actor.flags | 1);
            }
        }
        if (func_8002F410(&this->actor, globalCtx) != 0) {
            player->actor.attachedB = NULL;
            player->unk3AC = 0;
            player->unk438 = 0;
            this->actor.attachedA = NULL;
            player->unk67C &= ~0x800;
            this->actor.posRot.pos = this->actor.initPosRot.pos;
        }
    }
}
*/

void func_809C74AC(EnBombf* this, GlobalContext* globalCtx) {
    if (func_8002F410(&this->actor, globalCtx)) {
        this->unk_20C = 0.0f;
        func_809C6F60(this, func_809C75C8);
        this->actor.room = -1;
        return;
    }

    this->unk_20C = 1.0f;

    if (!(this->actor.bgCheckFlags & 1)) {
        Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.025f, 0.0f);
    } else {
        Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 1.5f, 0.0f);
        if ((this->actor.bgCheckFlags & 2) && (this->actor.velocity.y < -6.0f)) {
            func_8002F850(globalCtx, &this->actor);
            this->actor.velocity.y *= -0.5f;
        } else if (this->timer >= 4) {
            func_8002F580(&this->actor, globalCtx);
        }
    }
}

void func_809C75C8(EnBombf* this, GlobalContext* globalCtx) {
    // if attachedA is NULL bomb has been released
    if (func_8002F5A0(&this->actor, globalCtx)) {
        func_809C6F60(this, func_809C74AC);
        func_809C74AC(this, globalCtx);
    } else {
        this->actor.velocity.y = 0.0f;
    }
}

void func_809C7624(EnBombf* this, GlobalContext* globalCtx) {
    Player* player;

    if (this->jntSphList.list->dim.modelSphere.radius == 0) {
        this->actor.flags |= 0x20;
        func_800AA000(this->actor.xzDistFromLink, 0xFF, 0x14, 0x96);
    }

    this->jntSphList.list->dim.modelSphere.radius += 8;
    this->jntSphList.list->dim.worldSphere.radius = this->jntSphList.list->dim.modelSphere.radius;

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

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bombf/EnBombf_Update.s")
void EnBombf_Update(Actor* thisx, GlobalContext* globalCtx) {
    Vec3f sp8C = { 0.0f, 0.0f, 0.0f };
    Vec3f sp80 = { 0.0f, 0.1f, 0.0f };
    Vec3f sp74 = { 0.0f, 0.0f, 0.0f };
    Vec3f posCopy;
    Vec3f sp5C = { 0.0f, 0.6f, 0.0f };
    Color_RGBA8_n dustColor = { 255, 255, 255, 255 };
    EnBombf* this = THIS;
                         //s32 pad;
                    s32 pad1;
                    s32 pad2;


    if ((this->unk_200 != 0) && (this->timer != 0)) {
        this->timer--;
    }

    // activate bump collider if link is 20 or more units away from the bomb in the xz plane
    // or if the height difference between link and the bomb is 80 or more units
    if ((!this->bumpOn) && (!func_8002F410(&this->actor, globalCtx)) &&
        ((this->actor.xzDistFromLink >= 20.0f) || (ABS(this->actor.yDistFromLink) >= 80.0f))) {
        this->bumpOn = true;
    }

    this->actionFunc(this, globalCtx);

    if (this->actor.params == 0) {
        Actor_MoveForward(&this->actor);
    }

    if (this->actor.gravity != 0.0f) {
        DREG(6) = 1;
        func_8002E4B4(globalCtx, &this->actor, 5.0f, 10.0f, 0.0f, 0x1F);
        DREG(6) = 0;
    }

    if (this->actor.params == 0) {

        if ((this->actor.velocity.y > 0.0f) && (this->actor.bgCheckFlags & 0x10)) {
            this->actor.velocity.y = -this->actor.velocity.y;
        }

        // rebound bomb off the wall it hits
        if ((this->actor.speedXZ != 0.0f) && (this->actor.bgCheckFlags & 8)) {

            if (ABS((s16)(this->actor.wallPolyRot - this->actor.posRot.rot.y)) > 0x4000) {
                this->actor.posRot.rot.y =
                    ((this->actor.wallPolyRot - this->actor.posRot.rot.y) + this->actor.wallPolyRot) - 0x8000;
            }
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_BOMB_BOUND);
            Actor_MoveForward(&this->actor);
            DREG(6) = 1;
            func_8002E4B4(globalCtx, &this->actor, 5.0f, 10.0f, 0.0f, 0x1F);
            DREG(6) = 0;
            this->actor.speedXZ *= 0.7f;
            this->actor.bgCheckFlags &= ~8;
        }

        if ((this->bombCollider.base.acFlags & 2) ||
            ((this->bombCollider.base.maskA & 2) && (this->bombCollider.base.oc->type == 5))) {
                
            this->unk_200 = 1;
            this->timer = 0;
        } else {
            // if a lit stick touches the bomb, set timer to 100
            if ((this->timer > 100) && (func_8008EF5C(globalCtx, &this->actor.posRot.pos, 30.0f, 50.0f))) {
                this->timer = 100;
            }
        }

        if (this->unk_200 != 0) {
            sp5C.y = 0.2f;
            posCopy = this->actor.posRot.pos; // supposed to go to sp3C, goes to 34
            posCopy.y += 25.0f;
            if (this->timer < 127) {

                // spawn spark effect on even frames
                if ((globalCtx->gameplayFrames % 2) == 0) {
                    func_80029184(globalCtx, this, &posCopy, &sp8C, &sp74);
                }
                Audio_PlayActorSound2(&this->actor, NA_SE_IT_BOMB_IGNIT - SFX_FLAG);

                posCopy.y += 3.0f;
                func_8002829C(globalCtx, &posCopy, &sp8C, &sp5C, &dustColor, &dustColor, 0x32, 5);
                if (1) {}
            }

            // double bomb flash speed and adjust red color accordingly
            if ((this->timer == 3) || (this->timer == 30) || (this->timer == 50) || (this->timer == 70)) {
                this->flashSpeedScale >>= 1;
            }

            if ((this->timer < 100) && ((this->timer & (this->flashSpeedScale + 1)) != 0)) {
                Math_SmoothScaleMaxMinF(&this->flashIntensity, 150.0f, 1.0f, 150.0f / this->flashSpeedScale, 0.0f);
            } else {
                Math_SmoothScaleMaxMinF(&this->flashIntensity, 0.0f, 1.0f, 150.0f / this->flashSpeedScale, 0.0f);
            }

            if (this->timer < 3) {
                Actor_SetScale(&this->actor, this->actor.scale.x + 0.002f);
            }

            if (this->timer == 0) {
                posCopy =
                    this->actor.posRot.pos; // same position copy from earlier, gets loaded from sp34 instead of sp3C

                posCopy.y += 10.0f;
                if (func_8002F410(&this->actor, globalCtx)) {
                    posCopy.y += 30.0f;
                }

                func_80028E84(globalCtx, &posCopy, &sp8C, &sp80, 0x64, 0x13);

                posCopy.y = this->actor.groundY;
                if (this->actor.groundY > -32000.0f) {
                    func_80029024(globalCtx, &posCopy, &sp8C, &sp74);
                }

                Audio_PlayActorSound2(&this->actor, NA_SE_IT_BOMB_EXPLOSION);
                globalCtx->envCtx.unk_8C[3] = globalCtx->envCtx.unk_8C[4] = globalCtx->envCtx.unk_8C[5] = 0xFA;
                globalCtx->envCtx.unk_8C[0] = globalCtx->envCtx.unk_8C[1] = globalCtx->envCtx.unk_8C[2] = 0xFA;
                func_8005AA1C(&globalCtx->cameras[0], 2, 0xB, 8);
                this->actor.params = 1;
                this->timer = 10;
                this->actor.flags |= 0x20;
                func_809C6F60(this, func_809C7624);
            }
        }
    }

    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 10.0f;

    if (this->actor.params <= 0) {
                           
        Collider_CylinderUpdate(&this->actor, &this->bombCollider); // bombCollider goes to sp38 instead of sp3C

        if ((this->unk_20C >= 1.0f) && (this->bumpOn)) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx,
                                 &this->bombCollider.base); // bombCollider loads from sp38 instead of sp3C
        }

        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx,
                             &this->bombCollider.base); // bombCollider loads from sp38 instead of sp3C
    }

    if ((this->actor.scale.x >= 0.01f) && (this->actor.params != 1)) {
        if (this->actor.waterY >= 20.0f) {
            func_8002A9F4(globalCtx, &this->actor.projectedPos, NA_SE_IT_BOMB_UNEXPLOSION, 1, 1, 0xA);
            Actor_Kill(&this->actor);
            return;
        }
        if (this->actor.bgCheckFlags & 0x40) {
            this->actor.bgCheckFlags &= ~0x40;
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_BOMB_DROP_WATER);
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bombf/func_809C7F24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bombf/EnBombf_Draw.s")
