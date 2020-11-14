#include "z_bg_mizu_shutter.h"

#define FLAGS 0x00000010

#define THIS ((BgMizuShutter*)thisx)

void BgMizuShutter_Init(BgMizuShutter* this, GlobalContext* globalCtx);
void BgMizuShutter_Destroy(BgMizuShutter* this, GlobalContext* globalCtx);
void BgMizuShutter_Update(BgMizuShutter* this, GlobalContext* globalCtx);
void BgMizuShutter_Draw(BgMizuShutter* this, GlobalContext* globalCtx);

void func_8089F3A4(BgMizuShutter* this, GlobalContext* globalCtx);
void func_8089F0DC(BgMizuShutter* this, GlobalContext* globalCtx);
void func_8089F1BC(BgMizuShutter* this, GlobalContext* globalCtx);
void func_8089F170(BgMizuShutter* this, GlobalContext* globalCtx);


const ActorInit Bg_Mizu_Shutter_InitVars = {
    ACTOR_BG_MIZU_SHUTTER,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_MIZU_OBJECTS,
    sizeof(BgMizuShutter),
    (ActorFunc)BgMizuShutter_Init,
    (ActorFunc)BgMizuShutter_Destroy,
    (ActorFunc)BgMizuShutter_Update,
    (ActorFunc)BgMizuShutter_Draw,
};

