/*
 * File: z_en_po_field.c
 * Overlay: ovl_En_Po_Field
 * Description: Field Poe
 */

#include "z_en_po_field.h"

#define FLAGS 0x00001035

#define THIS ((EnPoField*)thisx)

void EnPoField_Init(Actor* thisx, GlobalContext* globalCtx);
void EnPoField_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnPoField_Update(Actor* thisx, GlobalContext* globalCtx);
void EnPoField_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80AD6BF4(Actor* thisx, GlobalContext* globalCtx); // update

void func_80AD6C4C(Actor* thisx, GlobalContext* globalCtx); // draw

void func_80AD3D68(EnPoField* this, GlobalContext* globalCtx);
void func_80AD4664(EnPoField* this, GlobalContext* globalCtx);
void func_80AD48CC(EnPoField* this, GlobalContext* globalCtx);
void func_80AD4A68(EnPoField* this, GlobalContext* globalCtx);
void func_80AD4E48(EnPoField* this, GlobalContext* globalCtx);
void func_80AD4CA4(EnPoField* this, GlobalContext* globalCtx);
void func_80AD4ED8(EnPoField* this, GlobalContext* globalCtx);
void func_80AD52F0(EnPoField* this, GlobalContext* globalCtx);
void func_80AD53F0(EnPoField* this, GlobalContext* globalCtx);
void func_80AD587C(EnPoField* this, GlobalContext* globalCtx);
void func_80AD58D4(EnPoField* this, GlobalContext* globalCtx);
void func_80AD5AD8(EnPoField* this, GlobalContext* globalCtx);
void func_80AD5B18(EnPoField* this, GlobalContext* globalCtx);

void func_80AD5D0C(EnPoField* this);

const ActorInit En_Po_Field_InitVars = {
    ACTOR_EN_PO_FIELD,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_PO_FIELD,
    sizeof(EnPoField),
    (ActorFunc)EnPoField_Init,
    (ActorFunc)EnPoField_Destroy,
    (ActorFunc)EnPoField_Update,
    (ActorFunc)EnPoField_Draw,
};

ColliderCylinderInit D_80AD7080 = {
    { COLTYPE_UNK3, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 25, 50, 20, { 0, 0, 0 } },
};

ColliderCylinderInit D_80AD70AC = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x19, 0x00, 0x00 },
    { 10, 30, 0, { 0, 0, 0 } },
};

CollisionCheckInfoInit D_80AD70D8 = { 0x04, 0x0019, 0x0032, 0x28 };

DamageTable D_80AD70E0 = {
    0x00, 0x02, 0x01, 0x02, 0x11, 0x02, 0x02, 0x12, 0x01, 0x02, 0x04, 0x02, 0x02, 0x02, 0x02, 0x02, 
    0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
};

s32 D_80AD7100 = 0;

Vec3f D_80AD7104 = { -1000.0f, 0.0f, 6500.0f };

InitChainEntry D_80AD7110[1] = {
    ICHAIN_F32(unk_4C, 3200, ICHAIN_STOP),
};

Vec3f D_80AD7114 = { 0.0f, 3.0f, 0.0f };

Vec3f D_80AD7120 = { 0.0f, 0.0f, 0.0f };

EnPoFieldInfo D_80AD712C[2] = {
    { 0xFF, 0xAA, 0xFF, 0x64, 0x00, 0x96, 0xFF, 0x55, 0x00, 0xF8, 0x06001B70 },
    { 0xFF, 0xFF, 0xAA, 0xFF, 0xC8, 0x00, 0xA0, 0x00, 0xFF, 0xF1, 0x06001370 },
};

Vec3f D_80AD714C = { 0.0f, 1400.0f, 0.0f };

Vec3s D_80AD76B0[10];
u8 D_80AD76F0[10];
MtxF D_80AD7700;

extern AnimationHeader D_06000924;
extern SkeletonHeader D_06006A30;
extern AnimationHeader D_06000F9C;
extern AnimationHeader D_06000608;
extern AnimationHeader D_06000454;
extern AnimationHeader D_06001360;
extern Gfx D_0404D4E0[];
extern Gfx D_060059F0[];
extern Gfx D_06005900[];
extern Gfx D_06005620[];
extern Gfx D_060066D0[];
extern Gfx D_06004BA0[];
extern Gfx D_06004CC0[];
extern Gfx D_060023B0[];

void EnPoField_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnPoField* this = THIS;
    s32 temp;

    if (D_80AD7100 != 10) {
        D_80AD76B0[D_80AD7100].x = this->actor.posRot.pos.x;
        D_80AD76B0[D_80AD7100].y = this->actor.posRot.pos.y;
        D_80AD76B0[D_80AD7100].z = this->actor.posRot.pos.z;
        D_80AD76F0[D_80AD7100++] = this->actor.params & 0xFF;
    }
    if (D_80AD7100 >= 2) {
        this->actor.params = 0xFF;
        Actor_Kill(&this->actor);
        return;
    }
    Actor_ProcessInitChain(&this->actor, D_80AD7110);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06006A30, &D_06000924, this->unk_19C, this->unk_1D8, 10);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80AD7080);
    Collider_InitCylinder(globalCtx, &this->collider2);
    Collider_SetCylinder(globalCtx, &this->collider2, &this->actor, &D_80AD70AC);
    func_80061ED4(&this->actor.colChkInfo, &D_80AD70E0, &D_80AD70D8);
    this->light = Lights_Insert(globalCtx, &globalCtx->lightCtx, &this->lightInfo);
    Lights_InitType2PositionalLight(&this->lightInfo, this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z, 0xFF, 0xFF, 0xFF, 0);
    this->actor.shape.shadowDrawFunc = ActorShadow_DrawFunc_Circle;
    func_80AD3D68(this, globalCtx);
}

