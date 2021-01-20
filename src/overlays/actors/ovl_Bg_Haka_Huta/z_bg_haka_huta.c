#include "z_bg_haka_huta.h"

#define FLAGS 0x00000010

#define THIS ((BgHakaHuta*)thisx)

void BgHakaHuta_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHakaHuta_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHakaHuta_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHakaHuta_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8087D0AC(BgHakaHuta* this, GlobalContext* globalCtx);
void func_8087D268(BgHakaHuta* this, GlobalContext* globalCtx, u16 arg2);
void func_8087D2F0(BgHakaHuta* this, GlobalContext* globalCtx);
void func_8087D5B8(BgHakaHuta* this, GlobalContext* globalCtx);
void func_8087D66C(BgHakaHuta* this, GlobalContext* globalCtx);
void func_8087D720(BgHakaHuta* this, GlobalContext* globalCtx);
void func_8087D8C0(BgHakaHuta* this, GlobalContext* globalCtx);

extern Gfx D_060006B0[];
extern UNK_TYPE D_06000870;

const ActorInit Bg_Haka_Huta_InitVars = {
    ACTOR_BG_HAKA_HUTA,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_HAKACH_OBJECTS,
    sizeof(BgHakaHuta),
    (ActorFunc)BgHakaHuta_Init,
    (ActorFunc)BgHakaHuta_Destroy,
    (ActorFunc)BgHakaHuta_Update,
    (ActorFunc)BgHakaHuta_Draw,
};

// s32 D_8087D940[] = { 0x48500064 };
static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

// Vec3f D_8087D944[] = { 0.0f, 0.0f, 0.0f };
Vec3f sEffectAccel[] = { 0.0f, 0.0f, 0.0f };

// s32 D_8087D950[] = { 0x1E1432FF };
Color_RGBA8 primColor = { 30, 20, 50, 255 };

// s32 D_8087D954[] = { 0x000000FF };
Color_RGBA8 envColor = { 0, 0, 0, 255 };

// s32 D_8087D958[] = {0x41F00000, 0x00000000, 0x00000000};

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/BgHakaHuta_Init.s")
void BgHakaHuta_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaHuta* this = THIS;
    DynaPolyActor* new_var;
    CollisionHeader* sp24;

    new_var = &this->dyna;
    sp24 = 0;
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, 1);
    CollisionHeader_GetVirtual(&D_06000870, &sp24);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp24);
    this->unk_16A = ((*new_var).actor.params >> 8) & 0xFF;
    this->dyna.actor.params &= 0xFF;
    if (Flags_GetSwitch(globalCtx, this->dyna.actor.params) != 0) {
        this->counter = -1;
        this->actionFunc = func_8087D720;
    } else {
        this->actionFunc = func_8087D2F0;
    }
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/BgHakaHuta_Destroy.s")
void BgHakaHuta_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaHuta* this = THIS;
    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D0AC.s")
