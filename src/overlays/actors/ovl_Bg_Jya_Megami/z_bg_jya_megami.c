#include "z_bg_jya_megami.h"

#define FLAGS 0x00000000

#define THIS ((BgJyaMegami*)thisx)

void BgJyaMegami_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaMegami_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaMegami_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaMegami_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8089A5EC(BgJyaMegami* this);
void func_8089A604(BgJyaMegami* this, GlobalContext* globalContext);
void func_8089A78C(BgJyaMegami* this);
void func_8089A820(BgJyaMegami* this, GlobalContext* globalContext);

extern u32 D_06005780;
extern u32 D_06005C4C;
extern u32 D_0600B9F8;

const ActorInit Bg_Jya_Megami_InitVars = {
    ACTOR_BG_JYA_MEGAMI,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJyaMegami),
    (ActorFunc)BgJyaMegami_Init,
    (ActorFunc)BgJyaMegami_Destroy,
    (ActorFunc)BgJyaMegami_Update,
    (ActorFunc)BgJyaMegami_Draw,
};

ColliderJntSphItemInit D_8089AFE0 = {
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00200000, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 0x00, { { 0x0000, 0xFDA8, 0xFF38 }, 0x003C }, 0x0064 },
};

ColliderJntSphInit D_8089B004 = {
    { 0x0A, 0x00, 0x09, 0x00, 0x00, 0x00 },
    0x00000001,
    &D_8089AFE0,
};

megami_struct_8089B014 D_8089B014[] = {
    { { -50.0f, -21.28f, -38.92f }, -1.6f, 0xFED4, 0xFE70, 0x0028 },
    { { -4.32f, -13.44f, -13.76f }, 0.0f, 0x04B0, 0x0190, 0x002A },
    { { 30.92f, -20.480001f, -28.84f }, 1.6f, 0xFCE0, 0x0320, 0x002C },
    { { -24.08f, -40.960003f, -21.359999f }, -1.0f, 0xFD44, 0x01F4, 0x0024 },
    { { -44.8f, -73.92f, -49.76f }, -3.2f, 0x03E8, 0xFF38, 0x001E },
    { { -9.0f, -76.479996f, -13.24f }, -1.0f, 0xFC18, 0x0258, 0x001A },
    { { -10.240001f, -52.56f, -13.400001f }, 1.6f, 0x0258, 0xFE70, 0x0022 },
    { { 34.04f, -61.72f, -37.04f }, 1.5f, 0x0258, 0x0258, 0x001C },
    { { 59.48f, -38.399998f, -49.4f }, 1.8f, 0x01F4, 0x0000, 0x0026 },
    { { -19.04f, -112.24f, -35.120003f }, -1.6f, 0x012C, 0x0320, 0x0016 },
    { { 12.24f, -99.04f, -31.64f }, 1.8f, 0xFC18, 0xFE70, 0x0018 },
    { { 49.16f, -81.24f, -55.52f }, 2.4f, 0x02BC, 0x012C, 0x0020 },
    { { 14.759999f, -125.8f, -44.16f }, 0.2f, 0x0320, 0x0258, 0x0014 },
};

s16 D_8089B14C[] = {
    0x0005, 0x0008, 0x000B, 0x000E, 0x0011, 0x0014, 0x0017, 0x001A,
};

s16 D_8089B15C[] = {
    0x0012, 0x001A, 0x0022, 0x002A, 0x0032, 0x003C, 0x0046, 0x0050,
};

s16 D_8089B16C[] = {
    0x0030, 0x002A, 0x0024, 0x0020, 0x001C, 0x0018, 0x0014, 0x0010,
};

s16 D_8089B17C[] = {
    0x0001,
    0x0003,
    0x0007,
};

Vec3f D_8089B184 = {
    0.0f,
    0.0f,
    0.800000011921f,
};

InitChainEntry D_8089B190[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1200, ICHAIN_STOP),
};

Vec3f D_8089B1A0 = {
    0.0f,
    0.0f,
    0.0f,
};