void EnPoField_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnPoField* this = THIS;

    if (this->actor.params != 0xFF) {
        Lights_Remove(globalCtx, &globalCtx->lightCtx, this->light);
        Collider_DestroyCylinder(globalCtx, &this->collider2);
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

void func_80AD3D68(EnPoField* this, GlobalContext* globalCtx) {
    this->actor.update = EnPoField_Update;
    Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, 5);
    this->actor.shape.rot.x = 0;
    Lights_SetPositionalLightColorAndRadius(&this->lightInfo, 0, 0, 0, 0);
    this->unk_196 = 200;
    Actor_SetScale(&this->actor, 0.0f);
    this->actor.flags &= ~0x00010001;
    this->collider.base.acFlags &= ~1;
    this->collider.base.maskA = 0x39;
    this->actor.colChkInfo.health = D_80AD70D8.health;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actionFunc = func_80AD4664;
}

void func_80AD3E2C(EnPoField* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06000F9C);
    this->actor.draw = EnPoField_Draw;
    this->unk_214 = 255;
    this->unk_215 = 255;
    this->unk_216 = 210;
    this->unk_217 = 0;
    this->actor.shape.unk_14 = 0;
    this->actor.shape.unk_08 = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_APPEAR);
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
    if (this->actor.params == 1) {
        this->actor.speedXZ = 12.0f;
        this->collider.dim.radius = 35;
        this->collider.dim.height = 100;
        this->collider.dim.yShift = 10;
        this->actor.shape.unk_10 = 45.0f;
        this->unk_21C = 0.014f;
        this->actor.naviEnemyId = 0x5A;
    } else {
        this->actor.speedXZ = 0.0f;
        this->collider.dim.radius = D_80AD7080.dim.radius;
        this->collider.dim.height = D_80AD7080.dim.height;
        this->collider.dim.yShift = D_80AD7080.dim.yShift;
        this->actor.shape.unk_10 = 37.0f;
        this->unk_21C = 0.01f;
        this->actor.naviEnemyId = 0x5C;
    }
    this->actionFunc = func_80AD48CC;
}

void func_80AD3F4C(EnPoField* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000924);
    this->collider.base.acFlags |= 1;
    this->unk_21C = this->actor.xzDistFromLink;
    Math_Vec3f_Copy(&this->actor.initPosRot.pos, &player->actor.posRot.pos);
    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    if (this->actionFunc != func_80AD4E48) {
        this->actor.flags |= 1;
        this->unk_196 = 600;
        this->unk_194 = 32;
    }
    this->actionFunc = func_80AD4A68;
}

void func_80AD3FF0(EnPoField* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000608, -5.0f);
    this->collider.base.acFlags |= 1;
    this->actionFunc = func_80AD4CA4;
    this->actor.speedXZ = 12.0f;
    if (func_80AD4CA4 != func_80AD4E48) {
        this->actor.flags |= 1;
        this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x8000;
        this->unk_196 = 2000;
        this->unk_194 = 32;
    }
}

void func_80AD4084(EnPoField* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06000454, -6.0f);
    if (this->collider.body.acHitItem->toucher.flags & 0x1F824) {
        this->actor.posRot.rot.y = this->collider.base.ac->posRot.rot.y;
    } else {
        this->actor.posRot.rot.y = func_8002DA78(&this->actor, this->collider.base.ac) + 0x8000;
    }
    this->collider.base.acFlags &= ~3;
    this->actor.speedXZ = 5.0f;
    func_8003426C(&this->actor, 0x4000, 255, 0, 16);
    this->actionFunc = func_80AD4E48;
}

void func_80AD4140(EnPoField* this) {
    this->unk_196 = 0;
    this->actor.flags &= -2;
    this->actor.speedXZ = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->actor.naviEnemyId = 0xFF;
    if (this->unk_19A >= 20) {
        this->unk_19A = 19;
    }
    this->actionFunc = func_80AD4ED8;
}

void func_80AD4190(EnPoField* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06001360, -6.0f);
    this->unk_196 = 16;
    this->collider.base.acFlags &= ~3;
    this->actor.speedXZ = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DISAPPEAR);
    this->actionFunc = func_80AD52F0;
}

