#include "z_en_po_field.h"

#define FLAGS 0x00001035

#define THIS ((EnPoField*)thisx)

void EnPoField_Init(Actor* thisx, GlobalContext* globalCtx);
void EnPoField_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnPoField_Update(Actor* thisx, GlobalContext* globalCtx);
void EnPoField_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80AD6BF4(Actor* thisx, GlobalContext* globalCtx); // update

void func_80AD6C4C(Actor* thisx, GlobalContext* globalCtx); // draw

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


/*
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
*/

// TODO data

extern InitChainEntry D_80AD7110[];
extern ColliderCylinderInit D_80AD7080;
extern ColliderCylinderInit D_80AD70AC;
extern DamageTable D_80AD70E0;
extern CollisionCheckInfoInit D_80AD70D8;
extern Vec3f D_80AD7104;
extern Vec3f D_80AD7114;
extern Vec3f D_80AD7120;
extern EnPoFieldInfo D_80AD712C[];
extern Vec3f D_80AD714C;

extern u8 D_80AD76F0[];
extern MtxF D_80AD7700;

// external references

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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/EnPoField_Init.s")
/* void EnPoField_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 temp_t6;
    s32 temp_v1;
    void *temp_v0;
    s32 phi_v1;
    EnPoField* this;

    this = THIS;
    phi_v1 = D_80AD7100;
    if (D_80AD7100 != 0xA) {
        temp_v0 = (D_80AD7100 * 6) + &D_80AD76B0;
        temp_v0->unk0 = (s16) (s32) this->actor.posRot.pos.x;
        temp_t6 = D_80AD7100 + 1;
        temp_v1 = temp_t6;
        temp_v0->unk2 = (s16) (s32) this->actor.posRot.pos.y;
        temp_v0->unk4 = (s16) (s32) this->actor.posRot.pos.z;
        *(&D_80AD76F0 + D_80AD7100) = (s8) this->actor.params;
        D_80AD7100 = temp_t6;
        phi_v1 = temp_v1;
    }
    if (phi_v1 >= 2) {
        this->actor.params = 0xFF;
        Actor_Kill(&this->actor);
        return;
    }
    Actor_ProcessInitChain(this, D_80AD7110);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06006A30, &D_06000924, &this->unk_19C, &this->unk_1D8, 10);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80AD7080);
    Collider_InitCylinder(globalCtx, &this->collider2);
    Collider_SetCylinder(globalCtx, &this->collider2, &this->actor, &D_80AD70AC);
    func_80061ED4(&this->actor.colChkInfo, &D_80AD70E0, &D_80AD70D8);
    this->light = Lights_Insert(globalCtx, &globalCtx->lightCtx, &this->lightInfo);
    Lights_InitType2PositionalLight(&this->lightInfo, this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z, 0xFF, 0xFF, 0xFF, 0);
    this->actor.shape.shadowDrawFunc = ActorShadow_DrawFunc_Circle;
    func_80AD3D68(this, globalCtx);
} */

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/EnPoField_Destroy.s")
void EnPoField_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnPoField* this = THIS;

    if (this->actor.params != 0xFF) {
        Lights_Remove(globalCtx, &globalCtx->lightCtx, this->light);
        Collider_DestroyCylinder(globalCtx, &this->collider2);
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD3D68.s")
void func_80AD3D68(EnPoField* this, GlobalContext* globalCtx) {
    this->actor.update = EnPoField_Update;
    Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, 5);
    this->actor.shape.rot.x = 0;
    Lights_SetPositionalLightColorAndRadius(&this->lightInfo, 0, 0, 0, 0);
    this->unk_196 = 0xC8;
    Actor_SetScale(&this->actor, 0.0f);
    this->actor.flags &= ~0x00010001;
    this->collider.base.acFlags &= ~1;
    this->collider.base.maskA = 0x39;
    this->actor.colChkInfo.health = D_80AD70D8.health;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actionFunc = func_80AD4664;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD3E2C.s")
void func_80AD3E2C(EnPoField* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06000F9C);
    this->actor.draw = EnPoField_Draw;
    this->unk_214 = 0xFF;
    this->unk_215 = 0xFF;
    this->unk_216 = 0xD2;
    this->unk_217 = 0x00;
    this->actor.shape.unk_14 = 0;
    this->actor.shape.unk_08 = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_APPEAR);
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
    if (this->actor.params == 1) {
        this->actor.speedXZ = 12.0f;
        this->collider.dim.radius = 0x23;
        this->collider.dim.height = 0x64;
        this->collider.dim.yShift = 0xA;
        this->actor.shape.unk_10 = 45.0f;
        this->unk_21C = 0.014000000432133675f;
        this->actor.naviEnemyId = 0x5A;
    } else {
        this->actor.speedXZ = 0.0f;
        this->collider.dim.radius = D_80AD7080.dim.radius;
        this->collider.dim.height = D_80AD7080.dim.height;
        this->collider.dim.yShift = D_80AD7080.dim.yShift;
        this->actor.shape.unk_10 = 37.0f;
        this->unk_21C = 0.009999999776482582f;
        this->actor.naviEnemyId = 0x5C;
    }
    this->actionFunc = func_80AD48CC;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD3F4C.s")
