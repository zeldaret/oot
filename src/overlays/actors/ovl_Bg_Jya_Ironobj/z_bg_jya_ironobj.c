#include "z_bg_jya_ironobj.h"
#include "../ovl_En_Ik/z_en_ik.h"

#define FLAGS 0x00000000

#define THIS ((BgJyaIronobj*)thisx)

typedef void (*BgJyaIronobjIkFunc)(BgJyaIronobj*, GlobalContext*, EnIk*);

void BgJyaIronobj_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaIronobj_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaIronobj_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaIronobj_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_808992D8(BgJyaIronobj* this);
void func_808992E8(BgJyaIronobj* this, GlobalContext* globalCtx);

void func_80898920(BgJyaIronobj* this, GlobalContext* globalCtx, EnIk* enIk);
void func_80898DB4(BgJyaIronobj* this, GlobalContext* arg1, EnIk* enIk);

extern Gfx D_06000880;

static int unused = 0;

const ActorInit Bg_Jya_Ironobj_InitVars = {
    ACTOR_BG_JYA_IRONOBJ,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_JYA_IRON,
    sizeof(BgJyaIronobj),
    (ActorFunc)BgJyaIronobj_Init,
    (ActorFunc)BgJyaIronobj_Destroy,
    (ActorFunc)BgJyaIronobj_Update,
    (ActorFunc)BgJyaIronobj_Draw,
};
static Gfx* D_808994A4[] = { 0x06000240, 0x06001050 };

static ColliderCylinderInit D_808994AC = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_ENEMY,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 30, 150, 0, { 0, 0, 0 } },
};

static s16 D_808994D8[] = { 0x8700, 0x4000, 0xC000, 0x0000 };

// params ?
static s16 D_808994E0[] = { 0x0005, 0x0008, 0x000B, 0x000E, 0x0011, 0x0014, 0x0017, 0x001A };

static s16 D_808994F0[] = { 0x0012, 0x001A, 0x0022, 0x002A, 0x0032, 0x003C, 0x0046, 0x0050 };
static s16 D_80899500[] = { 0x0030, 0x002A, 0x0024, 0x0020, 0x001C, 0x0018, 0x0014, 0x0010 };

// params ?
static s16 D_80899510[] = { 0x0005, 0x0008, 0x000B, 0x000E, 0x0011, 0x0014, 0x0017, 0x001A };
static s16 D_80899520[] = { 0x0012, 0x001A, 0x0022, 0x002A, 0x0032, 0x003C, 0x0046, 0x0050 };
static s16 D_80899530[] = { 0x0030, 0x002A, 0x0024, 0x0020, 0x001C, 0x0018, 0x0014, 0x0010 };

// D_80899540
static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale.x, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};
static CollisionHeader* D_80899550[] = { 0x06000D48, 0x06001430 };
static BgJyaIronobjIkFunc D_80899558[] = { func_80898920, func_80898DB4 };

void func_808988A0(BgJyaIronobj* this, GlobalContext* globalCtx) {
    ColliderCylinder* colCylinder;

    colCylinder = &this->colCylinder;
    Collider_InitCylinder(globalCtx, colCylinder);
    Collider_SetCylinder(globalCtx, colCylinder, &this->dyna.actor, &D_808994AC);
    if ((this->dyna.actor.params & 1) == 1) {
        this->colCylinder.dim.radius = 40;
        this->colCylinder.dim.height = 100;
    }
    Collider_UpdateCylinder(&this->dyna.actor, colCylinder);
}

