#include "z_en_fish.h"

#include "libc64/qrand.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "printf.h"
#include "sfx.h"
#include "z_lib.h"
#include "item.h"
#include "play_state.h"
#include "player.h"

#include "assets/objects/gameplay_keep/gFish1Anim.h"
#include "assets/objects/gameplay_keep/gFish2Anim.h"
#include "assets/objects/gameplay_keep/gameplay_keep_0x18610.h"

#define FLAGS 0

void EnFish_Init(Actor* thisx, PlayState* play);
void EnFish_Destroy(Actor* thisx, PlayState* play2);
void EnFish_Update(Actor* thisx, PlayState* play);
void EnFish_Draw(Actor* thisx, PlayState* play);

f32 func_80A15280(Vec3f* arg0, Vec3f* arg1);
void func_80A152AC(EnFish* this);
void func_80A15310(EnFish* this);
void func_80A15374(EnFish* this);
void func_80A153AC(EnFish* this2);
void func_80A15444(EnFish* this);
void func_80A155D0(EnFish* this);
s32 func_80A15688(EnFish* this, PlayState* play);
s32 func_80A15774(EnFish* this, PlayState* play);
void func_80A157A4(EnFish* this);
void func_80A157FC(EnFish* this, PlayState* play);
void func_80A158EC(EnFish* this);
void func_80A15944(EnFish* this, PlayState* play);
void func_80A15AD4(EnFish* this);
void func_80A15B2C(EnFish* this, PlayState* play);
void func_80A15D18(EnFish* this);
void func_80A15D68(EnFish* this, PlayState* play);
void func_80A15F24(EnFish* this);
void func_80A15F84(EnFish* this, PlayState* play);
void func_80A160BC(EnFish* this);
void func_80A16200(EnFish* this, PlayState* play);
void func_80A163DC(EnFish* this);
void func_80A16450(EnFish* this, PlayState* play);
void func_80A16618(EnFish* this);
void func_80A16670(EnFish* this, PlayState* play);
void func_80A16898(EnFish* this, PlayState* play);
void func_80A169C8(EnFish* this, PlayState* play);
void func_80A16A64(EnFish* this, PlayState* play);
void func_80A16C68(EnFish* this, PlayState* play);
void func_80A16DEC(EnFish* this, PlayState* play);

static EnFish* D_80A17010 = NULL;
static f32 D_80A17014 = 0.0f;
static f32 D_80A17018 = 0.0f;

static ColliderJntSphElementInit D_80A1701C[1] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
            { 0xFFCFFFFF, HIT_BACKLASH_NONE, 0x00 },
            ATELEM_NONE,
            ACELEM_NONE,
            OCELEM_ON,
        },
        { 0, { { 0, 0, 0 }, 5 }, 100 },
    },
};

static ColliderJntSphInit D_80A17040 = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    1,
    D_80A1701C,
};

ActorProfile En_Fish_Profile = {
    /**/ ACTOR_EN_FISH,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_KEEP,
    /**/ sizeof(EnFish),
    /**/ EnFish_Init,
    /**/ EnFish_Destroy,
    /**/ EnFish_Update,
    /**/ EnFish_Draw,
};

static InitChainEntry D_80A17070[4] = {
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 900, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 40, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 700, ICHAIN_STOP),
};

typedef struct struct_80A17080 {
    /* 0x0 */ f32 unk0;
    /* 0x4 */ f32 unk4;
    /* 0x8 */ f32 unk8;
} struct_80A17080; // size = 0xC
static struct_80A17080 D_80A17080 = { 0.0f, 0.04f, 0.09f };
static struct_80A17080 D_80A1708C = { 0.5f, 0.1f, 0.15f };

f32 func_80A15280(Vec3f* arg0, Vec3f* arg1) {
    f32 temp_fa0;
    f32 temp_fv1;

    temp_fv1 = arg0->x - arg1->x;
    temp_fa0 = arg0->z - arg1->z;
    return SQ(temp_fv1) + SQ(temp_fa0);
}

void func_80A152AC(EnFish* this) {
    Animation_Change(&this->unk1AC, &gFish2Anim, 1.0f, 0.0f, Animation_GetLastFrame(&gFish2Anim), ANIMMODE_LOOP_INTERP,
                     2.0f);
}