void func_80AD3F4C(EnPoField* this, GlobalContext* globalCtx) {
    Player* player;

    player = PLAYER;
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000924);
    this->collider.base.acFlags |= 1;
    this->unk_21C = this->actor.xzDistFromLink;
    Math_Vec3f_Copy(&this->actor.initPosRot.pos, &player->actor.posRot.pos);
    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    if (this->actionFunc != func_80AD4E48) {
        this->actor.flags |= 1;
        this->unk_196 = 0x258;
        this->unk_194 = 0x20;
    }
    this->actionFunc = func_80AD4A68;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD3FF0.s")
void func_80AD3FF0(EnPoField* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000608, -5.0f);
    this->collider.base.acFlags |= 1;
    this->actionFunc = func_80AD4CA4;
    this->actor.speedXZ = 12.0f;
    if (func_80AD4CA4 != func_80AD4E48) {
        this->actor.flags |= 1;
        this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x8000;
        this->unk_196 = 0x7D0;
        this->unk_194 = 0x20;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4084.s")
void func_80AD4084(EnPoField* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06000454, -6.0f);
    if (this->collider.body.acHitItem->toucher.flags & 0x1F824) {
        this->actor.posRot.rot.y = this->collider.base.ac->posRot.rot.y;
    } else {
        this->actor.posRot.rot.y = func_8002DA78(&this->actor, this->collider.base.ac) + 0x8000;
    }
    this->collider.base.acFlags &= ~3;
    this->actor.speedXZ = 5.0f;
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0x10);
    this->actionFunc = func_80AD4E48;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4140.s")
void func_80AD4140(EnPoField* this) {
    this->unk_196 = 0;
    this->actor.flags &= -2;
    this->actor.speedXZ = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->actor.naviEnemyId = 0xFF;
    if (this->unk_19A >= 0x14) {
        this->unk_19A = 0x13;
    }
    this->actionFunc = func_80AD4ED8;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4190.s")
void func_80AD4190(EnPoField* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06001360, -6.0f);
    this->unk_196 = 0x10;
    this->collider.base.acFlags &= ~3;
    this->actor.speedXZ = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DISAPPEAR);
    this->actionFunc = func_80AD52F0;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4208.s")
void func_80AD4208(EnPoField* this, GlobalContext* globalCtx) {
    this->actor.update = func_80AD6BF4;
    this->actor.draw = func_80AD6C4C;
    this->actor.shape.shadowDrawFunc = NULL;
    Actor_SetScale(&this->actor, 0.009999999776482582f);
    this->actor.gravity = -1.0f;
    this->actor.shape.unk_08 = 1500.0f;
    this->actor.shape.rot.x = -0x8000;
    this->unk_196 = 0x3C;
    this->actor.posRot.pos.y -= 15.0f;
    Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, 8);
    this->actionFunc = func_80AD53F0;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD42B0.s")
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
    Audio_PlayActorSound2(this, NA_SE_EV_METAL_BOX_BOUND);
    if (this->actor.params == 1) {
        func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
    }
    this->actionFunc = func_80AD587C;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4384.s")
