/*
 * File: z_bg_bdan_switch.c
 * Overlay: ovl_Bg_Bdan_Switch
 * Description: Switches Inside Lord Jabu-Jabu
 */

#include "z_bg_bdan_switch.h"
#include "assets/objects/object_bdan_objects/object_bdan_objects.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void BgBdanSwitch_Init(Actor* thisx, PlayState* play);
void BgBdanSwitch_Destroy(Actor* thisx, PlayState* play);
void BgBdanSwitch_Update(Actor* thisx, PlayState* play);
void BgBdanSwitch_Draw(Actor* thisx, PlayState* play);

void func_8086D5C4(BgBdanSwitch* this);
void func_8086D5E0(BgBdanSwitch* this, PlayState* play);
void func_8086D67C(BgBdanSwitch* this);
void func_8086D694(BgBdanSwitch* this, PlayState* play);
void func_8086D730(BgBdanSwitch* this);
void func_8086D754(BgBdanSwitch* this, PlayState* play);
void func_8086D7FC(BgBdanSwitch* this);
void func_8086D80C(BgBdanSwitch* this, PlayState* play);
void func_8086D86C(BgBdanSwitch* this);
void func_8086D888(BgBdanSwitch* this, PlayState* play);
void func_8086D8BC(BgBdanSwitch* this);
void func_8086D8CC(BgBdanSwitch* this, PlayState* play);
void func_8086D95C(BgBdanSwitch* this, PlayState* play);
void func_8086D9F8(BgBdanSwitch* this);
void func_8086DA1C(BgBdanSwitch* this, PlayState* play);
void func_8086DAB4(BgBdanSwitch* this);
void func_8086DAC4(BgBdanSwitch* this, PlayState* play);
void func_8086DB24(BgBdanSwitch* this);
void func_8086DB40(BgBdanSwitch* this, PlayState* play);
void func_8086DB4C(BgBdanSwitch* this);
void func_8086DB68(BgBdanSwitch* this, PlayState* play);
void func_8086DC30(BgBdanSwitch* this);
void func_8086DC48(BgBdanSwitch* this, PlayState* play);
void func_8086DCCC(BgBdanSwitch* this);
void func_8086DCE8(BgBdanSwitch* this, PlayState* play);
void func_8086DDA8(BgBdanSwitch* this);
void func_8086DDC0(BgBdanSwitch* this, PlayState* play);

ActorProfile Bg_Bdan_Switch_Profile = {
    /**/ ACTOR_BG_BDAN_SWITCH,
    /**/ ACTORCAT_SWITCH,
    /**/ FLAGS,
    /**/ OBJECT_BDAN_OBJECTS,
    /**/ sizeof(BgBdanSwitch),
    /**/ BgBdanSwitch_Init,
    /**/ BgBdanSwitch_Destroy,
    /**/ BgBdanSwitch_Update,
    /**/ BgBdanSwitch_Draw,
};