void func_80AD4208(EnPoField* this, GlobalContext* globalCtx) {
    this->actor.update = func_80AD6BF4;
    this->actor.draw = func_80AD6C4C;
    this->actor.shape.shadowDrawFunc = NULL;
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.gravity = -1.0f;
    this->actor.shape.unk_08 = 1500.0f;
    this->actor.shape.rot.x = -0x8000;
    this->unk_196 = 60;
    this->actor.posRot.pos.y -= 15.0f;
    Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, 8);
    this->actionFunc = func_80AD53F0;
}

void func_80AD42B0(EnPoField* this) {
    Lights_InitType0PositionalLight(&this->lightInfo, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
    this->actor.shape.rot.y = 0;
    this->unk_217 = 0;
    this->actor.shape.rot.x = 0;
    this->actor.shape.unk_08 = 0.0f;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
    this->actor.scale.x = 0.0f;
    this->actor.scale.y = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_METAL_BOX_BOUND);
    if (this->actor.params == 1) {
        func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
    }
    this->actionFunc = func_80AD587C;
}

void func_80AD4384(EnPoField* this) {
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
    Actor_SetHeight(&this->actor, -10.0f);
    this->collider.dim.radius = 13;
    this->collider.dim.height = 30;
    this->collider.dim.yShift = 0;
    this->collider.dim.pos.x = this->actor.posRot.pos.x;
    this->collider.dim.pos.y = this->actor.posRot.pos.y - 20.0f;
    this->collider.dim.pos.z = this->actor.posRot.pos.z;
    this->collider.base.maskA = 9;
    this->actor.textId = 0x5005;
    this->unk_196 = 400;
    this->unk_194 = 32;
    this->actor.flags |= 1;
    this->actionFunc = func_80AD58D4;
}

void func_80AD443C(EnPoField* this) {
    this->actionFunc = func_80AD5AD8;
}

void func_80AD444C(EnPoField* this) {
    this->actionFunc = func_80AD5B18;
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y - 15.0f;
}

void func_80AD4470(EnPoField* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->unk_194 == 0) {
        this->unk_194 = 32;
    }
    if (this->unk_194 != 0) {
        this->unk_194 -= 1;
    }
    if (-32000.0f == this->actor.groundY) {
        func_80AD4190(this);
        return;
    }
    Math_SmoothScaleMaxF(&this->actor.initPosRot.pos.y, 
                ((player->actor.posRot.pos.y > this->actor.groundY) ? player->actor.posRot.pos.y : this->actor.groundY) + 13.0f, 
                0.2f, 5.0f);
    this->actor.posRot.pos.y = Math_Sins(this->unk_194 * 0x800) * 13.0f + this->actor.initPosRot.pos.y;
}

f32 func_80AD4554(EnPoField* this, GlobalContext* globalCtx) {
    f32 speed;
    Player* player = PLAYER;

    speed = ((s32)(player->stateFlags1 * 0x100) < 0 && player->rideActor != NULL) ? player->rideActor->speedXZ : 12.0f;
    if (this->actor.xzDistFromLink < 300.0f) {
        this->actor.speedXZ = speed * 1.5f + 2.0f;
    } else if (this->actor.xzDistFromLink < 400.0f) {
        this->actor.speedXZ = speed * 1.25f + 2.0f;
    } else if (this->actor.xzDistFromLink < 500.0f) {
        this->actor.speedXZ = speed + 2.0f;
    } else {
        this->actor.speedXZ = 12.0f;
    }
    this->actor.speedXZ = CLAMP_MIN(this->actor.speedXZ, 12.0f);
}

void func_80AD4664(EnPoField* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Vec3s* spawn;
    s32 i;
    UNK_TYPE sp88;
    f32 phi_f20;

    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    if (this->unk_196 == 0) {
        for (spawn = &D_80AD76B0[0], i = 0; i < D_80AD7100; spawn++, i++) {
            if (fabsf(spawn->x - player->actor.posRot.pos.x) < 150.0f && fabsf(spawn->z - player->actor.posRot.pos.z) < 150.0f) {
                if (Flags_GetSwitch(globalCtx, D_80AD76F0[i]) != 0) {
                    if (!(player->stateFlags1 & 0x800000)) {
                        this->actor.params = 0;
                        phi_f20 = 300.0f;
                    } else return;
                } else if (player->stateFlags1 & 0x800000 || Math_Rand_ZeroOne() < 0.4f) {
                    this->actor.params = 1;
                    this->unk_195 = i;
                    phi_f20 = 480.0f;
                } else {
                    this->actor.params = 0;
                    phi_f20 = 300.0f;
                }
                this->actor.posRot.pos.x = Math_Sins(player->actor.shape.rot.y) * phi_f20 + player->actor.posRot.pos.x;
                this->actor.posRot.pos.z = Math_Coss(player->actor.shape.rot.y) * phi_f20 + player->actor.posRot.pos.z;
                this->actor.posRot.pos.y = player->actor.posRot.pos.y + 1000.0f;
                this->actor.posRot.pos.y = func_8003C9A4(&globalCtx->colCtx, &this->actor.floorPoly, &sp88, &this->actor, &this->actor.posRot.pos);
                if (this->actor.posRot.pos.y != -32000.0f) {
                    this->actor.shape.rot.y = func_8002DA78(&this->actor, &player->actor);
                    func_80AD3E2C(this);
                } else return;
            }
        }
    }
}