void func_80AD4384(EnPoField* this) {
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
    Actor_SetHeight(&this->actor, -10.0f);
    this->collider.dim.radius = 0xD;
    this->collider.dim.height = 0x1E;
    this->collider.dim.yShift = 0;
    this->collider.dim.pos.x = this->actor.posRot.pos.x;
    this->collider.dim.pos.y = this->actor.posRot.pos.y - 20.0f;
    this->collider.dim.pos.z = this->actor.posRot.pos.z;
    this->collider.base.maskA = 9;
    this->actor.textId = 0x5005;
    this->unk_196 = 0x190;
    this->unk_194 = 0x20;
    this->actor.flags |= 1;
    this->actionFunc = func_80AD58D4;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD443C.s")
void func_80AD443C(EnPoField* this) {
    this->actionFunc = func_80AD5AD8;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD444C.s")
void func_80AD444C(EnPoField* this) {
    this->actionFunc = func_80AD5B18;
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y - 15.0f;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4470.s")
void func_80AD4470(EnPoField* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->unk_194 == 0) {
        this->unk_194 = 0x20;
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
                0.20000000298023224f, 5.0f);
    this->actor.posRot.pos.y = Math_Sins(this->unk_194 * 0x800) * 13.0f + this->actor.initPosRot.pos.y;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4554.s")
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4664.s")








//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD48CC.s")
void func_80AD48CC(EnPoField* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        this->unk_217 = 0xFF;
        Actor_SetScale(&this->actor, this->unk_21C);
        if (this->actor.params == 1) {
            func_80AD3FF0(this);
        } else {
            func_80AD3F4C(this, globalCtx);
        }
    } else if (this->skelAnime.animCurrentFrame > 10.0f) {
        this->unk_217 = ((this->skelAnime.animCurrentFrame - 10.0f) * 0.05000000074505806f) * 255.0f;
    } else {
        this->actor.scale.x += this->unk_21C * 0.10000000149011612f;
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

#ifdef NON_MATCHING
// Stack only
void func_80AD4A68(EnPoField* this, GlobalContext* globalCtx) {
    f32 dx;
    f32 dz;
    Player* player;
    s32 temp_v1;

    player = PLAYER;
    temp_v1 = 0x10 - this->unk_194;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    if (ABS(temp_v1) < 0x10) {
        this->actor.posRot.rot.y += 512.0f * fabsf(Math_Sins(this->unk_194 * 0x800));
    }
    Math_SmoothScaleMaxF(&this->unk_21C, 180.0f, 0.5f, 10.0f);
    Math_SmoothScaleMaxF(&this->actor.initPosRot.pos.x, player->actor.posRot.pos.x, 0.20000000298023224f, 6.0f);
    Math_SmoothScaleMaxF(&this->actor.initPosRot.pos.z, player->actor.posRot.pos.z, 0.20000000298023224f, 6.0f);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.posRot.rot.y, 1, 0x800, 0x200);
    dx = this->actor.initPosRot.pos.x - player->actor.posRot.pos.x;
    if (dx > 100.0f) {
        this->actor.initPosRot.pos.x = player->actor.posRot.pos.x + 100.0f;
    } else if (dx < -100.0f) {
        this->actor.initPosRot.pos.x = player->actor.posRot.pos.x + -100.0f;
    }
    dz = this->actor.initPosRot.pos.z - player->actor.posRot.pos.z;
    if (dz > 100.0f) {
        this->actor.initPosRot.pos.z = player->actor.posRot.pos.z + 100.0f;
    } else if (dz < -100.0f) {
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
    func_8002F974(&this->actor, 0x3071);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4A68.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4CA4.s")
void func_80AD4CA4(EnPoField* this, GlobalContext* globalCtx) {
    f32 temp_f6;
    s16 phi_t0;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    if (3000.0f < func_8002DBB0(this, &D_80AD7104)) {
        phi_t0 = (s16)(this->actor.yawTowardsLink - func_8002DAC0(&this->actor, &D_80AD7104) - 0x8000) * 0.20000000298023224f;
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

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4E48.s")
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

#ifdef NON_MATCHING
// Some reorderings at the top, Regalloc
void func_80AD4ED8(EnPoField* this, GlobalContext* globalCtx) {
    Vec3f sp6C;
    f32 sp68;
    s32 pad;
    s32 pad1;
    f32 temp_f0;

    this->unk_196++;
    if (this->unk_196 < 8) {
        if (this->unk_196 < 5) {
            sp6C.y = Math_Sins(this->unk_196 * 0x1000 - 0x4000) * 23.0f + this->actor.posRot.pos.y + 40.0f;
            sp68 = Math_Coss(this->unk_196 * 0x1000 - 0x4000) * 23.0f;
            sp6C.x = Math_Sins(func_8005A9F4(ACTIVE_CAM) + 0x4800) * sp68 + this->actor.posRot.pos.x;
            sp6C.z = Math_Coss(func_8005A9F4(ACTIVE_CAM) + 0x4800) * sp68 + this->actor.posRot.pos.z;
        } else {
            sp6C.y = this->actor.posRot.pos.y + 40.0f + 15.0f * (this->unk_196 - 5);
            sp6C.x = Math_Sins(func_8005A9F4(ACTIVE_CAM) + 0x4800) * 23.0f + this->actor.posRot.pos.x;
            sp6C.z = Math_Coss(func_8005A9F4(ACTIVE_CAM) + 0x4800) * 23.0f + this->actor.posRot.pos.z;
        }
        func_8002A6B8(globalCtx, &sp6C, &D_80AD7114, &D_80AD7120, (this->unk_196 * 0xA) + 0x50, 0, 0xFF, 0xFF, 0xFF, 0xFF, 0, 0, 0xFF, 1, 9, 1);
        sp6C.x = (this->actor.posRot.pos.x + this->actor.posRot.pos.x) - sp6C.x;
        sp6C.z = (this->actor.posRot.pos.z + this->actor.posRot.pos.z) - sp6C.z;
        func_8002A6B8(globalCtx, &sp6C, &D_80AD7114, &D_80AD7120, this->unk_196 * 0xA + 0x50, 0, 0xFF, 0xFF, 0xFF, 0xFF, 0, 0, 0xFF, 1, 9, 1);
        sp6C.x = this->actor.posRot.pos.x;
        sp6C.z = this->actor.posRot.pos.z;
        func_8002A6B8(globalCtx, &sp6C, &D_80AD7114, &D_80AD7120, this->unk_196 * 0xA + 0x50, 0, 0xFF, 0xFF, 0xFF, 0xFF, 0, 0, 0xFF, 1, 9, 1);
        if (this->unk_196 == 1) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_EXTINCT);
        }
    } else if (this->unk_196 == 0x1C) {
        func_80AD4208(this, globalCtx);
    } else if (this->unk_196 >= 0x13) {
        temp_f0 = (0x1C - this->unk_196) * 0.0010000000474974513f;
        this->actor.posRot.pos.y += 5.0f;
        this->actor.scale.z = temp_f0;
        this->actor.scale.y = temp_f0;
        this->actor.scale.x = temp_f0;
    }
    if (this->unk_196 == 0x12) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DEAD2);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD4ED8.s")
#endif

#ifdef NON_MATCHING
// Single regalloc
void func_80AD52F0(EnPoField* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    this->actor.shape.rot.y += 0x1000;
    this->actor.shape.unk_14 = this->unk_217 = this->unk_196 * 15.9375f;
    if (this->unk_196 == 0) {
        func_80AD3D68(this, globalCtx);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD52F0.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD53F0.s")
void func_80AD53F0(EnPoField* this, GlobalContext* globalCtx) {
    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    if (this->actor.bgCheckFlags & 1) {
        func_800297A4(globalCtx, &this->actor.posRot.pos, 6.0f, 0, 1, 1, 0xF, 0x6D, 0xA, D_06004BA0);
        func_80AD42B0(this);
    } else if (this->unk_196 == 0) {
        func_80AD3D68(this, globalCtx);
    }
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 10.0f, 10.0f, 10.0f, 4);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD54D4.s")
void func_80AD54D4(EnPoField* this, s32 arg1) {
    EnPoFieldInfo* info;
    f32 multiplier;

    info = &D_80AD712C[this->actor.params];
    this->unk_217 = CLAMP(this->unk_217 + arg1, 0x00, 0xFF);
    if (arg1 < 0) {
        multiplier = this->unk_217 * 0.003921568859368563f;
        this->actor.scale.z = (0.005600000265985727f * multiplier) + 0.0014000000664964318f;
        this->actor.scale.x = (0.005600000265985727f * multiplier) + 0.0014000000664964318f;
        this->actor.scale.y = ((0.007000000216066837f - (0.007000000216066837f * multiplier)) + 0.007000000216066837f);
    } else {
        multiplier = 1.0f;
        this->actor.scale.z = this->unk_217 * 2.7450982088339515e-05f;
        this->actor.scale.y = this->unk_217 * 2.7450982088339515e-05f;
        this->actor.scale.x = this->unk_217 * 2.7450982088339515e-05f;
        this->actor.posRot.pos.y = this->actor.initPosRot.pos.y + (0.05882352963089943f * this->unk_217);
    }
    this->unk_214 = info->unk_3 * multiplier;
    this->unk_215 = info->unk_4 * multiplier;
    this->unk_216 = info->unk_5 * multiplier;
    Lights_InitType0PositionalLight(&this->lightInfo, 
                this->actor.posRot.pos.x, 
                this->actor.posRot.pos.y, 
                this->actor.posRot.pos.z, 
                info->unk_3, info->unk_4, info->unk_5, this->unk_217 * 0.7843137383460999f);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD587C.s")
void func_80AD587C(EnPoField* this, GlobalContext* globalCtx) {
    this->actor.initPosRot.pos.y += 2.0f;
    func_80AD54D4(this, 0x14);
    if (this->unk_217 == 0xFF) {
        func_80AD4384(this);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD58D4.s")
void func_80AD58D4(EnPoField* this, GlobalContext* globalCtx) {
    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    if (func_8002F194(this, globalCtx) != 0) {
        func_80AD444C(this);
        return;
    }
    if (this->unk_196 == 0) {
        Audio_PlayActorSound2(&this->actor, 0x38EC);
        this->actor.flags &= 0xFFFEFFFF;
        func_80AD443C(this);
        return;
    }
    if (this->collider.base.maskA & 2) {
        this->actor.flags |= 0x10000;
        func_8002F2F4(&this->actor, globalCtx);
    } else {
        this->actor.flags &= 0xFFFEFFFF;
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
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
                this->lightInfo.params.red, this->lightInfo.params.green, this->lightInfo.params.blue, this->unk_217 * 0.7843137383460999f);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD5AD8.s")
void func_80AD5AD8(EnPoField* this, GlobalContext* globalCtx) {
    func_80AD54D4(this, -0xD);
    if (this->unk_217 == 0) {
        func_80AD3D68(this, globalCtx);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD5B18.s")
void func_80AD5B18(EnPoField* this, GlobalContext* globalCtx) {
    // You defeated Poe the ghost! Do you want to catch it in a bottle?
    if (this->actor.textId != 0x5005) {
        func_80AD54D4(this, -0xD);
    } else {
        func_8002F974(&this->actor, NA_SE_EN_PO_BIG_CRY & ~0x0800);
    }
    if (func_8010BDBC(&globalCtx->msgCtx) == 4) {
        if (func_80106BC8(globalCtx) != 0) {
            func_800F8A44(&this->actor.unk_E4, NA_SE_EN_PO_BIG_CRY & ~0x0800);
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

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD5C74.s")
void func_80AD5C74(EnPoField* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= 0xFFFD;
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

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD5D0C.s")
void func_80AD5D0C(EnPoField* this) {
    if (this->unk_19A == 0) {
        this->unk_224.x = this->lightInfo.params.posX;
        this->unk_224.y = this->lightInfo.params.posY;
        this->unk_224.z = this->lightInfo.params.posZ;
        this->unk_19A = 0x46;
        this->unk_198 = this->actor.shape.rot.y;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD5D60.s")
void func_80AD5D60(EnPoField* this, GlobalContext* globalCtx) {
    if (this->unk_19A != 0) {
        if (this->unk_19A != 0) {
            this->unk_19A--;
        }
        if (this->collider2.base.atFlags & 2) {
            this->collider2.base.atFlags &= 0xFFFD;
            this->unk_19A = 0x13;
        }
        if (this->unk_19A < 0x14) {
            Math_ApproxF(&this->unk_220, 0.0f, 0.0001500000071246177f);
            return;
        }
        if (Math_ApproxF(&this->unk_220, 0.003000000026077032f, 0.0006000000284984708f) != 0) {
            this->unk_224.x += 2.5f * Math_Sins(this->unk_198);
            this->unk_224.z += 2.5f * Math_Coss(this->unk_198);
        }
        this->collider2.dim.pos.x = this->unk_224.x;
        this->collider2.dim.pos.y = this->unk_224.y;
        this->collider2.dim.pos.z = this->unk_224.z;
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider2);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD5E8C.s")
/* void func_80AD5E8C(EnPoField* this, GlobalContext* globalCtx) {
    GraphicsContext *gfxCtx;
    Gfx dispRefs[3]; // TODO size
    s8 temp_a0;

    if (this->unk_19A != 0) {
        gfxCtx = globalCtx->state.gfxCtx;
        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_po_field.c", 0x685);
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(gfxCtx->polyXlu.p++, 0x08, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0, ((-globalCtx->gameplayFrames) * 0x14) & 0x1FF, 0x20, 0x80));
        temp_a0 = this->unk_220 * 85000.0f;
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0x80, 0x80, 0xFF, 0xFF, 0x00, temp_a0);
        Matrix_Translate(this->unk_224.x, this->unk_224.y, this->unk_224.z, 0);
        Matrix_RotateY((func_8005A9F4(ACTIVE_CAM) + 0x8000) * 9.58738019107841e-05f, 1);
        if (this->unk_19A >= 0x14) {
            gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xFF, 0x00, 0x00, 0x00);
            Matrix_Scale(this->unk_220, this->unk_220, this->unk_220, 1);
        } else {
            gDPSetEnvColor(gfxCtx->polyXlu.p++, temp_a0, 0x00, 0x00, 0x00);
            Matrix_Scale((this->unk_220 * 0.699999988079071f) + 0.0009000000427477062f, 
                        (0.003000000026077032f - this->unk_220) + 0.003000000026077032f, 
                        0.003000000026077032f, 1);
        }
        gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_field.c", 0x6AD), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyXlu.p++, 0x0404D4E0);
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_po_field.c", 0x6B0);
    }
} */

#ifdef NON_MATCHING
void func_80AD619C(EnPoField* this) {
    if (this->actionFunc == func_80AD4CA4) {
        this->unk_214 = CLAMP_MAX((s16)(this->unk_214 + 5), 0x50);
        this->unk_215 = CLAMP_MAX((s16)(this->unk_215 + 5), 0xFF);
        this->unk_216 = CLAMP_MAX((s16)(this->unk_216 + 5), 0xE1);
    } else if (this->actionFunc == func_80AD4E48) {
        if (this->actor.dmgEffectTimer & 2) {
            this->unk_214 = 0;
            this->unk_215 = 0;
            this->unk_216 = 0;
        } else {
            this->unk_214 = 0x50;
            this->unk_215 = 0xFF;
            this->unk_216 = 0xE1;
        }
    } else {
        this->unk_214 = CLAMP_MAX((s16)(this->unk_214 + 5), 0xFF);
        this->unk_215 = CLAMP_MAX((s16)(this->unk_215 + 5), 0xFF);
        if (this->unk_216 >= 0xD3) {
            this->unk_216 = CLAMP_MIN((s16)(this->unk_216 - 5), 0xD2);
        } else {
            this->unk_216 = CLAMP_MAX((s16)(this->unk_216 + 5), 0xD2);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD619C.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD6330.s")
void func_80AD6330(EnPoField* this) {
    f32 rand;

    if (this->actionFunc == func_80AD48CC && this->skelAnime.animCurrentFrame < 12.0f) {
        this->unk_21A = (s16)(this->skelAnime.animCurrentFrame * 16.65999984741211f) + 0x37;
        this->unk_219 = (s16)(this->skelAnime.animCurrentFrame * 16.65999984741211f) + 0x37;
        this->unk_218 = (s16)(this->skelAnime.animCurrentFrame * 16.65999984741211f) + 0x37;
        this->unk_21B = this->skelAnime.animCurrentFrame * 16.66666603088379f;
    } else {
        rand = Math_Rand_ZeroOne();
        this->unk_218 = (s16)(rand * 30.0f) + 0xE1;
        this->unk_219 = (s16)(rand * 100.0f) + 0x9B;
        this->unk_21A = (s16)(rand * 160.0f) + 0x5F;
        this->unk_21B = 0xC8;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/EnPoField_Update.s")
void EnPoField_Update(Actor* thisx, GlobalContext* globalCtx) {
    ColliderCylinder* collider;
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
        collider = &this->collider;
        Collider_CylinderUpdate(this, collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, collider);
        if (this->collider.base.acFlags & 1) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, collider);
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD65C8.s")
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

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD66D0.s")
void func_80AD66D0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx, Gfx** gfxP) {
    EnPoField* this = THIS;

    if (this->actionFunc == func_80AD4ED8 && this->unk_196 >= 2 && limbIndex == 8) {
        gSPMatrix((*gfxP)++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_field.c", 0x77C), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList((*gfxP)++, D_060066D0);
    }
    if (limbIndex == 7) {
        Vec3f vec;
        Matrix_MultVec3f(&D_80AD714C, &vec);
        if (this->actionFunc == func_80AD4ED8 && this->unk_196 >= 0x13 && this->actor.scale.x != 0.0f) {
            f32 mtxScale = 0.009999999776482582f / this->actor.scale.x;
            Matrix_Scale(mtxScale, mtxScale, mtxScale, 1);
        }
        Matrix_Get(&D_80AD7700);
        if (this->actionFunc == func_80AD4ED8 && this->unk_196 == 0x1B) {
            this->actor.posRot.pos.x = D_80AD7700.wx;
            this->actor.posRot.pos.y = D_80AD7700.wy;
            this->actor.posRot.pos.z = D_80AD7700.wz;
        }
        Lights_InitType2PositionalLight(&this->lightInfo, vec.x, vec.y, vec.z, this->unk_218, this->unk_219, this->unk_21A, this->unk_21B * 0.7843137383460999f);
    }
}

#ifdef NON_MATCHING
// Stack only
void EnPoField_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnPoFieldInfo* info;
    EnPoField* this;

    this = THIS;
    info = &D_80AD712C[this->actor.params];
    if (this->actionFunc != func_80AD4664) {
        GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
        Gfx dispRefs[2]; // TODO size

        Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_po_field.c", 0x7B8);
        func_80093D18(globalCtx->state.gfxCtx);
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(gfxCtx->polyOpa.p++, 0x0A, Gfx_EnvColor(globalCtx->state.gfxCtx, info->unk_6, info->unk_7, info->unk_8, 0xFF));
        if (this->unk_217 == 0xFF || this->unk_217 == 0) {
            gSPSegment(gfxCtx->polyOpa.p++, 0x08, Gfx_EnvColor(globalCtx->state.gfxCtx, this->unk_214, this->unk_215, this->unk_216, this->unk_217));
            gSPSegment(gfxCtx->polyOpa.p++, 0x0C, D_80116280 + 0x10);
            gfxCtx->polyOpa.p = SkelAnime_Draw2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_80AD65C8, func_80AD66D0, &this->actor, gfxCtx->polyOpa.p);
        } else {
            gSPSegment(gfxCtx->polyXlu.p++, 0x08, Gfx_EnvColor(globalCtx->state.gfxCtx, this->unk_214, this->unk_215, this->unk_216, this->unk_217));
            gSPSegment(gfxCtx->polyXlu.p++, 0x0C, D_80116280);
            gfxCtx->polyXlu.p = SkelAnime_Draw2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_80AD65C8, func_80AD66D0, &this->actor, gfxCtx->polyXlu.p);
        }
        gDPPipeSync(gfxCtx->polyOpa.p++);
        gDPSetEnvColor(gfxCtx->polyOpa.p++, this->unk_218, this->unk_219, this->unk_21A, 0xFF);
        Matrix_Put(&D_80AD7700);
        gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_field.c", 0x7F1), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyOpa.p++, D_06004BA0);
        gSPDisplayList(gfxCtx->polyOpa.p++, D_06004CC0);
        Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_po_field.c", 0x7F7);
    }
    func_80AD5E8C(this, globalCtx);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/EnPoField_Draw.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD6BF4.s")
void func_80AD6BF4(Actor* thisx, GlobalContext* globalCtx) {
    EnPoField* this = THIS;

    this->actionFunc(this, globalCtx);
    if (this->actionFunc == func_80AD53F0) {
        func_80AD6330(this);
    }
    func_80AD5D60(this, globalCtx);
}

#ifdef NON_MATCHING
// Stack only
void func_80AD6C4C(Actor* thisx, GlobalContext* globalCtx) {
    EnPoField* this;
    EnPoFieldInfo* info;
    GraphicsContext* gfxCtx;
    Gfx dispRefs[3]; // TODO size

    this = THIS;
    info = &D_80AD712C[this->actor.params];
    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_po_field.c", 0x81D);
    if (this->actionFunc == func_80AD53F0) {
        func_80093D18(globalCtx->state.gfxCtx);
        gSPSegment(gfxCtx->polyOpa.p++, 0x0A, Gfx_EnvColor(globalCtx->state.gfxCtx, info->unk_6, info->unk_7, info->unk_8, 0xFF));
        Lights_InitType2PositionalLight(&this->lightInfo, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 
                    this->unk_218, this->unk_219, this->unk_21A, 0xC8);
        gDPSetEnvColor(gfxCtx->polyOpa.p++, this->unk_218, this->unk_219, this->unk_21A, 0xFF);
        gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_field.c", 0x838), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyOpa.p++, D_06004BA0);
        gSPDisplayList(gfxCtx->polyOpa.p++, D_06004CC0);
    } else {
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(gfxCtx->polyXlu.p++, 0x08, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0, (globalCtx->gameplayFrames * info->unk_9) & 0x1FF, 0x20, 0x80));
        gSPSegment(gfxCtx->polyXlu.p++, 0x09, SEGMENTED_TO_VIRTUAL(info->unk_C));
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0x80, 0x80, info->unk_0, info->unk_1, info->unk_2, this->unk_217);
        gDPSetEnvColor(gfxCtx->polyXlu.p++, this->unk_214, this->unk_215, this->unk_216, 0xFF);
        Matrix_RotateY((s16)(func_8005A9F4(ACTIVE_CAM) + 0x8000) * 9.58738019107841e-05f, 1);
        gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_field.c", 0x85F), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyXlu.p++, D_060023B0);
    }
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_po_field.c", 0x865);
    func_80AD5E8C(this, globalCtx);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Field/func_80AD6C4C.s")
#endif
