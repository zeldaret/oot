#include "z_bg_jya_cobra.h"

#define FLAGS 0x00000010

#define THIS ((BgJyaCobra*)thisx)

void BgJyaCobra_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaCobra_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaCobra_Update(Actor *thisx, GlobalContext* globalCtx);
void BgJyaCobra_Draw(Actor *thisx, GlobalContext* globalCtx);

void func_80896918(BgJyaCobra* this, GlobalContext *globalCtx);
void func_80896950(BgJyaCobra* this, GlobalContext *globalCtx);
void func_808969F8(BgJyaCobra *this, GlobalContext *globalCtx);
void func_80896ABC(BgJyaCobra *this, GlobalContext *globalCtx);

extern Gfx D_06010790;
extern Gfx D_06010C20[];
extern UNK_TYPE D_0601167C;
extern Gfx D_060117D0[];

Gfx D_808972B0[] = {
 gsDPPipeSync(),
 gsDPSetCombineLERP(PRIMITIVE, 0, TEXEL0, 0, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, COMBINED, 0, 0, 0, COMBINED),
 gsDPSetRenderMode(AA_EN | Z_CMP | IM_RD | CLR_ON_CVG | CVG_DST_WRAP | ZMODE_DEC | FORCE_BL | GBL_c1(G_BL_CLR_IN, G_BL_0, G_BL_CLR_IN, G_BL_1), G_RM_AA_ZB_XLU_DECAL2),
 gsSPClearGeometryMode(G_CULL_BACK | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
 gsSPEndDisplayList()
};
/*
const ActorInit Bg_Jya_Cobra_InitVars = {
    ACTOR_BG_JYA_COBRA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJyaCobra),
    (ActorFunc)BgJyaCobra_Init,
    (ActorFunc)BgJyaCobra_Destroy,
    (ActorFunc)BgJyaCobra_Update,
    (ActorFunc)BgJyaCobra_Draw,
};
*/

s16 D_80897308[] = { 0, 0, 0, 0 };

// D_80897528
static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

s32 D_80897538[] = { 0x0000C000, 0 };

s32 D_80897540[] = { 0x00004000, 0 };

Vec3f D_80897548[] = {
 { 0.1f, 0.1f, 0.1f}, {0.072f, 0.072f, 0.072f}, {0.1f, 0.1f, 0.132f},
};

void func_808958F0(Vec3f *arg0, Vec3f *arg1, f32 arg2, f32 arg3) {
    arg0->x = (arg1->z * arg2) + (arg1->x * arg3);
    arg0->y = arg1->y;
    arg0->z = (arg1->z * arg3) - (arg1->x * arg2);
}

void func_8089593C(BgJyaCobra* this, GlobalContext* globalCtx, void *arg2, DynaPolyMoveFlag flags) {
    s32 padding;
    s32 sp30;
    s32 padding2;

    sp30 = 0;
    DynaPolyInfo_SetActorMove(&this->dyna, flags);
    DynaPolyInfo_Alloc(arg2, &sp30);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp30);
    if (this->dyna.dynaPolyId == 50) {
        // Warning : move BG Registration Failure(%s %d)(name %d)(arg_data 0x%04x)
        osSyncPrintf("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_jya_cobra.c", 247, this->dyna.actor.id, this->dyna.actor.params);
    }
}

void func_808959C4(BgJyaCobra* this, GlobalContext* globalCtx) {
    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->dyna.actor, globalCtx, ACTOR_MIR_RAY, this->dyna.actor.posRot.pos.x, this->dyna.actor.posRot.pos.y + 57.0f, this->dyna.actor.posRot.pos.z, 0, 0, 0, 6);
    if (this->dyna.actor.child == 0) {
        osSyncPrintf("\x1b[31m");
        //  	Ｅｒｒｏｒ : Mir Ray occurrence failure (%s %d) 
        osSyncPrintf("Ｅｒｒｏｒ : Mir Ray 発生失敗 (%s %d)\n", "../z_bg_jya_cobra.c", 0x10E);
        osSyncPrintf("\x1b[m");
    }
}