void func_80AD48CC(EnPoField* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        this->unk_217 = 255;
        Actor_SetScale(&this->actor, this->unk_21C);
        if (this->actor.params == 1) {
            func_80AD3FF0(this);
        } else {
            func_80AD3F4C(this, globalCtx);
        }
    } else if (this->skelAnime.animCurrentFrame > 10.0f) {
        this->unk_217 = ((this->skelAnime.animCurrentFrame - 10.0f) * 0.05f) * 255.0f;
    } else {
        this->actor.scale.x += this->unk_21C * 0.1f;
        this->actor.scale.y = this->actor.scale.x;
        this->actor.scale.z = this->actor.scale.x;
    }
    this->actor.shape.unk_14 = this->unk_217;
    this->actor.shape.rot.y = this->actor.yawTowardsLink;
    if (this->actor.params == 1) {
        this->actor.posRot.rot.y = this->actor.yawTowardsLink + 0x8000;
        func_80AD4554(this, globalCtx);
    }
}

void func_80AD4A68(EnPoField* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 temp_v1 = 16 - this->unk_194;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    if (ABS(temp_v1) < 16) {
        this->actor.posRot.rot.y += 512.0f * fabsf(Math_Sins(this->unk_194 * 0x800));
    }
    Math_SmoothScaleMaxF(&this->unk_21C, 180.0f, 0.5f, 10.0f);
    Math_SmoothScaleMaxF(&this->actor.initPosRot.pos.x, player->actor.posRot.pos.x, 0.2f, 6.0f);
    Math_SmoothScaleMaxF(&this->actor.initPosRot.pos.z, player->actor.posRot.pos.z, 0.2f, 6.0f);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.posRot.rot.y, 1, 0x800, 0x200);
    if (this->actor.initPosRot.pos.x - player->actor.posRot.pos.x > 100.0f) {
        this->actor.initPosRot.pos.x = player->actor.posRot.pos.x + 100.0f;
    } else if (this->actor.initPosRot.pos.x - player->actor.posRot.pos.x < -100.0f) {
        this->actor.initPosRot.pos.x = player->actor.posRot.pos.x + -100.0f;
    }
    if (this->actor.initPosRot.pos.z - player->actor.posRot.pos.z > 100.0f) {
        this->actor.initPosRot.pos.z = player->actor.posRot.pos.z + 100.0f;
    } else if (this->actor.initPosRot.pos.z - player->actor.posRot.pos.z < -100.0f) {
        this->actor.initPosRot.pos.z = player->actor.posRot.pos.z + -100.0f;
    }
    this->actor.posRot.pos.x = this->actor.initPosRot.pos.x - (Math_Sins(this->actor.posRot.rot.y) * this->unk_21C);
    this->actor.posRot.pos.z = this->actor.initPosRot.pos.z - (Math_Coss(this->actor.posRot.rot.y) * this->unk_21C);
    if (this->unk_196 == 0) {
        func_80AD4190(this);
    } else {
        func_80AD5D0C(this);
    }
    func_80AD4470(this, globalCtx);
    func_8002F974(&this->actor, NA_SE_EN_PO_FLY - SFX_FLAG);
}

void func_80AD4CA4(EnPoField* this, GlobalContext* globalCtx) {
    f32 temp_f6;
    s16 phi_t0;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    if (func_8002DBB0(&this->actor, &D_80AD7104) > 3000.0f) {
        phi_t0 = (s16)(this->actor.yawTowardsLink - func_8002DAC0(&this->actor, &D_80AD7104) - 0x8000) * 0.2f;
    } else {
        phi_t0 = 0;
    }
    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink - phi_t0, 6, 0x400);
    func_80AD4554(this, globalCtx);
    this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x8000;
    temp_f6 = Math_Sins(this->unk_196 * 0x800) * 3.0f;
    this->actor.posRot.pos.x -= temp_f6 * Math_Coss(this->actor.shape.rot.y);
    this->actor.posRot.pos.z += temp_f6 * Math_Sins(this->actor.shape.rot.y);
    if (this->unk_196 == 0 || 1500.0f < this->actor.xzDistFromLink) {
        func_80AD4190(this);
    } else {
        func_80AD4470(this, globalCtx);
    }
    func_8002F974(&this->actor, 0x3072);
}

void func_80AD4E48(EnPoField* this, GlobalContext* globalCtx) {
    Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.5f);
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        if (this->actor.colChkInfo.health == 0) {
            func_80AD4140(this);
        } else if (this->actor.params == 1) {
            func_80AD3FF0(this);
        } else {
            func_80AD3F4C(this, globalCtx);
        }
    }
}

