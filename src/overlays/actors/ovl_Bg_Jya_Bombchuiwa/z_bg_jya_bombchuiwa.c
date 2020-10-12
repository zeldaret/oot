#include "z_bg_jya_bombchuiwa.h"
#include "overlays/effects/ovl_Effect_Ss_Kakera/z_eff_ss_kakera.h"

#define FLAGS 0x00000001

#define THIS ((BgJyaBombchuiwa*)thisx)

void BgJyaBombchuiwa_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBombchuiwa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBombchuiwa_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBombchuiwa_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8089487C(BgJyaBombchuiwa* this, GlobalContext* globalCtx);
void func_80894840(BgJyaBombchuiwa* this, GlobalContext* globalCtx);
void func_808949B8(BgJyaBombchuiwa* this, GlobalContext* globalCtx);
void func_80894960(BgJyaBombchuiwa* this, GlobalContext* globalCtx);
void func_80894A44(BgJyaBombchuiwa* this, GlobalContext* globalCtx);

const ActorInit Bg_Jya_Bombchuiwa_InitVars = {
    ACTOR_BG_JYA_BOMBCHUIWA,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJyaBombchuiwa),
    (ActorFunc)BgJyaBombchuiwa_Init,
    (ActorFunc)BgJyaBombchuiwa_Destroy,
    (ActorFunc)BgJyaBombchuiwa_Update,
    (ActorFunc)BgJyaBombchuiwa_Draw,
};

static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000008, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 0, { { -300, 0, 0 }, 40 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x21, 0x20, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(unk_1F, 3, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

extern Gfx D_0600EDC0[];
extern Gfx D_0600E8D0[];
extern Gfx D_060119B0[];
extern Gfx D_600DC400[];
extern Gfx D_0600DB60[];

void BgJyaBombchuiwa_SetupCollider(BgJyaBombchuiwa* this, GlobalContext* globalCtx) {
    s32 pad;

    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, &this->colliderItems);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/func_808944F4.s")
void func_808944F4(BgJyaBombchuiwa* this, u8 arg1) {

    this->unk_1B6 &= ~7;
    this->unk_1B6 |= arg1;
}

void BgJyaBombchuiwa_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBombchuiwa* this = THIS;
    Actor_ProcessInitChain(thisx, &sInitChain);
    BgJyaBombchuiwa_SetupCollider(thisx, globalCtx);
    if (Flags_GetSwitch(globalCtx, (thisx->params & 0x3F))) {
        func_80894A44(this, globalCtx);
    } else {
        func_80894840(this, globalCtx);
    }
    Actor_SetHeight(thisx, 0.0f);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/BgJyaBombchuiwa_Destroy.s")
void BgJyaBombchuiwa_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    Collider_DestroyJntSph(globalCtx, &THIS->collider); // THIS macro required to match
}

void func_808945B4(BgJyaBombchuiwa* this, GlobalContext* globalCtx) {
    Vec3f pos;
    Vec3f velocity;
    s16 scale;
    s16 arg5;
    s16 arg6;
    s16 arg7;
    s32 i;

    for (i = 0; i < 20; i++) {
        pos.x = ((Math_Rand_ZeroOne() * 10.0f) + this->actor.posRot.pos.x) - 10.0f;
        pos.y = ((Math_Rand_ZeroOne() * 40.0f) + this->actor.posRot.pos.y) - 20.0f;
        pos.z = ((Math_Rand_ZeroOne() * 50.0f) + this->actor.posRot.pos.z) - 25.0f;
        velocity.x = (Math_Rand_ZeroOne() * 3.0f) - 0.3f;
        velocity.y = Math_Rand_ZeroOne() * 18.0f;
        velocity.z = (Math_Rand_ZeroOne() - 0.5f) * 15.0f;
        scale = (s32)(Math_Rand_ZeroOne() * 20.0f) + 1;
        if (scale >= 11) {
            arg5 = 5;
        } else {
            arg5 = 1;
        }
        if (Math_Rand_ZeroOne() < 0.4f) {
            arg5 = (arg5 | 0x40);
            arg6 = 0xC;
            arg7 = 8;
        } else {
            arg5 = arg5 | 0x20;
            arg6 = 0xC;
            arg7 = 8;
            if (scale < 8) {
                arg6 = 0x46;
                arg7 = 0x28;
            }
        }
        EffectSsKakera_Spawn(globalCtx, &pos, &velocity, &pos, -0x12C, arg5, arg6, arg7, 0, scale, 1, 0xF, 0x50,
                             KAKERA_COLOR_NONE, OBJECT_JYA_OBJ, D_0600EDC0);
    }
    func_80033480(globalCtx, &this->actor.posRot.pos, 100.0f, 8, 0x64, 0xA0, 0);
}

void func_80894840(BgJyaBombchuiwa* this, GlobalContext* globalCtx) {
    this->actionFunc = func_8089487C;
    func_808944F4(this, 3);
    this->unk_1B4 = 0;
}

void func_8089487C(BgJyaBombchuiwa* this, GlobalContext* globalCtx) {
    if ((this->collider.base.acFlags & 2) || (this->unk_1B4 > 0)) {
        if (this->unk_1B4 == 0) {
            func_800800F8(globalCtx, 0xD52, -0x63, &this->actor, 0);
        }
        this->unk_1B4++;
        if (this->unk_1B4 >= 11) {
            func_808945B4(this, globalCtx);
            func_80894960(this, globalCtx);
            Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 40, NA_SE_EV_WALL_BROKEN);
            return;
        }
    } else {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
    }
}