void func_80895A70(BgJyaCobra* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80895A70.s")

void func_80895BEC(BgJyaCobra *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    s32 padding;
    Vec3f sp2C;

    func_808958F0(&sp2C, &this->unk_174, Math_SinS(this->unk_170), Math_CosS(this->unk_170));
    player->actor.posRot.pos.x = this->dyna.actor.posRot.pos.x + sp2C.x;
    player->actor.posRot.pos.y = this->dyna.actor.posRot.pos.y + sp2C.y;
    player->actor.posRot.pos.z = this->dyna.actor.posRot.pos.z + sp2C.z;
}

s32 func_80895C74(BgJyaCobra* this, GlobalContext *globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80895C74.s")

void func_80895EF0(BgJyaCobra* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80895EF0.s")

void func_80896518(BgJyaCobra* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80896518.s")

void BgJyaCobra_Init(Actor *thisx, GlobalContext *globalCtx) {
    BgJyaCobra* this = THIS;

    func_8089593C(this, globalCtx, &D_0601167C, DPM_UNK);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    if (!(this->dyna.actor.params & 3) && Flags_GetSwitch(globalCtx, ((s32) this->dyna.actor.params >> 8) & 0x3F)) {
        this->dyna.actor.shape.rot.y = 0;
        this->dyna.actor.initPosRot.rot.y = this->dyna.actor.shape.rot.y;
        this->dyna.actor.posRot.rot.y = this->dyna.actor.shape.rot.y;
    }

    if (!(this->dyna.actor.params & 3)) {
        func_808959C4(this, globalCtx);
    }

    func_80896918(this, globalCtx);


    if (this->dyna.actor.params) {}
    
    if ((this->dyna.actor.params & 3) == 1 || (this->dyna.actor.params & 3) == 2) {
        this->dyna.actor.room = -1;
    }

    if ((this->dyna.actor.params & 3) == 1) {
        func_80896518(this);
    }

    // (jya cobra)(arg_data 0x%04x)(act %x)(txt %x)(txt16 %x) 
    osSyncPrintf((const char *) "(jya コブラ)(arg_data 0x%04x)(act %x)(txt %x)(txt16 %x)\n", this->dyna.actor.params, this, ((s8*)this) + 0x194, (s32) ((((s8*)this) + 0x1A3)) & ~0xF);
}

void BgJyaCobra_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    BgJyaCobra* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void func_80896918(BgJyaCobra *this, GlobalContext *globalCtx) {
    this->actionFunc = &func_80896950;
    this->unk_168 = 0;
    this->dyna.actor.posRot.rot.y = (((this->unk_16C << 0xD) + this->dyna.actor.initPosRot.rot.y) << 0x10) >> 0x10;
    this->dyna.actor.shape.rot.y = (((this->unk_16C << 0xD) + this->dyna.actor.initPosRot.rot.y) << 0x10) >> 0x10;
}

void func_80896950(BgJyaCobra *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    
    if (0.001f < this->dyna.unk_150) {
        this->unk_168 += 1;
        if (this->unk_168 >= 15) {
            func_808969F8(this, globalCtx);
        }
    } else {
        this->unk_168 = 0;
    }
    
    if (0.001f < fabsf(this->dyna.unk_150)) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= ~0x10;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_808969F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80896ABC.s")
// regalloc
// void func_80896ABC(BgJyaCobra *this, GlobalContext *globalCtx) {
//     s32 temp_v0;
//     Player* player;

//     player = PLAYER;
//     temp_v0 = ((((this->unk_16C << 0xD) + this->dyna.actor.initPosRot.rot.y) - this->dyna.actor.posRot.rot.y) << 0x10) >> 0x10;
//     if (ABS(temp_v0) < 7424) {
//         Math_ApproxS(&this->unk_16E, 106, 4);
//     } else {
//         Math_ApproxS(&this->unk_16E, 21, 10);
//     }
    
//     if (Math_ApproxUpdateScaledS(&this->unk_170, this->unk_16A << 0xd, this->unk_16E) != 0) {
//         this->unk_16C = (this->unk_16C + this->unk_16A) & 7;
//         player->stateFlags2 &= ~0x10;
//         this->dyna.unk_150 = 0.0f;
//         func_80896918(this, globalCtx);
//     } else {
//         temp_v0 = ((((this->unk_16C << 0xD) + this->dyna.actor.initPosRot.rot.y) + this->unk_170) << 0x10) >> 0x10;
//         this->dyna.actor.posRot.rot.y = temp_v0;
//         this->dyna.actor.shape.rot.y = temp_v0;
//     }

//     if (player->stateFlags2 & 0x10) {
//         if (this->unk_172 != 0) {
//             func_80895BEC(this, globalCtx);
//         }
//     } else if (fabsf(this->dyna.unk_150) < 0.001f) {
//         this->unk_172 = 0;
//     }
//     this->dyna.unk_150 = 0.0f;
//     func_8002F974(&this->dyna.actor, 0x200A);
// }

void BgJyaCobra_Update(Actor *thisx, GlobalContext *globalCtx) {
    BgJyaCobra *this = THIS;
    s32 temp_v0;

    this->actionFunc(this, globalCtx);
    func_80895C74(this, globalCtx);
    func_80895A70(this);
    temp_v0 = this->dyna.actor.params & 3;
    if (temp_v0 == 0 || temp_v0 == 2) {
        func_80895EF0(this);
    }
}

void func_80896CB4(GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_jya_cobra.c", 864);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_jya_cobra.c", 867), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_06010C20);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_jya_cobra.c", 872);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80896D78.s")
// regalloc
// void func_80896D78(BgJyaCobra *this, GlobalContext *globalCtx) {
//     s32 pad;
//     Vec3s sp44;

//     OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_jya_cobra.c", 924);
//     func_80093D84(globalCtx->state.gfxCtx);

//     sp44.x = D_80897308[this->dyna.actor.params & 3] + this->dyna.actor.shape.rot.x;
//     sp44.y = this->dyna.actor.shape.rot.y;
//     sp44.z = this->dyna.actor.shape.rot.z;
//     func_800D1694(this->unk_180.x, this->unk_180.y, this->unk_180.z, &sp44);

//     Matrix_Scale(0.1f, 0.1f, this->unk_190, MTXMODE_APPLY);
//     gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_jya_cobra.c", 939), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
//     gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, (s8)(this->unk_18C * 140.0f));
//     gSPDisplayList(POLY_XLU_DISP++, D_060117D0);

//     CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_jya_cobra.c", 947);
// }

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80896EE4.s")

void func_80896EE4(BgJyaCobra *this, GlobalContext *globalCtx) {
    s16 sp72;
    Vec3f sp64;
    // Vec3s *temp_a3;
    // Vec3f *temp_v0;
    Vec3s *phi_a3;
    GraphicsContext *gfxCtx;
    Gfx* dispRefs[4];

    sp72 = this->dyna.actor.params & 3;
    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, gfxCtx, (const char *) "../z_bg_jya_cobra.c", 0x3C6);
    func_80094044(globalCtx->state.gfxCtx);
    if (sp72 == 0) {
        sp64.x = this->dyna.actor.posRot.pos.x - 50.0f;
        sp64.y = this->dyna.actor.posRot.pos.y;
        sp64.z = this->dyna.actor.posRot.pos.z;
        phi_a3 = &D_80897538;
    } else {
        // temp_a3 = &this->dyna.actor.shape.rot;
        if (sp72 == 2) {
            sp64.x = this->dyna.actor.posRot.pos.x + 70.0f;
            sp64.y = this->dyna.actor.posRot.pos.y;
            sp64.z = this->dyna.actor.posRot.pos.z;
            phi_a3 = &D_80897540;
        } else {
            Math_Vec3f_Copy(&sp64, &this->dyna.actor.posRot.pos);
            phi_a3 = &this->dyna.actor.shape.rot;
        }
    }
    func_800D1694(sp64.x, sp64.y, sp64.z, phi_a3);
    Matrix_Scale(D_80897548[sp72].x, D_80897548[sp72].y, D_80897548[sp72].z, (u8)1U);
    Matrix_Translate(0.0f, 0.0f, 40.0f, (u8)1U);
    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0, 0, 0, 120);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_jya_cobra.c", 0x3E2), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gDPSetTextureImage(gfxCtx->polyXlu.p++, G_IM_FMT_I, G_IM_SIZ_16b, 1, (s32)(this + 0x1A3) & -0x10);
    gDPSetTile(gfxCtx->polyXlu.p++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0x0000, G_TX_RENDERTILE, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gfxCtx->polyXlu.p++);
    gDPLoadBlock(gfxCtx->polyXlu.p++, G_TX_LOADTILE, 0, 0, 2047, 256);
    gDPPipeSync(gfxCtx->polyXlu.p++);
    gDPSetTile(gfxCtx->polyXlu.p++, G_IM_FMT_I, G_IM_SIZ_8b, 8, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gfxCtx->polyXlu.p++, G_TX_RENDERTILE, 0, 0, qu102(63), qu102(63));
    gSPDisplayList(gfxCtx->polyXlu.p++, D_808972B0);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, (const char *) "../z_bg_jya_cobra.c", 0x3EE);
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/BgJyaCobra_Draw.s")
// void BgJyaCobra_Draw(Actor *thisx, GlobalContext *globalCtx) {
//     BgJyaCobra *this = THIS;

//     func_80896CB4(globalCtx);
//     Gfx_DrawDListOpa(globalCtx, &D_06010790);
//     if (this->unk_18C >= 0.0f) {
//         func_80896D78(this, globalCtx);
//     }
//     if ((this->dyna.actor.params & 3) == 2) {
//         if (this->dyna.actor.attachedA != NULL) {
//             if ((this->dyna.actor.attachedA->unk15C & 4) != 0) {
//                 if ((this->dyna.actor.attachedA->unk15C & 1) != 0) {
//                     func_80896EE4(this, globalCtx);
//                     return;
//                 }
//             }
//         }
//     } else {
//         func_80896EE4(this, globalCtx);
//     }
// }
