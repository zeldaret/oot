
/*
 * File: z_bg_spot18_obj.c
 * Overlay: ovl_Bg_Spot18_Obj
 * Description:
 */

#include "z_bg_spot18_obj.h"
#include "assets/objects/object_spot18_obj/object_spot18_obj.h"

#define FLAGS 0

void BgSpot18Obj_Init(Actor* thisx, PlayState* play);
void BgSpot18Obj_Destroy(Actor* thisx, PlayState* play);
void BgSpot18Obj_Update(Actor* thisx, PlayState* play);
void BgSpot18Obj_Draw(Actor* thisx, PlayState* play);

s32 func_808B8910(BgSpot18Obj* this, PlayState* play);
s32 func_808B8A5C(BgSpot18Obj* this, PlayState* play);
s32 func_808B8A98(BgSpot18Obj* this, PlayState* play);
s32 func_808B8B08(BgSpot18Obj* this, PlayState* play);
s32 func_808B8BB4(BgSpot18Obj* this, PlayState* play);
s32 func_808B8C90(BgSpot18Obj* this, PlayState* play);
void func_808B8DC0(BgSpot18Obj* this);
void func_808B8DD0(BgSpot18Obj* this, PlayState* play);
void func_808B8E64(BgSpot18Obj* this);
void func_808B8E7C(BgSpot18Obj* this, PlayState* play);
void func_808B8EE0(BgSpot18Obj* this);
void func_808B8F08(BgSpot18Obj* this, PlayState* play);
void func_808B9030(BgSpot18Obj* this);
void func_808B9040(BgSpot18Obj* this, PlayState* play);

ActorProfile Bg_Spot18_Obj_Profile = {
    /**/ ACTOR_BG_SPOT18_OBJ,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_SPOT18_OBJ,
    /**/ sizeof(BgSpot18Obj),
    /**/ BgSpot18Obj_Init,
    /**/ BgSpot18Obj_Destroy,
    /**/ BgSpot18Obj_Update,
    /**/ BgSpot18Obj_Draw,
};

static u8 D_808B90F0[2][2] = { { 0x01, 0x01 }, { 0x01, 0x00 } };

static f32 D_808B90F4[] = {
    0.1f,
    0.1f,
};

static CollisionHeader* D_808B90FC[] = {
    &gGoronCityStatueCol,
    &gGoronCityStatueSpearCol,
};

static u32 D_808B9104[] = {
    0,
    0,
};

static BgSpot18ObjInitFunc D_808B910C[] = {
    func_808B8A98,
    func_808B8910,
    func_808B8A5C,
    func_808B8B08,
};

static InitChainEntry sInitChain1[] = {
    ICHAIN_F32(minVelocityY, -10, ICHAIN_CONTINUE),           ICHAIN_F32(gravity, -4, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 1400, ICHAIN_CONTINUE), ICHAIN_F32(cullingVolumeScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 800, ICHAIN_STOP),
};

static InitChainEntry sInitChain2[] = {
    ICHAIN_F32(cullingVolumeDistance, 1200, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 700, ICHAIN_STOP),
};

static BgSpot18ObjInitFunc D_808B913C[] = {
    func_808B8BB4,
    func_808B8C90,
};

static Gfx(*sDlists[]) = {
    gGoronCityStatueDL,
    gGoronCityStatueSpearDL,
};

s32 func_808B8910(BgSpot18Obj* this, PlayState* play) {
    s32 age;

    if (LINK_AGE_IN_YEARS == YEARS_ADULT) {
        age = 1;
    } else if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        age = 0;
    } else {
        PRINTF("Error : リンク年齢不詳 (%s %d)(arg_data 0x%04x)\n", "../z_bg_spot18_obj.c", 182,
               this->dyna.actor.params);
        return 0;
    }

    switch (D_808B90F0[PARAMS_GET_U(this->dyna.actor.params, 0, 4)][age]) {
        case 0:
        case 1:
            if (D_808B90F0[PARAMS_GET_U(this->dyna.actor.params, 0, 4)][age] == 0) {
                PRINTF("出現しない Object (0x%04x)\n", this->dyna.actor.params);
            }
            return D_808B90F0[PARAMS_GET_U(this->dyna.actor.params, 0, 4)][age];
        case 2:
            PRINTF("Error : Obj出現判定が設定されていない(%s %d)(arg_data 0x%04x)\n", "../z_bg_spot18_obj.c", 202,
                   this->dyna.actor.params);
            return 0;
        default:
            PRINTF("Error : Obj出現判定失敗(%s %d)(arg_data 0x%04x)\n", "../z_bg_spot18_obj.c", 210,
                   this->dyna.actor.params);
    }
    return 0;
}

s32 func_808B8A5C(BgSpot18Obj* this, PlayState* play) {
    Actor_SetScale(&this->dyna.actor, D_808B90F4[PARAMS_GET_U(this->dyna.actor.params, 0, 4)]);
    return 1;
}

s32 func_808B8A98(BgSpot18Obj* this, PlayState* play) {
    s32 pad[2];
    CollisionHeader* colHeader = NULL;

    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(D_808B90FC[PARAMS_GET_U(this->dyna.actor.params, 0, 4)], &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
    return 1;
}

s32 func_808B8B08(BgSpot18Obj* this, PlayState* play) {
    this->dyna.actor.flags |= D_808B9104[PARAMS_GET_U(this->dyna.actor.params, 0, 4)];
    return 1;
}

s32 func_808B8B38(BgSpot18Obj* this, PlayState* play) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(D_808B910C); i++) {
        if (D_808B910C[i](this, play) == 0) {
            return 0;
        }
    }
    return 1;
}