void func_80A15310(EnFish* this) {
    Animation_Change(&this->unk1AC, &gFish1Anim, 1.0f, 0.0f, Animation_GetLastFrame(&gFish1Anim), ANIMMODE_LOOP_INTERP,
                     2.0f);
}

void func_80A15374(EnFish* this) {
    this->unk24A = 0x190;
    Actor_SetScale(&this->actor, 0.001f);
    this->actor.draw = NULL;
}

void func_80A153AC(EnFish* this2) {
    EnFish* this = this2;

    if (D_80A17010 == NULL) {
        D_80A17010 = this;
        Actor_SetScale(&this->actor, 0.01f);
        this->actor.draw = EnFish_Draw;
        this->actor.shape.rot.x = 0;
        this->actor.shape.rot.y = -0x6410;
        this->actor.shape.rot.z = 0x4000;
        this->actor.shape.yOffset = 600.0f;
        D_80A17014 = 10.0f;
        D_80A17018 = 0.0f;
        this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
        func_80A15310(this);
    }
}

void func_80A15444(EnFish* this) {
    D_80A17010 = NULL;
    D_80A17014 = 0.0f;
    D_80A17018 = 0.0f;
}

void EnFish_Init(Actor* thisx, PlayState* play) {
    EnFish* this = (EnFish*)thisx;
    s16 sp3A;

    sp3A = this->actor.params;
    Actor_ProcessInitChain(&this->actor, D_80A17070);
    SkelAnime_InitFlex(play, &this->unk1AC, &gFishSkel, &gFish2Anim, this->unk1F0, this->unk21A, 7);
    Collider_InitJntSph(play, &this->unk14C);
    Collider_SetJntSph(play, &this->unk14C, &this->actor, &D_80A17040, &this->unk16C);
    this->actor.colChkInfo.mass = 0x32;
    this->unk24C = (s16)(s32)(Rand_ZeroOne() * 65535.5f);
    this->unk24E = (s16)(s32)(Rand_ZeroOne() * 65535.5f);
    if (sp3A == 0) {
        this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
        ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 8.0f);
        func_80A15F24(this);
    } else if (sp3A == 1) {
        func_80A16618(this);
    } else {
        func_80A157A4(this);
    }
}

void EnFish_Destroy(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    EnFish* this = (EnFish*)thisx;

    Collider_DestroyJntSph(play, &this->unk14C);
}

void func_80A155D0(EnFish* this) {
    this->actor.shape.yOffset += (Math_SinS(this->unk24C) * 10.0f) + (Math_SinS(this->unk24E) * 5.0f);
    this->actor.shape.yOffset = CLAMP(this->actor.shape.yOffset, -200.0f, 200.0f);
}

s32 func_80A15688(EnFish* this, PlayState* play) {
    s32 pad;
    Actor* temp_v0;
    Vec3f sp1C;

    temp_v0 = play->actorCtx.actorLists[2].head;
    if (this->actor.xzDistToPlayer < 32.0f) {
        sp1C.x = (Math_SinS(this->actor.yawTowardsPlayer + 0x8000) * 16.0f) + temp_v0->world.pos.x;
        sp1C.y = temp_v0->world.pos.y;
        sp1C.z = (Math_CosS(this->actor.yawTowardsPlayer + 0x8000) * 16.0f) + temp_v0->world.pos.z;
        if (func_80A15280(&sp1C, &this->actor.world.pos) <= SQ(20.0f)) {
            return 1;
        }
    }
    return 0;
}

s32 func_80A15774(EnFish* this, PlayState* play) {
    return this->actor.xzDistToPlayer < 60.0f;
}

void func_80A157A4(EnFish* this) {
    this->actor.gravity = 0.0f;
    this->actor.minVelocityY = 0.0f;
    this->unk248 = Rand_S16Offset(5, 0x23);
    this->unk250 = 0;
    func_80A152AC(this);
    this->unk244 = func_80A157FC;
}

