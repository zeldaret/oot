#include "z_en_fish.h"
#include "objects/gameplay_keep/gameplay_keep.h"
#include "vt.h"

#define FLAGS 0x00000000

#define THIS ((EnFish*)thisx)

void EnFish_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFish_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFish_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFish_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A157A4(EnFish* this);
void func_80A157FC(EnFish* this, GlobalContext* globalCtx);
void func_80A158EC(EnFish* this);
void func_80A15944(EnFish* this, GlobalContext* globalCtx);
void func_80A15AD4(EnFish* this);
void func_80A15B2C(EnFish* this, GlobalContext* globalCtx);
void func_80A15D18(EnFish* this);
void func_80A15D68(EnFish* this, GlobalContext* globalCtx);
void func_80A15F24(EnFish* this);
void func_80A15F84(EnFish* this, GlobalContext* globalCtx);
void func_80A160BC(EnFish* this);
void func_80A16200(EnFish* this, GlobalContext* globalCtx);
void func_80A163DC(EnFish* this);
void func_80A16450(EnFish* this, GlobalContext* globalCtx);
void func_80A16618(EnFish* this);
void func_80A16670(EnFish* this, GlobalContext* globalCtx);

static Actor* D_80A17010 = NULL;

static f32 D_80A17014 = 0.0f;

static f32 D_80A17018 = 0.0f;