void func_80AD4ED8(EnPoField* this, GlobalContext* globalCtx) {
    Vec3f sp6C;
    f32 sp68;
    s32 pad;
    s32 pad1;
    f32 temp_f0;

    this->unk_196++;
    if (this->unk_196 < 8) {
        if (this->unk_196 < 5) {
            sp6C.y = Math_Sins(this->unk_196 * 0x1000 - 0x4000) * 23.0f + (this->actor.posRot.pos.y + 40.0f);
            sp68 = Math_Coss(this->unk_196 * 0x1000 - 0x4000) * 23.0f;
            sp6C.x = Math_Sins(func_8005A9F4(ACTIVE_CAM) + 0x4800) * sp68 + this->actor.posRot.pos.x;
            sp6C.z = Math_Coss(func_8005A9F4(ACTIVE_CAM) + 0x4800) * sp68 + this->actor.posRot.pos.z;
        } else {
            sp6C.y = this->actor.posRot.pos.y + 40.0f + 15.0f * (this->unk_196 - 5);
            sp6C.x = Math_Sins(func_8005A9F4(ACTIVE_CAM) + 0x4800) * 23.0f + this->actor.posRot.pos.x;
            sp6C.z = Math_Coss(func_8005A9F4(ACTIVE_CAM) + 0x4800) * 23.0f + this->actor.posRot.pos.z;
        }
        func_8002A6B8(globalCtx, &sp6C, &D_80AD7114, &D_80AD7120, this->unk_196 * 10 + 80, 0, 255, 255, 255, 255, 0, 0, 255, 1, 9, 1);
        sp6C.x = (this->actor.posRot.pos.x + this->actor.posRot.pos.x) - sp6C.x;
        sp6C.z = (this->actor.posRot.pos.z + this->actor.posRot.pos.z) - sp6C.z;
        func_8002A6B8(globalCtx, &sp6C, &D_80AD7114, &D_80AD7120, this->unk_196 * 10 + 80, 0, 255, 255, 255, 255, 0, 0, 255, 1, 9, 1);
        sp6C.x = this->actor.posRot.pos.x;
        sp6C.z = this->actor.posRot.pos.z;
        func_8002A6B8(globalCtx, &sp6C, &D_80AD7114, &D_80AD7120, this->unk_196 * 10 + 80, 0, 255, 255, 255, 255, 0, 0, 255, 1, 9, 1);
        if (this->unk_196 == 1) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_EXTINCT);
        }
    } else if (this->unk_196 == 28) {
        func_80AD4208(this, globalCtx);
    } else if (this->unk_196 >= 19) {
        temp_f0 = (28 - this->unk_196) * 0.001f;
        this->actor.posRot.pos.y += 5.0f;
        this->actor.scale.z = temp_f0;
        this->actor.scale.y = temp_f0;
        this->actor.scale.x = temp_f0;
    }
    if (this->unk_196 == 18) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DEAD2);
    }
}

void func_80AD52F0(EnPoField* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    this->actor.shape.rot.y += 0x1000;
    this->unk_217 = this->unk_196 * 15.9375f;
    this->actor.shape.unk_14 = this->unk_217;
    if (this->unk_196 == 0) {
        func_80AD3D68(this, globalCtx);
    }
}

void func_80AD53F0(EnPoField* this, GlobalContext* globalCtx) {
    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    if (this->actor.bgCheckFlags & 1) {
        func_800297A4(globalCtx, &this->actor.posRot.pos, 6.0f, 0, 1, 1, 15, 109, 10, D_06004BA0);
        func_80AD42B0(this);
    } else if (this->unk_196 == 0) {
        func_80AD3D68(this, globalCtx);
    }
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 10.0f, 10.0f, 10.0f, 4);
}

void func_80AD54D4(EnPoField* this, s32 arg1) {
    EnPoFieldInfo* info = &D_80AD712C[this->actor.params];
    f32 multiplier;

    this->unk_217 = CLAMP(this->unk_217 + arg1, 0, 255);
    if (arg1 < 0) {
        multiplier = this->unk_217 * 0.003921569f;
        this->actor.scale.z = 0.0056000003f * multiplier + 0.00140000007f;
        this->actor.scale.x = 0.0056000003f * multiplier + 0.00140000007f;
        this->actor.scale.y = 0.007f - 0.007f * multiplier + 0.007f;
    } else {
        multiplier = 1.0f;
        this->actor.scale.z = this->unk_217 * 2.7450982e-05f;
        this->actor.scale.y = this->unk_217 * 2.7450982e-05f;
        this->actor.scale.x = this->unk_217 * 2.7450982e-05f;
        this->actor.posRot.pos.y = this->actor.initPosRot.pos.y + (0.05882353f * this->unk_217);
    }
    this->unk_214 = info->unk_3 * multiplier;
    this->unk_215 = info->unk_4 * multiplier;
    this->unk_216 = info->unk_5 * multiplier;
    Lights_InitType0PositionalLight(&this->lightInfo, 
                this->actor.posRot.pos.x, 
                this->actor.posRot.pos.y, 
                this->actor.posRot.pos.z, 
                info->unk_3, info->unk_4, info->unk_5, this->unk_217 * 0.78431373f);
}

void func_80AD587C(EnPoField* this, GlobalContext* globalCtx) {
    this->actor.initPosRot.pos.y += 2.0f;
    func_80AD54D4(this, 20);
    if (this->unk_217 == 255) {
        func_80AD4384(this);
    }
}