static Gfx* D_8089F540[] = {0x06007130, 0x060072D0};
static Gfx* D_8089F548[] = {0x06007250, 0x060073F0};
static Vec3f D_8089F550[] = {{0.0f, 100.0f, 0.0f}, {0.0f, 140.0f, 0.0f},};
static InitChainEntry D_8089F568[]  = {
    ICHAIN_F32(uncullZoneScale, 1500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgMizuShutter_Init(BgMizuShutter *thisx, GlobalContext *globalCtx) {
    s32 pad;
    BgMizuShutter* this = THIS;
    s32 pad2;
    CollisionHeader* sp30 = NULL;
    s32 pad3;

    Actor_ProcessInitChain(this, D_8089F568);
    this->unk_170 = D_8089F540[((u16)this->dyna.actor.params >> 0xC) & 0xF];
    DynaPolyInfo_SetActorMove(this, 1);
    DynaPolyInfo_Alloc(D_8089F548[((u16)this->dyna.actor.params >> 0xC) & 0xF], &sp30);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, this, sp30);
    if (((((u16)this->dyna.actor.params >> 0xC) & 0xF) == 0) || ((((u16)this->dyna.actor.params >> 0xC) & 0xF) == 1)) {
        this->unk_178 = this->dyna.actor.posRot.pos;
        this->unk_168 = 0;
        this->unk_16C = (((u16)this->dyna.actor.params >> 6) & 0x3F) * 0x14;
        Matrix_RotateY(this->dyna.actor.posRot.rot.y * 0.0000958738f, 0);
        Matrix_RotateX(this->dyna.actor.posRot.rot.x * 0.0000958738f, 1);
        Matrix_RotateZ(this->dyna.actor.posRot.rot.z * 0.0000958738f, 1);
        Matrix_MultVec3f(&D_8089F550[((u16)this->dyna.actor.params >> 0xC) & 0xF] , &this->unk_184);
        this->unk_184.x += this->dyna.actor.posRot.pos.x;
        this->unk_184.y += this->dyna.actor.posRot.pos.y;
        this->unk_184.z += this->dyna.actor.posRot.pos.z;
        if (this->unk_16C != 0x4EC) {
            Flags_UnsetSwitch(globalCtx, (u16)this->dyna.actor.params & 0x3F);
            this->dyna.actor.posRot.pos = this->unk_178;
        }
        if (Flags_GetSwitch(globalCtx, (u16)this->dyna.actor.params & 0x3F) != 0) {
            this->dyna.actor.posRot.pos = this->unk_184;
            this->actionFunc = func_8089F3A4;
        } else {
            this->actionFunc = func_8089F0DC;
        }
    }
}

void BgMizuShutter_Destroy(BgMizuShutter *thisx, GlobalContext *globalCtx) {
    BgMizuShutter* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_8089F0DC(BgMizuShutter *this, GlobalContext *globalCtx) {
    if (Flags_GetSwitch(globalCtx, (u16)this->dyna.actor.params & 0x3F) != 0) {
        if (ABS(this->dyna.actor.posRot.rot.x) >= 0x2C61) {
            func_800800F8(globalCtx, 0x119E, -0x63, this, 0);
        } else {
            func_80080480(globalCtx, this);
        }
        this->actionFunc = func_8089F170;
        this->unk_168 = 0x1E;
    }
}

void func_8089F170(BgMizuShutter *this, GlobalContext *globalCtx) {
    if (this->unk_168-- == 0) {
        Audio_PlayActorSound2(this, 0x2859);
        this->actionFunc = func_8089F1BC;
    }
}

void func_8089F1BC(BgMizuShutter *this, GlobalContext *globalCtx) {
    if (Flags_GetSwitch(globalCtx, (u16)this->dyna.actor.params & 0x3F) != 0) {
        Math_SmoothScaleMaxMinF(&this->dyna.actor.posRot.pos.x, this->unk_184.x, 1.0f, 4.0f, 0.1f);
        Math_SmoothScaleMaxMinF(&this->dyna.actor.posRot.pos.y, this->unk_184.y, 1.0f, 4.0f, 0.1f);
        Math_SmoothScaleMaxMinF(&this->dyna.actor.posRot.pos.z, this->unk_184.z, 1.0f, 4.0f, 0.1f);
        if ((this->dyna.actor.posRot.pos.x == this->unk_184.x) && (this->dyna.actor.posRot.pos.y == this->unk_184.y) && (this->dyna.actor.posRot.pos.z == this->unk_184.z)) {
            this->unk_168 = this->unk_16C;
            this->actionFunc = func_8089F3A4;
        }
    } else {
        Math_SmoothScaleMaxMinF(&this->unk_174, 20.0f, 1.0f, 3.0f, 0.1f);
        Math_SmoothScaleMaxMinF(&this->dyna.actor.posRot.pos.x, this->unk_178.x, 1.0f, this->unk_174, 0.1f);
        Math_SmoothScaleMaxMinF(&this->dyna.actor.posRot.pos.y, this->unk_178.y, 1.0f, this->unk_174, 0.1f);
        Math_SmoothScaleMaxMinF(&this->dyna.actor.posRot.pos.z, this->unk_178.z, 1.0f, this->unk_174, 0.1f);
        if ((this->dyna.actor.posRot.pos.x == this->unk_178.x) && (this->dyna.actor.posRot.pos.y == this->unk_178.y) && (this->dyna.actor.posRot.pos.z == this->unk_178.z)) {
            func_800AA000(this->dyna.actor.xyzDistFromLinkSq, 0x78, 0x14, 0xA);
            Audio_PlayActorSound2(this, 0x281D);
            this->actionFunc = func_8089F0DC;
        }
    }
}

void func_8089F3A4(BgMizuShutter *this, GlobalContext *globalCtx) {
    if (this->unk_16C != 0x4EC) {
        this->unk_168--;
        func_8002F994(this, this->unk_168);
        if (this->unk_168 == 0) {
            Audio_PlayActorSound2(this, 0x285A);
            Flags_UnsetSwitch(globalCtx, (u16)this->dyna.actor.params & 0x3F);
            this->actionFunc = func_8089F1BC;
        }
    }
}

void BgMizuShutter_Update(BgMizuShutter *thisx, GlobalContext *globalCtx) {
    BgMizuShutter* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgMizuShutter_Draw(BgMizuShutter *thisx, GlobalContext *globalCtx) {
    s32 pad;
    BgMizuShutter* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_mizu_shutter.c", 0x19A);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_mizu_shutter.c", 0x19F), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (this->unk_170 != NULL) {
        gSPDisplayList(POLY_OPA_DISP++, this->unk_170);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_mizu_shutter.c", 0x1A6);
}