static ColliderJntSphElementInit sJntSphElementsInit[1] = {
    {
        {
            ELEMTYPE_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0xFFCFFFFF, 0x00, 0x00 },
            TOUCH_NONE,
            BUMP_NONE,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 5 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    1,
    sJntSphElementsInit,
};

const ActorInit En_Fish_InitVars = {
    ACTOR_EN_FISH,
    ACTORCAT_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnFish),
    (ActorFunc)EnFish_Init,
    (ActorFunc)EnFish_Destroy,
    (ActorFunc)EnFish_Update,
    (ActorFunc)EnFish_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 900, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 40, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 700, ICHAIN_STOP),
};

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A15280.s")
f32 EnFish_XZDistanceSquared(Vec3f* v1, Vec3f* v2) {
    return SQ(v1->x - v2->x) + SQ(v1->z - v2->z);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A152AC.s")
void EnFish_SetAnimation2(EnFish* this) {
    Animation_Change(&this->skelAnime, &gFish2Anim, 1.0f, 0.0f, Animation_GetLastFrame(&gFish2Anim), ANIMMODE_LOOP_INTERP, 2.0f);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A15310.s")
void EnFish_SetAnimation1(EnFish* this) {
    Animation_Change(&this->skelAnime, &gFish1Anim, 1.0f, 0.0f, Animation_GetLastFrame(&gFish1Anim), ANIMMODE_LOOP_INTERP, 2.0f);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A15374.s")
void func_80A15374(EnFish* this) {
    this->unk_24A = 400;
    Actor_SetScale(&this->actor, 0.001f);
    this->actor.draw = NULL;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A153AC.s")
void func_80A153AC(EnFish* this) {
    Actor* thisx = &this->actor;

    if (D_80A17010 == NULL) {
        D_80A17010 = thisx;
        Actor_SetScale(thisx, 0.01f);
        thisx->draw = EnFish_Draw;
        thisx->shape.rot.x = 0;
        thisx->shape.rot.y = -0x6410;
        thisx->shape.rot.z = 0x4000;
        thisx->shape.yOffset = 600.0f;
        D_80A17014 = 10.0f;
        D_80A17018 = 0.0f;
        thisx->flags |= 0x10;
        EnFish_SetAnimation1(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A15444.s")
void func_80A15444(EnFish* this) {
    D_80A17010 = NULL;
    D_80A17014 = 0.0f;
    D_80A17018 = 0.0f;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/EnFish_Init.s")
void EnFish_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnFish* this = THIS;
    s16 params = this->actor.params;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &gFishSkel, &gFish2Anim, this->jointTable, this->morphTable, 7);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, this->colliderItems);
    this->actor.colChkInfo.mass = 50;
    this->unk_24C = (s32)(Rand_ZeroOne() * 65535.5f);
    this->unk_24E = (s32)(Rand_ZeroOne() * 65535.5f);

    if (params == 0) {
        this->actor.flags |= 0x10;
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 8.0f);
        func_80A15F24(this);
    } else if (params == 1) {
        func_80A16618(this);
    } else {
        func_80A157A4(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/EnFish_Destroy.s")
void EnFish_Destroy(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnFish* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->collider);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A155D0.s")
void func_80A155D0(EnFish* this) {
    this->actor.shape.yOffset += ((Math_SinS(this->unk_24C) * 10.0f) + (Math_SinS(this->unk_24E) * 5.0f));
    this->actor.shape.yOffset = CLAMP(this->actor.shape.yOffset, -200.0f, 200.0f);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A15688.s")
s32 func_80A15688(EnFish* this, GlobalContext* globalCtx) {
    s32 pad;
    Player* player = PLAYER;
    Vec3f sp1C;

    if (this->actor.xzDistToPlayer < 32.0f) {
        sp1C.x = (Math_SinS(this->actor.yawTowardsPlayer + 0x8000) * 16.0f) + player->actor.world.pos.x;
        sp1C.y = player->actor.world.pos.y;
        sp1C.z = (Math_CosS(this->actor.yawTowardsPlayer + 0x8000) * 16.0f) + player->actor.world.pos.z;

        if (EnFish_XZDistanceSquared(&sp1C, &this->actor.world.pos) <= 400.0f) {
            return true;
        }
    }
    return false;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A15774.s")
s32 EnFish_CheckXZDistanceToPlayer(EnFish* this, GlobalContext* globalCtx) {
    return (this->actor.xzDistToPlayer < 60.0f);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A157A4.s")
void func_80A157A4(EnFish* this) {
    this->actor.gravity = 0.0f;
    this->actor.minVelocityY = 0.0f;
    this->unk_248 = Rand_S16Offset(5, 35);
    this->unk_250 = 0;
    EnFish_SetAnimation2(this);
    this->actionFunc = func_80A157FC;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A157FC.s")
void func_80A157FC(EnFish* this, GlobalContext* globalCtx) {
    func_80A155D0(this);
    Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 0.05f, 0.3f, 0.0f);
    this->skelAnime.playSpeed = CLAMP_MAX((this->actor.speedXZ * 1.4f) + 0.8f, 2.0f);
    SkelAnime_Update(&this->skelAnime);
    this->actor.shape.rot.y = this->actor.world.rot.y;

    if (this->unk_248 <= 0) {
        func_80A158EC(this);
    } else if (&this->actor == this->actor.child) {
        func_80A15D18(this);
    } else if (EnFish_CheckXZDistanceToPlayer(this, globalCtx)) {
        func_80A15AD4(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A158EC.s")
void func_80A158EC(EnFish* this) {
    this->actor.gravity = 0.0f;
    this->actor.minVelocityY = 0.0f;
    this->unk_248 = Rand_S16Offset(15, 45);
    this->unk_250 = 0;
    EnFish_SetAnimation2(this);
    this->actionFunc = func_80A15944;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A15944.s")
void func_80A15944(EnFish* this, GlobalContext* globalCtx) {
    // Actor *temp_v0;
    // Vec3s* pos;
    s32 pad; // Can be replaced with either

    func_80A155D0(this);
    Math_SmoothStepToF(&this->actor.speedXZ, 1.8f, 0.08f, 0.4f, 0.0f);

    // pos = &this->actor.world.pos;
    if ((EnFish_XZDistanceSquared(&this->actor.world.pos, &this->actor.home.pos) > 6400.0f) || (this->unk_248 < 4)) {
        Math_StepToAngleS(&this->actor.world.rot.y, Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos),
                          3000);
    } else {
        // temp_v0 = this->actor.child;
        if ((this->actor.child != NULL) && (&this->actor != this->actor.child)) {
            Math_StepToAngleS(&this->actor.world.rot.y,
                              Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.child->world.pos), 3000);
        }
    }

    this->actor.shape.rot.y = this->actor.world.rot.y;
    this->skelAnime.playSpeed = CLAMP_MAX((this->actor.speedXZ * 1.5f) + 0.8f, 4.0f);
    SkelAnime_Update(&this->skelAnime);

    if (this->unk_248 <= 0) {
        func_80A157A4(this);
    } else if (&this->actor == this->actor.child) {
        func_80A15D18(this);
    } else if (EnFish_CheckXZDistanceToPlayer(this, globalCtx)) {
        func_80A15AD4(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A15AD4.s")
void func_80A15AD4(EnFish* this) {
    this->actor.gravity = 0.0f;
    this->actor.minVelocityY = 0.0f;
    this->unk_248 = Rand_S16Offset(10, 40);
    this->unk_250 = 0;
    EnFish_SetAnimation2(this);
    this->actionFunc = func_80A15B2C;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A15B2C.s")
void func_80A15B2C(EnFish* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 pad2;
    s16 frames;
    s16 yaw;
    s16 sp34;

    func_80A155D0(this);
    sp34 = EnFish_CheckXZDistanceToPlayer(this, globalCtx);
    Math_SmoothStepToF(&this->actor.speedXZ, 4.2f, 0.08f, 1.4f, 0.0f);

    if (EnFish_XZDistanceSquared(&this->actor.world.pos, &this->actor.home.pos) > 25600.0f) {
        yaw = Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos);
        Math_StepToAngleS(&this->actor.world.rot.y, yaw, 3000);
    } else if ((this->actor.child != NULL) && (&this->actor != this->actor.child)) {
        yaw = Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.child->world.pos);
        Math_StepToAngleS(&this->actor.world.rot.y, yaw, 2000);
    } else if (sp34) {
        frames = globalCtx->state.frames;
        yaw = this->actor.yawTowardsPlayer + 0x8000;

        if (frames & 0x10) {
            if (frames & 0x20) {
                yaw += 0x2000;
            }
        } else {
            if (frames & 0x20) {
                yaw -= 0x2000;
            }
        }
        if (globalCtx) {}
        Math_StepToAngleS(&this->actor.world.rot.y, yaw, 2000);
    }

    this->actor.shape.rot.y = this->actor.world.rot.y;
    this->skelAnime.playSpeed = CLAMP_MAX((this->actor.speedXZ * 1.5f) + 0.8f, 4.0f);

    SkelAnime_Update(&this->skelAnime);

    if ((this->unk_248 <= 0) || !sp34) {
        func_80A157A4(this);
    } else if (&this->actor == this->actor.child) {
        func_80A15D18(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A15D18.s")
void func_80A15D18(EnFish* this) {
    this->actor.gravity = 0.0f;
    this->actor.minVelocityY = 0.0f;
    EnFish_SetAnimation2(this);
    this->unk_248 = Rand_S16Offset(10, 40);
    this->unk_250 = 0;
    this->actionFunc = func_80A15D68;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A15D68.s")
void func_80A15D68(EnFish* this, GlobalContext* globalCtx) {
    s32 pad;
    Player* player = PLAYER;
    s32 pad2;
    Vec3f sp38;
    s16 yaw;
    s16 temp_a0_2;

    func_80A155D0(this);
    Math_SmoothStepToF(&this->actor.speedXZ, 1.8f, 0.1f, 0.5f, 0.0f);

    if (EnFish_XZDistanceSquared(&this->actor.world.pos, &this->actor.home.pos) > 6400.0f) {
        yaw = Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos);
        Math_StepToAngleS(&this->actor.world.rot.y, yaw, 3000);
    } else {
        if ((s16)globalCtx->state.frames & 0x40) {
            temp_a0_2 = (this->actor.yawTowardsPlayer + 0x9000);
        } else {
            temp_a0_2 = (this->actor.yawTowardsPlayer + 0x7000);
        }
        // temp_a0_2 = ( ((s16)globalCtx->state.frames & 0x40) ? (this->actor.yawTowardsPlayer + 0x9000)
        // :(this->actor.yawTowardsPlayer + 0x7000));

        sp38.x = player->actor.world.pos.x + (Math_SinS(temp_a0_2) * 20.0f);
        sp38.y = player->actor.world.pos.y;
        sp38.z = player->actor.world.pos.z + (Math_CosS(temp_a0_2) * 20.0f);

        yaw = Math_Vec3f_Yaw(&this->actor.world.pos, &sp38);
        Math_StepToAngleS(&this->actor.world.rot.y, yaw, 3000);
    }

    this->actor.shape.rot.y = this->actor.world.rot.y;
    this->skelAnime.playSpeed = CLAMP_MAX((this->actor.speedXZ * 1.5f) + 0.8f, 4.0f);

    SkelAnime_Update(&this->skelAnime);

    if (this->unk_248 <= 0) {
        func_80A157A4(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A15F24.s")
void func_80A15F24(EnFish* this) {
    this->actor.gravity = -1.0f;
    this->actor.minVelocityY = -10.0f;
    this->actor.shape.yOffset = 0.0f;
    EnFish_SetAnimation1(this);
    this->unk_250 = 5;
    this->actionFunc = func_80A15F84;
    this->unk_248 = 300;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A15F84.s")
void func_80A15F84(EnFish* this, GlobalContext* globalCtx) {
    Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 0.1f, 0.1f, 0.0f);
    Math_StepToAngleS(&this->actor.world.rot.x, 0x4000, 100);
    Math_StepToAngleS(&this->actor.world.rot.z, -0x4000, 100);
    this->actor.shape.rot.x = this->actor.world.rot.x;
    this->actor.shape.rot.y = this->actor.world.rot.y;
    this->actor.shape.rot.z = this->actor.world.rot.z;
    SkelAnime_Update(&this->skelAnime);

    if (this->actor.bgCheckFlags & 1) {
        this->unk_248 = 400;
        func_80A160BC(this);
    } else if (this->actor.bgCheckFlags & 0x20) {
        func_80A163DC(this);
    } else if ((this->unk_248 <= 0) && (this->actor.params == 0) && (this->actor.floorHeight < -31990.0f)) {
        osSyncPrintf(VT_COL(YELLOW, BLACK));
        // BG missing? Running Actor_delete
        osSyncPrintf("BG 抜け？ Actor_delete します(%s %d)\n", "../z_en_sakana.c", 822);
        osSyncPrintf(VT_RST);
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A160BC.s")
void func_80A160BC(EnFish* this) {
    s32 pad;
    f32 temp_f0;
    s32 phi_v0;

    this->actor.gravity = -1.0f;
    this->actor.minVelocityY = -10.0f;
    temp_f0 = Rand_ZeroOne();

    if (temp_f0 < 0.1f) {
        this->actor.velocity.y = (Rand_ZeroOne() * 3.0f) + 2.5f;
        phi_v0 = true;
    } else if (temp_f0 < 0.2f) {
        this->actor.velocity.y = (Rand_ZeroOne() * 1.2f) + 0.2f;
        phi_v0 = true;
    } else {
        this->actor.velocity.y = 0.0f;

        if (Rand_ZeroOne() < 0.2f) {
            phi_v0 = true;
        } else {
            phi_v0 = false;
        }
    }

    this->actor.shape.yOffset = 300.0f;
    EnFish_SetAnimation1(this);
    this->actionFunc = func_80A16200;
    this->unk_250 = 5;

    if (phi_v0 && (this->actor.draw != NULL)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_FISH_LEAP);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A16200.s")
void func_80A16200(EnFish* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 temp_v0;
    s16 phi_a1;

    temp_v0 = globalCtx->state.frames;

    Math_SmoothStepToF(&this->actor.speedXZ, Rand_ZeroOne() * 0.2f, 0.1f, 0.1f, 0.0f);

    phi_a1 = (s16)((((temp_v0 >> 5) & 2) | ((temp_v0 >> 2) & 1)) << 0xB) * 0.3f;
    // phi_a1 = (s16)((temp_v0 * 0x240) & 0x1800) * 0.3f;

    if (temp_v0 & 4) {
        phi_a1 = -phi_a1;
    }

    Math_StepToAngleS(&this->actor.world.rot.x, phi_a1, 4000);
    Math_StepToAngleS(&this->actor.world.rot.z, 0x4000, 1000);
    this->actor.world.rot.y +=
        (s32)(s16)(((Math_SinS(this->unk_24C) * 2000.0f) + (Math_SinS(this->unk_24E) * 1000.0f)) * Rand_ZeroOne());
    this->actor.shape.rot = this->actor.world.rot;

    SkelAnime_Update(&this->skelAnime);

    if (this->unk_248 <= 0) {
        Actor_Kill(&this->actor);
        return;
    }

    if (this->unk_248 <= 60) {
        if (temp_v0 & 4) {
            this->actor.draw = EnFish_Draw;
        } else {
            this->actor.draw = NULL;
        }
    } else if (this->actor.bgCheckFlags & 0x20) {
        func_80A163DC(this);
    } else if (this->actor.bgCheckFlags & 1) {
        func_80A160BC(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A163DC.s")
void func_80A163DC(EnFish* this) {
    this->actor.home.pos = this->actor.world.pos;
    this->actor.flags |= 0x10;
    this->unk_248 = 200;
    this->actor.gravity = 0.0f;
    this->actor.minVelocityY = 0.0f;
    this->actor.shape.yOffset = 0.0f;
    EnFish_SetAnimation2(this);
    this->actionFunc = func_80A16450;
    this->unk_250 = 5;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A16450.s")
void func_80A16450(EnFish* this, GlobalContext* globalCtx) {
    s32 pad;

    Math_SmoothStepToF(&this->actor.speedXZ, 2.8f, 0.1f, 0.4f, 0.0f);

    if ((this->actor.bgCheckFlags & 8) || !(this->actor.bgCheckFlags & 0x20)) {
        this->actor.home.rot.y = Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos);
        this->actor.speedXZ *= 0.5f;
    }

    Math_StepToAngleS(&this->actor.world.rot.x, 0, 0x5DC);
    Math_StepToAngleS(&this->actor.world.rot.y, this->actor.home.rot.y, 0xBB8);
    Math_StepToAngleS(&this->actor.world.rot.z, 0, 0x3E8);

    this->actor.shape.rot = this->actor.world.rot;

    if (this->actor.bgCheckFlags & 1) {
        Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y - 4.0f, 2.0f);
    } else {
        Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y - 10.0f, 2.0f);
    }

    if (this->unk_248 < 100) {
        Actor_SetScale(&this->actor, this->actor.scale.x * 0.982f);
    }

    this->skelAnime.playSpeed = CLAMP_MAX((this->actor.speedXZ * 1.5f) + 1.0f, 4.0f);
    SkelAnime_Update(&this->skelAnime);

    if (this->unk_248 <= 0) {
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A16618.s")
void func_80A16618(EnFish* this) {
    this->actor.gravity = 0.0f;
    this->actor.minVelocityY = 0.0f;
    this->unk_248 = Rand_S16Offset(5, 35);
    this->unk_250 = 0;
    EnFish_SetAnimation2(this);
    this->actionFunc = func_80A16670;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A16670.s")
void func_80A16670(EnFish* this, GlobalContext* globalCtx) {
    static f32 D_80A17080[] = { 0.0f, 0.04f, 0.09f };
    static f32 D_80A1708C[] = { 0.5f, 0.1f, 0.15f };
    f32 sp54;
    u32 sp50;
    f32* sp4C;
    s32 pad2;
    f32 sp44;
    s32 pad3;

    sp50 = globalCtx->gameplayFrames;

    if (this->actor.xzDistToPlayer < 60.0f) {
        if (this->unk_248 < 12) {
            sp4C = D_80A1708C;
        } else {
            sp4C = D_80A17080;
        }
    } else {
        if (this->unk_248 < 4) {
            sp4C = D_80A1708C;
        } else {
            sp4C = D_80A17080;
        }
    }

    func_80A155D0(this);
    Math_SmoothStepToF(&this->actor.speedXZ, sp4C[0], sp4C[1], sp4C[2], 0.0f);

    sp44 = 0.0f;

    if ((EnFish_XZDistanceSquared(&this->actor.world.pos, &this->actor.home.pos) > 225.0f)) {
        if (!Math_ScaledStepToS(&this->actor.world.rot.y, Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos),
                                200)) {
            sp44 = 0.5f;
        }
    } else if ((this->unk_248 < 4) && !Math_ScaledStepToS(&this->actor.world.rot.y, sp50 * 0x80, 100)) {
        sp44 = 0.5f;
    }

    this->actor.shape.rot.y = this->actor.world.rot.y;
    sp54 = (this->actor.speedXZ * 1.2f) + 0.2f + sp44;
    this->skelAnime.playSpeed = CLAMP(sp54, 1.5f, 0.5);
    SkelAnime_Update(&this->skelAnime);

    if (this->unk_248 <= 0) {
        this->unk_248 = Rand_S16Offset(5, 80);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A16898.s")
void func_80A16898(EnFish* this, GlobalContext* globalCtx) {
    f32 sp24 = Math_SinS(this->unk_24C);
    f32 sp20 = Math_SinS(this->unk_24E);

    D_80A17014 += D_80A17018;

    if (D_80A17014 <= 1.0f) {
        D_80A17014 = 1.0f;

        if (Rand_ZeroOne() < 0.1f) {
            D_80A17018 = (Rand_ZeroOne() * 3.0f) + 2.0f;
            Audio_PlayActorSound2(&this->actor, NA_SE_EV_FISH_LEAP);
        } else {
            D_80A17018 = 0.0f;
        }
    } else {
        D_80A17018 -= 0.4f;
    }

    this->skelAnime.playSpeed = ((sp24 + sp20) * 0.5f) + 2.0f;
    SkelAnime_Update(&this->skelAnime);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A169C8.s")
void func_80A169C8(EnFish* this, GlobalContext* globalCtx) {
    s32 pad;
    f32 sp28 = Math_SinS(this->unk_24C);
    f32 sp24 = Math_SinS(this->unk_24E);

    this->actor.shape.rot.x -= 500;
    this->actor.shape.rot.z += 100;
    Math_StepToF(&D_80A17014, 0.0f, 1.0f);
    this->skelAnime.playSpeed = ((sp28 + sp24) * 0.5f) + 2.0f;
    SkelAnime_Update(&this->skelAnime);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A16A64.s")
void func_80A16A64(EnFish* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 pad2;
    CsCmdActorAction* sp4C;
    Vec3f vec1;
    Vec3f sp34;
    f32 temp_f0;
    s32 sp2C;
    // CsCmdActorAction* temp_v0;

    sp4C = globalCtx->csCtx.npcActions[1];

    if (sp4C == NULL) {
        // Warning : DEMO ended without dousa (action) 3 termination being called
        osSyncPrintf("Warning : dousa 3 消滅 が呼ばれずにデモが終了した(%s %d)(arg_data 0x%04x)\n",
                     "../z_en_sakana.c", 1169, this->actor.params);
        func_80A15444(this);
        Actor_Kill(&this->actor);
        return;
    }

    this->unk_24C += 0x111;
    this->unk_24E += 0x500;

    // sp4C = temp_v0;
    switch (sp4C->action) {
        case 1:
            func_80A16898(this, globalCtx);
            break;
        case 2:
            func_80A169C8(this, globalCtx);
            break;
        case 3:
            // DEMO fish termination
            osSyncPrintf("デモ魚消滅\n");
            func_80A15444(this);
            Actor_Kill(&this->actor);
            return;
            break;
        default:
            // Improper DEMO action
            osSyncPrintf("不正なデモ動作(%s %d)(arg_data 0x%04x)\n", "../z_en_sakana.c", 1200,
                         this->actor.params);
            break;
    }

    vec1.x = sp4C->startPos.x;
    vec1.y = sp4C->startPos.y;
    vec1.z = sp4C->startPos.z;
    sp34.x = sp4C->endPos.x;
    sp34.y = sp4C->endPos.y;
    sp34.z = sp4C->endPos.z;

    temp_f0 = func_8006F93C(sp4C->endFrame, sp4C->startFrame, globalCtx->csCtx.frames);

    this->actor.world.pos.x = ((sp34.x - vec1.x) * temp_f0) + vec1.x;
    this->actor.world.pos.y = ((sp34.y - vec1.y) * temp_f0) + vec1.y + D_80A17014;
    this->actor.world.pos.z = ((sp34.z - vec1.z) * temp_f0) + vec1.z;

    this->actor.floorHeight = BgCheck_EntityRaycastFloor4(&globalCtx->colCtx, &this->actor.floorPoly, &sp2C,
                                                          &this->actor, &this->actor.world.pos);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A16C68.s")
void func_80A16C68(EnFish* this, GlobalContext* globalCtx) {
    if (this->unk_248 > 0) {
        this->unk_248--;
    }

    this->unk_24C += 0x111;
    this->unk_24E += 0x500;

    if ((this->actor.child != NULL) && (this->actor.child->update == NULL) && (&this->actor != this->actor.child)) {
        this->actor.child = NULL;
    }

    if ((this->actionFunc == NULL) || (this->actionFunc(this, globalCtx), (this->actor.update != NULL))) {
        Actor_MoveForward(&this->actor);

        if (this->unk_250 != 0) {
            Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 17.5f, 4.0f, 0.0f, this->unk_250);
        }

        if (this->actor.xzDistToPlayer < 70.0f) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
        Actor_SetFocus(&this->actor, this->actor.shape.yOffset * 0.01f);
        if (Actor_HasParent(&this->actor, globalCtx)) {
            this->actor.parent = NULL;

            if (this->actor.params == 0) {
                Actor_Kill(&this->actor);
                return;
            }

            func_80A15374(this);
        } else if (func_80A15688(this, globalCtx)) {
            func_8002F434(&this->actor, globalCtx, 0x7E, 80.0f, 20.0f);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/func _80A16DEC.s")
void func_80A16DEC(EnFish* this, GlobalContext* globalCtx) {
    if (this->actor.params == 1) {
        Actor_Kill(&this->actor);
        return;
    }

    if ((this->actor.child != NULL) && (this->actor.child->update == NULL) && (&this->actor != this->actor.child)) {
        this->actor.child = NULL;
    }

    if ((this->actionFunc == NULL) || (this->actionFunc(this, globalCtx), (this->actor.update != NULL))) {
        Actor_MoveForward(&this->actor);

        if (this->unk_24A == 20) {
            this->actor.draw = EnFish_Draw;
        } else if (this->unk_24A == 0) {
            Actor_SetScale(&this->actor, 0.01f);
        } else if (this->unk_24A < 20) {
            Actor_SetScale(&this->actor, CLAMP_MAX(this->actor.scale.x + 0.001f, 0.01f));
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/EnFish_Update.s")
void EnFish_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnFish* this = THIS;
    Actor* phi_v0 = D_80A17010;

    if ((phi_v0 == NULL) && (this->actor.params == 0) && (globalCtx->csCtx.state != 0) &&
        (globalCtx->csCtx.npcActions[1] != NULL)) {
        func_80A153AC(this);
    }

    phi_v0 = D_80A17010;

    if ((phi_v0 != NULL) && (&this->actor == phi_v0)) {
        func_80A16A64(this, globalCtx);
    } else if (this->unk_24A > 0) {
        this->unk_24A--;
        func_80A16DEC(this, globalCtx);
    } else {
        func_80A16C68(this, globalCtx);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fish/EnFish_Draw.s")
void EnFish_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnFish* this = THIS;

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          0, 0, 0);
    Collider_UpdateSpheres(0, &this->collider);
}