u32 D_8089B1AC[] = {
    0x06000D00, 0x06001D00, 0x06002500, 0x06002D00, 0x06004D00,
};

u32 D_8089B1C0[] = {
    0x06001500, 0x06003500, 0x06003D00, 0x06004500, 0x06000500,
};

u32 D_8089B1D4[] = {
    0x06009928, 0x06009AC0, 0x06009C80, 0x06009DE8, 0x06009F60, 0x0600A0A8, 0x0600A278,
    0x0600A418, 0x0600A568, 0x0600A6A0, 0x0600A7E0, 0x0600A978, 0x0600AAC8,
};

void func_8089A130(BgJyaMegami* this, GlobalContext* globalContext, void* collision, DynaPolyMoveFlag flags) {
    u32 pad;
    u32 temp;

    temp = 0;
    DynaPolyInfo_SetActorMove(&this->dyna, flags);
    DynaPolyInfo_Alloc(collision, &temp);
    this->dyna.dynaPolyId =
        DynaPolyInfo_RegisterActor(globalContext, &globalContext->colCtx.dyna, &this->dyna.actor, temp);
}

void func_8089A188(BgJyaMegami* this, GlobalContext* globalContext) {
    u32 pad;

    Collider_InitJntSph(globalContext, &this->collider);
    Collider_SetJntSph(globalContext, &this->collider, &this->dyna.actor, &D_8089B004, &this->colliderItem);
}