void func_80AD58D4(EnPoField* this, GlobalContext* globalCtx) {
    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        func_80AD444C(this);
        return;
    }
    if (this->unk_196 == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
        this->actor.flags &= ~0x10000;
        func_80AD443C(this);
        return;
    }
    if (this->collider.base.maskA & 2) {
        this->actor.flags |= 0x10000;
        func_8002F2F4(&this->actor, globalCtx);
    } else {
        this->actor.flags &= ~0x10000;
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
    this->actor.posRot.pos.y = (Math_Sins(this->unk_194 * 0x800) * 5.0f) + this->actor.initPosRot.pos.y;
    if (this->unk_194 != 0) {
        this->unk_194 -= 1;
    }
    if (this->unk_194 == 0) {
        this->unk_194 = 0x20;
    }
    this->collider.dim.pos.y = this->actor.posRot.pos.y - 20.0f;
    Actor_SetHeight(&this->actor, -10.0f);
    Lights_InitType0PositionalLight(&this->lightInfo, 
                this->actor.posRot.pos.x, 
                this->actor.posRot.pos.y, 
                this->actor.posRot.pos.z, 
                this->lightInfo.params.red, this->lightInfo.params.green, this->lightInfo.params.blue, this->unk_217 * 0.78431374f);
}

void func_80AD5AD8(EnPoField* this, GlobalContext* globalCtx) {
    func_80AD54D4(this, -13);
    if (this->unk_217 == 0) {
        func_80AD3D68(this, globalCtx);
    }
}

void func_80AD5B18(EnPoField* this, GlobalContext* globalCtx) {
    // You defeated Poe the ghost! Do you want to catch it in a bottle?
    if (this->actor.textId != 0x5005) {
        func_80AD54D4(this, -13);
    } else {
        func_8002F974(&this->actor, NA_SE_EN_PO_BIG_CRY - SFX_FLAG);
    }
    if (func_8010BDBC(&globalCtx->msgCtx) == 4) {
        if (func_80106BC8(globalCtx) != 0) {
            func_800F8A44(&this->actor.projectedPos, NA_SE_EN_PO_BIG_CRY - SFX_FLAG);
            if (globalCtx->msgCtx.choiceIndex == 0) {
                if (Inventory_HasEmptyBottle()) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_BIG_GET);
                    if (this->actor.params == 0) {
                        Item_Give(globalCtx, ITEM_POE);
                        // You caught a Poe!
                        this->actor.textId = 0x5008;
                    } else {
                        // You caught a Big Poe! Sell it at the Ghost Shop for a lot of money!
                        this->actor.textId = 0x508F;
                        Item_Give(globalCtx, ITEM_BIG_POE);
                        Flags_SetSwitch(globalCtx, D_80AD76F0[this->unk_195]);
                    }
                } else {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
                    // You want to catch it but you don't have an empty bottle.
                    this->actor.textId = 0x5006;
                }
            } else {
                // You let it go for now.
                this->actor.textId = 0x5007;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
            }
            func_8010B720(globalCtx, this->actor.textId);
            return;
        }
    } else if (func_8002F334(&this->actor, globalCtx) != 0) {
        func_80AD443C(this);
    }
}

void func_80AD5C74(EnPoField* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;
        if (this->actor.colChkInfo.damageEffect != 0 || this->actor.colChkInfo.damage != 0) {
            if (Actor_ApplyDamage(&this->actor) == 0) {
                func_80032C7C(globalCtx, &this->actor);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DEAD);
            } else {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DAMAGE);
            }
            func_80AD4084(this);
        }
    }
}

void func_80AD5D0C(EnPoField* this) {
    if (this->unk_19A == 0) {
        this->unk_224.x = this->lightInfo.params.posX;
        this->unk_224.y = this->lightInfo.params.posY;
        this->unk_224.z = this->lightInfo.params.posZ;
        this->unk_19A = 70;
        this->unk_198 = this->actor.shape.rot.y;
    }
}

void func_80AD5D60(EnPoField* this, GlobalContext* globalCtx) {
    if (this->unk_19A != 0) {
        if (this->unk_19A != 0) {
            this->unk_19A--;
        }
        if (this->collider2.base.atFlags & 2) {
            this->collider2.base.atFlags &= ~2;
            this->unk_19A = 19;
        }
        if (this->unk_19A < 20) {
            Math_ApproxF(&this->unk_220, 0.0f, 0.00015f);
            return;
        }
        if (Math_ApproxF(&this->unk_220, 0.003f, 0.0006f) != 0) {
            this->unk_224.x += 2.5f * Math_Sins(this->unk_198);
            this->unk_224.z += 2.5f * Math_Coss(this->unk_198);
        }
        this->collider2.dim.pos.x = this->unk_224.x;
        this->collider2.dim.pos.y = this->unk_224.y;
        this->collider2.dim.pos.z = this->unk_224.z;
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
    }
}