static ColliderJntSphElementInit sJntSphElementsInit[] = {
    {
        {
            ELEM_MATERIAL_UNK0,
            { 0x00000000, 0x00, 0x00 },
            { 0xEFC1FFFE, 0x00, 0x00 },
            ATELEM_NONE,
            ACELEM_ON,
            OCELEM_ON,
        },
        { 0, { { 0, 120, 0 }, 370 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_JNTSPH,
    },
    1,
    sJntSphElementsInit,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(cullingVolumeDistance, 1400, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1200, ICHAIN_STOP),
};

static Vec3f D_8086E0E0 = { 0.0f, 140.0f, 0.0f };

void BgBdanSwitch_InitDynaPoly(BgBdanSwitch* this, PlayState* play, CollisionHeader* collision, s32 flag) {
    s32 pad;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, flag);
    CollisionHeader_GetVirtual(collision, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

#if DEBUG_FEATURES
    if (this->dyna.bgId == BG_ACTOR_MAX) {
        s32 pad2;

        PRINTF("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_bdan_switch.c", 325,
               this->dyna.actor.id, this->dyna.actor.params);
    }
#endif
}

void BgBdanSwitch_InitCollision(BgBdanSwitch* this, PlayState* play) {
    Actor* actor = &this->dyna.actor;
    Collider_InitJntSph(play, &this->collider);
    Collider_SetJntSph(play, &this->collider, actor, &sJntSphInit, this->colliderItems);
}

void func_8086D0EC(BgBdanSwitch* this) {
    if (this->unk_1CC > 0) {
        this->unk_1CC += 0x5DC;
    } else {
        this->unk_1CC += 0xFA0;
    }

    switch (PARAMS_GET_U(this->dyna.actor.params, 0, 8)) {
        case BLUE:
        case YELLOW_HEAVY:
        case YELLOW:
            this->unk_1D4 = ((Math_CosS(this->unk_1CC) * 0.5f) + (53.000004f / 6.0f)) * 0.012f;
            this->unk_1D0 = ((Math_CosS(this->unk_1CC) * 0.5f) + 20.5f) * (this->unk_1C8 * 0.0050000004f);
            this->dyna.actor.scale.y = this->unk_1C8 * 0.1f;
            break;
        case YELLOW_TALL_1:
        case YELLOW_TALL_2:
            this->unk_1D4 = ((Math_CosS(this->unk_1CC) * 0.5f) + (43.0f / 6.0f)) * 0.0075000003f;
            this->unk_1D0 = ((Math_CosS(this->unk_1CC) * 0.5f) + 20.5f) * (this->unk_1C8 * 0.0050000004f);
            this->dyna.actor.scale.y = this->unk_1C8 * 0.1f;
    }
    this->dyna.actor.shape.yOffset = 1.2f / this->unk_1D0;
}

void BgBdanSwitch_Init(Actor* thisx, PlayState* play) {
    BgBdanSwitch* this = (BgBdanSwitch*)thisx;
    s32 pad;
    s16 type;
    s32 flag;

    type = PARAMS_GET_U(this->dyna.actor.params, 0, 8);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    if (type == YELLOW_TALL_1 || type == YELLOW_TALL_2) {
        this->dyna.actor.scale.z = 0.05f;
        this->dyna.actor.scale.x = 0.05f;
    } else {
        this->dyna.actor.scale.z = 0.1f;
        this->dyna.actor.scale.x = 0.1f;
    }
    this->dyna.actor.scale.y = 0.0f;
    Actor_SetFocus(&this->dyna.actor, 10.0f);

    switch (type) {
        case BLUE:
        case YELLOW_HEAVY:
        case YELLOW:
            BgBdanSwitch_InitDynaPoly(this, play, &gJabuFloorSwitchCol, DYNA_TRANSFORM_POS);
            break;
        case YELLOW_TALL_1:
        case YELLOW_TALL_2:
            BgBdanSwitch_InitCollision(this, play);
            this->dyna.actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED;
            this->dyna.actor.attentionRangeType = ATTENTION_RANGE_4;
            break;
    }

    flag = Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6));

    switch (type) {
        case BLUE:
        case YELLOW:
            if (flag) {
                func_8086D730(this);
            } else {
                func_8086D5C4(this);
            }
            break;
        case YELLOW_HEAVY:
            if (flag) {
                func_8086DB24(this);
            } else {
                func_8086D86C(this);
            }
            break;
        case YELLOW_TALL_1:
        case YELLOW_TALL_2:
            if (flag) {
                func_8086DCCC(this);
            } else {
                func_8086DB4C(this);
            }
            break;
        default:
            PRINTF("不正な ARG_DATA(arg_data 0x%04x)(%s %d)\n", this->dyna.actor.params, "../z_bg_bdan_switch.c", 454);
            Actor_Kill(&this->dyna.actor);
            return;
    }
    PRINTF("(巨大魚ダンジョン 専用スイッチ)(arg_data 0x%04x)\n", this->dyna.actor.params);
}

