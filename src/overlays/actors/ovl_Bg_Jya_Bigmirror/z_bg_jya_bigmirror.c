#include "z_bg_jya_bigmirror.h"

#define FLAGS 0x00000030

#define THIS ((BgJyaBigmirror*)thisx)

void BgJyaBigmirror_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBigmirror_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBigmirror_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaBigmirror_Draw(Actor* thisx, GlobalContext* globalCtx);

u8 D_80893ED0 = 0;

const ActorInit Bg_Jya_Bigmirror_InitVars = {
    ACTOR_BG_JYA_BIGMIRROR,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_JYA_OBJ,
    sizeof(BgJyaBigmirror),
    (ActorFunc)BgJyaBigmirror_Init,
    (ActorFunc)BgJyaBigmirror_Destroy,
    (ActorFunc)BgJyaBigmirror_Update,
    (ActorFunc)BgJyaBigmirror_Draw,
};

typedef struct {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ s16 params;
    /* 0x0E */ s16 solvedRotY;
    /* 0x10 */ s16 initRotY;
    
} BigMirrorDataEntry; // size = 0x14

BigMirrorDataEntry D_80893EF4[] = { { { -560, 1743, -310 }, 0xFF01, 0x4000, 0x8000 },
                                    { { 60, 1743, -310 }, 0xFF02, 0x8000, 0xA000 } };

u8 D_80893F1C[] = { 0x01, 0x02 };

s16 D_80893F20[] = { 0x0005, 0x0007, 0x0008 };

Vec3f D_80893F28[] = {
    { 60, 1802, -1102 },
    { -560, 1800, -310 },
    { 60, 1800, -310 },
};

Vec3s D_80893F4C = { 0, 0, 0 };

