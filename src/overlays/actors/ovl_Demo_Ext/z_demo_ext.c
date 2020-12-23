#include "z_demo_ext.h"

#define FLAGS 0x00000010

#define THIS ((DemoExt*)thisx)

void DemoExt_Init(Actor* thisx, GlobalContext* globalCtx);
void DemoExt_Destroy(Actor* thisx, GlobalContext* globalCtx);
void DemoExt_Update(Actor* thisx, GlobalContext* globalCtx);
void DemoExt_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80977854(DemoExt* this, GlobalContext* globalCtx);
void func_80977874(DemoExt* this, GlobalContext* globalCtx);
void func_809778AC(DemoExt* this, GlobalContext* globalCtx);
void func_80977944(Actor* thisx, GlobalContext* globalCtx);
void func_80977950(Actor* thisx, GlobalContext* globalCtx);

static DemoExtActionFunc D_80977C70[] = { func_80977854, func_80977874, func_809778AC };
static DemoExtDrawFunc D_80977C7C[] = { func_80977944, func_80977950 };

const ActorInit Demo_Ext_InitVars = {
    ACTOR_DEMO_EXT,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_FHG,
    sizeof(DemoExt),
    (ActorFunc)DemoExt_Init,
    (ActorFunc)DemoExt_Destroy,
    (ActorFunc)DemoExt_Update,
    (ActorFunc)DemoExt_Draw,
};