void func_80A157FC(EnFish* this, PlayState* play) {
    func_80A155D0(this);
    Math_SmoothStepToF(&this->actor.speed, 0.0f, 0.05f, 0.3f, 0.0f);
    this->unk1AC.playSpeed = CLAMP_MAX((this->actor.speed * 1.4f) + 0.8f, 2.0f);
    SkelAnime_Update(&this->unk1AC);
    this->actor.shape.rot.y = this->actor.world.rot.y;
    if (this->unk248 <= 0) {
        func_80A158EC(this);
    } else if (this->actor.child == &this->actor) {
        func_80A15D18(this);
    } else if (func_80A15774(this, play)) {
        func_80A15AD4(this);
    }
}

void func_80A158EC(EnFish* this) {
    this->actor.gravity = 0.0f;
    this->actor.minVelocityY = 0.0f;
    this->unk248 = Rand_S16Offset(0xF, 0x2D);
    this->unk250 = 0;
    func_80A152AC(this);
    this->unk244 = func_80A15944;
}

void func_80A15944(EnFish* this, PlayState* play) {
    s32 pad;

    func_80A155D0(this);
    Math_SmoothStepToF(&this->actor.speed, 1.8f, 0.08f, 0.4f, 0.0f);
    if ((func_80A15280(&this->actor.world.pos, &this->actor.home.pos) > SQ(80.0f)) || (this->unk248 < 4)) {
        Math_StepToAngleS(&this->actor.world.rot.y, Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos),
                          0xBB8);
    } else {
        if ((this->actor.child != NULL) && (this->actor.child != &this->actor)) {
            Math_StepToAngleS(&this->actor.world.rot.y,
                              Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.child->world.pos), 0xBB8);
        }
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
    this->unk1AC.playSpeed = CLAMP_MAX((this->actor.speed * 1.5f) + 0.8f, 4.0f);
    SkelAnime_Update(&this->unk1AC);
    if (this->unk248 <= 0) {
        func_80A157A4(this);
    } else if (this->actor.child == &this->actor) {
        func_80A15D18(this);
    } else if (func_80A15774(this, play)) {
        func_80A15AD4(this);
    }
}

void func_80A15AD4(EnFish* this) {
    this->actor.gravity = 0.0f;
    this->actor.minVelocityY = 0.0f;
    this->unk248 = Rand_S16Offset(0xA, 0x28);
    this->unk250 = 0;
    func_80A152AC(this);
    this->unk244 = func_80A15B2C;
}

void func_80A15B2C(EnFish* this, PlayState* play) {
    s16 temp_v0_2;
    s16 var_a1;
    s32 pad2;
    s16 pad;
    s16 sp34;

    func_80A155D0(this);
    sp34 = func_80A15774(this, play);
    Math_SmoothStepToF(&this->actor.speed, 4.2f, 0.08f, 1.4f, 0.0f);
    if (func_80A15280(&this->actor.world.pos, &this->actor.home.pos) > SQ(160.0f)) {
        var_a1 = Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos);
        Math_StepToAngleS(&this->actor.world.rot.y, var_a1, 0xBB8);
    } else {
        if ((this->actor.child != NULL) && (this->actor.child != &this->actor)) {
            var_a1 = Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.child->world.pos);
            Math_StepToAngleS(&this->actor.world.rot.y, var_a1, 0x7D0);
        } else if (sp34) {
            temp_v0_2 = play->state.frames;
            if (play) {}
            var_a1 = this->actor.yawTowardsPlayer + 0x8000;
            if (temp_v0_2 & 0x10) {
                if (temp_v0_2 & 0x20) {
                    var_a1 += 0x2000;
                }
            } else {
                if (temp_v0_2 & 0x20) {
                    var_a1 -= 0x2000;
                }
            }
            Math_StepToAngleS(&this->actor.world.rot.y, var_a1, 0x7D0);
        }
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
    this->unk1AC.playSpeed = CLAMP_MAX((this->actor.speed * 1.5f) + 0.8f, 4.0f);
    SkelAnime_Update(&this->unk1AC);
    if ((this->unk248 <= 0) || !sp34) {
        func_80A157A4(this);
    } else if (this->actor.child == &this->actor) {
        func_80A15D18(this);
    }
}

void func_80A15D18(EnFish* this) {
    this->actor.gravity = 0.0f;
    this->actor.minVelocityY = 0.0f;
    func_80A152AC(this);
    this->unk248 = Rand_S16Offset(0xA, 0x28);
    this->unk250 = 0;
    this->unk244 = func_80A15D68;
}