#ifdef NON_MATCHING
// Equivalent, 1 stack placement incorrect
void func_8089A1DC(GlobalContext* globalContext, Vec3f* arg1, Vec3f* arg2, s32 arg3, s32 arg4) {
    Vec3f spB4;
    s32 temp_s1;
    u32* new_var2;
    s32 i;

    new_var2 = &D_0600B9F8;
    for (i = 0; i < arg3; ++i) {
        temp_s1 = ((s16)(Math_Rand_ZeroOne() * 8.0f)) & D_8089B17C[arg4];
        func_80029E8C(globalContext, arg1, arg2, arg1, -0x5A,
                      ((temp_s1 < 5) && (Math_Rand_ZeroOne() < 0.7f)) ? 0x40 : 0x20, D_8089B16C[temp_s1], 4, 0,
                      D_8089B14C[temp_s1], 0, 5, D_8089B15C[temp_s1], -1, OBJECT_JYA_OBJ, new_var2);
        if (Math_Rand_ZeroOne() < 0.45f) {
            Math_Vec3f_Copy(&spB4, arg1);
            spB4.z += 25.0f;
            func_80033480(globalContext, &spB4, 60.0f, 0, D_8089B14C[temp_s1] * 4 + 50, D_8089B14C[temp_s1] * 4 + 70,
                          1);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Megami/func_8089A1DC.s")
#endif // NON_MATCHING

void func_8089A41C(BgJyaMegami* this, GlobalContext* globalContext, f32 arg2) {
    s32 i;
    Vec3f sp50;

    for (i = 0; i < 13; ++i) {
        if (Math_Rand_ZeroOne() < arg2) {
            Math_Vec3f_Sum(&this->dyna.actor.posRot.pos, &D_8089B014[i].unk_00, &sp50);
            sp50.z += 15.0f;
            func_8089A1DC(globalContext, &sp50, &D_8089B184, 1, 0);
        }
    }
}

void BgJyaMegami_Init(Actor* thisx, GlobalContext* globalContext) {
    BgJyaMegami* this = THIS;

    func_8089A130(this, globalContext, &D_06005C4C, 0);
    func_8089A188(this, globalContext);
    if (Flags_GetSwitch(globalContext, this->dyna.actor.params & 0x3F) != 0) {
        Actor_Kill(&this->dyna.actor);
    } else {
        Actor_ProcessInitChain(&this->dyna.actor, D_8089B190);
        Actor_SetHeight(&this->dyna.actor, -50.0f);
        func_8089A5EC(this);
    }
}

void BgJyaMegami_Destroy(Actor* thisx, GlobalContext* globalContext) {
    BgJyaMegami* this = THIS;

    DynaPolyInfo_Free(globalContext, &globalContext->colCtx.dyna, this->dyna.dynaPolyId);
    Collider_DestroyJntSph(globalContext, &this->collider);
}

void func_8089A5EC(BgJyaMegami* this) {
    this->actionFunc = func_8089A604;
    this->timer = 0;
    this->unk_1CC = 0;
}

void func_8089A604(BgJyaMegami* this, GlobalContext* globalContext) {
    if (this->collider.base.acFlags & 0x2) {
        this->timer++;
        this->collider.base.acFlags &= ~0x2;
        if (!(globalContext->gameplayFrames & 0x3)) {
            func_8089A41C(this, globalContext, (this->unk_1CC * 0.04f) + 0.05f);
        }
        func_8002F974(&this->dyna.actor, 0x20D1);
    } else if (this->timer > 0) {
        this->timer--;
    }
    if (this->timer >= 41) {
        Flags_SetSwitch(globalContext, this->dyna.actor.params & 0x3F);
        func_8089A78C(this);
        Audio_PlaySoundAtPosition(globalContext, &this->dyna.actor.posRot.pos, 100, NA_SE_EV_FACE_EXPLOSION);
        func_800800F8(globalContext, 0xD70, -0x63, &this->dyna.actor, 0);
    } else {
        if (this->timer < 8) {
            this->unk_1CC = 0;
        } else if (this->timer < 16) {
            this->unk_1CC = 1;
        } else if (this->timer < 24) {
            this->unk_1CC = 2;
        } else if (this->timer < 32) {
            this->unk_1CC = 3;
        } else {
            this->unk_1CC = 4;
        }
        CollisionCheck_SetAC(globalContext, &globalContext->colChkCtx, &this->collider.base);
    }
}

void func_8089A78C(BgJyaMegami* this) {
    u32 i;

    this->actionFunc = func_8089A820;
    for (i = 0; i < 13; ++i) {
        Math_Vec3f_Copy(&this->unk_1D0[i].unk_00, &this->dyna.actor.posRot.pos);
        this->unk_1D0[i].unk_0C.x = D_8089B014[i].unk_0C;
    }
    this->unk_1CA = 0;
}

void func_8089A820(BgJyaMegami* this, GlobalContext* globalContext) {
    megami_struct_1D0* temp;
    u32 i;
    Vec3f sp8C;
    megami_struct_8089B014* temp2;
    u32 pad;

    this->unk_1CA++;
    if (this->unk_1CA == 0x1E) {
        Audio_PlaySoundAtPosition(globalContext, &this->dyna.actor.posRot.pos, 100, NA_SE_EV_FACE_BREAKDOWN);
    }

    for (i = 0; i < 13; ++i) {
        temp = &this->unk_1D0[i];
        temp2 = &D_8089B014[i];
        if (this->unk_1CA > temp2->unk_14) {
            temp->unk_0C.y -= 0.6f;
            if (temp->unk_0C.y < -18.0f) {
                temp->unk_0C.y = -18.0f;
            }
            temp->unk_0C.x *= 0.995f;
            temp->unk_00.x += temp->unk_0C.x;
            temp->unk_00.y += temp->unk_0C.y;
            temp->unk_18 += D_8089B014[i].unk_10;
            temp->unk_1A += D_8089B014[i].unk_12;
            if (Math_Rand_ZeroOne() < 0.067f) {
                Math_Vec3f_Sum(&temp->unk_00, &temp2->unk_00, &sp8C);
                sp8C.z += 10.0f;
                func_8089A1DC(globalContext, &sp8C, &temp->unk_0C, 3, 2);
            }
        } else if (this->unk_1CA == temp2->unk_14) {
            Math_Vec3f_Sum(&temp->unk_00, &temp2->unk_00, &sp8C);
            sp8C.z += 10.0f;
            func_8089A1DC(globalContext, &sp8C, &temp->unk_0C, 4, 2);
        }
    }

    if (!(this->unk_1CA & 0x3) && (this->unk_1CA >= 0x1F) && (this->unk_1CA < 0x50) && (this->unk_1CA >= 0x29)) {
        sp8C.x = ((Math_Rand_ZeroOne() - 0.5f) * 90.0f) + this->dyna.actor.posRot.pos.x;
        sp8C.y = (this->dyna.actor.posRot.pos.y - (Math_Rand_ZeroOne() * 80.0f)) - 20.0f;
        sp8C.z = this->dyna.actor.posRot.pos.z - ((Math_Rand_ZeroOne() - 0.5f) * 50.0f);
        func_8089A1DC(globalContext, &sp8C, &D_8089B1A0, 1, 0);
    }
    if (this->unk_1CA < 0xD) {
        sp8C.x = this->dyna.actor.posRot.pos.x;
        sp8C.y = this->dyna.actor.posRot.pos.y - 60.0f;
        sp8C.z = this->dyna.actor.posRot.pos.z;
        func_80033480(globalContext, &sp8C, 100.0f, 1, 150, 100, 1);
    }
    if (this->unk_1CA == 0x3C) {
        func_80078884(NA_SE_SY_CORRECT_CHIME);
    }
    if (this->unk_1CA >= 0x64) {
        Actor_Kill(&this->dyna.actor);
    }
}

void BgJyaMegami_Update(Actor* thisx, GlobalContext* globalContext) {
    BgJyaMegami* this = THIS;

    this->actionFunc(this, globalContext);
}

void func_8089ABC8(BgJyaMegami* this, GlobalContext* globalContext) {
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    gfxCtx = globalContext->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalContext->state.gfxCtx, "../z_bg_jya_megami.c", 706);
    func_80093D18(globalContext->state.gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_8089B1AC[this->unk_1CC]));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(D_8089B1C0[this->unk_1CC]));
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalContext->state.gfxCtx, "../z_bg_jya_megami.c", 716),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gfxCtx->polyOpa.p++, &D_06005780);
    Graph_CloseDisps(dispRefs, globalContext->state.gfxCtx, "../z_bg_jya_megami.c", 0x2D0);
}

