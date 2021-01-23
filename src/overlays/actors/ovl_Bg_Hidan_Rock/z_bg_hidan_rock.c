#include "z_bg_hidan_rock.h"

#define FLAGS 0x00000000

#define THIS ((BgHidanRock*)thisx)

void BgHidanRock_Init(Actor *thisx, GlobalContext* globalCtx);
void BgHidanRock_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanRock_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanRock_Draw(Actor* thisx, GlobalContext* globalCtx);


void func_8088B24C(BgHidanRock* this);

extern UNK_TYPE func_8088B268;
void func_8088B5F4(BgHidanRock* this, GlobalContext* globalCtx);
void func_8088B634(BgHidanRock* this, GlobalContext* globalCtx);
extern UNK_TYPE func_8088B69C;
extern UNK_TYPE func_8088B79C;
void func_8088B90C(BgHidanRock* this, GlobalContext *globalCtx);
void func_8088B954(BgHidanRock* this, GlobalContext *globalCtx);
extern UNK_TYPE func_8088B990;

extern UNK_TYPE func_8088BC40;

extern UNK_TYPE D_0600C100;
extern UNK_TYPE D_0600C1F0;
extern UNK_TYPE D_0600CA10;
extern UNK_TYPE D_0600CB80;
extern UNK_TYPE D_0600DF78;

extern s32 D_8088BF60[];
extern s32 D_8088BF68[];
/*
s32 D_8088BF60[] = { 0x454EE000, 0x42F00000 };
s32 D_8088BF68[] = { 0x00000000 };

const ActorInit Bg_Hidan_Rock_InitVars = {
    ACTOR_BG_HIDAN_ROCK,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanRock),
    (ActorFunc)BgHidanRock_Init,
    (ActorFunc)BgHidanRock_Destroy,
    (ActorFunc)BgHidanRock_Update,
    (ActorFunc)BgHidanRock_Draw,
};

static ColliderCylinderInit D_8088BF8C = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x20000000, 0x01, 0x04 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NONE,
        BUMP_NONE,
        OCELEM_NONE,
    },
    { 45, 77, -40, { 3310, 120, 0 } },
};

//s32 D_8088BFB8[] = { 0xC8500064, 0x386CFDA8 };
static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -600, ICHAIN_STOP),
};

s32 D_8088BFC0[] = { 0x00000000 };
s32 D_8088BFC4[] = { 0x06012120, 0x060128A0, 0x06013020, 0x060137A0, 0x06013F20, 0x060146A0, 0x06014E20, 0x060155A0, 0x00000000, 0x00000000, 0x00000000 };
*/
extern ColliderCylinderInit D_8088BF8C;
extern InitChainEntry D_8088BFB8[];
extern s32 D_8088BFC0[];
extern s32 D_8088BFC4[];


void BgHidanRock_Init(Actor *thisx, GlobalContext *globalCtx) {
    BgHidanRock* this = THIS;
    DynaPolyActor* dyna = &this->dyna;
    CollisionHeader *col_header = NULL;

    Actor_ProcessInitChain(&dyna->actor, D_8088BFB8);
    DynaPolyActor_Init(dyna, DPM_PLAYER);

    this->unk_168 = dyna->actor.params & 0xFF;
    this->unk_169 = 0;

    this->dyna.actor.params = ((dyna->actor.params) >> 8) & 0xFF;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &dyna->actor, &D_8088BF8C);

    if (this->unk_168 == 0) {
        if (Flags_GetSwitch(globalCtx, dyna->actor.params) != 0) {
            Math_Vec3f_Copy(&this->dyna.actor.home.pos, (Vec3f *) D_8088BF60);
            Math_Vec3f_Copy(&this->dyna.actor.world.pos, (Vec3f *) D_8088BF60);
            this->unk_16A = 0x3C;
            this->callback = &func_8088B5F4;
        } else {
            this->callback = &func_8088B268;
        }
        this->dyna.actor.flags = dyna->actor.flags | 0x30;
        CollisionHeader_GetVirtual((void *) &D_0600CB80, &col_header);
    } else {
        CollisionHeader_GetVirtual((void *) &D_0600DF78, &col_header);
        this->collider.dim.pos.x = dyna->actor.home.pos.x;
        this->collider.dim.pos.y = dyna->actor.home.pos.y;
        this->collider.dim.pos.z = dyna->actor.home.pos.z;
        this->callback = &func_8088B634;
    }

    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &dyna->actor, col_header);
    this->unk_16A = 0;
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/BgHidanRock_Destroy.s")

void func_8088B24C(BgHidanRock *this) {
    this->dyna.actor.flags = this->dyna.actor.flags | 0x30;
    this->callback = &func_8088B990;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/func_8088B268.s")

void func_8088B5F4(BgHidanRock *this, GlobalContext *globalCtx) {
    s16 unk_16A;

    unk_16A = this->unk_16A;
    if (unk_16A != 0) {
        this->unk_16A = unk_16A - 1;
        unk_16A = this->unk_16A;
    }
    if (unk_16A == 0) {
        func_8088B24C(this);
    }
}

void func_8088B634(BgHidanRock *this, GlobalContext *globalCtx) {
    if (func_8004356C(&this->dyna) != 0) {
        this->unk_16A = 0x14;
        this->dyna.actor.world.rot.y = Camera_GetCamDirYaw(globalCtx->cameraPtrs[globalCtx->activeCamera]) + 0x4000;
        this->callback = &func_8088B69C;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/func_8088B69C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/func_8088B79C.s")

void func_8088B90C(BgHidanRock *this, GlobalContext *globalCtx) {
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 1.0f) != 0) {
        this->callback = func_8088B634;
    }
}

void func_8088B954(BgHidanRock *this, GlobalContext *globalCtx) {
    s16 unk_16A;

    unk_16A = this->unk_16A;
    if (unk_16A != 0) {
        this->unk_16A = unk_16A - 1;
        unk_16A = this->unk_16A;
    }

    if (unk_16A == 0) {
        this->callback = &func_8088B79C;
        this->dyna.actor.velocity.y = 0.0f;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/func_8088B990.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/BgHidanRock_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/func_8088BC40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Rock/BgHidanRock_Draw.s")