void func_80894960(BgJyaBombchuiwa* this, GlobalContext* globalCtx) {
    this->actionFunc = func_808949B8;
    func_808944F4(this, 4);
    this->unk_1B0 = 0.3f;
    this->unk_1B4 = 0;
    this->actor.flags &= -2;
}

void func_808949B8(BgJyaBombchuiwa* this, GlobalContext* globalCtx) {
    this->unk_1B4++;
    if ((this->unk_1B4 & 4) != 0) {
        func_80033480(globalCtx, &this->actor.posRot.pos, 60.0f, 3, 0x64, 0x64, 0);
    }
    if (Math_ApproxF(&this->unk_1B0, 1.0f, 0.028) != 0) {
        func_80894A44(this, globalCtx);
    }
}

void func_80894A44(BgJyaBombchuiwa* this, GlobalContext* globalCtx) {
    this->actionFunc = NULL;
    this->unk_1B0 = 153.0f;
    func_808944F4(this, 4);
    if (Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_MIR_RAY, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                    this->actor.posRot.pos.z, 0, 0, 0, 0) == 0) {
        // Occurrence failure
        osSyncPrintf("Ｅｒｒｏｒ : Mir_Ray 発生失敗(%s %d)(arg_data 0x%04x)\n", "../z_bg_jya_bombchuiwa.c", 0x19A,
                     this->actor.params);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/BgJyaBombchuiwa_Update.s")
void BgJyaBombchuiwa_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBombchuiwa* this = THIS;
    if (this->actionFunc != NULL) {
        this->actionFunc(this, globalCtx);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/func_80894B04.s")
void func_80894B04(GlobalContext* globalCtx) {

    // Graph_OpenDisps(&sp2C, temp_a1, (const char *) "../z_bg_jya_bombchuiwa.c", 0x1B4);
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_jya_bombchuiwa.c", 436);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_jya_bombchuiwa.c", 0x1B7),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_060119B0);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_jya_bombchuiwa.c", 443);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/func_80894BC8.s")
/*void func_80894BC8(BgJyaBombchuiwa* this, GlobalContext* globalCtx) {

    s32 pad;
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_jya_bombchuiwa.c", 453);
    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_jya_bombchuiwa.c", 457),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 255, 255, 255, CLAMP_MAX((u32)(this->unk_1B0 * 153.0f), 153));
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_600DC400);
    gDPPipeSync(oGfxCtx->polyXlu.p++);
    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 255, 255, 255, CLAMP_MAX((u32)(this->unk_1B0 * 255.0f), 255));
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_0600DB60);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_jya_bombchuiwa.c", 472);
}*/

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bombchuiwa/BgJyaBombchuiwa_Draw.s")

void BgJyaBombchuiwa_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static Vec3f D_80894F88 = { { -920.0f }, { 480.0f }, { -889.0f } };
    static Vec3s D_80894F94 = { 0, 0, 0 };
    BgJyaBombchuiwa* this = THIS;

    if ((this->unk_1B6 & 1) != 0) {
        Gfx_DrawDListOpa(globalCtx, &D_0600E8D0);
        func_800628A4(0, &this->collider);
    }

    if ((this->unk_1B6 & 2) != 0) {
        func_80894B04(globalCtx);
    }
    if ((this->unk_1B6 & 4) != 0) {
        func_800D1694(D_80894F88.x, D_80894F88.y, D_80894F88.z, &D_80894F94);
        Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);
        if ((this->unk_1B6 & 4) != 0) {
            func_80894BC8(this, globalCtx);
        }
    }
}