void func_8089AD48(BgJyaMegami* this, GlobalContext* globalContext) {
    GraphicsContext* gfxCtx;
    megami_struct_1D0* temp;
    u32 i;
    Gfx* dispRefs[5];

    gfxCtx = globalContext->state.gfxCtx;

    Graph_OpenDisps(dispRefs, globalContext->state.gfxCtx, "../z_bg_jya_megami.c", 746);
    func_80093D18(globalContext->state.gfxCtx);

    for (i = 0; i < 13; ++i) {
        temp = &this->unk_1D0[i];
        Matrix_Translate(temp->unk_00.x + D_8089B014[i].unk_00.x, temp->unk_00.y + D_8089B014[i].unk_00.y,
                         temp->unk_00.z + D_8089B014[i].unk_00.z, MTXMODE_NEW);
        Matrix_RotateY(temp->unk_1A * 0.0000958738f, MTXMODE_APPLY);
        Matrix_RotateX(temp->unk_18 * 0.0000958738f, MTXMODE_APPLY);
        Matrix_Scale(0.1f, 0.1f, 0.1f, MTXMODE_APPLY);
        Matrix_Translate(D_8089B014[i].unk_00.x * -10.0f, D_8089B014[i].unk_00.y * -10.0f,
                         D_8089B014[i].unk_00.z * -10.0f, MTXMODE_APPLY);

        gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalContext->state.gfxCtx, "../z_bg_jya_megami.c", 778),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyOpa.p++, D_8089B1D4[i]);
    }
    Graph_CloseDisps(dispRefs, globalContext->state.gfxCtx, "../z_bg_jya_megami.c", 783);
}

void BgJyaMegami_Draw(Actor* thisx, GlobalContext* globalContext) {
    BgJyaMegami* this = THIS;

    func_800628A4(0, &this->collider);
    if (this->actionFunc == func_8089A820) {
        func_8089AD48(this, globalContext);
    } else {
        func_8089ABC8(this, globalContext);
    }
}