void func_80AD5E8C(EnPoField* this, GlobalContext* globalCtx) {
    f32 sp4C;
    s32 pad;

    if (this->unk_19A != 0) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_po_field.c", 1669);
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(oGfxCtx->polyXlu.p++, 0x08, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 64, 1, 0, (globalCtx->gameplayFrames * -20) % 512, 32, 128));
        sp4C = this->unk_220 * 85000.0f;
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 255, 255, 0, sp4C);
        Matrix_Translate(this->unk_224.x, this->unk_224.y, this->unk_224.z, MTXMODE_NEW);
        Matrix_RotateY((s16)(func_8005A9F4(ACTIVE_CAM) + 0x8000) * 0.0000958738f, MTXMODE_APPLY);
        if (this->unk_19A >= 0x14) {
            gDPSetEnvColor(oGfxCtx->polyXlu.p++, 255, 0, 0, 0);
            Matrix_Scale(this->unk_220, this->unk_220, this->unk_220, MTXMODE_APPLY);
        } else {
            gDPSetEnvColor(oGfxCtx->polyXlu.p++, sp4C, 0, 0, 0);
            Matrix_Scale((this->unk_220 * 0.7f) + 0.00090000004f, (0.003f - this->unk_220) + 0.003f, 0.003f, MTXMODE_APPLY);
        }
        gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_field.c", 1709), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyXlu.p++, D_0404D4E0);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_po_field.c", 1712);
    }
}

void func_80AD619C(EnPoField* this) {
    s16 temp_var; // required for matching

    if (this->actionFunc == func_80AD4CA4) {
        this->unk_214 = CLAMP_MAX((s16)(this->unk_214 + 5), 80);
        this->unk_215 = CLAMP_MAX((s16)(this->unk_215 + 5), 255);
        temp_var = this->unk_216 + 5;
        this->unk_216 = CLAMP_MAX(temp_var, 225);
    } else if (this->actionFunc == func_80AD4E48) {
        if (this->actor.dmgEffectTimer & 2) {
            this->unk_214 = 0;
            this->unk_215 = 0;
            this->unk_216 = 0;
        } else {
            this->unk_214 = 80;
            this->unk_215 = 255;
            this->unk_216 = 225;
        }
    } else {
        this->unk_214 = CLAMP_MAX((s16)(this->unk_214 + 5), 255);
        this->unk_215 = CLAMP_MAX((s16)(this->unk_215 + 5), 255);
        if (this->unk_216 > 210) {
            temp_var = this->unk_216 - 5;
            this->unk_216 = CLAMP_MIN(temp_var, 210);
        } else {
            temp_var = this->unk_216 + 5;
            this->unk_216 = CLAMP_MAX(temp_var, 210);
        }
    }
}

void func_80AD6330(EnPoField* this) {
    f32 rand;

    if (this->actionFunc == func_80AD48CC && this->skelAnime.animCurrentFrame < 12.0f) {
        this->unk_21A = (s16)(this->skelAnime.animCurrentFrame * 16.66f) + 55;
        this->unk_219 = (s16)(this->skelAnime.animCurrentFrame * 16.66f) + 55;
        this->unk_218 = (s16)(this->skelAnime.animCurrentFrame * 16.66f) + 55;
        this->unk_21B = this->skelAnime.animCurrentFrame * 16.666666f;
    } else {
        rand = Math_Rand_ZeroOne();
        this->unk_218 = (s16)(rand * 30.0f) + 225;
        this->unk_219 = (s16)(rand * 100.0f) + 155;
        this->unk_21A = (s16)(rand * 160.0f) + 95;
        this->unk_21B = 200;
    }
}

void EnPoField_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnPoField* this = THIS;

    func_80AD5C74(this, globalCtx);
    this->actionFunc(this, globalCtx);
    func_80AD5D60(this, globalCtx);
    if (this->actionFunc == func_80AD4CA4 || this->actionFunc == func_80AD4E48 || this->actionFunc == func_80AD48CC) {
        Actor_MoveForward(&this->actor);
    }
    if (this->actionFunc != func_80AD4664) {
        Actor_SetHeight(&this->actor, 42.0f);
        func_8002E4B4(globalCtx, &this->actor, 0.0f, 27.0f, 60.0f, 4);
        func_80AD619C(this);
        func_80AD6330(this);
        Collider_CylinderUpdate(&this->actor, &this->collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        if (this->collider.base.acFlags & 1) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
    }
}

// OverrideLimbDraw2
s32 func_80AD65C8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx, Gfx** gfxP) {
    EnPoField* this = THIS;

    if (this->unk_217 == 0 || limbIndex == 7 || (this->actionFunc == func_80AD4ED8 && this->unk_196 >= 2)) {
        *dList = NULL;
    } else if (this->actor.params == 1) {
        if (limbIndex == 1) {
            *dList = D_06005900;
        } else if (limbIndex == 8) {
            *dList = D_06005620;
        } else if (limbIndex == 9) {
            *dList = D_060059F0;
        }
    }
    if (this->actionFunc == func_80AD52F0 && limbIndex == 7) {
        Matrix_Scale(this->unk_196 * 0.0625f, this->unk_196 * 0.0625f, this->unk_196 * 0.0625f, 1);
    }
    return 0;
}