void func_80A15D68(EnFish* this, PlayState* play) {
    s32 pad;
    Player* sp48;
    s32 pad2;
    Vec3f sp38;
    s16 v;
    s16 temp_a0_2;

    sp48 = GET_PLAYER(play);
    func_80A155D0(this);
    Math_SmoothStepToF(&this->actor.speed, 1.8f, 0.1f, 0.5f, 0.0f);
    if (func_80A15280(&this->actor.world.pos, &this->actor.home.pos) > SQ(80.0f)) {
        v = Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos);
        Math_StepToAngleS(&this->actor.world.rot.y, v, 0xBB8);
    } else {
        if ((s16)play->state.frames & 0x40) {
            temp_a0_2 = (this->actor.yawTowardsPlayer + 0x9000);
        } else {
            temp_a0_2 = (this->actor.yawTowardsPlayer + 0x7000);
        }
        sp38.x = (Math_SinS(temp_a0_2) * 20.0f) + sp48->actor.world.pos.x;
        sp38.y = sp48->actor.world.pos.y;
        sp38.z = (Math_CosS(temp_a0_2) * 20.0f) + sp48->actor.world.pos.z;
        v = Math_Vec3f_Yaw(&this->actor.world.pos, &sp38);
        Math_StepToAngleS(&this->actor.world.rot.y, v, 0xBB8);
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
    this->unk1AC.playSpeed = CLAMP_MAX((this->actor.speed * 1.5f) + 0.8f, 4.0f);
    SkelAnime_Update(&this->unk1AC);
    if (this->unk248 <= 0) {
        func_80A157A4(this);
    }
}

void func_80A15F24(EnFish* this) {
    this->actor.gravity = -1.0f;
    this->actor.minVelocityY = -10.0f;
    this->actor.shape.yOffset = 0.0f;
    func_80A15310(this);
    this->unk250 = UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2;
    this->unk244 = func_80A15F84;
    this->unk248 = 0x12C;
}

void func_80A15F84(EnFish* this, PlayState* play) {
    Math_SmoothStepToF(&this->actor.speed, 0.0f, 0.1f, 0.1f, 0.0f);
    Math_StepToAngleS(&this->actor.world.rot.x, 0x4000, 0x64);
    Math_StepToAngleS(&this->actor.world.rot.z, -0x4000, 0x64);
    this->actor.shape.rot.x = this->actor.world.rot.x;
    this->actor.shape.rot.y = this->actor.world.rot.y;
    this->actor.shape.rot.z = this->actor.world.rot.z;
    SkelAnime_Update(&this->unk1AC);
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        this->unk248 = 0x190;
        func_80A160BC(this);
    } else if (this->actor.bgCheckFlags & BGCHECKFLAG_WATER) {
        func_80A163DC(this);
    } else if ((this->unk248 <= 0) && (this->actor.params == 0) &&
               (this->actor.floorHeight < (BGCHECK_Y_MIN + 10.0f))) {
        PRINTF_COLOR_WARNING();
        PRINTF("BG 抜け？ Actor_delete します(%s %d)\n", "../z_en_sakana.c", 822);
        PRINTF_RST();
        Actor_Kill(&this->actor);
    }
}

void func_80A160BC(EnFish* this) {
    s32 pad[2];
    s32 var_v0;
    f32 temp_fv0;

    this->actor.gravity = -1.0f;
    this->actor.minVelocityY = -10.0f;
    temp_fv0 = Rand_ZeroOne();
    if (temp_fv0 < 0.1f) {
        this->actor.velocity.y = (Rand_ZeroOne() * 3.0f) + 2.5f;
        var_v0 = 1;
    } else if (temp_fv0 < 0.2f) {
        this->actor.velocity.y = (Rand_ZeroOne() * 1.2f) + 0.2f;
        var_v0 = 1;
    } else {
        this->actor.velocity.y = 0.0f;
        if (Rand_ZeroOne() < 0.2f) {
            var_v0 = 1;
        } else {
            var_v0 = 0;
        }
    }
    this->actor.shape.yOffset = 300.0f;
    func_80A15310(this);
    this->unk244 = func_80A16200;
    this->unk250 = UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2;
    if ((var_v0 != 0) && (this->actor.draw != NULL)) {
        Actor_PlaySfx(&this->actor, NA_SE_EV_FISH_LEAP);
    }
}