void BgBdanSwitch_Destroy(Actor* thisx, PlayState* play) {
    BgBdanSwitch* this = (BgBdanSwitch*)thisx;

    switch (PARAMS_GET_U(this->dyna.actor.params, 0, 8)) {
        case BLUE:
        case YELLOW_HEAVY:
        case YELLOW:
            DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
            break;
        case YELLOW_TALL_1:
        case YELLOW_TALL_2:
            Collider_DestroyJntSph(play, &this->collider);
            break;
    }
}

void func_8086D4B4(BgBdanSwitch* this, PlayState* play) {
    s32 pad;
    s32 type;

    if (!Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6))) {
        type = PARAMS_GET_U(this->dyna.actor.params, 0, 8);
        Flags_SetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6));
        if (type == BLUE || type == YELLOW_TALL_2) {
            OnePointCutscene_AttentionSetSfx(play, &this->dyna.actor, NA_SE_SY_TRE_BOX_APPEAR);
        } else {
            OnePointCutscene_AttentionSetSfx(play, &this->dyna.actor, NA_SE_SY_CORRECT_CHIME);
        }
    }
}

void func_8086D548(BgBdanSwitch* this, PlayState* play) {
    if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6))) {
        Flags_UnsetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6));
        if (PARAMS_GET_U(this->dyna.actor.params, 0, 8) == YELLOW_TALL_2) {
            OnePointCutscene_AttentionSetSfx(play, &this->dyna.actor, NA_SE_SY_TRE_BOX_APPEAR);
        }
    }
}

void func_8086D5C4(BgBdanSwitch* this) {
    this->actionFunc = func_8086D5E0;
    this->unk_1C8 = 1.0f;
}

void func_8086D5E0(BgBdanSwitch* this, PlayState* play) {
    switch (PARAMS_GET_U(this->dyna.actor.params, 0, 8)) {
        case BLUE:
            if (DynaPolyActor_IsSwitchPressed(&this->dyna)) {
                func_8086D67C(this);
                func_8086D4B4(this, play);
            }
            break;
        case YELLOW:
            if (DynaPolyActor_IsPlayerOnTop(&this->dyna)) {
                func_8086D67C(this);
                func_8086D4B4(this, play);
            }
            break;
    }
}

void func_8086D67C(BgBdanSwitch* this) {
    this->actionFunc = func_8086D694;
    this->unk_1DA = 0x64;
}

void func_8086D694(BgBdanSwitch* this, PlayState* play) {
    if ((func_8005B198() == this->dyna.actor.category) || (this->unk_1DA <= 0)) {
        this->unk_1C8 -= 0.2f;
        if (this->unk_1C8 <= 0.1f) {
            func_8086D730(this);
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_FOOT_SWITCH);
            Rumble_Request(this->dyna.actor.xyzDistToPlayerSq, 120, 20, 10);
        }
    }
}

void func_8086D730(BgBdanSwitch* this) {
    this->unk_1C8 = 0.1f;
    this->actionFunc = func_8086D754;
    this->unk_1D8 = 6;
}

void func_8086D754(BgBdanSwitch* this, PlayState* play) {
    switch (PARAMS_GET_U(this->dyna.actor.params, 0, 8)) {
        case BLUE:
            if (!DynaPolyActor_IsSwitchPressed(&this->dyna)) {
                if (this->unk_1D8 <= 0) {
                    func_8086D7FC(this);
                    func_8086D548(this, play);
                }
            } else {
                this->unk_1D8 = 6;
            }
            break;
        case YELLOW:
            if (!Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6))) {
                func_8086D7FC(this);
            }
            break;
    }
}

void func_8086D7FC(BgBdanSwitch* this) {
    this->actionFunc = func_8086D80C;
}

void func_8086D80C(BgBdanSwitch* this, PlayState* play) {
    this->unk_1C8 += 0.2f;
    if (this->unk_1C8 >= 1.0f) {
        func_8086D5C4(this);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_FOOT_SWITCH);
    }
}

