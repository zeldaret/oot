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
extern UNK_TYPE D_06010C20;
extern UNK_TYPE D_0601167C;
extern UNK_TYPE D_060117D0;

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

// D_80897528
static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 800, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80895BEC.s")
// void *func_80895BEC(BgJyaCobra *this, GlobalContext *globalCtx) {
//     Actor* sp3C;
//     s32 padding;
//     Vec3f sp2C;

//     sp3C = PLAYER;
//     func_808958F0(&sp2C, &this->unk_174, Math_Sins(this->unk_170), Math_Coss(this->unk_170));
//     sp3C->posRot.pos.x = this->dyna.actor.posRot.pos.x + sp2C.x;
//     sp3C->posRot.pos.y = this->dyna.actor.posRot.pos.y + sp2C.y;
//     sp3C->posRot.pos.z = this->dyna.actor.posRot.pos.z + sp2C.z;
//     return sp3C;
// }

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
// void func_80896ABC(BgJyaCobra *this, GlobalContext *globalCtx) {
//     s32 temp_v0;
//     Player* player;
//     s32 phi_v1;

//     player = PLAYER;
//     temp_v0 = (s32) ((((this->unk_16C << 0xD) + this->dyna.actor.initPosRot.rot.y) - this->dyna.actor.posRot.rot.y) << 0x10) >> 0x10;
//     if (temp_v0 >= 0) {
//         phi_v1 = temp_v0;
//     } else {
//         phi_v1 = -temp_v0;
//     }
//     if (phi_v1 < 0x1D00) {
//         Math_ApproxS(&this->unk_16E, (u16)0x6A, (u16)4);
//     } else {
//         Math_ApproxS(&this->unk_16E, (u16)0x15, (u16)0xA);
//     }
//     if (Math_ApproxUpdateScaledS(&this->unk_170, this->unk_16A << 0xd, this->unk_16E) != 0) {
//         this->unk_16C = (s16) ((this->unk_16C + this->unk_16A) & 7);
//         player->stateFlags2 &= ~0x10;
//         this->dyna.unk_150 = 0.0f;
//         func_80896918(this, globalCtx);
//     } else {
//         temp_v0 = (s32) ((((this->unk_16C << 0xD) + this->dyna.actor.initPosRot.rot.y) + this->unk_170) << 0x10) >> 0x10;
//         this->dyna.actor.posRot.rot.y = (s16) temp_v0;
//         this->dyna.actor.shape.rot.y = (s16) temp_v0;
//     }
//     if ((player->stateFlags2 & 0x10) != 0) {
//         if ((u8) this->unk_172 != 0) {
//             func_80895BEC(this, globalCtx);
//         }
//     } else {
//         if (fabsf(this->dyna.unk_150) < 0.001f) {
//             this->unk_172 = (u8)0;
//         }
//     }
//     this->dyna.unk_150 = 0.0f;
//     func_8002F974((Actor *) this, (u16)0x200AU);
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80896CB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80896D78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Cobra/func_80896EE4.s")

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