extern Gfx D_0600BC70[];
extern Gfx D_0600BD80[];
extern Gfx D_0600E1B0[];
extern Gfx D_0600E2D0[];

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bigmirror/func_808936E0.s")
void func_808936E0(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBigmirror* this = THIS;
    
    s8 roomNumber;

    this->unk_15C &= ~0x38;
    roomNumber = globalCtx->roomCtx.curRoom.num;
    if (roomNumber == 5) {
        this->unk_15C |= 8;
    } else if (roomNumber == 0x19) {
        this->unk_15C |= 0x10;
    } else if (roomNumber == 0x1A) {
        this->unk_15C |= 0x20;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bigmirror/func_80893750.s")
void func_80893750(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBigmirror* new_var = THIS;

    u8 temp_v0;
    BigMirrorDataEntry* temp_data;
    BigmirrorCobra* temp_c;
    s32 i;

    if ((new_var->unk_15C & 0x30) != 0) {

        for (i = 0; i < 2; i++) {
            temp_data = &D_80893EF4[i];
            temp_c = &new_var->cobraInfo[i];

            if (temp_c->cobra != NULL) {
                temp_c->rotY = temp_c->cobra->actor.shape.rot.y;

                if (temp_c->rotY == temp_data->solvedRotY) {
                    new_var->unk_15C |= D_80893F1C[i];
                } else {
                    new_var->unk_15C &= ~D_80893F1C[i];
                }

                if (temp_c->cobra->actor.update == 0) {
                    // Cobra deleted
                    osSyncPrintf("Error : コブラ削除された (%s %d)\n", "../z_bg_jya_bigmirror.c", 203);
                }
            } else {
                temp_c->cobra = (BgJyaCobra*)Actor_SpawnAsChild(&globalCtx->actorCtx, &new_var->actor, globalCtx,
                                                                ACTOR_BG_JYA_COBRA, temp_data->pos.x, temp_data->pos.y,
                                                                temp_data->pos.z, 0, temp_c->rotY, 0, temp_data->params);
                new_var->actor.child = NULL;

                if (&temp_c->cobra->actor == NULL) {
                    // Cobra generation failed
                    osSyncPrintf("Error : コブラ発生失敗 (%s %d)\n", "../z_bg_jya_bigmirror.c", 221);
                }
            }
        }
    } else {

        for (i = 0; i < 2; i++) {
            temp_c = &new_var->cobraInfo[i];
            if (temp_c->cobra != NULL) {
                if (temp_c->cobra->actor.child != NULL) {
                    Actor_Kill(temp_c->cobra->actor.child);
                    temp_c->cobra->actor.child = NULL;
                }
                Actor_Kill(&temp_c->cobra->actor);
                temp_c->cobra = NULL;
            }
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bigmirror/func_8089394C.s")
void func_8089394C(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBigmirror* this = THIS;
    
    if (Flags_GetSwitch(globalCtx, 0x29) != 0) {
        this->unk_15C |= 4;
    } else {
        this->unk_15C &= ~4;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bigmirror/func_8089399C.s")
void func_8089399C(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBigmirror* this = THIS;

    s32 temp_v0_4;
    s32 sp74[3];
    s32 i;
    s32 temp_v0;
    s32 phi_v0;

    temp_v0 = Object_GetIndex(&globalCtx->objectCtx, OBJECT_MIR_RAY);

    if ((temp_v0 < 0) || (temp_v0 != this->unk_16C)) {
        this->lightBeams[2] = NULL;
        this->lightBeams[1] = NULL;
        this->lightBeams[0] = NULL;
    } else {
        phi_v0 = (this->unk_15C & 0x18) != 0;

        if (phi_v0 != 0) {
            phi_v0 = (this->unk_15C & 2) != 0;

            if (phi_v0 != 0) {
                phi_v0 = (this->unk_15C & 1) != 0;
            }
        }
        sp74[0] = phi_v0;
        if (1) {}
        temp_v0_4 = this->unk_15C & 0x30;
        sp74[2] = temp_v0_4;
        sp74[1] = temp_v0_4;

        for (i = 0; i < 3; i++) {
            if (sp74[i] != 0) {
                if ((this->lightBeams[i] == NULL) && Object_IsLoaded(&globalCtx->objectCtx, temp_v0)) {
                    this->lightBeams[i] = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_MIR_RAY, D_80893F28[i].x, D_80893F28[i].y,
                                            D_80893F28[i].z, 0, 0, 0, D_80893F20[i]);

                    if (this->lightBeams[i] == NULL) {
                        osSyncPrintf("Error : Mir Ray 発生失敗 (%s %d)\n", "../z_bg_jya_bigmirror.c", 310);
                    }
                }
            } else {
                if (this->lightBeams[i] != NULL) {
                    Actor_Kill(this->lightBeams[i]);
                    this->lightBeams[i] = NULL;
                }
            }
        }
    }
    this->unk_16C = temp_v0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bigmirror/BgJyaBigmirror_Init.s")
void BgJyaBigmirror_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBigmirror* this = THIS;

    if (D_80893ED0 != 0) {
        Actor_Kill(&this->actor);
        return;
    }

    Actor_SetScale(&this->actor, 0.1f);
    this->cobraInfo[0].rotY = D_80893EF4[0].initRotY;
    this->cobraInfo[1].rotY = D_80893EF4[1].initRotY;
    this->actor.room = -1;
    D_80893ED0 = 1;
    this->unk_15D = 1;
    this->unk_16C = -1;

    // jya Bigmirror
    osSyncPrintf("(jya 大鏡)(arg_data 0x%04x)\n", this->actor.params, this);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bigmirror/BgJyaBigmirror_Destroy.s")
void BgJyaBigmirror_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBigmirror* this = THIS;

    if (this->unk_15D != 0) {
        D_80893ED0 = 0;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bigmirror/BgJyaBigmirror_Update.s")
void BgJyaBigmirror_Update(Actor* thisx, GlobalContext* globalCtx) {
    func_808936E0(thisx, globalCtx);
    func_80893750(thisx, globalCtx);
    func_8089394C(thisx, globalCtx);
    func_8089399C(thisx, globalCtx);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bigmirror/func_80893C68.s")
void func_80893C68(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBigmirror* this = THIS;

    Actor* lift;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_jya_bigmirror.c", 435);
    func_80093D84(globalCtx->state.gfxCtx);
    lift = Actor_Find(&globalCtx->actorCtx, ACTOR_BG_JYA_LIFT, 1);
    if (lift != NULL) {
        this->unk_170 = lift->posRot.pos.y;
    }
    func_800D1694(this->actor.posRot.pos.x, this->actor.posRot.pos.y + 40.0f, this->actor.posRot.pos.z,
                  &this->actor.shape.rot);
    Matrix_Scale(0.1f, (this->unk_170 * -0.00078125f) + 1.3901563f, 0.1f, 1);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_jya_bigmirror.c", 457),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_0600BC70);

    if (lift != NULL) {
        if (1) {}
        func_800D1694(lift->posRot.pos.x, lift->posRot.pos.y, lift->posRot.pos.z, &D_80893F4C);
        Matrix_Scale(0.1f, 0.1f, 0.1f, 1);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_jya_bigmirror.c", 467),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_0600BD80);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_jya_bigmirror.c", 476);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Bigmirror/BgJyaBigmirror_Draw.s")
void BgJyaBigmirror_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaBigmirror* this = THIS;
    
    if ((this->unk_15C & 0x10) != 0) {
        Gfx_DrawDListOpa(globalCtx, D_0600E1B0);
        Gfx_DrawDListXlu(globalCtx, D_0600E2D0);
    }

    if (((this->unk_15C & 0x38) != 0) && ((this->unk_15C & 2) != 0) && ((this->unk_15C & 1) != 0)) {
        func_80893C68(&this->actor, globalCtx);
    }
}
