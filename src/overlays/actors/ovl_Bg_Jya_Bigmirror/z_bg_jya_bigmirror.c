#include "z_bg_jya_bigmirror.h"
#include "overlays/actors/ovl_Bg_Jya_Cobra/z_bg_jya_cobra.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "printf.h"
#include "sys_matrix.h"
#include "translation.h"
#include "play_state.h"

#include "assets/objects/object_jya_obj/object_jya_obj.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void BgJyaBigmirror_Init(Actor* thisx, PlayState* play);
void BgJyaBigmirror_Destroy(Actor* thisx, PlayState* play);
void BgJyaBigmirror_Update(Actor* thisx, PlayState* play);
void BgJyaBigmirror_Draw(Actor* thisx, PlayState* play);

void func_808936E0(BgJyaBigmirror* this, PlayState* play);
void func_80893750(BgJyaBigmirror* this2, PlayState* play);
void func_8089394C(BgJyaBigmirror* this, PlayState* play);
void func_8089399C(BgJyaBigmirror* this2, PlayState* play);
void func_80893C68(BgJyaBigmirror* this, PlayState* play);

static u8 D_80893ED0 = 0;

ActorProfile Bg_Jya_Bigmirror_Profile = {
    /**/ ACTOR_BG_JYA_BIGMIRROR,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_JYA_OBJ,
    /**/ sizeof(BgJyaBigmirror),
    /**/ BgJyaBigmirror_Init,
    /**/ BgJyaBigmirror_Destroy,
    /**/ BgJyaBigmirror_Update,
    /**/ BgJyaBigmirror_Draw,
};

typedef struct struct_80893EF4 {
    /* 0x00 */ Vec3f unk0;
    /* 0x0C */ s16 unkC;
    /* 0x0E */ s16 unkE;
    /* 0x10 */ s16 unk10;
    /* 0x12 */ char pad12[2];
} struct_80893EF4;
static struct_80893EF4 D_80893EF4[2] = {
    { { -560.0f, 1743.0f, -310.0f }, -0xFF, 0x4000, 0x8000 },
    { { 60.0f, 1743.0f, -310.0f }, -0xFE, 0x8000, 0xA000 },
};
static u8 D_80893F1C[4] = { 1, 2, 0, 0 };
static s16 D_80893F20[4] = { 5, 7, 8, 0 };
static Vec3f D_80893F28[3] = {
    { 60.0f, 1802.0f, -1102.0f },
    { -560.0f, 1800.0f, -310.0f },
    { 60.0f, 1800.0f, -310.0f },
};
static Vec3s D_80893F4C = { 0, 0, 0 };

void func_808936E0(BgJyaBigmirror* this, PlayState* play) {
    this->unk15C &= ~0x38;
    if (play->roomCtx.curRoom.num == 5) {
        this->unk15C |= 8;
    } else if (play->roomCtx.curRoom.num == 0x19) {
        this->unk15C |= 0x10;
    } else if (play->roomCtx.curRoom.num == 0x1A) {
        this->unk15C |= 0x20;
    }
}

void func_80893750(BgJyaBigmirror* this2, PlayState* play) {
    s32 i;
    BgJyaBigmirror_sub14C* new_var;
    struct_80893EF4* new_var2;
    BgJyaBigmirror* this = this2;

    if (this->unk15C & 0x30) {
        for (i = 0; i < 2; i++) {
            new_var2 = &D_80893EF4[i];
            new_var = &this->unk14C[i];
            if (new_var->unk0 != NULL) {
                new_var->unk4 = new_var->unk0->shape.rot.y;
                if (new_var->unk4 == new_var2->unkE) {
                    this->unk15C |= D_80893F1C[i];
                } else {
                    this->unk15C &= ~D_80893F1C[i];
                }
#if DEBUG_FEATURES
                if (new_var->unk0->update == NULL) {
                    PRINTF("Error : コブラ削除された (%s %d)\n", "../z_bg_jya_bigmirror.c", 203);
                }
#endif
            } else {
                new_var->unk0 =
                    Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_BG_JYA_COBRA, new_var2->unk0.x,
                                       new_var2->unk0.y, new_var2->unk0.z, 0, new_var->unk4, 0, new_var2->unkC);
                this->actor.child = NULL;
                if (new_var->unk0 == NULL) {
                    PRINTF("Error : コブラ発生失敗 (%s %d)\n", "../z_bg_jya_bigmirror.c", 221);
                }
            }
        }
    } else {
        for (i = 0; i < 2; i++) {
            new_var = &this->unk14C[i];
            if (new_var->unk0 != NULL) {
                if (new_var->unk0->child != NULL) {
                    Actor_Kill(new_var->unk0->child);
                    new_var->unk0->child = NULL;
                }
                Actor_Kill(new_var->unk0);
                new_var->unk0 = NULL;
            }
        }
    }
}

void func_8089394C(BgJyaBigmirror* this, PlayState* play) {
    if (Flags_GetSwitch(play, 0x29)) {
        this->unk15C |= 4;
    } else {
        this->unk15C &= ~4;
    }
}

