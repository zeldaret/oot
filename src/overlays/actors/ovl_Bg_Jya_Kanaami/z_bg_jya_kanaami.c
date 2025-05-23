/*
 * File: z_bg_jya_kanaami.c
 * Overlay: ovl_Bg_Jya_Kanaami
 * Description: Climbable grating/bridge (Spirit Temple)
 */

#include "z_bg_jya_kanaami.h"
#include "assets/objects/object_jya_obj/object_jya_obj.h"
#include "quake.h"

#define FLAGS 0

void BgJyaKanaami_Init(Actor* thisx, PlayState* play);
void BgJyaKanaami_Destroy(Actor* thisx, PlayState* play);
void BgJyaKanaami_Update(Actor* thisx, PlayState* play);
void BgJyaKanaami_Draw(Actor* thisx, PlayState* play);

void func_80899880(BgJyaKanaami* this);
void func_80899894(BgJyaKanaami* this, PlayState* play);
void func_8089993C(BgJyaKanaami* this);
void func_80899950(BgJyaKanaami* this, PlayState* play);
void func_80899A08(BgJyaKanaami* this);

ActorProfile Bg_Jya_Kanaami_Profile = {
    /**/ ACTOR_BG_JYA_KANAAMI,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_JYA_OBJ,
    /**/ sizeof(BgJyaKanaami),
    /**/ BgJyaKanaami_Init,
    /**/ BgJyaKanaami_Destroy,
    /**/ BgJyaKanaami_Update,
    /**/ BgJyaKanaami_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 700, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1000, ICHAIN_STOP),
};

void BgJyaKanaami_InitDynaPoly(BgJyaKanaami* this, PlayState* play, CollisionHeader* collision, s32 flag) {
    s32 pad;
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, flag);
    CollisionHeader_GetVirtual(collision, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

#if DEBUG_FEATURES
    if (this->dyna.bgId == BG_ACTOR_MAX) {
        s32 pad2;

        PRINTF("Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n", "../z_bg_jya_kanaami.c", 145,
               this->dyna.actor.id, this->dyna.actor.params);
    }
#endif
}

void BgJyaKanaami_Init(Actor* thisx, PlayState* play) {
    BgJyaKanaami* this = (BgJyaKanaami*)thisx;

    BgJyaKanaami_InitDynaPoly(this, play, &gKanaamiCol, 0);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6))) {
        func_80899A08(this);
    } else {
        func_80899880(this);
    }
    PRINTF("(jya 金網)(arg_data 0x%04x)\n", this->dyna.actor.params);
}

void BgJyaKanaami_Destroy(Actor* thisx, PlayState* play) {
    BgJyaKanaami* this = (BgJyaKanaami*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void func_80899880(BgJyaKanaami* this) {
    this->actionFunc = func_80899894;
    this->unk_16A = 0;
}

void func_80899894(BgJyaKanaami* this, PlayState* play) {
    if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6)) || this->unk_16A > 0) {
        if (this->dyna.actor.world.pos.x > -1000.0f && this->unk_16A == 0) {
            OnePointCutscene_Init(play, 3450, -99, &this->dyna.actor, CAM_ID_MAIN);
        }
        this->unk_16A++;
        if (this->unk_16A >= 10) {
            func_8089993C(this);
        }
    }
}

void func_8089993C(BgJyaKanaami* this) {
    this->actionFunc = func_80899950;
    this->unk_168 = 0;
}

void func_80899950(BgJyaKanaami* this, PlayState* play) {
    s32 pad[2];
    s32 quakeIndex;

    this->unk_168 += 0x20;
    if (Math_ScaledStepToS(&this->dyna.actor.world.rot.x, 0x4000, this->unk_168)) {
        func_80899A08(this);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_TRAP_BOUND);

        quakeIndex = Quake_Request(GET_ACTIVE_CAM(play), QUAKE_TYPE_3);
        Quake_SetSpeed(quakeIndex, 25000);
        Quake_SetPerturbations(quakeIndex, 2, 0, 0, 0);
        Quake_SetDuration(quakeIndex, 16);
    }
}

void func_80899A08(BgJyaKanaami* this) {
    this->actionFunc = NULL;
    this->dyna.actor.world.rot.x = 0x4000;
}

void BgJyaKanaami_Update(Actor* thisx, PlayState* play) {
    BgJyaKanaami* this = (BgJyaKanaami*)thisx;

    if (this->actionFunc != NULL) {
        this->actionFunc(this, play);
    }
    this->dyna.actor.shape.rot.x = this->dyna.actor.world.rot.x;
}

void BgJyaKanaami_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, gKanaamiDL);
}