// PostLimDraw2
void func_80AD66D0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx, Gfx** gfxP) {
    EnPoField* this = THIS;

    if (this->actionFunc == func_80AD4ED8 && this->unk_196 >= 2 && limbIndex == 8) {
        gSPMatrix((*gfxP)++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_field.c", 1916), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList((*gfxP)++, D_060066D0);
    }
    if (limbIndex == 7) {
        Vec3f vec;
        Matrix_MultVec3f(&D_80AD714C, &vec);
        if (this->actionFunc == func_80AD4ED8 && this->unk_196 >= 19 && this->actor.scale.x != 0.0f) {
            f32 mtxScale = 0.01f / this->actor.scale.x;
            Matrix_Scale(mtxScale, mtxScale, mtxScale, 1);
        }
        Matrix_Get(&D_80AD7700);
        if (this->actionFunc == func_80AD4ED8 && this->unk_196 == 27) {
            this->actor.posRot.pos.x = D_80AD7700.wx;
            this->actor.posRot.pos.y = D_80AD7700.wy;
            this->actor.posRot.pos.z = D_80AD7700.wz;
        }
        Lights_InitType2PositionalLight(&this->lightInfo, vec.x, vec.y, vec.z, this->unk_218, this->unk_219, this->unk_21A, this->unk_21B * 0.7843137383460999f);
    }
}

void EnPoField_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnPoField* this = THIS;
    EnPoFieldInfo* info = &D_80AD712C[this->actor.params];

    if (this->actionFunc != func_80AD4664) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_po_field.c", 1976);
        func_80093D18(globalCtx->state.gfxCtx);
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, Gfx_EnvColor(globalCtx->state.gfxCtx, info->unk_6, info->unk_7, info->unk_8, 255));
        if (this->unk_217 == 255 || this->unk_217 == 0) {
            gSPSegment(oGfxCtx->polyOpa.p++, 0x08, Gfx_EnvColor(globalCtx->state.gfxCtx, this->unk_214, this->unk_215, this->unk_216, this->unk_217));
            gSPSegment(oGfxCtx->polyOpa.p++, 0x0C, D_80116280 + 2);
            oGfxCtx->polyOpa.p = SkelAnime_Draw2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_80AD65C8, func_80AD66D0, &this->actor, oGfxCtx->polyOpa.p);
        } else {
            gSPSegment(oGfxCtx->polyXlu.p++, 0x08, Gfx_EnvColor(globalCtx->state.gfxCtx, this->unk_214, this->unk_215, this->unk_216, this->unk_217));
            gSPSegment(oGfxCtx->polyXlu.p++, 0x0C, D_80116280);
            oGfxCtx->polyXlu.p = SkelAnime_Draw2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_80AD65C8, func_80AD66D0, &this->actor, oGfxCtx->polyXlu.p);
        }
        gDPPipeSync(oGfxCtx->polyOpa.p++);
        gDPSetEnvColor(oGfxCtx->polyOpa.p++, this->unk_218, this->unk_219, this->unk_21A, 255);
        Matrix_Put(&D_80AD7700);
        gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_field.c", 2033), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_06004BA0);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_06004CC0);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_po_field.c", 2039);
    }
    func_80AD5E8C(this, globalCtx);
}

void func_80AD6BF4(Actor* thisx, GlobalContext* globalCtx) {
    EnPoField* this = THIS;

    this->actionFunc(this, globalCtx);
    if (this->actionFunc == func_80AD53F0) {
        func_80AD6330(this);
    }
    func_80AD5D60(this, globalCtx);
}

void func_80AD6C4C(Actor* thisx, GlobalContext* globalCtx) {
    EnPoField* this = THIS;
    s32 pad;
    EnPoFieldInfo* info = &D_80AD712C[this->actor.params];

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_po_field.c", 2077);
    if (this->actionFunc == func_80AD53F0) {
        func_80093D18(globalCtx->state.gfxCtx);
        gSPSegment(oGfxCtx->polyOpa.p++, 0x0A, Gfx_EnvColor(globalCtx->state.gfxCtx, info->unk_6, info->unk_7, info->unk_8, 255));
        Lights_InitType2PositionalLight(&this->lightInfo, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 
                    this->unk_218, this->unk_219, this->unk_21A, 200);
        gDPSetEnvColor(oGfxCtx->polyOpa.p++, this->unk_218, this->unk_219, this->unk_21A, 255);
        gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_field.c", 2104), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_06004BA0);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_06004CC0);
    } else {
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(oGfxCtx->polyXlu.p++, 0x08, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0, (globalCtx->gameplayFrames * info->unk_9) & 0x1FF, 0x20, 0x80));
        gSPSegment(oGfxCtx->polyXlu.p++, 0x09, SEGMENTED_TO_VIRTUAL(info->unk_C));
        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, info->unk_0, info->unk_1, info->unk_2, this->unk_217);
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, this->unk_214, this->unk_215, this->unk_216, 255);
        Matrix_RotateY((s16)(func_8005A9F4(ACTIVE_CAM) + 0x8000) * 9.58738e-05f, 1);
        gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_field.c", 2143), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyXlu.p++, D_060023B0);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_po_field.c", 2149);
    func_80AD5E8C(this, globalCtx);
}
