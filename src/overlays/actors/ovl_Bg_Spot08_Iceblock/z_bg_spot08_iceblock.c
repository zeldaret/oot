#include "z_bg_spot08_iceblock.h"

#define FLAGS 0x00000000

#define THIS ((BgSpot08Iceblock*)thisx)

void BgSpot08Iceblock_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot08Iceblock_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot08Iceblock_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot08Iceblock_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808B1388(BgSpot08Iceblock* this);
void func_808B13AC(BgSpot08Iceblock* this, GlobalContext* globalCtx);
void func_808B13FC(BgSpot08Iceblock* this);
void func_808B1420(BgSpot08Iceblock* this, GlobalContext* globalCtx);
void func_808B14A0(BgSpot08Iceblock* this, GlobalContext* globalCtx);
void func_808B1574(BgSpot08Iceblock* this);
void func_808B147C(BgSpot08Iceblock* this);

const ActorInit Bg_Spot08_Iceblock_InitVars = {
    ACTOR_BG_SPOT08_ICEBLOCK,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT08_OBJ,
    sizeof(BgSpot08Iceblock),
    (ActorFunc)BgSpot08Iceblock_Init,
    (ActorFunc)BgSpot08Iceblock_Destroy,
    (ActorFunc)BgSpot08Iceblock_Update,
    (ActorFunc)BgSpot08Iceblock_Draw,
};

Vec3f D_808B16B0 = { 0.0f, 1.0f, 0.0f };

Vec3f D_808B16BC = { 0.0f, 0.0f, 0.0f };

f32 D_808B16C8[] = { 1.42857139451e-08f, 5.7142859333225715e-9f, 1.4285714833306429e-9f };

f32 D_808B16D4[] = { 0.96f, 0.96f, 0.98f };

f32 D_808B16E0[] = { 0.22495104f, 0.22495104f, 0.03489947f };
// glabel D_808B16E0
//  .word 0x3E665991, 0x3E665991, 0x3D0EF2BF

f32 D_808B16EC[] = { 0.97437006f, 0.97437006f, 0.99939084f };
// glabel D_808B16EC
//  .word 0x3F797051, 0x3F797051, 0x3F7FD814

/* static */ InitChainEntry D_808B16F8[] = {
    ICHAIN_F32(uncullZoneForward, 3000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 2200, ICHAIN_STOP),
};