void func_8086D86C(BgBdanSwitch* this) {
    this->actionFunc = func_8086D888;
    this->unk_1C8 = 1.0f;
}

void func_8086D888(BgBdanSwitch* this, PlayState* play) {
    if (DynaPolyActor_IsPlayerOnTop(&this->dyna)) {
        func_8086D8BC(this);
    }
}

void func_8086D8BC(BgBdanSwitch* this) {
    this->actionFunc = func_8086D8CC;
}

void func_8086D8CC(BgBdanSwitch* this, PlayState* play) {
    this->unk_1C8 -= 0.2f;
    if (this->unk_1C8 <= 0.6f) {
        func_8086D9F8(this);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_FOOT_SWITCH);
        Rumble_Request(this->dyna.actor.xyzDistToPlayerSq, 120, 20, 10);
    }
}

void func_8086D944(BgBdanSwitch* this) {
    this->actionFunc = func_8086D95C;
    this->unk_1DA = 0x64;
}

void func_8086D95C(BgBdanSwitch* this, PlayState* play) {
    if ((func_8005B198() == this->dyna.actor.category) || (this->unk_1DA <= 0)) {
        this->unk_1C8 -= 0.2f;
        if (this->unk_1C8 <= 0.1f) {
            func_8086DB24(this);
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_FOOT_SWITCH);
            Rumble_Request(this->dyna.actor.xyzDistToPlayerSq, 120, 20, 10);
        }
    }
}

void func_8086D9F8(BgBdanSwitch* this) {
    this->unk_1C8 = 0.6f;
    this->actionFunc = func_8086DA1C;
    this->unk_1D8 = 6;
}

void func_8086DA1C(BgBdanSwitch* this, PlayState* play) {
    Actor* heldActor = GET_PLAYER(play)->heldActor;

    if (DynaPolyActor_IsPlayerOnTop(&this->dyna)) {
        if (heldActor != NULL && heldActor->id == ACTOR_EN_RU1) {
            if (this->unk_1D8 <= 0) {
                func_8086D944(this);
                func_8086D4B4(this, play);
            }
        } else {
            this->unk_1D8 = 6;
        }
    } else {
        if (this->unk_1D8 <= 0) {
            func_8086DAB4(this);
        }
    }
}

void func_8086DAB4(BgBdanSwitch* this) {
    this->actionFunc = func_8086DAC4;
}

void func_8086DAC4(BgBdanSwitch* this, PlayState* play) {
    this->unk_1C8 += 0.2f;
    if (this->unk_1C8 >= 1.0f) {
        func_8086D86C(this);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_FOOT_SWITCH);
    }
}

void func_8086DB24(BgBdanSwitch* this) {
    this->unk_1C8 = 0.1f;
    this->actionFunc = func_8086DB40;
}

void func_8086DB40(BgBdanSwitch* this, PlayState* play) {
}

void func_8086DB4C(BgBdanSwitch* this) {
    this->actionFunc = func_8086DB68;
    this->unk_1C8 = 2.0f;
}

void func_8086DB68(BgBdanSwitch* this, PlayState* play) {
    switch (PARAMS_GET_U(this->dyna.actor.params, 0, 8)) {
        default:
            return;
        case YELLOW_TALL_1:
            if ((this->collider.base.acFlags & AC_HIT) && this->unk_1D8 <= 0) {
                this->unk_1D8 = 0xA;
                func_8086DC30(this);
                func_8086D4B4(this, play);
            }
            break;
        case YELLOW_TALL_2:
            if ((this->collider.base.acFlags & AC_HIT) && !(this->unk_1DC & AC_HIT) && this->unk_1D8 <= 0) {
                this->unk_1D8 = 0xA;
                func_8086DC30(this);
                func_8086D4B4(this, play);
            }
            break;
    }
}

void func_8086DC30(BgBdanSwitch* this) {
    this->actionFunc = func_8086DC48;
    this->unk_1DA = 0x64;
}