void func_8087D0AC(BgHakaHuta* this, GlobalContext* globalCtx) {
    f32 test;
    f32 phi_f20;
    Vec3f effectPos;
    Vec3f effectVel;
    s32 i;
    f32 new_var;
    f32 xPosOffset;

    phi_f20 = (this->dyna.actor.world.rot.y == 0) ? 1.0f : -1.0f;
    effectVel.y = 0.0f;
    effectVel.z = 0.0f;
    effectVel.x = -0.5f * phi_f20;
    effectPos.y = this->dyna.actor.world.pos.y;
    effectPos.z = this->dyna.actor.world.pos.z;
    new_var = 50 - ((this->dyna.actor.world.pos.x - this->dyna.actor.home.pos.x) * phi_f20);
    xPosOffset = new_var * phi_f20;

    // Loop through all the coffins
    for (i = 0; i < 4; i++) {
        if (i == 2) {
            effectPos.z += (120.0f * phi_f20);
        }
        effectPos.x = this->dyna.actor.home.pos.x - (Rand_ZeroOne() * xPosOffset);
        test = ((Rand_ZeroOne() * 10.0f) + 50.0f);
        func_8002829C(globalCtx, &effectPos, &effectVel, sEffectAccel, &primColor, &envColor, test, 0xA);
    }
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D268.s")
void func_8087D268(BgHakaHuta* this, GlobalContext* globalCtx, u16 arg2) {
    Vec3f pos;
    if (this->dyna.actor.shape.rot.y == 0) {
        pos.z = this->dyna.actor.world.pos.z + 120.0f;
    } else {
        pos.z = this->dyna.actor.world.pos.z - 120.0f;
    }
    pos.x = this->dyna.actor.world.pos.x;
    pos.y = this->dyna.actor.world.pos.y;
    Audio_PlaySoundAtPosition(globalCtx, &pos, 30, arg2);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D2F0.s")


// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D5B8.s")
void func_8087D5B8(BgHakaHuta* this, GlobalContext* globalCtx) {
    f32 posOffset;

    if (this->counter != 0) {
        this->counter--;
    }
    if (this->dyna.actor.world.rot.y == 0) {
        posOffset = 4.0f;
    } else {
        posOffset = -4.0f;
    }
    Math_StepToF(&this->dyna.actor.world.pos.x, this->dyna.actor.home.pos.x + posOffset, 2.0f);
    if (this->counter == 0) {
        this->counter = 37;
        func_8087D268(this, globalCtx, NA_SE_EV_COFFIN_CAP_OPEN);
        this->actionFunc = func_8087D66C;
    }
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D66C.s")
void func_8087D66C(BgHakaHuta* this, GlobalContext* globalCtx) {
    f32 posOffset;

    if (this->counter != 0) {
        this->counter--;
    }
    if (this->dyna.actor.world.rot.y == 0) {
        posOffset = 24.0f;
    } else {
        posOffset = -24.0f;
    }
    if (!Math_StepToF(&this->dyna.actor.world.pos.x, this->dyna.actor.home.pos.x + posOffset, 0.5f)) {
        func_8087D0AC(this, globalCtx);
    }
    if (this->counter == 0) {
        func_8087D268(this, globalCtx, NA_SE_EV_COFFIN_CAP_BOUND);
        this->actionFunc = func_8087D720;
    }
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D720.s")
void func_8087D720(BgHakaHuta* this, GlobalContext* globalCtx) {
    static Vec3f D_8087D958 = { 30.0f, 0.0f, 0.0f };
    static Vec3f D_8087D964 = { 0.032579999f, 0.325800001f, -0.944899976f };
    MtxF mtx;
    Vec3f vec;
    s32 quakeIndex;

    this->counter++;
    if (this->counter == 6) {
        this->actionFunc = func_8087D8C0;
        quakeIndex = Quake_Add(ACTIVE_CAM, 3);
        Quake_SetSpeed(quakeIndex, 0x7530);
        Quake_SetQuakeValues(quakeIndex, 4, 0, 0, 0);
        Quake_SetCountdown(quakeIndex, 2);
    } else if (this->counter == 0) {
        this->counter = 6;
        this->actionFunc = func_8087D8C0;
    }

    D_8087D958.x = this->counter + 24.0f;
    if (D_8087D958.x > 30.0f) {
        D_8087D958.x = 30.0f;
    }
    Matrix_RotateY(this->dyna.actor.world.rot.y * (M_PI / 32768), 0);
    func_800D23FC(this->counter * (191 * M_PI / 3750), &D_8087D964, 1);
    Matrix_MultVec3f(&D_8087D958, &vec);
    this->dyna.actor.world.pos.x = this->dyna.actor.home.pos.x + vec.x;
    this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y + vec.y;
    this->dyna.actor.world.pos.z = this->dyna.actor.home.pos.z + vec.z;
    Matrix_Get(&mtx);
    func_800D20CC(&mtx, &this->dyna.actor.shape.rot, 0);
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D8C0.s")
void func_8087D8C0(BgHakaHuta* this, GlobalContext* globalCtx) {
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/BgHakaHuta_Update.s")
void BgHakaHuta_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgHakaHuta* this = THIS;
    this->actionFunc(this, globalCtx);
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/BgHakaHuta_Draw.s")
void BgHakaHuta_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_060006B0);
}