void func_80A16200(EnFish* this, PlayState* play) {
    s16 temp_ft1;
    s16 pad;
    s16 temp_v0_sp42;

    temp_v0_sp42 = play->state.frames; // unk9E;
    Math_SmoothStepToF(&this->actor.speed, Rand_ZeroOne() * 0.2f, 0.1f, 0.1f, 0.0f);
    temp_ft1 = (s16)(s32)((s16)((((temp_v0_sp42 >> 5) & 2) | ((temp_v0_sp42 >> 2) & 1)) * 0x800) * 0.3f);
    if (temp_v0_sp42 & 4) {
        temp_ft1 = temp_ft1 * -1;
    }
    Math_StepToAngleS(&this->actor.world.rot.x, temp_ft1, 0xFA0);
    Math_StepToAngleS(&this->actor.world.rot.z, 0x4000, 0x3E8);
    this->actor.world.rot.y +=
        (s16)(s32)(((Math_SinS(this->unk24C) * 2000.0f) + (Math_SinS(this->unk24E) * 1000.0f)) * Rand_ZeroOne());
    this->actor.shape.rot = this->actor.world.rot;
    SkelAnime_Update(&this->unk1AC);
    if (this->unk248 <= 0) {
        Actor_Kill(&this->actor);
        return;
    }
    if (this->unk248 < 0x3D) {
        if (temp_v0_sp42 & 4) {
            this->actor.draw = EnFish_Draw;
        } else {
            this->actor.draw = NULL;
        }
    } else if (this->actor.bgCheckFlags & BGCHECKFLAG_WATER) {
        func_80A163DC(this);
    } else if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        func_80A160BC(this);
    }
}

void func_80A163DC(EnFish* this) {
    this->actor.home.pos = this->actor.world.pos;
    this->actor.gravity = 0.0f;
    this->actor.minVelocityY = 0.0f;
    this->actor.shape.yOffset = 0.0f;
    this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
    this->unk248 = 0xC8;
    func_80A152AC(this);
    this->unk244 = func_80A16450;
    this->unk250 = UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2;
}

void func_80A16450(EnFish* this, PlayState* play) {
    s32 pad;

    Math_SmoothStepToF(&this->actor.speed, 2.8f, 0.1f, 0.4f, 0.0f);
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_WALL) || !(this->actor.bgCheckFlags & BGCHECKFLAG_WATER)) {
        this->actor.home.rot.y = Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos);
        this->actor.speed *= 0.5f;
    }
    Math_StepToAngleS(&this->actor.world.rot.x, 0, 0x5DC);
    Math_StepToAngleS(&this->actor.world.rot.y, this->actor.home.rot.y, 0xBB8);
    Math_StepToAngleS(&this->actor.world.rot.z, 0, 0x3E8);
    this->actor.shape.rot = this->actor.world.rot;
    if (this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) {
        Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y - 4.0f, 2.0f);
    } else {
        Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y - 10.0f, 2.0f);
    }
    if (this->unk248 < 0x64) {
        Actor_SetScale(&this->actor, this->actor.scale.x * 0.982f);
    }
    this->unk1AC.playSpeed = CLAMP_MAX((this->actor.speed * 1.5f) + 1.0f, 4.0f);
    SkelAnime_Update(&this->unk1AC);
    if (this->unk248 <= 0) {
        Actor_Kill(&this->actor);
    }
}

void func_80A16618(EnFish* this) {
    this->actor.gravity = 0.0f;
    this->actor.minVelocityY = 0.0f;
    this->unk248 = Rand_S16Offset(5, 0x23);
    this->unk250 = 0;
    func_80A152AC(this);
    this->unk244 = func_80A16670;
}