void func_8089399C(BgJyaBigmirror* this2, PlayState* play) {
    s32 var_s1;
    s32 var_v0;
    s32 sp74[3];
    BgJyaBigmirror* this = this2;
    s32 mirRayObjectSlot;

    mirRayObjectSlot = Object_GetSlot(&play->objectCtx, OBJECT_MIR_RAY);
    if ((mirRayObjectSlot < 0) || ((mirRayObjectSlot != this->mirRayObjectSlot))) {
        this->unk160[2] = NULL;
        this->unk160[1] = NULL;
        this->unk160[0] = NULL;
    } else {
        var_v0 = (this->unk15C & 0x18) != 0;
        if (var_v0 != 0) {
            var_v0 = (this->unk15C & 2) != 0;
            if (var_v0 != 0) {
                var_v0 = (this->unk15C & 1) != 0;
            }
        }
        sp74[0] = var_v0;
        sp74[1] = sp74[2] = var_v0 = this->unk15C & 0x30;

        for (var_s1 = 0; var_s1 < 3; var_s1++) {
            if (sp74[var_s1] != 0) {
                if ((this->unk160[var_s1] == NULL) && (Object_IsLoaded(&play->objectCtx, mirRayObjectSlot) != 0)) {
                    this->unk160[var_s1] =
                        Actor_Spawn(&play->actorCtx, play, 0xB7, D_80893F28[var_s1].x, D_80893F28[var_s1].y,
                                    D_80893F28[var_s1].z, 0, 0, 0, D_80893F20[var_s1]);
#if DEBUG_FEATURES
                    if (this->unk160[var_s1] == NULL) {
                        PRINTF("Error : Mir Ray 発生失敗 (%s %d)\n", "../z_bg_jya_bigmirror.c", 310);
                    }
#endif
                }
            } else {
                if (this->unk160[var_s1] != NULL) {
                    Actor_Kill(this->unk160[var_s1]);
                    this->unk160[var_s1] = NULL;
                }
            }
        }
    }
    this->mirRayObjectSlot = mirRayObjectSlot;
}

void BgJyaBigmirror_Init(Actor* thisx, PlayState* play) {
    BgJyaBigmirror* this = (BgJyaBigmirror*)thisx;

    if (D_80893ED0 != 0) {
        Actor_Kill(&this->actor);
        return;
    }
    Actor_SetScale(&this->actor, 0.1f);
    this->unk14C[0].unk4 = D_80893EF4[0].unk10;
    this->unk14C[1].unk4 = D_80893EF4[1].unk10;
    this->actor.room = -1;
    D_80893ED0 = 1;
    this->unk15D = 1;
    this->mirRayObjectSlot = -1;
    PRINTF("(jya 大鏡)(arg_data 0x%04x)\n", this->actor.params);
}

void BgJyaBigmirror_Destroy(Actor* thisx, PlayState* play) {
    BgJyaBigmirror* this = (BgJyaBigmirror*)thisx;

    if (this->unk15D != 0) {
        D_80893ED0 = 0;
    }
}

void BgJyaBigmirror_Update(Actor* thisx, PlayState* play) {
    BgJyaBigmirror* this = (BgJyaBigmirror*)thisx;

    func_808936E0(this, play);
    func_80893750(this, play);
    func_8089394C(this, play);
    func_8089399C(this, play);
}

void func_80893C68(BgJyaBigmirror* this, PlayState* play) {
    s32 pad;
    Actor* temp_v0;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_jya_bigmirror.c", 435);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    temp_v0 = Actor_Find(&play->actorCtx, ACTOR_BG_JYA_LIFT, ACTORCAT_BG);
    if (temp_v0 != NULL) {
        this->unk170 = temp_v0->world.pos.y;
    }
    Matrix_SetTranslateRotateYXZ(this->actor.world.pos.x, this->actor.world.pos.y + 40.0f, this->actor.world.pos.z,
                                 &this->actor.shape.rot);
    Matrix_Scale(0.1f, (this->unk170 * -0.00078125f) + 1.3901563f, 0.1f, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_jya_bigmirror.c", 457);
    gSPDisplayList(POLY_XLU_DISP++, gBigMirror1DL);
    if (temp_v0 != NULL) {
        Matrix_SetTranslateRotateYXZ(temp_v0->world.pos.x, temp_v0->world.pos.y, temp_v0->world.pos.z, &D_80893F4C);
        Matrix_Scale(0.1f, 0.1f, 0.1f, MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_bg_jya_bigmirror.c", 467);
        gSPDisplayList(POLY_XLU_DISP++, gBigMirror2DL);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_jya_bigmirror.c", 476);
}

void BgJyaBigmirror_Draw(Actor* thisx, PlayState* play) {
    BgJyaBigmirror* this = (BgJyaBigmirror*)thisx;

    if (this->unk15C & 0x10) {
        Gfx_DrawDListOpa(play, gBigMirror3DL);
        Gfx_DrawDListXlu(play, gBigMirror4DL);
    }
    if ((this->unk15C & 0x38) && (this->unk15C & 2) && (this->unk15C & 1)) {
        func_80893C68(this, play);
    }
}