s32 func_808B8BB4(BgSpot18Obj* this, PlayState* play) {
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain1);

    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        func_808B9030(this);
    } else if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6))) {
        func_808B9030(this);
        this->dyna.actor.world.pos.x = (Math_SinS(this->dyna.actor.world.rot.y) * 80.0f) + this->dyna.actor.home.pos.x;
        this->dyna.actor.world.pos.z = (Math_CosS(this->dyna.actor.world.rot.y) * 80.0f) + this->dyna.actor.home.pos.z;
    } else {
        func_808B8E64(this);
    }
    return 1;
}

s32 func_808B8C90(BgSpot18Obj* this, PlayState* play) {
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain2);
    func_808B8DC0(this);
    return 1;
}

s32 func_808B8CC8(BgSpot18Obj* this, PlayState* play) {
    if ((D_808B913C[PARAMS_GET_U(this->dyna.actor.params, 0, 4)] != NULL) &&
        (!D_808B913C[PARAMS_GET_U(this->dyna.actor.params, 0, 4)](this, play))) {
        return 0;
    }
    return 1;
}

void BgSpot18Obj_Init(Actor* thisx, PlayState* play) {
    BgSpot18Obj* this = (BgSpot18Obj*)thisx;

    PRINTF("Spot18 Object [arg_data : 0x%04x]\n", this->dyna.actor.params);
    if (!func_808B8B38(this, play)) {
        Actor_Kill(&this->dyna.actor);
    } else if (!func_808B8CC8(this, play)) {
        Actor_Kill(&this->dyna.actor);
    }
}

void BgSpot18Obj_Destroy(Actor* thisx, PlayState* play) {
    BgSpot18Obj* this = (BgSpot18Obj*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void func_808B8DC0(BgSpot18Obj* this) {
    this->actionFunc = func_808B8DD0;
}

void func_808B8DD0(BgSpot18Obj* this, PlayState* play) {
}

void func_808B8DDC(BgSpot18Obj* this, PlayState* play) {
    Actor_UpdateBgCheckInfo(play, &this->dyna.actor, 20.0f, 46.0f, 0.0f,
                            UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 | UPDBGCHECKINFO_FLAG_4);
}

void func_808B8E20(BgSpot18Obj* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (fabsf(this->dyna.unk_150) > 0.001f) {
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= ~PLAYER_STATE2_4;
    }
}

void func_808B8E64(BgSpot18Obj* this) {
    this->unk_168 = 20;
    this->actionFunc = func_808B8E7C;
}

void func_808B8E7C(BgSpot18Obj* this, PlayState* play) {
    if (this->dyna.unk_150 < -0.001f) {
        if (this->unk_168 <= 0) {
            func_808B8EE0(this);
        }
    } else {
        this->unk_168 = 20;
    }
    func_808B8E20(this, play);
}

void func_808B8EE0(BgSpot18Obj* this) {
    this->actionFunc = func_808B8F08;
    this->dyna.actor.speed = 0.0f;
    this->dyna.actor.velocity.x = this->dyna.actor.velocity.y = this->dyna.actor.velocity.z = 0.0f;
    this->dyna.actor.world.rot.y = 0;
}

void func_808B8F08(BgSpot18Obj* this, PlayState* play) {
    s32 pad;
    Player* player = GET_PLAYER(play);

    Math_StepToF(&this->dyna.actor.speed, 1.2f, 0.1f);
    Actor_MoveXZGravity(&this->dyna.actor);
    func_808B8DDC(this, play);

    if (Math3D_Dist2DSq(this->dyna.actor.world.pos.x, this->dyna.actor.world.pos.z, this->dyna.actor.home.pos.x,
                        this->dyna.actor.home.pos.z) >= SQ(80.0f)) {
        func_808B9030(this);
        this->dyna.actor.world.pos.x = (Math_SinS(this->dyna.actor.world.rot.y) * 80.0f) + this->dyna.actor.home.pos.x;
        this->dyna.actor.world.pos.z = (Math_CosS(this->dyna.actor.world.rot.y) * 80.0f) + this->dyna.actor.home.pos.z;
        this->dyna.unk_150 = 0.0f;
        player->stateFlags2 &= ~PLAYER_STATE2_4;
        Flags_SetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 8, 6));
        Sfx_PlaySfxCentered(NA_SE_SY_CORRECT_CHIME);
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
    } else {
        Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_ROCK_SLIDE - SFX_FLAG);
    }
}

void func_808B9030(BgSpot18Obj* this) {
    this->actionFunc = func_808B9040;
}

void func_808B9040(BgSpot18Obj* this, PlayState* play) {
    func_808B8E20(this, play);
}

void BgSpot18Obj_Update(Actor* thisx, PlayState* play) {
    BgSpot18Obj* this = (BgSpot18Obj*)thisx;

    if (this->unk_168 > 0) {
        this->unk_168--;
    }
    this->actionFunc(this, play);
}

void BgSpot18Obj_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, sDlists[PARAMS_GET_U(thisx->params, 0, 4)]);
}