extern Gfx D_0600FAA0[];

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/DemoExt_Destroy.s")
void DemoExt_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/DemoExt_Init.s")
void DemoExt_Init(Actor* thisx, GlobalContext* globalCtx) {
    DemoExt* this = THIS;

    this->unk_158[0] = 25;
    this->unk_158[1] = 40;
    this->unk_158[2] = 5;
    this->unk_158[3] = 30;
    this->unk_170 = kREG(28) + 0xFF;
    this->unk_174 = kREG(32) + 0xFF;
    this->unk_178.x = kREG(19) + 400.0f;
    this->unk_178.y = kREG(20) + 100.0f;
    this->unk_178.z = kREG(21) + 400.0f;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_80977450.s")
void func_80977450(DemoExt* this) {
    if (this->unk_16C <= (kREG(35) + 40.0f) - 15.0f) {
        Audio_PlaySoundGeneral(NA_SE_EV_FANTOM_WARP_L - SFX_FLAG, &this->actor.projectedPos, 4, &D_801333E0,
                               &D_801333E0, &D_801333E8);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_809774D8.s")
CsCmdActorAction* func_809774D8(GlobalContext* globalCtx, s32 arg2) {
    if (globalCtx->csCtx.state != 0) {
        return globalCtx->csCtx.npcActions[arg2];
    }
    return NULL;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_809774FC.s")
void func_809774FC(DemoExt* this) {
    this->unk_14C = 0;
    this->unk_150 = 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_80977508.s")
void func_80977508(DemoExt* this, GlobalContext* globalCtx) {
    CsCmdActorAction* npcAction;

    npcAction = func_809774D8(globalCtx, 5);
    if (npcAction != NULL) {
        this->actor.posRot.pos.x = npcAction->startPos.x;
        this->actor.posRot.pos.y = npcAction->startPos.y;
        this->actor.posRot.pos.z = npcAction->startPos.z;
        this->actor.posRot.rot.y = this->actor.shape.rot.y = npcAction->rot.y;
    }
    this->unk_14C = 1;
    this->unk_150 = 1;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_80977590.s")
void func_80977590(DemoExt* this) {
    this->unk_14C = 2;
    this->unk_150 = 1;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_809775A4.s")
void func_809775A4(DemoExt* this) {
    this->unk_16C += 1.0f;
    if ((kREG(35) + 40.0f) <= this->unk_16C) {
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_80977610.s")
void func_80977610(DemoExt* this, GlobalContext* globalCtx) {
    // s32 sp20;
    CsCmdActorAction* temp_v0;
    s32 temp_a2;
    s32 new_var;

    temp_v0 = func_809774D8(globalCtx, 5);
    if (temp_v0 != NULL) {
        temp_a2 = temp_v0->action;

        new_var = this->unk_154;
        if (temp_a2 != new_var) {
            switch (temp_a2) {
                case 1:
                    func_809774FC(this);
                    break;
                case 2:
                    func_80977508(this, globalCtx);
                    break;
                case 3:
                    func_80977590(this);
                    break;
                default:
                    osSyncPrintf((const char*)"Demo_Ext_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
                    break;
            }
            this->unk_154 = temp_a2;
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_809776D0.s")
void func_809776D0(DemoExt* this) {
    s16* arrayA = this->unk_158;
    s16* arrayB = this->unk_160;
    s32 i;

    for (i = 3; i != 0; i--) {
        arrayB[i] += arrayA[i];
    }
    this->unk_168 += (s16)(kREG(34) + 1000);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_8097771C.s")
void func_8097771C(DemoExt* this) {
    Vec3f* temp_v0;
    f32 phi_f0;

    temp_v0 = &this->unk_178;
    phi_f0 = ((kREG(35) + 40.0f) - this->unk_16C) / (kREG(35) + 40.0f);
    if (phi_f0 < 0.0f) {
        phi_f0 = 0.0f;
    }

    this->unk_170 = (s32)((u32)(kREG(28) + 0xFF) * phi_f0);
    this->unk_174 = (s32)((u32)(kREG(32) + 0xFF) * phi_f0);
    temp_v0->x = (kREG(19) + 400.0f) * phi_f0;
    temp_v0->y = (kREG(20) + 100.0f) * phi_f0;
    temp_v0->z = (kREG(21) + 400.0f) * phi_f0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_80977854.s")
void func_80977854(DemoExt* this, GlobalContext* globalCtx) {
    func_80977610(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_80977874.s")
void func_80977874(DemoExt* this, GlobalContext* globalCtx) {
    func_80977450(this);
    func_809776D0(this);
    func_80977610(this, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_809778AC.s")
void func_809778AC(DemoExt* this, GlobalContext* globalCtx) {
    func_80977450(this);
    func_809776D0(this);
    func_8097771C(this);
    func_809775A4(this);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/DemoExt_Update.s")
void DemoExt_Update(Actor* thisx, GlobalContext* globalCtx) {
    DemoExt* this = THIS;

    if ((this->unk_14C < 0) || (this->unk_14C >= 3) || D_80977C70[this->unk_14C] == NULL) {
        osSyncPrintf((const char*)"\x1b[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n\x1b[m");
    } else {
        D_80977C70[this->unk_14C](this, globalCtx);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_80977944.s")
void func_80977944(Actor* thisx, GlobalContext* globalCtx) {
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/func_80977950.s")
void func_80977950(Actor* thisx, GlobalContext* globalCtx) {
    DemoExt* this = THIS;

    void* mtx;
    GraphicsContext* gfxCtx;
    s16* array;
    Vec3f* temp_v0;

    gfxCtx = globalCtx->state.gfxCtx;
    mtx = Graph_Alloc(gfxCtx, 0x40);
    temp_v0 = &this->unk_178;

    OPEN_DISPS(gfxCtx, "../z_demo_ext.c", 460);
    Matrix_Push();
    Matrix_Scale(temp_v0->x, temp_v0->y, temp_v0->z, MTXMODE_APPLY);
    Matrix_RotateRPY((s16)(kREG(16) + 0x4000), this->unk_168, kREG(18), MTXMODE_APPLY);
    Matrix_Translate(kREG(22), kREG(23), kREG(24), MTXMODE_APPLY);
    Matrix_ToMtx(mtx, "../z_demo_ext.c", 476);
    Matrix_Pull();
    func_80093D84(gfxCtx);

    gDPSetPrimColor(POLY_XLU_DISP++, 0, kREG(33) + 128, kREG(25) + 140, kREG(26) + 80, kREG(27) + 140, this->unk_170);
    gDPSetEnvColor(POLY_XLU_DISP++, kREG(29) + 90, kREG(30) + 50, kREG(31) + 95, this->unk_174);

    array = this->unk_160;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(gfxCtx, 0, array[0], array[1], 0x40, 0x40, 1, array[2], array[3], 0x40, 0x40));

    gSPMatrix(POLY_XLU_DISP++, mtx, G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_0600FAA0);
    gSPPopMatrix(POLY_XLU_DISP++, G_MTX_MODELVIEW);

    CLOSE_DISPS(gfxCtx, "../z_demo_ext.c", 512);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Demo_Ext/DemoExt_Draw.s")
void DemoExt_Draw(Actor* thisx, GlobalContext* globalCtx) {
    DemoExt* this = THIS;

    if ((this->unk_150 < 0) || (this->unk_150 >= 2) || D_80977C7C[this->unk_150] == NULL) {
        osSyncPrintf((const char*)"\x1b[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n\x1b[m");
    } else {
        D_80977C7C[this->unk_150](thisx, globalCtx);
    }
}