void func_80898920(BgJyaIronobj* this, GlobalContext* globalCtx, EnIk* enIk) {
    f32 temp_f0;
    f32 temp_f18;
    f32 spDC;
    f32 spD8;
    Vec3f spD4;
    Vec3f spC8;
    f32 spC4;
    Actor* temp_v0;
    f32 spBC;
    f32 temp_f22;
    s16 temp_s6;
    s32 temp_v0_3;
    s32 i;
    s32 j;
    s16 phi_s1_2;

    if (enIk->unk_2FF <= 0 || enIk->unk_2FF >= 4) {
        osSyncPrintf("Error 攻撃方法が分からない(%s %d)\n", "../z_bg_jya_ironobj.c", 233, enIk->unk_2FF);
        return;
    }
    osSyncPrintf("¢ attack_type(%d)\n", enIk->unk_2FF);
    temp_s6 = Actor_WorldYawTowardActor(&this->dyna.actor, enIk) + D_808994D8[enIk->unk_2FF - 1];

    for (i = 0; i < 8; i++) {
        temp_v0 =
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BG_JYA_HAHENIRON, this->dyna.actor.world.pos.x,
                        (Rand_ZeroOne() * 80.0f) + this->dyna.actor.world.pos.y + 20.0f, this->dyna.actor.world.pos.z,
                        0, ((s16)(s32)(Rand_ZeroOne() * 16384.0f) + temp_s6) - 0x2000, 0, 0);
        if (temp_v0 != NULL) {
            temp_v0->speedXZ = (Rand_ZeroOne() * 8.0f) + 9.0f;
            temp_v0->velocity.y = (Rand_ZeroOne() * 10.0f) + 6.0f;
        }
    }
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BG_JYA_HAHENIRON, this->dyna.actor.world.pos.x,
                this->dyna.actor.world.pos.y + 150.0f, this->dyna.actor.world.pos.z, 0, 0, 0, 1);
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_BG_JYA_HAHENIRON, this->dyna.actor.world.pos.x,
                this->dyna.actor.world.pos.y, this->dyna.actor.world.pos.z, 0, 0, 0, 2);
    spBC = Math_SinS(temp_s6);
    spC4 = Math_CosS(temp_s6);
    for (j = 0; j < 32; j++) {
        temp_f0 = Rand_ZeroOne();
        if (temp_f0 < 0.1f) {
            phi_s1_2 = 0x60;
        } else if (temp_f0 < 0.8f) {
            phi_s1_2 = 0x40;
        } else {
            phi_s1_2 = 0x20;
        }
        spD4.x = this->dyna.actor.world.pos.x;
        spD4.y = this->dyna.actor.world.pos.y + ((4.375f * j) + 10.0f);
        spD4.z = this->dyna.actor.world.pos.z;
        temp_f22 = fabsf(j - 15.5f) * 0.032258064f + 0.5f;
        spC8.x = 2.0f * ((Rand_ZeroOne() * 6.0f) - 3.0f) + (Rand_ZeroOne() * spBC * 8.0f * temp_f22);
        spC8.y = (Rand_ZeroOne() * 8.0f) - 3.0f;
        spC8.z = 2.0f * ((Rand_ZeroOne() * 6.0f) - 3.0f) + (Rand_ZeroOne() * spC4 * 8.0f * temp_f22);
        EffectSsKakera_Spawn(globalCtx, &spD4, &spC8, &spD4, -0x15E, phi_s1_2, D_80899500[j & 7], 4, 0,
                             D_808994E0[j & 7], 0, 5, D_808994F0[j & 7], -1, 0x16C, &D_06000880);
        if (Rand_ZeroOne() < 0.26f) {
            temp_v0_3 = D_808994E0[j & 7] * 4;
            func_80033480(globalCtx, &spD4, 200.0f, 1, temp_v0_3 + 0x3C, temp_v0_3 + 0x50, 1);
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Ironobj/func_80898DB4.s")
void func_80898DB4(BgJyaIronobj* this, GlobalContext* arg1, EnIk* enIk) {
    f32 temp_f0;
    f32 temp_f20;
    f32* temp_s4;
    f32* temp_s5_2;
    Vec3f spD4;
    Vec3f spC8;
    f32 spC4;
    Actor* temp_v0;
    f32 spBC;
    f32 temp_f22;
    s16 temp_s5;
    s32 temp_v0_3;
    s32 i;
    s32 j;
    s16 phi_s1_2;

    if (enIk->unk_2FF <= 0 || enIk->unk_2FF >= 4) {
        osSyncPrintf("Error 攻撃方法が分からない(%s %d)\n", "../z_bg_jya_ironobj.c", 362, enIk->unk_2FF);
        return;
    }
    osSyncPrintf("¢ attack_type(%d)\n", enIk->unk_2FF);
    temp_s5 = Actor_WorldYawTowardActor(&this->dyna.actor, enIk) + D_808994D8[enIk->unk_2FF - 1];
    for (i = 0; i < 8; i++) {
        temp_v0 =
            Actor_Spawn(&arg1->actorCtx, arg1, ACTOR_BG_JYA_HAHENIRON, this->dyna.actor.world.pos.x,
                        (Rand_ZeroOne() * 80.0f) + this->dyna.actor.world.pos.y + 10.0f, this->dyna.actor.world.pos.z,
                        0, ((s16)(s32)(Rand_ZeroOne() * 16384.0f) + temp_s5) - 0x2000, 0, 0);
        if (temp_v0 != NULL) {
            temp_v0->speedXZ = (Rand_ZeroOne() * 8.0f) + 9.0f;
            temp_v0->velocity.y = (Rand_ZeroOne() * 10.0f) + 6.0f;
        }
    }
    spBC = Math_SinS(temp_s5);
    spC4 = Math_CosS(temp_s5);

    for (j = 0; j < 32; j++) {

        temp_f0 = Rand_ZeroOne();
        if (temp_f0 < 0.1f) {
            phi_s1_2 = 0x60;
        } else if (temp_f0 < 0.8f) {
            phi_s1_2 = 0x40;
        } else {
            phi_s1_2 = 0x20;
        }
        spD4.x = ((Rand_ZeroOne() * 40.0f) - 20.0f) + this->dyna.actor.world.pos.x;
        spD4.y = this->dyna.actor.world.pos.y + (3.75f * j);
        spD4.z = ((Rand_ZeroOne() * 40.0f) - 20.0f) + this->dyna.actor.world.pos.z;
        temp_f22 = fabsf(j - 15.5f) * 0.032258064f + 0.5f;
        spC8.x = (2.0f * ((Rand_ZeroOne() * 6.0f) - 3.0f)) + (Rand_ZeroOne() * spBC * 8.0f * temp_f22);
        spC8.y = (Rand_ZeroOne() * 8.0f) - 3.0f;
        spC8.z = (2.0f * ((Rand_ZeroOne() * 6.0f) - 3.0f)) + (Rand_ZeroOne() * spC4 * 8.0f * temp_f22);
        EffectSsKakera_Spawn(arg1, &spD4, &spC8, &spD4, -0x15E, phi_s1_2, D_80899530[j & 7], 4, 0, D_80899510[j & 7], 0,
                             5, D_80899520[j & 7], -1, 0x16C, &D_06000880);
        if (Rand_ZeroOne() < 0.26f) {
            temp_v0_3 = D_80899510[j & 7] * 4;
            func_80033480(arg1, &spD4, 200.0f, 1, temp_v0_3 + 0x3C, temp_v0_3 + 0x50, 1);
        }
    }
}

void BgJyaIronobj_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaIronobj* this = THIS;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, 0);
    Actor_ProcessInitChain(thisx, &sInitChain);
    func_808988A0(this, globalCtx);
    CollisionHeader_GetVirtual(D_80899550[thisx->params & 1], &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna, colHeader);
    func_808992D8(this);
}