void func_80A16670(EnFish* this, PlayState* play) {
    s32 pad2;
    u32 sp50;
    struct_80A17080* var_v0_sp4C;
    s32 pad3;
    f32 sp44;
    s32 pad;

    sp50 = play->gameplayFrames;
    if (this->actor.xzDistToPlayer < 60.0f) {
        if (this->unk248 < 0xC) {
            var_v0_sp4C = &D_80A1708C;
        } else {
            var_v0_sp4C = &D_80A17080;
        }
    } else {
        if (this->unk248 < 4) {
            var_v0_sp4C = &D_80A1708C;
        } else {
            var_v0_sp4C = &D_80A17080;
        }
    }
    func_80A155D0(this);
    Math_SmoothStepToF(&this->actor.speed, var_v0_sp4C->unk0, var_v0_sp4C->unk4, var_v0_sp4C->unk8, 0.0f);
    sp44 = 0.0f;
    if (func_80A15280(&this->actor.world.pos, &this->actor.home.pos) > SQ(15.0f)) {
        if (!Math_ScaledStepToS(&this->actor.world.rot.y, Math_Vec3f_Yaw(&this->actor.world.pos, &this->actor.home.pos),
                                0xC8)) {
            sp44 = 0.5f;
        }
    } else if ((this->unk248 < 4) && !Math_ScaledStepToS(&this->actor.world.rot.y, sp50 * 0x80, 0x64)) {
        sp44 = 0.5f;
    }
    this->actor.shape.rot.y = this->actor.world.rot.y;
    //! @bug swapped min and max clamp bounds
    this->unk1AC.playSpeed = CLAMP((this->actor.speed * 1.2f) + 0.2f + sp44, 1.5f, 0.5);
    SkelAnime_Update(&this->unk1AC);
    if (this->unk248 <= 0) {
        this->unk248 = Rand_S16Offset(5, 0x50);
    }
}

void func_80A16898(EnFish* this, PlayState* play) {
    f32 sp24;
    f32 sp20;

    sp24 = Math_SinS(this->unk24C);
    sp20 = Math_SinS(this->unk24E);
    D_80A17014 += D_80A17018;
    if (D_80A17014 <= 1.0f) {
        D_80A17014 = 1.0f;
        if (Rand_ZeroOne() < 0.1f) {
            D_80A17018 = (Rand_ZeroOne() * 3.0f) + 2.0f;
            Actor_PlaySfx(&this->actor, NA_SE_EV_FISH_LEAP);
        } else {
            D_80A17018 = 0.0f;
        }
    } else {
        D_80A17018 -= 0.4f;
    }
    this->unk1AC.playSpeed = ((sp24 + sp20) * 0.5f) + 2.0f;
    SkelAnime_Update(&this->unk1AC);
}

void func_80A169C8(EnFish* this, PlayState* play) {
    s32 pad;
    f32 sp28;
    f32 sp24;

    sp28 = Math_SinS(this->unk24C);
    sp24 = Math_SinS(this->unk24E);
    this->actor.shape.rot.x -= 0x1F4;
    this->actor.shape.rot.z += 0x64;
    Math_StepToF(&D_80A17014, 0.0f, 1.0f);
    this->unk1AC.playSpeed = ((sp28 + sp24) * 0.5f) + 2.0f;
    SkelAnime_Update(&this->unk1AC);
}

void func_80A16A64(EnFish* this, PlayState* play) {
    f32 temp_fv0;
    s32 pad;
    CsCmdActorCue* sp4C;
    Vec3f sp40;
    Vec3f sp34;
    s32 pad2;
    s32 sp2C;

    if (play) {}
    if (play) {}

    sp4C = play->csCtx.actorCues[1];
    if (sp4C == NULL) {
        if (1) {}
        PRINTF("Warning : dousa 3 消滅 が呼ばれずにデモが終了した(%s %d)(arg_data 0x%04x)\n", "../z_en_sakana.c", 1169,
               this->actor.params);
        func_80A15444(this);
        Actor_Kill(&this->actor);
        return;
    }
    this->unk24C += 0x111;
    this->unk24E += 0x500;
    switch (sp4C->id) {
        case 1:
            func_80A16898(this, play);
            break;

        case 2:
            func_80A169C8(this, play);
            break;

        case 3:
            PRINTF("デモ魚消滅\n");
            func_80A15444(this);
            Actor_Kill(&this->actor);
            return;

        default:
            PRINTF("不正なデモ動作(%s %d)(arg_data 0x%04x)\n", "../z_en_sakana.c", 1200, this->actor.params);
            break;
    }
    sp40.x = sp4C->startPos.x;
    sp40.y = sp4C->startPos.y;
    sp40.z = sp4C->startPos.z;
    sp34.x = sp4C->endPos.x;
    sp34.y = sp4C->endPos.y;
    sp34.z = sp4C->endPos.z;
    temp_fv0 = Environment_LerpWeight(sp4C->endFrame, sp4C->startFrame, play->csCtx.curFrame);
    this->actor.world.pos.x = ((sp34.x - sp40.x) * temp_fv0) + sp40.x;
    this->actor.world.pos.y = ((sp34.y - sp40.y) * temp_fv0) + sp40.y + D_80A17014;
    this->actor.world.pos.z = ((sp34.z - sp40.z) * temp_fv0) + sp40.z;
    this->actor.floorHeight =
        BgCheck_EntityRaycastDown4(&play->colCtx, &this->actor.floorPoly, &sp2C, &this->actor, &this->actor.world.pos);
}