void func_8086DC48(BgBdanSwitch* this, PlayState* play) {
    if ((func_8005B198() == this->dyna.actor.category) || (this->unk_1DA <= 0)) {
        this->unk_1C8 -= 0.3f;
        if (this->unk_1C8 <= 1.0f) {
            func_8086DCCC(this);
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_FOOT_SWITCH);
        }
    }
}

void func_8086DCCC(BgBdanSwitch* this) {
    this->actionFunc = func_8086DCE8;
    this->unk_1C8 = 1.0f;
}

void func_8086DCE8(BgBdanSwitch* this, PlayState* play) {
    switch (PARAMS_GET_U(this->dyna.actor.params, 0, 8)) {
        case YELLOW_TALL_1:
            if (!Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6))) {
                func_8086DDA8(this);
            }
            break;
        case YELLOW_TALL_2:
            if ((this->collider.base.acFlags & AC_HIT) && !(this->unk_1DC & AC_HIT) && (this->unk_1D8 <= 0)) {
                this->unk_1D8 = 0xA;
                func_8086DDA8(this);
                func_8086D548(this, play);
            }
            break;
    }
}

void func_8086DDA8(BgBdanSwitch* this) {
    this->actionFunc = func_8086DDC0;
    this->unk_1DA = 0x64;
}

void func_8086DDC0(BgBdanSwitch* this, PlayState* play) {
    if (((PARAMS_GET_U(this->dyna.actor.params, 0, 8) != YELLOW_TALL_2) ||
         (func_8005B198() == this->dyna.actor.category)) ||
        (this->unk_1DA <= 0)) {
        this->unk_1C8 += 0.3f;
        if (this->unk_1C8 >= 2.0f) {
            func_8086DB4C(this);
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_FOOT_SWITCH);
        }
    }
}

void BgBdanSwitch_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    BgBdanSwitch* this = (BgBdanSwitch*)thisx;
    s32 type;

    if (this->unk_1DA > 0) {
        this->unk_1DA--;
    }
    this->actionFunc(this, play);
    func_8086D0EC(this);
    type = PARAMS_GET_U(this->dyna.actor.params, 0, 8);
    if (type != 3 && type != 4) {
        this->unk_1D8--;
    } else {
        if (!Player_InCsMode(play) && this->unk_1D8 > 0) {
            this->unk_1D8--;
        }
        this->unk_1DC = this->collider.base.acFlags;
        this->collider.base.acFlags &= ~AC_HIT;
        this->collider.elements[0].dim.modelSphere.radius = this->unk_1D4 * 370.0f;
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    }
}

void func_8086DF58(BgBdanSwitch* this, PlayState* play, Gfx* dlist) {
    Matrix_SetTranslateRotateYXZ(this->dyna.actor.world.pos.x,
                                 this->dyna.actor.world.pos.y + (this->dyna.actor.shape.yOffset * this->unk_1D0),
                                 this->dyna.actor.world.pos.z, &this->dyna.actor.shape.rot);
    Matrix_Scale(this->unk_1D4, this->unk_1D0, this->unk_1D4, MTXMODE_APPLY);
    Gfx_DrawDListOpa(play, dlist);
}

void BgBdanSwitch_Draw(Actor* thisx, PlayState* play) {
    BgBdanSwitch* this = (BgBdanSwitch*)thisx;

    switch (PARAMS_GET_U(this->dyna.actor.params, 0, 8)) {
        case YELLOW_HEAVY:
        case YELLOW:
            func_8086DF58(this, play, gJabuYellowFloorSwitchDL);
            break;
        case YELLOW_TALL_1:
        case YELLOW_TALL_2:
            func_8086DF58(this, play, gJabuYellowFloorSwitchDL);
            Collider_UpdateSpheres(0, &this->collider);
            Matrix_MultVec3f(&D_8086E0E0, &this->dyna.actor.focus.pos);
            break;
        case BLUE:
            func_8086DF58(this, play, gJabuBlueFloorSwitchDL);
            break;
    }
}