void BgJyaIronobj_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaIronobj* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->colCylinder);
    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void func_808992D8(BgJyaIronobj* this) {
    this->actionFunc = func_808992E8;
}

void func_808992E8(BgJyaIronobj* this, GlobalContext* globalCtx) {
    Actor* actor;
    Vec3f dropPos;
    s32 i;

    if (this->colCylinder.base.acFlags & 2) {
        actor = this->colCylinder.base.ac;
        this->colCylinder.base.acFlags &= ~2;
        if (actor != NULL && actor->id == ACTOR_EN_IK) {
            D_80899558[this->dyna.actor.params & 1](this, globalCtx, actor);
            Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.world.pos, 80, NA_SE_EN_IRONNACK_BREAK_PILLAR);
            dropPos.x = this->dyna.actor.world.pos.x;
            dropPos.y = this->dyna.actor.world.pos.y + 20.0f;
            dropPos.z = this->dyna.actor.world.pos.z;
            for (i = 0; i < 3; i++) {
                Item_DropCollectible(globalCtx, &dropPos, 0x0003);
                dropPos.y += 18.0f;
            }
            Actor_Kill((Actor*)this);
            return;
        }
    } else {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colCylinder.base);
    }
}

void BgJyaIronobj_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaIronobj* this = THIS;
    this->actionFunc(this, globalCtx);
}

void BgJyaIronobj_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_808994A4[thisx->params & 1]);
}