void func_80A16C68(EnFish* this, PlayState* play) {
    if (this->unk248 > 0) {
        this->unk248--;
    }
    this->unk24C += 0x111;
    this->unk24E += 0x500;
    if ((this->actor.child != NULL) && (this->actor.child->update == NULL) && (this->actor.child != &this->actor)) {
        this->actor.child = NULL;
    }
    if ((this->unk244 == NULL) || (this->unk244(this, play), (this->actor.update != NULL))) {
        Actor_MoveXZGravity(&this->actor);
        if (this->unk250 != 0) {
            Actor_UpdateBgCheckInfo(play, &this->actor, 17.5f, 4.0f, 0.0f, this->unk250);
        }
        if (this->actor.xzDistToPlayer < 70.0f) {
            CollisionCheck_SetOC(play, &play->colChkCtx, &this->unk14C.base);
        }
        Actor_SetFocus(&this->actor, this->actor.shape.yOffset * 0.01f);
        if (Actor_HasParent(&this->actor, play)) {
            this->actor.parent = NULL;
            if (this->actor.params == 0) {
                Actor_Kill(&this->actor);
            } else {
                func_80A15374(this);
            }
        } else if (func_80A15688(this, play) != 0) {
            Actor_OfferGetItem(&this->actor, play, GI_MAX, 80.0f, 20.0f);
        }
    }
}

void func_80A16DEC(EnFish* this, PlayState* play) {
    f32 var_fv1;

    if (this->actor.params == 1) {
        Actor_Kill(&this->actor);
        return;
    }
    if ((this->actor.child != NULL) && (this->actor.child->update == NULL) && (this->actor.child != &this->actor)) {
        this->actor.child = NULL;
    }
    if ((this->unk244 == NULL) || (this->unk244(this, play), (this->actor.update != NULL))) {
        Actor_MoveXZGravity(&this->actor);
        if (this->unk24A == 0x14) {
            this->actor.draw = EnFish_Draw;
        } else if (this->unk24A == 0) {
            Actor_SetScale(&this->actor, 0.01f);
        } else if (this->unk24A < 0x14) {
            var_fv1 = CLAMP_MAX(this->actor.scale.x + 0.001f, 0.01f);
            Actor_SetScale(&this->actor, var_fv1);
        }
    }
}

void EnFish_Update(Actor* thisx, PlayState* play) {
    EnFish* this = (EnFish*)thisx;

    if ((D_80A17010 == NULL) && (this->actor.params == 0) && (play->csCtx.state != CS_STATE_IDLE) &&
        (play->csCtx.actorCues[1] != NULL)) {
        func_80A153AC(this);
    }
    if ((D_80A17010 != NULL) && (D_80A17010 == this)) {
        func_80A16A64(this, play);
    } else if (this->unk24A > 0) {
        this->unk24A--;
        func_80A16DEC(this, play);
    } else {
        func_80A16C68(this, play);
    }
}

void EnFish_Draw(Actor* thisx, PlayState* play) {
    EnFish* this = (EnFish*)thisx;

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    SkelAnime_DrawFlexOpa(play, this->unk1AC.skeleton, this->unk1AC.jointTable, this->unk1AC.dListCount, NULL, NULL,
                          NULL);
    Collider_UpdateSpheres(0, &this->unk14C);
}