extern Gfx D_06000DE0[];
extern Gfx D_06002BD0[];
extern CollisionHeader D_06002FD8;
extern CollisionHeader D_06001904;

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B0960.s")
void func_808B0960(BgSpot08Iceblock* this, BgSpot08IceblockActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B0968.s")
void func_808B0968(BgSpot08Iceblock* this, GlobalContext* globalCtx, void* colHeader, DynaPolyMoveFlag flags) {
    s32 pad;
    CollisionHeader* dest;
    s32 pad2;

    dest = NULL;
    DynaPolyActor_Init(&this->dyna, flags);
    CollisionHeader_GetVirtual(colHeader, &dest);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, dest);
    if (this->dyna.bgId == 0x32) {
        osSyncPrintf((const char*)"Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n",
                     "../z_bg_spot08_iceblock.c", 0xD9, this->dyna.actor.id, this->dyna.actor.params);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B09F0.s")
// void func_808B09F0(BgSpot08Iceblock *this);
void func_808B09F0(BgSpot08Iceblock* this) {
    switch (this->dyna.actor.params & 0xFF) {
        case 0xFF:
            this->dyna.actor.params = 0x10;
            break;
        default:
            osSyncPrintf((const char*)"Error : arg_data 設定ミスです。(%s %d)(arg_data 0x%04x)\n",
                         "../z_bg_spot08_iceblock.c", 0xF6, this->dyna.actor.params);
            this->dyna.actor.params = 0x10;
            break;
        case 1:
        case 4:
        case 16:
        case 17:
        case 18:
        case 20:
        case 32:
        case 35:
        case 36:
            break;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B0A84.s")
void func_808B0A84(BgSpot08Iceblock* this) {
    this->unk_198 = (Math_SinS(this->unk_18C) * 4.0f) + (Math_SinS(this->unk_18E) * 3.0f);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B0AE0.s")
void func_808B0AE0(BgSpot08Iceblock* this) {
    f32 phi_f0;
    f32 sp18;

    switch (this->dyna.actor.params & 0xF0) {
        case 0:
            sp18 = 0.15f;
            break;
        case 0x10:
            sp18 = 0.2f;
            break;
        case 0x20:
            sp18 = 0.4f;
            break;
    }

    if (func_80043548(&this->dyna)) {
        phi_f0 = -4.0f;
    } else {
        phi_f0 = 0.0f;
    }

    Math_StepToF(&this->unk_194, phi_f0, sp18);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B0B8C.s")
void func_808B0B8C(BgSpot08Iceblock* this) {
    this->dyna.actor.posRot.pos.y = this->unk_194 + this->unk_198 + this->dyna.actor.initPosRot.pos.y;
}

// Scale
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B0BA8.s")
void func_808B0BA8(Vec3f* dest, Vec3f* v, f32 scale) {
    dest->x = v->x * scale;
    dest->y = v->y * scale;
    dest->z = v->z * scale;
}

// Cross product
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B0BD4.s")
void func_808B0BD4(Vec3f *dest, Vec3f *v1, Vec3f *v2) {
    dest->x = (v1->y * v2->z) - (v1->z * v2->y);
    dest->y = (v1->z * v2->x) - (v1->x * v2->z);
    dest->z = (v1->x * v2->y) - (v1->y * v2->x);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B0C44.s")
// Normalise
s32 func_808B0C44(Vec3f* dest, Vec3f* v) {
    f32 magnitude;
    // f32 temp_f2;

    magnitude = Math3D_Vec3fMagnitude(v);
    if (magnitude < 0.001f) {
        dest->x = dest->y = 0.0f;
        dest->z = 1.0f;
        return false;
    } else {
        // temp_f2 = 1.0f / magnitude;
        dest->x = v->x * ( 1.0f / magnitude);
        dest->y = v->y * ( 1.0f / magnitude);
        dest->z = v->z * ( 1.0f / magnitude);
        return true;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B0CE0.s")
void func_808B0CE0(BgSpot08Iceblock *this, GlobalContext *globalCtx) {
    f32 temp_f0_2;
    f32 temp_f2;
    Vec3f spD4;
    Vec3f spC8;
    Vec3f spBC;
    Vec3f spB0;
    Vec3f spA4;
    Vec3f sp98;
    Vec3f sp8C;
    f32 sp88;
    s32 sp84;
    MtxF sp44;
    s32 pad;
    Player* player = PLAYER;

    switch (this->dyna.actor.params & 0xFF) {
        case 0x11:
            sp84 = 0;
            break;
        case 1:
            sp84 = 1;
            break;
        default:
            sp84 = 2;
            break;
    }
    
    Math_Vec3f_Diff(&player->actor.posRot.pos, &this->dyna.actor.posRot.pos, &spC8);
    spC8.y -= (150.0f * this->dyna.actor.scale.y);
    sp88 = Math3D_Vec3fMagnitude(&spC8);

    spA4.x = (Rand_ZeroOne() - 0.5f) * 0.0016f;
    spA4.y = 0.0f;
    spA4.z = (Rand_ZeroOne() - 0.5f) * 0.0016f;

    spD4.x = this->unk_168.x;
    spD4.y = 0.0f;
    spD4.z = this->unk_168.z;

    if (func_8004356C(&this->dyna) && (sp88 > 3.0f)) {
        Math_Vec3f_Diff(&spC8, &spD4, &spBC);
        func_808B0BA8(&spBC, &spBC, (D_808B16C8[sp84] * sp88) / this->dyna.actor.scale.x);
    } else {
        spBC = D_808B16BC;
    }
    func_808B0BA8(&spB0, &spD4, -0.01f);

    Math_Vec3f_Sum(&this->unk_174, &spBC, &this->unk_174);
    Math_Vec3f_Sum(&this->unk_174, &spB0, &this->unk_174);
    Math_Vec3f_Sum(&this->unk_174, &spA4, &this->unk_174);
    
    this->unk_174.y = 0.0f;

    Math_Vec3f_Sum(&this->unk_168, &this->unk_174, &sp98);
    
    sp98.x *= D_808B16D4[sp84];
    sp98.z *= D_808B16D4[sp84];

    if (func_808B0C44(&this->unk_168, &sp98)) {
        temp_f0_2 = Math3D_Dist1DSq(this->unk_168.z, this->unk_168.x);
        
        if (D_808B16E0[sp84] < temp_f0_2) {
            temp_f2 = D_808B16E0[sp84] / temp_f0_2;

            this->unk_168.x *= temp_f2;
            this->unk_168.y = D_808B16EC[sp84];
            this->unk_168.z *= temp_f2;
        }
        func_808B0BD4(&sp98, &D_808B16B0, &this->unk_168);

        if (func_808B0C44(&sp8C, &sp98)) {
            this->unk_180 = sp8C;
        }
    } else {
        this->unk_168 = D_808B16B0;
    }
    
    func_800D23FC(Math_FAcosF(Math3D_Cos(&D_808B16B0, &this->unk_168)), &this->unk_180, MTXMODE_NEW);
    Matrix_RotateY(this->dyna.actor.shape.rot.y * 0.0000958738f, MTXMODE_APPLY);
    Matrix_Get(&sp44);
    func_800D20CC(&sp44, &this->dyna.actor.shape.rot, 0);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B1054.s")
void func_808B1054(BgSpot08Iceblock* this, GlobalContext* globalCtx) {
    s32 pad[2];
    f32 sp44;
    f32 temp_f2;

    sp44 = Math_SinS(this->dyna.actor.initPosRot.rot.y) * 100.0f;
    temp_f2 = Math_CosS(this->dyna.actor.initPosRot.rot.y) * 100.0f;

    if ((this->dyna.actor.params & 0x100) == 0) {
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->dyna.actor, globalCtx, ACTOR_BG_SPOT08_ICEBLOCK,
                           this->dyna.actor.initPosRot.pos.x, this->dyna.actor.initPosRot.pos.y,
                           this->dyna.actor.initPosRot.pos.z, this->dyna.actor.initPosRot.rot.x,
                           this->dyna.actor.initPosRot.rot.y, this->dyna.actor.initPosRot.rot.z, 0x123);
        this->dyna.actor.posRot.pos.x = this->dyna.actor.posRot.pos.x + sp44;
        this->dyna.actor.posRot.pos.z = this->dyna.actor.posRot.pos.z + temp_f2;
    } else {
        this->dyna.actor.posRot.pos.x = this->dyna.actor.posRot.pos.x - sp44;
        this->dyna.actor.posRot.pos.z = this->dyna.actor.posRot.pos.z - temp_f2;
    }
    func_808B147C(this);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/BgSpot08Iceblock_Init.s")
void BgSpot08Iceblock_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot08Iceblock* this = THIS;
    CollisionHeader* colHeader;

    osSyncPrintf((const char*)"(spot08 流氷)(arg_data 0x%04x)\n", this->dyna.actor.params);
    func_808B09F0(this);

    switch (this->dyna.actor.params & 0x200) {
        case 0:
            colHeader = &D_06002FD8;
            break;
        case 0x200:
            colHeader = &D_06001904;
            break;
    }

    switch (this->dyna.actor.params & 0xF) {
        case 2:
        case 3:
            func_808B0968(this, globalCtx, colHeader, 3);
            break;
        default:
            func_808B0968(this, globalCtx, colHeader, 0);
            break;
    }

    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        Actor_Kill(&this->dyna.actor);
        return;
    }
    Actor_ProcessInitChain(&this->dyna.actor, D_808B16F8);

    switch (this->dyna.actor.params & 0xF0) {
        case 0:
            Actor_SetScale(&this->dyna.actor, 0.2f);
            break;
        case 0x10:
            Actor_SetScale(&this->dyna.actor, 0.1f);
            break;
        case 0x20:
            Actor_SetScale(&(&this->dyna)->actor, 0.05f);
            break;
    }

    this->unk_18C = (s32)(Rand_ZeroOne() * 65535.5f);
    this->unk_18E = (s32)(Rand_ZeroOne() * 65535.5f);
    this->unk_168.y = 1.0f;
    this->unk_180.x = 1.0f;

    switch (this->dyna.actor.params & 0xF) {
        case 0:
        case 1:
            func_808B1388(this);
            break;
        case 2:
            func_808B13FC(this);
            break;
        case 3:
            func_808B1054(this, globalCtx);
            break;
        case 4:
            func_808B1574(this);
            break;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/BgSpot08Iceblock_Destroy.s")
void BgSpot08Iceblock_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot08Iceblock* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B1388.s")
void func_808B1388(BgSpot08Iceblock* this) {
    func_808B0960(this, func_808B13AC);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B13AC.s")
void func_808B13AC(BgSpot08Iceblock* this, GlobalContext* globalCtx) {
    func_808B0A84(this);
    func_808B0AE0(this);
    func_808B0B8C(this);
    this->dyna.actor.shape.rot.y = this->dyna.actor.initPosRot.rot.y;
    func_808B0CE0(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B13FC.s")
void func_808B13FC(BgSpot08Iceblock* this) {
    func_808B0960(this, func_808B1420);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B1420.s")
void func_808B1420(BgSpot08Iceblock* this, GlobalContext* globalCtx) {
    func_808B0A84(this);
    func_808B0AE0(this);
    func_808B0B8C(this);
    this->dyna.actor.posRot.rot.y = this->dyna.actor.posRot.rot.y + 0x190;
    this->dyna.actor.shape.rot.y = this->dyna.actor.posRot.rot.y;
    func_808B0CE0(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B147C.s")
void func_808B147C(BgSpot08Iceblock* this) {
    func_808B0960(this, func_808B14A0);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B14A0.s")
void func_808B14A0(BgSpot08Iceblock* this, GlobalContext* globalCtx) {
    f32 temp_f12;
    f32 temp_f2;

    func_808B0A84(this);
    func_808B0AE0(this);
    func_808B0B8C(this);

    if ((this->dyna.actor.params & 0x100) == 0) {
        this->dyna.actor.posRot.rot.y = this->dyna.actor.posRot.rot.y + 0x190;
        temp_f2 = Math_SinS(this->dyna.actor.posRot.rot.y) * 100.0f;
        temp_f12 = Math_CosS(this->dyna.actor.posRot.rot.y) * 100.0f;

        this->dyna.actor.posRot.pos.x = this->dyna.actor.initPosRot.pos.x + temp_f2;
        this->dyna.actor.posRot.pos.z = this->dyna.actor.initPosRot.pos.z + temp_f12;

        if (this->dyna.actor.child != NULL) {
            this->dyna.actor.child->posRot.pos.x = this->dyna.actor.initPosRot.pos.x - temp_f2;
            this->dyna.actor.child->posRot.pos.z = this->dyna.actor.initPosRot.pos.z - temp_f12;
        }
    }

    this->dyna.actor.shape.rot.y = this->dyna.actor.initPosRot.rot.y;
    func_808B0CE0(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/func_808B1574.s")
void func_808B1574(BgSpot08Iceblock* this) {
    func_808B0960(this, NULL);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/BgSpot08Iceblock_Update.s")
void BgSpot08Iceblock_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot08Iceblock* this = THIS;

    if (Rand_ZeroOne() < 0.05f) {
        this->unk_190 = Rand_S16Offset(300, 100);
        this->unk_192 = Rand_S16Offset(800, 400);
    }

    this->unk_18C += this->unk_190;
    this->unk_18E += this->unk_192;
    if (this->actionFunc != NULL) {
        this->actionFunc(this, globalCtx);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot08_Iceblock/BgSpot08Iceblock_Draw.s")
void BgSpot08Iceblock_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx* dList;
    BgSpot08Iceblock* this = THIS;

    switch (this->dyna.actor.params & 0x200) {
        case 0:
            dList = D_06002BD0;
            break;
        case 0x200:
            dList = D_06000DE0;
            break;
    }

    Gfx_DrawDListOpa(globalCtx, dList);
}
